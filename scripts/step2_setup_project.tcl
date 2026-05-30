set proj_root [file normalize [file dirname [info script]]/..]
set proj_dir  [file join $proj_root "vivado" "project"]
set part      "xc7z020clg400-2"
set ip_repo   [file join $proj_root "vivado" "ip_package" "pulse_odmr_ip"]
set rtl_dir   [file join $proj_root "src" "rtl"]
set xdc_dir   [file join $proj_root "src" "constraints"]
set sim_dir   [file join $proj_root "sim"]

close_project -quiet
file delete -force $proj_dir

create_project pulse_odmr $proj_dir -part $part -force
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

set_property ip_repo_paths $ip_repo [current_project]
update_ip_catalog

foreach f [lsort [glob -nocomplain $rtl_dir/*.v]] {
    add_files -norecurse $f
}
foreach f [glob -nocomplain $xdc_dir/*.xdc] {
    add_files -fileset constrs_1 -norecurse $f
}
foreach f [lsort [glob -nocomplain $sim_dir/*.v]] {
    add_files -fileset sim_1 -norecurse $f
}

set_property top pulse_odmr_top [current_fileset]
update_compile_order -fileset sources_1
close_project

puts "step2_setup_project.tcl done"
