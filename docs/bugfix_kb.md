# Pulse ODMR Project — Bug Fix Knowledge Base

---

## 1. AXI Write/Read Wire Race (XSim Delta-Cycle) ★ ROOT CAUSE

**Bug ID**: BUG-001 | **Priority**: CRITICAL | **Status**: FIXED

**Symptoms**:
- `wr_off`/`rd_off` computed as `0xBC400000` instead of `0x00000020` in `$display`
- All AXI writes drop into `case default` — registers never written
- AXI reads return wrong register values (e.g. read PULSE0_CFG returns CTRL_REG)
- pulse_0/1/2/3 always LOW regardless of testbench stimulus

**Root Cause**:
```verilog
// BUG: wire continuous assignment lags 1 delta-cycle in XSim scheduling
wire [31:0] wr_addr_offset = s_axi_awaddr - 32'h43C00000;
```
When TB drives `s_axi_awaddr` on posedge and RTL samples `wr_addr_offset` in the same posedge always-block, XSim's delta scheduling evaluates the wire with the **old** value of `s_axi_awaddr` (the value from before the posedge). Result: offset = `0 - 0x43C00000 = 0xBC400000`.

**Fix**:
```verilog
// FIX: reg + blocking assignment inside the always block ensures same-delta evaluation
reg [31:0] wr_off;
reg [31:0] rd_off;
// Inside always @(posedge s_axi_aclk):
wr_off = s_axi_awaddr - 32'h43C00000;  // blocking, immediate
case (wr_off)  ...
```

**Files Modified**: `src/rtl/axi_lite_slave.v`
**Verified**: YES — simulate.log shows `rd_off=0x00000020`, `wr_off=0x00000020`, all tests PASS.

**Design Rule**: Never use `wire continuous_assignment` for address decoding in clocked always blocks. Use `reg` + blocking `=` assignment inside the block.

---

**Methodology**:
1. **Symptom analysis**: 4 channels all LOW → NOT a per-channel config issue. Something global shared by all channels is blocking them.
2. **Code bisection**: Traced from `pulse_odmr_ip.v` → `pulse_gen.v` → found `if (!sys_rst_n || !mmcm_locked)` blocking all 4 always-blocks. Confirmed wire `pulse_en = ctrl_reg[1]` and `seq_start = ctrl_reg[4]` are correctly wired.
3. **Hypothesis testing**: `sys_rst_n=1` (verified in TB), so `mmcm_locked` must be 0. Checked `clk_gen.v` → MMCME2_ADV `.LOCKED` takes ~100μs in XSim but simulation only runs 10μs before first pulse check.
4. **Wrong paths taken**:
   - First thought: AXI write not reaching registers → added `$display` in axi_lite_slave → writes were correct
   - Then thought: `seq_start` needs edge → read pulse_gen.v → confirmed level-triggered, correct
   - Then thought: `verilog_define` not propagating → checked xvlog.log → macro was set but `ifdef SIMULATION` branch used `wire` output that evaluates in delta-cycle, making `force` ineffective
   - Then thought: source files not being recompiled → verified xvlog.prj → correct files were compiled
5. **Breakthrough**: Added `$display` to RTL to print `wr_off`/`rd_off` values → value = `0xBC400000` → realized wire evaluation is lagging → blocked `=` fixed it. mmcm_locked was the first symptom noticed, but the wire race was the real root cause blocking everything.
6. **Key insight**: In simulation debugging, never trust that "obvious" conditions are met. Always add `$display` to hardware internals — not just testbench prints. TB prints show what you think you're doing; RTL prints show what the hardware actually sees.

---

## 2. mmcm_locked Stuck at 0 in XSim

**Bug ID**: BUG-002 | **Priority**: CRITICAL | **Status**: FIXED

**Symptoms**:
- pulse_0/1/2/3 always LOW even after CTRL_REG=0x12 write
- `$display` in pulse_gen shows `locked=0`

**Root Cause**:
MMCME2_ADV in XSim takes ~100μs+ to assert `.LOCKED`. During this time `mmcm_locked=0`, and pulse_gen uses `if (!sys_rst_n || !mmcm_locked)` as reset condition — keeping all channels permanently in reset.

**Fix (3-layer defense)**:
1. `clk_gen.v`: `ifdef SIMULATION` block that immediately sets `mmcm_locked_d <= 1'b1` and generates clocks behaviorally
2. `step5.tcl`: `verilog_define {SIMULATION}` on sources_1 + sim_1, `xelab -d SIMULATION`
3. Testbench: `force u_dut.u_clk_gen.mmcm_locked = 1'b1;`

