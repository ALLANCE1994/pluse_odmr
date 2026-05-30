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

create_bd_design pulse_odmr_system

create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {make_external {FIXED_IO DDR}} [get_bd_cells ps7]

set_property -dict [list \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} \
    CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
    CONFIG.PCW_IRQ_F2P_INTR {1} \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
    CONFIG.PCW_USE_S_AXI_HP0 {0} \
    CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
    CONFIG.PCW_UART1_BAUD_RATE {115200} \
    CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
] [get_bd_cells ps7]

create_bd_cell -type ip -vlnv odmr.lab:user:pulse_odmr_ip:1.0 pulse_odmr_ip_0

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_0]

connect_bd_intf_net [get_bd_intf_pins ps7/M_AXI_GP0] \
    [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_0/M00_AXI] \
    [get_bd_intf_pins pulse_odmr_ip_0/S_AXI]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 \
    -config {Clk_master {/ps7/FCLK_CLK0 (50 MHz)} Clk_slave {Auto} Clk_xbar {Auto} Master {/ps7/M_AXI_GP0} Slave {/pulse_odmr_ip_0/S_AXI} ddr_seg {Auto} intc_ip {Auto}} \
    [get_bd_intf_pins pulse_odmr_ip_0/S_AXI]

connect_bd_net [get_bd_pins ps7/FCLK_CLK0] [get_bd_pins axi_interconnect_0/M00_ACLK]
set rst_src [lindex [get_bd_pins -of_objects [get_bd_cells -hier -filter {NAME =~ "*proc_sys_reset*"}] -filter {NAME =~ "*peripheral_aresetn*"}] 0]
if {$rst_src ne ""} {
    connect_bd_net $rst_src [get_bd_pins axi_interconnect_0/M00_ARESETN]
}

assign_bd_address \
    -target_address_space [get_bd_addr_spaces ps7/Data] \
    -offset 0x43C00000 \
    -range 0x00010000 \
    [get_bd_addr_segs pulse_odmr_ip_0/S_AXI/reg0]

make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/sys_clk]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/sys_rst_n]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/uart2_rx]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/uart2_tx]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/ref_clk_10m]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pps_clk]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/mw_i]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/mw_q]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/ad_data]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/ad_otr]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pulse_0]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pulse_1]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pulse_2]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pulse_3]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/adc_clk]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/da_clk]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/da_data]

validate_bd_design
save_bd_design
close_project

puts "step3_create_system_bd.tcl done"
