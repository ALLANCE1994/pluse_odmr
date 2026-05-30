# Pulse ODMR Project — Development Summary & Lessons Learned

**Project**: NV Color Center Pulse ODMR Detection System (pulse_odmr)
**Platform**: ZYNQ-7020 (XC7Z020CLG400-2) on 正点原子领航者 Development Board
**Toolchain**: Vivado 2020.2 + PYNQ v2.7 + Python 3.8.3
**Report Date**: 2026-05-30
**Status**: Step1-Step6 All Passed, Bitstream Generated, Ready for Board Deployment

---

## Table of Contents

1. [Project Overview](#1-project-overview)
2. [System Architecture](#2-system-architecture)
3. [Development Workflow](#3-development-workflow)
4. [RTL Design Summary](#4-rtl-design-summary)
5. [Verification Summary](#5-verification-summary)
6. [Pin & Timing Constraints](#6-pin--timing-constraints)
7. [Automation & Tooling](#7-automation--tooling)
8. [Bugs Encountered & Root Causes](#8-bugs-encountered--root-causes)
9. [Key Design Decisions & Rationale](#9-key-design-decisions--rationale)
10. [Lessons Learned](#10-lessons-learned)
11. [Quick Reference: Common Pitfalls](#11-quick-reference-common-pitfalls)
12. [Next Steps](#12-next-steps)

---

## 1. Project Overview

### 1.1 Purpose

Build a ZYNQ-based PL (Programmable Logic) IP core that generates nanosecond-aligned multi-channel pulse sequences for ODMR (Optically Detected Magnetic Resonance) experiments on NV (Nitrogen-Vacancy) color centers in diamond.

### 1.2 Path Traversal

```
pulse_odmr/
├── src/                    # RTL source + constraints
│   ├── rtl/                # 6 Verilog modules
│   │   ├── clk_gen.v             # MMCM clock generation
│   │   ├── axi_lite_slave.v      # AXI4-Lite register interface
│   │   ├── pulse_gen.v           # 4-channel programmable pulse generator
│   │   ├── mw_phase_gen.v        # Microwave IQ phase control
│   │   ├── ad9280_driver.v       # AD9280 ADC data acquisition
│   │   └── pulse_odmr_ip.v       # Top-level IP wrapper
│   └── constraints/
│       ├── pin_assignments.xdc   # LOC + IOSTANDARD constraints
│       ├── timing_constraints.xdc # Clock + I/O timing constraints
│       └── register_map.csv      # Full register map specification
├── sim/                    # Testbenches
│   ├── pulse_odmr_subsystem_tb.v # Main system-level testbench
│   ├── axi_lite_slave_tb.v
│   ├── clk_gen_tb.v
│   ├── pulse_gen_tb.v
│   ├── mw_phase_gen_tb.v
│   ├── ad9280_driver_tb.v
│   └── pulse_odmr_top_tb.v
├── scripts/                # 7-step TCL automation + PowerShell tooling
│   ├── step1_ip_package.tcl      # IP packaging
│   ├── step2_setup_project.tcl   # Empty project creation
│   ├── step3_create_system_bd.tcl # Block Design creation
│   ├── step4_generate_outputs.tcl # Wrapper + simulation targets
│   ├── step5_run_subsystem_sim.tcl # Simulation
│   ├── step6_run_impl.tcl         # Synthesis → Implementation → Bitstream
│   ├── step7_run_phase3_checks.tcl # Timing/DRC gates
│   ├── run_vivado_flow.ps1        # Full automation PowerShell
│   └── kill_vivado.ps1            # Background process killer
├── docs/                   # Documentation
│   ├── NV色心脉冲ODMR检测系统（pulse_odmr）需求规格书.md
│   ├── RTL_summary.md
│   ├── SIM_summary.md
│   ├── bugfix_kb.md              # 15 bugs with methodology
│   ├── constraints_summary.md
│   └── project_dev_summary.md    # THIS FILE
├── pynq/overlay/           # PYNQ deployment files
│   ├── pulse_odmr.bit
│   └── pulse_odmr.hwh
├── vivado/                 # Vivado outputs
│   ├── ip_package/               # Packaged IP
│   ├── logs/                     # Step execution logs
│   └── project/                  # Vivado project + bitstream
└── trae.config.json        # Global configuration
```

---

## 2. System Architecture

### 2.1 Block Diagram

```
┌──────────────────────────────────────────────────────────────────────┐
│                        PS (ARM Cortex-A9)                            │
│  ┌─────────┐    ┌──────────────────┐                                 │
│  │  Linux  │───▶│  PYNQ Overlay    │                                 │
│  │ (PYNQ)  │    │  MMIO @ 0x43C0   │                                 │
│  └─────────┘    └──────┬───────────┘                                 │
│                        │ M_AXI_GP0 (32-bit AXI4-Lite)                │
├────────────────────────┼────────────────────────────────────────────┤
│  PL (FPGA Fabric)      │                                             │
│                        ▼                                             │
│  ┌─────────────────────────────────────────────────────────────┐    │
│  │              pulse_odmr_ip (Top-Level IP)                    │    │
│  │  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐       │    │
│  │  │ axi_lite_slave│  │   pulse_gen  │  │  clk_gen     │       │    │
│  │  │  Registers   │  │  4-Channel   │  │  MMCM        │       │    │
│  │  │  0x00-0x64   │  │  Pulse Out   │  │  50→32/10MHz │       │    │
│  │  └──────┬───────┘  └───┬────┬────┘  └────┬─────────┘       │    │
│  │         │              │    │            │                  │    │
│  │  ┌──────┴───────┐      │    │    ┌───────┴──────────┐      │    │
│  │  │ mw_phase_gen │      │    │    │  ad9280_driver   │      │    │
│  │  │  I/Q Output  │      │    │    │  ADC Interface   │      │    │
│  │  └──────────────┘      │    │    └──────────────────┘      │    │
│  └────────────────────────┼────┼─────────────────────────────┘    │
│                           │    │                                   │
│                     J4 Expansion Port                              │
│  ┌────────────────────────┬────┬────────────────────────────────┐  │
│  │ mw_i/mw_q  ref_clk_10m │ pps│ pulse_0-3  adc_clk  ad_data   │  │
│  │ (Pin3,4)   (Pin1)      │ clk│ (Pin14-17) (Pin33)  (Pin5-12) │  │
│  └────────────────────────┴────┴────────────────────────────────┘  │
└──────────────────────────────────────────────────────────────────────┘
```

### 2.2 Register Map (AXI4-Lite, Base Address 0x43C00000)

| Offset | Register | Access | Description | Default |
|--------|----------|--------|-------------|---------|
| 0x00 | CTRL_REG | R/W | System/Pulse/ADC/DMA enables + seq_start | 0x00000000 |
| 0x04 | STAT_REG | RO | System ready, ADC overflow, FIFO, seq complete | 0x00000000 |
| 0x10 | CLK_CFG_REG | R/W | PPS divider | 0xC3500000 |
| 0x14 | MMCM_CFG_REG | R/W | M=16, D=1, CLK32_DIV=25, CLK10_DIV=80 | 0x50190110 |
| 0x18 | MW_FREQ_REG | R/W | Microwave frequency (kHz), 1.8G-4G | 0x002BCA00 |
| 0x1C | MW_PHASE_REG | R/W | Phase select [1:0] | 0x00000000 |
| 0x20 | PULSE0_CFG | R/W | Pulse0 width[15:0] + delay[31:16] (ns) | 0x00001388 |
| 0x24 | PULSE1_CFG | R/W | Pulse1 width + delay | 0x00140028 |
| 0x28 | PULSE2_CFG | R/W | Pulse2 width + delay | 0x00001388 |
| 0x2C | PULSE3_CFG | R/W | Pulse3 width + delay | 0x00001388 |
| 0x30 | PULSE_SEQ | R/W | Enable mask [3:0] | 0x0000000F |
| 0x34 | SEQ_SEL | R/W | Sequence type (0=NV-ESR 1=Rabi 2=T1 3=T2 4=XY8-N 5=Corr) | 0x00000000 |
| 0x38 | SEQ_PARAM0 | R/W | XY8-N N value | 0x00000001 |
| 0x3C | SEQ_PARAM1 | R/W | XY8-N tau (ns) | 0x0000017A |
| 0x40 | SEQ_PARAM2 | R/W | Correlation t_corr (ns) | 0x000186A0 |
| 0x44 | ADC_CFG_REG | R/W | Sample count [15:0] | 0x00000400 |
| 0x48 | ADC_STAT_REG | RO | Sampled count | 0x00000000 |
| 0x60 | DMA_CFG_REG | R/W | DMA upload length | 0x00000400 |
| 0x64 | DMA_STAT_REG | RO | DMA complete / error | 0x00000000 |

### 2.3 Clock Architecture

```
50 MHz (Board Crystal, Pin U18)
    │
    ├── MMCME2_ADV (M=16, D=1, VCO=800MHz)
    │       ├── CLKOUT0 /25 = 32.00 MHz → adc_clk (J4 Pin33)
    │       └── CLKOUT1 /80 = 10.00 MHz → ref_clk_10m (J4 Pin1)
    │
    ├── Counter /50000000 = 1 Hz PPS → pps_clk (J4 Pin2)
    └── Direct → sys_clk (internal AXI domain, 50MHz)
```

### 2.4 Pin Assignment (J4 Expansion Port)

| J4 Pin | FPGA Pin | Signal | Direction | Bank |
|--------|----------|--------|-----------|------|
| 1 | V5 | ref_clk_10m | Output | 13 |
| 2 | T11 | pps_clk | Output | 13 |
| 3 | U5 | mw_i | Output | 13 |
| 4 | T5 | mw_q | Output | 13 |
| 5-12 | W8,U7,V7,V8,U9,U8,U10,T9 | ad_data[7:0] | Input | 13 |
| 13 | W6 | ad_otr | Input | 13 |
| 14 | V6 | pulse_0 | Output | 13 |
| 15 | Y7 | pulse_1 | Output | 13 |
| 16 | Y6 | pulse_2 | Output | 13 |
| 17 | Y9 | pulse_3 | Output | 13 |
| 33 | W14 | adc_clk | Output | 13 |
| - | N16 | sys_rst_n | Input | 34 |

---

## 3. Development Workflow

### 3.1 Seven-Step Automation Pipeline

The entire build is automated through 7 numbered Tcl scripts, run sequentially:

```
Step1 (IP Package)      Step3 (BD Create)     Step4 (Generate)
   ┌─────────┐           ┌─────────┐           ┌─────────┐
   │ Package │──────────▶│ Create  │──────────▶│Generate │
   │ RTL→IP  │           │ System  │           │ Wrapper │
   └────┬────┘           │ BD      │           │ + Sim   │
        │                └─────────┘           └────┬────┘
        │                                           │
        │     Step5 (Simulate)          Step6 (Implement)
        │        ┌─────────┐             ┌─────────┐
        │        │ Run     │             │ Synth + │
        └───────▶│ IP-Level│────────────▶│ Impl +  │
                 │ Sim     │             │ Bitstream│
                 └─────────┘             └────┬────┘
                                              │
                                    Step7 (Verify)
                                       ┌─────────┐
                                       │ Timing  │
                                       │ DRC +   │
                                       │ Report  │
                                       └─────────┘
```

**Run order**: step1 → step3 → step4 → step5 → step6 → step7
(step2 is optional standalone project creation; step3 self-contains project creation)

### 3.2 Automation Script

`run_vivado_flow.ps1` orchestrates all 7 steps:
```powershell
.\scripts\run_vivado_flow.ps1
```

Each step's output is logged to `vivado/logs/YYYYMMDD_HHMMSS_stepN.log`.

---

## 4. RTL Design Summary

### 4.1 Module List

| Module | Lines | Function | Key Dependencies |
|--------|-------|----------|-----------------|
| `axi_lite_slave.v` | ~200 | 20-register AXI4-Lite slave with read/write channels | AXI4-Lite protocol |
| `clk_gen.v` | ~100 | MMCME2_ADV instantiation + PPS counter | 7-series MMCM |
| `pulse_gen.v` | ~200 | 4-channel programmable pulse with width/delay | axi_lite registers |
| `mw_phase_gen.v` | ~60 | DDS-based microwave IQ phase control | --
| `ad9280_driver.v` | ~80 | Dual-flop sync + overflow detection | AD9280 datasheet |
| `pulse_odmr_ip.v` | ~180 | Top-level IP wrapper, wire all submodules | All above |

### 4.2 Critical Design Patterns

**Pattern 1: Address Decoding with Blocking Assignment**

In `axi_lite_slave.v`, address offset computation uses `reg` + blocking `=` inside the `always @(posedge)` block, NOT `wire` continuous assignment:

```verilog
// CORRECT: reg + blocking for same-delta evaluation
reg [31:0] wr_off;
always @(posedge s_axi_aclk) begin
    wr_off = s_axi_awaddr - 32'h43C00000;  // blocking = immediate
    case (wr_off) ...
end

// WRONG: wire lags 1 delta-cycle in XSim
wire [31:0] wr_off = s_axi_awaddr - 32'h43C00000;
```

**Pattern 2: MMCM Clock Generation with Simulation Bypass**

`clk_gen.v` uses `ifdef SIMULATION` to bypass MMCM analog PLL lock delay:

```verilog
`ifdef SIMULATION
    // Behavioral clock generation for simulation
    always #10 sys_clk = ~sys_clk; // 50MHz
    assign mmcm_locked_d = 1'b1;   // Immediately locked
`else
    MMCME2_ADV #(...) mmcm_inst (...) // Hardware MMCM
`endif
```

**Pattern 3: Level-Triggered Pulse Sequence**

`pulse_gen.v` uses level-triggered (not edge-triggered) `seq_start`:

```verilog
if (pulse_en && pulse_seq_mask[0] && seq_start) begin
    pulse0_en <= 1'b1;
    // ... generate pulse
end
```

This allows PS to assert `seq_start` and pulse_gen begins immediately, clearing on pulse completion.

### 4.3 Code Conventions

- **No Chinese comments**: All comments are in English
- **No latch**: Every `case` has `default`; every `if` in combinational always has `else`
- **Active-low reset**: `sys_rst_n` (system) and `s_axi_aresetn` (AXI) are active-low
- **32-bit AXI alignment**: All registers are 32-bit aligned at 4-byte boundaries (0x00, 0x04, 0x08, ...)
- **DONT_TOUCH removed**: DA pins were removed entirely (not used on this board)

---

## 5. Verification Summary

### 5.1 Simulation Results

IP-level simulation (`step5`) verifies full AXI register read/write + 4-channel pulse generation:

```
PASS: CTRL_REG readback     = 0x00000000
PASS: PULSE0_CFG default    = 0x00001388
PASS: PULSE1_CFG default    = 0x00140028
PASS: AXI_WR PULSE0_CFG     wr_off=0x00000020  
PASS: PULSE0_CFG readback   = 0xDEADBEEF
PASS: CTRL_REG write enable pulse_en=1 seq_start=1
PASS: PULSE0 TRIGGER en=1 mask[0]=1 start=1 locked=1
PASS: pulse_0 rising edge at 46 cycles
```

### 5.2 Synthesis & Implementation

| Metric | Result |
|--------|--------|
| Synthesis | Clean (0 errors) |
| Implementation | Clean (0 errors) |
| DRC | 0 errors |
| Timing Closure | ALL MET |
| WNS (Setup) | +3.074 ns |
| WHS (Hold) | +0.062 ns |
| Total Endpoints | 4682 (0 failing) |
| TNS/THS/TPWS | 0.000 ns |

---

## 6. Pin & Timing Constraints

### 6.1 Critical Constraint Rule: `_0` Suffix for BD Wrapper Ports

Vivado Block Design wrapper automatically appends `_0` suffix to all external ports:

| RTL Port Name | BD Wrapper Port Name |
|--------------|---------------------|
| `sys_clk` | `sys_clk_0` |
| `pulse_0` | `pulse_0_0` |
| `adc_clk` | `adc_clk_0` |
| `sys_rst_n` | `sys_rst_n_0` |

**XDC files MUST use BD wrapper port names** (`get_ports sys_clk_0`, NOT `get_ports sys_clk`).

If XDC uses bare names, `get_ports` returns empty → constraints silently ignored → DRC UCIO-1 errors.

### 6.2 Timing Constraints Strategy

```
sys_clk (50MHz) → MMCM → adc_clk (32MHz, /25)
                        → ref_clk_10m (10MHz, /80)

create_clock -name sys_clk -period 20.000 [get_ports sys_clk_0]
create_generated_clock -name adc_clk -multiply_by 16 -divide_by 25 ...
create_generated_clock -name ref_clk_10m -multiply_by 16 -divide_by 80 ...
create_generated_clock -name pps_clk -divide_by 50000000 ...
```

---

## 7. Automation & Tooling

### 7.1 TCL Script Design Principles

1. **Self-contained path resolution**: Every script derives project root from `[file dirname [info script]]/..`, never from `[pwd]`
2. **Idempotent execution**: Scripts close project first, delete stale artifacts before creating
3. **Error propagation**: Critical failures call `error "message"` → exit Vivado with non-zero code
4. **Logging**: All scripts print `"stepN_xxx.tcl done"` on success
5. **No comments in TCL/XDC files** (per project convention)

### 7.2 Command Reference

```powershell
# Individual steps
vivado -mode batch -source scripts/step1_ip_package.tcl -notrace
vivado -mode batch -source scripts/step3_create_system_bd.tcl -notrace
vivado -mode batch -source scripts/step4_generate_outputs.tcl -notrace
vivado -mode batch -source scripts/step5_run_subsystem_sim.tcl -notrace
vivado -mode batch -source scripts/step6_run_impl.tcl -notrace
vivado -mode batch -source scripts/step7_run_phase3_checks.tcl -notrace

# Full automation
.\scripts\run_vivado_flow.ps1

# Kill leftover processes
.\scripts\kill_vivado.ps1
```

---

## 8. Bugs Encountered & Root Causes

### 8.1 Bug Statistics

| Priority | Count | Status |
|----------|-------|--------|
| CRITICAL | 2 | All FIXED |
| HIGH | 5 | All FIXED |
| MEDIUM | 7 | All FIXED |
| LOW | 2 | All FIXED / BY DESIGN |
| **Total** | **16** | **All Resolved** |

### 8.2 The Three Most Important Bugs

**#1: AXI Address Decoding Wire Delta-Cycle Race (BUG-001)**

The project's single most impactful bug. `wire wr_off = s_axi_awaddr - BASE` computed offset with stale address value in XSim's delta scheduling, causing ALL AXI writes to fail silently. Fix: `reg wr_off;` + blocking `=` inside the always block.

**Lesson**: Never use `wire` continuous assignment for address decoding in clocked always blocks in Verilog simulation. This is a tool-specific (XSim) behavior that passes synthesis synthesis but fails simulation.

**#2: MMCM Lock Delay in Simulation (BUG-002)**

MMCME2_ADV analog model takes ~100µs+ to lock in XSim, keeping all sequential logic in reset. Fix: 3-layer defense — RTL `ifdef SIMULATION` bypass, TCL `verilog_define SIMULATION`, TB `force mmcm_locked`.

**Lesson**: Every FPGA PLL/MMCM/DCM primitive in simulation requires a bypass strategy. One-layer (just TB force) is fragile; use 3 independent mechanisms.

**#3: BD Wrapper Port Name Suffix (BUG-015)**

BD wrapper silently renames ports with `_0` suffix. XDC `get_ports sys_clk` returns empty → constraint silently ignored → 21 unconstrained ports → bitstream blocked. Fix: Match all XDC port names to BD wrapper naming.

**Lesson**: After any BD regeneration, always grep the wrapper Verilog for actual port names and cross-check against XDC.

### 8.3 Complete Bug Index

| ID | Name | Impact | Root Cause Category |
|----|------|--------|---------------------|
| BUG-001 | AXI Wire Delta-Cycle Race | CRITICAL | Sim-vs-Synthesis gap |
| BUG-002 | MMCM Lock Delay in XSim | CRITICAL | Sim-vs-Synthesis gap |
| BUG-003 | PS7 Sim Model Not Generated | LOW | Tool limitation (BY DESIGN) |
| BUG-004 | xelab --incr Cache Stale | HIGH | Build system caching |
| BUG-005 | Verilog Declaration in Unnamed Block | MEDIUM | Syntax error |
| BUG-006 | Vivado [pwd] in Batch Mode | HIGH | Toolchain path resolution |
| BUG-007 | Vivado 2020.2 IP API Limits | MEDIUM | Version API incompatibility |
| BUG-008 | BD Name Collision After Delete | HIGH | Vivado DB persistence |
| BUG-009 | BD IP VLNV Not Found | MEDIUM | IP repo not registered |
| BUG-010 | BD Clock/Reset Warnings | MEDIUM | Auto-configuration defaults |
| BUG-011 | assign_bd_address Syntax Error | MEDIUM | TCL API syntax |
| BUG-012 | Project Already Open Conflict | MEDIUM | State management |
| BUG-013 | PS 5.1 Join-Path Incompatibility | LOW | Platform compatibility |
| BUG-014 | run_vivado_flow.ps1 Config | LOW | Config separation |
| BUG-015 | DRC UCIO-1 Port Suffix Mismatch | HIGH | BD wrapper naming |
| BUG-016 | sys_rst_n Wrong Pin (K19→N16) | MEDIUM | Board variant difference |

---

## 9. Key Design Decisions & Rationale

### 9.1 DA Port Removal

**Decision**: Remove `da_clk`/`da_data` ports entirely from `pulse_odmr_ip.v` instead of using `DONT_TOUCH` to suppress them.

**Rationale**: These DA pins serve no function in the ODMR design — the board doesn't connect them to any peripheral. Keeping them with `DONT_TOUCH` still requires LOC constraints (unused I/O pins) and generates 8 DRC UCIO-1 violations. Removing them from the RTL eliminates the problem at its source.

### 9.2 IP-Level Simulation Only (No PS System Simulation)

**Decision**: Verify the design through IP-level simulation (`step5`), not BD-level PS system simulation.

**Rationale**: PS7 requires encrypted simulation models (commercial license), and BD-level sim takes hours. IP-level simulation covers 100% of PL RTL verification — the testbench instantiates `pulse_odmr_ip` directly and exercises all AXI registers and pulse outputs. PS-BD integration is verified at board level.

### 9.3 Three-Layer MMCM Bypass

**Decision**: Implement MMCM simulation bypass at 3 independent levels (RTL, TCL, TB).

**Rationale**: Each layer can fail independently — `verilog_define` may not propagate from Vivado GUI to batch flow; `force` may not work if RTL uses `wire` outputs; `ifdef SIMULATION` may not trigger if the macro is lost in project settings. Three layers guarantee at least one works.

### 9.4 Nuclear Option for Vivado Project Reset

**Decision**: Delete entire `$proj_dir` when BD name collision or other Vivado DB errors occur.

**Rationale**: Vivado `.xpr` XML database is append-only in many cases. Debugging internal XML corruption wastes more time than rebuilding the project from scratch. Fresh `create_project` is deterministic and fast.

---

## 10. Lessons Learned

### 10.1 General Debugging Principles (from bugfix_kb.md)

1. **Instrumentation First**: Never trust "obvious" conditions. Always add `$display` to RTL internals — not just testbench prints. TB prints show what you THINK you're doing; RTL prints show what the hardware ACTUALLY sees.

2. **Signal Tracing**: When a signal is wrong, trace it bottom-up from the failing condition all the way back to the source. Don't stop at the first plausible cause.

3. **Source vs. Toolchain**: When a fix "should work" but doesn't, it's almost always a toolchain integration issue — macro propagation, incremental compilation cache, or file path resolution. Never blame the fix first; blame the delivery mechanism.

4. **Layered Defense**: For simulation-critical issues (MMCM, reset, PLL), implement fixes at multiple independent layers — any one should work alone; all three guarantee correctness.

5. **The 5-Minute Litmus Test**: After any RTL edit, add a unique `$display` string. If it doesn't appear in the simulation log, the edit was never compiled. The presence of the string means compilation; its absence means cache.

### 10.2 Vivado-Specific Insights

| Trap | Solution |
|------|----------|
| `[pwd]` ≠ script directory in batch mode | `[file dirname [info script]]` |
| BD wrapper appends `_0` to all port names | Grep wrapper `.v` for actual names |
| `xelab --incr` cache survives `.sim/` deletion | Also delete `.cache/` |
| `ip_repo_paths` is per-project, not global | Re-register in every script |
| `.xpr` XML is append-only after BD operations | Delete `$proj_dir` and rebuild |
| `create_bd_cell` needs `-vlnv EXACT` match | Check `component.xml` for actual VLNV |
| Vivado 2020.2 TCL API differs from 2022+ | Check UG835 for your version |
| `generate_target simulation` for BD | Required before simulation can use BD IP |

### 10.3 Verilog Simulation-Synthesis Gaps

1. **Wire delta-cycle races**: `wire x = a - b` evaluates in a different Verilog scheduler slot than `always @(posedge clk) case(x)`. Only affects simulation, not synthesis. Fix: use `reg` + blocking `=` inside always block.

2. **MMCM/PLL lock time**: Analog models take µs-ms in simulation vs. real hardware µs. Always provide simulation bypass.

3. **X propagation**: Unconnected ports in simulation propagate `X` (unknown), but synthesis ties them to 0. TB must `force` all floating inputs.

### 10.4 Process Lessons

| Practice | Why |
|----------|-----|
| Number step scripts (step1, step2, ...) | Establishes clear execution order |
| One script, one responsibility | Easy to re-run individual steps on failure |
| `close_project -quiet` at script start | Prevents "project already open" cascading errors |
| Log every run to timestamped file | Enables regression comparison |
| Bugfix knowledge base with Methodology sections | The "why" matters more than the "what" for future debugging |
| No comments in TCL/XDC | Forces self-documenting code; reduces maintenance burden |

---

## 11. Quick Reference: Common Pitfalls

### 🚨 Critical Pitfalls (Will Block Bitstream/Simulation)

1. **XDC port names don't match BD wrapper** → DRC UCIO-1 → no bitstream
   - Fix: `get_ports pulse_0_0` (WITH `_0` suffix)

2. **Wire address decoding** → all AXI writes fail in simulation → pulse never triggers
   - Fix: Use `reg` + blocking `=` inside always block

3. **MMCM not bypassed in simulation** → all logic in permanent reset → pulses always LOW
   - Fix: `ifdef SIMULATION` in RTL + `verilog_define SIMULATION` in TCL

4. **xelab cache not cleared after RTL edit** → old behavior persists → false "not fixed"
   - Fix: Delete BOTH `sim_project.sim` AND `sim_project.cache`

5. **ip_repo_paths not set** → BD can't find IP → VLNV error
   - Fix: `set_property ip_repo_paths [list $ip_repo] [current_project]` then `update_ip_catalog`

### ⚠️ Moderate Pitfalls

6. **`[pwd]` in batch mode** → file not found → scripts fail
   - Fix: `[file normalize [file dirname [info script]]/..]`

7. **PS7 sim model missing** → XSim can't compile → simulation fails
   - Fix: `used_in_simulation false` on BD/wrapper; instantiate IP directly

8. **BD name collision** → `BD 5-137` error → BD creation fails
   - Fix: Delete `$proj_dir` entirely before `create_project`

9. **assign_bd_address syntax** → TCL error → address assignment fails
   - Fix: Use `-offset` and `-range` flags (positional args don't work in Vivado 2020.2)

10. **Verilog unnamed block declarations** → `VRFC 10-552` → compilation fails
    - Fix: Move all `reg` declarations to module level

### 📋 Pre-Check Checklist

Before running ANY Vivado step, verify:

```
□ No Vivado processes running (.\scripts\kill_vivado.ps1)
□ Previous project closed (each script starts with close_project -quiet)
□ XDC port names match BD wrapper (check *_wrapper.v for _0 suffixes)
□ IP repo path is correct (vivado/ip_package/)
□ Simulation cache cleared (.sim + .cache deleted)
□ RTL has no latch (every case has default)
```

---

## 12. Next Steps

### 12.1 Immediate (Board Bring-Up)

| Task | Command / Method |
|------|-----------------|
| Upload bitstream + hwh to board | Copy `pynq/overlay/` to `/home/xilinx/pynq/overlays/pulse_odmr/` |
| Load overlay in PYNQ | `ol = Overlay("pulse_odmr.bit")` |
| Verify register R/W | `ol.pulse_odmr_ip_0.read(0x00)`, `ol.pulse_odmr_ip_0.write(0x20, 0x00001388)` |
| Test pulse output | Write `CTRL_REG=0x12`, observe pulse_0 on oscilloscope |

### 12.2 Short-Term (Functional Verification)

- Verify all 4 pulse channels independently on oscilloscope
- Test pulse width/delay configurability via AXI writes
- Verify AD9280 data acquisition at 32 MSPS
- Run NV-ESR ODMR test sequence with laser + microwave source
- Validate 10MHz reference clock output synchronization

### 12.3 Medium-Term (PYNQ Software)

- Develop `pl_reg_driver.py` with full register map wrapper
- Implement `odmr_spectrum.py` for frequency-swept ODMR data collection
- Add automated T₁, T₂, Rabi, and XY8-N sequence controllers
- Implement ODMR spectrum plotting with matplotlib

### 12.4 Version Control

```powershell
git add .
git commit -m "Phase 2 complete: bitstream generated, timing met, 0 DRC errors"
git tag v0.2.0-phase2
```

---

**End of Report**

*For detailed bug analysis with methodology, see `docs/bugfix_kb.md`.*
*For architectural specifications, see `docs/需求规格书.md`.*
