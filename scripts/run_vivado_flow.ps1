param(
    [ValidateSet("all","step1","step2","step3","step4","step5","step6","step7","1","2","3","4","5","6","7")]
    [string]$Step = "all",

    [string]$FromStep = "",

    [switch]$NoKill,

    [switch]$NoColor,

    [int]$TimeoutMinutes = 60
)

$ErrorActionPreference = "Continue"
$script:ProjRoot = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot ".."))

$ConfigFile = [System.IO.Path]::Combine($script:ProjRoot, "trae.config.json")
$VivadoExe  = ""

if (Test-Path $ConfigFile) {
    try {
        $config = Get-Content $ConfigFile -Raw -Encoding UTF8 | ConvertFrom-Json
        $cfgPath = $config.vivado.path
        if ($cfgPath -and (Test-Path $cfgPath)) {
            $VivadoExe = $cfgPath
        }
    } catch {
        Write-Warning "Failed to parse trae.config.json: $_"
    }
}

if ($VivadoExe -eq "") {
    $FallbackPaths = @(
        "C:\Xilinx\Vivado\2020.2\bin\vivado.bat",
        "C:\Xilinx\Vivado\2021.1\bin\vivado.bat",
        "C:\Xilinx\Vivado\2021.2\bin\vivado.bat",
        "C:\Xilinx\Vivado\2022.1\bin\vivado.bat",
        "C:\Xilinx\Vivado\2022.2\bin\vivado.bat"
    )
    foreach ($p in $FallbackPaths) {
        if (Test-Path $p) { $VivadoExe = $p; break }
    }
}
if ($VivadoExe -eq "") {
    Write-Error "Vivado not found. Check trae.config.json vivado.path or fallback paths."
    exit 1
}

$LogDir   = [System.IO.Path]::Combine($script:ProjRoot, "vivado", "logs")
$RptDir   = [System.IO.Path]::Combine($script:ProjRoot, "vivado", "reports")
if (!(Test-Path $LogDir)) { New-Item -ItemType Directory -Path $LogDir -Force | Out-Null }
if (!(Test-Path $RptDir)) { New-Item -ItemType Directory -Path $RptDir -Force | Out-Null }

$Steps = @(
    @{Id="step1"; Script="step1_ip_package.tcl";      Desc="IP Package (pulse_odmr_ip)"},
    @{Id="step2"; Script="step2_setup_project.tcl";     Desc="Project Setup"},
    @{Id="step3"; Script="step3_create_system_bd.tcl";   Desc="Block Design (PS7+AXI+IP)"},
    @{Id="step4"; Script="step4_generate_outputs.tcl";   Desc="Generate Outputs (Wrapper)"},
    @{Id="step5"; Script="step5_run_subsystem_sim.tcl";  Desc="Subsystem Simulation"},
    @{Id="step6"; Script="step6_run_impl.tcl";           Desc="Synthesis + Implementation"},
    @{Id="step7"; Script="step7_run_phase3_checks.tcl";  Desc="Phase 3 Gate Checks"}
)

$KnownErrorFixes = @{
    "BD 5-137"            = "BD name already exists. Fix: close Vivado -> delete vivado/project/ -> rerun step3"
    "BD 5-390"            = "IP VLNV not found. Fix: ensure step1 passed, IP repo registered in step2/step3"
    "Common 17-161"       = "Tcl syntax: missing -offset/-range flags on assign_bd_address"
    "BD 41-758"           = "Unconnected clock pins. Fix: connect M00_ACLK, disable unused S_AXI_HP0"
    "Project 1-19"        = "BD file missing from disk but referenced in .xpr XML. Fix: rerun step3 (auto-nukes project)"
    "S_AXI_HP0_ACLK"      = "S_AXI_HP0 enabled but unused. Fix: set CONFIG.PCW_USE_S_AXI_HP0 {0}"
    "M00_ARESETN"         = "axi_interconnect M00_ARESETN floating. Fix: connect from same net as S00_ARESETN"
    "already exists"      = "Resource name collision. Fix: close_project before create, or rebuild from scratch"
    "set_property expects"= "get_* returned empty. Fix: check object exists before set_property"
    "failed due to earlier" = "Cascaded error; check the first ERROR line above"
}

function Write-Color {
    param([string]$Text, [string]$Color="White", [switch]$NoNewline)
    if ($NoColor) { Write-Host $Text -NoNewline:$NoNewline }
    else { Write-Host $Text -ForegroundColor $Color -NoNewline:$NoNewline }
}

function Kill-Vivado {
    if ($NoKill) { return }
    $names = @("vivado","xsim","xvlog","xelab","xsc","vivado_lab","hw_server")
    foreach ($n in $names) {
        Get-Process -Name $n -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
    }
    Start-Sleep -Seconds 2
}

