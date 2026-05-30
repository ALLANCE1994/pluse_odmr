set proj_root [file normalize [file dirname [info script]]/..]
set proj_dir  [file join $proj_root "vivado" "project"]
set proj_xpr  [file join $proj_dir "pulse_odmr.xpr"]

if {![file exists $proj_xpr]} {
    error "Project not found: $proj_xpr\nRun step2_setup_project.tcl first."
}

close_project -quiet
open_project $proj_xpr

reset_run synth_1 -quiet

launch_runs synth_1 -jobs 4
wait_on_run synth_1

set synth_status [get_property STATUS [get_runs synth_1]]
if {$synth_status ne "synth_design Complete!"} {
    close_project
    error "Synthesis failed: $synth_status"
}
puts "Synthesis PASSED"

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

set impl_status [get_property STATUS [get_runs impl_1]]
if {$impl_status ne "write_bitstream Complete!"} {
    close_project
    error "Implementation/bitstream failed: $impl_status"
}
puts "Implementation PASSED"

set bit_out  [file join $proj_dir "pulse_odmr.bit"]
set bit_glob [glob -nocomplain [file join $proj_dir "pulse_odmr.runs" "impl_1" "*_wrapper.bit"]]
if {[llength $bit_glob] > 0} {
    file copy -force [lindex $bit_glob 0] $bit_out
}

set xsa_out [file join $proj_dir "pulse_odmr.xsa"]
write_hw_platform -fixed -force -file $xsa_out

close_project

puts "step6_run_impl.tcl done"