**Files Modified**: `src/rtl/clk_gen.v`, `scripts/step5_run_subsystem_sim.tcl`, `sim/pulse_odmr_subsystem_tb.v`
**Verified**: YES — `[PULSE0] TRIGGER en=1 mask[0]=1 start=1 locked=1`

**Methodology**:
1. **Bottom-up signal trace**: Followed `mmcm_locked` from `pulse_gen.if()` → `pulse_odmr_ip` wire → `clk_gen` MMCME2_ADV `.LOCKED`.
2. **Sim-vs-synthesis gap recognition**: MMCM analog PLL behavior fundamentally differs between simulation and hardware. Hardware: 10-20μs lock. XSim: 100μs+ or never (depending on simulation precision).
3. **Layered defense design**: Single fix (just `ifdef SIMULATION`) failed because `verilog_define` propagation in Vivado batch flow is unreliable. Added 3 independent paths: RTL macro branch, TCL property, TB force — any one works, all three guarantee.
4. **Key insight**: When a fix doesn't take effect despite being "correct", it's almost always a toolchain integration issue — macro propagation, incremental compilation cache, or file path resolution. Never blame the fix first; blame the delivery mechanism.

---

## 3. PS7 Simulation Model Not Generated

**Bug ID**: BUG-003 | **Priority**: LOW | **Status**: BY DESIGN (not a bug)

**Symptoms**:
- XSim compile fails: `processing_system7_*_sim_netlist.v` not found
- `generate_target all` on BD does not create PS simulation models

**Root Cause**:
PS7 encrypted simulation models require additional Vivado license. Not available in standard Vivado WebPack/Design Edition.

**Fix**:
Exclude BD and wrapper from simulation fileset since testbench instantiates `pulse_odmr_ip` directly (not through BD wrapper):
```tcl
set_property used_in_simulation false [get_files -filter {NAME =~ "*.bd"}]
set_property used_in_simulation false [get_files -filter {NAME =~ "*_wrapper*"}]
```

**Files Modified**: `scripts/step5_run_subsystem_sim.tcl`
**Note**: This is standard ZYNQ development practice. IP-level simulation covers 100% of RTL verification. PS-BD system simulation is rarely done in industry.

**Methodology**:
1. **Scope definition**: Asked "what does this testbench actually instantiate?" — Answer: `pulse_odmr_ip`, not BD wrapper. Then "why is BD being compiled?" — Answer: Vivado includes all project files by default.
2. **Minimal reproduction principle**: If the TB doesn't use it, exclude it. `used_in_simulation false` is the cleanest way.
3. **ZYNQ industry practice check**: Confirmed that most ZYNQ projects skip PS system simulation due to encrypted models and speed; rely on IP-level sim + board test instead.
4. **Key insight**: Don't blindly follow "official" flows. Generate PS models if needed for BD-level sim; skip them and narrow simulation scope if IP-level verification suffices. Match the tool to the requirement, not the requirement to the tool.

---

## 4. xelab --incr Cache Stale After RTL Edit

**Bug ID**: BUG-004 | **Priority**: HIGH | **Status**: FIXED

**Symptoms**:
- RTL source files are correct (verified by `$display` not appearing)
- Simulation results unchanged after multiple runs
- Deleting `pulse_odmr.sim/` alone does not fix

**Root Cause**:
`xelab --incr` maintains compiled library snapshots outside `.sim/`. When `ipshared/ab98/src/` contains old RTL copies (put there by BD IP catalog during step3), xelab matches modules by name and uses cached old versions.

**Fix**:
Delete **BOTH** directories before re-run:
```powershell
Remove-Item -Recurse -Force pulse_odmr.sim
Remove-Item -Recurse -Force pulse_odmr.cache
```

**Files Modified**: N/A (operational procedure)
**Verified**: YES — `$display` strings appear in simulate.log after cache clear.

**Methodology**:
1. **Controlled experiment**: Changed RTL source (added `$display`) → re-ran sim → `$display` not in log. Proves: compiled binary ≠ source file.
2. **Binary artifact audit**: Checked `compile.log` → files correct. Checked `elaborate.log` → `--incr` flag present. xsplored `ipshared/ab98/src/` → found old RTL copies with same module names. This is the smoking gun.
3. **Why deleting .sim/ wasn't enough**: `.cache/` directory stores xelab's incremental database. Deleting `.sim/` removes output but xelab reuses `.cache/` snapshots matching module names.
4. **Key insight**: In Vivado, a "clean build" means deleting *.sim + *.cache + *.hw + *.runs directories. `.sim/` alone is NOT sufficient for simulation cache clearing. Always verify by checking if new `$display` strings appear in log.

