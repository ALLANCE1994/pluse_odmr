
set project_name "pulse_odmr"
set project_dir "C:/Users/user/Desktop/desktop_project/pulse_odmr/hardware/project"
set rtl_dir "C:/Users/user/Desktop/desktop_project/pulse_odmr/hardware/pl"
set constraint_dir "C:/Users/user/Desktop/desktop_project/pulse_odmr/hardware/constraints"

set rtl_files [list \
    "$rtl_dir/clock/clk_gen.v" \
    "$rtl_dir/bus/axi_lite_slave.v" \
    "$rtl_dir/pulse/pulse_gen.v" \
    "$rtl_dir/adc/ad9280_driver.v" \
    "$rtl_dir/phase/mw_phase_gen.v" \
    "$rtl_dir/top/pulse_odmr_top.v" \
]

set xdc_files [list \
    "$constraint_dir/timing_constraints.xdc" \
    "$constraint_dir/pin_assignments.xdc" \
]

set top_module "pulse_odmr_top"

puts "\n"
puts "########################################"
puts "# Pulse_ODMR - STATIC VERIFICATION ONLY"
puts "#"
puts "# This runs synthesis to check for:"
puts "#   - Syntax errors"
puts "#   - Port/width mismatches"
puts "#   - Unconnected signals"
puts "#   - Latch inference warnings"
puts "########################################"
puts "\n"

puts "Step 1: Creating project..."
create_project -force $project_name \
    $project_dir \
    -part xc7z020clg400-2

puts "Step 2: Setting project properties..."
set_property target_language Verilog [current_project]
set_property simulator_language Verilog [current_project]
set_property default_lib work [current_project]

puts "Step 3: Adding RTL sources..."
foreach rtl_file $rtl_files {
    if {[file exists $rtl_file]} {
        puts "  Adding: [file tail $rtl_file]"
        read_verilog $rtl_file
    } else {
        puts "  WARNING: File not found: $rtl_file"
    }
}

puts "Step 4: Adding constraint files..."
foreach xdc_file $xdc_files {
    if {[file exists $xdc_file]} {
        puts "  Adding: [file tail $xdc_file]"
        read_xdc $xdc_file
    } else {
        puts "  WARNING: Constraint file not found: $xdc_file"
    }
}

puts "Step 5: Setting top module..."
set_property top $top_module [current_fileset]
update_compile_order -fileset sources_1

puts "\nStep 6: RUNNING SYNTHESIS (STATIC VERIFICATION)..."
puts "=================================================="
puts "This will take a moment. DO NOT INTERRUPT.\n"

synth_design -top $top_module \
    -part xc7z020clg400-2

set rpt_file "$project_dir/static_verify_report.rpt"

puts "\nStep 7: Writing report..."
set fp [open $rpt_file w]
puts $fp "========================================"
puts $fp "Pulse_ODMR - Static Verification Report"
puts $fp "========================================"
puts $fp ""
puts $fp "Date: [clock format [clock seconds] -format %Y-%m-%d\ %H:%M:%S]"
puts $fp "Top Module: $top_module"
puts $fp ""

puts $fp "========================================"
puts $fp "Resource Utilization"
puts $fp "========================================"
puts $fp [report_utilization -return_string]

puts $fp ""
puts $fp "========================================"
puts $fp "Timing Summary"
puts $fp "========================================"
puts $fp [report_timing_summary -return_string]

puts $fp ""
puts $fp "========================================"
puts $fp "Design Check"
puts $fp "========================================"
puts $fp [report_drc -return_string]

close $fp
puts "Report written to: $rpt_file"

puts "\n"
puts "########################################"
puts "# STATIC VERIFICATION COMPLETED"
puts "#"
puts "# Review report: static_verify_report.rpt"
puts "#"
puts "# Check for any ERROR or WARNING in log"
puts "########################################"
puts "\n"

close_project

puts "Done."
