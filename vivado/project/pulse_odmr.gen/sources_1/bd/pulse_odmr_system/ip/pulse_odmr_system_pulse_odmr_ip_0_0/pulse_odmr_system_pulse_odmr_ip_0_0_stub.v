// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 30 16:18:17 2026
// Host        : DESKTOP-JLUBAKI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/user/Desktop/desktop_project/pulse_odmr/vivado/project/pulse_odmr.gen/sources_1/bd/pulse_odmr_system/ip/pulse_odmr_system_pulse_odmr_ip_0_0/pulse_odmr_system_pulse_odmr_ip_0_0_stub.v
// Design      : pulse_odmr_system_pulse_odmr_ip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pulse_odmr_ip,Vivado 2020.2" *)
module pulse_odmr_system_pulse_odmr_ip_0_0(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, sys_clk, sys_rst_n, uart2_rx, uart2_tx, 
  ref_clk_10m, pps_clk, mw_i, mw_q, ad_data, ad_otr, pulse_0, pulse_1, pulse_2, pulse_3, adc_clk)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,sys_clk,sys_rst_n,uart2_rx,uart2_tx,ref_clk_10m,pps_clk,mw_i,mw_q,ad_data[7:0],ad_otr,pulse_0,pulse_1,pulse_2,pulse_3,adc_clk" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input sys_clk;
  input sys_rst_n;
  input uart2_rx;
  output uart2_tx;
  output ref_clk_10m;
  output pps_clk;
  output mw_i;
  output mw_q;
  input [7:0]ad_data;
  input ad_otr;
  output pulse_0;
  output pulse_1;
  output pulse_2;
  output pulse_3;
  output adc_clk;
endmodule