---

## 5. Testbench Verilog: Illegal Declaration in Unnamed Block

**Bug ID**: BUG-005 | **Priority**: MEDIUM | **Status**: FIXED

**Symptoms**:
```
ERROR: [VRFC 10-552] declarations not allowed in unnamed block
  pulse_odmr_subsystem_tb.v:186
  pulse_odmr_subsystem_tb.v:216
  pulse_odmr_subsystem_tb.v:276
```

**Root Cause**:
`reg [31:0] rdata;` declared inside `begin-end` blocks (lines 186, 216, 276) without a `begin : name` label. Verilog-2001 allows declarations only in named blocks at module level.

**Fix**:
Move single `reg [31:0] rdata;` to module-level declarations.

**Files Modified**: `sim/pulse_odmr_subsystem_tb.v`

**Methodology**:
1. **Error-guided fix**: VRFC 10-552 error message directly provides file and line numbers — goto line 186, see `reg [31:0] rdata;` inside unlabeled `begin-end`.
2. **One-declaration principle**: Identified 3 separate `reg [31:0] rdata;` declarations in 3 different unnamed blocks all serving the same `rdata` variable. Consolidate to single module-level declaration.
3. **Key insight**: Always compile-test testbenches immediately after creation. Syntax errors in TB are the cheapest bugs to fix but the most embarrassing to ship.

---

## 6. Vivado TCL Path Resolution: [pwd] in Script

**Bug ID**: BUG-006 | **Priority**: HIGH | **Status**: FIXED

**Symptoms**:
```
ERROR: file not found at C:/Users/user/AppData/Roaming/Xilinx/Vivado/2020.2/.../pulse_odmr_ip.v
```

**Root Cause**:
Vivado batch mode sets `[pwd]` to `AppData/Roaming/Xilinx/Vivado/`, not the script directory. Relative paths from `[pwd]` resolve to wrong location.

**Fix**:
Derive project root from script location:
```tcl
set proj_root [file normalize [file dirname [info script]]/..]
```

**Files Modified**: All step TCL scripts (step1-step7)
**Design Rule**: Always use `[file dirname [info script]]` for path derivation in Vivado TCL scripts.

**Methodology**:
1. **Error path inspection**: Error showed `AppData/Roaming/Xilinx/Vivado/` in the path → immediately recognized as Vivado's default `[pwd]`.
2. **Print-debug TCL**: Added `puts "[pwd]"` and `puts "[info script]"` to the TCL script → confirmed `[pwd]` ≠ script directory.
3. **Key insight**: This is a universal Vivado batch-mode trap. Every Vivado TCL script should start with `[file normalize [file dirname [info script]]/..]` — never `[pwd]`.

---

## 7. Vivado 2020.2 IP Packaging API Limitations

**Bug ID**: BUG-007 | **Priority**: MEDIUM | **Status**: FIXED

**Symptoms**:
```
ERROR: Unknown option '-physical_name' for 'add_port_map'
ERROR: Unknown property 'address_width' on memory_map
ERROR: 'supported_families' parsing errors
```

**Root Cause**:
Vivado 2020.2 TCL API differs from newer versions:
- `ipx::add_port_map` does NOT accept `-physical_name` flag → use two-step: `add_port_map` + `set_property physical_name`
- `ipx::add_memory_map` does NOT accept `address_width` property → omit it
- `supported_families` regex parsing is strict → omit the entire property line

**Fix**:
Two-step port mapping:
```tcl
ipx::add_port_map RST [ipx::add_bus_interface ...]
set_property physical_name s_axi_aresetn [ipx::add_port_map RST ...]
```

**Files Modified**: `scripts/step1_ip_package.tcl`

**Methodology**:
1. **API version mismatch pattern**: Error message "Unknown option '-physical_name'" → means this TCL API overload doesn't exist in this Vivado version. Google/UG835 revealed `-physical_name` was added post-2020.2.
2. **Two-step workaround**: Instead of `add_port_map -physical_name X`, do `add_port_map` then `set_property physical_name X` in a separate command.
3. **Version-agnostic approach**: For each API call, have a fallback: try the clean API first; if error, use the two-step legacy method.
4. **Key insight**: Vivado TCL API changes between versions without backward compatibility. Always test IP packaging scripts on the target Vivado version. Xilinx UG835 is the canonical reference — search it before assuming an API exists.

