set proj_root [file normalize [file dirname [info script]]/../..]
set proj_dir  [file join $proj_root "vivado" "project"]
set proj_xpr  [file join $proj_dir "pulse_odmr.xpr"]

if {![file exists $proj_xpr]} {
    error "Project not found: $proj_xpr\nRun step2_setup_project.tcl first."
}

close_project -quiet
open_project $proj_xpr

puts "=============================="
puts " Phase 3 Gate Checks"
puts "=============================="

puts "\n--- Timing ---"
set run_impl [get_runs -quiet impl_1]
if {$run_impl eq ""} {
    puts "impl_1 not found. Run step6_run_impl.tcl first."
} else {
    set wns [get_property STATS.WNS $run_impl]
    set whs [get_property STATS.WHS $run_impl]
    if {$wns < 0 || $whs < 0} {
        puts "FAIL: WNS=$wns WHS=$whs"
    } else {
        puts "PASS: WNS=$wns WHS=$whs"
    }
}

puts "\n--- Utilization ---"
puts [report_utilization -return_string]

puts "\n--- DRC ---"
set drc_rpt [report_drc -return_string]
puts $drc_rpt

puts "\n=============================="
puts " Phase 3 Checks Complete"
puts "=============================="
close_project

puts "step7_run_phase3_checks.tcl done"
