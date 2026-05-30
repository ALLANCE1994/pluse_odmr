set proj_root [file normalize [file dirname [info script]]/..]
set proj_dir  [file join $proj_root "vivado" "project"]
set proj_xpr  [file join $proj_dir "pulse_odmr.xpr"]

if {![file exists $proj_xpr]} {
    error "Project not found: $proj_xpr\nRun step2_setup_project.tcl first."
}

close_project -quiet
open_project $proj_xpr

set bd_list [get_files -quiet -filter {NAME =~ "*.bd"}]
if {[llength $bd_list] == 0} {
    close_project
    error "No BD found. Run step3_create_system_bd.tcl first."
}

set bd_file [lindex $bd_list 0]

generate_target all $bd_file -force
generate_target simulation $bd_file -force

set wrapper_list [get_files -quiet -filter {NAME =~ "*_wrapper.v"}]
foreach w $wrapper_list {
    remove_files $w -quiet
}

make_wrapper -files $bd_file -top -force -import

set new_wrapper [lindex [get_files -quiet -filter {NAME =~ "*_wrapper.v"}] 0]
if {$new_wrapper eq ""} {
    close_project
    error "Wrapper generation failed."
}

set wrapper_name [file rootname [file tail $new_wrapper]]
set_property top $wrapper_name [current_fileset]
update_compile_order -fileset sources_1
close_project

puts "step4_generate_outputs.tcl done"