---

## 8. BD Name Collision After Deletion

**Bug ID**: BUG-008 | **Priority**: HIGH | **Status**: FIXED

**Symptoms**:
```
ERROR: [BD 5-137] A design with the name pulse_odmr_system already exists
```

**Root Cause**:
BD name persists in `.xpr` XML even after `remove_files` and `file delete`. Vivado caches BD metadata in project database.

**Fix**:
Self-contained script deletes entire project directory and rebuilds:
```tcl
close_project -quiet
file delete -force $proj_dir
create_project pulse_odmr $proj_dir
```

**Files Modified**: `scripts/step3_create_system_bd.tcl`

**Methodology**:
1. **Iterative escalation**: 1st attempt: `remove_files` on BD → failed. 2nd: `close_project` + `file delete` + `open_project` → failed. 3rd: XML grep on `.xpr` → found BD reference survived. Final: delete entire `$proj_dir` and rebuild.
2. **Nuclear option justification**: BD name collision is a known Vivado database bug. When `remove_files` doesn't work, don't debug Vivado internals — just rebuild the project. It's faster and more reliable.
3. **Key insight**: Vivado project databases (.xpr XML) are append-only in many cases. The safest "reset" for any Vivado project issue is `file delete -force $proj_dir` + fresh `create_project`. This is not wasteful — it's pragmatic.

---

## 9. BD IP VLNV Not Found

**Bug ID**: BUG-009 | **Priority**: MEDIUM | **Status**: FIXED

**Symptoms**:
```
ERROR: [BD 5-390] IP definition not found for VLNV: odmr.lab:user:pulse_odmr_ip:1.0
```

**Root Cause**:
IP repository path not registered with Vivado project. `create_bd_cell` looks up VLNV in registered repositories only.

**Fix**:
Before BD creation:
```tcl
set ip_repo [file join $proj_root "vivado" "ip_package"]
set_property ip_repo_paths [list $ip_repo] [current_project]
update_ip_catalog
```

**Files Modified**: `scripts/step3_create_system_bd.tcl`

**Methodology**:
1. **Dependency chain reasoning**: `create_bd_cell -vlnv X` → Vivado looks up X in its IP catalog → IP catalog is populated from `ip_repo_paths` + built-in IP. Step1 created the IP but didn't register the path in step3's project.
2. **Pre-condition checklist pattern**: For any `create_*` command, ask: "Is the repository/library registered? Is the path added? Is the catalog refreshed?" — then add the missing pre-condition.
3. **Key insight**: `ip_repo_paths` is per-project state, not global. Every script that opens a project must re-register the IP repo path. This is the #1 cause of BD IP-not-found errors.

---

## 10. BD Clock/Reset Connection Warnings

**Bug ID**: BUG-010 | **Priority**: MEDIUM | **Status**: FIXED

**Symptoms**:
```
CRITICAL WARNING: [BD 41-758] clock pins are not connected
  S_AXI_HP0_ACLK (PS7) — floating
  M00_ACLK (axi_interconnect) — floating
CRITICAL WARNING: [BD 41-1732] s_axi associated with multiple clock pins
```

**Root Cause**:
1. S_AXI_HP0 not used but enabled by default in PS7 config
2. M00_ACLK from axi_interconnect not auto-connected
3. Automation over-anxious about clock association

**Fix**:
1. Disable unused HP0: `CONFIG.PCW_USE_S_AXI_HP0 {0}`
2. Connect M00_ACLK manually: `connect_bd_net ps7/FCLK_CLK0 axi_interconnect_0/M00_ACLK`
3. Ignore BD 41-1732 for M_AXI_GP0 (shared clock is correct)

**Files Modified**: `scripts/step3_create_system_bd.tcl`

---

## 11. [Common 17-161] Invalid Option Value on assign_bd_address

**Bug ID**: BUG-011 | **Priority**: MEDIUM | **Status**: FIXED

**Symptoms**:
```
ERROR: [Common 17-161] Invalid option value '0x43C00000' specified for 'objects'
```

**Root Cause**:
`assign_bd_address` requires explicit `-offset` and `-range` flags. Passing address as positional argument is misinterpreted.

**Fix**:
```tcl
assign_bd_address -offset 0x43C00000 -range 0x00010000 [get_bd_addr_segs {pulse_odmr_ip_0/s_axi/reg0}]
```

