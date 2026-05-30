# ====== TROUBLESHOOTING QUICK REF ======
# [1_wire_race] ROOT CAUSE: wire s_axi_awaddr-BASE lags 1 delta-cycle in XSim
#   Symptom: wr_off/rd_off = 0xbc400000 (not 0x20) -> case misses -> regs never written/read
#   Fix: replace "wire wr_off=awaddr-BASE" with "reg wr_off; wr_off=awaddr-BASE"(blocking in always@)
#   Verified: PASS all tests after fix
# [2_mmcm_locked] mmcm_locked=0 blocks pulse_gen reset -> pulse stuck 0 (MMCM >100us in XSim)
#   Fix: clk_gen.v ifdef SIMULATION + verilog_define SIMULATION + xelab -d SIMULATION + force in TB
# [3_ps_sim_missing] used_in_simulation false on *.bd and *_wrapper*
# [4_xelab_cache] Delete pulse_odmr.sim + pulse_odmr.cache before re-run
# [verify] taskkill vivado xsim -> rm .sim .cache -> vivado -source step5.tcl -> tail simulate.log
# =======================================

set proj_root [file normalize [file dirname [info script]]/..]
set proj_dir  [file join $proj_root "vivado" "project"]
set proj_xpr  [file join $proj_dir "pulse_odmr.xpr"]

if {![file exists $proj_xpr]} {
    error "Project not found: $proj_xpr\nRun step2_setup_project.tcl first."
}

close_project -quiet
open_project $proj_xpr

set tb_files [get_files -quiet -filter {NAME =~ "*subsystem_tb.v"}]
if {[llength $tb_files] == 0} {
    puts "No subsystem testbench found. Skipping subsystem simulation."
    close_project
    return
}

reset_simulation -quiet

set_property top pulse_odmr_subsystem_tb [get_filesets sim_1]
set_property verilog_define {SIMULATION} [get_filesets sources_1]
set_property verilog_define {SIMULATION} [get_filesets sim_1]

set_property -name {xsim.compile.xvlog.more_options} -value {-d SIMULATION} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.xelab.more_options} -value {-d SIMULATION} -objects [get_filesets sim_1]

set bd_files [get_files -quiet -filter {NAME =~ "*.bd"}]
foreach f $bd_files {
    set_property used_in_simulation false $f
}
set wr_files [get_files -quiet -filter {NAME =~ "*_wrapper*"}]
foreach f $wr_files {
    set_property used_in_simulation false $f
}

file delete -force [file join $proj_dir "pulse_odmr.sim"]
file delete -force [file join $proj_dir "pulse_odmr.cache"]

update_compile_order -fileset sim_1

close_project
open_project $proj_xpr

launch_simulation
run 10 us

close_sim
close_project

puts "step5_run_subsystem_sim.tcl done"