function Invoke-VivadoStep {
    param([hashtable]$StepDef, [string]$LogPrefix)

    $tcl_path = [System.IO.Path]::Combine($script:ProjRoot, "scripts", $StepDef.Script)
    if (!(Test-Path $tcl_path)) {
        Write-Color "  FILE NOT FOUND: $tcl_path" "Red"
        return @{ Passed=$false; LogFile=""; ErrorLines=@(); Warnings=@() }
    }

    $log_file = Join-Path $LogDir "$LogPrefix`_$($StepDef.Id).log"
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    $header = @"
[$timestamp] START: $($StepDef.Desc)
Vivado: $VivadoExe
Script: $tcl_path
Project: $script:ProjRoot
----------------------------------------
"@
    $header | Out-File $log_file -Encoding UTF8
    Write-Host $header

    $script:AccumLines = [System.Collections.Generic.List[string]]::new()
    $sync = [System.Object]::new()

    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName               = $VivadoExe
    $psi.Arguments              = "-mode batch -source `"$tcl_path`" -notrace"
    $psi.UseShellExecute        = $false
    $psi.RedirectStandardOutput = $true
    $psi.RedirectStandardError  = $true
    $psi.CreateNoWindow         = $true
    $psi.StandardOutputEncoding = [System.Text.Encoding]::UTF8
    $psi.StandardErrorEncoding  = [System.Text.Encoding]::UTF8

    $proc = New-Object System.Diagnostics.Process
    $proc.StartInfo = $psi

    $outEvent = Register-ObjectEvent -InputObject $proc -EventName OutputDataReceived -Action {
        if ($EventArgs.Data -ne $null) {
            Write-Host $EventArgs.Data
            $EventArgs.Data | Out-File $Event.MessageData.LogFile -Append -Encoding UTF8
            [System.Threading.Monitor]::Enter($Event.MessageData.Sync)
            $Event.MessageData.Accum.Add($EventArgs.Data)
            [System.Threading.Monitor]::Exit($Event.MessageData.Sync)
        }
    } -MessageData @{ LogFile=$log_file; Accum=$script:AccumLines; Sync=$sync }

    $errEvent = Register-ObjectEvent -InputObject $proc -EventName ErrorDataReceived -Action {
        if ($EventArgs.Data -ne $null) {
            Write-Host $EventArgs.Data -ForegroundColor DarkRed
            $EventArgs.Data | Out-File $Event.MessageData.LogFile -Append -Encoding UTF8
            [System.Threading.Monitor]::Enter($Event.MessageData.Sync)
            $Event.MessageData.Accum.Add($EventArgs.Data)
            [System.Threading.Monitor]::Exit($Event.MessageData.Sync)
        }
    } -MessageData @{ LogFile=$log_file; Accum=$script:AccumLines; Sync=$sync }

    $proc.Start() | Out-Null
    $proc.BeginOutputReadLine()
    $proc.BeginErrorReadLine()

    $timeoutMs = $TimeoutMinutes * 60 * 1000
    $exited = $proc.WaitForExit($timeoutMs)

    if (!$exited) {
        Write-Color "  TIMEOUT after ${TimeoutMinutes}min — killing process tree" "Yellow"
        $proc.Kill($true)
        $proc.WaitForExit(5000) | Out-Null
    }

    Start-Sleep -Milliseconds 500
    Unregister-Event -SourceIdentifier $outEvent.Name -Force -ErrorAction SilentlyContinue
    Unregister-Event -SourceIdentifier $errEvent.Name -Force -ErrorAction SilentlyContinue

    $exitCode = $proc.ExitCode
    $proc.Dispose()

    $endTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "[$endTime] END (exit=$exitCode)" | Out-File $log_file -Append -Encoding UTF8

    $errors   = @()
    $warnings = @()
    foreach ($line in $script:AccumLines) {
        if ($line -match "ERROR:")           { $errors   += $line.Trim() }
        if ($line -match "CRITICAL WARNING:") { $warnings += $line.Trim() }
    }

    $passed = ($errors.Count -eq 0)
    return @{
        Passed    = $passed
        LogFile   = $log_file
        ErrorLines= $errors
        Warnings  = $warnings
    }
}

function Suggest-Fix {
    param([string[]]$Errors)
    $seen = @{}
    foreach ($err in $Errors) {
        foreach ($pattern in $KnownErrorFixes.Keys) {
            if ($err -match [regex]::Escape($pattern)) {
                if (-not $seen.ContainsKey($pattern)) {
                    $seen[$pattern] = $KnownErrorFixes[$pattern]
                }
            }
        }
    }
    if ($seen.Count -gt 0) {
        Write-Color "  Suggested fixes:" "Cyan"
        foreach ($k in $seen.Keys) {
            Write-Color "    [$k] $($seen[$k])" "DarkCyan"
        }
    }
}

Write-Color "==============================================" "Magenta"
Write-Color "  Pulse ODMR Vivado Flow Automation"          "Magenta"
Write-Color "==============================================" "Magenta"
Write-Color "Project : $script:ProjRoot"                     "White"
Write-Color "Vivado  : $VivadoExe"                           "White"
Write-Color "Logs    : $LogDir"                              "White"
Write-Color "==============================================" "Magenta"
Write-Host ""

Kill-Vivado

if ($Step -eq "all" -or $Step -eq "1" -or $Step -eq "step1") { $StartIdx = 0 }
elseif ($Step -eq "2" -or $Step -eq "step2") { $StartIdx = 1 }
elseif ($Step -eq "3" -or $Step -eq "step3") { $StartIdx = 2 }
elseif ($Step -eq "4" -or $Step -eq "step4") { $StartIdx = 3 }
elseif ($Step -eq "5" -or $Step -eq "step5") { $StartIdx = 4 }
elseif ($Step -eq "6" -or $Step -eq "step6") { $StartIdx = 5 }
elseif ($Step -eq "7" -or $Step -eq "step7") { $StartIdx = 6 }
else { $StartIdx = 0 }

if ($FromStep) {
    $found = -1
    for ($i = 0; $i -lt $Steps.Count; $i++) {
        if ($Steps[$i].Id -eq $FromStep -or $Steps[$i].Id -eq "step$FromStep") {
            $found = $i; break
        }
    }
    if ($found -ge 0) { $StartIdx = $found }
}

$singleStep = ($FromStep -eq "" -and $Step -ne "all")
$runEnd = if ($singleStep) { $StartIdx } else { $Steps.Count - 1 }

$runPrefix = Get-Date -Format "yyyyMMdd_HHmmss"
$summary = @{ Total=0; Passed=0; Failed=0; Results=@() }

for ($i = $StartIdx; $i -le $runEnd; $i++) {
    $s = $Steps[$i]
    $summary.Total++

    Write-Color "[$($s.Id)] $($s.Desc)" "Yellow"
    Write-Color "  Running..." "Gray"
    Kill-Vivado

    $result = Invoke-VivadoStep -StepDef $s -LogPrefix $runPrefix
    $summary.Results += @{ StepId=$s.Id; StepDesc=$s.Desc; Result=$result }

    if ($result.Passed) {
        Write-Color "  PASS" "Green"
        $summary.Passed++
    } else {
        Write-Color "  FAIL" "Red"
        $summary.Failed++
        foreach ($err in $result.ErrorLines) {
            Write-Color "    $err" "Red"
        }
        Suggest-Fix -Errors $result.ErrorLines
        Write-Color "  Log: $($result.LogFile)" "Gray"
    }

    foreach ($w in $result.Warnings) {
        Write-Color "  WARN: $w" "Yellow"
    }

    if (!$result.Passed -and !$singleStep) {
        Write-Color "  Stopping flow due to failure." "Red"
        break
    }
    Write-Host ""
}

Kill-Vivado

Write-Host ""
Write-Color "==============================================" "Magenta"
Write-Color "  Flow Summary" "Magenta"
Write-Color "==============================================" "Magenta"
Write-Color "  Total  : $($summary.Total)" "White"
Write-Color "  Passed : $($summary.Passed)" "Green"
if ($summary.Failed -gt 0) {
    Write-Color "  Failed : $($summary.Failed)" "Red"
} else {
    Write-Color "  Failed : 0" "Green"
}
Write-Color "==============================================" "Magenta"

$rptFile = Join-Path $RptDir "flow_report_${runPrefix}.txt"
@"
Pulse ODMR Vivado Flow Report
Generated: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
Project: $script:ProjRoot
Vivado: $VivadoExe
----------------------------------------------------------------------
"@ | Out-File $rptFile -Encoding UTF8

foreach ($r in $summary.Results) {
    $status = if ($r.Result.Passed) { "PASS" } else { "FAIL" }
    "  [$($r.StepId)] $status  $($r.StepDesc)" | Out-File $rptFile -Append -Encoding UTF8
    if (!$r.Result.Passed) {
        "    Log: $($r.Result.LogFile)" | Out-File $rptFile -Append -Encoding UTF8
        foreach ($e in $r.Result.ErrorLines) {
            "    ERROR: $e" | Out-File $rptFile -Append -Encoding UTF8
        }
    }
}
"----------------------------------------------------------------------" | Out-File $rptFile -Append -Encoding UTF8
"Total=$($summary.Total) Passed=$($summary.Passed) Failed=$($summary.Failed)" | Out-File $rptFile -Append -Encoding UTF8

Write-Color "Report: $rptFile" "Gray"

if ($summary.Failed -eq 0) {
    exit 0
} else {
    exit 1
}
