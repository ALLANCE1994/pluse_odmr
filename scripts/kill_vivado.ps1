$process_names = @(
    "vivado",
    "xsim",
    "xvlog",
    "xelab",
    "xsc",
    "vivado_lab",
    "hw_server"
)

$killed = 0

foreach ($name in $process_names) {
    $procs = Get-Process -Name $name -ErrorAction SilentlyContinue
    foreach ($proc in $procs) {
        try {
            Stop-Process -Id $proc.Id -Force
            Write-Host "Killed: $($proc.ProcessName) (PID $($proc.Id))"
            $killed++
        } catch {
            Write-Host "Failed to kill $($proc.ProcessName) (PID $($proc.Id)): $_"
        }
    }
}

if ($killed -eq 0) {
    Write-Host "No Vivado processes found."
} else {
    Write-Host "Total killed: $killed process(es)."
}
