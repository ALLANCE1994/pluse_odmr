

package require ::quartus::project

set_location_assignment PIN_M2 -to sys_clk
set_location_assignment PIN_M1 -to sys_rst_n
set_location_assignment PIN_T11 -to da_data[0]
set_location_assignment PIN_R10 -to da_data[1]
set_location_assignment PIN_G2 -to da_data[2]
set_location_assignment PIN_R11 -to da_data[3]
set_location_assignment PIN_T13 -to da_data[4]
set_location_assignment PIN_R12 -to da_data[5]
set_location_assignment PIN_T14 -to da_data[6]
set_location_assignment PIN_R13 -to da_data[7]
set_location_assignment PIN_N6 -to da_clk
set_location_assignment PIN_M8 -to ad_clk
set_location_assignment PIN_P8 -to ad_data[7]
set_location_assignment PIN_N8 -to ad_data[6]
set_location_assignment PIN_L9 -to ad_data[5]
set_location_assignment PIN_K9 -to ad_data[4]
set_location_assignment PIN_M9 -to ad_data[3]
set_location_assignment PIN_L10 -to ad_data[2]
set_location_assignment PIN_P9 -to ad_data[1]
set_location_assignment PIN_N9 -to ad_data[0]
set_location_assignment PIN_P6 -to ad_otr
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_clk
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_data
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ad_otr
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_clk
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to da_data
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to sys_clk
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to sys_rst_n
