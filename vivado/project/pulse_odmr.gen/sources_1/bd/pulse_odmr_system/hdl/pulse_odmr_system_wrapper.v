//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sat May 30 16:15:37 2026
//Host        : DESKTOP-JLUBAKI running 64-bit major release  (build 9200)
//Command     : generate_target pulse_odmr_system_wrapper.bd
//Design      : pulse_odmr_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pulse_odmr_system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    ad_data_0,
    ad_otr_0,
    adc_clk_0,
    mw_i_0,
    mw_q_0,
    pps_clk_0,
    pulse_0_0,
    pulse_1_0,
    pulse_2_0,
    pulse_3_0,
    ref_clk_10m_0,
    sys_clk_0,
    sys_rst_n_0,
    uart2_rx_0,
    uart2_tx_0);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [7:0]ad_data_0;
  input ad_otr_0;
  output adc_clk_0;
  output mw_i_0;
  output mw_q_0;
  output pps_clk_0;
  output pulse_0_0;
  output pulse_1_0;
  output pulse_2_0;
  output pulse_3_0;
  output ref_clk_10m_0;
  input sys_clk_0;
  input sys_rst_n_0;
  input uart2_rx_0;
  output uart2_tx_0;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [7:0]ad_data_0;
  wire ad_otr_0;
  wire adc_clk_0;
  wire mw_i_0;
  wire mw_q_0;
  wire pps_clk_0;
  wire pulse_0_0;
  wire pulse_1_0;
  wire pulse_2_0;
  wire pulse_3_0;
  wire ref_clk_10m_0;
  wire sys_clk_0;
  wire sys_rst_n_0;
  wire uart2_rx_0;
  wire uart2_tx_0;

  pulse_odmr_system pulse_odmr_system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .ad_data_0(ad_data_0),
        .ad_otr_0(ad_otr_0),
        .adc_clk_0(adc_clk_0),
        .mw_i_0(mw_i_0),
        .mw_q_0(mw_q_0),
        .pps_clk_0(pps_clk_0),
        .pulse_0_0(pulse_0_0),
        .pulse_1_0(pulse_1_0),
        .pulse_2_0(pulse_2_0),
        .pulse_3_0(pulse_3_0),
        .ref_clk_10m_0(ref_clk_10m_0),
        .sys_clk_0(sys_clk_0),
        .sys_rst_n_0(sys_rst_n_0),
        .uart2_rx_0(uart2_rx_0),
        .uart2_tx_0(uart2_tx_0));
endmodule