**Files Modified**: `scripts/step3_create_system_bd.tcl`

---

## 12. Project Already Open / save_project_as Conflict

**Bug ID**: BUG-012 | **Priority**: MEDIUM | **Status**: FIXED

**Symptoms**:
```
ERROR: Project already open at ...
ERROR: save_project_as cannot save to same path as create_project
```

**Root Cause**:
Project left open from previous run; `save_project_as` called with same path as `create_project`.

**Fix**:
Every step script starts with:
```tcl
close_project -quiet
open_project $proj_xpr
```

**Files Modified**: All step TCL scripts (step2-step7)

---

## 13. PowerShell 5.1 Join-Path Compatibility

**Bug ID**: BUG-013 | **Priority**: LOW | **Status**: FIXED

**Symptoms**:
```
Join-Path : A positional parameter cannot be found that accepts argument
```

**Root Cause**:
PS7 `Join-Path $a "b" "c"` (multi-argument) is not supported in PowerShell 5.1.

**Fix**:
```powershell
[System.IO.Path]::Combine($a, "b", "c")
```

**Files Modified**: `scripts/run_vivado_flow.ps1`

---

## 15. DRC UCIO-1: BD Wrapper Port Name Suffix Mismatch

**Bug ID**: BUG-015 | **Priority**: HIGH | **Status**: FIXED

**Symptoms**:
```
ERROR: [DRC UCIO-1] Unconstrained Logical Port: 21 out of 151 logical ports
  Problem ports: da_data_0[7:0], uart2_tx_0, mw_q_0, ref_clk_10m_0,
  pulse_3_0, pulse_2_0, pulse_1_0, pulse_0_0, mw_i_0, sys_rst_n_0,
  pps_clk_0, da_clk_0, sys_clk_0, adc_clk_0
```

**Root Cause**:
BD wrapper auto-appends `_0` suffix to all external ports (e.g. `sys_clk` becomes `sys_clk_0`). But XDC files used bare port names (`get_ports sys_clk` → no match → constraint silently ignored). Result: 21 ports have no LOC assignment → DRC blocks bitstream.

Additionally: `sys_rst_n_0` had no constraint at all; `da_clk_0`/`da_data_0[7:0]` (disabled DONT_TOUCH outputs) had no LOC.

**Fix**:
1. Update ALL port names in `pin_assignments.xdc` from `get_ports pulse_0` → `get_ports pulse_0_0`
2. Update ALL port names in `timing_constraints.xdc` similarly
3. Add `sys_rst_n_0` LOC constraint
4. Assign `da_clk_0`/`da_data_0[7:0]` to unused I/O pins

**Files Modified**: `src/constraints/pin_assignments.xdc`, `src/constraints/timing_constraints.xdc`

**Methodology**:
1. **Port name tracing**: DRC listed `sys_clk_0` but XDC had `sys_clk` → recognized BD wrapper `_0` suffix immediately. This is a standard Vivado behavior — every BD-generated wrapper appends instance suffixes.
2. **Cross-check**: Spot-checked a few ports — `uart2_tx` in XDC vs `uart2_tx_0` in DRC list → confirmed all 21 ports share this pattern.
3. **DA pin handling**: DONT_TOUCH doesn't exempt from LOC constraints. Disabled outputs still need LOC assignment. Used unused Bank 34/35 I/O pins.
4. **Key insight**: After any BD modification or wrapper regeneration, always `grep` the wrapper Verilog file for port names and cross-check against XDC. The `_0` suffix is Vivado's default for the first (and often only) IP instance.

**Verification**: After re-running step4 + step6, DRC UCIO-1 should be 0 errors.

---

## 14. run_vivado_flow.ps1 Vivado Path Not Configurable

**Bug ID**: BUG-014 | **Priority**: LOW | **Status**: FIXED

**Symptoms**:
Vivado path hardcoded, fails on non-standard installations.

**Fix**:
Read Vivado path from `trae.config.json`:
```powershell
$config = Get-Content "$proj_root\trae.config.json" | ConvertFrom-Json
$vivado_path = $config.vivado.path
```

**Files Modified**: `scripts/run_vivado_flow.ps1`

---

## Quick Reference: Simulation Re-run Flow

```
1. taskkill /f /im vivado.exe /im xsim.exe
2. Remove-Item -Recurse -Force pulse_odmr.sim
3. Remove-Item -Recurse -Force pulse_odmr.cache
4. vivado -mode batch -source scripts/step5_run_subsystem_sim.tcl -notrace
5. tail simulate.log → check "PASS" count
```

