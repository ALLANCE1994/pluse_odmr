close_project -quiet

file delete -force "C:/Users/user/Desktop/desktop_project/pulse_odmr/simulation/sim_project.cache"
file delete -force "C:/Users/user/Desktop/desktop_project/pulse_odmr/simulation/sim_project.hw"
file delete -force "C:/Users/user/Desktop/desktop_project/pulse_odmr/simulation/sim_project.xpr"

set rtl_dir "C:/Users/user/Desktop/desktop_project/pulse_odmr/hardware/pl"
set sim_dir "C:/Users/user/Desktop/desktop_project/pulse_odmr/simulation/testbenches"

create_project -force sim_project $sim_dir -part xc7z020clg400-2

add_files -norecurse [list \
    "$rtl_dir/clock/clk_gen.v" \
    "$rtl_dir/bus/axi_lite_slave.v" \
    "$rtl_dir/pulse/pulse_gen.v" \
    "$rtl_dir/phase/mw_phase_gen.v" \
    "$rtl_dir/adc/ad9280_driver.v" \
    "$rtl_dir/top/pulse_odmr_top.v" \
]

add_files -norecurse -fileset [get_filesets sim_1] [list \
    "$sim_dir/pulse_odmr_top_tb.v" \
]

set_property top pulse_odmr_top_tb [get_filesets sim_1]
update_compile_order -fileset sim_1

puts "========================================"
puts "Pulse_ODMR - Top Level Simulation"
puts "========================================"
puts ""

if {[catch {launch_simulation -mode behavioral} err_msg]} {
    puts "ERROR: $err_msg"
} else {
    run 3 us
    close_sim
    puts {[PASS] pulse_odmr_top_tb completed!}
}

puts ""
puts "========================================"
puts "Simulation completed!"
puts "========================================"
