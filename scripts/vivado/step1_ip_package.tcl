set proj_root [file normalize [file dirname [info script]]/../..]
set ip_name    "pulse_odmr_ip"
set ip_vendor  "odmr.lab"
set ip_library "user"
set ip_version "1.0"
set hw_dir     [file join $proj_root "hardware" "pl"]
set ip_out_dir [file join $proj_root "vivado" "ip_package"]

set rtl_files [list \
    [file join $hw_dir "bus"    "axi_lite_slave.v"] \
    [file join $hw_dir "clock"  "clk_gen.v"] \
    [file join $hw_dir "pulse"  "pulse_gen.v"] \
    [file join $hw_dir "phase"  "mw_phase_gen.v"] \
    [file join $hw_dir "adc"    "ad9280_driver.v"] \
    [file join $hw_dir "top"    "pulse_odmr_ip.v"] \
]

close_project -quiet
file delete -force [file join $proj_root "vivado" "temp_pkg"]

create_project pulse_odmr_ip_pkg [file join $proj_root "vivado" "temp_pkg"] -part xc7z020clg400-2 -force
set_property target_language Verilog [current_project]

foreach f $rtl_files {
    add_files -norecurse $f
}
set_property top $ip_name [current_fileset]
update_compile_order -fileset sources_1

file mkdir $ip_out_dir

ipx::package_project \
    -root_dir     [file join $ip_out_dir $ip_name] \
    -vendor       $ip_vendor \
    -library      $ip_library \
    -taxonomy     /userIP \
    -import_files \
    -force

set core [ipx::current_core]
set_property display_name "Pulse ODMR AXI4-Lite IP" $core
set_property description  "NV center pulse ODMR detection system" $core
set_property version      $ip_version $core

set axi_if [ipx::add_bus_interface S_AXI $core]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 $axi_if
set_property bus_type_vlnv        xilinx.com:interface:aximm:1.0      $axi_if
set_property interface_mode       slave                                $axi_if

foreach {logical physical} {
    AWADDR   s_axi_awaddr
    AWVALID  s_axi_awvalid
    AWREADY  s_axi_awready
    WDATA    s_axi_wdata
    WSTRB    s_axi_wstrb
    WVALID   s_axi_wvalid
    WREADY   s_axi_wready
    BRESP    s_axi_bresp
    BVALID   s_axi_bvalid
    BREADY   s_axi_bready
    ARADDR   s_axi_araddr
    ARVALID  s_axi_arvalid
    ARREADY  s_axi_arready
    RDATA    s_axi_rdata
    RRESP    s_axi_rresp
    RVALID   s_axi_rvalid
    RREADY   s_axi_rready
} {
    set pm [ipx::add_port_map $logical $axi_if]
    set_property physical_name $physical $pm
}

set mem_map [ipx::add_memory_map S_AXI $core]
set_property slave_memory_map_ref S_AXI $axi_if

set addr_block [ipx::add_address_block reg0 $mem_map]
set_property base_address 0x00000000 $addr_block
set_property range          65536    $addr_block
set_property width             32    $addr_block
set_property usage        register   $addr_block

ipx::associate_bus_interfaces -busif S_AXI -clock s_axi_aclk $core

ipx::create_xgui_files $core
ipx::update_checksums   $core
ipx::save_core          $core

close_project

puts "step1_ip_package.tcl done"