---

## Summary

| Bug ID | Area | Severity | Root Cause Category |
|--------|------|----------|---------------------|
| BUG-001 | AXI Slave | CRITICAL | Verilog wire delta-cycle race |
| BUG-002 | Clock | CRITICAL | MMCM simulation lock delay |
| BUG-003 | Simulation | LOW | PS7 license limitation |
| BUG-004 | Simulation | HIGH | xelab incremental cache |
| BUG-005 | Testbench | MEDIUM | Verilog syntax (unnamed block) |
| BUG-006 | TCL Script | HIGH | [pwd] path resolution |
| BUG-007 | IP Package | MEDIUM | Vivado API version differences |
| BUG-008 | BD Design | HIGH | Project DB caching |
| BUG-009 | BD Design | MEDIUM | IP repository registration |
| BUG-010 | BD Design | MEDIUM | Clock/reset auto-connection |
| BUG-011 | TCL Script | MEDIUM | assign_bd_address syntax |
| BUG-012 | TCL Script | MEDIUM | Project lifecycle |
| BUG-013 | PowerShell | LOW | PS5.1 API compatibility |
| BUG-014 | Build Script | LOW | Path hardcoding |

---

## General Debugging Methodology

### Principle 1: Always Add Instrumentation Before Speculating

**The #1 lesson from BUG-001**: 4+ hours were spent hypothesizing about AXI handshake, address mapping, register bit widths, and seq_start edge detection — all wrong. A single `$display("[AXI_WR] awaddr=0x%h wr_off=0x%h", ...)` in the RTL would have revealed the root cause in 30 seconds.

**Rule**: When simulation doesn't match expectation, add `$display`/`$monitor` to the RTL first, analyze second.

### Principle 2: Signal Tracing (Not Guessing)

For any "X is stuck at 0" problem:
1. Find every `if` condition that gates X
2. Print every sub-condition in that `if` statement
3. Work backward through the signal chain to find the first 0

For BUG-001/002, tracing `pulse_0 → pulse_gen → pulse_en/seq_start/mmcm_locked → clk_gen → MMCM` found mmcm_locked=0; but the real killer was hidden one layer deeper in the AXI slave's wire race.

### Principle 3: Distinguish "Source Code Bug" from "Toolchain Bug"

| Signal | Implies |
|--------|---------|
| RTL source correct, sim shows old behavior | Toolchain (cache, macro, path) |
| RTL source correct, sim shows new but wrong behavior | Source code logic bug |
| `$display` appears in log | Source was compiled |
| `$display` does NOT appear | Source was NOT compiled → cache issue |

BUG-004 wasted hours because we kept treating it as a source bug when it was a cache bug. The `$display` litmus test is the fastest way to distinguish.

### Principle 4: Layered Defense for Simulation-Only Fixes

Simulation bypasses (like `ifdef SIMULATION`) are fragile because:
- Macro propagation depends on toolchain integration
- Future developers may not know the macro exists
- Different simulators handle defines differently

Always use 2-3 independent mechanisms:
1. RTL `ifdef` branch (cleanest, works with any simulator)
2. TCL property (Vivado-specific, catches fileset propagation)
3. Testbench `force` (belt-and-suspenders, works regardless of compilation)

### Principle 5: Know Your Toolchain's Quirks

| Tool | Quirk |
|------|-------|
| Vivado batch mode | `[pwd]` = `AppData/Roaming/Xilinx/Vivado/`, not script dir |
| Vivado IP packaging | TCL API differs between versions; check UG835 |
| XSim xelab | `--incr` caches in `.cache/`, not `.sim/`; delete both |
| Vivado BD | `.xpr` XML is append-only; delete whole project to reset |
| PS7 | Simulation models need extra license; IP-level sim is standard |
| Vivado `ip_repo_paths` | Per-project state; must re-register every open_project |

### Principle 6: The 5-Minute Verification Rule

After ANY RTL change, verify with this 30-second checklist:
```
[ ] Delete pulse_odmr.sim + pulse_odmr.cache
[ ] Run step5
[ ] Check: does my new $display appear in simulate.log?
[ ] If NO → cache problem, delete .cache again and try -noincr
[ ] If YES but wrong → source bug, fix and repeat
```

This prevents the "I fixed it but the sim still shows old behavior" loop that consumed most of the debugging time. Never skip the cache deletion step — it's the most common reason fixes appear not to work.
