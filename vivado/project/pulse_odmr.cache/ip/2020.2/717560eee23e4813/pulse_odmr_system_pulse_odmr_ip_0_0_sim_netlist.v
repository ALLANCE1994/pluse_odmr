// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 30 16:18:16 2026
// Host        : DESKTOP-JLUBAKI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pulse_odmr_system_pulse_odmr_ip_0_0_sim_netlist.v
// Design      : pulse_odmr_system_pulse_odmr_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_slave
   (wr_en_reg_0,
    s_axi_wready,
    s_axi_rvalid,
    E,
    O,
    \pulse0_cfg_r_reg[19]_0 ,
    \pulse0_cfg_r_reg[15]_0 ,
    \pulse0_cfg_r_reg[31]_0 ,
    DI,
    \pulse0_cfg_r_reg[14]_0 ,
    \pulse0_cfg_r_reg[31]_1 ,
    \pulse0_cfg_r_reg[30]_0 ,
    \pulse0_cfg_r_reg[31]_2 ,
    \pulse0_cfg_r_reg[9]_0 ,
    \pulse0_cfg_r_reg[31]_3 ,
    \pulse0_cfg_r_reg[25]_0 ,
    \pulse0_cfg_r_reg[31]_4 ,
    \pulse0_cfg_r_reg[31]_5 ,
    \pulse0_cfg_r_reg[31]_6 ,
    \pulse1_cfg_r_reg[3]_0 ,
    \pulse1_cfg_r_reg[19]_0 ,
    \pulse1_cfg_r_reg[15]_0 ,
    \pulse1_cfg_r_reg[31]_0 ,
    \pulse1_cfg_r_reg[31]_1 ,
    \pulse1_cfg_r_reg[14]_0 ,
    \pulse1_cfg_r_reg[31]_2 ,
    \pulse1_cfg_r_reg[30]_0 ,
    \pulse1_cfg_r_reg[31]_3 ,
    \pulse1_cfg_r_reg[9]_0 ,
    \pulse1_cfg_r_reg[31]_4 ,
    \pulse1_cfg_r_reg[25]_0 ,
    \pulse1_cfg_r_reg[31]_5 ,
    \pulse1_cfg_r_reg[31]_6 ,
    \pulse1_cfg_r_reg[31]_7 ,
    \pulse2_cfg_r_reg[3]_0 ,
    \pulse2_cfg_r_reg[19]_0 ,
    \pulse2_cfg_r_reg[15]_0 ,
    \pulse2_cfg_r_reg[31]_0 ,
    \pulse2_cfg_r_reg[31]_1 ,
    \pulse2_cfg_r_reg[14]_0 ,
    \pulse2_cfg_r_reg[31]_2 ,
    \pulse2_cfg_r_reg[30]_0 ,
    \pulse2_cfg_r_reg[31]_3 ,
    \pulse2_cfg_r_reg[9]_0 ,
    \pulse2_cfg_r_reg[31]_4 ,
    \pulse2_cfg_r_reg[25]_0 ,
    \pulse2_cfg_r_reg[31]_5 ,
    \pulse2_cfg_r_reg[31]_6 ,
    \pulse2_cfg_r_reg[31]_7 ,
    \pulse3_cfg_r_reg[3]_0 ,
    \pulse3_cfg_r_reg[19]_0 ,
    \pulse3_cfg_r_reg[15]_0 ,
    \pulse3_cfg_r_reg[31]_0 ,
    \pulse3_cfg_r_reg[31]_1 ,
    \pulse3_cfg_r_reg[14]_0 ,
    \pulse3_cfg_r_reg[31]_2 ,
    \pulse3_cfg_r_reg[30]_0 ,
    \pulse3_cfg_r_reg[31]_3 ,
    \pulse3_cfg_r_reg[9]_0 ,
    \pulse3_cfg_r_reg[31]_4 ,
    \pulse3_cfg_r_reg[25]_0 ,
    \pulse3_cfg_r_reg[31]_5 ,
    \pulse3_cfg_r_reg[31]_6 ,
    \pulse3_cfg_r_reg[31]_7 ,
    D,
    pulse_30,
    \ctrl_reg_r_reg[4]_0 ,
    pulse_20,
    \ctrl_reg_r_reg[4]_1 ,
    pulse_10,
    \ctrl_reg_r_reg[4]_2 ,
    pulse_00,
    \cnt0_reg[10] ,
    \cnt1_reg[10] ,
    \cnt2_reg[10] ,
    \cnt3_reg[10] ,
    S,
    \cnt1_reg[11] ,
    \cnt2_reg[11] ,
    \cnt3_reg[11] ,
    \mw_phase_reg_r_reg[1]_0 ,
    \mw_phase_reg_r_reg[1]_1 ,
    \mw_freq_reg_r_reg[3]_0 ,
    \mw_freq_reg_r_reg[7]_0 ,
    \mw_freq_reg_r_reg[11]_0 ,
    \mw_freq_reg_r_reg[15]_0 ,
    \mw_freq_reg_r_reg[19]_0 ,
    \mw_freq_reg_r_reg[23]_0 ,
    \mw_freq_reg_r_reg[27]_0 ,
    \mw_freq_reg_r_reg[30]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    pulse_0_reg_i_183_0,
    pulse_0_reg_i_117_0,
    pulse_0_reg_i_64_0,
    pulse_0_reg_i_170_0,
    pulse_0_reg_i_111_0,
    pulse_0_reg_i_62_0,
    pulse_0_i_21_0,
    Q,
    pulse_0_i_32,
    pulse_0_i_21_1,
    pulse_0_i_48_0,
    pulse_0_i_48_1,
    pulse_0_i_90_0,
    pulse_0_i_90_1,
    pulse_0_i_8_0,
    pulse_1_reg_i_183_0,
    pulse_1_reg_i_117_0,
    pulse_1_reg_i_64_0,
    pulse_1_reg_i_170_0,
    pulse_1_reg_i_111_0,
    pulse_1_reg_i_62_0,
    pulse_1_i_21_0,
    pulse_1_reg_i_2,
    pulse_1_i_32,
    pulse_1_i_21_1,
    pulse_1_i_48_0,
    pulse_1_i_48_1,
    pulse_1_i_90_0,
    pulse_1_i_90_1,
    pulse_1_i_8_0,
    pulse_2_reg_i_183_0,
    pulse_2_reg_i_117_0,
    pulse_2_reg_i_64_0,
    pulse_2_reg_i_170_0,
    pulse_2_reg_i_111_0,
    pulse_2_reg_i_62_0,
    pulse_2_i_21_0,
    pulse_2_reg_i_2,
    pulse_2_i_32,
    pulse_2_i_21_1,
    pulse_2_i_48_0,
    pulse_2_i_48_1,
    pulse_2_i_90_0,
    pulse_2_i_90_1,
    pulse_2_i_8_0,
    pulse_3_reg_i_183_0,
    pulse_3_reg_i_117_0,
    pulse_3_reg_i_64_0,
    pulse_3_reg_i_170_0,
    pulse_3_reg_i_111_0,
    pulse_3_reg_i_62_0,
    pulse_3_i_21_0,
    pulse_3_reg_i_2,
    pulse_3_i_32,
    pulse_3_i_21_1,
    pulse_3_i_48_0,
    pulse_3_i_48_1,
    pulse_3_i_90_0,
    pulse_3_i_90_1,
    pulse_3_i_8_0,
    cnt30,
    mmcm_locked,
    CO,
    pulse_3_reg,
    cnt20,
    pulse_2_reg,
    pulse_2_reg_0,
    cnt10,
    pulse_1_reg,
    pulse_1_reg_0,
    cnt00,
    pulse_0_reg,
    pulse_0_reg_0,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_araddr,
    p_0_in,
    p_1_in,
    \phase_acc_reg[3] ,
    \phase_acc_reg[3]_0 ,
    \phase_acc_reg[3]_1 ,
    \phase_acc_reg[3]_2 ,
    \phase_acc_reg[7] ,
    \phase_acc_reg[7]_0 ,
    \phase_acc_reg[7]_1 ,
    \phase_acc_reg[7]_2 ,
    \phase_acc_reg[11] ,
    \phase_acc_reg[11]_0 ,
    \phase_acc_reg[11]_1 ,
    \phase_acc_reg[11]_2 ,
    \phase_acc_reg[15] ,
    \phase_acc_reg[15]_0 ,
    \phase_acc_reg[15]_1 ,
    \phase_acc_reg[15]_2 ,
    \phase_acc_reg[19] ,
    \phase_acc_reg[19]_0 ,
    \phase_acc_reg[19]_1 ,
    \phase_acc_reg[19]_2 ,
    \phase_acc_reg[23] ,
    \phase_acc_reg[23]_0 ,
    \phase_acc_reg[23]_1 ,
    \phase_acc_reg[23]_2 ,
    \phase_acc_reg[27] ,
    \phase_acc_reg[27]_0 ,
    \phase_acc_reg[27]_1 ,
    \phase_acc_reg[27]_2 ,
    \phase_acc_reg[31] ,
    \phase_acc_reg[31]_0 ,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wvalid);
  output wr_en_reg_0;
  output s_axi_wready;
  output s_axi_rvalid;
  output [0:0]E;
  output [1:0]O;
  output [1:0]\pulse0_cfg_r_reg[19]_0 ;
  output [1:0]\pulse0_cfg_r_reg[15]_0 ;
  output \pulse0_cfg_r_reg[31]_0 ;
  output [2:0]DI;
  output [3:0]\pulse0_cfg_r_reg[14]_0 ;
  output \pulse0_cfg_r_reg[31]_1 ;
  output [3:0]\pulse0_cfg_r_reg[30]_0 ;
  output \pulse0_cfg_r_reg[31]_2 ;
  output [3:0]\pulse0_cfg_r_reg[9]_0 ;
  output \pulse0_cfg_r_reg[31]_3 ;
  output [2:0]\pulse0_cfg_r_reg[25]_0 ;
  output \pulse0_cfg_r_reg[31]_4 ;
  output \pulse0_cfg_r_reg[31]_5 ;
  output \pulse0_cfg_r_reg[31]_6 ;
  output [1:0]\pulse1_cfg_r_reg[3]_0 ;
  output [1:0]\pulse1_cfg_r_reg[19]_0 ;
  output [1:0]\pulse1_cfg_r_reg[15]_0 ;
  output \pulse1_cfg_r_reg[31]_0 ;
  output [2:0]\pulse1_cfg_r_reg[31]_1 ;
  output [3:0]\pulse1_cfg_r_reg[14]_0 ;
  output \pulse1_cfg_r_reg[31]_2 ;
  output [3:0]\pulse1_cfg_r_reg[30]_0 ;
  output \pulse1_cfg_r_reg[31]_3 ;
  output [3:0]\pulse1_cfg_r_reg[9]_0 ;
  output \pulse1_cfg_r_reg[31]_4 ;
  output [2:0]\pulse1_cfg_r_reg[25]_0 ;
  output \pulse1_cfg_r_reg[31]_5 ;
  output \pulse1_cfg_r_reg[31]_6 ;
  output \pulse1_cfg_r_reg[31]_7 ;
  output [1:0]\pulse2_cfg_r_reg[3]_0 ;
  output [1:0]\pulse2_cfg_r_reg[19]_0 ;
  output [1:0]\pulse2_cfg_r_reg[15]_0 ;
  output \pulse2_cfg_r_reg[31]_0 ;
  output [2:0]\pulse2_cfg_r_reg[31]_1 ;
  output [3:0]\pulse2_cfg_r_reg[14]_0 ;
  output \pulse2_cfg_r_reg[31]_2 ;
  output [3:0]\pulse2_cfg_r_reg[30]_0 ;
  output \pulse2_cfg_r_reg[31]_3 ;
  output [3:0]\pulse2_cfg_r_reg[9]_0 ;
  output \pulse2_cfg_r_reg[31]_4 ;
  output [2:0]\pulse2_cfg_r_reg[25]_0 ;
  output \pulse2_cfg_r_reg[31]_5 ;
  output \pulse2_cfg_r_reg[31]_6 ;
  output \pulse2_cfg_r_reg[31]_7 ;
  output [1:0]\pulse3_cfg_r_reg[3]_0 ;
  output [1:0]\pulse3_cfg_r_reg[19]_0 ;
  output [1:0]\pulse3_cfg_r_reg[15]_0 ;
  output \pulse3_cfg_r_reg[31]_0 ;
  output [2:0]\pulse3_cfg_r_reg[31]_1 ;
  output [3:0]\pulse3_cfg_r_reg[14]_0 ;
  output \pulse3_cfg_r_reg[31]_2 ;
  output [3:0]\pulse3_cfg_r_reg[30]_0 ;
  output \pulse3_cfg_r_reg[31]_3 ;
  output [3:0]\pulse3_cfg_r_reg[9]_0 ;
  output \pulse3_cfg_r_reg[31]_4 ;
  output [2:0]\pulse3_cfg_r_reg[25]_0 ;
  output \pulse3_cfg_r_reg[31]_5 ;
  output \pulse3_cfg_r_reg[31]_6 ;
  output \pulse3_cfg_r_reg[31]_7 ;
  output [15:0]D;
  output pulse_30;
  output [15:0]\ctrl_reg_r_reg[4]_0 ;
  output pulse_20;
  output [15:0]\ctrl_reg_r_reg[4]_1 ;
  output pulse_10;
  output [15:0]\ctrl_reg_r_reg[4]_2 ;
  output pulse_00;
  output [0:0]\cnt0_reg[10] ;
  output [0:0]\cnt1_reg[10] ;
  output [0:0]\cnt2_reg[10] ;
  output [0:0]\cnt3_reg[10] ;
  output [0:0]S;
  output [0:0]\cnt1_reg[11] ;
  output [0:0]\cnt2_reg[11] ;
  output [0:0]\cnt3_reg[11] ;
  output \mw_phase_reg_r_reg[1]_0 ;
  output [1:0]\mw_phase_reg_r_reg[1]_1 ;
  output [3:0]\mw_freq_reg_r_reg[3]_0 ;
  output [3:0]\mw_freq_reg_r_reg[7]_0 ;
  output [3:0]\mw_freq_reg_r_reg[11]_0 ;
  output [3:0]\mw_freq_reg_r_reg[15]_0 ;
  output [3:0]\mw_freq_reg_r_reg[19]_0 ;
  output [3:0]\mw_freq_reg_r_reg[23]_0 ;
  output [3:0]\mw_freq_reg_r_reg[27]_0 ;
  output [3:0]\mw_freq_reg_r_reg[30]_0 ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input [3:0]pulse_0_reg_i_183_0;
  input [3:0]pulse_0_reg_i_117_0;
  input [3:0]pulse_0_reg_i_64_0;
  input [3:0]pulse_0_reg_i_170_0;
  input [3:0]pulse_0_reg_i_111_0;
  input [3:0]pulse_0_reg_i_62_0;
  input [3:0]pulse_0_i_21_0;
  input [12:0]Q;
  input [0:0]pulse_0_i_32;
  input [3:0]pulse_0_i_21_1;
  input [3:0]pulse_0_i_48_0;
  input [3:0]pulse_0_i_48_1;
  input [3:0]pulse_0_i_90_0;
  input [3:0]pulse_0_i_90_1;
  input [0:0]pulse_0_i_8_0;
  input [3:0]pulse_1_reg_i_183_0;
  input [3:0]pulse_1_reg_i_117_0;
  input [3:0]pulse_1_reg_i_64_0;
  input [3:0]pulse_1_reg_i_170_0;
  input [3:0]pulse_1_reg_i_111_0;
  input [3:0]pulse_1_reg_i_62_0;
  input [3:0]pulse_1_i_21_0;
  input [12:0]pulse_1_reg_i_2;
  input [0:0]pulse_1_i_32;
  input [3:0]pulse_1_i_21_1;
  input [3:0]pulse_1_i_48_0;
  input [3:0]pulse_1_i_48_1;
  input [3:0]pulse_1_i_90_0;
  input [3:0]pulse_1_i_90_1;
  input [0:0]pulse_1_i_8_0;
  input [3:0]pulse_2_reg_i_183_0;
  input [3:0]pulse_2_reg_i_117_0;
  input [3:0]pulse_2_reg_i_64_0;
  input [3:0]pulse_2_reg_i_170_0;
  input [3:0]pulse_2_reg_i_111_0;
  input [3:0]pulse_2_reg_i_62_0;
  input [3:0]pulse_2_i_21_0;
  input [12:0]pulse_2_reg_i_2;
  input [0:0]pulse_2_i_32;
  input [3:0]pulse_2_i_21_1;
  input [3:0]pulse_2_i_48_0;
  input [3:0]pulse_2_i_48_1;
  input [3:0]pulse_2_i_90_0;
  input [3:0]pulse_2_i_90_1;
  input [0:0]pulse_2_i_8_0;
  input [3:0]pulse_3_reg_i_183_0;
  input [3:0]pulse_3_reg_i_117_0;
  input [3:0]pulse_3_reg_i_64_0;
  input [3:0]pulse_3_reg_i_170_0;
  input [3:0]pulse_3_reg_i_111_0;
  input [3:0]pulse_3_reg_i_62_0;
  input [3:0]pulse_3_i_21_0;
  input [12:0]pulse_3_reg_i_2;
  input [0:0]pulse_3_i_32;
  input [3:0]pulse_3_i_21_1;
  input [3:0]pulse_3_i_48_0;
  input [3:0]pulse_3_i_48_1;
  input [3:0]pulse_3_i_90_0;
  input [3:0]pulse_3_i_90_1;
  input [0:0]pulse_3_i_8_0;
  input [14:0]cnt30;
  input mmcm_locked;
  input [0:0]CO;
  input [0:0]pulse_3_reg;
  input [14:0]cnt20;
  input [0:0]pulse_2_reg;
  input [0:0]pulse_2_reg_0;
  input [14:0]cnt10;
  input [0:0]pulse_1_reg;
  input [0:0]pulse_1_reg_0;
  input [14:0]cnt00;
  input [0:0]pulse_0_reg;
  input [0:0]pulse_0_reg_0;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input [31:0]s_axi_araddr;
  input p_0_in;
  input p_1_in;
  input \phase_acc_reg[3] ;
  input \phase_acc_reg[3]_0 ;
  input \phase_acc_reg[3]_1 ;
  input \phase_acc_reg[3]_2 ;
  input \phase_acc_reg[7] ;
  input \phase_acc_reg[7]_0 ;
  input \phase_acc_reg[7]_1 ;
  input \phase_acc_reg[7]_2 ;
  input \phase_acc_reg[11] ;
  input \phase_acc_reg[11]_0 ;
  input \phase_acc_reg[11]_1 ;
  input \phase_acc_reg[11]_2 ;
  input \phase_acc_reg[15] ;
  input \phase_acc_reg[15]_0 ;
  input \phase_acc_reg[15]_1 ;
  input \phase_acc_reg[15]_2 ;
  input \phase_acc_reg[19] ;
  input \phase_acc_reg[19]_0 ;
  input \phase_acc_reg[19]_1 ;
  input \phase_acc_reg[19]_2 ;
  input \phase_acc_reg[23] ;
  input \phase_acc_reg[23]_0 ;
  input \phase_acc_reg[23]_1 ;
  input \phase_acc_reg[23]_2 ;
  input \phase_acc_reg[27] ;
  input \phase_acc_reg[27]_0 ;
  input \phase_acc_reg[27]_1 ;
  input \phase_acc_reg[27]_2 ;
  input \phase_acc_reg[31] ;
  input \phase_acc_reg[31]_0 ;
  input [31:0]s_axi_wdata;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_wvalid;

  wire [0:0]CO;
  wire [15:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [1:0]O;
  wire [12:0]Q;
  wire [0:0]S;
  wire \adc_cfg_reg_r[31]_i_1_n_0 ;
  wire \adc_cfg_reg_r_reg_n_0_[0] ;
  wire \adc_cfg_reg_r_reg_n_0_[10] ;
  wire \adc_cfg_reg_r_reg_n_0_[11] ;
  wire \adc_cfg_reg_r_reg_n_0_[12] ;
  wire \adc_cfg_reg_r_reg_n_0_[13] ;
  wire \adc_cfg_reg_r_reg_n_0_[14] ;
  wire \adc_cfg_reg_r_reg_n_0_[15] ;
  wire \adc_cfg_reg_r_reg_n_0_[16] ;
  wire \adc_cfg_reg_r_reg_n_0_[17] ;
  wire \adc_cfg_reg_r_reg_n_0_[18] ;
  wire \adc_cfg_reg_r_reg_n_0_[19] ;
  wire \adc_cfg_reg_r_reg_n_0_[1] ;
  wire \adc_cfg_reg_r_reg_n_0_[20] ;
  wire \adc_cfg_reg_r_reg_n_0_[21] ;
  wire \adc_cfg_reg_r_reg_n_0_[22] ;
  wire \adc_cfg_reg_r_reg_n_0_[23] ;
  wire \adc_cfg_reg_r_reg_n_0_[24] ;
  wire \adc_cfg_reg_r_reg_n_0_[25] ;
  wire \adc_cfg_reg_r_reg_n_0_[26] ;
  wire \adc_cfg_reg_r_reg_n_0_[27] ;
  wire \adc_cfg_reg_r_reg_n_0_[28] ;
  wire \adc_cfg_reg_r_reg_n_0_[29] ;
  wire \adc_cfg_reg_r_reg_n_0_[2] ;
  wire \adc_cfg_reg_r_reg_n_0_[30] ;
  wire \adc_cfg_reg_r_reg_n_0_[31] ;
  wire \adc_cfg_reg_r_reg_n_0_[3] ;
  wire \adc_cfg_reg_r_reg_n_0_[4] ;
  wire \adc_cfg_reg_r_reg_n_0_[5] ;
  wire \adc_cfg_reg_r_reg_n_0_[6] ;
  wire \adc_cfg_reg_r_reg_n_0_[7] ;
  wire \adc_cfg_reg_r_reg_n_0_[8] ;
  wire \adc_cfg_reg_r_reg_n_0_[9] ;
  wire \clk_cfg_reg_r[31]_i_1_n_0 ;
  wire \clk_cfg_reg_r_reg_n_0_[0] ;
  wire \clk_cfg_reg_r_reg_n_0_[10] ;
  wire \clk_cfg_reg_r_reg_n_0_[11] ;
  wire \clk_cfg_reg_r_reg_n_0_[12] ;
  wire \clk_cfg_reg_r_reg_n_0_[13] ;
  wire \clk_cfg_reg_r_reg_n_0_[14] ;
  wire \clk_cfg_reg_r_reg_n_0_[15] ;
  wire \clk_cfg_reg_r_reg_n_0_[16] ;
  wire \clk_cfg_reg_r_reg_n_0_[17] ;
  wire \clk_cfg_reg_r_reg_n_0_[18] ;
  wire \clk_cfg_reg_r_reg_n_0_[19] ;
  wire \clk_cfg_reg_r_reg_n_0_[1] ;
  wire \clk_cfg_reg_r_reg_n_0_[20] ;
  wire \clk_cfg_reg_r_reg_n_0_[21] ;
  wire \clk_cfg_reg_r_reg_n_0_[22] ;
  wire \clk_cfg_reg_r_reg_n_0_[23] ;
  wire \clk_cfg_reg_r_reg_n_0_[24] ;
  wire \clk_cfg_reg_r_reg_n_0_[25] ;
  wire \clk_cfg_reg_r_reg_n_0_[26] ;
  wire \clk_cfg_reg_r_reg_n_0_[27] ;
  wire \clk_cfg_reg_r_reg_n_0_[28] ;
  wire \clk_cfg_reg_r_reg_n_0_[29] ;
  wire \clk_cfg_reg_r_reg_n_0_[2] ;
  wire \clk_cfg_reg_r_reg_n_0_[30] ;
  wire \clk_cfg_reg_r_reg_n_0_[31] ;
  wire \clk_cfg_reg_r_reg_n_0_[3] ;
  wire \clk_cfg_reg_r_reg_n_0_[4] ;
  wire \clk_cfg_reg_r_reg_n_0_[5] ;
  wire \clk_cfg_reg_r_reg_n_0_[6] ;
  wire \clk_cfg_reg_r_reg_n_0_[7] ;
  wire \clk_cfg_reg_r_reg_n_0_[8] ;
  wire \clk_cfg_reg_r_reg_n_0_[9] ;
  wire [14:0]cnt00;
  wire \cnt0[15]_i_2_n_0 ;
  wire [0:0]\cnt0_reg[10] ;
  wire [14:0]cnt10;
  wire \cnt1[15]_i_2_n_0 ;
  wire [0:0]\cnt1_reg[10] ;
  wire [0:0]\cnt1_reg[11] ;
  wire [14:0]cnt20;
  wire \cnt2[15]_i_2_n_0 ;
  wire [0:0]\cnt2_reg[10] ;
  wire [0:0]\cnt2_reg[11] ;
  wire [14:0]cnt30;
  wire \cnt3[15]_i_2_n_0 ;
  wire [0:0]\cnt3_reg[10] ;
  wire [0:0]\cnt3_reg[11] ;
  wire [4:1]ctrl_reg;
  wire \ctrl_reg_r[31]_i_1_n_0 ;
  wire \ctrl_reg_r[31]_i_2_n_0 ;
  wire \ctrl_reg_r[31]_i_3_n_0 ;
  wire \ctrl_reg_r[31]_i_4_n_0 ;
  wire \ctrl_reg_r[31]_i_5_n_0 ;
  wire \ctrl_reg_r[31]_i_6_n_0 ;
  wire \ctrl_reg_r[31]_i_7_n_0 ;
  wire \ctrl_reg_r[31]_i_8_n_0 ;
  wire \ctrl_reg_r[31]_i_9_n_0 ;
  wire [15:0]\ctrl_reg_r_reg[4]_0 ;
  wire [15:0]\ctrl_reg_r_reg[4]_1 ;
  wire [15:0]\ctrl_reg_r_reg[4]_2 ;
  wire \ctrl_reg_r_reg_n_0_[0] ;
  wire \ctrl_reg_r_reg_n_0_[10] ;
  wire \ctrl_reg_r_reg_n_0_[11] ;
  wire \ctrl_reg_r_reg_n_0_[12] ;
  wire \ctrl_reg_r_reg_n_0_[13] ;
  wire \ctrl_reg_r_reg_n_0_[14] ;
  wire \ctrl_reg_r_reg_n_0_[15] ;
  wire \ctrl_reg_r_reg_n_0_[16] ;
  wire \ctrl_reg_r_reg_n_0_[17] ;
  wire \ctrl_reg_r_reg_n_0_[18] ;
  wire \ctrl_reg_r_reg_n_0_[19] ;
  wire \ctrl_reg_r_reg_n_0_[20] ;
  wire \ctrl_reg_r_reg_n_0_[21] ;
  wire \ctrl_reg_r_reg_n_0_[22] ;
  wire \ctrl_reg_r_reg_n_0_[23] ;
  wire \ctrl_reg_r_reg_n_0_[24] ;
  wire \ctrl_reg_r_reg_n_0_[25] ;
  wire \ctrl_reg_r_reg_n_0_[26] ;
  wire \ctrl_reg_r_reg_n_0_[27] ;
  wire \ctrl_reg_r_reg_n_0_[28] ;
  wire \ctrl_reg_r_reg_n_0_[29] ;
  wire \ctrl_reg_r_reg_n_0_[2] ;
  wire \ctrl_reg_r_reg_n_0_[30] ;
  wire \ctrl_reg_r_reg_n_0_[31] ;
  wire \ctrl_reg_r_reg_n_0_[3] ;
  wire \ctrl_reg_r_reg_n_0_[5] ;
  wire \ctrl_reg_r_reg_n_0_[6] ;
  wire \ctrl_reg_r_reg_n_0_[7] ;
  wire \ctrl_reg_r_reg_n_0_[8] ;
  wire \ctrl_reg_r_reg_n_0_[9] ;
  wire \dma_cfg_reg_r[31]_i_1_n_0 ;
  wire \dma_cfg_reg_r[31]_i_2_n_0 ;
  wire \dma_cfg_reg_r_reg_n_0_[0] ;
  wire \dma_cfg_reg_r_reg_n_0_[10] ;
  wire \dma_cfg_reg_r_reg_n_0_[11] ;
  wire \dma_cfg_reg_r_reg_n_0_[12] ;
  wire \dma_cfg_reg_r_reg_n_0_[13] ;
  wire \dma_cfg_reg_r_reg_n_0_[14] ;
  wire \dma_cfg_reg_r_reg_n_0_[15] ;
  wire \dma_cfg_reg_r_reg_n_0_[16] ;
  wire \dma_cfg_reg_r_reg_n_0_[17] ;
  wire \dma_cfg_reg_r_reg_n_0_[18] ;
  wire \dma_cfg_reg_r_reg_n_0_[19] ;
  wire \dma_cfg_reg_r_reg_n_0_[1] ;
  wire \dma_cfg_reg_r_reg_n_0_[20] ;
  wire \dma_cfg_reg_r_reg_n_0_[21] ;
  wire \dma_cfg_reg_r_reg_n_0_[22] ;
  wire \dma_cfg_reg_r_reg_n_0_[23] ;
  wire \dma_cfg_reg_r_reg_n_0_[24] ;
  wire \dma_cfg_reg_r_reg_n_0_[25] ;
  wire \dma_cfg_reg_r_reg_n_0_[26] ;
  wire \dma_cfg_reg_r_reg_n_0_[27] ;
  wire \dma_cfg_reg_r_reg_n_0_[28] ;
  wire \dma_cfg_reg_r_reg_n_0_[29] ;
  wire \dma_cfg_reg_r_reg_n_0_[2] ;
  wire \dma_cfg_reg_r_reg_n_0_[30] ;
  wire \dma_cfg_reg_r_reg_n_0_[31] ;
  wire \dma_cfg_reg_r_reg_n_0_[3] ;
  wire \dma_cfg_reg_r_reg_n_0_[4] ;
  wire \dma_cfg_reg_r_reg_n_0_[5] ;
  wire \dma_cfg_reg_r_reg_n_0_[6] ;
  wire \dma_cfg_reg_r_reg_n_0_[7] ;
  wire \dma_cfg_reg_r_reg_n_0_[8] ;
  wire \dma_cfg_reg_r_reg_n_0_[9] ;
  wire \mmcm_cfg_reg_r[31]_i_1_n_0 ;
  wire \mmcm_cfg_reg_r[31]_i_2_n_0 ;
  wire \mmcm_cfg_reg_r_reg_n_0_[0] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[10] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[11] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[12] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[13] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[14] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[15] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[16] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[17] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[18] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[19] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[1] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[20] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[21] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[22] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[23] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[24] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[25] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[26] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[27] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[28] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[29] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[2] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[30] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[31] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[3] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[4] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[5] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[6] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[7] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[8] ;
  wire \mmcm_cfg_reg_r_reg_n_0_[9] ;
  wire mmcm_locked;
  wire [31:0]mw_freq_reg;
  wire \mw_freq_reg_r[31]_i_1_n_0 ;
  wire \mw_freq_reg_r[31]_i_2_n_0 ;
  wire [3:0]\mw_freq_reg_r_reg[11]_0 ;
  wire [3:0]\mw_freq_reg_r_reg[15]_0 ;
  wire [3:0]\mw_freq_reg_r_reg[19]_0 ;
  wire [3:0]\mw_freq_reg_r_reg[23]_0 ;
  wire [3:0]\mw_freq_reg_r_reg[27]_0 ;
  wire [3:0]\mw_freq_reg_r_reg[30]_0 ;
  wire [3:0]\mw_freq_reg_r_reg[3]_0 ;
  wire [3:0]\mw_freq_reg_r_reg[7]_0 ;
  wire [31:2]mw_phase_reg;
  wire \mw_phase_reg_r[31]_i_1_n_0 ;
  wire \mw_phase_reg_r_reg[1]_0 ;
  wire [1:0]\mw_phase_reg_r_reg[1]_1 ;
  wire p_0_in;
  wire [31:0]p_0_in_0;
  wire p_1_in;
  wire \phase_acc[0]_i_2_n_0 ;
  wire \phase_acc[0]_i_3_n_0 ;
  wire \phase_acc[0]_i_4_n_0 ;
  wire \phase_acc[0]_i_5_n_0 ;
  wire \phase_acc[12]_i_2_n_0 ;
  wire \phase_acc[12]_i_3_n_0 ;
  wire \phase_acc[12]_i_4_n_0 ;
  wire \phase_acc[12]_i_5_n_0 ;
  wire \phase_acc[16]_i_2_n_0 ;
  wire \phase_acc[16]_i_3_n_0 ;
  wire \phase_acc[16]_i_4_n_0 ;
  wire \phase_acc[16]_i_5_n_0 ;
  wire \phase_acc[20]_i_2_n_0 ;
  wire \phase_acc[20]_i_3_n_0 ;
  wire \phase_acc[20]_i_4_n_0 ;
  wire \phase_acc[20]_i_5_n_0 ;
  wire \phase_acc[24]_i_2_n_0 ;
  wire \phase_acc[24]_i_3_n_0 ;
  wire \phase_acc[24]_i_4_n_0 ;
  wire \phase_acc[24]_i_5_n_0 ;
  wire \phase_acc[28]_i_2_n_0 ;
  wire \phase_acc[28]_i_3_n_0 ;
  wire \phase_acc[28]_i_4_n_0 ;
  wire \phase_acc[28]_i_5_n_0 ;
  wire \phase_acc[4]_i_2_n_0 ;
  wire \phase_acc[4]_i_3_n_0 ;
  wire \phase_acc[4]_i_4_n_0 ;
  wire \phase_acc[4]_i_5_n_0 ;
  wire \phase_acc[8]_i_2_n_0 ;
  wire \phase_acc[8]_i_3_n_0 ;
  wire \phase_acc[8]_i_4_n_0 ;
  wire \phase_acc[8]_i_5_n_0 ;
  wire \phase_acc_reg[0]_i_1_n_0 ;
  wire \phase_acc_reg[0]_i_1_n_1 ;
  wire \phase_acc_reg[0]_i_1_n_2 ;
  wire \phase_acc_reg[0]_i_1_n_3 ;
  wire \phase_acc_reg[11] ;
  wire \phase_acc_reg[11]_0 ;
  wire \phase_acc_reg[11]_1 ;
  wire \phase_acc_reg[11]_2 ;
  wire \phase_acc_reg[12]_i_1_n_0 ;
  wire \phase_acc_reg[12]_i_1_n_1 ;
  wire \phase_acc_reg[12]_i_1_n_2 ;
  wire \phase_acc_reg[12]_i_1_n_3 ;
  wire \phase_acc_reg[15] ;
  wire \phase_acc_reg[15]_0 ;
  wire \phase_acc_reg[15]_1 ;
  wire \phase_acc_reg[15]_2 ;
  wire \phase_acc_reg[16]_i_1_n_0 ;
  wire \phase_acc_reg[16]_i_1_n_1 ;
  wire \phase_acc_reg[16]_i_1_n_2 ;
  wire \phase_acc_reg[16]_i_1_n_3 ;
  wire \phase_acc_reg[19] ;
  wire \phase_acc_reg[19]_0 ;
  wire \phase_acc_reg[19]_1 ;
  wire \phase_acc_reg[19]_2 ;
  wire \phase_acc_reg[20]_i_1_n_0 ;
  wire \phase_acc_reg[20]_i_1_n_1 ;
  wire \phase_acc_reg[20]_i_1_n_2 ;
  wire \phase_acc_reg[20]_i_1_n_3 ;
  wire \phase_acc_reg[23] ;
  wire \phase_acc_reg[23]_0 ;
  wire \phase_acc_reg[23]_1 ;
  wire \phase_acc_reg[23]_2 ;
  wire \phase_acc_reg[24]_i_1_n_0 ;
  wire \phase_acc_reg[24]_i_1_n_1 ;
  wire \phase_acc_reg[24]_i_1_n_2 ;
  wire \phase_acc_reg[24]_i_1_n_3 ;
  wire \phase_acc_reg[27] ;
  wire \phase_acc_reg[27]_0 ;
  wire \phase_acc_reg[27]_1 ;
  wire \phase_acc_reg[27]_2 ;
  wire \phase_acc_reg[28]_i_1_n_1 ;
  wire \phase_acc_reg[28]_i_1_n_2 ;
  wire \phase_acc_reg[28]_i_1_n_3 ;
  wire \phase_acc_reg[31] ;
  wire \phase_acc_reg[31]_0 ;
  wire \phase_acc_reg[3] ;
  wire \phase_acc_reg[3]_0 ;
  wire \phase_acc_reg[3]_1 ;
  wire \phase_acc_reg[3]_2 ;
  wire \phase_acc_reg[4]_i_1_n_0 ;
  wire \phase_acc_reg[4]_i_1_n_1 ;
  wire \phase_acc_reg[4]_i_1_n_2 ;
  wire \phase_acc_reg[4]_i_1_n_3 ;
  wire \phase_acc_reg[7] ;
  wire \phase_acc_reg[7]_0 ;
  wire \phase_acc_reg[7]_1 ;
  wire \phase_acc_reg[7]_2 ;
  wire \phase_acc_reg[8]_i_1_n_0 ;
  wire \phase_acc_reg[8]_i_1_n_1 ;
  wire \phase_acc_reg[8]_i_1_n_2 ;
  wire \phase_acc_reg[8]_i_1_n_3 ;
  wire [31:0]pulse0_cfg;
  wire \pulse0_cfg_r[31]_i_1_n_0 ;
  wire \pulse0_cfg_r[31]_i_2_n_0 ;
  wire \pulse0_cfg_r[31]_i_3_n_0 ;
  wire [3:0]\pulse0_cfg_r_reg[14]_0 ;
  wire [1:0]\pulse0_cfg_r_reg[15]_0 ;
  wire [1:0]\pulse0_cfg_r_reg[19]_0 ;
  wire [2:0]\pulse0_cfg_r_reg[25]_0 ;
  wire [3:0]\pulse0_cfg_r_reg[30]_0 ;
  wire \pulse0_cfg_r_reg[31]_0 ;
  wire \pulse0_cfg_r_reg[31]_1 ;
  wire \pulse0_cfg_r_reg[31]_2 ;
  wire \pulse0_cfg_r_reg[31]_3 ;
  wire \pulse0_cfg_r_reg[31]_4 ;
  wire \pulse0_cfg_r_reg[31]_5 ;
  wire \pulse0_cfg_r_reg[31]_6 ;
  wire [3:0]\pulse0_cfg_r_reg[9]_0 ;
  wire [31:0]pulse1_cfg;
  wire \pulse1_cfg_r[31]_i_1_n_0 ;
  wire \pulse1_cfg_r[31]_i_2_n_0 ;
  wire \pulse1_cfg_r[31]_i_3_n_0 ;
  wire [3:0]\pulse1_cfg_r_reg[14]_0 ;
  wire [1:0]\pulse1_cfg_r_reg[15]_0 ;
  wire [1:0]\pulse1_cfg_r_reg[19]_0 ;
  wire [2:0]\pulse1_cfg_r_reg[25]_0 ;
  wire [3:0]\pulse1_cfg_r_reg[30]_0 ;
  wire \pulse1_cfg_r_reg[31]_0 ;
  wire [2:0]\pulse1_cfg_r_reg[31]_1 ;
  wire \pulse1_cfg_r_reg[31]_2 ;
  wire \pulse1_cfg_r_reg[31]_3 ;
  wire \pulse1_cfg_r_reg[31]_4 ;
  wire \pulse1_cfg_r_reg[31]_5 ;
  wire \pulse1_cfg_r_reg[31]_6 ;
  wire \pulse1_cfg_r_reg[31]_7 ;
  wire [1:0]\pulse1_cfg_r_reg[3]_0 ;
  wire [3:0]\pulse1_cfg_r_reg[9]_0 ;
  wire [31:0]pulse2_cfg;
  wire \pulse2_cfg_r[31]_i_1_n_0 ;
  wire [3:0]\pulse2_cfg_r_reg[14]_0 ;
  wire [1:0]\pulse2_cfg_r_reg[15]_0 ;
  wire [1:0]\pulse2_cfg_r_reg[19]_0 ;
  wire [2:0]\pulse2_cfg_r_reg[25]_0 ;
  wire [3:0]\pulse2_cfg_r_reg[30]_0 ;
  wire \pulse2_cfg_r_reg[31]_0 ;
  wire [2:0]\pulse2_cfg_r_reg[31]_1 ;
  wire \pulse2_cfg_r_reg[31]_2 ;
  wire \pulse2_cfg_r_reg[31]_3 ;
  wire \pulse2_cfg_r_reg[31]_4 ;
  wire \pulse2_cfg_r_reg[31]_5 ;
  wire \pulse2_cfg_r_reg[31]_6 ;
  wire \pulse2_cfg_r_reg[31]_7 ;
  wire [1:0]\pulse2_cfg_r_reg[3]_0 ;
  wire [3:0]\pulse2_cfg_r_reg[9]_0 ;
  wire [31:0]pulse3_cfg;
  wire \pulse3_cfg_r[31]_i_1_n_0 ;
  wire \pulse3_cfg_r[31]_i_2_n_0 ;
  wire [3:0]\pulse3_cfg_r_reg[14]_0 ;
  wire [1:0]\pulse3_cfg_r_reg[15]_0 ;
  wire [1:0]\pulse3_cfg_r_reg[19]_0 ;
  wire [2:0]\pulse3_cfg_r_reg[25]_0 ;
  wire [3:0]\pulse3_cfg_r_reg[30]_0 ;
  wire \pulse3_cfg_r_reg[31]_0 ;
  wire [2:0]\pulse3_cfg_r_reg[31]_1 ;
  wire \pulse3_cfg_r_reg[31]_2 ;
  wire \pulse3_cfg_r_reg[31]_3 ;
  wire \pulse3_cfg_r_reg[31]_4 ;
  wire \pulse3_cfg_r_reg[31]_5 ;
  wire \pulse3_cfg_r_reg[31]_6 ;
  wire \pulse3_cfg_r_reg[31]_7 ;
  wire [1:0]\pulse3_cfg_r_reg[3]_0 ;
  wire [3:0]\pulse3_cfg_r_reg[9]_0 ;
  wire pulse_00;
  wire pulse_0_i_102_n_0;
  wire pulse_0_i_103_n_0;
  wire pulse_0_i_104_n_0;
  wire pulse_0_i_105_n_0;
  wire pulse_0_i_106_n_0;
  wire pulse_0_i_107_n_0;
  wire pulse_0_i_108_n_0;
  wire pulse_0_i_109_n_0;
  wire pulse_0_i_112_n_0;
  wire pulse_0_i_113_n_0;
  wire pulse_0_i_114_n_0;
  wire pulse_0_i_115_n_0;
  wire pulse_0_i_118_n_0;
  wire pulse_0_i_119_n_0;
  wire pulse_0_i_120_n_0;
  wire pulse_0_i_121_n_0;
  wire pulse_0_i_123_n_0;
  wire pulse_0_i_124_n_0;
  wire pulse_0_i_125_n_0;
  wire pulse_0_i_126_n_0;
  wire pulse_0_i_127_n_0;
  wire pulse_0_i_128_n_0;
  wire pulse_0_i_129_n_0;
  wire pulse_0_i_130_n_0;
  wire pulse_0_i_133_n_0;
  wire pulse_0_i_134_n_0;
  wire pulse_0_i_135_n_0;
  wire pulse_0_i_136_n_0;
  wire pulse_0_i_137_n_0;
  wire pulse_0_i_138_n_0;
  wire pulse_0_i_139_n_0;
  wire pulse_0_i_140_n_0;
  wire pulse_0_i_143_n_0;
  wire pulse_0_i_144_n_0;
  wire pulse_0_i_145_n_0;
  wire pulse_0_i_146_n_0;
  wire pulse_0_i_148_n_0;
  wire pulse_0_i_152_n_0;
  wire pulse_0_i_153_n_0;
  wire pulse_0_i_154_n_0;
  wire pulse_0_i_155_n_0;
  wire pulse_0_i_156_n_0;
  wire pulse_0_i_157_n_0;
  wire pulse_0_i_158_n_0;
  wire pulse_0_i_159_n_0;
  wire pulse_0_i_162_n_0;
  wire pulse_0_i_163_n_0;
  wire pulse_0_i_164_n_0;
  wire pulse_0_i_165_n_0;
  wire pulse_0_i_171_n_0;
  wire pulse_0_i_172_n_0;
  wire pulse_0_i_173_n_0;
  wire pulse_0_i_174_n_0;
  wire pulse_0_i_175_n_0;
  wire pulse_0_i_176_n_0;
  wire pulse_0_i_177_n_0;
  wire pulse_0_i_178_n_0;
  wire pulse_0_i_17_n_0;
  wire pulse_0_i_184_n_0;
  wire pulse_0_i_185_n_0;
  wire pulse_0_i_186_n_0;
  wire pulse_0_i_187_n_0;
  wire pulse_0_i_188_n_0;
  wire pulse_0_i_189_n_0;
  wire pulse_0_i_18_n_0;
  wire pulse_0_i_190_n_0;
  wire pulse_0_i_191_n_0;
  wire pulse_0_i_192_n_0;
  wire pulse_0_i_193_n_0;
  wire pulse_0_i_194_n_0;
  wire pulse_0_i_196_n_0;
  wire pulse_0_i_197_n_0;
  wire pulse_0_i_199_n_0;
  wire pulse_0_i_19_n_0;
  wire pulse_0_i_200_n_0;
  wire pulse_0_i_201_n_0;
  wire pulse_0_i_202_n_0;
  wire pulse_0_i_203_n_0;
  wire pulse_0_i_204_n_0;
  wire pulse_0_i_205_n_0;
  wire pulse_0_i_206_n_0;
  wire pulse_0_i_207_n_0;
  wire pulse_0_i_209_n_0;
  wire pulse_0_i_20_n_0;
  wire pulse_0_i_210_n_0;
  wire pulse_0_i_211_n_0;
  wire pulse_0_i_212_n_0;
  wire pulse_0_i_213_n_0;
  wire pulse_0_i_214_n_0;
  wire pulse_0_i_215_n_0;
  wire pulse_0_i_216_n_0;
  wire pulse_0_i_217_n_0;
  wire pulse_0_i_218_n_0;
  wire [3:0]pulse_0_i_21_0;
  wire [3:0]pulse_0_i_21_1;
  wire pulse_0_i_21_n_0;
  wire pulse_0_i_220_n_0;
  wire pulse_0_i_221_n_0;
  wire pulse_0_i_222_n_0;
  wire pulse_0_i_223_n_0;
  wire pulse_0_i_224_n_0;
  wire pulse_0_i_225_n_0;
  wire pulse_0_i_226_n_0;
  wire pulse_0_i_227_n_0;
  wire pulse_0_i_228_n_0;
  wire pulse_0_i_229_n_0;
  wire pulse_0_i_22_n_0;
  wire pulse_0_i_231_n_0;
  wire pulse_0_i_232_n_0;
  wire pulse_0_i_233_n_0;
  wire pulse_0_i_234_n_0;
  wire pulse_0_i_235_n_0;
  wire pulse_0_i_236_n_0;
  wire pulse_0_i_237_n_0;
  wire pulse_0_i_238_n_0;
  wire pulse_0_i_239_n_0;
  wire pulse_0_i_23_n_0;
  wire pulse_0_i_246_n_0;
  wire pulse_0_i_247_n_0;
  wire pulse_0_i_248_n_0;
  wire pulse_0_i_249_n_0;
  wire pulse_0_i_24_n_0;
  wire pulse_0_i_250_n_0;
  wire pulse_0_i_251_n_0;
  wire pulse_0_i_252_n_0;
  wire pulse_0_i_253_n_0;
  wire pulse_0_i_25_n_0;
  wire pulse_0_i_260_n_0;
  wire pulse_0_i_261_n_0;
  wire pulse_0_i_262_n_0;
  wire pulse_0_i_263_n_0;
  wire pulse_0_i_264_n_0;
  wire pulse_0_i_265_n_0;
  wire pulse_0_i_266_n_0;
  wire pulse_0_i_267_n_0;
  wire pulse_0_i_268_n_0;
  wire pulse_0_i_269_n_0;
  wire pulse_0_i_270_n_0;
  wire pulse_0_i_271_n_0;
  wire pulse_0_i_272_n_0;
  wire pulse_0_i_273_n_0;
  wire pulse_0_i_274_n_0;
  wire pulse_0_i_275_n_0;
  wire pulse_0_i_276_n_0;
  wire pulse_0_i_277_n_0;
  wire pulse_0_i_278_n_0;
  wire pulse_0_i_27_n_0;
  wire pulse_0_i_280_n_0;
  wire pulse_0_i_281_n_0;
  wire pulse_0_i_282_n_0;
  wire pulse_0_i_283_n_0;
  wire pulse_0_i_284_n_0;
  wire pulse_0_i_285_n_0;
  wire pulse_0_i_286_n_0;
  wire pulse_0_i_287_n_0;
  wire pulse_0_i_289_n_0;
  wire pulse_0_i_290_n_0;
  wire pulse_0_i_291_n_0;
  wire pulse_0_i_292_n_0;
  wire pulse_0_i_293_n_0;
  wire pulse_0_i_294_n_0;
  wire pulse_0_i_295_n_0;
  wire pulse_0_i_296_n_0;
  wire pulse_0_i_297_n_0;
  wire pulse_0_i_299_n_0;
  wire pulse_0_i_300_n_0;
  wire pulse_0_i_301_n_0;
  wire pulse_0_i_302_n_0;
  wire pulse_0_i_303_n_0;
  wire pulse_0_i_304_n_0;
  wire pulse_0_i_305_n_0;
  wire pulse_0_i_306_n_0;
  wire pulse_0_i_307_n_0;
  wire pulse_0_i_308_n_0;
  wire pulse_0_i_312_n_0;
  wire pulse_0_i_313_n_0;
  wire pulse_0_i_314_n_0;
  wire pulse_0_i_315_n_0;
  wire pulse_0_i_316_n_0;
  wire pulse_0_i_317_n_0;
  wire pulse_0_i_318_n_0;
  wire [0:0]pulse_0_i_32;
  wire pulse_0_i_322_n_0;
  wire pulse_0_i_323_n_0;
  wire pulse_0_i_324_n_0;
  wire pulse_0_i_325_n_0;
  wire pulse_0_i_326_n_0;
  wire pulse_0_i_327_n_0;
  wire pulse_0_i_328_n_0;
  wire pulse_0_i_330_n_0;
  wire pulse_0_i_331_n_0;
  wire pulse_0_i_332_n_0;
  wire pulse_0_i_333_n_0;
  wire pulse_0_i_334_n_0;
  wire pulse_0_i_335_n_0;
  wire pulse_0_i_336_n_0;
  wire pulse_0_i_337_n_0;
  wire pulse_0_i_338_n_0;
  wire pulse_0_i_339_n_0;
  wire pulse_0_i_341_n_0;
  wire pulse_0_i_342_n_0;
  wire pulse_0_i_343_n_0;
  wire pulse_0_i_344_n_0;
  wire pulse_0_i_345_n_0;
  wire pulse_0_i_346_n_0;
  wire pulse_0_i_347_n_0;
  wire pulse_0_i_348_n_0;
  wire pulse_0_i_349_n_0;
  wire pulse_0_i_350_n_0;
  wire pulse_0_i_351_n_0;
  wire pulse_0_i_353_n_0;
  wire pulse_0_i_354_n_0;
  wire pulse_0_i_355_n_0;
  wire pulse_0_i_356_n_0;
  wire pulse_0_i_357_n_0;
  wire pulse_0_i_358_n_0;
  wire pulse_0_i_359_n_0;
  wire pulse_0_i_360_n_0;
  wire pulse_0_i_361_n_0;
  wire pulse_0_i_362_n_0;
  wire pulse_0_i_44_n_0;
  wire pulse_0_i_45_n_0;
  wire pulse_0_i_46_n_0;
  wire pulse_0_i_47_n_0;
  wire [3:0]pulse_0_i_48_0;
  wire [3:0]pulse_0_i_48_1;
  wire pulse_0_i_48_n_0;
  wire pulse_0_i_49_n_0;
  wire pulse_0_i_50_n_0;
  wire pulse_0_i_51_n_0;
  wire pulse_0_i_53_n_0;
  wire pulse_0_i_55_n_0;
  wire pulse_0_i_65_n_0;
  wire pulse_0_i_66_n_0;
  wire pulse_0_i_67_n_0;
  wire pulse_0_i_76_n_0;
  wire pulse_0_i_77_n_0;
  wire pulse_0_i_78_n_0;
  wire pulse_0_i_79_n_0;
  wire pulse_0_i_80_n_0;
  wire pulse_0_i_81_n_0;
  wire pulse_0_i_82_n_0;
  wire pulse_0_i_83_n_0;
  wire pulse_0_i_84_n_0;
  wire pulse_0_i_85_n_0;
  wire pulse_0_i_86_n_0;
  wire pulse_0_i_87_n_0;
  wire pulse_0_i_88_n_0;
  wire pulse_0_i_89_n_0;
  wire [0:0]pulse_0_i_8_0;
  wire [3:0]pulse_0_i_90_0;
  wire [3:0]pulse_0_i_90_1;
  wire pulse_0_i_90_n_0;
  wire pulse_0_i_91_n_0;
  wire pulse_0_i_92_n_0;
  wire pulse_0_i_93_n_0;
  wire pulse_0_i_95_n_0;
  wire pulse_0_i_97_n_0;
  wire [0:0]pulse_0_reg;
  wire [0:0]pulse_0_reg_0;
  wire [3:0]pulse_0_reg_i_111_0;
  wire pulse_0_reg_i_111_n_0;
  wire pulse_0_reg_i_111_n_1;
  wire pulse_0_reg_i_111_n_2;
  wire pulse_0_reg_i_111_n_3;
  wire [3:0]pulse_0_reg_i_117_0;
  wire pulse_0_reg_i_117_n_0;
  wire pulse_0_reg_i_117_n_1;
  wire pulse_0_reg_i_117_n_2;
  wire pulse_0_reg_i_117_n_3;
  wire pulse_0_reg_i_122_n_2;
  wire pulse_0_reg_i_122_n_7;
  wire pulse_0_reg_i_132_n_0;
  wire pulse_0_reg_i_132_n_1;
  wire pulse_0_reg_i_132_n_2;
  wire pulse_0_reg_i_132_n_3;
  wire pulse_0_reg_i_141_n_2;
  wire pulse_0_reg_i_141_n_7;
  wire pulse_0_reg_i_142_n_0;
  wire pulse_0_reg_i_142_n_1;
  wire pulse_0_reg_i_142_n_2;
  wire pulse_0_reg_i_142_n_3;
  wire pulse_0_reg_i_142_n_4;
  wire pulse_0_reg_i_142_n_5;
  wire pulse_0_reg_i_142_n_6;
  wire pulse_0_reg_i_142_n_7;
  wire pulse_0_reg_i_147_n_0;
  wire pulse_0_reg_i_147_n_1;
  wire pulse_0_reg_i_147_n_2;
  wire pulse_0_reg_i_147_n_3;
  wire pulse_0_reg_i_161_n_0;
  wire pulse_0_reg_i_161_n_1;
  wire pulse_0_reg_i_161_n_2;
  wire pulse_0_reg_i_161_n_3;
  wire pulse_0_reg_i_161_n_4;
  wire pulse_0_reg_i_161_n_5;
  wire pulse_0_reg_i_161_n_6;
  wire pulse_0_reg_i_161_n_7;
  wire pulse_0_reg_i_16_n_0;
  wire pulse_0_reg_i_16_n_1;
  wire pulse_0_reg_i_16_n_2;
  wire pulse_0_reg_i_16_n_3;
  wire [3:0]pulse_0_reg_i_170_0;
  wire pulse_0_reg_i_170_n_0;
  wire pulse_0_reg_i_170_n_1;
  wire pulse_0_reg_i_170_n_2;
  wire pulse_0_reg_i_170_n_3;
  wire [3:0]pulse_0_reg_i_183_0;
  wire pulse_0_reg_i_183_n_0;
  wire pulse_0_reg_i_183_n_1;
  wire pulse_0_reg_i_183_n_2;
  wire pulse_0_reg_i_183_n_3;
  wire pulse_0_reg_i_195_n_0;
  wire pulse_0_reg_i_195_n_1;
  wire pulse_0_reg_i_195_n_2;
  wire pulse_0_reg_i_195_n_3;
  wire pulse_0_reg_i_195_n_4;
  wire pulse_0_reg_i_195_n_5;
  wire pulse_0_reg_i_195_n_6;
  wire pulse_0_reg_i_195_n_7;
  wire pulse_0_reg_i_198_n_0;
  wire pulse_0_reg_i_198_n_1;
  wire pulse_0_reg_i_198_n_2;
  wire pulse_0_reg_i_198_n_3;
  wire pulse_0_reg_i_208_n_0;
  wire pulse_0_reg_i_208_n_1;
  wire pulse_0_reg_i_208_n_2;
  wire pulse_0_reg_i_208_n_3;
  wire pulse_0_reg_i_208_n_4;
  wire pulse_0_reg_i_208_n_5;
  wire pulse_0_reg_i_208_n_6;
  wire pulse_0_reg_i_208_n_7;
  wire pulse_0_reg_i_219_n_0;
  wire pulse_0_reg_i_219_n_1;
  wire pulse_0_reg_i_219_n_2;
  wire pulse_0_reg_i_219_n_3;
  wire pulse_0_reg_i_230_n_0;
  wire pulse_0_reg_i_230_n_1;
  wire pulse_0_reg_i_230_n_2;
  wire pulse_0_reg_i_230_n_3;
  wire pulse_0_reg_i_230_n_4;
  wire pulse_0_reg_i_230_n_5;
  wire pulse_0_reg_i_230_n_6;
  wire pulse_0_reg_i_230_n_7;
  wire pulse_0_reg_i_245_n_0;
  wire pulse_0_reg_i_245_n_1;
  wire pulse_0_reg_i_245_n_2;
  wire pulse_0_reg_i_245_n_3;
  wire pulse_0_reg_i_259_n_0;
  wire pulse_0_reg_i_259_n_1;
  wire pulse_0_reg_i_259_n_2;
  wire pulse_0_reg_i_259_n_3;
  wire pulse_0_reg_i_279_n_0;
  wire pulse_0_reg_i_279_n_1;
  wire pulse_0_reg_i_279_n_2;
  wire pulse_0_reg_i_279_n_3;
  wire pulse_0_reg_i_279_n_4;
  wire pulse_0_reg_i_279_n_5;
  wire pulse_0_reg_i_279_n_6;
  wire pulse_0_reg_i_279_n_7;
  wire pulse_0_reg_i_288_n_0;
  wire pulse_0_reg_i_288_n_1;
  wire pulse_0_reg_i_288_n_2;
  wire pulse_0_reg_i_288_n_3;
  wire pulse_0_reg_i_28_n_3;
  wire pulse_0_reg_i_298_n_0;
  wire pulse_0_reg_i_298_n_1;
  wire pulse_0_reg_i_298_n_2;
  wire pulse_0_reg_i_298_n_3;
  wire pulse_0_reg_i_298_n_4;
  wire pulse_0_reg_i_298_n_5;
  wire pulse_0_reg_i_298_n_6;
  wire pulse_0_reg_i_298_n_7;
  wire pulse_0_reg_i_329_n_0;
  wire pulse_0_reg_i_329_n_1;
  wire pulse_0_reg_i_329_n_2;
  wire pulse_0_reg_i_329_n_3;
  wire pulse_0_reg_i_340_n_0;
  wire pulse_0_reg_i_340_n_1;
  wire pulse_0_reg_i_340_n_2;
  wire pulse_0_reg_i_340_n_3;
  wire pulse_0_reg_i_340_n_4;
  wire pulse_0_reg_i_340_n_5;
  wire pulse_0_reg_i_340_n_6;
  wire pulse_0_reg_i_340_n_7;
  wire pulse_0_reg_i_352_n_0;
  wire pulse_0_reg_i_352_n_1;
  wire pulse_0_reg_i_352_n_2;
  wire pulse_0_reg_i_352_n_3;
  wire pulse_0_reg_i_38_n_3;
  wire pulse_0_reg_i_42_n_0;
  wire pulse_0_reg_i_42_n_1;
  wire pulse_0_reg_i_42_n_2;
  wire pulse_0_reg_i_42_n_3;
  wire pulse_0_reg_i_43_n_0;
  wire pulse_0_reg_i_43_n_1;
  wire pulse_0_reg_i_43_n_2;
  wire pulse_0_reg_i_43_n_3;
  wire pulse_0_reg_i_4_n_1;
  wire pulse_0_reg_i_4_n_2;
  wire pulse_0_reg_i_4_n_3;
  wire pulse_0_reg_i_52_n_0;
  wire pulse_0_reg_i_52_n_1;
  wire pulse_0_reg_i_52_n_2;
  wire pulse_0_reg_i_52_n_3;
  wire [3:0]pulse_0_reg_i_62_0;
  wire pulse_0_reg_i_62_n_2;
  wire pulse_0_reg_i_62_n_3;
  wire [3:0]pulse_0_reg_i_64_0;
  wire pulse_0_reg_i_64_n_2;
  wire pulse_0_reg_i_64_n_3;
  wire pulse_0_reg_i_71_n_0;
  wire pulse_0_reg_i_71_n_1;
  wire pulse_0_reg_i_71_n_2;
  wire pulse_0_reg_i_71_n_3;
  wire pulse_0_reg_i_75_n_0;
  wire pulse_0_reg_i_75_n_1;
  wire pulse_0_reg_i_75_n_2;
  wire pulse_0_reg_i_75_n_3;
  wire pulse_0_reg_i_94_n_0;
  wire pulse_0_reg_i_94_n_1;
  wire pulse_0_reg_i_94_n_2;
  wire pulse_0_reg_i_94_n_3;
  wire pulse_10;
  wire pulse_1_i_100_n_0;
  wire pulse_1_i_101_n_0;
  wire pulse_1_i_102_n_0;
  wire pulse_1_i_103_n_0;
  wire pulse_1_i_104_n_0;
  wire pulse_1_i_105_n_0;
  wire pulse_1_i_106_n_0;
  wire pulse_1_i_107_n_0;
  wire pulse_1_i_108_n_0;
  wire pulse_1_i_109_n_0;
  wire pulse_1_i_112_n_0;
  wire pulse_1_i_113_n_0;
  wire pulse_1_i_114_n_0;
  wire pulse_1_i_115_n_0;
  wire pulse_1_i_118_n_0;
  wire pulse_1_i_119_n_0;
  wire pulse_1_i_120_n_0;
  wire pulse_1_i_121_n_0;
  wire pulse_1_i_123_n_0;
  wire pulse_1_i_124_n_0;
  wire pulse_1_i_125_n_0;
  wire pulse_1_i_126_n_0;
  wire pulse_1_i_127_n_0;
  wire pulse_1_i_128_n_0;
  wire pulse_1_i_129_n_0;
  wire pulse_1_i_130_n_0;
  wire pulse_1_i_133_n_0;
  wire pulse_1_i_134_n_0;
  wire pulse_1_i_135_n_0;
  wire pulse_1_i_136_n_0;
  wire pulse_1_i_137_n_0;
  wire pulse_1_i_138_n_0;
  wire pulse_1_i_139_n_0;
  wire pulse_1_i_140_n_0;
  wire pulse_1_i_143_n_0;
  wire pulse_1_i_144_n_0;
  wire pulse_1_i_145_n_0;
  wire pulse_1_i_146_n_0;
  wire pulse_1_i_148_n_0;
  wire pulse_1_i_149_n_0;
  wire pulse_1_i_150_n_0;
  wire pulse_1_i_151_n_0;
  wire pulse_1_i_152_n_0;
  wire pulse_1_i_153_n_0;
  wire pulse_1_i_154_n_0;
  wire pulse_1_i_155_n_0;
  wire pulse_1_i_156_n_0;
  wire pulse_1_i_157_n_0;
  wire pulse_1_i_158_n_0;
  wire pulse_1_i_159_n_0;
  wire pulse_1_i_162_n_0;
  wire pulse_1_i_163_n_0;
  wire pulse_1_i_164_n_0;
  wire pulse_1_i_165_n_0;
  wire pulse_1_i_171_n_0;
  wire pulse_1_i_172_n_0;
  wire pulse_1_i_173_n_0;
  wire pulse_1_i_174_n_0;
  wire pulse_1_i_175_n_0;
  wire pulse_1_i_176_n_0;
  wire pulse_1_i_177_n_0;
  wire pulse_1_i_178_n_0;
  wire pulse_1_i_17_n_0;
  wire pulse_1_i_184_n_0;
  wire pulse_1_i_185_n_0;
  wire pulse_1_i_186_n_0;
  wire pulse_1_i_187_n_0;
  wire pulse_1_i_188_n_0;
  wire pulse_1_i_189_n_0;
  wire pulse_1_i_18_n_0;
  wire pulse_1_i_190_n_0;
  wire pulse_1_i_191_n_0;
  wire pulse_1_i_192_n_0;
  wire pulse_1_i_193_n_0;
  wire pulse_1_i_194_n_0;
  wire pulse_1_i_196_n_0;
  wire pulse_1_i_197_n_0;
  wire pulse_1_i_199_n_0;
  wire pulse_1_i_19_n_0;
  wire pulse_1_i_200_n_0;
  wire pulse_1_i_201_n_0;
  wire pulse_1_i_202_n_0;
  wire pulse_1_i_203_n_0;
  wire pulse_1_i_204_n_0;
  wire pulse_1_i_205_n_0;
  wire pulse_1_i_206_n_0;
  wire pulse_1_i_207_n_0;
  wire pulse_1_i_209_n_0;
  wire pulse_1_i_20_n_0;
  wire pulse_1_i_210_n_0;
  wire pulse_1_i_211_n_0;
  wire pulse_1_i_212_n_0;
  wire pulse_1_i_213_n_0;
  wire pulse_1_i_214_n_0;
  wire pulse_1_i_215_n_0;
  wire pulse_1_i_216_n_0;
  wire pulse_1_i_217_n_0;
  wire pulse_1_i_218_n_0;
  wire [3:0]pulse_1_i_21_0;
  wire [3:0]pulse_1_i_21_1;
  wire pulse_1_i_21_n_0;
  wire pulse_1_i_220_n_0;
  wire pulse_1_i_221_n_0;
  wire pulse_1_i_222_n_0;
  wire pulse_1_i_223_n_0;
  wire pulse_1_i_224_n_0;
  wire pulse_1_i_225_n_0;
  wire pulse_1_i_226_n_0;
  wire pulse_1_i_227_n_0;
  wire pulse_1_i_228_n_0;
  wire pulse_1_i_229_n_0;
  wire pulse_1_i_22_n_0;
  wire pulse_1_i_231_n_0;
  wire pulse_1_i_232_n_0;
  wire pulse_1_i_233_n_0;
  wire pulse_1_i_234_n_0;
  wire pulse_1_i_235_n_0;
  wire pulse_1_i_236_n_0;
  wire pulse_1_i_237_n_0;
  wire pulse_1_i_238_n_0;
  wire pulse_1_i_239_n_0;
  wire pulse_1_i_23_n_0;
  wire pulse_1_i_246_n_0;
  wire pulse_1_i_247_n_0;
  wire pulse_1_i_248_n_0;
  wire pulse_1_i_249_n_0;
  wire pulse_1_i_24_n_0;
  wire pulse_1_i_250_n_0;
  wire pulse_1_i_251_n_0;
  wire pulse_1_i_252_n_0;
  wire pulse_1_i_253_n_0;
  wire pulse_1_i_25_n_0;
  wire pulse_1_i_260_n_0;
  wire pulse_1_i_261_n_0;
  wire pulse_1_i_262_n_0;
  wire pulse_1_i_263_n_0;
  wire pulse_1_i_264_n_0;
  wire pulse_1_i_265_n_0;
  wire pulse_1_i_266_n_0;
  wire pulse_1_i_267_n_0;
  wire pulse_1_i_268_n_0;
  wire pulse_1_i_269_n_0;
  wire pulse_1_i_270_n_0;
  wire pulse_1_i_271_n_0;
  wire pulse_1_i_272_n_0;
  wire pulse_1_i_273_n_0;
  wire pulse_1_i_274_n_0;
  wire pulse_1_i_275_n_0;
  wire pulse_1_i_276_n_0;
  wire pulse_1_i_277_n_0;
  wire pulse_1_i_278_n_0;
  wire pulse_1_i_27_n_0;
  wire pulse_1_i_280_n_0;
  wire pulse_1_i_281_n_0;
  wire pulse_1_i_282_n_0;
  wire pulse_1_i_283_n_0;
  wire pulse_1_i_284_n_0;
  wire pulse_1_i_285_n_0;
  wire pulse_1_i_286_n_0;
  wire pulse_1_i_287_n_0;
  wire pulse_1_i_289_n_0;
  wire pulse_1_i_290_n_0;
  wire pulse_1_i_291_n_0;
  wire pulse_1_i_292_n_0;
  wire pulse_1_i_293_n_0;
  wire pulse_1_i_294_n_0;
  wire pulse_1_i_295_n_0;
  wire pulse_1_i_296_n_0;
  wire pulse_1_i_297_n_0;
  wire pulse_1_i_299_n_0;
  wire pulse_1_i_300_n_0;
  wire pulse_1_i_301_n_0;
  wire pulse_1_i_302_n_0;
  wire pulse_1_i_303_n_0;
  wire pulse_1_i_304_n_0;
  wire pulse_1_i_305_n_0;
  wire pulse_1_i_306_n_0;
  wire pulse_1_i_307_n_0;
  wire pulse_1_i_308_n_0;
  wire pulse_1_i_312_n_0;
  wire pulse_1_i_313_n_0;
  wire pulse_1_i_314_n_0;
  wire pulse_1_i_315_n_0;
  wire pulse_1_i_316_n_0;
  wire pulse_1_i_317_n_0;
  wire pulse_1_i_318_n_0;
  wire [0:0]pulse_1_i_32;
  wire pulse_1_i_322_n_0;
  wire pulse_1_i_323_n_0;
  wire pulse_1_i_324_n_0;
  wire pulse_1_i_325_n_0;
  wire pulse_1_i_326_n_0;
  wire pulse_1_i_327_n_0;
  wire pulse_1_i_328_n_0;
  wire pulse_1_i_330_n_0;
  wire pulse_1_i_331_n_0;
  wire pulse_1_i_332_n_0;
  wire pulse_1_i_333_n_0;
  wire pulse_1_i_334_n_0;
  wire pulse_1_i_335_n_0;
  wire pulse_1_i_336_n_0;
  wire pulse_1_i_337_n_0;
  wire pulse_1_i_338_n_0;
  wire pulse_1_i_339_n_0;
  wire pulse_1_i_341_n_0;
  wire pulse_1_i_342_n_0;
  wire pulse_1_i_343_n_0;
  wire pulse_1_i_344_n_0;
  wire pulse_1_i_345_n_0;
  wire pulse_1_i_346_n_0;
  wire pulse_1_i_347_n_0;
  wire pulse_1_i_348_n_0;
  wire pulse_1_i_349_n_0;
  wire pulse_1_i_350_n_0;
  wire pulse_1_i_351_n_0;
  wire pulse_1_i_353_n_0;
  wire pulse_1_i_354_n_0;
  wire pulse_1_i_355_n_0;
  wire pulse_1_i_356_n_0;
  wire pulse_1_i_357_n_0;
  wire pulse_1_i_358_n_0;
  wire pulse_1_i_359_n_0;
  wire pulse_1_i_360_n_0;
  wire pulse_1_i_361_n_0;
  wire pulse_1_i_362_n_0;
  wire pulse_1_i_44_n_0;
  wire pulse_1_i_45_n_0;
  wire pulse_1_i_46_n_0;
  wire pulse_1_i_47_n_0;
  wire [3:0]pulse_1_i_48_0;
  wire [3:0]pulse_1_i_48_1;
  wire pulse_1_i_48_n_0;
  wire pulse_1_i_49_n_0;
  wire pulse_1_i_50_n_0;
  wire pulse_1_i_51_n_0;
  wire pulse_1_i_53_n_0;
  wire pulse_1_i_55_n_0;
  wire pulse_1_i_56_n_0;
  wire pulse_1_i_57_n_0;
  wire pulse_1_i_58_n_0;
  wire pulse_1_i_59_n_0;
  wire pulse_1_i_60_n_0;
  wire pulse_1_i_65_n_0;
  wire pulse_1_i_66_n_0;
  wire pulse_1_i_67_n_0;
  wire pulse_1_i_76_n_0;
  wire pulse_1_i_77_n_0;
  wire pulse_1_i_78_n_0;
  wire pulse_1_i_79_n_0;
  wire pulse_1_i_80_n_0;
  wire pulse_1_i_81_n_0;
  wire pulse_1_i_82_n_0;
  wire pulse_1_i_83_n_0;
  wire pulse_1_i_84_n_0;
  wire pulse_1_i_85_n_0;
  wire pulse_1_i_86_n_0;
  wire pulse_1_i_87_n_0;
  wire pulse_1_i_88_n_0;
  wire pulse_1_i_89_n_0;
  wire [0:0]pulse_1_i_8_0;
  wire [3:0]pulse_1_i_90_0;
  wire [3:0]pulse_1_i_90_1;
  wire pulse_1_i_90_n_0;
  wire pulse_1_i_91_n_0;
  wire pulse_1_i_92_n_0;
  wire pulse_1_i_93_n_0;
  wire pulse_1_i_95_n_0;
  wire pulse_1_i_97_n_0;
  wire pulse_1_i_98_n_0;
  wire pulse_1_i_99_n_0;
  wire [0:0]pulse_1_reg;
  wire [0:0]pulse_1_reg_0;
  wire [3:0]pulse_1_reg_i_111_0;
  wire pulse_1_reg_i_111_n_0;
  wire pulse_1_reg_i_111_n_1;
  wire pulse_1_reg_i_111_n_2;
  wire pulse_1_reg_i_111_n_3;
  wire [3:0]pulse_1_reg_i_117_0;
  wire pulse_1_reg_i_117_n_0;
  wire pulse_1_reg_i_117_n_1;
  wire pulse_1_reg_i_117_n_2;
  wire pulse_1_reg_i_117_n_3;
  wire pulse_1_reg_i_122_n_2;
  wire pulse_1_reg_i_122_n_7;
  wire pulse_1_reg_i_132_n_0;
  wire pulse_1_reg_i_132_n_1;
  wire pulse_1_reg_i_132_n_2;
  wire pulse_1_reg_i_132_n_3;
  wire pulse_1_reg_i_141_n_2;
  wire pulse_1_reg_i_141_n_7;
  wire pulse_1_reg_i_142_n_0;
  wire pulse_1_reg_i_142_n_1;
  wire pulse_1_reg_i_142_n_2;
  wire pulse_1_reg_i_142_n_3;
  wire pulse_1_reg_i_142_n_4;
  wire pulse_1_reg_i_142_n_5;
  wire pulse_1_reg_i_142_n_6;
  wire pulse_1_reg_i_142_n_7;
  wire pulse_1_reg_i_147_n_0;
  wire pulse_1_reg_i_147_n_1;
  wire pulse_1_reg_i_147_n_2;
  wire pulse_1_reg_i_147_n_3;
  wire pulse_1_reg_i_161_n_0;
  wire pulse_1_reg_i_161_n_1;
  wire pulse_1_reg_i_161_n_2;
  wire pulse_1_reg_i_161_n_3;
  wire pulse_1_reg_i_161_n_4;
  wire pulse_1_reg_i_161_n_5;
  wire pulse_1_reg_i_161_n_6;
  wire pulse_1_reg_i_161_n_7;
  wire pulse_1_reg_i_16_n_0;
  wire pulse_1_reg_i_16_n_1;
  wire pulse_1_reg_i_16_n_2;
  wire pulse_1_reg_i_16_n_3;
  wire [3:0]pulse_1_reg_i_170_0;
  wire pulse_1_reg_i_170_n_0;
  wire pulse_1_reg_i_170_n_1;
  wire pulse_1_reg_i_170_n_2;
  wire pulse_1_reg_i_170_n_3;
  wire [3:0]pulse_1_reg_i_183_0;
  wire pulse_1_reg_i_183_n_0;
  wire pulse_1_reg_i_183_n_1;
  wire pulse_1_reg_i_183_n_2;
  wire pulse_1_reg_i_183_n_3;
  wire pulse_1_reg_i_195_n_0;
  wire pulse_1_reg_i_195_n_1;
  wire pulse_1_reg_i_195_n_2;
  wire pulse_1_reg_i_195_n_3;
  wire pulse_1_reg_i_195_n_4;
  wire pulse_1_reg_i_195_n_5;
  wire pulse_1_reg_i_195_n_6;
  wire pulse_1_reg_i_195_n_7;
  wire pulse_1_reg_i_198_n_0;
  wire pulse_1_reg_i_198_n_1;
  wire pulse_1_reg_i_198_n_2;
  wire pulse_1_reg_i_198_n_3;
  wire [12:0]pulse_1_reg_i_2;
  wire pulse_1_reg_i_208_n_0;
  wire pulse_1_reg_i_208_n_1;
  wire pulse_1_reg_i_208_n_2;
  wire pulse_1_reg_i_208_n_3;
  wire pulse_1_reg_i_208_n_4;
  wire pulse_1_reg_i_208_n_5;
  wire pulse_1_reg_i_208_n_6;
  wire pulse_1_reg_i_208_n_7;
  wire pulse_1_reg_i_219_n_0;
  wire pulse_1_reg_i_219_n_1;
  wire pulse_1_reg_i_219_n_2;
  wire pulse_1_reg_i_219_n_3;
  wire pulse_1_reg_i_230_n_0;
  wire pulse_1_reg_i_230_n_1;
  wire pulse_1_reg_i_230_n_2;
  wire pulse_1_reg_i_230_n_3;
  wire pulse_1_reg_i_230_n_4;
  wire pulse_1_reg_i_230_n_5;
  wire pulse_1_reg_i_230_n_6;
  wire pulse_1_reg_i_230_n_7;
  wire pulse_1_reg_i_245_n_0;
  wire pulse_1_reg_i_245_n_1;
  wire pulse_1_reg_i_245_n_2;
  wire pulse_1_reg_i_245_n_3;
  wire pulse_1_reg_i_259_n_0;
  wire pulse_1_reg_i_259_n_1;
  wire pulse_1_reg_i_259_n_2;
  wire pulse_1_reg_i_259_n_3;
  wire pulse_1_reg_i_279_n_0;
  wire pulse_1_reg_i_279_n_1;
  wire pulse_1_reg_i_279_n_2;
  wire pulse_1_reg_i_279_n_3;
  wire pulse_1_reg_i_279_n_4;
  wire pulse_1_reg_i_279_n_5;
  wire pulse_1_reg_i_279_n_6;
  wire pulse_1_reg_i_279_n_7;
  wire pulse_1_reg_i_288_n_0;
  wire pulse_1_reg_i_288_n_1;
  wire pulse_1_reg_i_288_n_2;
  wire pulse_1_reg_i_288_n_3;
  wire pulse_1_reg_i_28_n_3;
  wire pulse_1_reg_i_298_n_0;
  wire pulse_1_reg_i_298_n_1;
  wire pulse_1_reg_i_298_n_2;
  wire pulse_1_reg_i_298_n_3;
  wire pulse_1_reg_i_298_n_4;
  wire pulse_1_reg_i_298_n_5;
  wire pulse_1_reg_i_298_n_6;
  wire pulse_1_reg_i_298_n_7;
  wire pulse_1_reg_i_329_n_0;
  wire pulse_1_reg_i_329_n_1;
  wire pulse_1_reg_i_329_n_2;
  wire pulse_1_reg_i_329_n_3;
  wire pulse_1_reg_i_340_n_0;
  wire pulse_1_reg_i_340_n_1;
  wire pulse_1_reg_i_340_n_2;
  wire pulse_1_reg_i_340_n_3;
  wire pulse_1_reg_i_340_n_4;
  wire pulse_1_reg_i_340_n_5;
  wire pulse_1_reg_i_340_n_6;
  wire pulse_1_reg_i_340_n_7;
  wire pulse_1_reg_i_352_n_0;
  wire pulse_1_reg_i_352_n_1;
  wire pulse_1_reg_i_352_n_2;
  wire pulse_1_reg_i_352_n_3;
  wire pulse_1_reg_i_38_n_3;
  wire pulse_1_reg_i_42_n_0;
  wire pulse_1_reg_i_42_n_1;
  wire pulse_1_reg_i_42_n_2;
  wire pulse_1_reg_i_42_n_3;
  wire pulse_1_reg_i_43_n_0;
  wire pulse_1_reg_i_43_n_1;
  wire pulse_1_reg_i_43_n_2;
  wire pulse_1_reg_i_43_n_3;
  wire pulse_1_reg_i_4_n_1;
  wire pulse_1_reg_i_4_n_2;
  wire pulse_1_reg_i_4_n_3;
  wire pulse_1_reg_i_52_n_0;
  wire pulse_1_reg_i_52_n_1;
  wire pulse_1_reg_i_52_n_2;
  wire pulse_1_reg_i_52_n_3;
  wire [3:0]pulse_1_reg_i_62_0;
  wire pulse_1_reg_i_62_n_2;
  wire pulse_1_reg_i_62_n_3;
  wire [3:0]pulse_1_reg_i_64_0;
  wire pulse_1_reg_i_64_n_2;
  wire pulse_1_reg_i_64_n_3;
  wire pulse_1_reg_i_71_n_0;
  wire pulse_1_reg_i_71_n_1;
  wire pulse_1_reg_i_71_n_2;
  wire pulse_1_reg_i_71_n_3;
  wire pulse_1_reg_i_75_n_0;
  wire pulse_1_reg_i_75_n_1;
  wire pulse_1_reg_i_75_n_2;
  wire pulse_1_reg_i_75_n_3;
  wire pulse_1_reg_i_94_n_0;
  wire pulse_1_reg_i_94_n_1;
  wire pulse_1_reg_i_94_n_2;
  wire pulse_1_reg_i_94_n_3;
  wire pulse_20;
  wire pulse_2_i_100_n_0;
  wire pulse_2_i_101_n_0;
  wire pulse_2_i_102_n_0;
  wire pulse_2_i_103_n_0;
  wire pulse_2_i_104_n_0;
  wire pulse_2_i_105_n_0;
  wire pulse_2_i_106_n_0;
  wire pulse_2_i_107_n_0;
  wire pulse_2_i_108_n_0;
  wire pulse_2_i_109_n_0;
  wire pulse_2_i_112_n_0;
  wire pulse_2_i_113_n_0;
  wire pulse_2_i_114_n_0;
  wire pulse_2_i_115_n_0;
  wire pulse_2_i_118_n_0;
  wire pulse_2_i_119_n_0;
  wire pulse_2_i_120_n_0;
  wire pulse_2_i_121_n_0;
  wire pulse_2_i_123_n_0;
  wire pulse_2_i_124_n_0;
  wire pulse_2_i_125_n_0;
  wire pulse_2_i_126_n_0;
  wire pulse_2_i_127_n_0;
  wire pulse_2_i_128_n_0;
  wire pulse_2_i_129_n_0;
  wire pulse_2_i_130_n_0;
  wire pulse_2_i_133_n_0;
  wire pulse_2_i_134_n_0;
  wire pulse_2_i_135_n_0;
  wire pulse_2_i_136_n_0;
  wire pulse_2_i_137_n_0;
  wire pulse_2_i_138_n_0;
  wire pulse_2_i_139_n_0;
  wire pulse_2_i_140_n_0;
  wire pulse_2_i_143_n_0;
  wire pulse_2_i_144_n_0;
  wire pulse_2_i_145_n_0;
  wire pulse_2_i_146_n_0;
  wire pulse_2_i_148_n_0;
  wire pulse_2_i_149_n_0;
  wire pulse_2_i_150_n_0;
  wire pulse_2_i_151_n_0;
  wire pulse_2_i_152_n_0;
  wire pulse_2_i_153_n_0;
  wire pulse_2_i_154_n_0;
  wire pulse_2_i_155_n_0;
  wire pulse_2_i_156_n_0;
  wire pulse_2_i_157_n_0;
  wire pulse_2_i_158_n_0;
  wire pulse_2_i_159_n_0;
  wire pulse_2_i_162_n_0;
  wire pulse_2_i_163_n_0;
  wire pulse_2_i_164_n_0;
  wire pulse_2_i_165_n_0;
  wire pulse_2_i_171_n_0;
  wire pulse_2_i_172_n_0;
  wire pulse_2_i_173_n_0;
  wire pulse_2_i_174_n_0;
  wire pulse_2_i_175_n_0;
  wire pulse_2_i_176_n_0;
  wire pulse_2_i_177_n_0;
  wire pulse_2_i_178_n_0;
  wire pulse_2_i_17_n_0;
  wire pulse_2_i_184_n_0;
  wire pulse_2_i_185_n_0;
  wire pulse_2_i_186_n_0;
  wire pulse_2_i_187_n_0;
  wire pulse_2_i_188_n_0;
  wire pulse_2_i_189_n_0;
  wire pulse_2_i_18_n_0;
  wire pulse_2_i_190_n_0;
  wire pulse_2_i_191_n_0;
  wire pulse_2_i_192_n_0;
  wire pulse_2_i_193_n_0;
  wire pulse_2_i_194_n_0;
  wire pulse_2_i_196_n_0;
  wire pulse_2_i_197_n_0;
  wire pulse_2_i_199_n_0;
  wire pulse_2_i_19_n_0;
  wire pulse_2_i_200_n_0;
  wire pulse_2_i_201_n_0;
  wire pulse_2_i_202_n_0;
  wire pulse_2_i_203_n_0;
  wire pulse_2_i_204_n_0;
  wire pulse_2_i_205_n_0;
  wire pulse_2_i_206_n_0;
  wire pulse_2_i_207_n_0;
  wire pulse_2_i_209_n_0;
  wire pulse_2_i_20_n_0;
  wire pulse_2_i_210_n_0;
  wire pulse_2_i_211_n_0;
  wire pulse_2_i_212_n_0;
  wire pulse_2_i_213_n_0;
  wire pulse_2_i_214_n_0;
  wire pulse_2_i_215_n_0;
  wire pulse_2_i_216_n_0;
  wire pulse_2_i_217_n_0;
  wire pulse_2_i_218_n_0;
  wire [3:0]pulse_2_i_21_0;
  wire [3:0]pulse_2_i_21_1;
  wire pulse_2_i_21_n_0;
  wire pulse_2_i_220_n_0;
  wire pulse_2_i_221_n_0;
  wire pulse_2_i_222_n_0;
  wire pulse_2_i_223_n_0;
  wire pulse_2_i_224_n_0;
  wire pulse_2_i_225_n_0;
  wire pulse_2_i_226_n_0;
  wire pulse_2_i_227_n_0;
  wire pulse_2_i_228_n_0;
  wire pulse_2_i_229_n_0;
  wire pulse_2_i_22_n_0;
  wire pulse_2_i_231_n_0;
  wire pulse_2_i_232_n_0;
  wire pulse_2_i_233_n_0;
  wire pulse_2_i_234_n_0;
  wire pulse_2_i_235_n_0;
  wire pulse_2_i_236_n_0;
  wire pulse_2_i_237_n_0;
  wire pulse_2_i_238_n_0;
  wire pulse_2_i_239_n_0;
  wire pulse_2_i_23_n_0;
  wire pulse_2_i_246_n_0;
  wire pulse_2_i_247_n_0;
  wire pulse_2_i_248_n_0;
  wire pulse_2_i_249_n_0;
  wire pulse_2_i_24_n_0;
  wire pulse_2_i_250_n_0;
  wire pulse_2_i_251_n_0;
  wire pulse_2_i_252_n_0;
  wire pulse_2_i_253_n_0;
  wire pulse_2_i_25_n_0;
  wire pulse_2_i_260_n_0;
  wire pulse_2_i_261_n_0;
  wire pulse_2_i_262_n_0;
  wire pulse_2_i_263_n_0;
  wire pulse_2_i_264_n_0;
  wire pulse_2_i_265_n_0;
  wire pulse_2_i_266_n_0;
  wire pulse_2_i_267_n_0;
  wire pulse_2_i_268_n_0;
  wire pulse_2_i_269_n_0;
  wire pulse_2_i_270_n_0;
  wire pulse_2_i_271_n_0;
  wire pulse_2_i_272_n_0;
  wire pulse_2_i_273_n_0;
  wire pulse_2_i_274_n_0;
  wire pulse_2_i_275_n_0;
  wire pulse_2_i_276_n_0;
  wire pulse_2_i_277_n_0;
  wire pulse_2_i_278_n_0;
  wire pulse_2_i_27_n_0;
  wire pulse_2_i_280_n_0;
  wire pulse_2_i_281_n_0;
  wire pulse_2_i_282_n_0;
  wire pulse_2_i_283_n_0;
  wire pulse_2_i_284_n_0;
  wire pulse_2_i_285_n_0;
  wire pulse_2_i_286_n_0;
  wire pulse_2_i_287_n_0;
  wire pulse_2_i_289_n_0;
  wire pulse_2_i_290_n_0;
  wire pulse_2_i_291_n_0;
  wire pulse_2_i_292_n_0;
  wire pulse_2_i_293_n_0;
  wire pulse_2_i_294_n_0;
  wire pulse_2_i_295_n_0;
  wire pulse_2_i_296_n_0;
  wire pulse_2_i_297_n_0;
  wire pulse_2_i_299_n_0;
  wire pulse_2_i_300_n_0;
  wire pulse_2_i_301_n_0;
  wire pulse_2_i_302_n_0;
  wire pulse_2_i_303_n_0;
  wire pulse_2_i_304_n_0;
  wire pulse_2_i_305_n_0;
  wire pulse_2_i_306_n_0;
  wire pulse_2_i_307_n_0;
  wire pulse_2_i_308_n_0;
  wire pulse_2_i_312_n_0;
  wire pulse_2_i_313_n_0;
  wire pulse_2_i_314_n_0;
  wire pulse_2_i_315_n_0;
  wire pulse_2_i_316_n_0;
  wire pulse_2_i_317_n_0;
  wire pulse_2_i_318_n_0;
  wire [0:0]pulse_2_i_32;
  wire pulse_2_i_322_n_0;
  wire pulse_2_i_323_n_0;
  wire pulse_2_i_324_n_0;
  wire pulse_2_i_325_n_0;
  wire pulse_2_i_326_n_0;
  wire pulse_2_i_327_n_0;
  wire pulse_2_i_328_n_0;
  wire pulse_2_i_330_n_0;
  wire pulse_2_i_331_n_0;
  wire pulse_2_i_332_n_0;
  wire pulse_2_i_333_n_0;
  wire pulse_2_i_334_n_0;
  wire pulse_2_i_335_n_0;
  wire pulse_2_i_336_n_0;
  wire pulse_2_i_337_n_0;
  wire pulse_2_i_338_n_0;
  wire pulse_2_i_339_n_0;
  wire pulse_2_i_341_n_0;
  wire pulse_2_i_342_n_0;
  wire pulse_2_i_343_n_0;
  wire pulse_2_i_344_n_0;
  wire pulse_2_i_345_n_0;
  wire pulse_2_i_346_n_0;
  wire pulse_2_i_347_n_0;
  wire pulse_2_i_348_n_0;
  wire pulse_2_i_349_n_0;
  wire pulse_2_i_350_n_0;
  wire pulse_2_i_351_n_0;
  wire pulse_2_i_353_n_0;
  wire pulse_2_i_354_n_0;
  wire pulse_2_i_355_n_0;
  wire pulse_2_i_356_n_0;
  wire pulse_2_i_357_n_0;
  wire pulse_2_i_358_n_0;
  wire pulse_2_i_359_n_0;
  wire pulse_2_i_360_n_0;
  wire pulse_2_i_361_n_0;
  wire pulse_2_i_362_n_0;
  wire pulse_2_i_44_n_0;
  wire pulse_2_i_45_n_0;
  wire pulse_2_i_46_n_0;
  wire pulse_2_i_47_n_0;
  wire [3:0]pulse_2_i_48_0;
  wire [3:0]pulse_2_i_48_1;
  wire pulse_2_i_48_n_0;
  wire pulse_2_i_49_n_0;
  wire pulse_2_i_50_n_0;
  wire pulse_2_i_51_n_0;
  wire pulse_2_i_53_n_0;
  wire pulse_2_i_55_n_0;
  wire pulse_2_i_56_n_0;
  wire pulse_2_i_57_n_0;
  wire pulse_2_i_58_n_0;
  wire pulse_2_i_59_n_0;
  wire pulse_2_i_60_n_0;
  wire pulse_2_i_65_n_0;
  wire pulse_2_i_66_n_0;
  wire pulse_2_i_67_n_0;
  wire pulse_2_i_76_n_0;
  wire pulse_2_i_77_n_0;
  wire pulse_2_i_78_n_0;
  wire pulse_2_i_79_n_0;
  wire pulse_2_i_80_n_0;
  wire pulse_2_i_81_n_0;
  wire pulse_2_i_82_n_0;
  wire pulse_2_i_83_n_0;
  wire pulse_2_i_84_n_0;
  wire pulse_2_i_85_n_0;
  wire pulse_2_i_86_n_0;
  wire pulse_2_i_87_n_0;
  wire pulse_2_i_88_n_0;
  wire pulse_2_i_89_n_0;
  wire [0:0]pulse_2_i_8_0;
  wire [3:0]pulse_2_i_90_0;
  wire [3:0]pulse_2_i_90_1;
  wire pulse_2_i_90_n_0;
  wire pulse_2_i_91_n_0;
  wire pulse_2_i_92_n_0;
  wire pulse_2_i_93_n_0;
  wire pulse_2_i_95_n_0;
  wire pulse_2_i_97_n_0;
  wire pulse_2_i_98_n_0;
  wire pulse_2_i_99_n_0;
  wire [0:0]pulse_2_reg;
  wire [0:0]pulse_2_reg_0;
  wire [3:0]pulse_2_reg_i_111_0;
  wire pulse_2_reg_i_111_n_0;
  wire pulse_2_reg_i_111_n_1;
  wire pulse_2_reg_i_111_n_2;
  wire pulse_2_reg_i_111_n_3;
  wire [3:0]pulse_2_reg_i_117_0;
  wire pulse_2_reg_i_117_n_0;
  wire pulse_2_reg_i_117_n_1;
  wire pulse_2_reg_i_117_n_2;
  wire pulse_2_reg_i_117_n_3;
  wire pulse_2_reg_i_122_n_2;
  wire pulse_2_reg_i_122_n_7;
  wire pulse_2_reg_i_132_n_0;
  wire pulse_2_reg_i_132_n_1;
  wire pulse_2_reg_i_132_n_2;
  wire pulse_2_reg_i_132_n_3;
  wire pulse_2_reg_i_141_n_2;
  wire pulse_2_reg_i_141_n_7;
  wire pulse_2_reg_i_142_n_0;
  wire pulse_2_reg_i_142_n_1;
  wire pulse_2_reg_i_142_n_2;
  wire pulse_2_reg_i_142_n_3;
  wire pulse_2_reg_i_142_n_4;
  wire pulse_2_reg_i_142_n_5;
  wire pulse_2_reg_i_142_n_6;
  wire pulse_2_reg_i_142_n_7;
  wire pulse_2_reg_i_147_n_0;
  wire pulse_2_reg_i_147_n_1;
  wire pulse_2_reg_i_147_n_2;
  wire pulse_2_reg_i_147_n_3;
  wire pulse_2_reg_i_161_n_0;
  wire pulse_2_reg_i_161_n_1;
  wire pulse_2_reg_i_161_n_2;
  wire pulse_2_reg_i_161_n_3;
  wire pulse_2_reg_i_161_n_4;
  wire pulse_2_reg_i_161_n_5;
  wire pulse_2_reg_i_161_n_6;
  wire pulse_2_reg_i_161_n_7;
  wire pulse_2_reg_i_16_n_0;
  wire pulse_2_reg_i_16_n_1;
  wire pulse_2_reg_i_16_n_2;
  wire pulse_2_reg_i_16_n_3;
  wire [3:0]pulse_2_reg_i_170_0;
  wire pulse_2_reg_i_170_n_0;
  wire pulse_2_reg_i_170_n_1;
  wire pulse_2_reg_i_170_n_2;
  wire pulse_2_reg_i_170_n_3;
  wire [3:0]pulse_2_reg_i_183_0;
  wire pulse_2_reg_i_183_n_0;
  wire pulse_2_reg_i_183_n_1;
  wire pulse_2_reg_i_183_n_2;
  wire pulse_2_reg_i_183_n_3;
  wire pulse_2_reg_i_195_n_0;
  wire pulse_2_reg_i_195_n_1;
  wire pulse_2_reg_i_195_n_2;
  wire pulse_2_reg_i_195_n_3;
  wire pulse_2_reg_i_195_n_4;
  wire pulse_2_reg_i_195_n_5;
  wire pulse_2_reg_i_195_n_6;
  wire pulse_2_reg_i_195_n_7;
  wire pulse_2_reg_i_198_n_0;
  wire pulse_2_reg_i_198_n_1;
  wire pulse_2_reg_i_198_n_2;
  wire pulse_2_reg_i_198_n_3;
  wire [12:0]pulse_2_reg_i_2;
  wire pulse_2_reg_i_208_n_0;
  wire pulse_2_reg_i_208_n_1;
  wire pulse_2_reg_i_208_n_2;
  wire pulse_2_reg_i_208_n_3;
  wire pulse_2_reg_i_208_n_4;
  wire pulse_2_reg_i_208_n_5;
  wire pulse_2_reg_i_208_n_6;
  wire pulse_2_reg_i_208_n_7;
  wire pulse_2_reg_i_219_n_0;
  wire pulse_2_reg_i_219_n_1;
  wire pulse_2_reg_i_219_n_2;
  wire pulse_2_reg_i_219_n_3;
  wire pulse_2_reg_i_230_n_0;
  wire pulse_2_reg_i_230_n_1;
  wire pulse_2_reg_i_230_n_2;
  wire pulse_2_reg_i_230_n_3;
  wire pulse_2_reg_i_230_n_4;
  wire pulse_2_reg_i_230_n_5;
  wire pulse_2_reg_i_230_n_6;
  wire pulse_2_reg_i_230_n_7;
  wire pulse_2_reg_i_245_n_0;
  wire pulse_2_reg_i_245_n_1;
  wire pulse_2_reg_i_245_n_2;
  wire pulse_2_reg_i_245_n_3;
  wire pulse_2_reg_i_259_n_0;
  wire pulse_2_reg_i_259_n_1;
  wire pulse_2_reg_i_259_n_2;
  wire pulse_2_reg_i_259_n_3;
  wire pulse_2_reg_i_279_n_0;
  wire pulse_2_reg_i_279_n_1;
  wire pulse_2_reg_i_279_n_2;
  wire pulse_2_reg_i_279_n_3;
  wire pulse_2_reg_i_279_n_4;
  wire pulse_2_reg_i_279_n_5;
  wire pulse_2_reg_i_279_n_6;
  wire pulse_2_reg_i_279_n_7;
  wire pulse_2_reg_i_288_n_0;
  wire pulse_2_reg_i_288_n_1;
  wire pulse_2_reg_i_288_n_2;
  wire pulse_2_reg_i_288_n_3;
  wire pulse_2_reg_i_28_n_3;
  wire pulse_2_reg_i_298_n_0;
  wire pulse_2_reg_i_298_n_1;
  wire pulse_2_reg_i_298_n_2;
  wire pulse_2_reg_i_298_n_3;
  wire pulse_2_reg_i_298_n_4;
  wire pulse_2_reg_i_298_n_5;
  wire pulse_2_reg_i_298_n_6;
  wire pulse_2_reg_i_298_n_7;
  wire pulse_2_reg_i_329_n_0;
  wire pulse_2_reg_i_329_n_1;
  wire pulse_2_reg_i_329_n_2;
  wire pulse_2_reg_i_329_n_3;
  wire pulse_2_reg_i_340_n_0;
  wire pulse_2_reg_i_340_n_1;
  wire pulse_2_reg_i_340_n_2;
  wire pulse_2_reg_i_340_n_3;
  wire pulse_2_reg_i_340_n_4;
  wire pulse_2_reg_i_340_n_5;
  wire pulse_2_reg_i_340_n_6;
  wire pulse_2_reg_i_340_n_7;
  wire pulse_2_reg_i_352_n_0;
  wire pulse_2_reg_i_352_n_1;
  wire pulse_2_reg_i_352_n_2;
  wire pulse_2_reg_i_352_n_3;
  wire pulse_2_reg_i_38_n_3;
  wire pulse_2_reg_i_42_n_0;
  wire pulse_2_reg_i_42_n_1;
  wire pulse_2_reg_i_42_n_2;
  wire pulse_2_reg_i_42_n_3;
  wire pulse_2_reg_i_43_n_0;
  wire pulse_2_reg_i_43_n_1;
  wire pulse_2_reg_i_43_n_2;
  wire pulse_2_reg_i_43_n_3;
  wire pulse_2_reg_i_4_n_1;
  wire pulse_2_reg_i_4_n_2;
  wire pulse_2_reg_i_4_n_3;
  wire pulse_2_reg_i_52_n_0;
  wire pulse_2_reg_i_52_n_1;
  wire pulse_2_reg_i_52_n_2;
  wire pulse_2_reg_i_52_n_3;
  wire [3:0]pulse_2_reg_i_62_0;
  wire pulse_2_reg_i_62_n_2;
  wire pulse_2_reg_i_62_n_3;
  wire [3:0]pulse_2_reg_i_64_0;
  wire pulse_2_reg_i_64_n_2;
  wire pulse_2_reg_i_64_n_3;
  wire pulse_2_reg_i_71_n_0;
  wire pulse_2_reg_i_71_n_1;
  wire pulse_2_reg_i_71_n_2;
  wire pulse_2_reg_i_71_n_3;
  wire pulse_2_reg_i_75_n_0;
  wire pulse_2_reg_i_75_n_1;
  wire pulse_2_reg_i_75_n_2;
  wire pulse_2_reg_i_75_n_3;
  wire pulse_2_reg_i_94_n_0;
  wire pulse_2_reg_i_94_n_1;
  wire pulse_2_reg_i_94_n_2;
  wire pulse_2_reg_i_94_n_3;
  wire pulse_30;
  wire pulse_3_i_100_n_0;
  wire pulse_3_i_101_n_0;
  wire pulse_3_i_102_n_0;
  wire pulse_3_i_103_n_0;
  wire pulse_3_i_104_n_0;
  wire pulse_3_i_105_n_0;
  wire pulse_3_i_106_n_0;
  wire pulse_3_i_107_n_0;
  wire pulse_3_i_108_n_0;
  wire pulse_3_i_109_n_0;
  wire pulse_3_i_112_n_0;
  wire pulse_3_i_113_n_0;
  wire pulse_3_i_114_n_0;
  wire pulse_3_i_115_n_0;
  wire pulse_3_i_118_n_0;
  wire pulse_3_i_119_n_0;
  wire pulse_3_i_120_n_0;
  wire pulse_3_i_121_n_0;
  wire pulse_3_i_123_n_0;
  wire pulse_3_i_124_n_0;
  wire pulse_3_i_125_n_0;
  wire pulse_3_i_126_n_0;
  wire pulse_3_i_127_n_0;
  wire pulse_3_i_128_n_0;
  wire pulse_3_i_129_n_0;
  wire pulse_3_i_130_n_0;
  wire pulse_3_i_133_n_0;
  wire pulse_3_i_134_n_0;
  wire pulse_3_i_135_n_0;
  wire pulse_3_i_136_n_0;
  wire pulse_3_i_137_n_0;
  wire pulse_3_i_138_n_0;
  wire pulse_3_i_139_n_0;
  wire pulse_3_i_140_n_0;
  wire pulse_3_i_143_n_0;
  wire pulse_3_i_144_n_0;
  wire pulse_3_i_145_n_0;
  wire pulse_3_i_146_n_0;
  wire pulse_3_i_148_n_0;
  wire pulse_3_i_149_n_0;
  wire pulse_3_i_150_n_0;
  wire pulse_3_i_151_n_0;
  wire pulse_3_i_152_n_0;
  wire pulse_3_i_153_n_0;
  wire pulse_3_i_154_n_0;
  wire pulse_3_i_155_n_0;
  wire pulse_3_i_156_n_0;
  wire pulse_3_i_157_n_0;
  wire pulse_3_i_158_n_0;
  wire pulse_3_i_159_n_0;
  wire pulse_3_i_162_n_0;
  wire pulse_3_i_163_n_0;
  wire pulse_3_i_164_n_0;
  wire pulse_3_i_165_n_0;
  wire pulse_3_i_171_n_0;
  wire pulse_3_i_172_n_0;
  wire pulse_3_i_173_n_0;
  wire pulse_3_i_174_n_0;
  wire pulse_3_i_175_n_0;
  wire pulse_3_i_176_n_0;
  wire pulse_3_i_177_n_0;
  wire pulse_3_i_178_n_0;
  wire pulse_3_i_17_n_0;
  wire pulse_3_i_184_n_0;
  wire pulse_3_i_185_n_0;
  wire pulse_3_i_186_n_0;
  wire pulse_3_i_187_n_0;
  wire pulse_3_i_188_n_0;
  wire pulse_3_i_189_n_0;
  wire pulse_3_i_18_n_0;
  wire pulse_3_i_190_n_0;
  wire pulse_3_i_191_n_0;
  wire pulse_3_i_192_n_0;
  wire pulse_3_i_193_n_0;
  wire pulse_3_i_194_n_0;
  wire pulse_3_i_196_n_0;
  wire pulse_3_i_197_n_0;
  wire pulse_3_i_199_n_0;
  wire pulse_3_i_19_n_0;
  wire pulse_3_i_200_n_0;
  wire pulse_3_i_201_n_0;
  wire pulse_3_i_202_n_0;
  wire pulse_3_i_203_n_0;
  wire pulse_3_i_204_n_0;
  wire pulse_3_i_205_n_0;
  wire pulse_3_i_206_n_0;
  wire pulse_3_i_207_n_0;
  wire pulse_3_i_209_n_0;
  wire pulse_3_i_20_n_0;
  wire pulse_3_i_210_n_0;
  wire pulse_3_i_211_n_0;
  wire pulse_3_i_212_n_0;
  wire pulse_3_i_213_n_0;
  wire pulse_3_i_214_n_0;
  wire pulse_3_i_215_n_0;
  wire pulse_3_i_216_n_0;
  wire pulse_3_i_217_n_0;
  wire pulse_3_i_218_n_0;
  wire [3:0]pulse_3_i_21_0;
  wire [3:0]pulse_3_i_21_1;
  wire pulse_3_i_21_n_0;
  wire pulse_3_i_220_n_0;
  wire pulse_3_i_221_n_0;
  wire pulse_3_i_222_n_0;
  wire pulse_3_i_223_n_0;
  wire pulse_3_i_224_n_0;
  wire pulse_3_i_225_n_0;
  wire pulse_3_i_226_n_0;
  wire pulse_3_i_227_n_0;
  wire pulse_3_i_228_n_0;
  wire pulse_3_i_229_n_0;
  wire pulse_3_i_22_n_0;
  wire pulse_3_i_231_n_0;
  wire pulse_3_i_232_n_0;
  wire pulse_3_i_233_n_0;
  wire pulse_3_i_234_n_0;
  wire pulse_3_i_235_n_0;
  wire pulse_3_i_236_n_0;
  wire pulse_3_i_237_n_0;
  wire pulse_3_i_238_n_0;
  wire pulse_3_i_239_n_0;
  wire pulse_3_i_23_n_0;
  wire pulse_3_i_246_n_0;
  wire pulse_3_i_247_n_0;
  wire pulse_3_i_248_n_0;
  wire pulse_3_i_249_n_0;
  wire pulse_3_i_24_n_0;
  wire pulse_3_i_250_n_0;
  wire pulse_3_i_251_n_0;
  wire pulse_3_i_252_n_0;
  wire pulse_3_i_253_n_0;
  wire pulse_3_i_25_n_0;
  wire pulse_3_i_260_n_0;
  wire pulse_3_i_261_n_0;
  wire pulse_3_i_262_n_0;
  wire pulse_3_i_263_n_0;
  wire pulse_3_i_264_n_0;
  wire pulse_3_i_265_n_0;
  wire pulse_3_i_266_n_0;
  wire pulse_3_i_267_n_0;
  wire pulse_3_i_268_n_0;
  wire pulse_3_i_269_n_0;
  wire pulse_3_i_270_n_0;
  wire pulse_3_i_271_n_0;
  wire pulse_3_i_272_n_0;
  wire pulse_3_i_273_n_0;
  wire pulse_3_i_274_n_0;
  wire pulse_3_i_275_n_0;
  wire pulse_3_i_276_n_0;
  wire pulse_3_i_277_n_0;
  wire pulse_3_i_278_n_0;
  wire pulse_3_i_27_n_0;
  wire pulse_3_i_280_n_0;
  wire pulse_3_i_281_n_0;
  wire pulse_3_i_282_n_0;
  wire pulse_3_i_283_n_0;
  wire pulse_3_i_284_n_0;
  wire pulse_3_i_285_n_0;
  wire pulse_3_i_286_n_0;
  wire pulse_3_i_287_n_0;
  wire pulse_3_i_289_n_0;
  wire pulse_3_i_290_n_0;
  wire pulse_3_i_291_n_0;
  wire pulse_3_i_292_n_0;
  wire pulse_3_i_293_n_0;
  wire pulse_3_i_294_n_0;
  wire pulse_3_i_295_n_0;
  wire pulse_3_i_296_n_0;
  wire pulse_3_i_297_n_0;
  wire pulse_3_i_299_n_0;
  wire pulse_3_i_300_n_0;
  wire pulse_3_i_301_n_0;
  wire pulse_3_i_302_n_0;
  wire pulse_3_i_303_n_0;
  wire pulse_3_i_304_n_0;
  wire pulse_3_i_305_n_0;
  wire pulse_3_i_306_n_0;
  wire pulse_3_i_307_n_0;
  wire pulse_3_i_308_n_0;
  wire pulse_3_i_312_n_0;
  wire pulse_3_i_313_n_0;
  wire pulse_3_i_314_n_0;
  wire pulse_3_i_315_n_0;
  wire pulse_3_i_316_n_0;
  wire pulse_3_i_317_n_0;
  wire pulse_3_i_318_n_0;
  wire [0:0]pulse_3_i_32;
  wire pulse_3_i_322_n_0;
  wire pulse_3_i_323_n_0;
  wire pulse_3_i_324_n_0;
  wire pulse_3_i_325_n_0;
  wire pulse_3_i_326_n_0;
  wire pulse_3_i_327_n_0;
  wire pulse_3_i_328_n_0;
  wire pulse_3_i_330_n_0;
  wire pulse_3_i_331_n_0;
  wire pulse_3_i_332_n_0;
  wire pulse_3_i_333_n_0;
  wire pulse_3_i_334_n_0;
  wire pulse_3_i_335_n_0;
  wire pulse_3_i_336_n_0;
  wire pulse_3_i_337_n_0;
  wire pulse_3_i_338_n_0;
  wire pulse_3_i_339_n_0;
  wire pulse_3_i_341_n_0;
  wire pulse_3_i_342_n_0;
  wire pulse_3_i_343_n_0;
  wire pulse_3_i_344_n_0;
  wire pulse_3_i_345_n_0;
  wire pulse_3_i_346_n_0;
  wire pulse_3_i_347_n_0;
  wire pulse_3_i_348_n_0;
  wire pulse_3_i_349_n_0;
  wire pulse_3_i_350_n_0;
  wire pulse_3_i_351_n_0;
  wire pulse_3_i_353_n_0;
  wire pulse_3_i_354_n_0;
  wire pulse_3_i_355_n_0;
  wire pulse_3_i_356_n_0;
  wire pulse_3_i_357_n_0;
  wire pulse_3_i_358_n_0;
  wire pulse_3_i_359_n_0;
  wire pulse_3_i_360_n_0;
  wire pulse_3_i_361_n_0;
  wire pulse_3_i_362_n_0;
  wire pulse_3_i_44_n_0;
  wire pulse_3_i_45_n_0;
  wire pulse_3_i_46_n_0;
  wire pulse_3_i_47_n_0;
  wire [3:0]pulse_3_i_48_0;
  wire [3:0]pulse_3_i_48_1;
  wire pulse_3_i_48_n_0;
  wire pulse_3_i_49_n_0;
  wire pulse_3_i_50_n_0;
  wire pulse_3_i_51_n_0;
  wire pulse_3_i_53_n_0;
  wire pulse_3_i_55_n_0;
  wire pulse_3_i_56_n_0;
  wire pulse_3_i_57_n_0;
  wire pulse_3_i_58_n_0;
  wire pulse_3_i_59_n_0;
  wire pulse_3_i_60_n_0;
  wire pulse_3_i_65_n_0;
  wire pulse_3_i_66_n_0;
  wire pulse_3_i_67_n_0;
  wire pulse_3_i_76_n_0;
  wire pulse_3_i_77_n_0;
  wire pulse_3_i_78_n_0;
  wire pulse_3_i_79_n_0;
  wire pulse_3_i_80_n_0;
  wire pulse_3_i_81_n_0;
  wire pulse_3_i_82_n_0;
  wire pulse_3_i_83_n_0;
  wire pulse_3_i_84_n_0;
  wire pulse_3_i_85_n_0;
  wire pulse_3_i_86_n_0;
  wire pulse_3_i_87_n_0;
  wire pulse_3_i_88_n_0;
  wire pulse_3_i_89_n_0;
  wire [0:0]pulse_3_i_8_0;
  wire [3:0]pulse_3_i_90_0;
  wire [3:0]pulse_3_i_90_1;
  wire pulse_3_i_90_n_0;
  wire pulse_3_i_91_n_0;
  wire pulse_3_i_92_n_0;
  wire pulse_3_i_93_n_0;
  wire pulse_3_i_95_n_0;
  wire pulse_3_i_97_n_0;
  wire pulse_3_i_98_n_0;
  wire pulse_3_i_99_n_0;
  wire [0:0]pulse_3_reg;
  wire [3:0]pulse_3_reg_i_111_0;
  wire pulse_3_reg_i_111_n_0;
  wire pulse_3_reg_i_111_n_1;
  wire pulse_3_reg_i_111_n_2;
  wire pulse_3_reg_i_111_n_3;
  wire [3:0]pulse_3_reg_i_117_0;
  wire pulse_3_reg_i_117_n_0;
  wire pulse_3_reg_i_117_n_1;
  wire pulse_3_reg_i_117_n_2;
  wire pulse_3_reg_i_117_n_3;
  wire pulse_3_reg_i_122_n_2;
  wire pulse_3_reg_i_122_n_7;
  wire pulse_3_reg_i_132_n_0;
  wire pulse_3_reg_i_132_n_1;
  wire pulse_3_reg_i_132_n_2;
  wire pulse_3_reg_i_132_n_3;
  wire pulse_3_reg_i_141_n_2;
  wire pulse_3_reg_i_141_n_7;
  wire pulse_3_reg_i_142_n_0;
  wire pulse_3_reg_i_142_n_1;
  wire pulse_3_reg_i_142_n_2;
  wire pulse_3_reg_i_142_n_3;
  wire pulse_3_reg_i_142_n_4;
  wire pulse_3_reg_i_142_n_5;
  wire pulse_3_reg_i_142_n_6;
  wire pulse_3_reg_i_142_n_7;
  wire pulse_3_reg_i_147_n_0;
  wire pulse_3_reg_i_147_n_1;
  wire pulse_3_reg_i_147_n_2;
  wire pulse_3_reg_i_147_n_3;
  wire pulse_3_reg_i_161_n_0;
  wire pulse_3_reg_i_161_n_1;
  wire pulse_3_reg_i_161_n_2;
  wire pulse_3_reg_i_161_n_3;
  wire pulse_3_reg_i_161_n_4;
  wire pulse_3_reg_i_161_n_5;
  wire pulse_3_reg_i_161_n_6;
  wire pulse_3_reg_i_161_n_7;
  wire pulse_3_reg_i_16_n_0;
  wire pulse_3_reg_i_16_n_1;
  wire pulse_3_reg_i_16_n_2;
  wire pulse_3_reg_i_16_n_3;
  wire [3:0]pulse_3_reg_i_170_0;
  wire pulse_3_reg_i_170_n_0;
  wire pulse_3_reg_i_170_n_1;
  wire pulse_3_reg_i_170_n_2;
  wire pulse_3_reg_i_170_n_3;
  wire [3:0]pulse_3_reg_i_183_0;
  wire pulse_3_reg_i_183_n_0;
  wire pulse_3_reg_i_183_n_1;
  wire pulse_3_reg_i_183_n_2;
  wire pulse_3_reg_i_183_n_3;
  wire pulse_3_reg_i_195_n_0;
  wire pulse_3_reg_i_195_n_1;
  wire pulse_3_reg_i_195_n_2;
  wire pulse_3_reg_i_195_n_3;
  wire pulse_3_reg_i_195_n_4;
  wire pulse_3_reg_i_195_n_5;
  wire pulse_3_reg_i_195_n_6;
  wire pulse_3_reg_i_195_n_7;
  wire pulse_3_reg_i_198_n_0;
  wire pulse_3_reg_i_198_n_1;
  wire pulse_3_reg_i_198_n_2;
  wire pulse_3_reg_i_198_n_3;
  wire [12:0]pulse_3_reg_i_2;
  wire pulse_3_reg_i_208_n_0;
  wire pulse_3_reg_i_208_n_1;
  wire pulse_3_reg_i_208_n_2;
  wire pulse_3_reg_i_208_n_3;
  wire pulse_3_reg_i_208_n_4;
  wire pulse_3_reg_i_208_n_5;
  wire pulse_3_reg_i_208_n_6;
  wire pulse_3_reg_i_208_n_7;
  wire pulse_3_reg_i_219_n_0;
  wire pulse_3_reg_i_219_n_1;
  wire pulse_3_reg_i_219_n_2;
  wire pulse_3_reg_i_219_n_3;
  wire pulse_3_reg_i_230_n_0;
  wire pulse_3_reg_i_230_n_1;
  wire pulse_3_reg_i_230_n_2;
  wire pulse_3_reg_i_230_n_3;
  wire pulse_3_reg_i_230_n_4;
  wire pulse_3_reg_i_230_n_5;
  wire pulse_3_reg_i_230_n_6;
  wire pulse_3_reg_i_230_n_7;
  wire pulse_3_reg_i_245_n_0;
  wire pulse_3_reg_i_245_n_1;
  wire pulse_3_reg_i_245_n_2;
  wire pulse_3_reg_i_245_n_3;
  wire pulse_3_reg_i_259_n_0;
  wire pulse_3_reg_i_259_n_1;
  wire pulse_3_reg_i_259_n_2;
  wire pulse_3_reg_i_259_n_3;
  wire pulse_3_reg_i_279_n_0;
  wire pulse_3_reg_i_279_n_1;
  wire pulse_3_reg_i_279_n_2;
  wire pulse_3_reg_i_279_n_3;
  wire pulse_3_reg_i_279_n_4;
  wire pulse_3_reg_i_279_n_5;
  wire pulse_3_reg_i_279_n_6;
  wire pulse_3_reg_i_279_n_7;
  wire pulse_3_reg_i_288_n_0;
  wire pulse_3_reg_i_288_n_1;
  wire pulse_3_reg_i_288_n_2;
  wire pulse_3_reg_i_288_n_3;
  wire pulse_3_reg_i_28_n_3;
  wire pulse_3_reg_i_298_n_0;
  wire pulse_3_reg_i_298_n_1;
  wire pulse_3_reg_i_298_n_2;
  wire pulse_3_reg_i_298_n_3;
  wire pulse_3_reg_i_298_n_4;
  wire pulse_3_reg_i_298_n_5;
  wire pulse_3_reg_i_298_n_6;
  wire pulse_3_reg_i_298_n_7;
  wire pulse_3_reg_i_329_n_0;
  wire pulse_3_reg_i_329_n_1;
  wire pulse_3_reg_i_329_n_2;
  wire pulse_3_reg_i_329_n_3;
  wire pulse_3_reg_i_340_n_0;
  wire pulse_3_reg_i_340_n_1;
  wire pulse_3_reg_i_340_n_2;
  wire pulse_3_reg_i_340_n_3;
  wire pulse_3_reg_i_340_n_4;
  wire pulse_3_reg_i_340_n_5;
  wire pulse_3_reg_i_340_n_6;
  wire pulse_3_reg_i_340_n_7;
  wire pulse_3_reg_i_352_n_0;
  wire pulse_3_reg_i_352_n_1;
  wire pulse_3_reg_i_352_n_2;
  wire pulse_3_reg_i_352_n_3;
  wire pulse_3_reg_i_38_n_3;
  wire pulse_3_reg_i_42_n_0;
  wire pulse_3_reg_i_42_n_1;
  wire pulse_3_reg_i_42_n_2;
  wire pulse_3_reg_i_42_n_3;
  wire pulse_3_reg_i_43_n_0;
  wire pulse_3_reg_i_43_n_1;
  wire pulse_3_reg_i_43_n_2;
  wire pulse_3_reg_i_43_n_3;
  wire pulse_3_reg_i_4_n_1;
  wire pulse_3_reg_i_4_n_2;
  wire pulse_3_reg_i_4_n_3;
  wire pulse_3_reg_i_52_n_0;
  wire pulse_3_reg_i_52_n_1;
  wire pulse_3_reg_i_52_n_2;
  wire pulse_3_reg_i_52_n_3;
  wire [3:0]pulse_3_reg_i_62_0;
  wire pulse_3_reg_i_62_n_2;
  wire pulse_3_reg_i_62_n_3;
  wire [3:0]pulse_3_reg_i_64_0;
  wire pulse_3_reg_i_64_n_2;
  wire pulse_3_reg_i_64_n_3;
  wire pulse_3_reg_i_71_n_0;
  wire pulse_3_reg_i_71_n_1;
  wire pulse_3_reg_i_71_n_2;
  wire pulse_3_reg_i_71_n_3;
  wire pulse_3_reg_i_75_n_0;
  wire pulse_3_reg_i_75_n_1;
  wire pulse_3_reg_i_75_n_2;
  wire pulse_3_reg_i_75_n_3;
  wire pulse_3_reg_i_94_n_0;
  wire pulse_3_reg_i_94_n_1;
  wire pulse_3_reg_i_94_n_2;
  wire pulse_3_reg_i_94_n_3;
  wire [31:0]pulse_seq_reg;
  wire \pulse_seq_reg_r[31]_i_1_n_0 ;
  wire \rdata_r[0]_i_2_n_0 ;
  wire \rdata_r[0]_i_6_n_0 ;
  wire \rdata_r[0]_i_7_n_0 ;
  wire \rdata_r[0]_i_8_n_0 ;
  wire \rdata_r[0]_i_9_n_0 ;
  wire \rdata_r[10]_i_2_n_0 ;
  wire \rdata_r[10]_i_6_n_0 ;
  wire \rdata_r[10]_i_7_n_0 ;
  wire \rdata_r[10]_i_8_n_0 ;
  wire \rdata_r[10]_i_9_n_0 ;
  wire \rdata_r[11]_i_2_n_0 ;
  wire \rdata_r[11]_i_6_n_0 ;
  wire \rdata_r[11]_i_7_n_0 ;
  wire \rdata_r[11]_i_8_n_0 ;
  wire \rdata_r[11]_i_9_n_0 ;
  wire \rdata_r[12]_i_2_n_0 ;
  wire \rdata_r[12]_i_6_n_0 ;
  wire \rdata_r[12]_i_7_n_0 ;
  wire \rdata_r[12]_i_8_n_0 ;
  wire \rdata_r[12]_i_9_n_0 ;
  wire \rdata_r[13]_i_2_n_0 ;
  wire \rdata_r[13]_i_6_n_0 ;
  wire \rdata_r[13]_i_7_n_0 ;
  wire \rdata_r[13]_i_8_n_0 ;
  wire \rdata_r[13]_i_9_n_0 ;
  wire \rdata_r[14]_i_2_n_0 ;
  wire \rdata_r[14]_i_6_n_0 ;
  wire \rdata_r[14]_i_7_n_0 ;
  wire \rdata_r[14]_i_8_n_0 ;
  wire \rdata_r[14]_i_9_n_0 ;
  wire \rdata_r[15]_i_2_n_0 ;
  wire \rdata_r[15]_i_6_n_0 ;
  wire \rdata_r[15]_i_7_n_0 ;
  wire \rdata_r[15]_i_8_n_0 ;
  wire \rdata_r[15]_i_9_n_0 ;
  wire \rdata_r[16]_i_2_n_0 ;
  wire \rdata_r[16]_i_6_n_0 ;
  wire \rdata_r[16]_i_7_n_0 ;
  wire \rdata_r[16]_i_8_n_0 ;
  wire \rdata_r[16]_i_9_n_0 ;
  wire \rdata_r[17]_i_2_n_0 ;
  wire \rdata_r[17]_i_6_n_0 ;
  wire \rdata_r[17]_i_7_n_0 ;
  wire \rdata_r[17]_i_8_n_0 ;
  wire \rdata_r[17]_i_9_n_0 ;
  wire \rdata_r[18]_i_2_n_0 ;
  wire \rdata_r[18]_i_6_n_0 ;
  wire \rdata_r[18]_i_7_n_0 ;
  wire \rdata_r[18]_i_8_n_0 ;
  wire \rdata_r[18]_i_9_n_0 ;
  wire \rdata_r[19]_i_2_n_0 ;
  wire \rdata_r[19]_i_6_n_0 ;
  wire \rdata_r[19]_i_7_n_0 ;
  wire \rdata_r[19]_i_8_n_0 ;
  wire \rdata_r[19]_i_9_n_0 ;
  wire \rdata_r[1]_i_2_n_0 ;
  wire \rdata_r[1]_i_6_n_0 ;
  wire \rdata_r[1]_i_7_n_0 ;
  wire \rdata_r[1]_i_8_n_0 ;
  wire \rdata_r[1]_i_9_n_0 ;
  wire \rdata_r[20]_i_2_n_0 ;
  wire \rdata_r[20]_i_6_n_0 ;
  wire \rdata_r[20]_i_7_n_0 ;
  wire \rdata_r[20]_i_8_n_0 ;
  wire \rdata_r[20]_i_9_n_0 ;
  wire \rdata_r[21]_i_2_n_0 ;
  wire \rdata_r[21]_i_6_n_0 ;
  wire \rdata_r[21]_i_7_n_0 ;
  wire \rdata_r[21]_i_8_n_0 ;
  wire \rdata_r[21]_i_9_n_0 ;
  wire \rdata_r[22]_i_2_n_0 ;
  wire \rdata_r[22]_i_6_n_0 ;
  wire \rdata_r[22]_i_7_n_0 ;
  wire \rdata_r[22]_i_8_n_0 ;
  wire \rdata_r[22]_i_9_n_0 ;
  wire \rdata_r[23]_i_2_n_0 ;
  wire \rdata_r[23]_i_6_n_0 ;
  wire \rdata_r[23]_i_7_n_0 ;
  wire \rdata_r[23]_i_8_n_0 ;
  wire \rdata_r[23]_i_9_n_0 ;
  wire \rdata_r[24]_i_2_n_0 ;
  wire \rdata_r[24]_i_6_n_0 ;
  wire \rdata_r[24]_i_7_n_0 ;
  wire \rdata_r[24]_i_8_n_0 ;
  wire \rdata_r[24]_i_9_n_0 ;
  wire \rdata_r[25]_i_2_n_0 ;
  wire \rdata_r[25]_i_6_n_0 ;
  wire \rdata_r[25]_i_7_n_0 ;
  wire \rdata_r[25]_i_8_n_0 ;
  wire \rdata_r[25]_i_9_n_0 ;
  wire \rdata_r[26]_i_2_n_0 ;
  wire \rdata_r[26]_i_6_n_0 ;
  wire \rdata_r[26]_i_7_n_0 ;
  wire \rdata_r[26]_i_8_n_0 ;
  wire \rdata_r[26]_i_9_n_0 ;
  wire \rdata_r[27]_i_2_n_0 ;
  wire \rdata_r[27]_i_6_n_0 ;
  wire \rdata_r[27]_i_7_n_0 ;
  wire \rdata_r[27]_i_8_n_0 ;
  wire \rdata_r[27]_i_9_n_0 ;
  wire \rdata_r[28]_i_2_n_0 ;
  wire \rdata_r[28]_i_6_n_0 ;
  wire \rdata_r[28]_i_7_n_0 ;
  wire \rdata_r[28]_i_8_n_0 ;
  wire \rdata_r[28]_i_9_n_0 ;
  wire \rdata_r[29]_i_2_n_0 ;
  wire \rdata_r[29]_i_6_n_0 ;
  wire \rdata_r[29]_i_7_n_0 ;
  wire \rdata_r[29]_i_8_n_0 ;
  wire \rdata_r[29]_i_9_n_0 ;
  wire \rdata_r[2]_i_2_n_0 ;
  wire \rdata_r[2]_i_6_n_0 ;
  wire \rdata_r[2]_i_7_n_0 ;
  wire \rdata_r[2]_i_8_n_0 ;
  wire \rdata_r[2]_i_9_n_0 ;
  wire \rdata_r[30]_i_2_n_0 ;
  wire \rdata_r[30]_i_6_n_0 ;
  wire \rdata_r[30]_i_7_n_0 ;
  wire \rdata_r[30]_i_8_n_0 ;
  wire \rdata_r[30]_i_9_n_0 ;
  wire \rdata_r[31]_i_12_n_0 ;
  wire \rdata_r[31]_i_13_n_0 ;
  wire \rdata_r[31]_i_14_n_0 ;
  wire \rdata_r[31]_i_15_n_0 ;
  wire \rdata_r[31]_i_16_n_0 ;
  wire \rdata_r[31]_i_17_n_0 ;
  wire \rdata_r[31]_i_18_n_0 ;
  wire \rdata_r[31]_i_19_n_0 ;
  wire \rdata_r[31]_i_20_n_0 ;
  wire \rdata_r[31]_i_21_n_0 ;
  wire \rdata_r[31]_i_22_n_0 ;
  wire \rdata_r[31]_i_23_n_0 ;
  wire \rdata_r[31]_i_2_n_0 ;
  wire \rdata_r[31]_i_3_n_0 ;
  wire \rdata_r[31]_i_4_n_0 ;
  wire \rdata_r[31]_i_6_n_0 ;
  wire \rdata_r[31]_i_7_n_0 ;
  wire \rdata_r[31]_i_8_n_0 ;
  wire \rdata_r[31]_i_9_n_0 ;
  wire \rdata_r[3]_i_2_n_0 ;
  wire \rdata_r[3]_i_6_n_0 ;
  wire \rdata_r[3]_i_7_n_0 ;
  wire \rdata_r[3]_i_8_n_0 ;
  wire \rdata_r[3]_i_9_n_0 ;
  wire \rdata_r[4]_i_2_n_0 ;
  wire \rdata_r[4]_i_6_n_0 ;
  wire \rdata_r[4]_i_7_n_0 ;
  wire \rdata_r[4]_i_8_n_0 ;
  wire \rdata_r[4]_i_9_n_0 ;
  wire \rdata_r[5]_i_2_n_0 ;
  wire \rdata_r[5]_i_6_n_0 ;
  wire \rdata_r[5]_i_7_n_0 ;
  wire \rdata_r[5]_i_8_n_0 ;
  wire \rdata_r[5]_i_9_n_0 ;
  wire \rdata_r[6]_i_2_n_0 ;
  wire \rdata_r[6]_i_6_n_0 ;
  wire \rdata_r[6]_i_7_n_0 ;
  wire \rdata_r[6]_i_8_n_0 ;
  wire \rdata_r[6]_i_9_n_0 ;
  wire \rdata_r[7]_i_2_n_0 ;
  wire \rdata_r[7]_i_6_n_0 ;
  wire \rdata_r[7]_i_7_n_0 ;
  wire \rdata_r[7]_i_8_n_0 ;
  wire \rdata_r[7]_i_9_n_0 ;
  wire \rdata_r[8]_i_2_n_0 ;
  wire \rdata_r[8]_i_6_n_0 ;
  wire \rdata_r[8]_i_7_n_0 ;
  wire \rdata_r[8]_i_8_n_0 ;
  wire \rdata_r[8]_i_9_n_0 ;
  wire \rdata_r[9]_i_2_n_0 ;
  wire \rdata_r[9]_i_6_n_0 ;
  wire \rdata_r[9]_i_7_n_0 ;
  wire \rdata_r[9]_i_8_n_0 ;
  wire \rdata_r[9]_i_9_n_0 ;
  wire \rdata_r_reg[0]_i_3_n_0 ;
  wire \rdata_r_reg[0]_i_4_n_0 ;
  wire \rdata_r_reg[0]_i_5_n_0 ;
  wire \rdata_r_reg[10]_i_3_n_0 ;
  wire \rdata_r_reg[10]_i_4_n_0 ;
  wire \rdata_r_reg[10]_i_5_n_0 ;
  wire \rdata_r_reg[11]_i_3_n_0 ;
  wire \rdata_r_reg[11]_i_4_n_0 ;
  wire \rdata_r_reg[11]_i_5_n_0 ;
  wire \rdata_r_reg[12]_i_3_n_0 ;
  wire \rdata_r_reg[12]_i_4_n_0 ;
  wire \rdata_r_reg[12]_i_5_n_0 ;
  wire \rdata_r_reg[13]_i_3_n_0 ;
  wire \rdata_r_reg[13]_i_4_n_0 ;
  wire \rdata_r_reg[13]_i_5_n_0 ;
  wire \rdata_r_reg[14]_i_3_n_0 ;
  wire \rdata_r_reg[14]_i_4_n_0 ;
  wire \rdata_r_reg[14]_i_5_n_0 ;
  wire \rdata_r_reg[15]_i_3_n_0 ;
  wire \rdata_r_reg[15]_i_4_n_0 ;
  wire \rdata_r_reg[15]_i_5_n_0 ;
  wire \rdata_r_reg[16]_i_3_n_0 ;
  wire \rdata_r_reg[16]_i_4_n_0 ;
  wire \rdata_r_reg[16]_i_5_n_0 ;
  wire \rdata_r_reg[17]_i_3_n_0 ;
  wire \rdata_r_reg[17]_i_4_n_0 ;
  wire \rdata_r_reg[17]_i_5_n_0 ;
  wire \rdata_r_reg[18]_i_3_n_0 ;
  wire \rdata_r_reg[18]_i_4_n_0 ;
  wire \rdata_r_reg[18]_i_5_n_0 ;
  wire \rdata_r_reg[19]_i_3_n_0 ;
  wire \rdata_r_reg[19]_i_4_n_0 ;
  wire \rdata_r_reg[19]_i_5_n_0 ;
  wire \rdata_r_reg[1]_i_3_n_0 ;
  wire \rdata_r_reg[1]_i_4_n_0 ;
  wire \rdata_r_reg[1]_i_5_n_0 ;
  wire \rdata_r_reg[20]_i_3_n_0 ;
  wire \rdata_r_reg[20]_i_4_n_0 ;
  wire \rdata_r_reg[20]_i_5_n_0 ;
  wire \rdata_r_reg[21]_i_3_n_0 ;
  wire \rdata_r_reg[21]_i_4_n_0 ;
  wire \rdata_r_reg[21]_i_5_n_0 ;
  wire \rdata_r_reg[22]_i_3_n_0 ;
  wire \rdata_r_reg[22]_i_4_n_0 ;
  wire \rdata_r_reg[22]_i_5_n_0 ;
  wire \rdata_r_reg[23]_i_3_n_0 ;
  wire \rdata_r_reg[23]_i_4_n_0 ;
  wire \rdata_r_reg[23]_i_5_n_0 ;
  wire \rdata_r_reg[24]_i_3_n_0 ;
  wire \rdata_r_reg[24]_i_4_n_0 ;
  wire \rdata_r_reg[24]_i_5_n_0 ;
  wire \rdata_r_reg[25]_i_3_n_0 ;
  wire \rdata_r_reg[25]_i_4_n_0 ;
  wire \rdata_r_reg[25]_i_5_n_0 ;
  wire \rdata_r_reg[26]_i_3_n_0 ;
  wire \rdata_r_reg[26]_i_4_n_0 ;
  wire \rdata_r_reg[26]_i_5_n_0 ;
  wire \rdata_r_reg[27]_i_3_n_0 ;
  wire \rdata_r_reg[27]_i_4_n_0 ;
  wire \rdata_r_reg[27]_i_5_n_0 ;
  wire \rdata_r_reg[28]_i_3_n_0 ;
  wire \rdata_r_reg[28]_i_4_n_0 ;
  wire \rdata_r_reg[28]_i_5_n_0 ;
  wire \rdata_r_reg[29]_i_3_n_0 ;
  wire \rdata_r_reg[29]_i_4_n_0 ;
  wire \rdata_r_reg[29]_i_5_n_0 ;
  wire \rdata_r_reg[2]_i_3_n_0 ;
  wire \rdata_r_reg[2]_i_4_n_0 ;
  wire \rdata_r_reg[2]_i_5_n_0 ;
  wire \rdata_r_reg[30]_i_3_n_0 ;
  wire \rdata_r_reg[30]_i_4_n_0 ;
  wire \rdata_r_reg[30]_i_5_n_0 ;
  wire \rdata_r_reg[31]_i_10_n_0 ;
  wire \rdata_r_reg[31]_i_11_n_0 ;
  wire \rdata_r_reg[31]_i_5_n_0 ;
  wire \rdata_r_reg[3]_i_3_n_0 ;
  wire \rdata_r_reg[3]_i_4_n_0 ;
  wire \rdata_r_reg[3]_i_5_n_0 ;
  wire \rdata_r_reg[4]_i_3_n_0 ;
  wire \rdata_r_reg[4]_i_4_n_0 ;
  wire \rdata_r_reg[4]_i_5_n_0 ;
  wire \rdata_r_reg[5]_i_3_n_0 ;
  wire \rdata_r_reg[5]_i_4_n_0 ;
  wire \rdata_r_reg[5]_i_5_n_0 ;
  wire \rdata_r_reg[6]_i_3_n_0 ;
  wire \rdata_r_reg[6]_i_4_n_0 ;
  wire \rdata_r_reg[6]_i_5_n_0 ;
  wire \rdata_r_reg[7]_i_3_n_0 ;
  wire \rdata_r_reg[7]_i_4_n_0 ;
  wire \rdata_r_reg[7]_i_5_n_0 ;
  wire \rdata_r_reg[8]_i_3_n_0 ;
  wire \rdata_r_reg[8]_i_4_n_0 ;
  wire \rdata_r_reg[8]_i_5_n_0 ;
  wire \rdata_r_reg[9]_i_3_n_0 ;
  wire \rdata_r_reg[9]_i_4_n_0 ;
  wire \rdata_r_reg[9]_i_5_n_0 ;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \seq_param0_r[31]_i_1_n_0 ;
  wire \seq_param0_r_reg_n_0_[0] ;
  wire \seq_param0_r_reg_n_0_[10] ;
  wire \seq_param0_r_reg_n_0_[11] ;
  wire \seq_param0_r_reg_n_0_[12] ;
  wire \seq_param0_r_reg_n_0_[13] ;
  wire \seq_param0_r_reg_n_0_[14] ;
  wire \seq_param0_r_reg_n_0_[15] ;
  wire \seq_param0_r_reg_n_0_[16] ;
  wire \seq_param0_r_reg_n_0_[17] ;
  wire \seq_param0_r_reg_n_0_[18] ;
  wire \seq_param0_r_reg_n_0_[19] ;
  wire \seq_param0_r_reg_n_0_[1] ;
  wire \seq_param0_r_reg_n_0_[20] ;
  wire \seq_param0_r_reg_n_0_[21] ;
  wire \seq_param0_r_reg_n_0_[22] ;
  wire \seq_param0_r_reg_n_0_[23] ;
  wire \seq_param0_r_reg_n_0_[24] ;
  wire \seq_param0_r_reg_n_0_[25] ;
  wire \seq_param0_r_reg_n_0_[26] ;
  wire \seq_param0_r_reg_n_0_[27] ;
  wire \seq_param0_r_reg_n_0_[28] ;
  wire \seq_param0_r_reg_n_0_[29] ;
  wire \seq_param0_r_reg_n_0_[2] ;
  wire \seq_param0_r_reg_n_0_[30] ;
  wire \seq_param0_r_reg_n_0_[31] ;
  wire \seq_param0_r_reg_n_0_[3] ;
  wire \seq_param0_r_reg_n_0_[4] ;
  wire \seq_param0_r_reg_n_0_[5] ;
  wire \seq_param0_r_reg_n_0_[6] ;
  wire \seq_param0_r_reg_n_0_[7] ;
  wire \seq_param0_r_reg_n_0_[8] ;
  wire \seq_param0_r_reg_n_0_[9] ;
  wire \seq_param1_r[31]_i_1_n_0 ;
  wire \seq_param1_r_reg_n_0_[0] ;
  wire \seq_param1_r_reg_n_0_[10] ;
  wire \seq_param1_r_reg_n_0_[11] ;
  wire \seq_param1_r_reg_n_0_[12] ;
  wire \seq_param1_r_reg_n_0_[13] ;
  wire \seq_param1_r_reg_n_0_[14] ;
  wire \seq_param1_r_reg_n_0_[15] ;
  wire \seq_param1_r_reg_n_0_[16] ;
  wire \seq_param1_r_reg_n_0_[17] ;
  wire \seq_param1_r_reg_n_0_[18] ;
  wire \seq_param1_r_reg_n_0_[19] ;
  wire \seq_param1_r_reg_n_0_[1] ;
  wire \seq_param1_r_reg_n_0_[20] ;
  wire \seq_param1_r_reg_n_0_[21] ;
  wire \seq_param1_r_reg_n_0_[22] ;
  wire \seq_param1_r_reg_n_0_[23] ;
  wire \seq_param1_r_reg_n_0_[24] ;
  wire \seq_param1_r_reg_n_0_[25] ;
  wire \seq_param1_r_reg_n_0_[26] ;
  wire \seq_param1_r_reg_n_0_[27] ;
  wire \seq_param1_r_reg_n_0_[28] ;
  wire \seq_param1_r_reg_n_0_[29] ;
  wire \seq_param1_r_reg_n_0_[2] ;
  wire \seq_param1_r_reg_n_0_[30] ;
  wire \seq_param1_r_reg_n_0_[31] ;
  wire \seq_param1_r_reg_n_0_[3] ;
  wire \seq_param1_r_reg_n_0_[4] ;
  wire \seq_param1_r_reg_n_0_[5] ;
  wire \seq_param1_r_reg_n_0_[6] ;
  wire \seq_param1_r_reg_n_0_[7] ;
  wire \seq_param1_r_reg_n_0_[8] ;
  wire \seq_param1_r_reg_n_0_[9] ;
  wire \seq_param2_r[31]_i_1_n_0 ;
  wire \seq_param2_r[31]_i_2_n_0 ;
  wire \seq_param2_r_reg_n_0_[0] ;
  wire \seq_param2_r_reg_n_0_[10] ;
  wire \seq_param2_r_reg_n_0_[11] ;
  wire \seq_param2_r_reg_n_0_[12] ;
  wire \seq_param2_r_reg_n_0_[13] ;
  wire \seq_param2_r_reg_n_0_[14] ;
  wire \seq_param2_r_reg_n_0_[15] ;
  wire \seq_param2_r_reg_n_0_[16] ;
  wire \seq_param2_r_reg_n_0_[17] ;
  wire \seq_param2_r_reg_n_0_[18] ;
  wire \seq_param2_r_reg_n_0_[19] ;
  wire \seq_param2_r_reg_n_0_[1] ;
  wire \seq_param2_r_reg_n_0_[20] ;
  wire \seq_param2_r_reg_n_0_[21] ;
  wire \seq_param2_r_reg_n_0_[22] ;
  wire \seq_param2_r_reg_n_0_[23] ;
  wire \seq_param2_r_reg_n_0_[24] ;
  wire \seq_param2_r_reg_n_0_[25] ;
  wire \seq_param2_r_reg_n_0_[26] ;
  wire \seq_param2_r_reg_n_0_[27] ;
  wire \seq_param2_r_reg_n_0_[28] ;
  wire \seq_param2_r_reg_n_0_[29] ;
  wire \seq_param2_r_reg_n_0_[2] ;
  wire \seq_param2_r_reg_n_0_[30] ;
  wire \seq_param2_r_reg_n_0_[31] ;
  wire \seq_param2_r_reg_n_0_[3] ;
  wire \seq_param2_r_reg_n_0_[4] ;
  wire \seq_param2_r_reg_n_0_[5] ;
  wire \seq_param2_r_reg_n_0_[6] ;
  wire \seq_param2_r_reg_n_0_[7] ;
  wire \seq_param2_r_reg_n_0_[8] ;
  wire \seq_param2_r_reg_n_0_[9] ;
  wire [31:0]seq_sel_reg;
  wire \seq_sel_reg_r[31]_i_1_n_0 ;
  wire \seq_sel_reg_r[31]_i_2_n_0 ;
  wire [11:0]\u_pulse_gen/p_0_in ;
  wire wr_en_i_1_n_0;
  wire wr_en_reg_0;
  wire [3:3]\NLW_phase_acc_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_pulse_0_reg_i_111_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_117_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_122_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_0_reg_i_122_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_132_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_141_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_0_reg_i_141_O_UNCONNECTED;
  wire [1:0]NLW_pulse_0_reg_i_147_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_16_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_170_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_183_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_198_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_219_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_245_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_259_O_UNCONNECTED;
  wire [3:1]NLW_pulse_0_reg_i_28_CO_UNCONNECTED;
  wire [3:2]NLW_pulse_0_reg_i_28_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_288_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_329_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_352_O_UNCONNECTED;
  wire [3:1]NLW_pulse_0_reg_i_38_CO_UNCONNECTED;
  wire [3:2]NLW_pulse_0_reg_i_38_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_43_O_UNCONNECTED;
  wire [3:2]NLW_pulse_0_reg_i_62_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_62_O_UNCONNECTED;
  wire [3:2]NLW_pulse_0_reg_i_64_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_64_O_UNCONNECTED;
  wire [1:0]NLW_pulse_0_reg_i_75_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_111_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_117_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_122_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_1_reg_i_122_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_132_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_141_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_1_reg_i_141_O_UNCONNECTED;
  wire [1:0]NLW_pulse_1_reg_i_147_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_16_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_170_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_183_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_198_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_219_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_245_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_259_O_UNCONNECTED;
  wire [3:1]NLW_pulse_1_reg_i_28_CO_UNCONNECTED;
  wire [3:2]NLW_pulse_1_reg_i_28_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_288_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_329_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_352_O_UNCONNECTED;
  wire [3:1]NLW_pulse_1_reg_i_38_CO_UNCONNECTED;
  wire [3:2]NLW_pulse_1_reg_i_38_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_43_O_UNCONNECTED;
  wire [3:2]NLW_pulse_1_reg_i_62_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_62_O_UNCONNECTED;
  wire [3:2]NLW_pulse_1_reg_i_64_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_64_O_UNCONNECTED;
  wire [1:0]NLW_pulse_1_reg_i_75_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_111_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_117_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_122_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_2_reg_i_122_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_132_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_141_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_2_reg_i_141_O_UNCONNECTED;
  wire [1:0]NLW_pulse_2_reg_i_147_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_16_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_170_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_183_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_198_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_219_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_245_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_259_O_UNCONNECTED;
  wire [3:1]NLW_pulse_2_reg_i_28_CO_UNCONNECTED;
  wire [3:2]NLW_pulse_2_reg_i_28_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_288_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_329_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_352_O_UNCONNECTED;
  wire [3:1]NLW_pulse_2_reg_i_38_CO_UNCONNECTED;
  wire [3:2]NLW_pulse_2_reg_i_38_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_43_O_UNCONNECTED;
  wire [3:2]NLW_pulse_2_reg_i_62_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_62_O_UNCONNECTED;
  wire [3:2]NLW_pulse_2_reg_i_64_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_64_O_UNCONNECTED;
  wire [1:0]NLW_pulse_2_reg_i_75_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_111_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_117_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_122_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_3_reg_i_122_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_132_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_141_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_3_reg_i_141_O_UNCONNECTED;
  wire [1:0]NLW_pulse_3_reg_i_147_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_16_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_170_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_183_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_198_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_219_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_245_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_259_O_UNCONNECTED;
  wire [3:1]NLW_pulse_3_reg_i_28_CO_UNCONNECTED;
  wire [3:2]NLW_pulse_3_reg_i_28_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_288_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_329_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_352_O_UNCONNECTED;
  wire [3:1]NLW_pulse_3_reg_i_38_CO_UNCONNECTED;
  wire [3:2]NLW_pulse_3_reg_i_38_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_43_O_UNCONNECTED;
  wire [3:2]NLW_pulse_3_reg_i_62_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_62_O_UNCONNECTED;
  wire [3:2]NLW_pulse_3_reg_i_64_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_64_O_UNCONNECTED;
  wire [1:0]NLW_pulse_3_reg_i_75_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00000020)) 
    \adc_cfg_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\pulse1_cfg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[1]),
        .I4(\seq_param2_r[31]_i_2_n_0 ),
        .O(\adc_cfg_reg_r[31]_i_1_n_0 ));
  FDCE \adc_cfg_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\adc_cfg_reg_r_reg_n_0_[0] ));
  FDPE \adc_cfg_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .PRE(wr_en_i_1_n_0),
        .Q(\adc_cfg_reg_r_reg_n_0_[10] ));
  FDCE \adc_cfg_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\adc_cfg_reg_r_reg_n_0_[11] ));
  FDCE \adc_cfg_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\adc_cfg_reg_r_reg_n_0_[12] ));
  FDCE \adc_cfg_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\adc_cfg_reg_r_reg_n_0_[13] ));
  FDCE \adc_cfg_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\adc_cfg_reg_r_reg_n_0_[14] ));
  FDCE \adc_cfg_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(\adc_cfg_reg_r_reg_n_0_[15] ));
  FDCE \adc_cfg_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(\adc_cfg_reg_r_reg_n_0_[16] ));
  FDCE \adc_cfg_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\adc_cfg_reg_r_reg_n_0_[17] ));
  FDCE \adc_cfg_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\adc_cfg_reg_r_reg_n_0_[18] ));
  FDCE \adc_cfg_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(\adc_cfg_reg_r_reg_n_0_[19] ));
  FDCE \adc_cfg_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(\adc_cfg_reg_r_reg_n_0_[1] ));
  FDCE \adc_cfg_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(\adc_cfg_reg_r_reg_n_0_[20] ));
  FDCE \adc_cfg_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\adc_cfg_reg_r_reg_n_0_[21] ));
  FDCE \adc_cfg_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(\adc_cfg_reg_r_reg_n_0_[22] ));
  FDCE \adc_cfg_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\adc_cfg_reg_r_reg_n_0_[23] ));
  FDCE \adc_cfg_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(\adc_cfg_reg_r_reg_n_0_[24] ));
  FDCE \adc_cfg_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(\adc_cfg_reg_r_reg_n_0_[25] ));
  FDCE \adc_cfg_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\adc_cfg_reg_r_reg_n_0_[26] ));
  FDCE \adc_cfg_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\adc_cfg_reg_r_reg_n_0_[27] ));
  FDCE \adc_cfg_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(\adc_cfg_reg_r_reg_n_0_[28] ));
  FDCE \adc_cfg_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\adc_cfg_reg_r_reg_n_0_[29] ));
  FDCE \adc_cfg_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\adc_cfg_reg_r_reg_n_0_[2] ));
  FDCE \adc_cfg_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(\adc_cfg_reg_r_reg_n_0_[30] ));
  FDCE \adc_cfg_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(\adc_cfg_reg_r_reg_n_0_[31] ));
  FDCE \adc_cfg_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(\adc_cfg_reg_r_reg_n_0_[3] ));
  FDCE \adc_cfg_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(\adc_cfg_reg_r_reg_n_0_[4] ));
  FDCE \adc_cfg_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(\adc_cfg_reg_r_reg_n_0_[5] ));
  FDCE \adc_cfg_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(\adc_cfg_reg_r_reg_n_0_[6] ));
  FDCE \adc_cfg_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(\adc_cfg_reg_r_reg_n_0_[7] ));
  FDCE \adc_cfg_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(\adc_cfg_reg_r_reg_n_0_[8] ));
  FDCE \adc_cfg_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\adc_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(\adc_cfg_reg_r_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h08)) 
    \clk_cfg_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(s_axi_awaddr[4]),
        .I2(\ctrl_reg_r[31]_i_3_n_0 ),
        .O(\clk_cfg_reg_r[31]_i_1_n_0 ));
  FDCE \clk_cfg_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\clk_cfg_reg_r_reg_n_0_[0] ));
  FDCE \clk_cfg_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(\clk_cfg_reg_r_reg_n_0_[10] ));
  FDCE \clk_cfg_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\clk_cfg_reg_r_reg_n_0_[11] ));
  FDCE \clk_cfg_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\clk_cfg_reg_r_reg_n_0_[12] ));
  FDCE \clk_cfg_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\clk_cfg_reg_r_reg_n_0_[13] ));
  FDCE \clk_cfg_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\clk_cfg_reg_r_reg_n_0_[14] ));
  FDCE \clk_cfg_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(\clk_cfg_reg_r_reg_n_0_[15] ));
  FDCE \clk_cfg_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(\clk_cfg_reg_r_reg_n_0_[16] ));
  FDCE \clk_cfg_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\clk_cfg_reg_r_reg_n_0_[17] ));
  FDCE \clk_cfg_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\clk_cfg_reg_r_reg_n_0_[18] ));
  FDCE \clk_cfg_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(\clk_cfg_reg_r_reg_n_0_[19] ));
  FDCE \clk_cfg_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(\clk_cfg_reg_r_reg_n_0_[1] ));
  FDPE \clk_cfg_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .PRE(wr_en_i_1_n_0),
        .Q(\clk_cfg_reg_r_reg_n_0_[20] ));
  FDCE \clk_cfg_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\clk_cfg_reg_r_reg_n_0_[21] ));
  FDPE \clk_cfg_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .PRE(wr_en_i_1_n_0),
        .Q(\clk_cfg_reg_r_reg_n_0_[22] ));
  FDCE \clk_cfg_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\clk_cfg_reg_r_reg_n_0_[23] ));
  FDPE \clk_cfg_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .PRE(wr_en_i_1_n_0),
        .Q(\clk_cfg_reg_r_reg_n_0_[24] ));
  FDPE \clk_cfg_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .PRE(wr_en_i_1_n_0),
        .Q(\clk_cfg_reg_r_reg_n_0_[25] ));
  FDCE \clk_cfg_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\clk_cfg_reg_r_reg_n_0_[26] ));
  FDCE \clk_cfg_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\clk_cfg_reg_r_reg_n_0_[27] ));
  FDCE \clk_cfg_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(\clk_cfg_reg_r_reg_n_0_[28] ));
  FDCE \clk_cfg_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\clk_cfg_reg_r_reg_n_0_[29] ));
  FDCE \clk_cfg_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\clk_cfg_reg_r_reg_n_0_[2] ));
  FDPE \clk_cfg_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .PRE(wr_en_i_1_n_0),
        .Q(\clk_cfg_reg_r_reg_n_0_[30] ));
  FDPE \clk_cfg_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .PRE(wr_en_i_1_n_0),
        .Q(\clk_cfg_reg_r_reg_n_0_[31] ));
  FDCE \clk_cfg_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(\clk_cfg_reg_r_reg_n_0_[3] ));
  FDCE \clk_cfg_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(\clk_cfg_reg_r_reg_n_0_[4] ));
  FDCE \clk_cfg_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(\clk_cfg_reg_r_reg_n_0_[5] ));
  FDCE \clk_cfg_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(\clk_cfg_reg_r_reg_n_0_[6] ));
  FDCE \clk_cfg_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(\clk_cfg_reg_r_reg_n_0_[7] ));
  FDCE \clk_cfg_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(\clk_cfg_reg_r_reg_n_0_[8] ));
  FDCE \clk_cfg_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\clk_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(\clk_cfg_reg_r_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[0]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(Q[0]),
        .O(\ctrl_reg_r_reg[4]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[10]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[9]),
        .O(\ctrl_reg_r_reg[4]_2 [10]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[11]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[10]),
        .O(\ctrl_reg_r_reg[4]_2 [11]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[12]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[11]),
        .O(\ctrl_reg_r_reg[4]_2 [12]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[13]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[12]),
        .O(\ctrl_reg_r_reg[4]_2 [13]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[14]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[13]),
        .O(\ctrl_reg_r_reg[4]_2 [14]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[15]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[14]),
        .O(\ctrl_reg_r_reg[4]_2 [15]));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    \cnt0[15]_i_2 
       (.I0(ctrl_reg[4]),
        .I1(ctrl_reg[1]),
        .I2(pulse_seq_reg[0]),
        .I3(mmcm_locked),
        .I4(pulse_0_reg),
        .I5(pulse_0_reg_0),
        .O(\cnt0[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[1]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[0]),
        .O(\ctrl_reg_r_reg[4]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[2]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[1]),
        .O(\ctrl_reg_r_reg[4]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[3]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[2]),
        .O(\ctrl_reg_r_reg[4]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[4]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[3]),
        .O(\ctrl_reg_r_reg[4]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[5]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[4]),
        .O(\ctrl_reg_r_reg[4]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[6]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[5]),
        .O(\ctrl_reg_r_reg[4]_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[7]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[6]),
        .O(\ctrl_reg_r_reg[4]_2 [7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[8]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[7]),
        .O(\ctrl_reg_r_reg[4]_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[9]_i_1 
       (.I0(\cnt0[15]_i_2_n_0 ),
        .I1(cnt00[8]),
        .O(\ctrl_reg_r_reg[4]_2 [9]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt1[0]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(pulse_1_reg_i_2[0]),
        .O(\ctrl_reg_r_reg[4]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[10]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[9]),
        .O(\ctrl_reg_r_reg[4]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[11]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[10]),
        .O(\ctrl_reg_r_reg[4]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[12]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[11]),
        .O(\ctrl_reg_r_reg[4]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[13]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[12]),
        .O(\ctrl_reg_r_reg[4]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[14]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[13]),
        .O(\ctrl_reg_r_reg[4]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[15]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[14]),
        .O(\ctrl_reg_r_reg[4]_1 [15]));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    \cnt1[15]_i_2 
       (.I0(mmcm_locked),
        .I1(ctrl_reg[4]),
        .I2(ctrl_reg[1]),
        .I3(pulse_seq_reg[1]),
        .I4(pulse_1_reg),
        .I5(pulse_1_reg_0),
        .O(\cnt1[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[1]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[0]),
        .O(\ctrl_reg_r_reg[4]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[2]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[1]),
        .O(\ctrl_reg_r_reg[4]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[3]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[2]),
        .O(\ctrl_reg_r_reg[4]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[4]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[3]),
        .O(\ctrl_reg_r_reg[4]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[5]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[4]),
        .O(\ctrl_reg_r_reg[4]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[6]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[5]),
        .O(\ctrl_reg_r_reg[4]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[7]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[6]),
        .O(\ctrl_reg_r_reg[4]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[8]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[7]),
        .O(\ctrl_reg_r_reg[4]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt1[9]_i_1 
       (.I0(\cnt1[15]_i_2_n_0 ),
        .I1(cnt10[8]),
        .O(\ctrl_reg_r_reg[4]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt2[0]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(pulse_2_reg_i_2[0]),
        .O(\ctrl_reg_r_reg[4]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[10]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[9]),
        .O(\ctrl_reg_r_reg[4]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[11]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[10]),
        .O(\ctrl_reg_r_reg[4]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[12]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[11]),
        .O(\ctrl_reg_r_reg[4]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[13]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[12]),
        .O(\ctrl_reg_r_reg[4]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[14]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[13]),
        .O(\ctrl_reg_r_reg[4]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[15]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[14]),
        .O(\ctrl_reg_r_reg[4]_0 [15]));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    \cnt2[15]_i_2 
       (.I0(mmcm_locked),
        .I1(ctrl_reg[4]),
        .I2(ctrl_reg[1]),
        .I3(pulse_seq_reg[2]),
        .I4(pulse_2_reg),
        .I5(pulse_2_reg_0),
        .O(\cnt2[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[1]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[0]),
        .O(\ctrl_reg_r_reg[4]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[2]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[1]),
        .O(\ctrl_reg_r_reg[4]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[3]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[2]),
        .O(\ctrl_reg_r_reg[4]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[4]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[3]),
        .O(\ctrl_reg_r_reg[4]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[5]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[4]),
        .O(\ctrl_reg_r_reg[4]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[6]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[5]),
        .O(\ctrl_reg_r_reg[4]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[7]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[6]),
        .O(\ctrl_reg_r_reg[4]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[8]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[7]),
        .O(\ctrl_reg_r_reg[4]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[9]_i_1 
       (.I0(\cnt2[15]_i_2_n_0 ),
        .I1(cnt20[8]),
        .O(\ctrl_reg_r_reg[4]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt3[0]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(pulse_3_reg_i_2[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[10]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[9]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[11]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[10]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[12]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[11]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[13]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[12]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[14]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[13]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[15]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[14]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    \cnt3[15]_i_2 
       (.I0(mmcm_locked),
        .I1(ctrl_reg[4]),
        .I2(ctrl_reg[1]),
        .I3(pulse_seq_reg[3]),
        .I4(CO),
        .I5(pulse_3_reg),
        .O(\cnt3[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[1]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[2]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[3]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[4]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[5]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[6]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[7]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[8]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[7]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt3[9]_i_1 
       (.I0(\cnt3[15]_i_2_n_0 ),
        .I1(cnt30[8]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'h02)) 
    \ctrl_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\ctrl_reg_r[31]_i_3_n_0 ),
        .I2(s_axi_awaddr[4]),
        .O(\ctrl_reg_r[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ctrl_reg_r[31]_i_2 
       (.I0(\ctrl_reg_r[31]_i_4_n_0 ),
        .I1(s_axi_awaddr[19]),
        .I2(s_axi_awaddr[12]),
        .I3(s_axi_awaddr[14]),
        .I4(\ctrl_reg_r[31]_i_5_n_0 ),
        .O(\ctrl_reg_r[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_reg_r[31]_i_3 
       (.I0(\pulse1_cfg_r[31]_i_2_n_0 ),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[1]),
        .I3(\ctrl_reg_r[31]_i_6_n_0 ),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[0]),
        .O(\ctrl_reg_r[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \ctrl_reg_r[31]_i_4 
       (.I0(s_axi_awaddr[9]),
        .I1(s_axi_awaddr[30]),
        .I2(s_axi_awaddr[20]),
        .I3(s_axi_awaddr[26]),
        .I4(\ctrl_reg_r[31]_i_7_n_0 ),
        .O(\ctrl_reg_r[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \ctrl_reg_r[31]_i_5 
       (.I0(\ctrl_reg_r[31]_i_8_n_0 ),
        .I1(\ctrl_reg_r[31]_i_9_n_0 ),
        .I2(s_axi_awaddr[8]),
        .I3(s_axi_awaddr[7]),
        .I4(s_axi_awaddr[25]),
        .I5(s_axi_awaddr[28]),
        .O(\ctrl_reg_r[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_reg_r[31]_i_6 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_awaddr[6]),
        .O(\ctrl_reg_r[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \ctrl_reg_r[31]_i_7 
       (.I0(s_axi_awaddr[23]),
        .I1(s_axi_awaddr[17]),
        .I2(s_axi_awaddr[31]),
        .I3(s_axi_awaddr[13]),
        .O(\ctrl_reg_r[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_reg_r[31]_i_8 
       (.I0(s_axi_awaddr[29]),
        .I1(s_axi_awaddr[11]),
        .I2(s_axi_awaddr[10]),
        .I3(s_axi_awaddr[21]),
        .I4(s_axi_awaddr[15]),
        .I5(s_axi_awaddr[18]),
        .O(\ctrl_reg_r[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ctrl_reg_r[31]_i_9 
       (.I0(s_axi_awaddr[22]),
        .I1(s_axi_awaddr[16]),
        .I2(s_axi_awaddr[24]),
        .I3(s_axi_awaddr[27]),
        .O(\ctrl_reg_r[31]_i_9_n_0 ));
  FDCE \ctrl_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\ctrl_reg_r_reg_n_0_[0] ));
  FDCE \ctrl_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(\ctrl_reg_r_reg_n_0_[10] ));
  FDCE \ctrl_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\ctrl_reg_r_reg_n_0_[11] ));
  FDCE \ctrl_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\ctrl_reg_r_reg_n_0_[12] ));
  FDCE \ctrl_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\ctrl_reg_r_reg_n_0_[13] ));
  FDCE \ctrl_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\ctrl_reg_r_reg_n_0_[14] ));
  FDCE \ctrl_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(\ctrl_reg_r_reg_n_0_[15] ));
  FDCE \ctrl_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(\ctrl_reg_r_reg_n_0_[16] ));
  FDCE \ctrl_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\ctrl_reg_r_reg_n_0_[17] ));
  FDCE \ctrl_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\ctrl_reg_r_reg_n_0_[18] ));
  FDCE \ctrl_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(\ctrl_reg_r_reg_n_0_[19] ));
  FDCE \ctrl_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(ctrl_reg[1]));
  FDCE \ctrl_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(\ctrl_reg_r_reg_n_0_[20] ));
  FDCE \ctrl_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\ctrl_reg_r_reg_n_0_[21] ));
  FDCE \ctrl_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(\ctrl_reg_r_reg_n_0_[22] ));
  FDCE \ctrl_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\ctrl_reg_r_reg_n_0_[23] ));
  FDCE \ctrl_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(\ctrl_reg_r_reg_n_0_[24] ));
  FDCE \ctrl_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(\ctrl_reg_r_reg_n_0_[25] ));
  FDCE \ctrl_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\ctrl_reg_r_reg_n_0_[26] ));
  FDCE \ctrl_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\ctrl_reg_r_reg_n_0_[27] ));
  FDCE \ctrl_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(\ctrl_reg_r_reg_n_0_[28] ));
  FDCE \ctrl_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\ctrl_reg_r_reg_n_0_[29] ));
  FDCE \ctrl_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\ctrl_reg_r_reg_n_0_[2] ));
  FDCE \ctrl_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(\ctrl_reg_r_reg_n_0_[30] ));
  FDCE \ctrl_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(\ctrl_reg_r_reg_n_0_[31] ));
  FDCE \ctrl_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(\ctrl_reg_r_reg_n_0_[3] ));
  FDCE \ctrl_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(ctrl_reg[4]));
  FDCE \ctrl_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(\ctrl_reg_r_reg_n_0_[5] ));
  FDCE \ctrl_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(\ctrl_reg_r_reg_n_0_[6] ));
  FDCE \ctrl_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(\ctrl_reg_r_reg_n_0_[7] ));
  FDCE \ctrl_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(\ctrl_reg_r_reg_n_0_[8] ));
  FDCE \ctrl_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\ctrl_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(\ctrl_reg_r_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \dma_cfg_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\dma_cfg_reg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[6]),
        .I3(s_axi_awaddr[1]),
        .I4(\pulse0_cfg_r[31]_i_3_n_0 ),
        .O(\dma_cfg_reg_r[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dma_cfg_reg_r[31]_i_2 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[3]),
        .O(\dma_cfg_reg_r[31]_i_2_n_0 ));
  FDCE \dma_cfg_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\dma_cfg_reg_r_reg_n_0_[0] ));
  FDPE \dma_cfg_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .PRE(wr_en_i_1_n_0),
        .Q(\dma_cfg_reg_r_reg_n_0_[10] ));
  FDCE \dma_cfg_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\dma_cfg_reg_r_reg_n_0_[11] ));
  FDCE \dma_cfg_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\dma_cfg_reg_r_reg_n_0_[12] ));
  FDCE \dma_cfg_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\dma_cfg_reg_r_reg_n_0_[13] ));
  FDCE \dma_cfg_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\dma_cfg_reg_r_reg_n_0_[14] ));
  FDCE \dma_cfg_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(\dma_cfg_reg_r_reg_n_0_[15] ));
  FDCE \dma_cfg_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(\dma_cfg_reg_r_reg_n_0_[16] ));
  FDCE \dma_cfg_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\dma_cfg_reg_r_reg_n_0_[17] ));
  FDCE \dma_cfg_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\dma_cfg_reg_r_reg_n_0_[18] ));
  FDCE \dma_cfg_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(\dma_cfg_reg_r_reg_n_0_[19] ));
  FDCE \dma_cfg_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(\dma_cfg_reg_r_reg_n_0_[1] ));
  FDCE \dma_cfg_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(\dma_cfg_reg_r_reg_n_0_[20] ));
  FDCE \dma_cfg_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\dma_cfg_reg_r_reg_n_0_[21] ));
  FDCE \dma_cfg_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(\dma_cfg_reg_r_reg_n_0_[22] ));
  FDCE \dma_cfg_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\dma_cfg_reg_r_reg_n_0_[23] ));
  FDCE \dma_cfg_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(\dma_cfg_reg_r_reg_n_0_[24] ));
  FDCE \dma_cfg_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(\dma_cfg_reg_r_reg_n_0_[25] ));
  FDCE \dma_cfg_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\dma_cfg_reg_r_reg_n_0_[26] ));
  FDCE \dma_cfg_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\dma_cfg_reg_r_reg_n_0_[27] ));
  FDCE \dma_cfg_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(\dma_cfg_reg_r_reg_n_0_[28] ));
  FDCE \dma_cfg_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\dma_cfg_reg_r_reg_n_0_[29] ));
  FDCE \dma_cfg_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\dma_cfg_reg_r_reg_n_0_[2] ));
  FDCE \dma_cfg_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(\dma_cfg_reg_r_reg_n_0_[30] ));
  FDCE \dma_cfg_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(\dma_cfg_reg_r_reg_n_0_[31] ));
  FDCE \dma_cfg_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(\dma_cfg_reg_r_reg_n_0_[3] ));
  FDCE \dma_cfg_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(\dma_cfg_reg_r_reg_n_0_[4] ));
  FDCE \dma_cfg_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(\dma_cfg_reg_r_reg_n_0_[5] ));
  FDCE \dma_cfg_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(\dma_cfg_reg_r_reg_n_0_[6] ));
  FDCE \dma_cfg_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(\dma_cfg_reg_r_reg_n_0_[7] ));
  FDCE \dma_cfg_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(\dma_cfg_reg_r_reg_n_0_[8] ));
  FDCE \dma_cfg_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\dma_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(\dma_cfg_reg_r_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \mmcm_cfg_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(wr_en_reg_0),
        .I5(\mmcm_cfg_reg_r[31]_i_2_n_0 ),
        .O(\mmcm_cfg_reg_r[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \mmcm_cfg_reg_r[31]_i_2 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[4]),
        .I4(s_axi_awaddr[5]),
        .I5(s_axi_awaddr[6]),
        .O(\mmcm_cfg_reg_r[31]_i_2_n_0 ));
  FDCE \mmcm_cfg_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[0] ));
  FDCE \mmcm_cfg_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[10] ));
  FDCE \mmcm_cfg_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[11] ));
  FDCE \mmcm_cfg_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[12] ));
  FDCE \mmcm_cfg_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[13] ));
  FDCE \mmcm_cfg_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[14] ));
  FDCE \mmcm_cfg_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[15] ));
  FDPE \mmcm_cfg_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .PRE(wr_en_i_1_n_0),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[16] ));
  FDCE \mmcm_cfg_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[17] ));
  FDCE \mmcm_cfg_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[18] ));
  FDPE \mmcm_cfg_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .PRE(wr_en_i_1_n_0),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[19] ));
  FDCE \mmcm_cfg_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[1] ));
  FDPE \mmcm_cfg_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .PRE(wr_en_i_1_n_0),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[20] ));
  FDCE \mmcm_cfg_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[21] ));
  FDCE \mmcm_cfg_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[22] ));
  FDCE \mmcm_cfg_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[23] ));
  FDCE \mmcm_cfg_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[24] ));
  FDCE \mmcm_cfg_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[25] ));
  FDCE \mmcm_cfg_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[26] ));
  FDCE \mmcm_cfg_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[27] ));
  FDPE \mmcm_cfg_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .PRE(wr_en_i_1_n_0),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[28] ));
  FDCE \mmcm_cfg_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[29] ));
  FDCE \mmcm_cfg_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[2] ));
  FDPE \mmcm_cfg_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .PRE(wr_en_i_1_n_0),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[30] ));
  FDCE \mmcm_cfg_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[31] ));
  FDCE \mmcm_cfg_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[3] ));
  FDPE \mmcm_cfg_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .PRE(wr_en_i_1_n_0),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[4] ));
  FDCE \mmcm_cfg_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[5] ));
  FDCE \mmcm_cfg_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[6] ));
  FDCE \mmcm_cfg_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[7] ));
  FDPE \mmcm_cfg_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .PRE(wr_en_i_1_n_0),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[8] ));
  FDCE \mmcm_cfg_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\mmcm_cfg_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(\mmcm_cfg_reg_r_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h0002)) 
    \mw_freq_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\mw_freq_reg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[5]),
        .I3(s_axi_awaddr[6]),
        .O(\mw_freq_reg_r[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \mw_freq_reg_r[31]_i_2 
       (.I0(s_axi_awaddr[3]),
        .I1(\pulse1_cfg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[4]),
        .I4(s_axi_awaddr[2]),
        .I5(s_axi_awaddr[1]),
        .O(\mw_freq_reg_r[31]_i_2_n_0 ));
  FDCE \mw_freq_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(mw_freq_reg[0]));
  FDCE \mw_freq_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(mw_freq_reg[10]));
  FDPE \mw_freq_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .PRE(wr_en_i_1_n_0),
        .Q(mw_freq_reg[11]));
  FDCE \mw_freq_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(mw_freq_reg[12]));
  FDCE \mw_freq_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(mw_freq_reg[13]));
  FDPE \mw_freq_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .PRE(wr_en_i_1_n_0),
        .Q(mw_freq_reg[14]));
  FDPE \mw_freq_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .PRE(wr_en_i_1_n_0),
        .Q(mw_freq_reg[15]));
  FDPE \mw_freq_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .PRE(wr_en_i_1_n_0),
        .Q(mw_freq_reg[16]));
  FDPE \mw_freq_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .PRE(wr_en_i_1_n_0),
        .Q(mw_freq_reg[17]));
  FDCE \mw_freq_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(mw_freq_reg[18]));
  FDPE \mw_freq_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .PRE(wr_en_i_1_n_0),
        .Q(mw_freq_reg[19]));
  FDCE \mw_freq_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(mw_freq_reg[1]));
  FDCE \mw_freq_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(mw_freq_reg[20]));
  FDPE \mw_freq_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .PRE(wr_en_i_1_n_0),
        .Q(mw_freq_reg[21]));
  FDCE \mw_freq_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(mw_freq_reg[22]));
  FDCE \mw_freq_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(mw_freq_reg[23]));
  FDCE \mw_freq_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(mw_freq_reg[24]));
  FDCE \mw_freq_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(mw_freq_reg[25]));
  FDCE \mw_freq_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(mw_freq_reg[26]));
  FDCE \mw_freq_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(mw_freq_reg[27]));
  FDCE \mw_freq_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(mw_freq_reg[28]));
  FDCE \mw_freq_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(mw_freq_reg[29]));
  FDCE \mw_freq_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(mw_freq_reg[2]));
  FDCE \mw_freq_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(mw_freq_reg[30]));
  FDCE \mw_freq_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(mw_freq_reg[31]));
  FDCE \mw_freq_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(mw_freq_reg[3]));
  FDCE \mw_freq_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(mw_freq_reg[4]));
  FDCE \mw_freq_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(mw_freq_reg[5]));
  FDCE \mw_freq_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(mw_freq_reg[6]));
  FDCE \mw_freq_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(mw_freq_reg[7]));
  FDCE \mw_freq_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(mw_freq_reg[8]));
  FDPE \mw_freq_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\mw_freq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .PRE(wr_en_i_1_n_0),
        .Q(mw_freq_reg[9]));
  LUT4 #(
    .INIT(16'h596A)) 
    mw_i_i_1
       (.I0(\mw_phase_reg_r_reg[1]_1 [1]),
        .I1(\mw_phase_reg_r_reg[1]_1 [0]),
        .I2(p_1_in),
        .I3(p_0_in),
        .O(\mw_phase_reg_r_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \mw_phase_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(wr_en_reg_0),
        .I4(s_axi_awaddr[3]),
        .I5(\mmcm_cfg_reg_r[31]_i_2_n_0 ),
        .O(\mw_phase_reg_r[31]_i_1_n_0 ));
  FDCE \mw_phase_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\mw_phase_reg_r_reg[1]_1 [0]));
  FDCE \mw_phase_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(mw_phase_reg[10]));
  FDCE \mw_phase_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(mw_phase_reg[11]));
  FDCE \mw_phase_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(mw_phase_reg[12]));
  FDCE \mw_phase_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(mw_phase_reg[13]));
  FDCE \mw_phase_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(mw_phase_reg[14]));
  FDCE \mw_phase_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(mw_phase_reg[15]));
  FDCE \mw_phase_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(mw_phase_reg[16]));
  FDCE \mw_phase_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(mw_phase_reg[17]));
  FDCE \mw_phase_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(mw_phase_reg[18]));
  FDCE \mw_phase_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(mw_phase_reg[19]));
  FDCE \mw_phase_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(\mw_phase_reg_r_reg[1]_1 [1]));
  FDCE \mw_phase_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(mw_phase_reg[20]));
  FDCE \mw_phase_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(mw_phase_reg[21]));
  FDCE \mw_phase_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(mw_phase_reg[22]));
  FDCE \mw_phase_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(mw_phase_reg[23]));
  FDCE \mw_phase_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(mw_phase_reg[24]));
  FDCE \mw_phase_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(mw_phase_reg[25]));
  FDCE \mw_phase_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(mw_phase_reg[26]));
  FDCE \mw_phase_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(mw_phase_reg[27]));
  FDCE \mw_phase_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(mw_phase_reg[28]));
  FDCE \mw_phase_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(mw_phase_reg[29]));
  FDCE \mw_phase_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(mw_phase_reg[2]));
  FDCE \mw_phase_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(mw_phase_reg[30]));
  FDCE \mw_phase_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(mw_phase_reg[31]));
  FDCE \mw_phase_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(mw_phase_reg[3]));
  FDCE \mw_phase_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(mw_phase_reg[4]));
  FDCE \mw_phase_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(mw_phase_reg[5]));
  FDCE \mw_phase_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(mw_phase_reg[6]));
  FDCE \mw_phase_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(mw_phase_reg[7]));
  FDCE \mw_phase_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(mw_phase_reg[8]));
  FDCE \mw_phase_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\mw_phase_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(mw_phase_reg[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[0]_i_2 
       (.I0(mw_freq_reg[3]),
        .I1(\phase_acc_reg[3]_2 ),
        .O(\phase_acc[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[0]_i_3 
       (.I0(mw_freq_reg[2]),
        .I1(\phase_acc_reg[3]_1 ),
        .O(\phase_acc[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[0]_i_4 
       (.I0(mw_freq_reg[1]),
        .I1(\phase_acc_reg[3]_0 ),
        .O(\phase_acc[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[0]_i_5 
       (.I0(mw_freq_reg[0]),
        .I1(\phase_acc_reg[3] ),
        .O(\phase_acc[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[12]_i_2 
       (.I0(mw_freq_reg[15]),
        .I1(\phase_acc_reg[15]_2 ),
        .O(\phase_acc[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[12]_i_3 
       (.I0(mw_freq_reg[14]),
        .I1(\phase_acc_reg[15]_1 ),
        .O(\phase_acc[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[12]_i_4 
       (.I0(mw_freq_reg[13]),
        .I1(\phase_acc_reg[15]_0 ),
        .O(\phase_acc[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[12]_i_5 
       (.I0(mw_freq_reg[12]),
        .I1(\phase_acc_reg[15] ),
        .O(\phase_acc[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[16]_i_2 
       (.I0(mw_freq_reg[19]),
        .I1(\phase_acc_reg[19]_2 ),
        .O(\phase_acc[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[16]_i_3 
       (.I0(mw_freq_reg[18]),
        .I1(\phase_acc_reg[19]_1 ),
        .O(\phase_acc[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[16]_i_4 
       (.I0(mw_freq_reg[17]),
        .I1(\phase_acc_reg[19]_0 ),
        .O(\phase_acc[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[16]_i_5 
       (.I0(mw_freq_reg[16]),
        .I1(\phase_acc_reg[19] ),
        .O(\phase_acc[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[20]_i_2 
       (.I0(mw_freq_reg[23]),
        .I1(\phase_acc_reg[23]_2 ),
        .O(\phase_acc[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[20]_i_3 
       (.I0(mw_freq_reg[22]),
        .I1(\phase_acc_reg[23]_1 ),
        .O(\phase_acc[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[20]_i_4 
       (.I0(mw_freq_reg[21]),
        .I1(\phase_acc_reg[23]_0 ),
        .O(\phase_acc[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[20]_i_5 
       (.I0(mw_freq_reg[20]),
        .I1(\phase_acc_reg[23] ),
        .O(\phase_acc[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[24]_i_2 
       (.I0(mw_freq_reg[27]),
        .I1(\phase_acc_reg[27]_2 ),
        .O(\phase_acc[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[24]_i_3 
       (.I0(mw_freq_reg[26]),
        .I1(\phase_acc_reg[27]_1 ),
        .O(\phase_acc[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[24]_i_4 
       (.I0(mw_freq_reg[25]),
        .I1(\phase_acc_reg[27]_0 ),
        .O(\phase_acc[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[24]_i_5 
       (.I0(mw_freq_reg[24]),
        .I1(\phase_acc_reg[27] ),
        .O(\phase_acc[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[28]_i_2 
       (.I0(mw_freq_reg[31]),
        .I1(p_0_in),
        .O(\phase_acc[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[28]_i_3 
       (.I0(mw_freq_reg[30]),
        .I1(p_1_in),
        .O(\phase_acc[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[28]_i_4 
       (.I0(mw_freq_reg[29]),
        .I1(\phase_acc_reg[31]_0 ),
        .O(\phase_acc[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[28]_i_5 
       (.I0(mw_freq_reg[28]),
        .I1(\phase_acc_reg[31] ),
        .O(\phase_acc[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[4]_i_2 
       (.I0(mw_freq_reg[7]),
        .I1(\phase_acc_reg[7]_2 ),
        .O(\phase_acc[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[4]_i_3 
       (.I0(mw_freq_reg[6]),
        .I1(\phase_acc_reg[7]_1 ),
        .O(\phase_acc[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[4]_i_4 
       (.I0(mw_freq_reg[5]),
        .I1(\phase_acc_reg[7]_0 ),
        .O(\phase_acc[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[4]_i_5 
       (.I0(mw_freq_reg[4]),
        .I1(\phase_acc_reg[7] ),
        .O(\phase_acc[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[8]_i_2 
       (.I0(mw_freq_reg[11]),
        .I1(\phase_acc_reg[11]_2 ),
        .O(\phase_acc[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[8]_i_3 
       (.I0(mw_freq_reg[10]),
        .I1(\phase_acc_reg[11]_1 ),
        .O(\phase_acc[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[8]_i_4 
       (.I0(mw_freq_reg[9]),
        .I1(\phase_acc_reg[11]_0 ),
        .O(\phase_acc[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_acc[8]_i_5 
       (.I0(mw_freq_reg[8]),
        .I1(\phase_acc_reg[11] ),
        .O(\phase_acc[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_acc_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\phase_acc_reg[0]_i_1_n_0 ,\phase_acc_reg[0]_i_1_n_1 ,\phase_acc_reg[0]_i_1_n_2 ,\phase_acc_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mw_freq_reg[3:0]),
        .O(\mw_freq_reg_r_reg[3]_0 ),
        .S({\phase_acc[0]_i_2_n_0 ,\phase_acc[0]_i_3_n_0 ,\phase_acc[0]_i_4_n_0 ,\phase_acc[0]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_acc_reg[12]_i_1 
       (.CI(\phase_acc_reg[8]_i_1_n_0 ),
        .CO({\phase_acc_reg[12]_i_1_n_0 ,\phase_acc_reg[12]_i_1_n_1 ,\phase_acc_reg[12]_i_1_n_2 ,\phase_acc_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mw_freq_reg[15:12]),
        .O(\mw_freq_reg_r_reg[15]_0 ),
        .S({\phase_acc[12]_i_2_n_0 ,\phase_acc[12]_i_3_n_0 ,\phase_acc[12]_i_4_n_0 ,\phase_acc[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_acc_reg[16]_i_1 
       (.CI(\phase_acc_reg[12]_i_1_n_0 ),
        .CO({\phase_acc_reg[16]_i_1_n_0 ,\phase_acc_reg[16]_i_1_n_1 ,\phase_acc_reg[16]_i_1_n_2 ,\phase_acc_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mw_freq_reg[19:16]),
        .O(\mw_freq_reg_r_reg[19]_0 ),
        .S({\phase_acc[16]_i_2_n_0 ,\phase_acc[16]_i_3_n_0 ,\phase_acc[16]_i_4_n_0 ,\phase_acc[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_acc_reg[20]_i_1 
       (.CI(\phase_acc_reg[16]_i_1_n_0 ),
        .CO({\phase_acc_reg[20]_i_1_n_0 ,\phase_acc_reg[20]_i_1_n_1 ,\phase_acc_reg[20]_i_1_n_2 ,\phase_acc_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mw_freq_reg[23:20]),
        .O(\mw_freq_reg_r_reg[23]_0 ),
        .S({\phase_acc[20]_i_2_n_0 ,\phase_acc[20]_i_3_n_0 ,\phase_acc[20]_i_4_n_0 ,\phase_acc[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_acc_reg[24]_i_1 
       (.CI(\phase_acc_reg[20]_i_1_n_0 ),
        .CO({\phase_acc_reg[24]_i_1_n_0 ,\phase_acc_reg[24]_i_1_n_1 ,\phase_acc_reg[24]_i_1_n_2 ,\phase_acc_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mw_freq_reg[27:24]),
        .O(\mw_freq_reg_r_reg[27]_0 ),
        .S({\phase_acc[24]_i_2_n_0 ,\phase_acc[24]_i_3_n_0 ,\phase_acc[24]_i_4_n_0 ,\phase_acc[24]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_acc_reg[28]_i_1 
       (.CI(\phase_acc_reg[24]_i_1_n_0 ),
        .CO({\NLW_phase_acc_reg[28]_i_1_CO_UNCONNECTED [3],\phase_acc_reg[28]_i_1_n_1 ,\phase_acc_reg[28]_i_1_n_2 ,\phase_acc_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mw_freq_reg[30:28]}),
        .O(\mw_freq_reg_r_reg[30]_0 ),
        .S({\phase_acc[28]_i_2_n_0 ,\phase_acc[28]_i_3_n_0 ,\phase_acc[28]_i_4_n_0 ,\phase_acc[28]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_acc_reg[4]_i_1 
       (.CI(\phase_acc_reg[0]_i_1_n_0 ),
        .CO({\phase_acc_reg[4]_i_1_n_0 ,\phase_acc_reg[4]_i_1_n_1 ,\phase_acc_reg[4]_i_1_n_2 ,\phase_acc_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mw_freq_reg[7:4]),
        .O(\mw_freq_reg_r_reg[7]_0 ),
        .S({\phase_acc[4]_i_2_n_0 ,\phase_acc[4]_i_3_n_0 ,\phase_acc[4]_i_4_n_0 ,\phase_acc[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_acc_reg[8]_i_1 
       (.CI(\phase_acc_reg[4]_i_1_n_0 ),
        .CO({\phase_acc_reg[8]_i_1_n_0 ,\phase_acc_reg[8]_i_1_n_1 ,\phase_acc_reg[8]_i_1_n_2 ,\phase_acc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mw_freq_reg[11:8]),
        .O(\mw_freq_reg_r_reg[11]_0 ),
        .S({\phase_acc[8]_i_2_n_0 ,\phase_acc[8]_i_3_n_0 ,\phase_acc[8]_i_4_n_0 ,\phase_acc[8]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \pulse0_cfg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\pulse0_cfg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[4]),
        .I5(\pulse0_cfg_r[31]_i_3_n_0 ),
        .O(\pulse0_cfg_r[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pulse0_cfg_r[31]_i_2 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[6]),
        .O(\pulse0_cfg_r[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \pulse0_cfg_r[31]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(wr_en_reg_0),
        .I3(s_axi_awaddr[5]),
        .I4(s_axi_awaddr[2]),
        .O(\pulse0_cfg_r[31]_i_3_n_0 ));
  FDCE \pulse0_cfg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(pulse0_cfg[0]));
  FDCE \pulse0_cfg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(pulse0_cfg[10]));
  FDCE \pulse0_cfg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(pulse0_cfg[11]));
  FDPE \pulse0_cfg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse0_cfg[12]));
  FDCE \pulse0_cfg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(pulse0_cfg[13]));
  FDCE \pulse0_cfg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(pulse0_cfg[14]));
  FDCE \pulse0_cfg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(pulse0_cfg[15]));
  FDCE \pulse0_cfg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(pulse0_cfg[16]));
  FDCE \pulse0_cfg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(pulse0_cfg[17]));
  FDCE \pulse0_cfg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(pulse0_cfg[18]));
  FDCE \pulse0_cfg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(pulse0_cfg[19]));
  FDCE \pulse0_cfg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(pulse0_cfg[1]));
  FDCE \pulse0_cfg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(pulse0_cfg[20]));
  FDCE \pulse0_cfg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(pulse0_cfg[21]));
  FDCE \pulse0_cfg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(pulse0_cfg[22]));
  FDCE \pulse0_cfg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(pulse0_cfg[23]));
  FDCE \pulse0_cfg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(pulse0_cfg[24]));
  FDCE \pulse0_cfg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(pulse0_cfg[25]));
  FDCE \pulse0_cfg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(pulse0_cfg[26]));
  FDCE \pulse0_cfg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(pulse0_cfg[27]));
  FDCE \pulse0_cfg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(pulse0_cfg[28]));
  FDCE \pulse0_cfg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(pulse0_cfg[29]));
  FDCE \pulse0_cfg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(pulse0_cfg[2]));
  FDCE \pulse0_cfg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(pulse0_cfg[30]));
  FDCE \pulse0_cfg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(pulse0_cfg[31]));
  FDPE \pulse0_cfg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse0_cfg[3]));
  FDCE \pulse0_cfg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(pulse0_cfg[4]));
  FDCE \pulse0_cfg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(pulse0_cfg[5]));
  FDCE \pulse0_cfg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(pulse0_cfg[6]));
  FDPE \pulse0_cfg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse0_cfg[7]));
  FDPE \pulse0_cfg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse0_cfg[8]));
  FDPE \pulse0_cfg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pulse0_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse0_cfg[9]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \pulse1_cfg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\pulse1_cfg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[4]),
        .I3(s_axi_awaddr[3]),
        .I4(\pulse1_cfg_r[31]_i_3_n_0 ),
        .O(\pulse1_cfg_r[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \pulse1_cfg_r[31]_i_2 
       (.I0(wr_en_reg_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .O(\pulse1_cfg_r[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \pulse1_cfg_r[31]_i_3 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[6]),
        .I4(s_axi_awaddr[0]),
        .O(\pulse1_cfg_r[31]_i_3_n_0 ));
  FDCE \pulse1_cfg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(pulse1_cfg[0]));
  FDCE \pulse1_cfg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(pulse1_cfg[10]));
  FDCE \pulse1_cfg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(pulse1_cfg[11]));
  FDCE \pulse1_cfg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(pulse1_cfg[12]));
  FDCE \pulse1_cfg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(pulse1_cfg[13]));
  FDCE \pulse1_cfg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(pulse1_cfg[14]));
  FDCE \pulse1_cfg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(pulse1_cfg[15]));
  FDCE \pulse1_cfg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(pulse1_cfg[16]));
  FDCE \pulse1_cfg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(pulse1_cfg[17]));
  FDPE \pulse1_cfg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse1_cfg[18]));
  FDCE \pulse1_cfg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(pulse1_cfg[19]));
  FDCE \pulse1_cfg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(pulse1_cfg[1]));
  FDPE \pulse1_cfg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse1_cfg[20]));
  FDCE \pulse1_cfg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(pulse1_cfg[21]));
  FDCE \pulse1_cfg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(pulse1_cfg[22]));
  FDCE \pulse1_cfg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(pulse1_cfg[23]));
  FDCE \pulse1_cfg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(pulse1_cfg[24]));
  FDCE \pulse1_cfg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(pulse1_cfg[25]));
  FDCE \pulse1_cfg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(pulse1_cfg[26]));
  FDCE \pulse1_cfg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(pulse1_cfg[27]));
  FDCE \pulse1_cfg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(pulse1_cfg[28]));
  FDCE \pulse1_cfg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(pulse1_cfg[29]));
  FDCE \pulse1_cfg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(pulse1_cfg[2]));
  FDCE \pulse1_cfg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(pulse1_cfg[30]));
  FDCE \pulse1_cfg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(pulse1_cfg[31]));
  FDPE \pulse1_cfg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse1_cfg[3]));
  FDCE \pulse1_cfg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(pulse1_cfg[4]));
  FDPE \pulse1_cfg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse1_cfg[5]));
  FDCE \pulse1_cfg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(pulse1_cfg[6]));
  FDCE \pulse1_cfg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(pulse1_cfg[7]));
  FDCE \pulse1_cfg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(pulse1_cfg[8]));
  FDCE \pulse1_cfg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pulse1_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(pulse1_cfg[9]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \pulse2_cfg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\pulse0_cfg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[4]),
        .I4(s_axi_awaddr[0]),
        .I5(\pulse0_cfg_r[31]_i_3_n_0 ),
        .O(\pulse2_cfg_r[31]_i_1_n_0 ));
  FDCE \pulse2_cfg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(pulse2_cfg[0]));
  FDCE \pulse2_cfg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(pulse2_cfg[10]));
  FDCE \pulse2_cfg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(pulse2_cfg[11]));
  FDPE \pulse2_cfg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse2_cfg[12]));
  FDCE \pulse2_cfg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(pulse2_cfg[13]));
  FDCE \pulse2_cfg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(pulse2_cfg[14]));
  FDCE \pulse2_cfg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(pulse2_cfg[15]));
  FDCE \pulse2_cfg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(pulse2_cfg[16]));
  FDCE \pulse2_cfg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(pulse2_cfg[17]));
  FDCE \pulse2_cfg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(pulse2_cfg[18]));
  FDCE \pulse2_cfg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(pulse2_cfg[19]));
  FDCE \pulse2_cfg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(pulse2_cfg[1]));
  FDCE \pulse2_cfg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(pulse2_cfg[20]));
  FDCE \pulse2_cfg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(pulse2_cfg[21]));
  FDCE \pulse2_cfg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(pulse2_cfg[22]));
  FDCE \pulse2_cfg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(pulse2_cfg[23]));
  FDCE \pulse2_cfg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(pulse2_cfg[24]));
  FDCE \pulse2_cfg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(pulse2_cfg[25]));
  FDCE \pulse2_cfg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(pulse2_cfg[26]));
  FDCE \pulse2_cfg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(pulse2_cfg[27]));
  FDCE \pulse2_cfg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(pulse2_cfg[28]));
  FDCE \pulse2_cfg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(pulse2_cfg[29]));
  FDCE \pulse2_cfg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(pulse2_cfg[2]));
  FDCE \pulse2_cfg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(pulse2_cfg[30]));
  FDCE \pulse2_cfg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(pulse2_cfg[31]));
  FDPE \pulse2_cfg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse2_cfg[3]));
  FDCE \pulse2_cfg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(pulse2_cfg[4]));
  FDCE \pulse2_cfg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(pulse2_cfg[5]));
  FDCE \pulse2_cfg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(pulse2_cfg[6]));
  FDPE \pulse2_cfg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse2_cfg[7]));
  FDPE \pulse2_cfg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse2_cfg[8]));
  FDPE \pulse2_cfg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pulse2_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse2_cfg[9]));
  LUT5 #(
    .INIT(32'h00002000)) 
    \pulse3_cfg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\pulse1_cfg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[5]),
        .I4(\pulse3_cfg_r[31]_i_2_n_0 ),
        .O(\pulse3_cfg_r[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \pulse3_cfg_r[31]_i_2 
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[4]),
        .I4(s_axi_awaddr[0]),
        .O(\pulse3_cfg_r[31]_i_2_n_0 ));
  FDCE \pulse3_cfg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(pulse3_cfg[0]));
  FDCE \pulse3_cfg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(pulse3_cfg[10]));
  FDCE \pulse3_cfg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(pulse3_cfg[11]));
  FDPE \pulse3_cfg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse3_cfg[12]));
  FDCE \pulse3_cfg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(pulse3_cfg[13]));
  FDCE \pulse3_cfg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(pulse3_cfg[14]));
  FDCE \pulse3_cfg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(pulse3_cfg[15]));
  FDCE \pulse3_cfg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(pulse3_cfg[16]));
  FDCE \pulse3_cfg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(pulse3_cfg[17]));
  FDCE \pulse3_cfg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(pulse3_cfg[18]));
  FDCE \pulse3_cfg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(pulse3_cfg[19]));
  FDCE \pulse3_cfg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(pulse3_cfg[1]));
  FDCE \pulse3_cfg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(pulse3_cfg[20]));
  FDCE \pulse3_cfg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(pulse3_cfg[21]));
  FDCE \pulse3_cfg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(pulse3_cfg[22]));
  FDCE \pulse3_cfg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(pulse3_cfg[23]));
  FDCE \pulse3_cfg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(pulse3_cfg[24]));
  FDCE \pulse3_cfg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(pulse3_cfg[25]));
  FDCE \pulse3_cfg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(pulse3_cfg[26]));
  FDCE \pulse3_cfg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(pulse3_cfg[27]));
  FDCE \pulse3_cfg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(pulse3_cfg[28]));
  FDCE \pulse3_cfg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(pulse3_cfg[29]));
  FDCE \pulse3_cfg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(pulse3_cfg[2]));
  FDCE \pulse3_cfg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(pulse3_cfg[30]));
  FDCE \pulse3_cfg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(pulse3_cfg[31]));
  FDPE \pulse3_cfg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse3_cfg[3]));
  FDCE \pulse3_cfg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(pulse3_cfg[4]));
  FDCE \pulse3_cfg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(pulse3_cfg[5]));
  FDCE \pulse3_cfg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(pulse3_cfg[6]));
  FDPE \pulse3_cfg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse3_cfg[7]));
  FDPE \pulse3_cfg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse3_cfg[8]));
  FDPE \pulse3_cfg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pulse3_cfg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse3_cfg[9]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    pulse_0_i_1
       (.I0(pulse_0_reg),
        .I1(pulse_0_reg_0),
        .I2(ctrl_reg[4]),
        .I3(ctrl_reg[1]),
        .I4(pulse_seq_reg[0]),
        .I5(mmcm_locked),
        .O(pulse_00));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_100
       (.I0(\pulse0_cfg_r_reg[9]_0 [2]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_48_0[0]),
        .O(\u_pulse_gen/p_0_in [4]));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_101
       (.I0(\pulse0_cfg_r_reg[9]_0 [1]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_90_0[3]),
        .O(\u_pulse_gen/p_0_in [3]));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_0_i_102
       (.I0(pulse0_cfg[14]),
        .I1(pulse0_cfg[12]),
        .I2(pulse0_cfg[13]),
        .I3(pulse0_cfg[11]),
        .I4(pulse_0_reg_i_122_n_2),
        .O(pulse_0_i_102_n_0));
  LUT6 #(
    .INIT(64'h9696009600960000)) 
    pulse_0_i_103
       (.I0(pulse0_cfg[13]),
        .I1(pulse_0_reg_i_122_n_2),
        .I2(pulse0_cfg[11]),
        .I3(pulse0_cfg[12]),
        .I4(pulse0_cfg[10]),
        .I5(pulse_0_reg_i_122_n_7),
        .O(pulse_0_i_103_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_104
       (.I0(pulse0_cfg[11]),
        .I1(pulse0_cfg[9]),
        .I2(pulse_0_reg_i_161_n_4),
        .I3(pulse0_cfg[15]),
        .I4(pulse_0_i_162_n_0),
        .O(pulse_0_i_104_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_105
       (.I0(pulse0_cfg[10]),
        .I1(pulse0_cfg[8]),
        .I2(pulse_0_reg_i_161_n_5),
        .I3(pulse0_cfg[14]),
        .I4(pulse_0_i_163_n_0),
        .O(pulse_0_i_105_n_0));
  LUT6 #(
    .INIT(64'hEC13C83737C8EC13)) 
    pulse_0_i_106
       (.I0(pulse0_cfg[11]),
        .I1(pulse0_cfg[13]),
        .I2(pulse_0_reg_i_122_n_2),
        .I3(pulse0_cfg[15]),
        .I4(pulse0_cfg[12]),
        .I5(pulse0_cfg[14]),
        .O(pulse_0_i_106_n_0));
  LUT6 #(
    .INIT(64'h6699699696696699)) 
    pulse_0_i_107
       (.I0(pulse_0_i_103_n_0),
        .I1(pulse0_cfg[12]),
        .I2(pulse_0_reg_i_122_n_2),
        .I3(pulse0_cfg[14]),
        .I4(pulse0_cfg[11]),
        .I5(pulse0_cfg[13]),
        .O(pulse_0_i_107_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    pulse_0_i_108
       (.I0(pulse0_cfg[15]),
        .I1(pulse_0_i_164_n_0),
        .I2(pulse_0_i_165_n_0),
        .I3(pulse_0_reg_i_122_n_7),
        .I4(pulse0_cfg[10]),
        .I5(pulse0_cfg[12]),
        .O(pulse_0_i_108_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_109
       (.I0(pulse_0_i_105_n_0),
        .I1(pulse_0_i_162_n_0),
        .I2(pulse0_cfg[15]),
        .I3(pulse_0_reg_i_161_n_4),
        .I4(pulse0_cfg[9]),
        .I5(pulse0_cfg[11]),
        .O(pulse_0_i_109_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_112
       (.I0(pulse_0_reg_i_62_0[3]),
        .I1(pulse0_cfg[30]),
        .O(pulse_0_i_112_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_113
       (.I0(pulse_0_reg_i_62_0[2]),
        .I1(pulse0_cfg[29]),
        .O(pulse_0_i_113_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_114
       (.I0(pulse0_cfg[30]),
        .I1(pulse_0_reg_i_62_0[3]),
        .I2(pulse_0_i_32),
        .I3(pulse0_cfg[31]),
        .O(pulse_0_i_114_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_115
       (.I0(pulse0_cfg[29]),
        .I1(pulse_0_reg_i_62_0[2]),
        .I2(pulse_0_reg_i_62_0[3]),
        .I3(pulse0_cfg[30]),
        .O(pulse_0_i_115_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_118
       (.I0(pulse_0_reg_i_64_0[3]),
        .I1(pulse0_cfg[14]),
        .O(pulse_0_i_118_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_119
       (.I0(pulse_0_reg_i_64_0[2]),
        .I1(pulse0_cfg[13]),
        .O(pulse_0_i_119_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_120
       (.I0(pulse0_cfg[14]),
        .I1(pulse_0_reg_i_64_0[3]),
        .I2(pulse_0_i_8_0),
        .I3(pulse0_cfg[15]),
        .O(pulse_0_i_120_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_121
       (.I0(pulse0_cfg[13]),
        .I1(pulse_0_reg_i_64_0[2]),
        .I2(pulse_0_reg_i_64_0[3]),
        .I3(pulse0_cfg[14]),
        .O(pulse_0_i_121_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_123
       (.I0(pulse0_cfg[25]),
        .I1(pulse0_cfg[23]),
        .I2(pulse_0_reg_i_142_n_6),
        .I3(pulse0_cfg[29]),
        .I4(pulse_0_i_193_n_0),
        .O(pulse_0_i_123_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_124
       (.I0(pulse0_cfg[24]),
        .I1(pulse0_cfg[22]),
        .I2(pulse_0_reg_i_142_n_7),
        .I3(pulse0_cfg[28]),
        .I4(pulse_0_i_194_n_0),
        .O(pulse_0_i_124_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_125
       (.I0(pulse0_cfg[23]),
        .I1(pulse0_cfg[21]),
        .I2(pulse_0_reg_i_195_n_4),
        .I3(pulse0_cfg[27]),
        .I4(pulse_0_i_196_n_0),
        .O(pulse_0_i_125_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_126
       (.I0(pulse0_cfg[22]),
        .I1(pulse0_cfg[20]),
        .I2(pulse_0_reg_i_195_n_5),
        .I3(pulse0_cfg[26]),
        .I4(pulse_0_i_197_n_0),
        .O(pulse_0_i_126_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_127
       (.I0(pulse_0_i_123_n_0),
        .I1(pulse_0_i_144_n_0),
        .I2(pulse0_cfg[30]),
        .I3(pulse_0_reg_i_142_n_5),
        .I4(pulse0_cfg[24]),
        .I5(pulse0_cfg[26]),
        .O(pulse_0_i_127_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_128
       (.I0(pulse_0_i_124_n_0),
        .I1(pulse_0_i_193_n_0),
        .I2(pulse0_cfg[29]),
        .I3(pulse_0_reg_i_142_n_6),
        .I4(pulse0_cfg[23]),
        .I5(pulse0_cfg[25]),
        .O(pulse_0_i_128_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_129
       (.I0(pulse_0_i_125_n_0),
        .I1(pulse_0_i_194_n_0),
        .I2(pulse0_cfg[28]),
        .I3(pulse_0_reg_i_142_n_7),
        .I4(pulse0_cfg[22]),
        .I5(pulse0_cfg[24]),
        .O(pulse_0_i_129_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_130
       (.I0(pulse_0_i_126_n_0),
        .I1(pulse_0_i_196_n_0),
        .I2(pulse0_cfg[27]),
        .I3(pulse_0_reg_i_195_n_4),
        .I4(pulse0_cfg[21]),
        .I5(pulse0_cfg[23]),
        .O(pulse_0_i_130_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_133
       (.I0(pulse0_cfg[21]),
        .I1(pulse0_cfg[19]),
        .I2(pulse_0_reg_i_195_n_6),
        .I3(pulse0_cfg[25]),
        .I4(pulse_0_i_206_n_0),
        .O(pulse_0_i_133_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_134
       (.I0(pulse0_cfg[20]),
        .I1(pulse_0_reg_i_195_n_7),
        .I2(pulse0_cfg[18]),
        .I3(pulse0_cfg[24]),
        .I4(pulse_0_i_207_n_0),
        .O(pulse_0_i_134_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_135
       (.I0(pulse0_cfg[19]),
        .I1(pulse_0_reg_i_208_n_4),
        .I2(pulse0_cfg[17]),
        .I3(pulse0_cfg[23]),
        .I4(pulse_0_i_209_n_0),
        .O(pulse_0_i_135_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_136
       (.I0(pulse0_cfg[18]),
        .I1(pulse_0_reg_i_208_n_5),
        .I2(pulse0_cfg[16]),
        .I3(pulse0_cfg[22]),
        .I4(pulse_0_i_210_n_0),
        .O(pulse_0_i_136_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_137
       (.I0(pulse_0_i_133_n_0),
        .I1(pulse_0_i_197_n_0),
        .I2(pulse0_cfg[26]),
        .I3(pulse_0_reg_i_195_n_5),
        .I4(pulse0_cfg[20]),
        .I5(pulse0_cfg[22]),
        .O(pulse_0_i_137_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_138
       (.I0(pulse_0_i_134_n_0),
        .I1(pulse_0_i_206_n_0),
        .I2(pulse0_cfg[25]),
        .I3(pulse_0_reg_i_195_n_6),
        .I4(pulse0_cfg[19]),
        .I5(pulse0_cfg[21]),
        .O(pulse_0_i_138_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_139
       (.I0(pulse_0_i_135_n_0),
        .I1(pulse_0_i_207_n_0),
        .I2(pulse0_cfg[24]),
        .I3(pulse0_cfg[18]),
        .I4(pulse_0_reg_i_195_n_7),
        .I5(pulse0_cfg[20]),
        .O(pulse_0_i_139_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_140
       (.I0(pulse_0_i_136_n_0),
        .I1(pulse_0_i_209_n_0),
        .I2(pulse0_cfg[23]),
        .I3(pulse0_cfg[17]),
        .I4(pulse_0_reg_i_208_n_4),
        .I5(pulse0_cfg[19]),
        .O(pulse_0_i_140_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_143
       (.I0(pulse0_cfg[26]),
        .I1(pulse_0_reg_i_141_n_7),
        .I2(pulse0_cfg[28]),
        .O(pulse_0_i_143_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_144
       (.I0(pulse0_cfg[25]),
        .I1(pulse_0_reg_i_142_n_4),
        .I2(pulse0_cfg[27]),
        .O(pulse_0_i_144_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_145
       (.I0(pulse_0_reg_i_142_n_4),
        .I1(pulse0_cfg[25]),
        .I2(pulse0_cfg[27]),
        .O(pulse_0_i_145_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_0_i_146
       (.I0(pulse0_cfg[27]),
        .I1(pulse_0_reg_i_141_n_2),
        .I2(pulse0_cfg[29]),
        .O(pulse_0_i_146_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_148
       (.I0(\pulse0_cfg_r_reg[19]_0 [1]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_90_1[1]),
        .O(pulse_0_i_148_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_149
       (.I0(\pulse0_cfg_r_reg[9]_0 [0]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_90_0[2]),
        .O(\u_pulse_gen/p_0_in [2]));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_150
       (.I0(O[1]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_90_0[1]),
        .O(\u_pulse_gen/p_0_in [1]));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_151
       (.I0(O[0]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_90_0[0]),
        .O(\u_pulse_gen/p_0_in [0]));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_152
       (.I0(pulse0_cfg[9]),
        .I1(pulse0_cfg[7]),
        .I2(pulse_0_reg_i_161_n_6),
        .I3(pulse0_cfg[13]),
        .I4(pulse_0_i_228_n_0),
        .O(pulse_0_i_152_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_153
       (.I0(pulse0_cfg[8]),
        .I1(pulse0_cfg[6]),
        .I2(pulse_0_reg_i_161_n_7),
        .I3(pulse0_cfg[12]),
        .I4(pulse_0_i_229_n_0),
        .O(pulse_0_i_153_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_154
       (.I0(pulse0_cfg[7]),
        .I1(pulse0_cfg[5]),
        .I2(pulse_0_reg_i_230_n_4),
        .I3(pulse0_cfg[11]),
        .I4(pulse_0_i_231_n_0),
        .O(pulse_0_i_154_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_155
       (.I0(pulse0_cfg[6]),
        .I1(pulse0_cfg[4]),
        .I2(pulse_0_reg_i_230_n_5),
        .I3(pulse0_cfg[10]),
        .I4(pulse_0_i_232_n_0),
        .O(pulse_0_i_155_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_156
       (.I0(pulse_0_i_152_n_0),
        .I1(pulse_0_i_163_n_0),
        .I2(pulse0_cfg[14]),
        .I3(pulse_0_reg_i_161_n_5),
        .I4(pulse0_cfg[8]),
        .I5(pulse0_cfg[10]),
        .O(pulse_0_i_156_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_157
       (.I0(pulse_0_i_153_n_0),
        .I1(pulse_0_i_228_n_0),
        .I2(pulse0_cfg[13]),
        .I3(pulse_0_reg_i_161_n_6),
        .I4(pulse0_cfg[7]),
        .I5(pulse0_cfg[9]),
        .O(pulse_0_i_157_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_158
       (.I0(pulse_0_i_154_n_0),
        .I1(pulse_0_i_229_n_0),
        .I2(pulse0_cfg[12]),
        .I3(pulse_0_reg_i_161_n_7),
        .I4(pulse0_cfg[6]),
        .I5(pulse0_cfg[8]),
        .O(pulse_0_i_158_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_159
       (.I0(pulse_0_i_155_n_0),
        .I1(pulse_0_i_231_n_0),
        .I2(pulse0_cfg[11]),
        .I3(pulse_0_reg_i_230_n_4),
        .I4(pulse0_cfg[5]),
        .I5(pulse0_cfg[7]),
        .O(pulse_0_i_159_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_162
       (.I0(pulse0_cfg[10]),
        .I1(pulse_0_reg_i_122_n_7),
        .I2(pulse0_cfg[12]),
        .O(pulse_0_i_162_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_163
       (.I0(pulse0_cfg[9]),
        .I1(pulse_0_reg_i_161_n_4),
        .I2(pulse0_cfg[11]),
        .O(pulse_0_i_163_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_164
       (.I0(pulse_0_reg_i_161_n_4),
        .I1(pulse0_cfg[9]),
        .I2(pulse0_cfg[11]),
        .O(pulse_0_i_164_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_0_i_165
       (.I0(pulse0_cfg[11]),
        .I1(pulse_0_reg_i_122_n_2),
        .I2(pulse0_cfg[13]),
        .O(pulse_0_i_165_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_17
       (.I0(\pulse0_cfg_r_reg[15]_0 [0]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_21_0[2]),
        .I3(Q[10]),
        .I4(\pulse0_cfg_r_reg[31]_0 ),
        .O(pulse_0_i_17_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_171
       (.I0(pulse_0_reg_i_62_0[1]),
        .I1(pulse0_cfg[28]),
        .O(pulse_0_i_171_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_172
       (.I0(pulse_0_reg_i_62_0[0]),
        .I1(pulse0_cfg[27]),
        .O(pulse_0_i_172_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_173
       (.I0(pulse_0_reg_i_111_0[3]),
        .I1(pulse0_cfg[26]),
        .O(pulse_0_i_173_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_174
       (.I0(pulse_0_reg_i_111_0[2]),
        .I1(pulse0_cfg[25]),
        .O(pulse_0_i_174_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_175
       (.I0(pulse0_cfg[28]),
        .I1(pulse_0_reg_i_62_0[1]),
        .I2(pulse_0_reg_i_62_0[2]),
        .I3(pulse0_cfg[29]),
        .O(pulse_0_i_175_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_176
       (.I0(pulse0_cfg[27]),
        .I1(pulse_0_reg_i_62_0[0]),
        .I2(pulse_0_reg_i_62_0[1]),
        .I3(pulse0_cfg[28]),
        .O(pulse_0_i_176_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_177
       (.I0(pulse0_cfg[26]),
        .I1(pulse_0_reg_i_111_0[3]),
        .I2(pulse_0_reg_i_62_0[0]),
        .I3(pulse0_cfg[27]),
        .O(pulse_0_i_177_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_178
       (.I0(pulse0_cfg[25]),
        .I1(pulse_0_reg_i_111_0[2]),
        .I2(pulse_0_reg_i_111_0[3]),
        .I3(pulse0_cfg[26]),
        .O(pulse_0_i_178_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_18
       (.I0(\pulse0_cfg_r_reg[14]_0 [3]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_21_0[1]),
        .I3(Q[9]),
        .I4(pulse_0_i_53_n_0),
        .O(pulse_0_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_184
       (.I0(pulse_0_reg_i_64_0[1]),
        .I1(pulse0_cfg[12]),
        .O(pulse_0_i_184_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_185
       (.I0(pulse_0_reg_i_64_0[0]),
        .I1(pulse0_cfg[11]),
        .O(pulse_0_i_185_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_186
       (.I0(pulse_0_reg_i_117_0[3]),
        .I1(pulse0_cfg[10]),
        .O(pulse_0_i_186_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_187
       (.I0(pulse_0_reg_i_117_0[2]),
        .I1(pulse0_cfg[9]),
        .O(pulse_0_i_187_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_188
       (.I0(pulse0_cfg[12]),
        .I1(pulse_0_reg_i_64_0[1]),
        .I2(pulse_0_reg_i_64_0[2]),
        .I3(pulse0_cfg[13]),
        .O(pulse_0_i_188_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_189
       (.I0(pulse0_cfg[11]),
        .I1(pulse_0_reg_i_64_0[0]),
        .I2(pulse_0_reg_i_64_0[1]),
        .I3(pulse0_cfg[12]),
        .O(pulse_0_i_189_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_19
       (.I0(\pulse0_cfg_r_reg[14]_0 [2]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_21_0[0]),
        .I3(Q[8]),
        .I4(\pulse0_cfg_r_reg[31]_1 ),
        .O(pulse_0_i_19_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_190
       (.I0(pulse0_cfg[10]),
        .I1(pulse_0_reg_i_117_0[3]),
        .I2(pulse_0_reg_i_64_0[0]),
        .I3(pulse0_cfg[11]),
        .O(pulse_0_i_190_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_191
       (.I0(pulse0_cfg[9]),
        .I1(pulse_0_reg_i_117_0[2]),
        .I2(pulse_0_reg_i_117_0[3]),
        .I3(pulse0_cfg[10]),
        .O(pulse_0_i_191_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_192
       (.I0(pulse0_cfg[15]),
        .O(pulse_0_i_192_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_193
       (.I0(pulse0_cfg[24]),
        .I1(pulse_0_reg_i_142_n_5),
        .I2(pulse0_cfg[26]),
        .O(pulse_0_i_193_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_194
       (.I0(pulse0_cfg[23]),
        .I1(pulse_0_reg_i_142_n_6),
        .I2(pulse0_cfg[25]),
        .O(pulse_0_i_194_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_196
       (.I0(pulse0_cfg[22]),
        .I1(pulse_0_reg_i_142_n_7),
        .I2(pulse0_cfg[24]),
        .O(pulse_0_i_196_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_197
       (.I0(pulse0_cfg[21]),
        .I1(pulse_0_reg_i_195_n_4),
        .I2(pulse0_cfg[23]),
        .O(pulse_0_i_197_n_0));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    pulse_0_i_199
       (.I0(pulse0_cfg[18]),
        .I1(pulse_0_reg_i_208_n_5),
        .I2(pulse0_cfg[16]),
        .I3(pulse0_cfg[22]),
        .I4(pulse_0_i_210_n_0),
        .O(pulse_0_i_199_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_20
       (.I0(\pulse0_cfg_r_reg[14]_0 [1]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_48_0[3]),
        .I3(Q[7]),
        .I4(pulse_0_i_55_n_0),
        .O(pulse_0_i_20_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pulse_0_i_200
       (.I0(pulse0_cfg[18]),
        .I1(pulse_0_reg_i_208_n_5),
        .I2(pulse0_cfg[16]),
        .I3(pulse0_cfg[21]),
        .O(pulse_0_i_200_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_0_i_201
       (.I0(pulse_0_reg_i_208_n_7),
        .I1(pulse0_cfg[16]),
        .O(pulse_0_i_201_n_0));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    pulse_0_i_202
       (.I0(pulse_0_i_210_n_0),
        .I1(pulse0_cfg[22]),
        .I2(pulse0_cfg[16]),
        .I3(pulse_0_reg_i_208_n_5),
        .I4(pulse0_cfg[18]),
        .I5(pulse0_cfg[21]),
        .O(pulse_0_i_202_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    pulse_0_i_203
       (.I0(pulse_0_i_200_n_0),
        .I1(pulse0_cfg[17]),
        .I2(pulse_0_reg_i_208_n_6),
        .I3(pulse0_cfg[20]),
        .O(pulse_0_i_203_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    pulse_0_i_204
       (.I0(pulse0_cfg[16]),
        .I1(pulse_0_reg_i_208_n_7),
        .I2(pulse0_cfg[17]),
        .I3(pulse_0_reg_i_208_n_6),
        .I4(pulse0_cfg[20]),
        .O(pulse_0_i_204_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_0_i_205
       (.I0(pulse_0_reg_i_208_n_7),
        .I1(pulse0_cfg[16]),
        .I2(pulse0_cfg[19]),
        .O(pulse_0_i_205_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_206
       (.I0(pulse0_cfg[20]),
        .I1(pulse_0_reg_i_195_n_5),
        .I2(pulse0_cfg[22]),
        .O(pulse_0_i_206_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_207
       (.I0(pulse0_cfg[19]),
        .I1(pulse_0_reg_i_195_n_6),
        .I2(pulse0_cfg[21]),
        .O(pulse_0_i_207_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_209
       (.I0(pulse0_cfg[18]),
        .I1(pulse_0_reg_i_195_n_7),
        .I2(pulse0_cfg[20]),
        .O(pulse_0_i_209_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_21
       (.I0(\pulse0_cfg_r_reg[31]_0 ),
        .I1(Q[10]),
        .I2(\u_pulse_gen/p_0_in [10]),
        .I3(\u_pulse_gen/p_0_in [11]),
        .I4(pulse_0_i_25_n_0),
        .I5(Q[11]),
        .O(pulse_0_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_210
       (.I0(pulse0_cfg[17]),
        .I1(pulse_0_reg_i_208_n_4),
        .I2(pulse0_cfg[19]),
        .O(pulse_0_i_210_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_211
       (.I0(pulse0_cfg[31]),
        .O(pulse_0_i_211_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_0_i_212
       (.I0(pulse0_cfg[31]),
        .I1(pulse0_cfg[29]),
        .O(pulse_0_i_212_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_0_i_213
       (.I0(pulse0_cfg[30]),
        .I1(pulse0_cfg[28]),
        .O(pulse_0_i_213_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_214
       (.I0(pulse0_cfg[27]),
        .I1(pulse0_cfg[29]),
        .I2(pulse0_cfg[31]),
        .O(pulse_0_i_214_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_0_i_215
       (.I0(pulse0_cfg[30]),
        .I1(pulse0_cfg[31]),
        .O(pulse_0_i_215_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    pulse_0_i_216
       (.I0(pulse0_cfg[29]),
        .I1(pulse0_cfg[31]),
        .I2(pulse0_cfg[30]),
        .O(pulse_0_i_216_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    pulse_0_i_217
       (.I0(pulse0_cfg[28]),
        .I1(pulse0_cfg[30]),
        .I2(pulse0_cfg[29]),
        .I3(pulse0_cfg[31]),
        .O(pulse_0_i_217_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    pulse_0_i_218
       (.I0(pulse0_cfg[31]),
        .I1(pulse0_cfg[29]),
        .I2(pulse0_cfg[27]),
        .I3(pulse0_cfg[28]),
        .I4(pulse0_cfg[30]),
        .O(pulse_0_i_218_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_22
       (.I0(pulse_0_i_53_n_0),
        .I1(Q[9]),
        .I2(\u_pulse_gen/p_0_in [9]),
        .I3(\u_pulse_gen/p_0_in [10]),
        .I4(\pulse0_cfg_r_reg[31]_0 ),
        .I5(Q[10]),
        .O(pulse_0_i_22_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_220
       (.I0(pulse0_cfg[5]),
        .I1(pulse0_cfg[3]),
        .I2(pulse_0_reg_i_230_n_6),
        .I3(pulse0_cfg[9]),
        .I4(pulse_0_i_296_n_0),
        .O(pulse_0_i_220_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_221
       (.I0(pulse0_cfg[4]),
        .I1(pulse_0_reg_i_230_n_7),
        .I2(pulse0_cfg[2]),
        .I3(pulse0_cfg[8]),
        .I4(pulse_0_i_297_n_0),
        .O(pulse_0_i_221_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_222
       (.I0(pulse0_cfg[3]),
        .I1(pulse_0_reg_i_298_n_4),
        .I2(pulse0_cfg[1]),
        .I3(pulse0_cfg[7]),
        .I4(pulse_0_i_299_n_0),
        .O(pulse_0_i_222_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_223
       (.I0(pulse0_cfg[2]),
        .I1(pulse_0_reg_i_298_n_5),
        .I2(pulse0_cfg[0]),
        .I3(pulse0_cfg[6]),
        .I4(pulse_0_i_300_n_0),
        .O(pulse_0_i_223_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_224
       (.I0(pulse_0_i_220_n_0),
        .I1(pulse_0_i_232_n_0),
        .I2(pulse0_cfg[10]),
        .I3(pulse_0_reg_i_230_n_5),
        .I4(pulse0_cfg[4]),
        .I5(pulse0_cfg[6]),
        .O(pulse_0_i_224_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_225
       (.I0(pulse_0_i_221_n_0),
        .I1(pulse_0_i_296_n_0),
        .I2(pulse0_cfg[9]),
        .I3(pulse_0_reg_i_230_n_6),
        .I4(pulse0_cfg[3]),
        .I5(pulse0_cfg[5]),
        .O(pulse_0_i_225_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_226
       (.I0(pulse_0_i_222_n_0),
        .I1(pulse_0_i_297_n_0),
        .I2(pulse0_cfg[8]),
        .I3(pulse0_cfg[2]),
        .I4(pulse_0_reg_i_230_n_7),
        .I5(pulse0_cfg[4]),
        .O(pulse_0_i_226_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_227
       (.I0(pulse_0_i_223_n_0),
        .I1(pulse_0_i_299_n_0),
        .I2(pulse0_cfg[7]),
        .I3(pulse0_cfg[1]),
        .I4(pulse_0_reg_i_298_n_4),
        .I5(pulse0_cfg[3]),
        .O(pulse_0_i_227_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_228
       (.I0(pulse0_cfg[8]),
        .I1(pulse_0_reg_i_161_n_5),
        .I2(pulse0_cfg[10]),
        .O(pulse_0_i_228_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_229
       (.I0(pulse0_cfg[7]),
        .I1(pulse_0_reg_i_161_n_6),
        .I2(pulse0_cfg[9]),
        .O(pulse_0_i_229_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_23
       (.I0(\pulse0_cfg_r_reg[31]_1 ),
        .I1(Q[8]),
        .I2(\u_pulse_gen/p_0_in [8]),
        .I3(\u_pulse_gen/p_0_in [9]),
        .I4(pulse_0_i_53_n_0),
        .I5(Q[9]),
        .O(pulse_0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_231
       (.I0(pulse0_cfg[6]),
        .I1(pulse_0_reg_i_161_n_7),
        .I2(pulse0_cfg[8]),
        .O(pulse_0_i_231_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_232
       (.I0(pulse0_cfg[5]),
        .I1(pulse_0_reg_i_230_n_4),
        .I2(pulse0_cfg[7]),
        .O(pulse_0_i_232_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_0_i_233
       (.I0(pulse0_cfg[15]),
        .I1(pulse0_cfg[13]),
        .O(pulse_0_i_233_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_0_i_234
       (.I0(pulse0_cfg[14]),
        .I1(pulse0_cfg[12]),
        .O(pulse_0_i_234_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_235
       (.I0(pulse0_cfg[11]),
        .I1(pulse0_cfg[13]),
        .I2(pulse0_cfg[15]),
        .O(pulse_0_i_235_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_0_i_236
       (.I0(pulse0_cfg[14]),
        .I1(pulse0_cfg[15]),
        .O(pulse_0_i_236_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    pulse_0_i_237
       (.I0(pulse0_cfg[13]),
        .I1(pulse0_cfg[15]),
        .I2(pulse0_cfg[14]),
        .O(pulse_0_i_237_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    pulse_0_i_238
       (.I0(pulse0_cfg[12]),
        .I1(pulse0_cfg[14]),
        .I2(pulse0_cfg[13]),
        .I3(pulse0_cfg[15]),
        .O(pulse_0_i_238_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    pulse_0_i_239
       (.I0(pulse0_cfg[15]),
        .I1(pulse0_cfg[13]),
        .I2(pulse0_cfg[11]),
        .I3(pulse0_cfg[12]),
        .I4(pulse0_cfg[14]),
        .O(pulse_0_i_239_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_24
       (.I0(pulse_0_i_55_n_0),
        .I1(Q[7]),
        .I2(\u_pulse_gen/p_0_in [7]),
        .I3(\u_pulse_gen/p_0_in [8]),
        .I4(\pulse0_cfg_r_reg[31]_1 ),
        .I5(Q[8]),
        .O(pulse_0_i_24_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_246
       (.I0(pulse_0_reg_i_111_0[1]),
        .I1(pulse0_cfg[24]),
        .O(pulse_0_i_246_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_247
       (.I0(pulse_0_reg_i_111_0[0]),
        .I1(pulse0_cfg[23]),
        .O(pulse_0_i_247_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_248
       (.I0(pulse_0_reg_i_170_0[3]),
        .I1(pulse0_cfg[22]),
        .O(pulse_0_i_248_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_249
       (.I0(pulse_0_reg_i_170_0[2]),
        .I1(pulse0_cfg[21]),
        .O(pulse_0_i_249_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_25
       (.I0(DI[2]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_21_1[3]),
        .O(pulse_0_i_25_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_250
       (.I0(pulse0_cfg[24]),
        .I1(pulse_0_reg_i_111_0[1]),
        .I2(pulse_0_reg_i_111_0[2]),
        .I3(pulse0_cfg[25]),
        .O(pulse_0_i_250_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_251
       (.I0(pulse0_cfg[23]),
        .I1(pulse_0_reg_i_111_0[0]),
        .I2(pulse_0_reg_i_111_0[1]),
        .I3(pulse0_cfg[24]),
        .O(pulse_0_i_251_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_252
       (.I0(pulse0_cfg[22]),
        .I1(pulse_0_reg_i_170_0[3]),
        .I2(pulse_0_reg_i_111_0[0]),
        .I3(pulse0_cfg[23]),
        .O(pulse_0_i_252_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_253
       (.I0(pulse0_cfg[21]),
        .I1(pulse_0_reg_i_170_0[2]),
        .I2(pulse_0_reg_i_170_0[3]),
        .I3(pulse0_cfg[22]),
        .O(pulse_0_i_253_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_260
       (.I0(pulse_0_reg_i_117_0[1]),
        .I1(pulse0_cfg[8]),
        .O(pulse_0_i_260_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_261
       (.I0(pulse_0_reg_i_117_0[0]),
        .I1(pulse0_cfg[7]),
        .O(pulse_0_i_261_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_262
       (.I0(pulse_0_reg_i_183_0[3]),
        .I1(pulse0_cfg[6]),
        .O(pulse_0_i_262_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_263
       (.I0(pulse_0_reg_i_183_0[2]),
        .I1(pulse0_cfg[5]),
        .O(pulse_0_i_263_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_264
       (.I0(pulse0_cfg[8]),
        .I1(pulse_0_reg_i_117_0[1]),
        .I2(pulse_0_reg_i_117_0[2]),
        .I3(pulse0_cfg[9]),
        .O(pulse_0_i_264_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_265
       (.I0(pulse0_cfg[7]),
        .I1(pulse_0_reg_i_117_0[0]),
        .I2(pulse_0_reg_i_117_0[1]),
        .I3(pulse0_cfg[8]),
        .O(pulse_0_i_265_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_266
       (.I0(pulse0_cfg[6]),
        .I1(pulse_0_reg_i_183_0[3]),
        .I2(pulse_0_reg_i_117_0[0]),
        .I3(pulse0_cfg[7]),
        .O(pulse_0_i_266_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_0_i_267
       (.I0(pulse0_cfg[5]),
        .I1(pulse_0_reg_i_183_0[2]),
        .I2(pulse_0_reg_i_183_0[3]),
        .I3(pulse0_cfg[6]),
        .O(pulse_0_i_267_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_268
       (.I0(pulse0_cfg[26]),
        .I1(pulse0_cfg[28]),
        .I2(pulse0_cfg[30]),
        .O(pulse_0_i_268_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_269
       (.I0(pulse0_cfg[25]),
        .I1(pulse0_cfg[27]),
        .I2(pulse0_cfg[29]),
        .O(pulse_0_i_269_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_0_i_27
       (.I0(pulse0_cfg[15]),
        .I1(pulse_0_i_8_0),
        .I2(pulse_0_reg_i_64_n_2),
        .O(pulse_0_i_27_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_270
       (.I0(pulse0_cfg[24]),
        .I1(pulse0_cfg[26]),
        .I2(pulse0_cfg[28]),
        .O(pulse_0_i_270_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_271
       (.I0(pulse0_cfg[23]),
        .I1(pulse0_cfg[25]),
        .I2(pulse0_cfg[27]),
        .O(pulse_0_i_271_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_272
       (.I0(pulse0_cfg[30]),
        .I1(pulse0_cfg[28]),
        .I2(pulse0_cfg[26]),
        .I3(pulse0_cfg[31]),
        .I4(pulse0_cfg[27]),
        .I5(pulse0_cfg[29]),
        .O(pulse_0_i_272_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_273
       (.I0(pulse0_cfg[29]),
        .I1(pulse0_cfg[27]),
        .I2(pulse0_cfg[25]),
        .I3(pulse0_cfg[30]),
        .I4(pulse0_cfg[26]),
        .I5(pulse0_cfg[28]),
        .O(pulse_0_i_273_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_274
       (.I0(pulse0_cfg[28]),
        .I1(pulse0_cfg[26]),
        .I2(pulse0_cfg[24]),
        .I3(pulse0_cfg[29]),
        .I4(pulse0_cfg[25]),
        .I5(pulse0_cfg[27]),
        .O(pulse_0_i_274_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_275
       (.I0(pulse0_cfg[27]),
        .I1(pulse0_cfg[25]),
        .I2(pulse0_cfg[23]),
        .I3(pulse0_cfg[28]),
        .I4(pulse0_cfg[24]),
        .I5(pulse0_cfg[26]),
        .O(pulse_0_i_275_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_276
       (.I0(pulse0_cfg[18]),
        .I1(pulse_0_reg_i_279_n_4),
        .O(pulse_0_i_276_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_277
       (.I0(pulse0_cfg[17]),
        .I1(pulse_0_reg_i_279_n_5),
        .O(pulse_0_i_277_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_278
       (.I0(pulse0_cfg[16]),
        .I1(pulse_0_reg_i_279_n_6),
        .O(pulse_0_i_278_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_280
       (.I0(pulse0_cfg[22]),
        .I1(pulse0_cfg[24]),
        .I2(pulse0_cfg[26]),
        .O(pulse_0_i_280_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_281
       (.I0(pulse0_cfg[21]),
        .I1(pulse0_cfg[23]),
        .I2(pulse0_cfg[25]),
        .O(pulse_0_i_281_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_282
       (.I0(pulse0_cfg[20]),
        .I1(pulse0_cfg[22]),
        .I2(pulse0_cfg[24]),
        .O(pulse_0_i_282_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_283
       (.I0(pulse0_cfg[19]),
        .I1(pulse0_cfg[21]),
        .I2(pulse0_cfg[23]),
        .O(pulse_0_i_283_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_284
       (.I0(pulse0_cfg[26]),
        .I1(pulse0_cfg[24]),
        .I2(pulse0_cfg[22]),
        .I3(pulse0_cfg[27]),
        .I4(pulse0_cfg[23]),
        .I5(pulse0_cfg[25]),
        .O(pulse_0_i_284_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_285
       (.I0(pulse0_cfg[25]),
        .I1(pulse0_cfg[23]),
        .I2(pulse0_cfg[21]),
        .I3(pulse0_cfg[26]),
        .I4(pulse0_cfg[22]),
        .I5(pulse0_cfg[24]),
        .O(pulse_0_i_285_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_286
       (.I0(pulse0_cfg[24]),
        .I1(pulse0_cfg[22]),
        .I2(pulse0_cfg[20]),
        .I3(pulse0_cfg[25]),
        .I4(pulse0_cfg[21]),
        .I5(pulse0_cfg[23]),
        .O(pulse_0_i_286_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_287
       (.I0(pulse0_cfg[23]),
        .I1(pulse0_cfg[21]),
        .I2(pulse0_cfg[19]),
        .I3(pulse0_cfg[24]),
        .I4(pulse0_cfg[20]),
        .I5(pulse0_cfg[22]),
        .O(pulse_0_i_287_n_0));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    pulse_0_i_289
       (.I0(pulse0_cfg[2]),
        .I1(pulse_0_reg_i_298_n_5),
        .I2(pulse0_cfg[0]),
        .I3(pulse0_cfg[6]),
        .I4(pulse_0_i_300_n_0),
        .O(pulse_0_i_289_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pulse_0_i_290
       (.I0(pulse0_cfg[2]),
        .I1(pulse_0_reg_i_298_n_5),
        .I2(pulse0_cfg[0]),
        .I3(pulse0_cfg[5]),
        .O(pulse_0_i_290_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_0_i_291
       (.I0(pulse_0_reg_i_298_n_7),
        .I1(pulse0_cfg[0]),
        .O(pulse_0_i_291_n_0));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    pulse_0_i_292
       (.I0(pulse_0_i_300_n_0),
        .I1(pulse0_cfg[6]),
        .I2(pulse0_cfg[0]),
        .I3(pulse_0_reg_i_298_n_5),
        .I4(pulse0_cfg[2]),
        .I5(pulse0_cfg[5]),
        .O(pulse_0_i_292_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    pulse_0_i_293
       (.I0(pulse_0_i_290_n_0),
        .I1(pulse0_cfg[1]),
        .I2(pulse_0_reg_i_298_n_6),
        .I3(pulse0_cfg[4]),
        .O(pulse_0_i_293_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    pulse_0_i_294
       (.I0(pulse0_cfg[0]),
        .I1(pulse_0_reg_i_298_n_7),
        .I2(pulse0_cfg[1]),
        .I3(pulse_0_reg_i_298_n_6),
        .I4(pulse0_cfg[4]),
        .O(pulse_0_i_294_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_0_i_295
       (.I0(pulse_0_reg_i_298_n_7),
        .I1(pulse0_cfg[0]),
        .I2(pulse0_cfg[3]),
        .O(pulse_0_i_295_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_296
       (.I0(pulse0_cfg[4]),
        .I1(pulse_0_reg_i_230_n_5),
        .I2(pulse0_cfg[6]),
        .O(pulse_0_i_296_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_297
       (.I0(pulse0_cfg[3]),
        .I1(pulse_0_reg_i_230_n_6),
        .I2(pulse0_cfg[5]),
        .O(pulse_0_i_297_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_299
       (.I0(pulse0_cfg[2]),
        .I1(pulse_0_reg_i_230_n_7),
        .I2(pulse0_cfg[4]),
        .O(pulse_0_i_299_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_300
       (.I0(pulse0_cfg[1]),
        .I1(pulse_0_reg_i_298_n_4),
        .I2(pulse0_cfg[3]),
        .O(pulse_0_i_300_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_301
       (.I0(pulse0_cfg[10]),
        .I1(pulse0_cfg[12]),
        .I2(pulse0_cfg[14]),
        .O(pulse_0_i_301_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_302
       (.I0(pulse0_cfg[9]),
        .I1(pulse0_cfg[11]),
        .I2(pulse0_cfg[13]),
        .O(pulse_0_i_302_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_303
       (.I0(pulse0_cfg[8]),
        .I1(pulse0_cfg[10]),
        .I2(pulse0_cfg[12]),
        .O(pulse_0_i_303_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_304
       (.I0(pulse0_cfg[7]),
        .I1(pulse0_cfg[9]),
        .I2(pulse0_cfg[11]),
        .O(pulse_0_i_304_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_305
       (.I0(pulse0_cfg[14]),
        .I1(pulse0_cfg[12]),
        .I2(pulse0_cfg[10]),
        .I3(pulse0_cfg[15]),
        .I4(pulse0_cfg[11]),
        .I5(pulse0_cfg[13]),
        .O(pulse_0_i_305_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_306
       (.I0(pulse0_cfg[13]),
        .I1(pulse0_cfg[11]),
        .I2(pulse0_cfg[9]),
        .I3(pulse0_cfg[14]),
        .I4(pulse0_cfg[10]),
        .I5(pulse0_cfg[12]),
        .O(pulse_0_i_306_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_307
       (.I0(pulse0_cfg[12]),
        .I1(pulse0_cfg[10]),
        .I2(pulse0_cfg[8]),
        .I3(pulse0_cfg[13]),
        .I4(pulse0_cfg[9]),
        .I5(pulse0_cfg[11]),
        .O(pulse_0_i_307_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_308
       (.I0(pulse0_cfg[11]),
        .I1(pulse0_cfg[9]),
        .I2(pulse0_cfg[7]),
        .I3(pulse0_cfg[12]),
        .I4(pulse0_cfg[8]),
        .I5(pulse0_cfg[10]),
        .O(pulse_0_i_308_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_0_i_312
       (.I0(pulse_0_reg_i_170_0[1]),
        .I1(pulse0_cfg[20]),
        .O(pulse_0_i_312_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_313
       (.I0(pulse_0_reg_i_170_0[0]),
        .I1(pulse0_cfg[19]),
        .O(pulse_0_i_313_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_0_i_314
       (.I0(\pulse0_cfg_r_reg[19]_0 [0]),
        .I1(pulse0_cfg[18]),
        .O(pulse_0_i_314_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_0_i_315
       (.I0(pulse0_cfg[20]),
        .I1(pulse_0_reg_i_170_0[1]),
        .I2(pulse_0_reg_i_170_0[2]),
        .I3(pulse0_cfg[21]),
        .O(pulse_0_i_315_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pulse_0_i_316
       (.I0(pulse0_cfg[19]),
        .I1(pulse_0_reg_i_170_0[0]),
        .I2(pulse_0_reg_i_170_0[1]),
        .I3(pulse0_cfg[20]),
        .O(pulse_0_i_316_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_0_i_317
       (.I0(pulse0_cfg[18]),
        .I1(\pulse0_cfg_r_reg[19]_0 [0]),
        .I2(pulse_0_reg_i_170_0[0]),
        .I3(pulse0_cfg[19]),
        .O(pulse_0_i_317_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_318
       (.I0(pulse0_cfg[18]),
        .I1(\pulse0_cfg_r_reg[19]_0 [0]),
        .O(pulse_0_i_318_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_0_i_322
       (.I0(pulse_0_reg_i_183_0[1]),
        .I1(pulse0_cfg[4]),
        .O(pulse_0_i_322_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_0_i_323
       (.I0(pulse_0_reg_i_183_0[0]),
        .I1(pulse0_cfg[3]),
        .O(pulse_0_i_323_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_0_i_324
       (.I0(O[0]),
        .I1(pulse0_cfg[2]),
        .O(pulse_0_i_324_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_0_i_325
       (.I0(pulse0_cfg[4]),
        .I1(pulse_0_reg_i_183_0[1]),
        .I2(pulse_0_reg_i_183_0[2]),
        .I3(pulse0_cfg[5]),
        .O(pulse_0_i_325_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pulse_0_i_326
       (.I0(pulse0_cfg[3]),
        .I1(pulse_0_reg_i_183_0[0]),
        .I2(pulse_0_reg_i_183_0[1]),
        .I3(pulse0_cfg[4]),
        .O(pulse_0_i_326_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_0_i_327
       (.I0(pulse0_cfg[2]),
        .I1(O[0]),
        .I2(pulse_0_reg_i_183_0[0]),
        .I3(pulse0_cfg[3]),
        .O(pulse_0_i_327_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_328
       (.I0(pulse0_cfg[2]),
        .I1(O[0]),
        .O(pulse_0_i_328_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_330
       (.I0(pulse0_cfg[18]),
        .I1(pulse0_cfg[20]),
        .I2(pulse0_cfg[22]),
        .O(pulse_0_i_330_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_331
       (.I0(pulse0_cfg[17]),
        .I1(pulse0_cfg[19]),
        .I2(pulse0_cfg[21]),
        .O(pulse_0_i_331_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_332
       (.I0(pulse0_cfg[19]),
        .I1(pulse0_cfg[17]),
        .I2(pulse0_cfg[21]),
        .O(pulse_0_i_332_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_333
       (.I0(pulse0_cfg[22]),
        .I1(pulse0_cfg[20]),
        .I2(pulse0_cfg[18]),
        .I3(pulse0_cfg[23]),
        .I4(pulse0_cfg[19]),
        .I5(pulse0_cfg[21]),
        .O(pulse_0_i_333_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_334
       (.I0(pulse0_cfg[21]),
        .I1(pulse0_cfg[19]),
        .I2(pulse0_cfg[17]),
        .I3(pulse0_cfg[22]),
        .I4(pulse0_cfg[18]),
        .I5(pulse0_cfg[20]),
        .O(pulse_0_i_334_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    pulse_0_i_335
       (.I0(pulse0_cfg[21]),
        .I1(pulse0_cfg[17]),
        .I2(pulse0_cfg[19]),
        .I3(pulse0_cfg[20]),
        .I4(pulse0_cfg[16]),
        .O(pulse_0_i_335_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_336
       (.I0(pulse0_cfg[16]),
        .I1(pulse0_cfg[20]),
        .I2(pulse0_cfg[18]),
        .O(pulse_0_i_336_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_337
       (.I0(pulse0_cfg[2]),
        .I1(pulse_0_reg_i_340_n_4),
        .O(pulse_0_i_337_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_338
       (.I0(pulse0_cfg[1]),
        .I1(pulse_0_reg_i_340_n_5),
        .O(pulse_0_i_338_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_339
       (.I0(pulse0_cfg[0]),
        .I1(pulse_0_reg_i_340_n_6),
        .O(pulse_0_i_339_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_341
       (.I0(pulse0_cfg[6]),
        .I1(pulse0_cfg[8]),
        .I2(pulse0_cfg[10]),
        .O(pulse_0_i_341_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_342
       (.I0(pulse0_cfg[5]),
        .I1(pulse0_cfg[7]),
        .I2(pulse0_cfg[9]),
        .O(pulse_0_i_342_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_343
       (.I0(pulse0_cfg[4]),
        .I1(pulse0_cfg[6]),
        .I2(pulse0_cfg[8]),
        .O(pulse_0_i_343_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_344
       (.I0(pulse0_cfg[3]),
        .I1(pulse0_cfg[5]),
        .I2(pulse0_cfg[7]),
        .O(pulse_0_i_344_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_345
       (.I0(pulse0_cfg[10]),
        .I1(pulse0_cfg[8]),
        .I2(pulse0_cfg[6]),
        .I3(pulse0_cfg[11]),
        .I4(pulse0_cfg[7]),
        .I5(pulse0_cfg[9]),
        .O(pulse_0_i_345_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_346
       (.I0(pulse0_cfg[9]),
        .I1(pulse0_cfg[7]),
        .I2(pulse0_cfg[5]),
        .I3(pulse0_cfg[10]),
        .I4(pulse0_cfg[6]),
        .I5(pulse0_cfg[8]),
        .O(pulse_0_i_346_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_347
       (.I0(pulse0_cfg[8]),
        .I1(pulse0_cfg[6]),
        .I2(pulse0_cfg[4]),
        .I3(pulse0_cfg[9]),
        .I4(pulse0_cfg[5]),
        .I5(pulse0_cfg[7]),
        .O(pulse_0_i_347_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_348
       (.I0(pulse0_cfg[7]),
        .I1(pulse0_cfg[5]),
        .I2(pulse0_cfg[3]),
        .I3(pulse0_cfg[8]),
        .I4(pulse0_cfg[4]),
        .I5(pulse0_cfg[6]),
        .O(pulse_0_i_348_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_0_i_349
       (.I0(pulse0_cfg[17]),
        .I1(pulse0_cfg[19]),
        .O(pulse_0_i_349_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_0_i_350
       (.I0(pulse0_cfg[16]),
        .I1(pulse0_cfg[18]),
        .O(pulse_0_i_350_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_351
       (.I0(pulse0_cfg[17]),
        .O(pulse_0_i_351_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_353
       (.I0(pulse0_cfg[2]),
        .I1(pulse0_cfg[4]),
        .I2(pulse0_cfg[6]),
        .O(pulse_0_i_353_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_0_i_354
       (.I0(pulse0_cfg[1]),
        .I1(pulse0_cfg[3]),
        .I2(pulse0_cfg[5]),
        .O(pulse_0_i_354_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_355
       (.I0(pulse0_cfg[3]),
        .I1(pulse0_cfg[1]),
        .I2(pulse0_cfg[5]),
        .O(pulse_0_i_355_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_356
       (.I0(pulse0_cfg[6]),
        .I1(pulse0_cfg[4]),
        .I2(pulse0_cfg[2]),
        .I3(pulse0_cfg[7]),
        .I4(pulse0_cfg[3]),
        .I5(pulse0_cfg[5]),
        .O(pulse_0_i_356_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_357
       (.I0(pulse0_cfg[5]),
        .I1(pulse0_cfg[3]),
        .I2(pulse0_cfg[1]),
        .I3(pulse0_cfg[6]),
        .I4(pulse0_cfg[2]),
        .I5(pulse0_cfg[4]),
        .O(pulse_0_i_357_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    pulse_0_i_358
       (.I0(pulse0_cfg[5]),
        .I1(pulse0_cfg[1]),
        .I2(pulse0_cfg[3]),
        .I3(pulse0_cfg[4]),
        .I4(pulse0_cfg[0]),
        .O(pulse_0_i_358_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_0_i_359
       (.I0(pulse0_cfg[0]),
        .I1(pulse0_cfg[4]),
        .I2(pulse0_cfg[2]),
        .O(pulse_0_i_359_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_0_i_360
       (.I0(pulse0_cfg[1]),
        .I1(pulse0_cfg[3]),
        .O(pulse_0_i_360_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_0_i_361
       (.I0(pulse0_cfg[0]),
        .I1(pulse0_cfg[2]),
        .O(pulse_0_i_361_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_362
       (.I0(pulse0_cfg[1]),
        .O(pulse_0_i_362_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_37
       (.I0(DI[1]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_21_1[2]),
        .O(\pulse0_cfg_r_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_0_i_39
       (.I0(pulse0_cfg[31]),
        .I1(pulse_0_i_32),
        .I2(pulse_0_reg_i_62_n_2),
        .O(\pulse0_cfg_r_reg[31]_6 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_41
       (.I0(\pulse0_cfg_r_reg[30]_0 [3]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_21_1[0]),
        .O(\pulse0_cfg_r_reg[31]_1 ));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_44
       (.I0(\pulse0_cfg_r_reg[14]_0 [0]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_48_0[2]),
        .I3(Q[6]),
        .I4(\pulse0_cfg_r_reg[31]_2 ),
        .O(pulse_0_i_44_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_45
       (.I0(\pulse0_cfg_r_reg[9]_0 [3]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_48_0[1]),
        .I3(Q[5]),
        .I4(pulse_0_i_95_n_0),
        .O(pulse_0_i_45_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_46
       (.I0(\pulse0_cfg_r_reg[9]_0 [2]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_48_0[0]),
        .I3(Q[4]),
        .I4(\pulse0_cfg_r_reg[31]_3 ),
        .O(pulse_0_i_46_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_47
       (.I0(\pulse0_cfg_r_reg[9]_0 [1]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_90_0[3]),
        .I3(Q[3]),
        .I4(pulse_0_i_97_n_0),
        .O(pulse_0_i_47_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_48
       (.I0(\pulse0_cfg_r_reg[31]_2 ),
        .I1(Q[6]),
        .I2(\u_pulse_gen/p_0_in [6]),
        .I3(\u_pulse_gen/p_0_in [7]),
        .I4(pulse_0_i_55_n_0),
        .I5(Q[7]),
        .O(pulse_0_i_48_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_49
       (.I0(pulse_0_i_95_n_0),
        .I1(Q[5]),
        .I2(\u_pulse_gen/p_0_in [5]),
        .I3(\u_pulse_gen/p_0_in [6]),
        .I4(\pulse0_cfg_r_reg[31]_2 ),
        .I5(Q[6]),
        .O(pulse_0_i_49_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_50
       (.I0(\pulse0_cfg_r_reg[31]_3 ),
        .I1(Q[4]),
        .I2(\u_pulse_gen/p_0_in [4]),
        .I3(\u_pulse_gen/p_0_in [5]),
        .I4(pulse_0_i_95_n_0),
        .I5(Q[5]),
        .O(pulse_0_i_50_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_51
       (.I0(pulse_0_i_97_n_0),
        .I1(Q[3]),
        .I2(\u_pulse_gen/p_0_in [3]),
        .I3(\u_pulse_gen/p_0_in [4]),
        .I4(\pulse0_cfg_r_reg[31]_3 ),
        .I5(Q[4]),
        .O(pulse_0_i_51_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_53
       (.I0(DI[0]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_21_1[1]),
        .O(pulse_0_i_53_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_55
       (.I0(\pulse0_cfg_r_reg[30]_0 [2]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_48_1[3]),
        .O(pulse_0_i_55_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_56
       (.I0(\pulse0_cfg_r_reg[15]_0 [0]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_21_0[2]),
        .O(\u_pulse_gen/p_0_in [10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_57
       (.I0(\pulse0_cfg_r_reg[15]_0 [1]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_21_0[3]),
        .O(\u_pulse_gen/p_0_in [11]));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_58
       (.I0(\pulse0_cfg_r_reg[14]_0 [3]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_21_0[1]),
        .O(\u_pulse_gen/p_0_in [9]));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_59
       (.I0(\pulse0_cfg_r_reg[14]_0 [2]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_21_0[0]),
        .O(\u_pulse_gen/p_0_in [8]));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_60
       (.I0(\pulse0_cfg_r_reg[14]_0 [1]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_48_0[3]),
        .O(\u_pulse_gen/p_0_in [7]));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_0_i_65
       (.I0(pulse0_cfg[15]),
        .I1(pulse0_cfg[13]),
        .I2(pulse0_cfg[14]),
        .I3(pulse0_cfg[12]),
        .I4(pulse_0_reg_i_122_n_2),
        .O(pulse_0_i_65_n_0));
  LUT4 #(
    .INIT(16'hC813)) 
    pulse_0_i_66
       (.I0(pulse0_cfg[13]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_reg_i_122_n_2),
        .I3(pulse0_cfg[14]),
        .O(pulse_0_i_66_n_0));
  LUT5 #(
    .INIT(32'h1337C813)) 
    pulse_0_i_67
       (.I0(pulse0_cfg[12]),
        .I1(pulse0_cfg[14]),
        .I2(pulse_0_reg_i_122_n_2),
        .I3(pulse0_cfg[13]),
        .I4(pulse0_cfg[15]),
        .O(pulse_0_i_67_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_68
       (.I0(\pulse0_cfg_r_reg[30]_0 [1]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_48_1[2]),
        .O(\pulse0_cfg_r_reg[31]_2 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_70
       (.I0(\pulse0_cfg_r_reg[25]_0 [2]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_48_1[0]),
        .O(\pulse0_cfg_r_reg[31]_3 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_72
       (.I0(\pulse0_cfg_r_reg[25]_0 [0]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_90_1[2]),
        .O(\pulse0_cfg_r_reg[31]_4 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_74
       (.I0(\pulse0_cfg_r_reg[19]_0 [0]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_90_1[0]),
        .O(\pulse0_cfg_r_reg[31]_5 ));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_0_i_76
       (.I0(pulse0_cfg[31]),
        .I1(pulse0_cfg[29]),
        .I2(pulse0_cfg[30]),
        .I3(pulse0_cfg[28]),
        .I4(pulse_0_reg_i_141_n_2),
        .O(pulse_0_i_76_n_0));
  LUT4 #(
    .INIT(16'hC813)) 
    pulse_0_i_77
       (.I0(pulse0_cfg[29]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_reg_i_141_n_2),
        .I3(pulse0_cfg[30]),
        .O(pulse_0_i_77_n_0));
  LUT5 #(
    .INIT(32'h1337C813)) 
    pulse_0_i_78
       (.I0(pulse0_cfg[28]),
        .I1(pulse0_cfg[30]),
        .I2(pulse_0_reg_i_141_n_2),
        .I3(pulse0_cfg[29]),
        .I4(pulse0_cfg[31]),
        .O(pulse_0_i_78_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_0_i_79
       (.I0(pulse0_cfg[30]),
        .I1(pulse0_cfg[28]),
        .I2(pulse0_cfg[29]),
        .I3(pulse0_cfg[27]),
        .I4(pulse_0_reg_i_141_n_2),
        .O(pulse_0_i_79_n_0));
  LUT6 #(
    .INIT(64'hBBB222B2444DDD4D)) 
    pulse_0_i_8
       (.I0(pulse_0_i_25_n_0),
        .I1(Q[11]),
        .I2(pulse_0_i_21_0[3]),
        .I3(pulse_0_i_27_n_0),
        .I4(\pulse0_cfg_r_reg[15]_0 [1]),
        .I5(Q[12]),
        .O(S));
  LUT6 #(
    .INIT(64'h9696009600960000)) 
    pulse_0_i_80
       (.I0(pulse0_cfg[29]),
        .I1(pulse_0_reg_i_141_n_2),
        .I2(pulse0_cfg[27]),
        .I3(pulse0_cfg[28]),
        .I4(pulse0_cfg[26]),
        .I5(pulse_0_reg_i_141_n_7),
        .O(pulse_0_i_80_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_81
       (.I0(pulse0_cfg[27]),
        .I1(pulse0_cfg[25]),
        .I2(pulse_0_reg_i_142_n_4),
        .I3(pulse0_cfg[31]),
        .I4(pulse_0_i_143_n_0),
        .O(pulse_0_i_81_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_0_i_82
       (.I0(pulse0_cfg[26]),
        .I1(pulse0_cfg[24]),
        .I2(pulse_0_reg_i_142_n_5),
        .I3(pulse0_cfg[30]),
        .I4(pulse_0_i_144_n_0),
        .O(pulse_0_i_82_n_0));
  LUT6 #(
    .INIT(64'hEC13C83737C8EC13)) 
    pulse_0_i_83
       (.I0(pulse0_cfg[27]),
        .I1(pulse0_cfg[29]),
        .I2(pulse_0_reg_i_141_n_2),
        .I3(pulse0_cfg[31]),
        .I4(pulse0_cfg[28]),
        .I5(pulse0_cfg[30]),
        .O(pulse_0_i_83_n_0));
  LUT6 #(
    .INIT(64'h6699699696696699)) 
    pulse_0_i_84
       (.I0(pulse_0_i_80_n_0),
        .I1(pulse0_cfg[28]),
        .I2(pulse_0_reg_i_141_n_2),
        .I3(pulse0_cfg[30]),
        .I4(pulse0_cfg[27]),
        .I5(pulse0_cfg[29]),
        .O(pulse_0_i_84_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    pulse_0_i_85
       (.I0(pulse0_cfg[31]),
        .I1(pulse_0_i_145_n_0),
        .I2(pulse_0_i_146_n_0),
        .I3(pulse_0_reg_i_141_n_7),
        .I4(pulse0_cfg[26]),
        .I5(pulse0_cfg[28]),
        .O(pulse_0_i_85_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_0_i_86
       (.I0(pulse_0_i_82_n_0),
        .I1(pulse_0_i_143_n_0),
        .I2(pulse0_cfg[31]),
        .I3(pulse_0_reg_i_142_n_4),
        .I4(pulse0_cfg[25]),
        .I5(pulse0_cfg[27]),
        .O(pulse_0_i_86_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_87
       (.I0(\pulse0_cfg_r_reg[9]_0 [0]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_90_0[2]),
        .I3(Q[2]),
        .I4(\pulse0_cfg_r_reg[31]_4 ),
        .O(pulse_0_i_87_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_88
       (.I0(O[1]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_90_0[1]),
        .I3(Q[1]),
        .I4(pulse_0_i_148_n_0),
        .O(pulse_0_i_88_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_0_i_89
       (.I0(O[0]),
        .I1(pulse_0_i_27_n_0),
        .I2(pulse_0_i_90_0[0]),
        .I3(Q[0]),
        .I4(\pulse0_cfg_r_reg[31]_5 ),
        .O(pulse_0_i_89_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_90
       (.I0(\pulse0_cfg_r_reg[31]_4 ),
        .I1(Q[2]),
        .I2(\u_pulse_gen/p_0_in [2]),
        .I3(\u_pulse_gen/p_0_in [3]),
        .I4(pulse_0_i_97_n_0),
        .I5(Q[3]),
        .O(pulse_0_i_90_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_91
       (.I0(pulse_0_i_148_n_0),
        .I1(Q[1]),
        .I2(\u_pulse_gen/p_0_in [1]),
        .I3(\u_pulse_gen/p_0_in [2]),
        .I4(\pulse0_cfg_r_reg[31]_4 ),
        .I5(Q[2]),
        .O(pulse_0_i_91_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_0_i_92
       (.I0(\pulse0_cfg_r_reg[31]_5 ),
        .I1(Q[0]),
        .I2(\u_pulse_gen/p_0_in [0]),
        .I3(\u_pulse_gen/p_0_in [1]),
        .I4(pulse_0_i_148_n_0),
        .I5(Q[1]),
        .O(pulse_0_i_92_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    pulse_0_i_93
       (.I0(Q[0]),
        .I1(\pulse0_cfg_r_reg[31]_5 ),
        .I2(O[0]),
        .I3(pulse_0_i_27_n_0),
        .I4(pulse_0_i_90_0[0]),
        .O(pulse_0_i_93_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_95
       (.I0(\pulse0_cfg_r_reg[30]_0 [0]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_48_1[1]),
        .O(pulse_0_i_95_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_0_i_97
       (.I0(\pulse0_cfg_r_reg[25]_0 [1]),
        .I1(pulse0_cfg[31]),
        .I2(pulse_0_i_32),
        .I3(pulse_0_reg_i_62_n_2),
        .I4(pulse_0_i_90_1[3]),
        .O(pulse_0_i_97_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_98
       (.I0(\pulse0_cfg_r_reg[14]_0 [0]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_48_0[2]),
        .O(\u_pulse_gen/p_0_in [6]));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_0_i_99
       (.I0(\pulse0_cfg_r_reg[9]_0 [3]),
        .I1(pulse0_cfg[15]),
        .I2(pulse_0_i_8_0),
        .I3(pulse_0_reg_i_64_n_2),
        .I4(pulse_0_i_48_0[1]),
        .O(\u_pulse_gen/p_0_in [5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_111
       (.CI(pulse_0_reg_i_170_n_0),
        .CO({pulse_0_reg_i_111_n_0,pulse_0_reg_i_111_n_1,pulse_0_reg_i_111_n_2,pulse_0_reg_i_111_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_171_n_0,pulse_0_i_172_n_0,pulse_0_i_173_n_0,pulse_0_i_174_n_0}),
        .O(NLW_pulse_0_reg_i_111_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_175_n_0,pulse_0_i_176_n_0,pulse_0_i_177_n_0,pulse_0_i_178_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_117
       (.CI(pulse_0_reg_i_183_n_0),
        .CO({pulse_0_reg_i_117_n_0,pulse_0_reg_i_117_n_1,pulse_0_reg_i_117_n_2,pulse_0_reg_i_117_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_184_n_0,pulse_0_i_185_n_0,pulse_0_i_186_n_0,pulse_0_i_187_n_0}),
        .O(NLW_pulse_0_reg_i_117_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_188_n_0,pulse_0_i_189_n_0,pulse_0_i_190_n_0,pulse_0_i_191_n_0}));
  CARRY4 pulse_0_reg_i_122
       (.CI(pulse_0_reg_i_161_n_0),
        .CO({NLW_pulse_0_reg_i_122_CO_UNCONNECTED[3:2],pulse_0_reg_i_122_n_2,NLW_pulse_0_reg_i_122_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse0_cfg[15]}),
        .O({NLW_pulse_0_reg_i_122_O_UNCONNECTED[3:1],pulse_0_reg_i_122_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_0_i_192_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_132
       (.CI(pulse_0_reg_i_198_n_0),
        .CO({pulse_0_reg_i_132_n_0,pulse_0_reg_i_132_n_1,pulse_0_reg_i_132_n_2,pulse_0_reg_i_132_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_199_n_0,pulse_0_i_200_n_0,pulse_0_i_201_n_0,pulse0_cfg[19]}),
        .O(NLW_pulse_0_reg_i_132_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_202_n_0,pulse_0_i_203_n_0,pulse_0_i_204_n_0,pulse_0_i_205_n_0}));
  CARRY4 pulse_0_reg_i_141
       (.CI(pulse_0_reg_i_142_n_0),
        .CO({NLW_pulse_0_reg_i_141_CO_UNCONNECTED[3:2],pulse_0_reg_i_141_n_2,NLW_pulse_0_reg_i_141_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse0_cfg[31]}),
        .O({NLW_pulse_0_reg_i_141_O_UNCONNECTED[3:1],pulse_0_reg_i_141_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_0_i_211_n_0}));
  CARRY4 pulse_0_reg_i_142
       (.CI(pulse_0_reg_i_195_n_0),
        .CO({pulse_0_reg_i_142_n_0,pulse_0_reg_i_142_n_1,pulse_0_reg_i_142_n_2,pulse_0_reg_i_142_n_3}),
        .CYINIT(1'b0),
        .DI({pulse0_cfg[30],pulse_0_i_212_n_0,pulse_0_i_213_n_0,pulse_0_i_214_n_0}),
        .O({pulse_0_reg_i_142_n_4,pulse_0_reg_i_142_n_5,pulse_0_reg_i_142_n_6,pulse_0_reg_i_142_n_7}),
        .S({pulse_0_i_215_n_0,pulse_0_i_216_n_0,pulse_0_i_217_n_0,pulse_0_i_218_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_147
       (.CI(pulse_0_reg_i_219_n_0),
        .CO({pulse_0_reg_i_147_n_0,pulse_0_reg_i_147_n_1,pulse_0_reg_i_147_n_2,pulse_0_reg_i_147_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_220_n_0,pulse_0_i_221_n_0,pulse_0_i_222_n_0,pulse_0_i_223_n_0}),
        .O({O,NLW_pulse_0_reg_i_147_O_UNCONNECTED[1:0]}),
        .S({pulse_0_i_224_n_0,pulse_0_i_225_n_0,pulse_0_i_226_n_0,pulse_0_i_227_n_0}));
  CARRY4 pulse_0_reg_i_16
       (.CI(pulse_0_reg_i_43_n_0),
        .CO({pulse_0_reg_i_16_n_0,pulse_0_reg_i_16_n_1,pulse_0_reg_i_16_n_2,pulse_0_reg_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_44_n_0,pulse_0_i_45_n_0,pulse_0_i_46_n_0,pulse_0_i_47_n_0}),
        .O(NLW_pulse_0_reg_i_16_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_48_n_0,pulse_0_i_49_n_0,pulse_0_i_50_n_0,pulse_0_i_51_n_0}));
  CARRY4 pulse_0_reg_i_161
       (.CI(pulse_0_reg_i_230_n_0),
        .CO({pulse_0_reg_i_161_n_0,pulse_0_reg_i_161_n_1,pulse_0_reg_i_161_n_2,pulse_0_reg_i_161_n_3}),
        .CYINIT(1'b0),
        .DI({pulse0_cfg[14],pulse_0_i_233_n_0,pulse_0_i_234_n_0,pulse_0_i_235_n_0}),
        .O({pulse_0_reg_i_161_n_4,pulse_0_reg_i_161_n_5,pulse_0_reg_i_161_n_6,pulse_0_reg_i_161_n_7}),
        .S({pulse_0_i_236_n_0,pulse_0_i_237_n_0,pulse_0_i_238_n_0,pulse_0_i_239_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_170
       (.CI(pulse_0_reg_i_245_n_0),
        .CO({pulse_0_reg_i_170_n_0,pulse_0_reg_i_170_n_1,pulse_0_reg_i_170_n_2,pulse_0_reg_i_170_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_246_n_0,pulse_0_i_247_n_0,pulse_0_i_248_n_0,pulse_0_i_249_n_0}),
        .O(NLW_pulse_0_reg_i_170_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_250_n_0,pulse_0_i_251_n_0,pulse_0_i_252_n_0,pulse_0_i_253_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_183
       (.CI(pulse_0_reg_i_259_n_0),
        .CO({pulse_0_reg_i_183_n_0,pulse_0_reg_i_183_n_1,pulse_0_reg_i_183_n_2,pulse_0_reg_i_183_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_260_n_0,pulse_0_i_261_n_0,pulse_0_i_262_n_0,pulse_0_i_263_n_0}),
        .O(NLW_pulse_0_reg_i_183_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_264_n_0,pulse_0_i_265_n_0,pulse_0_i_266_n_0,pulse_0_i_267_n_0}));
  CARRY4 pulse_0_reg_i_195
       (.CI(pulse_0_reg_i_208_n_0),
        .CO({pulse_0_reg_i_195_n_0,pulse_0_reg_i_195_n_1,pulse_0_reg_i_195_n_2,pulse_0_reg_i_195_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_268_n_0,pulse_0_i_269_n_0,pulse_0_i_270_n_0,pulse_0_i_271_n_0}),
        .O({pulse_0_reg_i_195_n_4,pulse_0_reg_i_195_n_5,pulse_0_reg_i_195_n_6,pulse_0_reg_i_195_n_7}),
        .S({pulse_0_i_272_n_0,pulse_0_i_273_n_0,pulse_0_i_274_n_0,pulse_0_i_275_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_198
       (.CI(1'b0),
        .CO({pulse_0_reg_i_198_n_0,pulse_0_reg_i_198_n_1,pulse_0_reg_i_198_n_2,pulse_0_reg_i_198_n_3}),
        .CYINIT(1'b0),
        .DI({pulse0_cfg[18:16],1'b0}),
        .O(NLW_pulse_0_reg_i_198_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_276_n_0,pulse_0_i_277_n_0,pulse_0_i_278_n_0,pulse_0_reg_i_279_n_7}));
  CARRY4 pulse_0_reg_i_208
       (.CI(pulse_0_reg_i_279_n_0),
        .CO({pulse_0_reg_i_208_n_0,pulse_0_reg_i_208_n_1,pulse_0_reg_i_208_n_2,pulse_0_reg_i_208_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_280_n_0,pulse_0_i_281_n_0,pulse_0_i_282_n_0,pulse_0_i_283_n_0}),
        .O({pulse_0_reg_i_208_n_4,pulse_0_reg_i_208_n_5,pulse_0_reg_i_208_n_6,pulse_0_reg_i_208_n_7}),
        .S({pulse_0_i_284_n_0,pulse_0_i_285_n_0,pulse_0_i_286_n_0,pulse_0_i_287_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_219
       (.CI(pulse_0_reg_i_288_n_0),
        .CO({pulse_0_reg_i_219_n_0,pulse_0_reg_i_219_n_1,pulse_0_reg_i_219_n_2,pulse_0_reg_i_219_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_289_n_0,pulse_0_i_290_n_0,pulse_0_i_291_n_0,pulse0_cfg[3]}),
        .O(NLW_pulse_0_reg_i_219_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_292_n_0,pulse_0_i_293_n_0,pulse_0_i_294_n_0,pulse_0_i_295_n_0}));
  CARRY4 pulse_0_reg_i_230
       (.CI(pulse_0_reg_i_298_n_0),
        .CO({pulse_0_reg_i_230_n_0,pulse_0_reg_i_230_n_1,pulse_0_reg_i_230_n_2,pulse_0_reg_i_230_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_301_n_0,pulse_0_i_302_n_0,pulse_0_i_303_n_0,pulse_0_i_304_n_0}),
        .O({pulse_0_reg_i_230_n_4,pulse_0_reg_i_230_n_5,pulse_0_reg_i_230_n_6,pulse_0_reg_i_230_n_7}),
        .S({pulse_0_i_305_n_0,pulse_0_i_306_n_0,pulse_0_i_307_n_0,pulse_0_i_308_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_245
       (.CI(1'b0),
        .CO({pulse_0_reg_i_245_n_0,pulse_0_reg_i_245_n_1,pulse_0_reg_i_245_n_2,pulse_0_reg_i_245_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_312_n_0,pulse_0_i_313_n_0,pulse_0_i_314_n_0,1'b0}),
        .O(NLW_pulse_0_reg_i_245_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_315_n_0,pulse_0_i_316_n_0,pulse_0_i_317_n_0,pulse_0_i_318_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_259
       (.CI(1'b0),
        .CO({pulse_0_reg_i_259_n_0,pulse_0_reg_i_259_n_1,pulse_0_reg_i_259_n_2,pulse_0_reg_i_259_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_322_n_0,pulse_0_i_323_n_0,pulse_0_i_324_n_0,1'b0}),
        .O(NLW_pulse_0_reg_i_259_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_325_n_0,pulse_0_i_326_n_0,pulse_0_i_327_n_0,pulse_0_i_328_n_0}));
  CARRY4 pulse_0_reg_i_279
       (.CI(pulse_0_reg_i_329_n_0),
        .CO({pulse_0_reg_i_279_n_0,pulse_0_reg_i_279_n_1,pulse_0_reg_i_279_n_2,pulse_0_reg_i_279_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_330_n_0,pulse_0_i_331_n_0,pulse_0_i_332_n_0,pulse0_cfg[18]}),
        .O({pulse_0_reg_i_279_n_4,pulse_0_reg_i_279_n_5,pulse_0_reg_i_279_n_6,pulse_0_reg_i_279_n_7}),
        .S({pulse_0_i_333_n_0,pulse_0_i_334_n_0,pulse_0_i_335_n_0,pulse_0_i_336_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_28
       (.CI(pulse_0_reg_i_52_n_0),
        .CO({NLW_pulse_0_reg_i_28_CO_UNCONNECTED[3:1],pulse_0_reg_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse_0_i_65_n_0}),
        .O({NLW_pulse_0_reg_i_28_O_UNCONNECTED[3:2],\pulse0_cfg_r_reg[15]_0 }),
        .S({1'b0,1'b0,pulse_0_i_66_n_0,pulse_0_i_67_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_288
       (.CI(1'b0),
        .CO({pulse_0_reg_i_288_n_0,pulse_0_reg_i_288_n_1,pulse_0_reg_i_288_n_2,pulse_0_reg_i_288_n_3}),
        .CYINIT(1'b0),
        .DI({pulse0_cfg[2:0],1'b0}),
        .O(NLW_pulse_0_reg_i_288_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_337_n_0,pulse_0_i_338_n_0,pulse_0_i_339_n_0,pulse_0_reg_i_340_n_7}));
  CARRY4 pulse_0_reg_i_298
       (.CI(pulse_0_reg_i_340_n_0),
        .CO({pulse_0_reg_i_298_n_0,pulse_0_reg_i_298_n_1,pulse_0_reg_i_298_n_2,pulse_0_reg_i_298_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_341_n_0,pulse_0_i_342_n_0,pulse_0_i_343_n_0,pulse_0_i_344_n_0}),
        .O({pulse_0_reg_i_298_n_4,pulse_0_reg_i_298_n_5,pulse_0_reg_i_298_n_6,pulse_0_reg_i_298_n_7}),
        .S({pulse_0_i_345_n_0,pulse_0_i_346_n_0,pulse_0_i_347_n_0,pulse_0_i_348_n_0}));
  CARRY4 pulse_0_reg_i_329
       (.CI(1'b0),
        .CO({pulse_0_reg_i_329_n_0,pulse_0_reg_i_329_n_1,pulse_0_reg_i_329_n_2,pulse_0_reg_i_329_n_3}),
        .CYINIT(1'b0),
        .DI({pulse0_cfg[17:16],1'b0,1'b1}),
        .O(NLW_pulse_0_reg_i_329_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_349_n_0,pulse_0_i_350_n_0,pulse_0_i_351_n_0,pulse0_cfg[16]}));
  CARRY4 pulse_0_reg_i_340
       (.CI(pulse_0_reg_i_352_n_0),
        .CO({pulse_0_reg_i_340_n_0,pulse_0_reg_i_340_n_1,pulse_0_reg_i_340_n_2,pulse_0_reg_i_340_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_353_n_0,pulse_0_i_354_n_0,pulse_0_i_355_n_0,pulse0_cfg[2]}),
        .O({pulse_0_reg_i_340_n_4,pulse_0_reg_i_340_n_5,pulse_0_reg_i_340_n_6,pulse_0_reg_i_340_n_7}),
        .S({pulse_0_i_356_n_0,pulse_0_i_357_n_0,pulse_0_i_358_n_0,pulse_0_i_359_n_0}));
  CARRY4 pulse_0_reg_i_352
       (.CI(1'b0),
        .CO({pulse_0_reg_i_352_n_0,pulse_0_reg_i_352_n_1,pulse_0_reg_i_352_n_2,pulse_0_reg_i_352_n_3}),
        .CYINIT(1'b0),
        .DI({pulse0_cfg[1:0],1'b0,1'b1}),
        .O(NLW_pulse_0_reg_i_352_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_360_n_0,pulse_0_i_361_n_0,pulse_0_i_362_n_0,pulse0_cfg[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_38
       (.CI(pulse_0_reg_i_42_n_0),
        .CO({NLW_pulse_0_reg_i_38_CO_UNCONNECTED[3:1],pulse_0_reg_i_38_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse_0_i_76_n_0}),
        .O({NLW_pulse_0_reg_i_38_O_UNCONNECTED[3:2],DI[2:1]}),
        .S({1'b0,1'b0,pulse_0_i_77_n_0,pulse_0_i_78_n_0}));
  CARRY4 pulse_0_reg_i_4
       (.CI(pulse_0_reg_i_16_n_0),
        .CO({\cnt0_reg[10] ,pulse_0_reg_i_4_n_1,pulse_0_reg_i_4_n_2,pulse_0_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_17_n_0,pulse_0_i_18_n_0,pulse_0_i_19_n_0,pulse_0_i_20_n_0}),
        .O(NLW_pulse_0_reg_i_4_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_21_n_0,pulse_0_i_22_n_0,pulse_0_i_23_n_0,pulse_0_i_24_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_42
       (.CI(pulse_0_reg_i_71_n_0),
        .CO({pulse_0_reg_i_42_n_0,pulse_0_reg_i_42_n_1,pulse_0_reg_i_42_n_2,pulse_0_reg_i_42_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_79_n_0,pulse_0_i_80_n_0,pulse_0_i_81_n_0,pulse_0_i_82_n_0}),
        .O({DI[0],\pulse0_cfg_r_reg[30]_0 [3:1]}),
        .S({pulse_0_i_83_n_0,pulse_0_i_84_n_0,pulse_0_i_85_n_0,pulse_0_i_86_n_0}));
  CARRY4 pulse_0_reg_i_43
       (.CI(1'b0),
        .CO({pulse_0_reg_i_43_n_0,pulse_0_reg_i_43_n_1,pulse_0_reg_i_43_n_2,pulse_0_reg_i_43_n_3}),
        .CYINIT(1'b1),
        .DI({pulse_0_i_87_n_0,pulse_0_i_88_n_0,pulse_0_i_89_n_0,1'b1}),
        .O(NLW_pulse_0_reg_i_43_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_90_n_0,pulse_0_i_91_n_0,pulse_0_i_92_n_0,pulse_0_i_93_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_52
       (.CI(pulse_0_reg_i_94_n_0),
        .CO({pulse_0_reg_i_52_n_0,pulse_0_reg_i_52_n_1,pulse_0_reg_i_52_n_2,pulse_0_reg_i_52_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_102_n_0,pulse_0_i_103_n_0,pulse_0_i_104_n_0,pulse_0_i_105_n_0}),
        .O(\pulse0_cfg_r_reg[14]_0 ),
        .S({pulse_0_i_106_n_0,pulse_0_i_107_n_0,pulse_0_i_108_n_0,pulse_0_i_109_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_62
       (.CI(pulse_0_reg_i_111_n_0),
        .CO({NLW_pulse_0_reg_i_62_CO_UNCONNECTED[3:2],pulse_0_reg_i_62_n_2,pulse_0_reg_i_62_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_0_i_112_n_0,pulse_0_i_113_n_0}),
        .O(NLW_pulse_0_reg_i_62_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_0_i_114_n_0,pulse_0_i_115_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_64
       (.CI(pulse_0_reg_i_117_n_0),
        .CO({NLW_pulse_0_reg_i_64_CO_UNCONNECTED[3:2],pulse_0_reg_i_64_n_2,pulse_0_reg_i_64_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_0_i_118_n_0,pulse_0_i_119_n_0}),
        .O(NLW_pulse_0_reg_i_64_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_0_i_120_n_0,pulse_0_i_121_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_71
       (.CI(pulse_0_reg_i_75_n_0),
        .CO({pulse_0_reg_i_71_n_0,pulse_0_reg_i_71_n_1,pulse_0_reg_i_71_n_2,pulse_0_reg_i_71_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_123_n_0,pulse_0_i_124_n_0,pulse_0_i_125_n_0,pulse_0_i_126_n_0}),
        .O({\pulse0_cfg_r_reg[30]_0 [0],\pulse0_cfg_r_reg[25]_0 }),
        .S({pulse_0_i_127_n_0,pulse_0_i_128_n_0,pulse_0_i_129_n_0,pulse_0_i_130_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_75
       (.CI(pulse_0_reg_i_132_n_0),
        .CO({pulse_0_reg_i_75_n_0,pulse_0_reg_i_75_n_1,pulse_0_reg_i_75_n_2,pulse_0_reg_i_75_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_133_n_0,pulse_0_i_134_n_0,pulse_0_i_135_n_0,pulse_0_i_136_n_0}),
        .O({\pulse0_cfg_r_reg[19]_0 ,NLW_pulse_0_reg_i_75_O_UNCONNECTED[1:0]}),
        .S({pulse_0_i_137_n_0,pulse_0_i_138_n_0,pulse_0_i_139_n_0,pulse_0_i_140_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_94
       (.CI(pulse_0_reg_i_147_n_0),
        .CO({pulse_0_reg_i_94_n_0,pulse_0_reg_i_94_n_1,pulse_0_reg_i_94_n_2,pulse_0_reg_i_94_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_152_n_0,pulse_0_i_153_n_0,pulse_0_i_154_n_0,pulse_0_i_155_n_0}),
        .O(\pulse0_cfg_r_reg[9]_0 ),
        .S({pulse_0_i_156_n_0,pulse_0_i_157_n_0,pulse_0_i_158_n_0,pulse_0_i_159_n_0}));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    pulse_1_i_1
       (.I0(pulse_1_reg),
        .I1(pulse_1_reg_0),
        .I2(mmcm_locked),
        .I3(ctrl_reg[4]),
        .I4(ctrl_reg[1]),
        .I5(pulse_seq_reg[1]),
        .O(pulse_10));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_100
       (.I0(\pulse1_cfg_r_reg[9]_0 [2]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_48_0[0]),
        .O(pulse_1_i_100_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_101
       (.I0(\pulse1_cfg_r_reg[9]_0 [1]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_90_0[3]),
        .O(pulse_1_i_101_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_1_i_102
       (.I0(pulse1_cfg[14]),
        .I1(pulse1_cfg[12]),
        .I2(pulse1_cfg[13]),
        .I3(pulse1_cfg[11]),
        .I4(pulse_1_reg_i_122_n_2),
        .O(pulse_1_i_102_n_0));
  LUT6 #(
    .INIT(64'h9696009600960000)) 
    pulse_1_i_103
       (.I0(pulse1_cfg[13]),
        .I1(pulse_1_reg_i_122_n_2),
        .I2(pulse1_cfg[11]),
        .I3(pulse1_cfg[12]),
        .I4(pulse1_cfg[10]),
        .I5(pulse_1_reg_i_122_n_7),
        .O(pulse_1_i_103_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_104
       (.I0(pulse1_cfg[11]),
        .I1(pulse1_cfg[9]),
        .I2(pulse_1_reg_i_161_n_4),
        .I3(pulse1_cfg[15]),
        .I4(pulse_1_i_162_n_0),
        .O(pulse_1_i_104_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_105
       (.I0(pulse1_cfg[10]),
        .I1(pulse1_cfg[8]),
        .I2(pulse_1_reg_i_161_n_5),
        .I3(pulse1_cfg[14]),
        .I4(pulse_1_i_163_n_0),
        .O(pulse_1_i_105_n_0));
  LUT6 #(
    .INIT(64'hEC13C83737C8EC13)) 
    pulse_1_i_106
       (.I0(pulse1_cfg[11]),
        .I1(pulse1_cfg[13]),
        .I2(pulse_1_reg_i_122_n_2),
        .I3(pulse1_cfg[15]),
        .I4(pulse1_cfg[12]),
        .I5(pulse1_cfg[14]),
        .O(pulse_1_i_106_n_0));
  LUT6 #(
    .INIT(64'h6699699696696699)) 
    pulse_1_i_107
       (.I0(pulse_1_i_103_n_0),
        .I1(pulse1_cfg[12]),
        .I2(pulse_1_reg_i_122_n_2),
        .I3(pulse1_cfg[14]),
        .I4(pulse1_cfg[11]),
        .I5(pulse1_cfg[13]),
        .O(pulse_1_i_107_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    pulse_1_i_108
       (.I0(pulse1_cfg[15]),
        .I1(pulse_1_i_164_n_0),
        .I2(pulse_1_i_165_n_0),
        .I3(pulse_1_reg_i_122_n_7),
        .I4(pulse1_cfg[10]),
        .I5(pulse1_cfg[12]),
        .O(pulse_1_i_108_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_109
       (.I0(pulse_1_i_105_n_0),
        .I1(pulse_1_i_162_n_0),
        .I2(pulse1_cfg[15]),
        .I3(pulse_1_reg_i_161_n_4),
        .I4(pulse1_cfg[9]),
        .I5(pulse1_cfg[11]),
        .O(pulse_1_i_109_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_112
       (.I0(pulse_1_reg_i_62_0[3]),
        .I1(pulse1_cfg[30]),
        .O(pulse_1_i_112_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_113
       (.I0(pulse_1_reg_i_62_0[2]),
        .I1(pulse1_cfg[29]),
        .O(pulse_1_i_113_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_114
       (.I0(pulse1_cfg[30]),
        .I1(pulse_1_reg_i_62_0[3]),
        .I2(pulse_1_i_32),
        .I3(pulse1_cfg[31]),
        .O(pulse_1_i_114_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_115
       (.I0(pulse1_cfg[29]),
        .I1(pulse_1_reg_i_62_0[2]),
        .I2(pulse_1_reg_i_62_0[3]),
        .I3(pulse1_cfg[30]),
        .O(pulse_1_i_115_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_118
       (.I0(pulse_1_reg_i_64_0[3]),
        .I1(pulse1_cfg[14]),
        .O(pulse_1_i_118_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_119
       (.I0(pulse_1_reg_i_64_0[2]),
        .I1(pulse1_cfg[13]),
        .O(pulse_1_i_119_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_120
       (.I0(pulse1_cfg[14]),
        .I1(pulse_1_reg_i_64_0[3]),
        .I2(pulse_1_i_8_0),
        .I3(pulse1_cfg[15]),
        .O(pulse_1_i_120_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_121
       (.I0(pulse1_cfg[13]),
        .I1(pulse_1_reg_i_64_0[2]),
        .I2(pulse_1_reg_i_64_0[3]),
        .I3(pulse1_cfg[14]),
        .O(pulse_1_i_121_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_123
       (.I0(pulse1_cfg[25]),
        .I1(pulse1_cfg[23]),
        .I2(pulse_1_reg_i_142_n_6),
        .I3(pulse1_cfg[29]),
        .I4(pulse_1_i_193_n_0),
        .O(pulse_1_i_123_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_124
       (.I0(pulse1_cfg[24]),
        .I1(pulse1_cfg[22]),
        .I2(pulse_1_reg_i_142_n_7),
        .I3(pulse1_cfg[28]),
        .I4(pulse_1_i_194_n_0),
        .O(pulse_1_i_124_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_125
       (.I0(pulse1_cfg[23]),
        .I1(pulse1_cfg[21]),
        .I2(pulse_1_reg_i_195_n_4),
        .I3(pulse1_cfg[27]),
        .I4(pulse_1_i_196_n_0),
        .O(pulse_1_i_125_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_126
       (.I0(pulse1_cfg[22]),
        .I1(pulse1_cfg[20]),
        .I2(pulse_1_reg_i_195_n_5),
        .I3(pulse1_cfg[26]),
        .I4(pulse_1_i_197_n_0),
        .O(pulse_1_i_126_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_127
       (.I0(pulse_1_i_123_n_0),
        .I1(pulse_1_i_144_n_0),
        .I2(pulse1_cfg[30]),
        .I3(pulse_1_reg_i_142_n_5),
        .I4(pulse1_cfg[24]),
        .I5(pulse1_cfg[26]),
        .O(pulse_1_i_127_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_128
       (.I0(pulse_1_i_124_n_0),
        .I1(pulse_1_i_193_n_0),
        .I2(pulse1_cfg[29]),
        .I3(pulse_1_reg_i_142_n_6),
        .I4(pulse1_cfg[23]),
        .I5(pulse1_cfg[25]),
        .O(pulse_1_i_128_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_129
       (.I0(pulse_1_i_125_n_0),
        .I1(pulse_1_i_194_n_0),
        .I2(pulse1_cfg[28]),
        .I3(pulse_1_reg_i_142_n_7),
        .I4(pulse1_cfg[22]),
        .I5(pulse1_cfg[24]),
        .O(pulse_1_i_129_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_130
       (.I0(pulse_1_i_126_n_0),
        .I1(pulse_1_i_196_n_0),
        .I2(pulse1_cfg[27]),
        .I3(pulse_1_reg_i_195_n_4),
        .I4(pulse1_cfg[21]),
        .I5(pulse1_cfg[23]),
        .O(pulse_1_i_130_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_133
       (.I0(pulse1_cfg[21]),
        .I1(pulse1_cfg[19]),
        .I2(pulse_1_reg_i_195_n_6),
        .I3(pulse1_cfg[25]),
        .I4(pulse_1_i_206_n_0),
        .O(pulse_1_i_133_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_134
       (.I0(pulse1_cfg[20]),
        .I1(pulse_1_reg_i_195_n_7),
        .I2(pulse1_cfg[18]),
        .I3(pulse1_cfg[24]),
        .I4(pulse_1_i_207_n_0),
        .O(pulse_1_i_134_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_135
       (.I0(pulse1_cfg[19]),
        .I1(pulse_1_reg_i_208_n_4),
        .I2(pulse1_cfg[17]),
        .I3(pulse1_cfg[23]),
        .I4(pulse_1_i_209_n_0),
        .O(pulse_1_i_135_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_136
       (.I0(pulse1_cfg[18]),
        .I1(pulse_1_reg_i_208_n_5),
        .I2(pulse1_cfg[16]),
        .I3(pulse1_cfg[22]),
        .I4(pulse_1_i_210_n_0),
        .O(pulse_1_i_136_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_137
       (.I0(pulse_1_i_133_n_0),
        .I1(pulse_1_i_197_n_0),
        .I2(pulse1_cfg[26]),
        .I3(pulse_1_reg_i_195_n_5),
        .I4(pulse1_cfg[20]),
        .I5(pulse1_cfg[22]),
        .O(pulse_1_i_137_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_138
       (.I0(pulse_1_i_134_n_0),
        .I1(pulse_1_i_206_n_0),
        .I2(pulse1_cfg[25]),
        .I3(pulse_1_reg_i_195_n_6),
        .I4(pulse1_cfg[19]),
        .I5(pulse1_cfg[21]),
        .O(pulse_1_i_138_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_139
       (.I0(pulse_1_i_135_n_0),
        .I1(pulse_1_i_207_n_0),
        .I2(pulse1_cfg[24]),
        .I3(pulse1_cfg[18]),
        .I4(pulse_1_reg_i_195_n_7),
        .I5(pulse1_cfg[20]),
        .O(pulse_1_i_139_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_140
       (.I0(pulse_1_i_136_n_0),
        .I1(pulse_1_i_209_n_0),
        .I2(pulse1_cfg[23]),
        .I3(pulse1_cfg[17]),
        .I4(pulse_1_reg_i_208_n_4),
        .I5(pulse1_cfg[19]),
        .O(pulse_1_i_140_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_143
       (.I0(pulse1_cfg[26]),
        .I1(pulse_1_reg_i_141_n_7),
        .I2(pulse1_cfg[28]),
        .O(pulse_1_i_143_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_144
       (.I0(pulse1_cfg[25]),
        .I1(pulse_1_reg_i_142_n_4),
        .I2(pulse1_cfg[27]),
        .O(pulse_1_i_144_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_145
       (.I0(pulse_1_reg_i_142_n_4),
        .I1(pulse1_cfg[25]),
        .I2(pulse1_cfg[27]),
        .O(pulse_1_i_145_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_1_i_146
       (.I0(pulse1_cfg[27]),
        .I1(pulse_1_reg_i_141_n_2),
        .I2(pulse1_cfg[29]),
        .O(pulse_1_i_146_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_148
       (.I0(\pulse1_cfg_r_reg[19]_0 [1]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_90_1[1]),
        .O(pulse_1_i_148_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_149
       (.I0(\pulse1_cfg_r_reg[9]_0 [0]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_90_0[2]),
        .O(pulse_1_i_149_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_150
       (.I0(\pulse1_cfg_r_reg[3]_0 [1]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_90_0[1]),
        .O(pulse_1_i_150_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_151
       (.I0(\pulse1_cfg_r_reg[3]_0 [0]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_90_0[0]),
        .O(pulse_1_i_151_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_152
       (.I0(pulse1_cfg[9]),
        .I1(pulse1_cfg[7]),
        .I2(pulse_1_reg_i_161_n_6),
        .I3(pulse1_cfg[13]),
        .I4(pulse_1_i_228_n_0),
        .O(pulse_1_i_152_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_153
       (.I0(pulse1_cfg[8]),
        .I1(pulse1_cfg[6]),
        .I2(pulse_1_reg_i_161_n_7),
        .I3(pulse1_cfg[12]),
        .I4(pulse_1_i_229_n_0),
        .O(pulse_1_i_153_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_154
       (.I0(pulse1_cfg[7]),
        .I1(pulse1_cfg[5]),
        .I2(pulse_1_reg_i_230_n_4),
        .I3(pulse1_cfg[11]),
        .I4(pulse_1_i_231_n_0),
        .O(pulse_1_i_154_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_155
       (.I0(pulse1_cfg[6]),
        .I1(pulse1_cfg[4]),
        .I2(pulse_1_reg_i_230_n_5),
        .I3(pulse1_cfg[10]),
        .I4(pulse_1_i_232_n_0),
        .O(pulse_1_i_155_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_156
       (.I0(pulse_1_i_152_n_0),
        .I1(pulse_1_i_163_n_0),
        .I2(pulse1_cfg[14]),
        .I3(pulse_1_reg_i_161_n_5),
        .I4(pulse1_cfg[8]),
        .I5(pulse1_cfg[10]),
        .O(pulse_1_i_156_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_157
       (.I0(pulse_1_i_153_n_0),
        .I1(pulse_1_i_228_n_0),
        .I2(pulse1_cfg[13]),
        .I3(pulse_1_reg_i_161_n_6),
        .I4(pulse1_cfg[7]),
        .I5(pulse1_cfg[9]),
        .O(pulse_1_i_157_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_158
       (.I0(pulse_1_i_154_n_0),
        .I1(pulse_1_i_229_n_0),
        .I2(pulse1_cfg[12]),
        .I3(pulse_1_reg_i_161_n_7),
        .I4(pulse1_cfg[6]),
        .I5(pulse1_cfg[8]),
        .O(pulse_1_i_158_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_159
       (.I0(pulse_1_i_155_n_0),
        .I1(pulse_1_i_231_n_0),
        .I2(pulse1_cfg[11]),
        .I3(pulse_1_reg_i_230_n_4),
        .I4(pulse1_cfg[5]),
        .I5(pulse1_cfg[7]),
        .O(pulse_1_i_159_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_162
       (.I0(pulse1_cfg[10]),
        .I1(pulse_1_reg_i_122_n_7),
        .I2(pulse1_cfg[12]),
        .O(pulse_1_i_162_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_163
       (.I0(pulse1_cfg[9]),
        .I1(pulse_1_reg_i_161_n_4),
        .I2(pulse1_cfg[11]),
        .O(pulse_1_i_163_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_164
       (.I0(pulse_1_reg_i_161_n_4),
        .I1(pulse1_cfg[9]),
        .I2(pulse1_cfg[11]),
        .O(pulse_1_i_164_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_1_i_165
       (.I0(pulse1_cfg[11]),
        .I1(pulse_1_reg_i_122_n_2),
        .I2(pulse1_cfg[13]),
        .O(pulse_1_i_165_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_17
       (.I0(\pulse1_cfg_r_reg[15]_0 [0]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_21_0[2]),
        .I3(pulse_1_reg_i_2[10]),
        .I4(\pulse1_cfg_r_reg[31]_0 ),
        .O(pulse_1_i_17_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_171
       (.I0(pulse_1_reg_i_62_0[1]),
        .I1(pulse1_cfg[28]),
        .O(pulse_1_i_171_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_172
       (.I0(pulse_1_reg_i_62_0[0]),
        .I1(pulse1_cfg[27]),
        .O(pulse_1_i_172_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_173
       (.I0(pulse_1_reg_i_111_0[3]),
        .I1(pulse1_cfg[26]),
        .O(pulse_1_i_173_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_174
       (.I0(pulse_1_reg_i_111_0[2]),
        .I1(pulse1_cfg[25]),
        .O(pulse_1_i_174_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_175
       (.I0(pulse1_cfg[28]),
        .I1(pulse_1_reg_i_62_0[1]),
        .I2(pulse_1_reg_i_62_0[2]),
        .I3(pulse1_cfg[29]),
        .O(pulse_1_i_175_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_176
       (.I0(pulse1_cfg[27]),
        .I1(pulse_1_reg_i_62_0[0]),
        .I2(pulse_1_reg_i_62_0[1]),
        .I3(pulse1_cfg[28]),
        .O(pulse_1_i_176_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_177
       (.I0(pulse1_cfg[26]),
        .I1(pulse_1_reg_i_111_0[3]),
        .I2(pulse_1_reg_i_62_0[0]),
        .I3(pulse1_cfg[27]),
        .O(pulse_1_i_177_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_178
       (.I0(pulse1_cfg[25]),
        .I1(pulse_1_reg_i_111_0[2]),
        .I2(pulse_1_reg_i_111_0[3]),
        .I3(pulse1_cfg[26]),
        .O(pulse_1_i_178_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_18
       (.I0(\pulse1_cfg_r_reg[14]_0 [3]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_21_0[1]),
        .I3(pulse_1_reg_i_2[9]),
        .I4(pulse_1_i_53_n_0),
        .O(pulse_1_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_184
       (.I0(pulse_1_reg_i_64_0[1]),
        .I1(pulse1_cfg[12]),
        .O(pulse_1_i_184_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_185
       (.I0(pulse_1_reg_i_64_0[0]),
        .I1(pulse1_cfg[11]),
        .O(pulse_1_i_185_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_186
       (.I0(pulse_1_reg_i_117_0[3]),
        .I1(pulse1_cfg[10]),
        .O(pulse_1_i_186_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_187
       (.I0(pulse_1_reg_i_117_0[2]),
        .I1(pulse1_cfg[9]),
        .O(pulse_1_i_187_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_188
       (.I0(pulse1_cfg[12]),
        .I1(pulse_1_reg_i_64_0[1]),
        .I2(pulse_1_reg_i_64_0[2]),
        .I3(pulse1_cfg[13]),
        .O(pulse_1_i_188_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_189
       (.I0(pulse1_cfg[11]),
        .I1(pulse_1_reg_i_64_0[0]),
        .I2(pulse_1_reg_i_64_0[1]),
        .I3(pulse1_cfg[12]),
        .O(pulse_1_i_189_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_19
       (.I0(\pulse1_cfg_r_reg[14]_0 [2]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_21_0[0]),
        .I3(pulse_1_reg_i_2[8]),
        .I4(\pulse1_cfg_r_reg[31]_2 ),
        .O(pulse_1_i_19_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_190
       (.I0(pulse1_cfg[10]),
        .I1(pulse_1_reg_i_117_0[3]),
        .I2(pulse_1_reg_i_64_0[0]),
        .I3(pulse1_cfg[11]),
        .O(pulse_1_i_190_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_191
       (.I0(pulse1_cfg[9]),
        .I1(pulse_1_reg_i_117_0[2]),
        .I2(pulse_1_reg_i_117_0[3]),
        .I3(pulse1_cfg[10]),
        .O(pulse_1_i_191_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_192
       (.I0(pulse1_cfg[15]),
        .O(pulse_1_i_192_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_193
       (.I0(pulse1_cfg[24]),
        .I1(pulse_1_reg_i_142_n_5),
        .I2(pulse1_cfg[26]),
        .O(pulse_1_i_193_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_194
       (.I0(pulse1_cfg[23]),
        .I1(pulse_1_reg_i_142_n_6),
        .I2(pulse1_cfg[25]),
        .O(pulse_1_i_194_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_196
       (.I0(pulse1_cfg[22]),
        .I1(pulse_1_reg_i_142_n_7),
        .I2(pulse1_cfg[24]),
        .O(pulse_1_i_196_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_197
       (.I0(pulse1_cfg[21]),
        .I1(pulse_1_reg_i_195_n_4),
        .I2(pulse1_cfg[23]),
        .O(pulse_1_i_197_n_0));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    pulse_1_i_199
       (.I0(pulse1_cfg[18]),
        .I1(pulse_1_reg_i_208_n_5),
        .I2(pulse1_cfg[16]),
        .I3(pulse1_cfg[22]),
        .I4(pulse_1_i_210_n_0),
        .O(pulse_1_i_199_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_20
       (.I0(\pulse1_cfg_r_reg[14]_0 [1]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_48_0[3]),
        .I3(pulse_1_reg_i_2[7]),
        .I4(pulse_1_i_55_n_0),
        .O(pulse_1_i_20_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pulse_1_i_200
       (.I0(pulse1_cfg[18]),
        .I1(pulse_1_reg_i_208_n_5),
        .I2(pulse1_cfg[16]),
        .I3(pulse1_cfg[21]),
        .O(pulse_1_i_200_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_1_i_201
       (.I0(pulse_1_reg_i_208_n_7),
        .I1(pulse1_cfg[16]),
        .O(pulse_1_i_201_n_0));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    pulse_1_i_202
       (.I0(pulse_1_i_210_n_0),
        .I1(pulse1_cfg[22]),
        .I2(pulse1_cfg[16]),
        .I3(pulse_1_reg_i_208_n_5),
        .I4(pulse1_cfg[18]),
        .I5(pulse1_cfg[21]),
        .O(pulse_1_i_202_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    pulse_1_i_203
       (.I0(pulse_1_i_200_n_0),
        .I1(pulse1_cfg[17]),
        .I2(pulse_1_reg_i_208_n_6),
        .I3(pulse1_cfg[20]),
        .O(pulse_1_i_203_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    pulse_1_i_204
       (.I0(pulse1_cfg[16]),
        .I1(pulse_1_reg_i_208_n_7),
        .I2(pulse1_cfg[17]),
        .I3(pulse_1_reg_i_208_n_6),
        .I4(pulse1_cfg[20]),
        .O(pulse_1_i_204_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_1_i_205
       (.I0(pulse_1_reg_i_208_n_7),
        .I1(pulse1_cfg[16]),
        .I2(pulse1_cfg[19]),
        .O(pulse_1_i_205_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_206
       (.I0(pulse1_cfg[20]),
        .I1(pulse_1_reg_i_195_n_5),
        .I2(pulse1_cfg[22]),
        .O(pulse_1_i_206_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_207
       (.I0(pulse1_cfg[19]),
        .I1(pulse_1_reg_i_195_n_6),
        .I2(pulse1_cfg[21]),
        .O(pulse_1_i_207_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_209
       (.I0(pulse1_cfg[18]),
        .I1(pulse_1_reg_i_195_n_7),
        .I2(pulse1_cfg[20]),
        .O(pulse_1_i_209_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_21
       (.I0(\pulse1_cfg_r_reg[31]_0 ),
        .I1(pulse_1_reg_i_2[10]),
        .I2(pulse_1_i_56_n_0),
        .I3(pulse_1_i_57_n_0),
        .I4(pulse_1_i_25_n_0),
        .I5(pulse_1_reg_i_2[11]),
        .O(pulse_1_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_210
       (.I0(pulse1_cfg[17]),
        .I1(pulse_1_reg_i_208_n_4),
        .I2(pulse1_cfg[19]),
        .O(pulse_1_i_210_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_211
       (.I0(pulse1_cfg[31]),
        .O(pulse_1_i_211_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_1_i_212
       (.I0(pulse1_cfg[31]),
        .I1(pulse1_cfg[29]),
        .O(pulse_1_i_212_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_1_i_213
       (.I0(pulse1_cfg[30]),
        .I1(pulse1_cfg[28]),
        .O(pulse_1_i_213_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_214
       (.I0(pulse1_cfg[27]),
        .I1(pulse1_cfg[29]),
        .I2(pulse1_cfg[31]),
        .O(pulse_1_i_214_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_1_i_215
       (.I0(pulse1_cfg[30]),
        .I1(pulse1_cfg[31]),
        .O(pulse_1_i_215_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    pulse_1_i_216
       (.I0(pulse1_cfg[29]),
        .I1(pulse1_cfg[31]),
        .I2(pulse1_cfg[30]),
        .O(pulse_1_i_216_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    pulse_1_i_217
       (.I0(pulse1_cfg[28]),
        .I1(pulse1_cfg[30]),
        .I2(pulse1_cfg[29]),
        .I3(pulse1_cfg[31]),
        .O(pulse_1_i_217_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    pulse_1_i_218
       (.I0(pulse1_cfg[31]),
        .I1(pulse1_cfg[29]),
        .I2(pulse1_cfg[27]),
        .I3(pulse1_cfg[28]),
        .I4(pulse1_cfg[30]),
        .O(pulse_1_i_218_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_22
       (.I0(pulse_1_i_53_n_0),
        .I1(pulse_1_reg_i_2[9]),
        .I2(pulse_1_i_58_n_0),
        .I3(pulse_1_i_56_n_0),
        .I4(\pulse1_cfg_r_reg[31]_0 ),
        .I5(pulse_1_reg_i_2[10]),
        .O(pulse_1_i_22_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_220
       (.I0(pulse1_cfg[5]),
        .I1(pulse1_cfg[3]),
        .I2(pulse_1_reg_i_230_n_6),
        .I3(pulse1_cfg[9]),
        .I4(pulse_1_i_296_n_0),
        .O(pulse_1_i_220_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_221
       (.I0(pulse1_cfg[4]),
        .I1(pulse_1_reg_i_230_n_7),
        .I2(pulse1_cfg[2]),
        .I3(pulse1_cfg[8]),
        .I4(pulse_1_i_297_n_0),
        .O(pulse_1_i_221_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_222
       (.I0(pulse1_cfg[3]),
        .I1(pulse_1_reg_i_298_n_4),
        .I2(pulse1_cfg[1]),
        .I3(pulse1_cfg[7]),
        .I4(pulse_1_i_299_n_0),
        .O(pulse_1_i_222_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_223
       (.I0(pulse1_cfg[2]),
        .I1(pulse_1_reg_i_298_n_5),
        .I2(pulse1_cfg[0]),
        .I3(pulse1_cfg[6]),
        .I4(pulse_1_i_300_n_0),
        .O(pulse_1_i_223_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_224
       (.I0(pulse_1_i_220_n_0),
        .I1(pulse_1_i_232_n_0),
        .I2(pulse1_cfg[10]),
        .I3(pulse_1_reg_i_230_n_5),
        .I4(pulse1_cfg[4]),
        .I5(pulse1_cfg[6]),
        .O(pulse_1_i_224_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_225
       (.I0(pulse_1_i_221_n_0),
        .I1(pulse_1_i_296_n_0),
        .I2(pulse1_cfg[9]),
        .I3(pulse_1_reg_i_230_n_6),
        .I4(pulse1_cfg[3]),
        .I5(pulse1_cfg[5]),
        .O(pulse_1_i_225_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_226
       (.I0(pulse_1_i_222_n_0),
        .I1(pulse_1_i_297_n_0),
        .I2(pulse1_cfg[8]),
        .I3(pulse1_cfg[2]),
        .I4(pulse_1_reg_i_230_n_7),
        .I5(pulse1_cfg[4]),
        .O(pulse_1_i_226_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_227
       (.I0(pulse_1_i_223_n_0),
        .I1(pulse_1_i_299_n_0),
        .I2(pulse1_cfg[7]),
        .I3(pulse1_cfg[1]),
        .I4(pulse_1_reg_i_298_n_4),
        .I5(pulse1_cfg[3]),
        .O(pulse_1_i_227_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_228
       (.I0(pulse1_cfg[8]),
        .I1(pulse_1_reg_i_161_n_5),
        .I2(pulse1_cfg[10]),
        .O(pulse_1_i_228_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_229
       (.I0(pulse1_cfg[7]),
        .I1(pulse_1_reg_i_161_n_6),
        .I2(pulse1_cfg[9]),
        .O(pulse_1_i_229_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_23
       (.I0(\pulse1_cfg_r_reg[31]_2 ),
        .I1(pulse_1_reg_i_2[8]),
        .I2(pulse_1_i_59_n_0),
        .I3(pulse_1_i_58_n_0),
        .I4(pulse_1_i_53_n_0),
        .I5(pulse_1_reg_i_2[9]),
        .O(pulse_1_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_231
       (.I0(pulse1_cfg[6]),
        .I1(pulse_1_reg_i_161_n_7),
        .I2(pulse1_cfg[8]),
        .O(pulse_1_i_231_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_232
       (.I0(pulse1_cfg[5]),
        .I1(pulse_1_reg_i_230_n_4),
        .I2(pulse1_cfg[7]),
        .O(pulse_1_i_232_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_1_i_233
       (.I0(pulse1_cfg[15]),
        .I1(pulse1_cfg[13]),
        .O(pulse_1_i_233_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_1_i_234
       (.I0(pulse1_cfg[14]),
        .I1(pulse1_cfg[12]),
        .O(pulse_1_i_234_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_235
       (.I0(pulse1_cfg[11]),
        .I1(pulse1_cfg[13]),
        .I2(pulse1_cfg[15]),
        .O(pulse_1_i_235_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_1_i_236
       (.I0(pulse1_cfg[14]),
        .I1(pulse1_cfg[15]),
        .O(pulse_1_i_236_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    pulse_1_i_237
       (.I0(pulse1_cfg[13]),
        .I1(pulse1_cfg[15]),
        .I2(pulse1_cfg[14]),
        .O(pulse_1_i_237_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    pulse_1_i_238
       (.I0(pulse1_cfg[12]),
        .I1(pulse1_cfg[14]),
        .I2(pulse1_cfg[13]),
        .I3(pulse1_cfg[15]),
        .O(pulse_1_i_238_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    pulse_1_i_239
       (.I0(pulse1_cfg[15]),
        .I1(pulse1_cfg[13]),
        .I2(pulse1_cfg[11]),
        .I3(pulse1_cfg[12]),
        .I4(pulse1_cfg[14]),
        .O(pulse_1_i_239_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_24
       (.I0(pulse_1_i_55_n_0),
        .I1(pulse_1_reg_i_2[7]),
        .I2(pulse_1_i_60_n_0),
        .I3(pulse_1_i_59_n_0),
        .I4(\pulse1_cfg_r_reg[31]_2 ),
        .I5(pulse_1_reg_i_2[8]),
        .O(pulse_1_i_24_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_246
       (.I0(pulse_1_reg_i_111_0[1]),
        .I1(pulse1_cfg[24]),
        .O(pulse_1_i_246_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_247
       (.I0(pulse_1_reg_i_111_0[0]),
        .I1(pulse1_cfg[23]),
        .O(pulse_1_i_247_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_248
       (.I0(pulse_1_reg_i_170_0[3]),
        .I1(pulse1_cfg[22]),
        .O(pulse_1_i_248_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_249
       (.I0(pulse_1_reg_i_170_0[2]),
        .I1(pulse1_cfg[21]),
        .O(pulse_1_i_249_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_25
       (.I0(\pulse1_cfg_r_reg[31]_1 [2]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_21_1[3]),
        .O(pulse_1_i_25_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_250
       (.I0(pulse1_cfg[24]),
        .I1(pulse_1_reg_i_111_0[1]),
        .I2(pulse_1_reg_i_111_0[2]),
        .I3(pulse1_cfg[25]),
        .O(pulse_1_i_250_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_251
       (.I0(pulse1_cfg[23]),
        .I1(pulse_1_reg_i_111_0[0]),
        .I2(pulse_1_reg_i_111_0[1]),
        .I3(pulse1_cfg[24]),
        .O(pulse_1_i_251_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_252
       (.I0(pulse1_cfg[22]),
        .I1(pulse_1_reg_i_170_0[3]),
        .I2(pulse_1_reg_i_111_0[0]),
        .I3(pulse1_cfg[23]),
        .O(pulse_1_i_252_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_253
       (.I0(pulse1_cfg[21]),
        .I1(pulse_1_reg_i_170_0[2]),
        .I2(pulse_1_reg_i_170_0[3]),
        .I3(pulse1_cfg[22]),
        .O(pulse_1_i_253_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_260
       (.I0(pulse_1_reg_i_117_0[1]),
        .I1(pulse1_cfg[8]),
        .O(pulse_1_i_260_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_261
       (.I0(pulse_1_reg_i_117_0[0]),
        .I1(pulse1_cfg[7]),
        .O(pulse_1_i_261_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_262
       (.I0(pulse_1_reg_i_183_0[3]),
        .I1(pulse1_cfg[6]),
        .O(pulse_1_i_262_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_263
       (.I0(pulse_1_reg_i_183_0[2]),
        .I1(pulse1_cfg[5]),
        .O(pulse_1_i_263_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_264
       (.I0(pulse1_cfg[8]),
        .I1(pulse_1_reg_i_117_0[1]),
        .I2(pulse_1_reg_i_117_0[2]),
        .I3(pulse1_cfg[9]),
        .O(pulse_1_i_264_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_265
       (.I0(pulse1_cfg[7]),
        .I1(pulse_1_reg_i_117_0[0]),
        .I2(pulse_1_reg_i_117_0[1]),
        .I3(pulse1_cfg[8]),
        .O(pulse_1_i_265_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_266
       (.I0(pulse1_cfg[6]),
        .I1(pulse_1_reg_i_183_0[3]),
        .I2(pulse_1_reg_i_117_0[0]),
        .I3(pulse1_cfg[7]),
        .O(pulse_1_i_266_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_1_i_267
       (.I0(pulse1_cfg[5]),
        .I1(pulse_1_reg_i_183_0[2]),
        .I2(pulse_1_reg_i_183_0[3]),
        .I3(pulse1_cfg[6]),
        .O(pulse_1_i_267_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_268
       (.I0(pulse1_cfg[26]),
        .I1(pulse1_cfg[28]),
        .I2(pulse1_cfg[30]),
        .O(pulse_1_i_268_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_269
       (.I0(pulse1_cfg[25]),
        .I1(pulse1_cfg[27]),
        .I2(pulse1_cfg[29]),
        .O(pulse_1_i_269_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_1_i_27
       (.I0(pulse1_cfg[15]),
        .I1(pulse_1_i_8_0),
        .I2(pulse_1_reg_i_64_n_2),
        .O(pulse_1_i_27_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_270
       (.I0(pulse1_cfg[24]),
        .I1(pulse1_cfg[26]),
        .I2(pulse1_cfg[28]),
        .O(pulse_1_i_270_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_271
       (.I0(pulse1_cfg[23]),
        .I1(pulse1_cfg[25]),
        .I2(pulse1_cfg[27]),
        .O(pulse_1_i_271_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_272
       (.I0(pulse1_cfg[30]),
        .I1(pulse1_cfg[28]),
        .I2(pulse1_cfg[26]),
        .I3(pulse1_cfg[31]),
        .I4(pulse1_cfg[27]),
        .I5(pulse1_cfg[29]),
        .O(pulse_1_i_272_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_273
       (.I0(pulse1_cfg[29]),
        .I1(pulse1_cfg[27]),
        .I2(pulse1_cfg[25]),
        .I3(pulse1_cfg[30]),
        .I4(pulse1_cfg[26]),
        .I5(pulse1_cfg[28]),
        .O(pulse_1_i_273_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_274
       (.I0(pulse1_cfg[28]),
        .I1(pulse1_cfg[26]),
        .I2(pulse1_cfg[24]),
        .I3(pulse1_cfg[29]),
        .I4(pulse1_cfg[25]),
        .I5(pulse1_cfg[27]),
        .O(pulse_1_i_274_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_275
       (.I0(pulse1_cfg[27]),
        .I1(pulse1_cfg[25]),
        .I2(pulse1_cfg[23]),
        .I3(pulse1_cfg[28]),
        .I4(pulse1_cfg[24]),
        .I5(pulse1_cfg[26]),
        .O(pulse_1_i_275_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_276
       (.I0(pulse1_cfg[18]),
        .I1(pulse_1_reg_i_279_n_4),
        .O(pulse_1_i_276_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_277
       (.I0(pulse1_cfg[17]),
        .I1(pulse_1_reg_i_279_n_5),
        .O(pulse_1_i_277_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_278
       (.I0(pulse1_cfg[16]),
        .I1(pulse_1_reg_i_279_n_6),
        .O(pulse_1_i_278_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_280
       (.I0(pulse1_cfg[22]),
        .I1(pulse1_cfg[24]),
        .I2(pulse1_cfg[26]),
        .O(pulse_1_i_280_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_281
       (.I0(pulse1_cfg[21]),
        .I1(pulse1_cfg[23]),
        .I2(pulse1_cfg[25]),
        .O(pulse_1_i_281_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_282
       (.I0(pulse1_cfg[20]),
        .I1(pulse1_cfg[22]),
        .I2(pulse1_cfg[24]),
        .O(pulse_1_i_282_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_283
       (.I0(pulse1_cfg[19]),
        .I1(pulse1_cfg[21]),
        .I2(pulse1_cfg[23]),
        .O(pulse_1_i_283_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_284
       (.I0(pulse1_cfg[26]),
        .I1(pulse1_cfg[24]),
        .I2(pulse1_cfg[22]),
        .I3(pulse1_cfg[27]),
        .I4(pulse1_cfg[23]),
        .I5(pulse1_cfg[25]),
        .O(pulse_1_i_284_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_285
       (.I0(pulse1_cfg[25]),
        .I1(pulse1_cfg[23]),
        .I2(pulse1_cfg[21]),
        .I3(pulse1_cfg[26]),
        .I4(pulse1_cfg[22]),
        .I5(pulse1_cfg[24]),
        .O(pulse_1_i_285_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_286
       (.I0(pulse1_cfg[24]),
        .I1(pulse1_cfg[22]),
        .I2(pulse1_cfg[20]),
        .I3(pulse1_cfg[25]),
        .I4(pulse1_cfg[21]),
        .I5(pulse1_cfg[23]),
        .O(pulse_1_i_286_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_287
       (.I0(pulse1_cfg[23]),
        .I1(pulse1_cfg[21]),
        .I2(pulse1_cfg[19]),
        .I3(pulse1_cfg[24]),
        .I4(pulse1_cfg[20]),
        .I5(pulse1_cfg[22]),
        .O(pulse_1_i_287_n_0));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    pulse_1_i_289
       (.I0(pulse1_cfg[2]),
        .I1(pulse_1_reg_i_298_n_5),
        .I2(pulse1_cfg[0]),
        .I3(pulse1_cfg[6]),
        .I4(pulse_1_i_300_n_0),
        .O(pulse_1_i_289_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pulse_1_i_290
       (.I0(pulse1_cfg[2]),
        .I1(pulse_1_reg_i_298_n_5),
        .I2(pulse1_cfg[0]),
        .I3(pulse1_cfg[5]),
        .O(pulse_1_i_290_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_1_i_291
       (.I0(pulse_1_reg_i_298_n_7),
        .I1(pulse1_cfg[0]),
        .O(pulse_1_i_291_n_0));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    pulse_1_i_292
       (.I0(pulse_1_i_300_n_0),
        .I1(pulse1_cfg[6]),
        .I2(pulse1_cfg[0]),
        .I3(pulse_1_reg_i_298_n_5),
        .I4(pulse1_cfg[2]),
        .I5(pulse1_cfg[5]),
        .O(pulse_1_i_292_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    pulse_1_i_293
       (.I0(pulse_1_i_290_n_0),
        .I1(pulse1_cfg[1]),
        .I2(pulse_1_reg_i_298_n_6),
        .I3(pulse1_cfg[4]),
        .O(pulse_1_i_293_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    pulse_1_i_294
       (.I0(pulse1_cfg[0]),
        .I1(pulse_1_reg_i_298_n_7),
        .I2(pulse1_cfg[1]),
        .I3(pulse_1_reg_i_298_n_6),
        .I4(pulse1_cfg[4]),
        .O(pulse_1_i_294_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_1_i_295
       (.I0(pulse_1_reg_i_298_n_7),
        .I1(pulse1_cfg[0]),
        .I2(pulse1_cfg[3]),
        .O(pulse_1_i_295_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_296
       (.I0(pulse1_cfg[4]),
        .I1(pulse_1_reg_i_230_n_5),
        .I2(pulse1_cfg[6]),
        .O(pulse_1_i_296_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_297
       (.I0(pulse1_cfg[3]),
        .I1(pulse_1_reg_i_230_n_6),
        .I2(pulse1_cfg[5]),
        .O(pulse_1_i_297_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_299
       (.I0(pulse1_cfg[2]),
        .I1(pulse_1_reg_i_230_n_7),
        .I2(pulse1_cfg[4]),
        .O(pulse_1_i_299_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_300
       (.I0(pulse1_cfg[1]),
        .I1(pulse_1_reg_i_298_n_4),
        .I2(pulse1_cfg[3]),
        .O(pulse_1_i_300_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_301
       (.I0(pulse1_cfg[10]),
        .I1(pulse1_cfg[12]),
        .I2(pulse1_cfg[14]),
        .O(pulse_1_i_301_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_302
       (.I0(pulse1_cfg[9]),
        .I1(pulse1_cfg[11]),
        .I2(pulse1_cfg[13]),
        .O(pulse_1_i_302_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_303
       (.I0(pulse1_cfg[8]),
        .I1(pulse1_cfg[10]),
        .I2(pulse1_cfg[12]),
        .O(pulse_1_i_303_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_304
       (.I0(pulse1_cfg[7]),
        .I1(pulse1_cfg[9]),
        .I2(pulse1_cfg[11]),
        .O(pulse_1_i_304_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_305
       (.I0(pulse1_cfg[14]),
        .I1(pulse1_cfg[12]),
        .I2(pulse1_cfg[10]),
        .I3(pulse1_cfg[15]),
        .I4(pulse1_cfg[11]),
        .I5(pulse1_cfg[13]),
        .O(pulse_1_i_305_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_306
       (.I0(pulse1_cfg[13]),
        .I1(pulse1_cfg[11]),
        .I2(pulse1_cfg[9]),
        .I3(pulse1_cfg[14]),
        .I4(pulse1_cfg[10]),
        .I5(pulse1_cfg[12]),
        .O(pulse_1_i_306_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_307
       (.I0(pulse1_cfg[12]),
        .I1(pulse1_cfg[10]),
        .I2(pulse1_cfg[8]),
        .I3(pulse1_cfg[13]),
        .I4(pulse1_cfg[9]),
        .I5(pulse1_cfg[11]),
        .O(pulse_1_i_307_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_308
       (.I0(pulse1_cfg[11]),
        .I1(pulse1_cfg[9]),
        .I2(pulse1_cfg[7]),
        .I3(pulse1_cfg[12]),
        .I4(pulse1_cfg[8]),
        .I5(pulse1_cfg[10]),
        .O(pulse_1_i_308_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_1_i_312
       (.I0(pulse_1_reg_i_170_0[1]),
        .I1(pulse1_cfg[20]),
        .O(pulse_1_i_312_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_313
       (.I0(pulse_1_reg_i_170_0[0]),
        .I1(pulse1_cfg[19]),
        .O(pulse_1_i_313_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_1_i_314
       (.I0(\pulse1_cfg_r_reg[19]_0 [0]),
        .I1(pulse1_cfg[18]),
        .O(pulse_1_i_314_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_1_i_315
       (.I0(pulse1_cfg[20]),
        .I1(pulse_1_reg_i_170_0[1]),
        .I2(pulse_1_reg_i_170_0[2]),
        .I3(pulse1_cfg[21]),
        .O(pulse_1_i_315_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pulse_1_i_316
       (.I0(pulse1_cfg[19]),
        .I1(pulse_1_reg_i_170_0[0]),
        .I2(pulse_1_reg_i_170_0[1]),
        .I3(pulse1_cfg[20]),
        .O(pulse_1_i_316_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_1_i_317
       (.I0(pulse1_cfg[18]),
        .I1(\pulse1_cfg_r_reg[19]_0 [0]),
        .I2(pulse_1_reg_i_170_0[0]),
        .I3(pulse1_cfg[19]),
        .O(pulse_1_i_317_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_318
       (.I0(pulse1_cfg[18]),
        .I1(\pulse1_cfg_r_reg[19]_0 [0]),
        .O(pulse_1_i_318_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_1_i_322
       (.I0(pulse_1_reg_i_183_0[1]),
        .I1(pulse1_cfg[4]),
        .O(pulse_1_i_322_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_1_i_323
       (.I0(pulse_1_reg_i_183_0[0]),
        .I1(pulse1_cfg[3]),
        .O(pulse_1_i_323_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_1_i_324
       (.I0(\pulse1_cfg_r_reg[3]_0 [0]),
        .I1(pulse1_cfg[2]),
        .O(pulse_1_i_324_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_1_i_325
       (.I0(pulse1_cfg[4]),
        .I1(pulse_1_reg_i_183_0[1]),
        .I2(pulse_1_reg_i_183_0[2]),
        .I3(pulse1_cfg[5]),
        .O(pulse_1_i_325_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pulse_1_i_326
       (.I0(pulse1_cfg[3]),
        .I1(pulse_1_reg_i_183_0[0]),
        .I2(pulse_1_reg_i_183_0[1]),
        .I3(pulse1_cfg[4]),
        .O(pulse_1_i_326_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_1_i_327
       (.I0(pulse1_cfg[2]),
        .I1(\pulse1_cfg_r_reg[3]_0 [0]),
        .I2(pulse_1_reg_i_183_0[0]),
        .I3(pulse1_cfg[3]),
        .O(pulse_1_i_327_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_328
       (.I0(pulse1_cfg[2]),
        .I1(\pulse1_cfg_r_reg[3]_0 [0]),
        .O(pulse_1_i_328_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_330
       (.I0(pulse1_cfg[18]),
        .I1(pulse1_cfg[20]),
        .I2(pulse1_cfg[22]),
        .O(pulse_1_i_330_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_331
       (.I0(pulse1_cfg[17]),
        .I1(pulse1_cfg[19]),
        .I2(pulse1_cfg[21]),
        .O(pulse_1_i_331_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_332
       (.I0(pulse1_cfg[19]),
        .I1(pulse1_cfg[17]),
        .I2(pulse1_cfg[21]),
        .O(pulse_1_i_332_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_333
       (.I0(pulse1_cfg[22]),
        .I1(pulse1_cfg[20]),
        .I2(pulse1_cfg[18]),
        .I3(pulse1_cfg[23]),
        .I4(pulse1_cfg[19]),
        .I5(pulse1_cfg[21]),
        .O(pulse_1_i_333_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_334
       (.I0(pulse1_cfg[21]),
        .I1(pulse1_cfg[19]),
        .I2(pulse1_cfg[17]),
        .I3(pulse1_cfg[22]),
        .I4(pulse1_cfg[18]),
        .I5(pulse1_cfg[20]),
        .O(pulse_1_i_334_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    pulse_1_i_335
       (.I0(pulse1_cfg[21]),
        .I1(pulse1_cfg[17]),
        .I2(pulse1_cfg[19]),
        .I3(pulse1_cfg[20]),
        .I4(pulse1_cfg[16]),
        .O(pulse_1_i_335_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_336
       (.I0(pulse1_cfg[16]),
        .I1(pulse1_cfg[20]),
        .I2(pulse1_cfg[18]),
        .O(pulse_1_i_336_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_337
       (.I0(pulse1_cfg[2]),
        .I1(pulse_1_reg_i_340_n_4),
        .O(pulse_1_i_337_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_338
       (.I0(pulse1_cfg[1]),
        .I1(pulse_1_reg_i_340_n_5),
        .O(pulse_1_i_338_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_339
       (.I0(pulse1_cfg[0]),
        .I1(pulse_1_reg_i_340_n_6),
        .O(pulse_1_i_339_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_341
       (.I0(pulse1_cfg[6]),
        .I1(pulse1_cfg[8]),
        .I2(pulse1_cfg[10]),
        .O(pulse_1_i_341_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_342
       (.I0(pulse1_cfg[5]),
        .I1(pulse1_cfg[7]),
        .I2(pulse1_cfg[9]),
        .O(pulse_1_i_342_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_343
       (.I0(pulse1_cfg[4]),
        .I1(pulse1_cfg[6]),
        .I2(pulse1_cfg[8]),
        .O(pulse_1_i_343_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_344
       (.I0(pulse1_cfg[3]),
        .I1(pulse1_cfg[5]),
        .I2(pulse1_cfg[7]),
        .O(pulse_1_i_344_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_345
       (.I0(pulse1_cfg[10]),
        .I1(pulse1_cfg[8]),
        .I2(pulse1_cfg[6]),
        .I3(pulse1_cfg[11]),
        .I4(pulse1_cfg[7]),
        .I5(pulse1_cfg[9]),
        .O(pulse_1_i_345_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_346
       (.I0(pulse1_cfg[9]),
        .I1(pulse1_cfg[7]),
        .I2(pulse1_cfg[5]),
        .I3(pulse1_cfg[10]),
        .I4(pulse1_cfg[6]),
        .I5(pulse1_cfg[8]),
        .O(pulse_1_i_346_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_347
       (.I0(pulse1_cfg[8]),
        .I1(pulse1_cfg[6]),
        .I2(pulse1_cfg[4]),
        .I3(pulse1_cfg[9]),
        .I4(pulse1_cfg[5]),
        .I5(pulse1_cfg[7]),
        .O(pulse_1_i_347_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_348
       (.I0(pulse1_cfg[7]),
        .I1(pulse1_cfg[5]),
        .I2(pulse1_cfg[3]),
        .I3(pulse1_cfg[8]),
        .I4(pulse1_cfg[4]),
        .I5(pulse1_cfg[6]),
        .O(pulse_1_i_348_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_1_i_349
       (.I0(pulse1_cfg[17]),
        .I1(pulse1_cfg[19]),
        .O(pulse_1_i_349_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_1_i_350
       (.I0(pulse1_cfg[16]),
        .I1(pulse1_cfg[18]),
        .O(pulse_1_i_350_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_351
       (.I0(pulse1_cfg[17]),
        .O(pulse_1_i_351_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_353
       (.I0(pulse1_cfg[2]),
        .I1(pulse1_cfg[4]),
        .I2(pulse1_cfg[6]),
        .O(pulse_1_i_353_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_1_i_354
       (.I0(pulse1_cfg[1]),
        .I1(pulse1_cfg[3]),
        .I2(pulse1_cfg[5]),
        .O(pulse_1_i_354_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_355
       (.I0(pulse1_cfg[3]),
        .I1(pulse1_cfg[1]),
        .I2(pulse1_cfg[5]),
        .O(pulse_1_i_355_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_356
       (.I0(pulse1_cfg[6]),
        .I1(pulse1_cfg[4]),
        .I2(pulse1_cfg[2]),
        .I3(pulse1_cfg[7]),
        .I4(pulse1_cfg[3]),
        .I5(pulse1_cfg[5]),
        .O(pulse_1_i_356_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_357
       (.I0(pulse1_cfg[5]),
        .I1(pulse1_cfg[3]),
        .I2(pulse1_cfg[1]),
        .I3(pulse1_cfg[6]),
        .I4(pulse1_cfg[2]),
        .I5(pulse1_cfg[4]),
        .O(pulse_1_i_357_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    pulse_1_i_358
       (.I0(pulse1_cfg[5]),
        .I1(pulse1_cfg[1]),
        .I2(pulse1_cfg[3]),
        .I3(pulse1_cfg[4]),
        .I4(pulse1_cfg[0]),
        .O(pulse_1_i_358_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_1_i_359
       (.I0(pulse1_cfg[0]),
        .I1(pulse1_cfg[4]),
        .I2(pulse1_cfg[2]),
        .O(pulse_1_i_359_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_1_i_360
       (.I0(pulse1_cfg[1]),
        .I1(pulse1_cfg[3]),
        .O(pulse_1_i_360_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_1_i_361
       (.I0(pulse1_cfg[0]),
        .I1(pulse1_cfg[2]),
        .O(pulse_1_i_361_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_362
       (.I0(pulse1_cfg[1]),
        .O(pulse_1_i_362_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_37
       (.I0(\pulse1_cfg_r_reg[31]_1 [1]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_21_1[2]),
        .O(\pulse1_cfg_r_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_1_i_39
       (.I0(pulse1_cfg[31]),
        .I1(pulse_1_i_32),
        .I2(pulse_1_reg_i_62_n_2),
        .O(\pulse1_cfg_r_reg[31]_7 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_41
       (.I0(\pulse1_cfg_r_reg[30]_0 [3]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_21_1[0]),
        .O(\pulse1_cfg_r_reg[31]_2 ));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_44
       (.I0(\pulse1_cfg_r_reg[14]_0 [0]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_48_0[2]),
        .I3(pulse_1_reg_i_2[6]),
        .I4(\pulse1_cfg_r_reg[31]_3 ),
        .O(pulse_1_i_44_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_45
       (.I0(\pulse1_cfg_r_reg[9]_0 [3]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_48_0[1]),
        .I3(pulse_1_reg_i_2[5]),
        .I4(pulse_1_i_95_n_0),
        .O(pulse_1_i_45_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_46
       (.I0(\pulse1_cfg_r_reg[9]_0 [2]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_48_0[0]),
        .I3(pulse_1_reg_i_2[4]),
        .I4(\pulse1_cfg_r_reg[31]_4 ),
        .O(pulse_1_i_46_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_47
       (.I0(\pulse1_cfg_r_reg[9]_0 [1]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_90_0[3]),
        .I3(pulse_1_reg_i_2[3]),
        .I4(pulse_1_i_97_n_0),
        .O(pulse_1_i_47_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_48
       (.I0(\pulse1_cfg_r_reg[31]_3 ),
        .I1(pulse_1_reg_i_2[6]),
        .I2(pulse_1_i_98_n_0),
        .I3(pulse_1_i_60_n_0),
        .I4(pulse_1_i_55_n_0),
        .I5(pulse_1_reg_i_2[7]),
        .O(pulse_1_i_48_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_49
       (.I0(pulse_1_i_95_n_0),
        .I1(pulse_1_reg_i_2[5]),
        .I2(pulse_1_i_99_n_0),
        .I3(pulse_1_i_98_n_0),
        .I4(\pulse1_cfg_r_reg[31]_3 ),
        .I5(pulse_1_reg_i_2[6]),
        .O(pulse_1_i_49_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_50
       (.I0(\pulse1_cfg_r_reg[31]_4 ),
        .I1(pulse_1_reg_i_2[4]),
        .I2(pulse_1_i_100_n_0),
        .I3(pulse_1_i_99_n_0),
        .I4(pulse_1_i_95_n_0),
        .I5(pulse_1_reg_i_2[5]),
        .O(pulse_1_i_50_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_51
       (.I0(pulse_1_i_97_n_0),
        .I1(pulse_1_reg_i_2[3]),
        .I2(pulse_1_i_101_n_0),
        .I3(pulse_1_i_100_n_0),
        .I4(\pulse1_cfg_r_reg[31]_4 ),
        .I5(pulse_1_reg_i_2[4]),
        .O(pulse_1_i_51_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_53
       (.I0(\pulse1_cfg_r_reg[31]_1 [0]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_21_1[1]),
        .O(pulse_1_i_53_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_55
       (.I0(\pulse1_cfg_r_reg[30]_0 [2]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_48_1[3]),
        .O(pulse_1_i_55_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_56
       (.I0(\pulse1_cfg_r_reg[15]_0 [0]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_21_0[2]),
        .O(pulse_1_i_56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_57
       (.I0(\pulse1_cfg_r_reg[15]_0 [1]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_21_0[3]),
        .O(pulse_1_i_57_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_58
       (.I0(\pulse1_cfg_r_reg[14]_0 [3]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_21_0[1]),
        .O(pulse_1_i_58_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_59
       (.I0(\pulse1_cfg_r_reg[14]_0 [2]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_21_0[0]),
        .O(pulse_1_i_59_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_60
       (.I0(\pulse1_cfg_r_reg[14]_0 [1]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_48_0[3]),
        .O(pulse_1_i_60_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_1_i_65
       (.I0(pulse1_cfg[15]),
        .I1(pulse1_cfg[13]),
        .I2(pulse1_cfg[14]),
        .I3(pulse1_cfg[12]),
        .I4(pulse_1_reg_i_122_n_2),
        .O(pulse_1_i_65_n_0));
  LUT4 #(
    .INIT(16'hC813)) 
    pulse_1_i_66
       (.I0(pulse1_cfg[13]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_reg_i_122_n_2),
        .I3(pulse1_cfg[14]),
        .O(pulse_1_i_66_n_0));
  LUT5 #(
    .INIT(32'h1337C813)) 
    pulse_1_i_67
       (.I0(pulse1_cfg[12]),
        .I1(pulse1_cfg[14]),
        .I2(pulse_1_reg_i_122_n_2),
        .I3(pulse1_cfg[13]),
        .I4(pulse1_cfg[15]),
        .O(pulse_1_i_67_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_68
       (.I0(\pulse1_cfg_r_reg[30]_0 [1]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_48_1[2]),
        .O(\pulse1_cfg_r_reg[31]_3 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_70
       (.I0(\pulse1_cfg_r_reg[25]_0 [2]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_48_1[0]),
        .O(\pulse1_cfg_r_reg[31]_4 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_72
       (.I0(\pulse1_cfg_r_reg[25]_0 [0]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_90_1[2]),
        .O(\pulse1_cfg_r_reg[31]_5 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_74
       (.I0(\pulse1_cfg_r_reg[19]_0 [0]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_90_1[0]),
        .O(\pulse1_cfg_r_reg[31]_6 ));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_1_i_76
       (.I0(pulse1_cfg[31]),
        .I1(pulse1_cfg[29]),
        .I2(pulse1_cfg[30]),
        .I3(pulse1_cfg[28]),
        .I4(pulse_1_reg_i_141_n_2),
        .O(pulse_1_i_76_n_0));
  LUT4 #(
    .INIT(16'hC813)) 
    pulse_1_i_77
       (.I0(pulse1_cfg[29]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_reg_i_141_n_2),
        .I3(pulse1_cfg[30]),
        .O(pulse_1_i_77_n_0));
  LUT5 #(
    .INIT(32'h1337C813)) 
    pulse_1_i_78
       (.I0(pulse1_cfg[28]),
        .I1(pulse1_cfg[30]),
        .I2(pulse_1_reg_i_141_n_2),
        .I3(pulse1_cfg[29]),
        .I4(pulse1_cfg[31]),
        .O(pulse_1_i_78_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_1_i_79
       (.I0(pulse1_cfg[30]),
        .I1(pulse1_cfg[28]),
        .I2(pulse1_cfg[29]),
        .I3(pulse1_cfg[27]),
        .I4(pulse_1_reg_i_141_n_2),
        .O(pulse_1_i_79_n_0));
  LUT6 #(
    .INIT(64'hBBB222B2444DDD4D)) 
    pulse_1_i_8
       (.I0(pulse_1_i_25_n_0),
        .I1(pulse_1_reg_i_2[11]),
        .I2(pulse_1_i_21_0[3]),
        .I3(pulse_1_i_27_n_0),
        .I4(\pulse1_cfg_r_reg[15]_0 [1]),
        .I5(pulse_1_reg_i_2[12]),
        .O(\cnt1_reg[11] ));
  LUT6 #(
    .INIT(64'h9696009600960000)) 
    pulse_1_i_80
       (.I0(pulse1_cfg[29]),
        .I1(pulse_1_reg_i_141_n_2),
        .I2(pulse1_cfg[27]),
        .I3(pulse1_cfg[28]),
        .I4(pulse1_cfg[26]),
        .I5(pulse_1_reg_i_141_n_7),
        .O(pulse_1_i_80_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_81
       (.I0(pulse1_cfg[27]),
        .I1(pulse1_cfg[25]),
        .I2(pulse_1_reg_i_142_n_4),
        .I3(pulse1_cfg[31]),
        .I4(pulse_1_i_143_n_0),
        .O(pulse_1_i_81_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_1_i_82
       (.I0(pulse1_cfg[26]),
        .I1(pulse1_cfg[24]),
        .I2(pulse_1_reg_i_142_n_5),
        .I3(pulse1_cfg[30]),
        .I4(pulse_1_i_144_n_0),
        .O(pulse_1_i_82_n_0));
  LUT6 #(
    .INIT(64'hEC13C83737C8EC13)) 
    pulse_1_i_83
       (.I0(pulse1_cfg[27]),
        .I1(pulse1_cfg[29]),
        .I2(pulse_1_reg_i_141_n_2),
        .I3(pulse1_cfg[31]),
        .I4(pulse1_cfg[28]),
        .I5(pulse1_cfg[30]),
        .O(pulse_1_i_83_n_0));
  LUT6 #(
    .INIT(64'h6699699696696699)) 
    pulse_1_i_84
       (.I0(pulse_1_i_80_n_0),
        .I1(pulse1_cfg[28]),
        .I2(pulse_1_reg_i_141_n_2),
        .I3(pulse1_cfg[30]),
        .I4(pulse1_cfg[27]),
        .I5(pulse1_cfg[29]),
        .O(pulse_1_i_84_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    pulse_1_i_85
       (.I0(pulse1_cfg[31]),
        .I1(pulse_1_i_145_n_0),
        .I2(pulse_1_i_146_n_0),
        .I3(pulse_1_reg_i_141_n_7),
        .I4(pulse1_cfg[26]),
        .I5(pulse1_cfg[28]),
        .O(pulse_1_i_85_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_1_i_86
       (.I0(pulse_1_i_82_n_0),
        .I1(pulse_1_i_143_n_0),
        .I2(pulse1_cfg[31]),
        .I3(pulse_1_reg_i_142_n_4),
        .I4(pulse1_cfg[25]),
        .I5(pulse1_cfg[27]),
        .O(pulse_1_i_86_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_87
       (.I0(\pulse1_cfg_r_reg[9]_0 [0]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_90_0[2]),
        .I3(pulse_1_reg_i_2[2]),
        .I4(\pulse1_cfg_r_reg[31]_5 ),
        .O(pulse_1_i_87_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_88
       (.I0(\pulse1_cfg_r_reg[3]_0 [1]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_90_0[1]),
        .I3(pulse_1_reg_i_2[1]),
        .I4(pulse_1_i_148_n_0),
        .O(pulse_1_i_88_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_1_i_89
       (.I0(\pulse1_cfg_r_reg[3]_0 [0]),
        .I1(pulse_1_i_27_n_0),
        .I2(pulse_1_i_90_0[0]),
        .I3(pulse_1_reg_i_2[0]),
        .I4(\pulse1_cfg_r_reg[31]_6 ),
        .O(pulse_1_i_89_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_90
       (.I0(\pulse1_cfg_r_reg[31]_5 ),
        .I1(pulse_1_reg_i_2[2]),
        .I2(pulse_1_i_149_n_0),
        .I3(pulse_1_i_101_n_0),
        .I4(pulse_1_i_97_n_0),
        .I5(pulse_1_reg_i_2[3]),
        .O(pulse_1_i_90_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_91
       (.I0(pulse_1_i_148_n_0),
        .I1(pulse_1_reg_i_2[1]),
        .I2(pulse_1_i_150_n_0),
        .I3(pulse_1_i_149_n_0),
        .I4(\pulse1_cfg_r_reg[31]_5 ),
        .I5(pulse_1_reg_i_2[2]),
        .O(pulse_1_i_91_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_1_i_92
       (.I0(\pulse1_cfg_r_reg[31]_6 ),
        .I1(pulse_1_reg_i_2[0]),
        .I2(pulse_1_i_151_n_0),
        .I3(pulse_1_i_150_n_0),
        .I4(pulse_1_i_148_n_0),
        .I5(pulse_1_reg_i_2[1]),
        .O(pulse_1_i_92_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    pulse_1_i_93
       (.I0(pulse_1_reg_i_2[0]),
        .I1(\pulse1_cfg_r_reg[31]_6 ),
        .I2(\pulse1_cfg_r_reg[3]_0 [0]),
        .I3(pulse_1_i_27_n_0),
        .I4(pulse_1_i_90_0[0]),
        .O(pulse_1_i_93_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_95
       (.I0(\pulse1_cfg_r_reg[30]_0 [0]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_48_1[1]),
        .O(pulse_1_i_95_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_1_i_97
       (.I0(\pulse1_cfg_r_reg[25]_0 [1]),
        .I1(pulse1_cfg[31]),
        .I2(pulse_1_i_32),
        .I3(pulse_1_reg_i_62_n_2),
        .I4(pulse_1_i_90_1[3]),
        .O(pulse_1_i_97_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_98
       (.I0(\pulse1_cfg_r_reg[14]_0 [0]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_48_0[2]),
        .O(pulse_1_i_98_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_1_i_99
       (.I0(\pulse1_cfg_r_reg[9]_0 [3]),
        .I1(pulse1_cfg[15]),
        .I2(pulse_1_i_8_0),
        .I3(pulse_1_reg_i_64_n_2),
        .I4(pulse_1_i_48_0[1]),
        .O(pulse_1_i_99_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_111
       (.CI(pulse_1_reg_i_170_n_0),
        .CO({pulse_1_reg_i_111_n_0,pulse_1_reg_i_111_n_1,pulse_1_reg_i_111_n_2,pulse_1_reg_i_111_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_171_n_0,pulse_1_i_172_n_0,pulse_1_i_173_n_0,pulse_1_i_174_n_0}),
        .O(NLW_pulse_1_reg_i_111_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_175_n_0,pulse_1_i_176_n_0,pulse_1_i_177_n_0,pulse_1_i_178_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_117
       (.CI(pulse_1_reg_i_183_n_0),
        .CO({pulse_1_reg_i_117_n_0,pulse_1_reg_i_117_n_1,pulse_1_reg_i_117_n_2,pulse_1_reg_i_117_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_184_n_0,pulse_1_i_185_n_0,pulse_1_i_186_n_0,pulse_1_i_187_n_0}),
        .O(NLW_pulse_1_reg_i_117_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_188_n_0,pulse_1_i_189_n_0,pulse_1_i_190_n_0,pulse_1_i_191_n_0}));
  CARRY4 pulse_1_reg_i_122
       (.CI(pulse_1_reg_i_161_n_0),
        .CO({NLW_pulse_1_reg_i_122_CO_UNCONNECTED[3:2],pulse_1_reg_i_122_n_2,NLW_pulse_1_reg_i_122_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse1_cfg[15]}),
        .O({NLW_pulse_1_reg_i_122_O_UNCONNECTED[3:1],pulse_1_reg_i_122_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_1_i_192_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_132
       (.CI(pulse_1_reg_i_198_n_0),
        .CO({pulse_1_reg_i_132_n_0,pulse_1_reg_i_132_n_1,pulse_1_reg_i_132_n_2,pulse_1_reg_i_132_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_199_n_0,pulse_1_i_200_n_0,pulse_1_i_201_n_0,pulse1_cfg[19]}),
        .O(NLW_pulse_1_reg_i_132_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_202_n_0,pulse_1_i_203_n_0,pulse_1_i_204_n_0,pulse_1_i_205_n_0}));
  CARRY4 pulse_1_reg_i_141
       (.CI(pulse_1_reg_i_142_n_0),
        .CO({NLW_pulse_1_reg_i_141_CO_UNCONNECTED[3:2],pulse_1_reg_i_141_n_2,NLW_pulse_1_reg_i_141_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse1_cfg[31]}),
        .O({NLW_pulse_1_reg_i_141_O_UNCONNECTED[3:1],pulse_1_reg_i_141_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_1_i_211_n_0}));
  CARRY4 pulse_1_reg_i_142
       (.CI(pulse_1_reg_i_195_n_0),
        .CO({pulse_1_reg_i_142_n_0,pulse_1_reg_i_142_n_1,pulse_1_reg_i_142_n_2,pulse_1_reg_i_142_n_3}),
        .CYINIT(1'b0),
        .DI({pulse1_cfg[30],pulse_1_i_212_n_0,pulse_1_i_213_n_0,pulse_1_i_214_n_0}),
        .O({pulse_1_reg_i_142_n_4,pulse_1_reg_i_142_n_5,pulse_1_reg_i_142_n_6,pulse_1_reg_i_142_n_7}),
        .S({pulse_1_i_215_n_0,pulse_1_i_216_n_0,pulse_1_i_217_n_0,pulse_1_i_218_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_147
       (.CI(pulse_1_reg_i_219_n_0),
        .CO({pulse_1_reg_i_147_n_0,pulse_1_reg_i_147_n_1,pulse_1_reg_i_147_n_2,pulse_1_reg_i_147_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_220_n_0,pulse_1_i_221_n_0,pulse_1_i_222_n_0,pulse_1_i_223_n_0}),
        .O({\pulse1_cfg_r_reg[3]_0 ,NLW_pulse_1_reg_i_147_O_UNCONNECTED[1:0]}),
        .S({pulse_1_i_224_n_0,pulse_1_i_225_n_0,pulse_1_i_226_n_0,pulse_1_i_227_n_0}));
  CARRY4 pulse_1_reg_i_16
       (.CI(pulse_1_reg_i_43_n_0),
        .CO({pulse_1_reg_i_16_n_0,pulse_1_reg_i_16_n_1,pulse_1_reg_i_16_n_2,pulse_1_reg_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_44_n_0,pulse_1_i_45_n_0,pulse_1_i_46_n_0,pulse_1_i_47_n_0}),
        .O(NLW_pulse_1_reg_i_16_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_48_n_0,pulse_1_i_49_n_0,pulse_1_i_50_n_0,pulse_1_i_51_n_0}));
  CARRY4 pulse_1_reg_i_161
       (.CI(pulse_1_reg_i_230_n_0),
        .CO({pulse_1_reg_i_161_n_0,pulse_1_reg_i_161_n_1,pulse_1_reg_i_161_n_2,pulse_1_reg_i_161_n_3}),
        .CYINIT(1'b0),
        .DI({pulse1_cfg[14],pulse_1_i_233_n_0,pulse_1_i_234_n_0,pulse_1_i_235_n_0}),
        .O({pulse_1_reg_i_161_n_4,pulse_1_reg_i_161_n_5,pulse_1_reg_i_161_n_6,pulse_1_reg_i_161_n_7}),
        .S({pulse_1_i_236_n_0,pulse_1_i_237_n_0,pulse_1_i_238_n_0,pulse_1_i_239_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_170
       (.CI(pulse_1_reg_i_245_n_0),
        .CO({pulse_1_reg_i_170_n_0,pulse_1_reg_i_170_n_1,pulse_1_reg_i_170_n_2,pulse_1_reg_i_170_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_246_n_0,pulse_1_i_247_n_0,pulse_1_i_248_n_0,pulse_1_i_249_n_0}),
        .O(NLW_pulse_1_reg_i_170_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_250_n_0,pulse_1_i_251_n_0,pulse_1_i_252_n_0,pulse_1_i_253_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_183
       (.CI(pulse_1_reg_i_259_n_0),
        .CO({pulse_1_reg_i_183_n_0,pulse_1_reg_i_183_n_1,pulse_1_reg_i_183_n_2,pulse_1_reg_i_183_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_260_n_0,pulse_1_i_261_n_0,pulse_1_i_262_n_0,pulse_1_i_263_n_0}),
        .O(NLW_pulse_1_reg_i_183_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_264_n_0,pulse_1_i_265_n_0,pulse_1_i_266_n_0,pulse_1_i_267_n_0}));
  CARRY4 pulse_1_reg_i_195
       (.CI(pulse_1_reg_i_208_n_0),
        .CO({pulse_1_reg_i_195_n_0,pulse_1_reg_i_195_n_1,pulse_1_reg_i_195_n_2,pulse_1_reg_i_195_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_268_n_0,pulse_1_i_269_n_0,pulse_1_i_270_n_0,pulse_1_i_271_n_0}),
        .O({pulse_1_reg_i_195_n_4,pulse_1_reg_i_195_n_5,pulse_1_reg_i_195_n_6,pulse_1_reg_i_195_n_7}),
        .S({pulse_1_i_272_n_0,pulse_1_i_273_n_0,pulse_1_i_274_n_0,pulse_1_i_275_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_198
       (.CI(1'b0),
        .CO({pulse_1_reg_i_198_n_0,pulse_1_reg_i_198_n_1,pulse_1_reg_i_198_n_2,pulse_1_reg_i_198_n_3}),
        .CYINIT(1'b0),
        .DI({pulse1_cfg[18:16],1'b0}),
        .O(NLW_pulse_1_reg_i_198_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_276_n_0,pulse_1_i_277_n_0,pulse_1_i_278_n_0,pulse_1_reg_i_279_n_7}));
  CARRY4 pulse_1_reg_i_208
       (.CI(pulse_1_reg_i_279_n_0),
        .CO({pulse_1_reg_i_208_n_0,pulse_1_reg_i_208_n_1,pulse_1_reg_i_208_n_2,pulse_1_reg_i_208_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_280_n_0,pulse_1_i_281_n_0,pulse_1_i_282_n_0,pulse_1_i_283_n_0}),
        .O({pulse_1_reg_i_208_n_4,pulse_1_reg_i_208_n_5,pulse_1_reg_i_208_n_6,pulse_1_reg_i_208_n_7}),
        .S({pulse_1_i_284_n_0,pulse_1_i_285_n_0,pulse_1_i_286_n_0,pulse_1_i_287_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_219
       (.CI(pulse_1_reg_i_288_n_0),
        .CO({pulse_1_reg_i_219_n_0,pulse_1_reg_i_219_n_1,pulse_1_reg_i_219_n_2,pulse_1_reg_i_219_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_289_n_0,pulse_1_i_290_n_0,pulse_1_i_291_n_0,pulse1_cfg[3]}),
        .O(NLW_pulse_1_reg_i_219_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_292_n_0,pulse_1_i_293_n_0,pulse_1_i_294_n_0,pulse_1_i_295_n_0}));
  CARRY4 pulse_1_reg_i_230
       (.CI(pulse_1_reg_i_298_n_0),
        .CO({pulse_1_reg_i_230_n_0,pulse_1_reg_i_230_n_1,pulse_1_reg_i_230_n_2,pulse_1_reg_i_230_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_301_n_0,pulse_1_i_302_n_0,pulse_1_i_303_n_0,pulse_1_i_304_n_0}),
        .O({pulse_1_reg_i_230_n_4,pulse_1_reg_i_230_n_5,pulse_1_reg_i_230_n_6,pulse_1_reg_i_230_n_7}),
        .S({pulse_1_i_305_n_0,pulse_1_i_306_n_0,pulse_1_i_307_n_0,pulse_1_i_308_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_245
       (.CI(1'b0),
        .CO({pulse_1_reg_i_245_n_0,pulse_1_reg_i_245_n_1,pulse_1_reg_i_245_n_2,pulse_1_reg_i_245_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_312_n_0,pulse_1_i_313_n_0,pulse_1_i_314_n_0,1'b0}),
        .O(NLW_pulse_1_reg_i_245_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_315_n_0,pulse_1_i_316_n_0,pulse_1_i_317_n_0,pulse_1_i_318_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_259
       (.CI(1'b0),
        .CO({pulse_1_reg_i_259_n_0,pulse_1_reg_i_259_n_1,pulse_1_reg_i_259_n_2,pulse_1_reg_i_259_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_322_n_0,pulse_1_i_323_n_0,pulse_1_i_324_n_0,1'b0}),
        .O(NLW_pulse_1_reg_i_259_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_325_n_0,pulse_1_i_326_n_0,pulse_1_i_327_n_0,pulse_1_i_328_n_0}));
  CARRY4 pulse_1_reg_i_279
       (.CI(pulse_1_reg_i_329_n_0),
        .CO({pulse_1_reg_i_279_n_0,pulse_1_reg_i_279_n_1,pulse_1_reg_i_279_n_2,pulse_1_reg_i_279_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_330_n_0,pulse_1_i_331_n_0,pulse_1_i_332_n_0,pulse1_cfg[18]}),
        .O({pulse_1_reg_i_279_n_4,pulse_1_reg_i_279_n_5,pulse_1_reg_i_279_n_6,pulse_1_reg_i_279_n_7}),
        .S({pulse_1_i_333_n_0,pulse_1_i_334_n_0,pulse_1_i_335_n_0,pulse_1_i_336_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_28
       (.CI(pulse_1_reg_i_52_n_0),
        .CO({NLW_pulse_1_reg_i_28_CO_UNCONNECTED[3:1],pulse_1_reg_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse_1_i_65_n_0}),
        .O({NLW_pulse_1_reg_i_28_O_UNCONNECTED[3:2],\pulse1_cfg_r_reg[15]_0 }),
        .S({1'b0,1'b0,pulse_1_i_66_n_0,pulse_1_i_67_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_288
       (.CI(1'b0),
        .CO({pulse_1_reg_i_288_n_0,pulse_1_reg_i_288_n_1,pulse_1_reg_i_288_n_2,pulse_1_reg_i_288_n_3}),
        .CYINIT(1'b0),
        .DI({pulse1_cfg[2:0],1'b0}),
        .O(NLW_pulse_1_reg_i_288_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_337_n_0,pulse_1_i_338_n_0,pulse_1_i_339_n_0,pulse_1_reg_i_340_n_7}));
  CARRY4 pulse_1_reg_i_298
       (.CI(pulse_1_reg_i_340_n_0),
        .CO({pulse_1_reg_i_298_n_0,pulse_1_reg_i_298_n_1,pulse_1_reg_i_298_n_2,pulse_1_reg_i_298_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_341_n_0,pulse_1_i_342_n_0,pulse_1_i_343_n_0,pulse_1_i_344_n_0}),
        .O({pulse_1_reg_i_298_n_4,pulse_1_reg_i_298_n_5,pulse_1_reg_i_298_n_6,pulse_1_reg_i_298_n_7}),
        .S({pulse_1_i_345_n_0,pulse_1_i_346_n_0,pulse_1_i_347_n_0,pulse_1_i_348_n_0}));
  CARRY4 pulse_1_reg_i_329
       (.CI(1'b0),
        .CO({pulse_1_reg_i_329_n_0,pulse_1_reg_i_329_n_1,pulse_1_reg_i_329_n_2,pulse_1_reg_i_329_n_3}),
        .CYINIT(1'b0),
        .DI({pulse1_cfg[17:16],1'b0,1'b1}),
        .O(NLW_pulse_1_reg_i_329_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_349_n_0,pulse_1_i_350_n_0,pulse_1_i_351_n_0,pulse1_cfg[16]}));
  CARRY4 pulse_1_reg_i_340
       (.CI(pulse_1_reg_i_352_n_0),
        .CO({pulse_1_reg_i_340_n_0,pulse_1_reg_i_340_n_1,pulse_1_reg_i_340_n_2,pulse_1_reg_i_340_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_353_n_0,pulse_1_i_354_n_0,pulse_1_i_355_n_0,pulse1_cfg[2]}),
        .O({pulse_1_reg_i_340_n_4,pulse_1_reg_i_340_n_5,pulse_1_reg_i_340_n_6,pulse_1_reg_i_340_n_7}),
        .S({pulse_1_i_356_n_0,pulse_1_i_357_n_0,pulse_1_i_358_n_0,pulse_1_i_359_n_0}));
  CARRY4 pulse_1_reg_i_352
       (.CI(1'b0),
        .CO({pulse_1_reg_i_352_n_0,pulse_1_reg_i_352_n_1,pulse_1_reg_i_352_n_2,pulse_1_reg_i_352_n_3}),
        .CYINIT(1'b0),
        .DI({pulse1_cfg[1:0],1'b0,1'b1}),
        .O(NLW_pulse_1_reg_i_352_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_360_n_0,pulse_1_i_361_n_0,pulse_1_i_362_n_0,pulse1_cfg[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_38
       (.CI(pulse_1_reg_i_42_n_0),
        .CO({NLW_pulse_1_reg_i_38_CO_UNCONNECTED[3:1],pulse_1_reg_i_38_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse_1_i_76_n_0}),
        .O({NLW_pulse_1_reg_i_38_O_UNCONNECTED[3:2],\pulse1_cfg_r_reg[31]_1 [2:1]}),
        .S({1'b0,1'b0,pulse_1_i_77_n_0,pulse_1_i_78_n_0}));
  CARRY4 pulse_1_reg_i_4
       (.CI(pulse_1_reg_i_16_n_0),
        .CO({\cnt1_reg[10] ,pulse_1_reg_i_4_n_1,pulse_1_reg_i_4_n_2,pulse_1_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_17_n_0,pulse_1_i_18_n_0,pulse_1_i_19_n_0,pulse_1_i_20_n_0}),
        .O(NLW_pulse_1_reg_i_4_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_21_n_0,pulse_1_i_22_n_0,pulse_1_i_23_n_0,pulse_1_i_24_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_42
       (.CI(pulse_1_reg_i_71_n_0),
        .CO({pulse_1_reg_i_42_n_0,pulse_1_reg_i_42_n_1,pulse_1_reg_i_42_n_2,pulse_1_reg_i_42_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_79_n_0,pulse_1_i_80_n_0,pulse_1_i_81_n_0,pulse_1_i_82_n_0}),
        .O({\pulse1_cfg_r_reg[31]_1 [0],\pulse1_cfg_r_reg[30]_0 [3:1]}),
        .S({pulse_1_i_83_n_0,pulse_1_i_84_n_0,pulse_1_i_85_n_0,pulse_1_i_86_n_0}));
  CARRY4 pulse_1_reg_i_43
       (.CI(1'b0),
        .CO({pulse_1_reg_i_43_n_0,pulse_1_reg_i_43_n_1,pulse_1_reg_i_43_n_2,pulse_1_reg_i_43_n_3}),
        .CYINIT(1'b1),
        .DI({pulse_1_i_87_n_0,pulse_1_i_88_n_0,pulse_1_i_89_n_0,1'b1}),
        .O(NLW_pulse_1_reg_i_43_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_90_n_0,pulse_1_i_91_n_0,pulse_1_i_92_n_0,pulse_1_i_93_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_52
       (.CI(pulse_1_reg_i_94_n_0),
        .CO({pulse_1_reg_i_52_n_0,pulse_1_reg_i_52_n_1,pulse_1_reg_i_52_n_2,pulse_1_reg_i_52_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_102_n_0,pulse_1_i_103_n_0,pulse_1_i_104_n_0,pulse_1_i_105_n_0}),
        .O(\pulse1_cfg_r_reg[14]_0 ),
        .S({pulse_1_i_106_n_0,pulse_1_i_107_n_0,pulse_1_i_108_n_0,pulse_1_i_109_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_62
       (.CI(pulse_1_reg_i_111_n_0),
        .CO({NLW_pulse_1_reg_i_62_CO_UNCONNECTED[3:2],pulse_1_reg_i_62_n_2,pulse_1_reg_i_62_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_1_i_112_n_0,pulse_1_i_113_n_0}),
        .O(NLW_pulse_1_reg_i_62_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_1_i_114_n_0,pulse_1_i_115_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_64
       (.CI(pulse_1_reg_i_117_n_0),
        .CO({NLW_pulse_1_reg_i_64_CO_UNCONNECTED[3:2],pulse_1_reg_i_64_n_2,pulse_1_reg_i_64_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_1_i_118_n_0,pulse_1_i_119_n_0}),
        .O(NLW_pulse_1_reg_i_64_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_1_i_120_n_0,pulse_1_i_121_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_71
       (.CI(pulse_1_reg_i_75_n_0),
        .CO({pulse_1_reg_i_71_n_0,pulse_1_reg_i_71_n_1,pulse_1_reg_i_71_n_2,pulse_1_reg_i_71_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_123_n_0,pulse_1_i_124_n_0,pulse_1_i_125_n_0,pulse_1_i_126_n_0}),
        .O({\pulse1_cfg_r_reg[30]_0 [0],\pulse1_cfg_r_reg[25]_0 }),
        .S({pulse_1_i_127_n_0,pulse_1_i_128_n_0,pulse_1_i_129_n_0,pulse_1_i_130_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_75
       (.CI(pulse_1_reg_i_132_n_0),
        .CO({pulse_1_reg_i_75_n_0,pulse_1_reg_i_75_n_1,pulse_1_reg_i_75_n_2,pulse_1_reg_i_75_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_133_n_0,pulse_1_i_134_n_0,pulse_1_i_135_n_0,pulse_1_i_136_n_0}),
        .O({\pulse1_cfg_r_reg[19]_0 ,NLW_pulse_1_reg_i_75_O_UNCONNECTED[1:0]}),
        .S({pulse_1_i_137_n_0,pulse_1_i_138_n_0,pulse_1_i_139_n_0,pulse_1_i_140_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_94
       (.CI(pulse_1_reg_i_147_n_0),
        .CO({pulse_1_reg_i_94_n_0,pulse_1_reg_i_94_n_1,pulse_1_reg_i_94_n_2,pulse_1_reg_i_94_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_152_n_0,pulse_1_i_153_n_0,pulse_1_i_154_n_0,pulse_1_i_155_n_0}),
        .O(\pulse1_cfg_r_reg[9]_0 ),
        .S({pulse_1_i_156_n_0,pulse_1_i_157_n_0,pulse_1_i_158_n_0,pulse_1_i_159_n_0}));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    pulse_2_i_1
       (.I0(pulse_2_reg),
        .I1(pulse_2_reg_0),
        .I2(mmcm_locked),
        .I3(ctrl_reg[4]),
        .I4(ctrl_reg[1]),
        .I5(pulse_seq_reg[2]),
        .O(pulse_20));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_100
       (.I0(\pulse2_cfg_r_reg[9]_0 [2]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_48_0[0]),
        .O(pulse_2_i_100_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_101
       (.I0(\pulse2_cfg_r_reg[9]_0 [1]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_90_0[3]),
        .O(pulse_2_i_101_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_2_i_102
       (.I0(pulse2_cfg[14]),
        .I1(pulse2_cfg[12]),
        .I2(pulse2_cfg[13]),
        .I3(pulse2_cfg[11]),
        .I4(pulse_2_reg_i_122_n_2),
        .O(pulse_2_i_102_n_0));
  LUT6 #(
    .INIT(64'h9696009600960000)) 
    pulse_2_i_103
       (.I0(pulse2_cfg[13]),
        .I1(pulse_2_reg_i_122_n_2),
        .I2(pulse2_cfg[11]),
        .I3(pulse2_cfg[12]),
        .I4(pulse2_cfg[10]),
        .I5(pulse_2_reg_i_122_n_7),
        .O(pulse_2_i_103_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_104
       (.I0(pulse2_cfg[11]),
        .I1(pulse2_cfg[9]),
        .I2(pulse_2_reg_i_161_n_4),
        .I3(pulse2_cfg[15]),
        .I4(pulse_2_i_162_n_0),
        .O(pulse_2_i_104_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_105
       (.I0(pulse2_cfg[10]),
        .I1(pulse2_cfg[8]),
        .I2(pulse_2_reg_i_161_n_5),
        .I3(pulse2_cfg[14]),
        .I4(pulse_2_i_163_n_0),
        .O(pulse_2_i_105_n_0));
  LUT6 #(
    .INIT(64'hEC13C83737C8EC13)) 
    pulse_2_i_106
       (.I0(pulse2_cfg[11]),
        .I1(pulse2_cfg[13]),
        .I2(pulse_2_reg_i_122_n_2),
        .I3(pulse2_cfg[15]),
        .I4(pulse2_cfg[12]),
        .I5(pulse2_cfg[14]),
        .O(pulse_2_i_106_n_0));
  LUT6 #(
    .INIT(64'h6699699696696699)) 
    pulse_2_i_107
       (.I0(pulse_2_i_103_n_0),
        .I1(pulse2_cfg[12]),
        .I2(pulse_2_reg_i_122_n_2),
        .I3(pulse2_cfg[14]),
        .I4(pulse2_cfg[11]),
        .I5(pulse2_cfg[13]),
        .O(pulse_2_i_107_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    pulse_2_i_108
       (.I0(pulse2_cfg[15]),
        .I1(pulse_2_i_164_n_0),
        .I2(pulse_2_i_165_n_0),
        .I3(pulse_2_reg_i_122_n_7),
        .I4(pulse2_cfg[10]),
        .I5(pulse2_cfg[12]),
        .O(pulse_2_i_108_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_109
       (.I0(pulse_2_i_105_n_0),
        .I1(pulse_2_i_162_n_0),
        .I2(pulse2_cfg[15]),
        .I3(pulse_2_reg_i_161_n_4),
        .I4(pulse2_cfg[9]),
        .I5(pulse2_cfg[11]),
        .O(pulse_2_i_109_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_112
       (.I0(pulse_2_reg_i_62_0[3]),
        .I1(pulse2_cfg[30]),
        .O(pulse_2_i_112_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_113
       (.I0(pulse_2_reg_i_62_0[2]),
        .I1(pulse2_cfg[29]),
        .O(pulse_2_i_113_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_114
       (.I0(pulse2_cfg[30]),
        .I1(pulse_2_reg_i_62_0[3]),
        .I2(pulse_2_i_32),
        .I3(pulse2_cfg[31]),
        .O(pulse_2_i_114_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_115
       (.I0(pulse2_cfg[29]),
        .I1(pulse_2_reg_i_62_0[2]),
        .I2(pulse_2_reg_i_62_0[3]),
        .I3(pulse2_cfg[30]),
        .O(pulse_2_i_115_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_118
       (.I0(pulse_2_reg_i_64_0[3]),
        .I1(pulse2_cfg[14]),
        .O(pulse_2_i_118_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_119
       (.I0(pulse_2_reg_i_64_0[2]),
        .I1(pulse2_cfg[13]),
        .O(pulse_2_i_119_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_120
       (.I0(pulse2_cfg[14]),
        .I1(pulse_2_reg_i_64_0[3]),
        .I2(pulse_2_i_8_0),
        .I3(pulse2_cfg[15]),
        .O(pulse_2_i_120_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_121
       (.I0(pulse2_cfg[13]),
        .I1(pulse_2_reg_i_64_0[2]),
        .I2(pulse_2_reg_i_64_0[3]),
        .I3(pulse2_cfg[14]),
        .O(pulse_2_i_121_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_123
       (.I0(pulse2_cfg[25]),
        .I1(pulse2_cfg[23]),
        .I2(pulse_2_reg_i_142_n_6),
        .I3(pulse2_cfg[29]),
        .I4(pulse_2_i_193_n_0),
        .O(pulse_2_i_123_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_124
       (.I0(pulse2_cfg[24]),
        .I1(pulse2_cfg[22]),
        .I2(pulse_2_reg_i_142_n_7),
        .I3(pulse2_cfg[28]),
        .I4(pulse_2_i_194_n_0),
        .O(pulse_2_i_124_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_125
       (.I0(pulse2_cfg[23]),
        .I1(pulse2_cfg[21]),
        .I2(pulse_2_reg_i_195_n_4),
        .I3(pulse2_cfg[27]),
        .I4(pulse_2_i_196_n_0),
        .O(pulse_2_i_125_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_126
       (.I0(pulse2_cfg[22]),
        .I1(pulse2_cfg[20]),
        .I2(pulse_2_reg_i_195_n_5),
        .I3(pulse2_cfg[26]),
        .I4(pulse_2_i_197_n_0),
        .O(pulse_2_i_126_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_127
       (.I0(pulse_2_i_123_n_0),
        .I1(pulse_2_i_144_n_0),
        .I2(pulse2_cfg[30]),
        .I3(pulse_2_reg_i_142_n_5),
        .I4(pulse2_cfg[24]),
        .I5(pulse2_cfg[26]),
        .O(pulse_2_i_127_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_128
       (.I0(pulse_2_i_124_n_0),
        .I1(pulse_2_i_193_n_0),
        .I2(pulse2_cfg[29]),
        .I3(pulse_2_reg_i_142_n_6),
        .I4(pulse2_cfg[23]),
        .I5(pulse2_cfg[25]),
        .O(pulse_2_i_128_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_129
       (.I0(pulse_2_i_125_n_0),
        .I1(pulse_2_i_194_n_0),
        .I2(pulse2_cfg[28]),
        .I3(pulse_2_reg_i_142_n_7),
        .I4(pulse2_cfg[22]),
        .I5(pulse2_cfg[24]),
        .O(pulse_2_i_129_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_130
       (.I0(pulse_2_i_126_n_0),
        .I1(pulse_2_i_196_n_0),
        .I2(pulse2_cfg[27]),
        .I3(pulse_2_reg_i_195_n_4),
        .I4(pulse2_cfg[21]),
        .I5(pulse2_cfg[23]),
        .O(pulse_2_i_130_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_133
       (.I0(pulse2_cfg[21]),
        .I1(pulse2_cfg[19]),
        .I2(pulse_2_reg_i_195_n_6),
        .I3(pulse2_cfg[25]),
        .I4(pulse_2_i_206_n_0),
        .O(pulse_2_i_133_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_134
       (.I0(pulse2_cfg[20]),
        .I1(pulse_2_reg_i_195_n_7),
        .I2(pulse2_cfg[18]),
        .I3(pulse2_cfg[24]),
        .I4(pulse_2_i_207_n_0),
        .O(pulse_2_i_134_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_135
       (.I0(pulse2_cfg[19]),
        .I1(pulse_2_reg_i_208_n_4),
        .I2(pulse2_cfg[17]),
        .I3(pulse2_cfg[23]),
        .I4(pulse_2_i_209_n_0),
        .O(pulse_2_i_135_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_136
       (.I0(pulse2_cfg[18]),
        .I1(pulse_2_reg_i_208_n_5),
        .I2(pulse2_cfg[16]),
        .I3(pulse2_cfg[22]),
        .I4(pulse_2_i_210_n_0),
        .O(pulse_2_i_136_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_137
       (.I0(pulse_2_i_133_n_0),
        .I1(pulse_2_i_197_n_0),
        .I2(pulse2_cfg[26]),
        .I3(pulse_2_reg_i_195_n_5),
        .I4(pulse2_cfg[20]),
        .I5(pulse2_cfg[22]),
        .O(pulse_2_i_137_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_138
       (.I0(pulse_2_i_134_n_0),
        .I1(pulse_2_i_206_n_0),
        .I2(pulse2_cfg[25]),
        .I3(pulse_2_reg_i_195_n_6),
        .I4(pulse2_cfg[19]),
        .I5(pulse2_cfg[21]),
        .O(pulse_2_i_138_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_139
       (.I0(pulse_2_i_135_n_0),
        .I1(pulse_2_i_207_n_0),
        .I2(pulse2_cfg[24]),
        .I3(pulse2_cfg[18]),
        .I4(pulse_2_reg_i_195_n_7),
        .I5(pulse2_cfg[20]),
        .O(pulse_2_i_139_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_140
       (.I0(pulse_2_i_136_n_0),
        .I1(pulse_2_i_209_n_0),
        .I2(pulse2_cfg[23]),
        .I3(pulse2_cfg[17]),
        .I4(pulse_2_reg_i_208_n_4),
        .I5(pulse2_cfg[19]),
        .O(pulse_2_i_140_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_143
       (.I0(pulse2_cfg[26]),
        .I1(pulse_2_reg_i_141_n_7),
        .I2(pulse2_cfg[28]),
        .O(pulse_2_i_143_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_144
       (.I0(pulse2_cfg[25]),
        .I1(pulse_2_reg_i_142_n_4),
        .I2(pulse2_cfg[27]),
        .O(pulse_2_i_144_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_145
       (.I0(pulse_2_reg_i_142_n_4),
        .I1(pulse2_cfg[25]),
        .I2(pulse2_cfg[27]),
        .O(pulse_2_i_145_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_2_i_146
       (.I0(pulse2_cfg[27]),
        .I1(pulse_2_reg_i_141_n_2),
        .I2(pulse2_cfg[29]),
        .O(pulse_2_i_146_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_148
       (.I0(\pulse2_cfg_r_reg[19]_0 [1]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_90_1[1]),
        .O(pulse_2_i_148_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_149
       (.I0(\pulse2_cfg_r_reg[9]_0 [0]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_90_0[2]),
        .O(pulse_2_i_149_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_150
       (.I0(\pulse2_cfg_r_reg[3]_0 [1]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_90_0[1]),
        .O(pulse_2_i_150_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_151
       (.I0(\pulse2_cfg_r_reg[3]_0 [0]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_90_0[0]),
        .O(pulse_2_i_151_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_152
       (.I0(pulse2_cfg[9]),
        .I1(pulse2_cfg[7]),
        .I2(pulse_2_reg_i_161_n_6),
        .I3(pulse2_cfg[13]),
        .I4(pulse_2_i_228_n_0),
        .O(pulse_2_i_152_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_153
       (.I0(pulse2_cfg[8]),
        .I1(pulse2_cfg[6]),
        .I2(pulse_2_reg_i_161_n_7),
        .I3(pulse2_cfg[12]),
        .I4(pulse_2_i_229_n_0),
        .O(pulse_2_i_153_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_154
       (.I0(pulse2_cfg[7]),
        .I1(pulse2_cfg[5]),
        .I2(pulse_2_reg_i_230_n_4),
        .I3(pulse2_cfg[11]),
        .I4(pulse_2_i_231_n_0),
        .O(pulse_2_i_154_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_155
       (.I0(pulse2_cfg[6]),
        .I1(pulse2_cfg[4]),
        .I2(pulse_2_reg_i_230_n_5),
        .I3(pulse2_cfg[10]),
        .I4(pulse_2_i_232_n_0),
        .O(pulse_2_i_155_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_156
       (.I0(pulse_2_i_152_n_0),
        .I1(pulse_2_i_163_n_0),
        .I2(pulse2_cfg[14]),
        .I3(pulse_2_reg_i_161_n_5),
        .I4(pulse2_cfg[8]),
        .I5(pulse2_cfg[10]),
        .O(pulse_2_i_156_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_157
       (.I0(pulse_2_i_153_n_0),
        .I1(pulse_2_i_228_n_0),
        .I2(pulse2_cfg[13]),
        .I3(pulse_2_reg_i_161_n_6),
        .I4(pulse2_cfg[7]),
        .I5(pulse2_cfg[9]),
        .O(pulse_2_i_157_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_158
       (.I0(pulse_2_i_154_n_0),
        .I1(pulse_2_i_229_n_0),
        .I2(pulse2_cfg[12]),
        .I3(pulse_2_reg_i_161_n_7),
        .I4(pulse2_cfg[6]),
        .I5(pulse2_cfg[8]),
        .O(pulse_2_i_158_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_159
       (.I0(pulse_2_i_155_n_0),
        .I1(pulse_2_i_231_n_0),
        .I2(pulse2_cfg[11]),
        .I3(pulse_2_reg_i_230_n_4),
        .I4(pulse2_cfg[5]),
        .I5(pulse2_cfg[7]),
        .O(pulse_2_i_159_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_162
       (.I0(pulse2_cfg[10]),
        .I1(pulse_2_reg_i_122_n_7),
        .I2(pulse2_cfg[12]),
        .O(pulse_2_i_162_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_163
       (.I0(pulse2_cfg[9]),
        .I1(pulse_2_reg_i_161_n_4),
        .I2(pulse2_cfg[11]),
        .O(pulse_2_i_163_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_164
       (.I0(pulse_2_reg_i_161_n_4),
        .I1(pulse2_cfg[9]),
        .I2(pulse2_cfg[11]),
        .O(pulse_2_i_164_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_2_i_165
       (.I0(pulse2_cfg[11]),
        .I1(pulse_2_reg_i_122_n_2),
        .I2(pulse2_cfg[13]),
        .O(pulse_2_i_165_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_17
       (.I0(\pulse2_cfg_r_reg[15]_0 [0]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_21_0[2]),
        .I3(pulse_2_reg_i_2[10]),
        .I4(\pulse2_cfg_r_reg[31]_0 ),
        .O(pulse_2_i_17_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_171
       (.I0(pulse_2_reg_i_62_0[1]),
        .I1(pulse2_cfg[28]),
        .O(pulse_2_i_171_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_172
       (.I0(pulse_2_reg_i_62_0[0]),
        .I1(pulse2_cfg[27]),
        .O(pulse_2_i_172_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_173
       (.I0(pulse_2_reg_i_111_0[3]),
        .I1(pulse2_cfg[26]),
        .O(pulse_2_i_173_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_174
       (.I0(pulse_2_reg_i_111_0[2]),
        .I1(pulse2_cfg[25]),
        .O(pulse_2_i_174_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_175
       (.I0(pulse2_cfg[28]),
        .I1(pulse_2_reg_i_62_0[1]),
        .I2(pulse_2_reg_i_62_0[2]),
        .I3(pulse2_cfg[29]),
        .O(pulse_2_i_175_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_176
       (.I0(pulse2_cfg[27]),
        .I1(pulse_2_reg_i_62_0[0]),
        .I2(pulse_2_reg_i_62_0[1]),
        .I3(pulse2_cfg[28]),
        .O(pulse_2_i_176_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_177
       (.I0(pulse2_cfg[26]),
        .I1(pulse_2_reg_i_111_0[3]),
        .I2(pulse_2_reg_i_62_0[0]),
        .I3(pulse2_cfg[27]),
        .O(pulse_2_i_177_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_178
       (.I0(pulse2_cfg[25]),
        .I1(pulse_2_reg_i_111_0[2]),
        .I2(pulse_2_reg_i_111_0[3]),
        .I3(pulse2_cfg[26]),
        .O(pulse_2_i_178_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_18
       (.I0(\pulse2_cfg_r_reg[14]_0 [3]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_21_0[1]),
        .I3(pulse_2_reg_i_2[9]),
        .I4(pulse_2_i_53_n_0),
        .O(pulse_2_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_184
       (.I0(pulse_2_reg_i_64_0[1]),
        .I1(pulse2_cfg[12]),
        .O(pulse_2_i_184_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_185
       (.I0(pulse_2_reg_i_64_0[0]),
        .I1(pulse2_cfg[11]),
        .O(pulse_2_i_185_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_186
       (.I0(pulse_2_reg_i_117_0[3]),
        .I1(pulse2_cfg[10]),
        .O(pulse_2_i_186_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_187
       (.I0(pulse_2_reg_i_117_0[2]),
        .I1(pulse2_cfg[9]),
        .O(pulse_2_i_187_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_188
       (.I0(pulse2_cfg[12]),
        .I1(pulse_2_reg_i_64_0[1]),
        .I2(pulse_2_reg_i_64_0[2]),
        .I3(pulse2_cfg[13]),
        .O(pulse_2_i_188_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_189
       (.I0(pulse2_cfg[11]),
        .I1(pulse_2_reg_i_64_0[0]),
        .I2(pulse_2_reg_i_64_0[1]),
        .I3(pulse2_cfg[12]),
        .O(pulse_2_i_189_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_19
       (.I0(\pulse2_cfg_r_reg[14]_0 [2]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_21_0[0]),
        .I3(pulse_2_reg_i_2[8]),
        .I4(\pulse2_cfg_r_reg[31]_2 ),
        .O(pulse_2_i_19_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_190
       (.I0(pulse2_cfg[10]),
        .I1(pulse_2_reg_i_117_0[3]),
        .I2(pulse_2_reg_i_64_0[0]),
        .I3(pulse2_cfg[11]),
        .O(pulse_2_i_190_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_191
       (.I0(pulse2_cfg[9]),
        .I1(pulse_2_reg_i_117_0[2]),
        .I2(pulse_2_reg_i_117_0[3]),
        .I3(pulse2_cfg[10]),
        .O(pulse_2_i_191_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_192
       (.I0(pulse2_cfg[15]),
        .O(pulse_2_i_192_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_193
       (.I0(pulse2_cfg[24]),
        .I1(pulse_2_reg_i_142_n_5),
        .I2(pulse2_cfg[26]),
        .O(pulse_2_i_193_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_194
       (.I0(pulse2_cfg[23]),
        .I1(pulse_2_reg_i_142_n_6),
        .I2(pulse2_cfg[25]),
        .O(pulse_2_i_194_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_196
       (.I0(pulse2_cfg[22]),
        .I1(pulse_2_reg_i_142_n_7),
        .I2(pulse2_cfg[24]),
        .O(pulse_2_i_196_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_197
       (.I0(pulse2_cfg[21]),
        .I1(pulse_2_reg_i_195_n_4),
        .I2(pulse2_cfg[23]),
        .O(pulse_2_i_197_n_0));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    pulse_2_i_199
       (.I0(pulse2_cfg[18]),
        .I1(pulse_2_reg_i_208_n_5),
        .I2(pulse2_cfg[16]),
        .I3(pulse2_cfg[22]),
        .I4(pulse_2_i_210_n_0),
        .O(pulse_2_i_199_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_20
       (.I0(\pulse2_cfg_r_reg[14]_0 [1]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_48_0[3]),
        .I3(pulse_2_reg_i_2[7]),
        .I4(pulse_2_i_55_n_0),
        .O(pulse_2_i_20_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pulse_2_i_200
       (.I0(pulse2_cfg[18]),
        .I1(pulse_2_reg_i_208_n_5),
        .I2(pulse2_cfg[16]),
        .I3(pulse2_cfg[21]),
        .O(pulse_2_i_200_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_2_i_201
       (.I0(pulse_2_reg_i_208_n_7),
        .I1(pulse2_cfg[16]),
        .O(pulse_2_i_201_n_0));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    pulse_2_i_202
       (.I0(pulse_2_i_210_n_0),
        .I1(pulse2_cfg[22]),
        .I2(pulse2_cfg[16]),
        .I3(pulse_2_reg_i_208_n_5),
        .I4(pulse2_cfg[18]),
        .I5(pulse2_cfg[21]),
        .O(pulse_2_i_202_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    pulse_2_i_203
       (.I0(pulse_2_i_200_n_0),
        .I1(pulse2_cfg[17]),
        .I2(pulse_2_reg_i_208_n_6),
        .I3(pulse2_cfg[20]),
        .O(pulse_2_i_203_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    pulse_2_i_204
       (.I0(pulse2_cfg[16]),
        .I1(pulse_2_reg_i_208_n_7),
        .I2(pulse2_cfg[17]),
        .I3(pulse_2_reg_i_208_n_6),
        .I4(pulse2_cfg[20]),
        .O(pulse_2_i_204_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_2_i_205
       (.I0(pulse_2_reg_i_208_n_7),
        .I1(pulse2_cfg[16]),
        .I2(pulse2_cfg[19]),
        .O(pulse_2_i_205_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_206
       (.I0(pulse2_cfg[20]),
        .I1(pulse_2_reg_i_195_n_5),
        .I2(pulse2_cfg[22]),
        .O(pulse_2_i_206_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_207
       (.I0(pulse2_cfg[19]),
        .I1(pulse_2_reg_i_195_n_6),
        .I2(pulse2_cfg[21]),
        .O(pulse_2_i_207_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_209
       (.I0(pulse2_cfg[18]),
        .I1(pulse_2_reg_i_195_n_7),
        .I2(pulse2_cfg[20]),
        .O(pulse_2_i_209_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_21
       (.I0(\pulse2_cfg_r_reg[31]_0 ),
        .I1(pulse_2_reg_i_2[10]),
        .I2(pulse_2_i_56_n_0),
        .I3(pulse_2_i_57_n_0),
        .I4(pulse_2_i_25_n_0),
        .I5(pulse_2_reg_i_2[11]),
        .O(pulse_2_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_210
       (.I0(pulse2_cfg[17]),
        .I1(pulse_2_reg_i_208_n_4),
        .I2(pulse2_cfg[19]),
        .O(pulse_2_i_210_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_211
       (.I0(pulse2_cfg[31]),
        .O(pulse_2_i_211_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_2_i_212
       (.I0(pulse2_cfg[31]),
        .I1(pulse2_cfg[29]),
        .O(pulse_2_i_212_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_2_i_213
       (.I0(pulse2_cfg[30]),
        .I1(pulse2_cfg[28]),
        .O(pulse_2_i_213_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_214
       (.I0(pulse2_cfg[27]),
        .I1(pulse2_cfg[29]),
        .I2(pulse2_cfg[31]),
        .O(pulse_2_i_214_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_2_i_215
       (.I0(pulse2_cfg[30]),
        .I1(pulse2_cfg[31]),
        .O(pulse_2_i_215_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    pulse_2_i_216
       (.I0(pulse2_cfg[29]),
        .I1(pulse2_cfg[31]),
        .I2(pulse2_cfg[30]),
        .O(pulse_2_i_216_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    pulse_2_i_217
       (.I0(pulse2_cfg[28]),
        .I1(pulse2_cfg[30]),
        .I2(pulse2_cfg[29]),
        .I3(pulse2_cfg[31]),
        .O(pulse_2_i_217_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    pulse_2_i_218
       (.I0(pulse2_cfg[31]),
        .I1(pulse2_cfg[29]),
        .I2(pulse2_cfg[27]),
        .I3(pulse2_cfg[28]),
        .I4(pulse2_cfg[30]),
        .O(pulse_2_i_218_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_22
       (.I0(pulse_2_i_53_n_0),
        .I1(pulse_2_reg_i_2[9]),
        .I2(pulse_2_i_58_n_0),
        .I3(pulse_2_i_56_n_0),
        .I4(\pulse2_cfg_r_reg[31]_0 ),
        .I5(pulse_2_reg_i_2[10]),
        .O(pulse_2_i_22_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_220
       (.I0(pulse2_cfg[5]),
        .I1(pulse2_cfg[3]),
        .I2(pulse_2_reg_i_230_n_6),
        .I3(pulse2_cfg[9]),
        .I4(pulse_2_i_296_n_0),
        .O(pulse_2_i_220_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_221
       (.I0(pulse2_cfg[4]),
        .I1(pulse_2_reg_i_230_n_7),
        .I2(pulse2_cfg[2]),
        .I3(pulse2_cfg[8]),
        .I4(pulse_2_i_297_n_0),
        .O(pulse_2_i_221_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_222
       (.I0(pulse2_cfg[3]),
        .I1(pulse_2_reg_i_298_n_4),
        .I2(pulse2_cfg[1]),
        .I3(pulse2_cfg[7]),
        .I4(pulse_2_i_299_n_0),
        .O(pulse_2_i_222_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_223
       (.I0(pulse2_cfg[2]),
        .I1(pulse_2_reg_i_298_n_5),
        .I2(pulse2_cfg[0]),
        .I3(pulse2_cfg[6]),
        .I4(pulse_2_i_300_n_0),
        .O(pulse_2_i_223_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_224
       (.I0(pulse_2_i_220_n_0),
        .I1(pulse_2_i_232_n_0),
        .I2(pulse2_cfg[10]),
        .I3(pulse_2_reg_i_230_n_5),
        .I4(pulse2_cfg[4]),
        .I5(pulse2_cfg[6]),
        .O(pulse_2_i_224_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_225
       (.I0(pulse_2_i_221_n_0),
        .I1(pulse_2_i_296_n_0),
        .I2(pulse2_cfg[9]),
        .I3(pulse_2_reg_i_230_n_6),
        .I4(pulse2_cfg[3]),
        .I5(pulse2_cfg[5]),
        .O(pulse_2_i_225_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_226
       (.I0(pulse_2_i_222_n_0),
        .I1(pulse_2_i_297_n_0),
        .I2(pulse2_cfg[8]),
        .I3(pulse2_cfg[2]),
        .I4(pulse_2_reg_i_230_n_7),
        .I5(pulse2_cfg[4]),
        .O(pulse_2_i_226_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_227
       (.I0(pulse_2_i_223_n_0),
        .I1(pulse_2_i_299_n_0),
        .I2(pulse2_cfg[7]),
        .I3(pulse2_cfg[1]),
        .I4(pulse_2_reg_i_298_n_4),
        .I5(pulse2_cfg[3]),
        .O(pulse_2_i_227_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_228
       (.I0(pulse2_cfg[8]),
        .I1(pulse_2_reg_i_161_n_5),
        .I2(pulse2_cfg[10]),
        .O(pulse_2_i_228_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_229
       (.I0(pulse2_cfg[7]),
        .I1(pulse_2_reg_i_161_n_6),
        .I2(pulse2_cfg[9]),
        .O(pulse_2_i_229_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_23
       (.I0(\pulse2_cfg_r_reg[31]_2 ),
        .I1(pulse_2_reg_i_2[8]),
        .I2(pulse_2_i_59_n_0),
        .I3(pulse_2_i_58_n_0),
        .I4(pulse_2_i_53_n_0),
        .I5(pulse_2_reg_i_2[9]),
        .O(pulse_2_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_231
       (.I0(pulse2_cfg[6]),
        .I1(pulse_2_reg_i_161_n_7),
        .I2(pulse2_cfg[8]),
        .O(pulse_2_i_231_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_232
       (.I0(pulse2_cfg[5]),
        .I1(pulse_2_reg_i_230_n_4),
        .I2(pulse2_cfg[7]),
        .O(pulse_2_i_232_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_2_i_233
       (.I0(pulse2_cfg[15]),
        .I1(pulse2_cfg[13]),
        .O(pulse_2_i_233_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_2_i_234
       (.I0(pulse2_cfg[14]),
        .I1(pulse2_cfg[12]),
        .O(pulse_2_i_234_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_235
       (.I0(pulse2_cfg[11]),
        .I1(pulse2_cfg[13]),
        .I2(pulse2_cfg[15]),
        .O(pulse_2_i_235_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_2_i_236
       (.I0(pulse2_cfg[14]),
        .I1(pulse2_cfg[15]),
        .O(pulse_2_i_236_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    pulse_2_i_237
       (.I0(pulse2_cfg[13]),
        .I1(pulse2_cfg[15]),
        .I2(pulse2_cfg[14]),
        .O(pulse_2_i_237_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    pulse_2_i_238
       (.I0(pulse2_cfg[12]),
        .I1(pulse2_cfg[14]),
        .I2(pulse2_cfg[13]),
        .I3(pulse2_cfg[15]),
        .O(pulse_2_i_238_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    pulse_2_i_239
       (.I0(pulse2_cfg[15]),
        .I1(pulse2_cfg[13]),
        .I2(pulse2_cfg[11]),
        .I3(pulse2_cfg[12]),
        .I4(pulse2_cfg[14]),
        .O(pulse_2_i_239_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_24
       (.I0(pulse_2_i_55_n_0),
        .I1(pulse_2_reg_i_2[7]),
        .I2(pulse_2_i_60_n_0),
        .I3(pulse_2_i_59_n_0),
        .I4(\pulse2_cfg_r_reg[31]_2 ),
        .I5(pulse_2_reg_i_2[8]),
        .O(pulse_2_i_24_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_246
       (.I0(pulse_2_reg_i_111_0[1]),
        .I1(pulse2_cfg[24]),
        .O(pulse_2_i_246_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_247
       (.I0(pulse_2_reg_i_111_0[0]),
        .I1(pulse2_cfg[23]),
        .O(pulse_2_i_247_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_248
       (.I0(pulse_2_reg_i_170_0[3]),
        .I1(pulse2_cfg[22]),
        .O(pulse_2_i_248_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_249
       (.I0(pulse_2_reg_i_170_0[2]),
        .I1(pulse2_cfg[21]),
        .O(pulse_2_i_249_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_25
       (.I0(\pulse2_cfg_r_reg[31]_1 [2]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_21_1[3]),
        .O(pulse_2_i_25_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_250
       (.I0(pulse2_cfg[24]),
        .I1(pulse_2_reg_i_111_0[1]),
        .I2(pulse_2_reg_i_111_0[2]),
        .I3(pulse2_cfg[25]),
        .O(pulse_2_i_250_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_251
       (.I0(pulse2_cfg[23]),
        .I1(pulse_2_reg_i_111_0[0]),
        .I2(pulse_2_reg_i_111_0[1]),
        .I3(pulse2_cfg[24]),
        .O(pulse_2_i_251_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_252
       (.I0(pulse2_cfg[22]),
        .I1(pulse_2_reg_i_170_0[3]),
        .I2(pulse_2_reg_i_111_0[0]),
        .I3(pulse2_cfg[23]),
        .O(pulse_2_i_252_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_253
       (.I0(pulse2_cfg[21]),
        .I1(pulse_2_reg_i_170_0[2]),
        .I2(pulse_2_reg_i_170_0[3]),
        .I3(pulse2_cfg[22]),
        .O(pulse_2_i_253_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_260
       (.I0(pulse_2_reg_i_117_0[1]),
        .I1(pulse2_cfg[8]),
        .O(pulse_2_i_260_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_261
       (.I0(pulse_2_reg_i_117_0[0]),
        .I1(pulse2_cfg[7]),
        .O(pulse_2_i_261_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_262
       (.I0(pulse_2_reg_i_183_0[3]),
        .I1(pulse2_cfg[6]),
        .O(pulse_2_i_262_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_263
       (.I0(pulse_2_reg_i_183_0[2]),
        .I1(pulse2_cfg[5]),
        .O(pulse_2_i_263_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_264
       (.I0(pulse2_cfg[8]),
        .I1(pulse_2_reg_i_117_0[1]),
        .I2(pulse_2_reg_i_117_0[2]),
        .I3(pulse2_cfg[9]),
        .O(pulse_2_i_264_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_265
       (.I0(pulse2_cfg[7]),
        .I1(pulse_2_reg_i_117_0[0]),
        .I2(pulse_2_reg_i_117_0[1]),
        .I3(pulse2_cfg[8]),
        .O(pulse_2_i_265_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_266
       (.I0(pulse2_cfg[6]),
        .I1(pulse_2_reg_i_183_0[3]),
        .I2(pulse_2_reg_i_117_0[0]),
        .I3(pulse2_cfg[7]),
        .O(pulse_2_i_266_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_2_i_267
       (.I0(pulse2_cfg[5]),
        .I1(pulse_2_reg_i_183_0[2]),
        .I2(pulse_2_reg_i_183_0[3]),
        .I3(pulse2_cfg[6]),
        .O(pulse_2_i_267_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_268
       (.I0(pulse2_cfg[26]),
        .I1(pulse2_cfg[28]),
        .I2(pulse2_cfg[30]),
        .O(pulse_2_i_268_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_269
       (.I0(pulse2_cfg[25]),
        .I1(pulse2_cfg[27]),
        .I2(pulse2_cfg[29]),
        .O(pulse_2_i_269_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_2_i_27
       (.I0(pulse2_cfg[15]),
        .I1(pulse_2_i_8_0),
        .I2(pulse_2_reg_i_64_n_2),
        .O(pulse_2_i_27_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_270
       (.I0(pulse2_cfg[24]),
        .I1(pulse2_cfg[26]),
        .I2(pulse2_cfg[28]),
        .O(pulse_2_i_270_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_271
       (.I0(pulse2_cfg[23]),
        .I1(pulse2_cfg[25]),
        .I2(pulse2_cfg[27]),
        .O(pulse_2_i_271_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_272
       (.I0(pulse2_cfg[30]),
        .I1(pulse2_cfg[28]),
        .I2(pulse2_cfg[26]),
        .I3(pulse2_cfg[31]),
        .I4(pulse2_cfg[27]),
        .I5(pulse2_cfg[29]),
        .O(pulse_2_i_272_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_273
       (.I0(pulse2_cfg[29]),
        .I1(pulse2_cfg[27]),
        .I2(pulse2_cfg[25]),
        .I3(pulse2_cfg[30]),
        .I4(pulse2_cfg[26]),
        .I5(pulse2_cfg[28]),
        .O(pulse_2_i_273_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_274
       (.I0(pulse2_cfg[28]),
        .I1(pulse2_cfg[26]),
        .I2(pulse2_cfg[24]),
        .I3(pulse2_cfg[29]),
        .I4(pulse2_cfg[25]),
        .I5(pulse2_cfg[27]),
        .O(pulse_2_i_274_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_275
       (.I0(pulse2_cfg[27]),
        .I1(pulse2_cfg[25]),
        .I2(pulse2_cfg[23]),
        .I3(pulse2_cfg[28]),
        .I4(pulse2_cfg[24]),
        .I5(pulse2_cfg[26]),
        .O(pulse_2_i_275_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_276
       (.I0(pulse2_cfg[18]),
        .I1(pulse_2_reg_i_279_n_4),
        .O(pulse_2_i_276_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_277
       (.I0(pulse2_cfg[17]),
        .I1(pulse_2_reg_i_279_n_5),
        .O(pulse_2_i_277_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_278
       (.I0(pulse2_cfg[16]),
        .I1(pulse_2_reg_i_279_n_6),
        .O(pulse_2_i_278_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_280
       (.I0(pulse2_cfg[22]),
        .I1(pulse2_cfg[24]),
        .I2(pulse2_cfg[26]),
        .O(pulse_2_i_280_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_281
       (.I0(pulse2_cfg[21]),
        .I1(pulse2_cfg[23]),
        .I2(pulse2_cfg[25]),
        .O(pulse_2_i_281_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_282
       (.I0(pulse2_cfg[20]),
        .I1(pulse2_cfg[22]),
        .I2(pulse2_cfg[24]),
        .O(pulse_2_i_282_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_283
       (.I0(pulse2_cfg[19]),
        .I1(pulse2_cfg[21]),
        .I2(pulse2_cfg[23]),
        .O(pulse_2_i_283_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_284
       (.I0(pulse2_cfg[26]),
        .I1(pulse2_cfg[24]),
        .I2(pulse2_cfg[22]),
        .I3(pulse2_cfg[27]),
        .I4(pulse2_cfg[23]),
        .I5(pulse2_cfg[25]),
        .O(pulse_2_i_284_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_285
       (.I0(pulse2_cfg[25]),
        .I1(pulse2_cfg[23]),
        .I2(pulse2_cfg[21]),
        .I3(pulse2_cfg[26]),
        .I4(pulse2_cfg[22]),
        .I5(pulse2_cfg[24]),
        .O(pulse_2_i_285_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_286
       (.I0(pulse2_cfg[24]),
        .I1(pulse2_cfg[22]),
        .I2(pulse2_cfg[20]),
        .I3(pulse2_cfg[25]),
        .I4(pulse2_cfg[21]),
        .I5(pulse2_cfg[23]),
        .O(pulse_2_i_286_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_287
       (.I0(pulse2_cfg[23]),
        .I1(pulse2_cfg[21]),
        .I2(pulse2_cfg[19]),
        .I3(pulse2_cfg[24]),
        .I4(pulse2_cfg[20]),
        .I5(pulse2_cfg[22]),
        .O(pulse_2_i_287_n_0));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    pulse_2_i_289
       (.I0(pulse2_cfg[2]),
        .I1(pulse_2_reg_i_298_n_5),
        .I2(pulse2_cfg[0]),
        .I3(pulse2_cfg[6]),
        .I4(pulse_2_i_300_n_0),
        .O(pulse_2_i_289_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pulse_2_i_290
       (.I0(pulse2_cfg[2]),
        .I1(pulse_2_reg_i_298_n_5),
        .I2(pulse2_cfg[0]),
        .I3(pulse2_cfg[5]),
        .O(pulse_2_i_290_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_2_i_291
       (.I0(pulse_2_reg_i_298_n_7),
        .I1(pulse2_cfg[0]),
        .O(pulse_2_i_291_n_0));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    pulse_2_i_292
       (.I0(pulse_2_i_300_n_0),
        .I1(pulse2_cfg[6]),
        .I2(pulse2_cfg[0]),
        .I3(pulse_2_reg_i_298_n_5),
        .I4(pulse2_cfg[2]),
        .I5(pulse2_cfg[5]),
        .O(pulse_2_i_292_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    pulse_2_i_293
       (.I0(pulse_2_i_290_n_0),
        .I1(pulse2_cfg[1]),
        .I2(pulse_2_reg_i_298_n_6),
        .I3(pulse2_cfg[4]),
        .O(pulse_2_i_293_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    pulse_2_i_294
       (.I0(pulse2_cfg[0]),
        .I1(pulse_2_reg_i_298_n_7),
        .I2(pulse2_cfg[1]),
        .I3(pulse_2_reg_i_298_n_6),
        .I4(pulse2_cfg[4]),
        .O(pulse_2_i_294_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_2_i_295
       (.I0(pulse_2_reg_i_298_n_7),
        .I1(pulse2_cfg[0]),
        .I2(pulse2_cfg[3]),
        .O(pulse_2_i_295_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_296
       (.I0(pulse2_cfg[4]),
        .I1(pulse_2_reg_i_230_n_5),
        .I2(pulse2_cfg[6]),
        .O(pulse_2_i_296_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_297
       (.I0(pulse2_cfg[3]),
        .I1(pulse_2_reg_i_230_n_6),
        .I2(pulse2_cfg[5]),
        .O(pulse_2_i_297_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_299
       (.I0(pulse2_cfg[2]),
        .I1(pulse_2_reg_i_230_n_7),
        .I2(pulse2_cfg[4]),
        .O(pulse_2_i_299_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_300
       (.I0(pulse2_cfg[1]),
        .I1(pulse_2_reg_i_298_n_4),
        .I2(pulse2_cfg[3]),
        .O(pulse_2_i_300_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_301
       (.I0(pulse2_cfg[10]),
        .I1(pulse2_cfg[12]),
        .I2(pulse2_cfg[14]),
        .O(pulse_2_i_301_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_302
       (.I0(pulse2_cfg[9]),
        .I1(pulse2_cfg[11]),
        .I2(pulse2_cfg[13]),
        .O(pulse_2_i_302_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_303
       (.I0(pulse2_cfg[8]),
        .I1(pulse2_cfg[10]),
        .I2(pulse2_cfg[12]),
        .O(pulse_2_i_303_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_304
       (.I0(pulse2_cfg[7]),
        .I1(pulse2_cfg[9]),
        .I2(pulse2_cfg[11]),
        .O(pulse_2_i_304_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_305
       (.I0(pulse2_cfg[14]),
        .I1(pulse2_cfg[12]),
        .I2(pulse2_cfg[10]),
        .I3(pulse2_cfg[15]),
        .I4(pulse2_cfg[11]),
        .I5(pulse2_cfg[13]),
        .O(pulse_2_i_305_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_306
       (.I0(pulse2_cfg[13]),
        .I1(pulse2_cfg[11]),
        .I2(pulse2_cfg[9]),
        .I3(pulse2_cfg[14]),
        .I4(pulse2_cfg[10]),
        .I5(pulse2_cfg[12]),
        .O(pulse_2_i_306_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_307
       (.I0(pulse2_cfg[12]),
        .I1(pulse2_cfg[10]),
        .I2(pulse2_cfg[8]),
        .I3(pulse2_cfg[13]),
        .I4(pulse2_cfg[9]),
        .I5(pulse2_cfg[11]),
        .O(pulse_2_i_307_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_308
       (.I0(pulse2_cfg[11]),
        .I1(pulse2_cfg[9]),
        .I2(pulse2_cfg[7]),
        .I3(pulse2_cfg[12]),
        .I4(pulse2_cfg[8]),
        .I5(pulse2_cfg[10]),
        .O(pulse_2_i_308_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_2_i_312
       (.I0(pulse_2_reg_i_170_0[1]),
        .I1(pulse2_cfg[20]),
        .O(pulse_2_i_312_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_313
       (.I0(pulse_2_reg_i_170_0[0]),
        .I1(pulse2_cfg[19]),
        .O(pulse_2_i_313_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_2_i_314
       (.I0(\pulse2_cfg_r_reg[19]_0 [0]),
        .I1(pulse2_cfg[18]),
        .O(pulse_2_i_314_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_2_i_315
       (.I0(pulse2_cfg[20]),
        .I1(pulse_2_reg_i_170_0[1]),
        .I2(pulse_2_reg_i_170_0[2]),
        .I3(pulse2_cfg[21]),
        .O(pulse_2_i_315_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pulse_2_i_316
       (.I0(pulse2_cfg[19]),
        .I1(pulse_2_reg_i_170_0[0]),
        .I2(pulse_2_reg_i_170_0[1]),
        .I3(pulse2_cfg[20]),
        .O(pulse_2_i_316_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_2_i_317
       (.I0(pulse2_cfg[18]),
        .I1(\pulse2_cfg_r_reg[19]_0 [0]),
        .I2(pulse_2_reg_i_170_0[0]),
        .I3(pulse2_cfg[19]),
        .O(pulse_2_i_317_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_318
       (.I0(pulse2_cfg[18]),
        .I1(\pulse2_cfg_r_reg[19]_0 [0]),
        .O(pulse_2_i_318_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_2_i_322
       (.I0(pulse_2_reg_i_183_0[1]),
        .I1(pulse2_cfg[4]),
        .O(pulse_2_i_322_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_2_i_323
       (.I0(pulse_2_reg_i_183_0[0]),
        .I1(pulse2_cfg[3]),
        .O(pulse_2_i_323_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_2_i_324
       (.I0(\pulse2_cfg_r_reg[3]_0 [0]),
        .I1(pulse2_cfg[2]),
        .O(pulse_2_i_324_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_2_i_325
       (.I0(pulse2_cfg[4]),
        .I1(pulse_2_reg_i_183_0[1]),
        .I2(pulse_2_reg_i_183_0[2]),
        .I3(pulse2_cfg[5]),
        .O(pulse_2_i_325_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pulse_2_i_326
       (.I0(pulse2_cfg[3]),
        .I1(pulse_2_reg_i_183_0[0]),
        .I2(pulse_2_reg_i_183_0[1]),
        .I3(pulse2_cfg[4]),
        .O(pulse_2_i_326_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_2_i_327
       (.I0(pulse2_cfg[2]),
        .I1(\pulse2_cfg_r_reg[3]_0 [0]),
        .I2(pulse_2_reg_i_183_0[0]),
        .I3(pulse2_cfg[3]),
        .O(pulse_2_i_327_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_328
       (.I0(pulse2_cfg[2]),
        .I1(\pulse2_cfg_r_reg[3]_0 [0]),
        .O(pulse_2_i_328_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_330
       (.I0(pulse2_cfg[18]),
        .I1(pulse2_cfg[20]),
        .I2(pulse2_cfg[22]),
        .O(pulse_2_i_330_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_331
       (.I0(pulse2_cfg[17]),
        .I1(pulse2_cfg[19]),
        .I2(pulse2_cfg[21]),
        .O(pulse_2_i_331_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_332
       (.I0(pulse2_cfg[19]),
        .I1(pulse2_cfg[17]),
        .I2(pulse2_cfg[21]),
        .O(pulse_2_i_332_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_333
       (.I0(pulse2_cfg[22]),
        .I1(pulse2_cfg[20]),
        .I2(pulse2_cfg[18]),
        .I3(pulse2_cfg[23]),
        .I4(pulse2_cfg[19]),
        .I5(pulse2_cfg[21]),
        .O(pulse_2_i_333_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_334
       (.I0(pulse2_cfg[21]),
        .I1(pulse2_cfg[19]),
        .I2(pulse2_cfg[17]),
        .I3(pulse2_cfg[22]),
        .I4(pulse2_cfg[18]),
        .I5(pulse2_cfg[20]),
        .O(pulse_2_i_334_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    pulse_2_i_335
       (.I0(pulse2_cfg[21]),
        .I1(pulse2_cfg[17]),
        .I2(pulse2_cfg[19]),
        .I3(pulse2_cfg[20]),
        .I4(pulse2_cfg[16]),
        .O(pulse_2_i_335_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_336
       (.I0(pulse2_cfg[16]),
        .I1(pulse2_cfg[20]),
        .I2(pulse2_cfg[18]),
        .O(pulse_2_i_336_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_337
       (.I0(pulse2_cfg[2]),
        .I1(pulse_2_reg_i_340_n_4),
        .O(pulse_2_i_337_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_338
       (.I0(pulse2_cfg[1]),
        .I1(pulse_2_reg_i_340_n_5),
        .O(pulse_2_i_338_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_339
       (.I0(pulse2_cfg[0]),
        .I1(pulse_2_reg_i_340_n_6),
        .O(pulse_2_i_339_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_341
       (.I0(pulse2_cfg[6]),
        .I1(pulse2_cfg[8]),
        .I2(pulse2_cfg[10]),
        .O(pulse_2_i_341_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_342
       (.I0(pulse2_cfg[5]),
        .I1(pulse2_cfg[7]),
        .I2(pulse2_cfg[9]),
        .O(pulse_2_i_342_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_343
       (.I0(pulse2_cfg[4]),
        .I1(pulse2_cfg[6]),
        .I2(pulse2_cfg[8]),
        .O(pulse_2_i_343_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_344
       (.I0(pulse2_cfg[3]),
        .I1(pulse2_cfg[5]),
        .I2(pulse2_cfg[7]),
        .O(pulse_2_i_344_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_345
       (.I0(pulse2_cfg[10]),
        .I1(pulse2_cfg[8]),
        .I2(pulse2_cfg[6]),
        .I3(pulse2_cfg[11]),
        .I4(pulse2_cfg[7]),
        .I5(pulse2_cfg[9]),
        .O(pulse_2_i_345_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_346
       (.I0(pulse2_cfg[9]),
        .I1(pulse2_cfg[7]),
        .I2(pulse2_cfg[5]),
        .I3(pulse2_cfg[10]),
        .I4(pulse2_cfg[6]),
        .I5(pulse2_cfg[8]),
        .O(pulse_2_i_346_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_347
       (.I0(pulse2_cfg[8]),
        .I1(pulse2_cfg[6]),
        .I2(pulse2_cfg[4]),
        .I3(pulse2_cfg[9]),
        .I4(pulse2_cfg[5]),
        .I5(pulse2_cfg[7]),
        .O(pulse_2_i_347_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_348
       (.I0(pulse2_cfg[7]),
        .I1(pulse2_cfg[5]),
        .I2(pulse2_cfg[3]),
        .I3(pulse2_cfg[8]),
        .I4(pulse2_cfg[4]),
        .I5(pulse2_cfg[6]),
        .O(pulse_2_i_348_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_2_i_349
       (.I0(pulse2_cfg[17]),
        .I1(pulse2_cfg[19]),
        .O(pulse_2_i_349_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_2_i_350
       (.I0(pulse2_cfg[16]),
        .I1(pulse2_cfg[18]),
        .O(pulse_2_i_350_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_351
       (.I0(pulse2_cfg[17]),
        .O(pulse_2_i_351_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_353
       (.I0(pulse2_cfg[2]),
        .I1(pulse2_cfg[4]),
        .I2(pulse2_cfg[6]),
        .O(pulse_2_i_353_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_2_i_354
       (.I0(pulse2_cfg[1]),
        .I1(pulse2_cfg[3]),
        .I2(pulse2_cfg[5]),
        .O(pulse_2_i_354_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_355
       (.I0(pulse2_cfg[3]),
        .I1(pulse2_cfg[1]),
        .I2(pulse2_cfg[5]),
        .O(pulse_2_i_355_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_356
       (.I0(pulse2_cfg[6]),
        .I1(pulse2_cfg[4]),
        .I2(pulse2_cfg[2]),
        .I3(pulse2_cfg[7]),
        .I4(pulse2_cfg[3]),
        .I5(pulse2_cfg[5]),
        .O(pulse_2_i_356_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_357
       (.I0(pulse2_cfg[5]),
        .I1(pulse2_cfg[3]),
        .I2(pulse2_cfg[1]),
        .I3(pulse2_cfg[6]),
        .I4(pulse2_cfg[2]),
        .I5(pulse2_cfg[4]),
        .O(pulse_2_i_357_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    pulse_2_i_358
       (.I0(pulse2_cfg[5]),
        .I1(pulse2_cfg[1]),
        .I2(pulse2_cfg[3]),
        .I3(pulse2_cfg[4]),
        .I4(pulse2_cfg[0]),
        .O(pulse_2_i_358_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_2_i_359
       (.I0(pulse2_cfg[0]),
        .I1(pulse2_cfg[4]),
        .I2(pulse2_cfg[2]),
        .O(pulse_2_i_359_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_2_i_360
       (.I0(pulse2_cfg[1]),
        .I1(pulse2_cfg[3]),
        .O(pulse_2_i_360_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_2_i_361
       (.I0(pulse2_cfg[0]),
        .I1(pulse2_cfg[2]),
        .O(pulse_2_i_361_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_362
       (.I0(pulse2_cfg[1]),
        .O(pulse_2_i_362_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_37
       (.I0(\pulse2_cfg_r_reg[31]_1 [1]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_21_1[2]),
        .O(\pulse2_cfg_r_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_2_i_39
       (.I0(pulse2_cfg[31]),
        .I1(pulse_2_i_32),
        .I2(pulse_2_reg_i_62_n_2),
        .O(\pulse2_cfg_r_reg[31]_7 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_41
       (.I0(\pulse2_cfg_r_reg[30]_0 [3]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_21_1[0]),
        .O(\pulse2_cfg_r_reg[31]_2 ));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_44
       (.I0(\pulse2_cfg_r_reg[14]_0 [0]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_48_0[2]),
        .I3(pulse_2_reg_i_2[6]),
        .I4(\pulse2_cfg_r_reg[31]_3 ),
        .O(pulse_2_i_44_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_45
       (.I0(\pulse2_cfg_r_reg[9]_0 [3]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_48_0[1]),
        .I3(pulse_2_reg_i_2[5]),
        .I4(pulse_2_i_95_n_0),
        .O(pulse_2_i_45_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_46
       (.I0(\pulse2_cfg_r_reg[9]_0 [2]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_48_0[0]),
        .I3(pulse_2_reg_i_2[4]),
        .I4(\pulse2_cfg_r_reg[31]_4 ),
        .O(pulse_2_i_46_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_47
       (.I0(\pulse2_cfg_r_reg[9]_0 [1]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_90_0[3]),
        .I3(pulse_2_reg_i_2[3]),
        .I4(pulse_2_i_97_n_0),
        .O(pulse_2_i_47_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_48
       (.I0(\pulse2_cfg_r_reg[31]_3 ),
        .I1(pulse_2_reg_i_2[6]),
        .I2(pulse_2_i_98_n_0),
        .I3(pulse_2_i_60_n_0),
        .I4(pulse_2_i_55_n_0),
        .I5(pulse_2_reg_i_2[7]),
        .O(pulse_2_i_48_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_49
       (.I0(pulse_2_i_95_n_0),
        .I1(pulse_2_reg_i_2[5]),
        .I2(pulse_2_i_99_n_0),
        .I3(pulse_2_i_98_n_0),
        .I4(\pulse2_cfg_r_reg[31]_3 ),
        .I5(pulse_2_reg_i_2[6]),
        .O(pulse_2_i_49_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_50
       (.I0(\pulse2_cfg_r_reg[31]_4 ),
        .I1(pulse_2_reg_i_2[4]),
        .I2(pulse_2_i_100_n_0),
        .I3(pulse_2_i_99_n_0),
        .I4(pulse_2_i_95_n_0),
        .I5(pulse_2_reg_i_2[5]),
        .O(pulse_2_i_50_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_51
       (.I0(pulse_2_i_97_n_0),
        .I1(pulse_2_reg_i_2[3]),
        .I2(pulse_2_i_101_n_0),
        .I3(pulse_2_i_100_n_0),
        .I4(\pulse2_cfg_r_reg[31]_4 ),
        .I5(pulse_2_reg_i_2[4]),
        .O(pulse_2_i_51_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_53
       (.I0(\pulse2_cfg_r_reg[31]_1 [0]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_21_1[1]),
        .O(pulse_2_i_53_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_55
       (.I0(\pulse2_cfg_r_reg[30]_0 [2]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_48_1[3]),
        .O(pulse_2_i_55_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_56
       (.I0(\pulse2_cfg_r_reg[15]_0 [0]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_21_0[2]),
        .O(pulse_2_i_56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_57
       (.I0(\pulse2_cfg_r_reg[15]_0 [1]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_21_0[3]),
        .O(pulse_2_i_57_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_58
       (.I0(\pulse2_cfg_r_reg[14]_0 [3]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_21_0[1]),
        .O(pulse_2_i_58_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_59
       (.I0(\pulse2_cfg_r_reg[14]_0 [2]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_21_0[0]),
        .O(pulse_2_i_59_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_60
       (.I0(\pulse2_cfg_r_reg[14]_0 [1]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_48_0[3]),
        .O(pulse_2_i_60_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_2_i_65
       (.I0(pulse2_cfg[15]),
        .I1(pulse2_cfg[13]),
        .I2(pulse2_cfg[14]),
        .I3(pulse2_cfg[12]),
        .I4(pulse_2_reg_i_122_n_2),
        .O(pulse_2_i_65_n_0));
  LUT4 #(
    .INIT(16'hC813)) 
    pulse_2_i_66
       (.I0(pulse2_cfg[13]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_reg_i_122_n_2),
        .I3(pulse2_cfg[14]),
        .O(pulse_2_i_66_n_0));
  LUT5 #(
    .INIT(32'h1337C813)) 
    pulse_2_i_67
       (.I0(pulse2_cfg[12]),
        .I1(pulse2_cfg[14]),
        .I2(pulse_2_reg_i_122_n_2),
        .I3(pulse2_cfg[13]),
        .I4(pulse2_cfg[15]),
        .O(pulse_2_i_67_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_68
       (.I0(\pulse2_cfg_r_reg[30]_0 [1]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_48_1[2]),
        .O(\pulse2_cfg_r_reg[31]_3 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_70
       (.I0(\pulse2_cfg_r_reg[25]_0 [2]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_48_1[0]),
        .O(\pulse2_cfg_r_reg[31]_4 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_72
       (.I0(\pulse2_cfg_r_reg[25]_0 [0]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_90_1[2]),
        .O(\pulse2_cfg_r_reg[31]_5 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_74
       (.I0(\pulse2_cfg_r_reg[19]_0 [0]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_90_1[0]),
        .O(\pulse2_cfg_r_reg[31]_6 ));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_2_i_76
       (.I0(pulse2_cfg[31]),
        .I1(pulse2_cfg[29]),
        .I2(pulse2_cfg[30]),
        .I3(pulse2_cfg[28]),
        .I4(pulse_2_reg_i_141_n_2),
        .O(pulse_2_i_76_n_0));
  LUT4 #(
    .INIT(16'hC813)) 
    pulse_2_i_77
       (.I0(pulse2_cfg[29]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_reg_i_141_n_2),
        .I3(pulse2_cfg[30]),
        .O(pulse_2_i_77_n_0));
  LUT5 #(
    .INIT(32'h1337C813)) 
    pulse_2_i_78
       (.I0(pulse2_cfg[28]),
        .I1(pulse2_cfg[30]),
        .I2(pulse_2_reg_i_141_n_2),
        .I3(pulse2_cfg[29]),
        .I4(pulse2_cfg[31]),
        .O(pulse_2_i_78_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_2_i_79
       (.I0(pulse2_cfg[30]),
        .I1(pulse2_cfg[28]),
        .I2(pulse2_cfg[29]),
        .I3(pulse2_cfg[27]),
        .I4(pulse_2_reg_i_141_n_2),
        .O(pulse_2_i_79_n_0));
  LUT6 #(
    .INIT(64'hBBB222B2444DDD4D)) 
    pulse_2_i_8
       (.I0(pulse_2_i_25_n_0),
        .I1(pulse_2_reg_i_2[11]),
        .I2(pulse_2_i_21_0[3]),
        .I3(pulse_2_i_27_n_0),
        .I4(\pulse2_cfg_r_reg[15]_0 [1]),
        .I5(pulse_2_reg_i_2[12]),
        .O(\cnt2_reg[11] ));
  LUT6 #(
    .INIT(64'h9696009600960000)) 
    pulse_2_i_80
       (.I0(pulse2_cfg[29]),
        .I1(pulse_2_reg_i_141_n_2),
        .I2(pulse2_cfg[27]),
        .I3(pulse2_cfg[28]),
        .I4(pulse2_cfg[26]),
        .I5(pulse_2_reg_i_141_n_7),
        .O(pulse_2_i_80_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_81
       (.I0(pulse2_cfg[27]),
        .I1(pulse2_cfg[25]),
        .I2(pulse_2_reg_i_142_n_4),
        .I3(pulse2_cfg[31]),
        .I4(pulse_2_i_143_n_0),
        .O(pulse_2_i_81_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_2_i_82
       (.I0(pulse2_cfg[26]),
        .I1(pulse2_cfg[24]),
        .I2(pulse_2_reg_i_142_n_5),
        .I3(pulse2_cfg[30]),
        .I4(pulse_2_i_144_n_0),
        .O(pulse_2_i_82_n_0));
  LUT6 #(
    .INIT(64'hEC13C83737C8EC13)) 
    pulse_2_i_83
       (.I0(pulse2_cfg[27]),
        .I1(pulse2_cfg[29]),
        .I2(pulse_2_reg_i_141_n_2),
        .I3(pulse2_cfg[31]),
        .I4(pulse2_cfg[28]),
        .I5(pulse2_cfg[30]),
        .O(pulse_2_i_83_n_0));
  LUT6 #(
    .INIT(64'h6699699696696699)) 
    pulse_2_i_84
       (.I0(pulse_2_i_80_n_0),
        .I1(pulse2_cfg[28]),
        .I2(pulse_2_reg_i_141_n_2),
        .I3(pulse2_cfg[30]),
        .I4(pulse2_cfg[27]),
        .I5(pulse2_cfg[29]),
        .O(pulse_2_i_84_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    pulse_2_i_85
       (.I0(pulse2_cfg[31]),
        .I1(pulse_2_i_145_n_0),
        .I2(pulse_2_i_146_n_0),
        .I3(pulse_2_reg_i_141_n_7),
        .I4(pulse2_cfg[26]),
        .I5(pulse2_cfg[28]),
        .O(pulse_2_i_85_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_2_i_86
       (.I0(pulse_2_i_82_n_0),
        .I1(pulse_2_i_143_n_0),
        .I2(pulse2_cfg[31]),
        .I3(pulse_2_reg_i_142_n_4),
        .I4(pulse2_cfg[25]),
        .I5(pulse2_cfg[27]),
        .O(pulse_2_i_86_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_87
       (.I0(\pulse2_cfg_r_reg[9]_0 [0]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_90_0[2]),
        .I3(pulse_2_reg_i_2[2]),
        .I4(\pulse2_cfg_r_reg[31]_5 ),
        .O(pulse_2_i_87_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_88
       (.I0(\pulse2_cfg_r_reg[3]_0 [1]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_90_0[1]),
        .I3(pulse_2_reg_i_2[1]),
        .I4(pulse_2_i_148_n_0),
        .O(pulse_2_i_88_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_2_i_89
       (.I0(\pulse2_cfg_r_reg[3]_0 [0]),
        .I1(pulse_2_i_27_n_0),
        .I2(pulse_2_i_90_0[0]),
        .I3(pulse_2_reg_i_2[0]),
        .I4(\pulse2_cfg_r_reg[31]_6 ),
        .O(pulse_2_i_89_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_90
       (.I0(\pulse2_cfg_r_reg[31]_5 ),
        .I1(pulse_2_reg_i_2[2]),
        .I2(pulse_2_i_149_n_0),
        .I3(pulse_2_i_101_n_0),
        .I4(pulse_2_i_97_n_0),
        .I5(pulse_2_reg_i_2[3]),
        .O(pulse_2_i_90_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_91
       (.I0(pulse_2_i_148_n_0),
        .I1(pulse_2_reg_i_2[1]),
        .I2(pulse_2_i_150_n_0),
        .I3(pulse_2_i_149_n_0),
        .I4(\pulse2_cfg_r_reg[31]_5 ),
        .I5(pulse_2_reg_i_2[2]),
        .O(pulse_2_i_91_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_2_i_92
       (.I0(\pulse2_cfg_r_reg[31]_6 ),
        .I1(pulse_2_reg_i_2[0]),
        .I2(pulse_2_i_151_n_0),
        .I3(pulse_2_i_150_n_0),
        .I4(pulse_2_i_148_n_0),
        .I5(pulse_2_reg_i_2[1]),
        .O(pulse_2_i_92_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    pulse_2_i_93
       (.I0(pulse_2_reg_i_2[0]),
        .I1(\pulse2_cfg_r_reg[31]_6 ),
        .I2(\pulse2_cfg_r_reg[3]_0 [0]),
        .I3(pulse_2_i_27_n_0),
        .I4(pulse_2_i_90_0[0]),
        .O(pulse_2_i_93_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_95
       (.I0(\pulse2_cfg_r_reg[30]_0 [0]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_48_1[1]),
        .O(pulse_2_i_95_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_2_i_97
       (.I0(\pulse2_cfg_r_reg[25]_0 [1]),
        .I1(pulse2_cfg[31]),
        .I2(pulse_2_i_32),
        .I3(pulse_2_reg_i_62_n_2),
        .I4(pulse_2_i_90_1[3]),
        .O(pulse_2_i_97_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_98
       (.I0(\pulse2_cfg_r_reg[14]_0 [0]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_48_0[2]),
        .O(pulse_2_i_98_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_2_i_99
       (.I0(\pulse2_cfg_r_reg[9]_0 [3]),
        .I1(pulse2_cfg[15]),
        .I2(pulse_2_i_8_0),
        .I3(pulse_2_reg_i_64_n_2),
        .I4(pulse_2_i_48_0[1]),
        .O(pulse_2_i_99_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_111
       (.CI(pulse_2_reg_i_170_n_0),
        .CO({pulse_2_reg_i_111_n_0,pulse_2_reg_i_111_n_1,pulse_2_reg_i_111_n_2,pulse_2_reg_i_111_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_171_n_0,pulse_2_i_172_n_0,pulse_2_i_173_n_0,pulse_2_i_174_n_0}),
        .O(NLW_pulse_2_reg_i_111_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_175_n_0,pulse_2_i_176_n_0,pulse_2_i_177_n_0,pulse_2_i_178_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_117
       (.CI(pulse_2_reg_i_183_n_0),
        .CO({pulse_2_reg_i_117_n_0,pulse_2_reg_i_117_n_1,pulse_2_reg_i_117_n_2,pulse_2_reg_i_117_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_184_n_0,pulse_2_i_185_n_0,pulse_2_i_186_n_0,pulse_2_i_187_n_0}),
        .O(NLW_pulse_2_reg_i_117_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_188_n_0,pulse_2_i_189_n_0,pulse_2_i_190_n_0,pulse_2_i_191_n_0}));
  CARRY4 pulse_2_reg_i_122
       (.CI(pulse_2_reg_i_161_n_0),
        .CO({NLW_pulse_2_reg_i_122_CO_UNCONNECTED[3:2],pulse_2_reg_i_122_n_2,NLW_pulse_2_reg_i_122_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse2_cfg[15]}),
        .O({NLW_pulse_2_reg_i_122_O_UNCONNECTED[3:1],pulse_2_reg_i_122_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_2_i_192_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_132
       (.CI(pulse_2_reg_i_198_n_0),
        .CO({pulse_2_reg_i_132_n_0,pulse_2_reg_i_132_n_1,pulse_2_reg_i_132_n_2,pulse_2_reg_i_132_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_199_n_0,pulse_2_i_200_n_0,pulse_2_i_201_n_0,pulse2_cfg[19]}),
        .O(NLW_pulse_2_reg_i_132_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_202_n_0,pulse_2_i_203_n_0,pulse_2_i_204_n_0,pulse_2_i_205_n_0}));
  CARRY4 pulse_2_reg_i_141
       (.CI(pulse_2_reg_i_142_n_0),
        .CO({NLW_pulse_2_reg_i_141_CO_UNCONNECTED[3:2],pulse_2_reg_i_141_n_2,NLW_pulse_2_reg_i_141_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse2_cfg[31]}),
        .O({NLW_pulse_2_reg_i_141_O_UNCONNECTED[3:1],pulse_2_reg_i_141_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_2_i_211_n_0}));
  CARRY4 pulse_2_reg_i_142
       (.CI(pulse_2_reg_i_195_n_0),
        .CO({pulse_2_reg_i_142_n_0,pulse_2_reg_i_142_n_1,pulse_2_reg_i_142_n_2,pulse_2_reg_i_142_n_3}),
        .CYINIT(1'b0),
        .DI({pulse2_cfg[30],pulse_2_i_212_n_0,pulse_2_i_213_n_0,pulse_2_i_214_n_0}),
        .O({pulse_2_reg_i_142_n_4,pulse_2_reg_i_142_n_5,pulse_2_reg_i_142_n_6,pulse_2_reg_i_142_n_7}),
        .S({pulse_2_i_215_n_0,pulse_2_i_216_n_0,pulse_2_i_217_n_0,pulse_2_i_218_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_147
       (.CI(pulse_2_reg_i_219_n_0),
        .CO({pulse_2_reg_i_147_n_0,pulse_2_reg_i_147_n_1,pulse_2_reg_i_147_n_2,pulse_2_reg_i_147_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_220_n_0,pulse_2_i_221_n_0,pulse_2_i_222_n_0,pulse_2_i_223_n_0}),
        .O({\pulse2_cfg_r_reg[3]_0 ,NLW_pulse_2_reg_i_147_O_UNCONNECTED[1:0]}),
        .S({pulse_2_i_224_n_0,pulse_2_i_225_n_0,pulse_2_i_226_n_0,pulse_2_i_227_n_0}));
  CARRY4 pulse_2_reg_i_16
       (.CI(pulse_2_reg_i_43_n_0),
        .CO({pulse_2_reg_i_16_n_0,pulse_2_reg_i_16_n_1,pulse_2_reg_i_16_n_2,pulse_2_reg_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_44_n_0,pulse_2_i_45_n_0,pulse_2_i_46_n_0,pulse_2_i_47_n_0}),
        .O(NLW_pulse_2_reg_i_16_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_48_n_0,pulse_2_i_49_n_0,pulse_2_i_50_n_0,pulse_2_i_51_n_0}));
  CARRY4 pulse_2_reg_i_161
       (.CI(pulse_2_reg_i_230_n_0),
        .CO({pulse_2_reg_i_161_n_0,pulse_2_reg_i_161_n_1,pulse_2_reg_i_161_n_2,pulse_2_reg_i_161_n_3}),
        .CYINIT(1'b0),
        .DI({pulse2_cfg[14],pulse_2_i_233_n_0,pulse_2_i_234_n_0,pulse_2_i_235_n_0}),
        .O({pulse_2_reg_i_161_n_4,pulse_2_reg_i_161_n_5,pulse_2_reg_i_161_n_6,pulse_2_reg_i_161_n_7}),
        .S({pulse_2_i_236_n_0,pulse_2_i_237_n_0,pulse_2_i_238_n_0,pulse_2_i_239_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_170
       (.CI(pulse_2_reg_i_245_n_0),
        .CO({pulse_2_reg_i_170_n_0,pulse_2_reg_i_170_n_1,pulse_2_reg_i_170_n_2,pulse_2_reg_i_170_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_246_n_0,pulse_2_i_247_n_0,pulse_2_i_248_n_0,pulse_2_i_249_n_0}),
        .O(NLW_pulse_2_reg_i_170_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_250_n_0,pulse_2_i_251_n_0,pulse_2_i_252_n_0,pulse_2_i_253_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_183
       (.CI(pulse_2_reg_i_259_n_0),
        .CO({pulse_2_reg_i_183_n_0,pulse_2_reg_i_183_n_1,pulse_2_reg_i_183_n_2,pulse_2_reg_i_183_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_260_n_0,pulse_2_i_261_n_0,pulse_2_i_262_n_0,pulse_2_i_263_n_0}),
        .O(NLW_pulse_2_reg_i_183_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_264_n_0,pulse_2_i_265_n_0,pulse_2_i_266_n_0,pulse_2_i_267_n_0}));
  CARRY4 pulse_2_reg_i_195
       (.CI(pulse_2_reg_i_208_n_0),
        .CO({pulse_2_reg_i_195_n_0,pulse_2_reg_i_195_n_1,pulse_2_reg_i_195_n_2,pulse_2_reg_i_195_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_268_n_0,pulse_2_i_269_n_0,pulse_2_i_270_n_0,pulse_2_i_271_n_0}),
        .O({pulse_2_reg_i_195_n_4,pulse_2_reg_i_195_n_5,pulse_2_reg_i_195_n_6,pulse_2_reg_i_195_n_7}),
        .S({pulse_2_i_272_n_0,pulse_2_i_273_n_0,pulse_2_i_274_n_0,pulse_2_i_275_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_198
       (.CI(1'b0),
        .CO({pulse_2_reg_i_198_n_0,pulse_2_reg_i_198_n_1,pulse_2_reg_i_198_n_2,pulse_2_reg_i_198_n_3}),
        .CYINIT(1'b0),
        .DI({pulse2_cfg[18:16],1'b0}),
        .O(NLW_pulse_2_reg_i_198_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_276_n_0,pulse_2_i_277_n_0,pulse_2_i_278_n_0,pulse_2_reg_i_279_n_7}));
  CARRY4 pulse_2_reg_i_208
       (.CI(pulse_2_reg_i_279_n_0),
        .CO({pulse_2_reg_i_208_n_0,pulse_2_reg_i_208_n_1,pulse_2_reg_i_208_n_2,pulse_2_reg_i_208_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_280_n_0,pulse_2_i_281_n_0,pulse_2_i_282_n_0,pulse_2_i_283_n_0}),
        .O({pulse_2_reg_i_208_n_4,pulse_2_reg_i_208_n_5,pulse_2_reg_i_208_n_6,pulse_2_reg_i_208_n_7}),
        .S({pulse_2_i_284_n_0,pulse_2_i_285_n_0,pulse_2_i_286_n_0,pulse_2_i_287_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_219
       (.CI(pulse_2_reg_i_288_n_0),
        .CO({pulse_2_reg_i_219_n_0,pulse_2_reg_i_219_n_1,pulse_2_reg_i_219_n_2,pulse_2_reg_i_219_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_289_n_0,pulse_2_i_290_n_0,pulse_2_i_291_n_0,pulse2_cfg[3]}),
        .O(NLW_pulse_2_reg_i_219_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_292_n_0,pulse_2_i_293_n_0,pulse_2_i_294_n_0,pulse_2_i_295_n_0}));
  CARRY4 pulse_2_reg_i_230
       (.CI(pulse_2_reg_i_298_n_0),
        .CO({pulse_2_reg_i_230_n_0,pulse_2_reg_i_230_n_1,pulse_2_reg_i_230_n_2,pulse_2_reg_i_230_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_301_n_0,pulse_2_i_302_n_0,pulse_2_i_303_n_0,pulse_2_i_304_n_0}),
        .O({pulse_2_reg_i_230_n_4,pulse_2_reg_i_230_n_5,pulse_2_reg_i_230_n_6,pulse_2_reg_i_230_n_7}),
        .S({pulse_2_i_305_n_0,pulse_2_i_306_n_0,pulse_2_i_307_n_0,pulse_2_i_308_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_245
       (.CI(1'b0),
        .CO({pulse_2_reg_i_245_n_0,pulse_2_reg_i_245_n_1,pulse_2_reg_i_245_n_2,pulse_2_reg_i_245_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_312_n_0,pulse_2_i_313_n_0,pulse_2_i_314_n_0,1'b0}),
        .O(NLW_pulse_2_reg_i_245_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_315_n_0,pulse_2_i_316_n_0,pulse_2_i_317_n_0,pulse_2_i_318_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_259
       (.CI(1'b0),
        .CO({pulse_2_reg_i_259_n_0,pulse_2_reg_i_259_n_1,pulse_2_reg_i_259_n_2,pulse_2_reg_i_259_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_322_n_0,pulse_2_i_323_n_0,pulse_2_i_324_n_0,1'b0}),
        .O(NLW_pulse_2_reg_i_259_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_325_n_0,pulse_2_i_326_n_0,pulse_2_i_327_n_0,pulse_2_i_328_n_0}));
  CARRY4 pulse_2_reg_i_279
       (.CI(pulse_2_reg_i_329_n_0),
        .CO({pulse_2_reg_i_279_n_0,pulse_2_reg_i_279_n_1,pulse_2_reg_i_279_n_2,pulse_2_reg_i_279_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_330_n_0,pulse_2_i_331_n_0,pulse_2_i_332_n_0,pulse2_cfg[18]}),
        .O({pulse_2_reg_i_279_n_4,pulse_2_reg_i_279_n_5,pulse_2_reg_i_279_n_6,pulse_2_reg_i_279_n_7}),
        .S({pulse_2_i_333_n_0,pulse_2_i_334_n_0,pulse_2_i_335_n_0,pulse_2_i_336_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_28
       (.CI(pulse_2_reg_i_52_n_0),
        .CO({NLW_pulse_2_reg_i_28_CO_UNCONNECTED[3:1],pulse_2_reg_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse_2_i_65_n_0}),
        .O({NLW_pulse_2_reg_i_28_O_UNCONNECTED[3:2],\pulse2_cfg_r_reg[15]_0 }),
        .S({1'b0,1'b0,pulse_2_i_66_n_0,pulse_2_i_67_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_288
       (.CI(1'b0),
        .CO({pulse_2_reg_i_288_n_0,pulse_2_reg_i_288_n_1,pulse_2_reg_i_288_n_2,pulse_2_reg_i_288_n_3}),
        .CYINIT(1'b0),
        .DI({pulse2_cfg[2:0],1'b0}),
        .O(NLW_pulse_2_reg_i_288_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_337_n_0,pulse_2_i_338_n_0,pulse_2_i_339_n_0,pulse_2_reg_i_340_n_7}));
  CARRY4 pulse_2_reg_i_298
       (.CI(pulse_2_reg_i_340_n_0),
        .CO({pulse_2_reg_i_298_n_0,pulse_2_reg_i_298_n_1,pulse_2_reg_i_298_n_2,pulse_2_reg_i_298_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_341_n_0,pulse_2_i_342_n_0,pulse_2_i_343_n_0,pulse_2_i_344_n_0}),
        .O({pulse_2_reg_i_298_n_4,pulse_2_reg_i_298_n_5,pulse_2_reg_i_298_n_6,pulse_2_reg_i_298_n_7}),
        .S({pulse_2_i_345_n_0,pulse_2_i_346_n_0,pulse_2_i_347_n_0,pulse_2_i_348_n_0}));
  CARRY4 pulse_2_reg_i_329
       (.CI(1'b0),
        .CO({pulse_2_reg_i_329_n_0,pulse_2_reg_i_329_n_1,pulse_2_reg_i_329_n_2,pulse_2_reg_i_329_n_3}),
        .CYINIT(1'b0),
        .DI({pulse2_cfg[17:16],1'b0,1'b1}),
        .O(NLW_pulse_2_reg_i_329_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_349_n_0,pulse_2_i_350_n_0,pulse_2_i_351_n_0,pulse2_cfg[16]}));
  CARRY4 pulse_2_reg_i_340
       (.CI(pulse_2_reg_i_352_n_0),
        .CO({pulse_2_reg_i_340_n_0,pulse_2_reg_i_340_n_1,pulse_2_reg_i_340_n_2,pulse_2_reg_i_340_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_353_n_0,pulse_2_i_354_n_0,pulse_2_i_355_n_0,pulse2_cfg[2]}),
        .O({pulse_2_reg_i_340_n_4,pulse_2_reg_i_340_n_5,pulse_2_reg_i_340_n_6,pulse_2_reg_i_340_n_7}),
        .S({pulse_2_i_356_n_0,pulse_2_i_357_n_0,pulse_2_i_358_n_0,pulse_2_i_359_n_0}));
  CARRY4 pulse_2_reg_i_352
       (.CI(1'b0),
        .CO({pulse_2_reg_i_352_n_0,pulse_2_reg_i_352_n_1,pulse_2_reg_i_352_n_2,pulse_2_reg_i_352_n_3}),
        .CYINIT(1'b0),
        .DI({pulse2_cfg[1:0],1'b0,1'b1}),
        .O(NLW_pulse_2_reg_i_352_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_360_n_0,pulse_2_i_361_n_0,pulse_2_i_362_n_0,pulse2_cfg[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_38
       (.CI(pulse_2_reg_i_42_n_0),
        .CO({NLW_pulse_2_reg_i_38_CO_UNCONNECTED[3:1],pulse_2_reg_i_38_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse_2_i_76_n_0}),
        .O({NLW_pulse_2_reg_i_38_O_UNCONNECTED[3:2],\pulse2_cfg_r_reg[31]_1 [2:1]}),
        .S({1'b0,1'b0,pulse_2_i_77_n_0,pulse_2_i_78_n_0}));
  CARRY4 pulse_2_reg_i_4
       (.CI(pulse_2_reg_i_16_n_0),
        .CO({\cnt2_reg[10] ,pulse_2_reg_i_4_n_1,pulse_2_reg_i_4_n_2,pulse_2_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_17_n_0,pulse_2_i_18_n_0,pulse_2_i_19_n_0,pulse_2_i_20_n_0}),
        .O(NLW_pulse_2_reg_i_4_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_21_n_0,pulse_2_i_22_n_0,pulse_2_i_23_n_0,pulse_2_i_24_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_42
       (.CI(pulse_2_reg_i_71_n_0),
        .CO({pulse_2_reg_i_42_n_0,pulse_2_reg_i_42_n_1,pulse_2_reg_i_42_n_2,pulse_2_reg_i_42_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_79_n_0,pulse_2_i_80_n_0,pulse_2_i_81_n_0,pulse_2_i_82_n_0}),
        .O({\pulse2_cfg_r_reg[31]_1 [0],\pulse2_cfg_r_reg[30]_0 [3:1]}),
        .S({pulse_2_i_83_n_0,pulse_2_i_84_n_0,pulse_2_i_85_n_0,pulse_2_i_86_n_0}));
  CARRY4 pulse_2_reg_i_43
       (.CI(1'b0),
        .CO({pulse_2_reg_i_43_n_0,pulse_2_reg_i_43_n_1,pulse_2_reg_i_43_n_2,pulse_2_reg_i_43_n_3}),
        .CYINIT(1'b1),
        .DI({pulse_2_i_87_n_0,pulse_2_i_88_n_0,pulse_2_i_89_n_0,1'b1}),
        .O(NLW_pulse_2_reg_i_43_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_90_n_0,pulse_2_i_91_n_0,pulse_2_i_92_n_0,pulse_2_i_93_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_52
       (.CI(pulse_2_reg_i_94_n_0),
        .CO({pulse_2_reg_i_52_n_0,pulse_2_reg_i_52_n_1,pulse_2_reg_i_52_n_2,pulse_2_reg_i_52_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_102_n_0,pulse_2_i_103_n_0,pulse_2_i_104_n_0,pulse_2_i_105_n_0}),
        .O(\pulse2_cfg_r_reg[14]_0 ),
        .S({pulse_2_i_106_n_0,pulse_2_i_107_n_0,pulse_2_i_108_n_0,pulse_2_i_109_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_62
       (.CI(pulse_2_reg_i_111_n_0),
        .CO({NLW_pulse_2_reg_i_62_CO_UNCONNECTED[3:2],pulse_2_reg_i_62_n_2,pulse_2_reg_i_62_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_2_i_112_n_0,pulse_2_i_113_n_0}),
        .O(NLW_pulse_2_reg_i_62_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_2_i_114_n_0,pulse_2_i_115_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_64
       (.CI(pulse_2_reg_i_117_n_0),
        .CO({NLW_pulse_2_reg_i_64_CO_UNCONNECTED[3:2],pulse_2_reg_i_64_n_2,pulse_2_reg_i_64_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_2_i_118_n_0,pulse_2_i_119_n_0}),
        .O(NLW_pulse_2_reg_i_64_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_2_i_120_n_0,pulse_2_i_121_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_71
       (.CI(pulse_2_reg_i_75_n_0),
        .CO({pulse_2_reg_i_71_n_0,pulse_2_reg_i_71_n_1,pulse_2_reg_i_71_n_2,pulse_2_reg_i_71_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_123_n_0,pulse_2_i_124_n_0,pulse_2_i_125_n_0,pulse_2_i_126_n_0}),
        .O({\pulse2_cfg_r_reg[30]_0 [0],\pulse2_cfg_r_reg[25]_0 }),
        .S({pulse_2_i_127_n_0,pulse_2_i_128_n_0,pulse_2_i_129_n_0,pulse_2_i_130_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_75
       (.CI(pulse_2_reg_i_132_n_0),
        .CO({pulse_2_reg_i_75_n_0,pulse_2_reg_i_75_n_1,pulse_2_reg_i_75_n_2,pulse_2_reg_i_75_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_133_n_0,pulse_2_i_134_n_0,pulse_2_i_135_n_0,pulse_2_i_136_n_0}),
        .O({\pulse2_cfg_r_reg[19]_0 ,NLW_pulse_2_reg_i_75_O_UNCONNECTED[1:0]}),
        .S({pulse_2_i_137_n_0,pulse_2_i_138_n_0,pulse_2_i_139_n_0,pulse_2_i_140_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_94
       (.CI(pulse_2_reg_i_147_n_0),
        .CO({pulse_2_reg_i_94_n_0,pulse_2_reg_i_94_n_1,pulse_2_reg_i_94_n_2,pulse_2_reg_i_94_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_152_n_0,pulse_2_i_153_n_0,pulse_2_i_154_n_0,pulse_2_i_155_n_0}),
        .O(\pulse2_cfg_r_reg[9]_0 ),
        .S({pulse_2_i_156_n_0,pulse_2_i_157_n_0,pulse_2_i_158_n_0,pulse_2_i_159_n_0}));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    pulse_3_i_1
       (.I0(CO),
        .I1(pulse_3_reg),
        .I2(mmcm_locked),
        .I3(ctrl_reg[4]),
        .I4(ctrl_reg[1]),
        .I5(pulse_seq_reg[3]),
        .O(pulse_30));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_100
       (.I0(\pulse3_cfg_r_reg[9]_0 [2]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_48_0[0]),
        .O(pulse_3_i_100_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_101
       (.I0(\pulse3_cfg_r_reg[9]_0 [1]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_90_0[3]),
        .O(pulse_3_i_101_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_3_i_102
       (.I0(pulse3_cfg[14]),
        .I1(pulse3_cfg[12]),
        .I2(pulse3_cfg[13]),
        .I3(pulse3_cfg[11]),
        .I4(pulse_3_reg_i_122_n_2),
        .O(pulse_3_i_102_n_0));
  LUT6 #(
    .INIT(64'h9696009600960000)) 
    pulse_3_i_103
       (.I0(pulse3_cfg[13]),
        .I1(pulse_3_reg_i_122_n_2),
        .I2(pulse3_cfg[11]),
        .I3(pulse3_cfg[12]),
        .I4(pulse3_cfg[10]),
        .I5(pulse_3_reg_i_122_n_7),
        .O(pulse_3_i_103_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_104
       (.I0(pulse3_cfg[11]),
        .I1(pulse3_cfg[9]),
        .I2(pulse_3_reg_i_161_n_4),
        .I3(pulse3_cfg[15]),
        .I4(pulse_3_i_162_n_0),
        .O(pulse_3_i_104_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_105
       (.I0(pulse3_cfg[10]),
        .I1(pulse3_cfg[8]),
        .I2(pulse_3_reg_i_161_n_5),
        .I3(pulse3_cfg[14]),
        .I4(pulse_3_i_163_n_0),
        .O(pulse_3_i_105_n_0));
  LUT6 #(
    .INIT(64'hEC13C83737C8EC13)) 
    pulse_3_i_106
       (.I0(pulse3_cfg[11]),
        .I1(pulse3_cfg[13]),
        .I2(pulse_3_reg_i_122_n_2),
        .I3(pulse3_cfg[15]),
        .I4(pulse3_cfg[12]),
        .I5(pulse3_cfg[14]),
        .O(pulse_3_i_106_n_0));
  LUT6 #(
    .INIT(64'h6699699696696699)) 
    pulse_3_i_107
       (.I0(pulse_3_i_103_n_0),
        .I1(pulse3_cfg[12]),
        .I2(pulse_3_reg_i_122_n_2),
        .I3(pulse3_cfg[14]),
        .I4(pulse3_cfg[11]),
        .I5(pulse3_cfg[13]),
        .O(pulse_3_i_107_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    pulse_3_i_108
       (.I0(pulse3_cfg[15]),
        .I1(pulse_3_i_164_n_0),
        .I2(pulse_3_i_165_n_0),
        .I3(pulse_3_reg_i_122_n_7),
        .I4(pulse3_cfg[10]),
        .I5(pulse3_cfg[12]),
        .O(pulse_3_i_108_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_109
       (.I0(pulse_3_i_105_n_0),
        .I1(pulse_3_i_162_n_0),
        .I2(pulse3_cfg[15]),
        .I3(pulse_3_reg_i_161_n_4),
        .I4(pulse3_cfg[9]),
        .I5(pulse3_cfg[11]),
        .O(pulse_3_i_109_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_112
       (.I0(pulse_3_reg_i_62_0[3]),
        .I1(pulse3_cfg[30]),
        .O(pulse_3_i_112_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_113
       (.I0(pulse_3_reg_i_62_0[2]),
        .I1(pulse3_cfg[29]),
        .O(pulse_3_i_113_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_114
       (.I0(pulse3_cfg[30]),
        .I1(pulse_3_reg_i_62_0[3]),
        .I2(pulse_3_i_32),
        .I3(pulse3_cfg[31]),
        .O(pulse_3_i_114_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_115
       (.I0(pulse3_cfg[29]),
        .I1(pulse_3_reg_i_62_0[2]),
        .I2(pulse_3_reg_i_62_0[3]),
        .I3(pulse3_cfg[30]),
        .O(pulse_3_i_115_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_118
       (.I0(pulse_3_reg_i_64_0[3]),
        .I1(pulse3_cfg[14]),
        .O(pulse_3_i_118_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_119
       (.I0(pulse_3_reg_i_64_0[2]),
        .I1(pulse3_cfg[13]),
        .O(pulse_3_i_119_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_120
       (.I0(pulse3_cfg[14]),
        .I1(pulse_3_reg_i_64_0[3]),
        .I2(pulse_3_i_8_0),
        .I3(pulse3_cfg[15]),
        .O(pulse_3_i_120_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_121
       (.I0(pulse3_cfg[13]),
        .I1(pulse_3_reg_i_64_0[2]),
        .I2(pulse_3_reg_i_64_0[3]),
        .I3(pulse3_cfg[14]),
        .O(pulse_3_i_121_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_123
       (.I0(pulse3_cfg[25]),
        .I1(pulse3_cfg[23]),
        .I2(pulse_3_reg_i_142_n_6),
        .I3(pulse3_cfg[29]),
        .I4(pulse_3_i_193_n_0),
        .O(pulse_3_i_123_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_124
       (.I0(pulse3_cfg[24]),
        .I1(pulse3_cfg[22]),
        .I2(pulse_3_reg_i_142_n_7),
        .I3(pulse3_cfg[28]),
        .I4(pulse_3_i_194_n_0),
        .O(pulse_3_i_124_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_125
       (.I0(pulse3_cfg[23]),
        .I1(pulse3_cfg[21]),
        .I2(pulse_3_reg_i_195_n_4),
        .I3(pulse3_cfg[27]),
        .I4(pulse_3_i_196_n_0),
        .O(pulse_3_i_125_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_126
       (.I0(pulse3_cfg[22]),
        .I1(pulse3_cfg[20]),
        .I2(pulse_3_reg_i_195_n_5),
        .I3(pulse3_cfg[26]),
        .I4(pulse_3_i_197_n_0),
        .O(pulse_3_i_126_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_127
       (.I0(pulse_3_i_123_n_0),
        .I1(pulse_3_i_144_n_0),
        .I2(pulse3_cfg[30]),
        .I3(pulse_3_reg_i_142_n_5),
        .I4(pulse3_cfg[24]),
        .I5(pulse3_cfg[26]),
        .O(pulse_3_i_127_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_128
       (.I0(pulse_3_i_124_n_0),
        .I1(pulse_3_i_193_n_0),
        .I2(pulse3_cfg[29]),
        .I3(pulse_3_reg_i_142_n_6),
        .I4(pulse3_cfg[23]),
        .I5(pulse3_cfg[25]),
        .O(pulse_3_i_128_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_129
       (.I0(pulse_3_i_125_n_0),
        .I1(pulse_3_i_194_n_0),
        .I2(pulse3_cfg[28]),
        .I3(pulse_3_reg_i_142_n_7),
        .I4(pulse3_cfg[22]),
        .I5(pulse3_cfg[24]),
        .O(pulse_3_i_129_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_130
       (.I0(pulse_3_i_126_n_0),
        .I1(pulse_3_i_196_n_0),
        .I2(pulse3_cfg[27]),
        .I3(pulse_3_reg_i_195_n_4),
        .I4(pulse3_cfg[21]),
        .I5(pulse3_cfg[23]),
        .O(pulse_3_i_130_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_133
       (.I0(pulse3_cfg[21]),
        .I1(pulse3_cfg[19]),
        .I2(pulse_3_reg_i_195_n_6),
        .I3(pulse3_cfg[25]),
        .I4(pulse_3_i_206_n_0),
        .O(pulse_3_i_133_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_134
       (.I0(pulse3_cfg[20]),
        .I1(pulse_3_reg_i_195_n_7),
        .I2(pulse3_cfg[18]),
        .I3(pulse3_cfg[24]),
        .I4(pulse_3_i_207_n_0),
        .O(pulse_3_i_134_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_135
       (.I0(pulse3_cfg[19]),
        .I1(pulse_3_reg_i_208_n_4),
        .I2(pulse3_cfg[17]),
        .I3(pulse3_cfg[23]),
        .I4(pulse_3_i_209_n_0),
        .O(pulse_3_i_135_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_136
       (.I0(pulse3_cfg[18]),
        .I1(pulse_3_reg_i_208_n_5),
        .I2(pulse3_cfg[16]),
        .I3(pulse3_cfg[22]),
        .I4(pulse_3_i_210_n_0),
        .O(pulse_3_i_136_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_137
       (.I0(pulse_3_i_133_n_0),
        .I1(pulse_3_i_197_n_0),
        .I2(pulse3_cfg[26]),
        .I3(pulse_3_reg_i_195_n_5),
        .I4(pulse3_cfg[20]),
        .I5(pulse3_cfg[22]),
        .O(pulse_3_i_137_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_138
       (.I0(pulse_3_i_134_n_0),
        .I1(pulse_3_i_206_n_0),
        .I2(pulse3_cfg[25]),
        .I3(pulse_3_reg_i_195_n_6),
        .I4(pulse3_cfg[19]),
        .I5(pulse3_cfg[21]),
        .O(pulse_3_i_138_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_139
       (.I0(pulse_3_i_135_n_0),
        .I1(pulse_3_i_207_n_0),
        .I2(pulse3_cfg[24]),
        .I3(pulse3_cfg[18]),
        .I4(pulse_3_reg_i_195_n_7),
        .I5(pulse3_cfg[20]),
        .O(pulse_3_i_139_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_140
       (.I0(pulse_3_i_136_n_0),
        .I1(pulse_3_i_209_n_0),
        .I2(pulse3_cfg[23]),
        .I3(pulse3_cfg[17]),
        .I4(pulse_3_reg_i_208_n_4),
        .I5(pulse3_cfg[19]),
        .O(pulse_3_i_140_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_143
       (.I0(pulse3_cfg[26]),
        .I1(pulse_3_reg_i_141_n_7),
        .I2(pulse3_cfg[28]),
        .O(pulse_3_i_143_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_144
       (.I0(pulse3_cfg[25]),
        .I1(pulse_3_reg_i_142_n_4),
        .I2(pulse3_cfg[27]),
        .O(pulse_3_i_144_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_145
       (.I0(pulse_3_reg_i_142_n_4),
        .I1(pulse3_cfg[25]),
        .I2(pulse3_cfg[27]),
        .O(pulse_3_i_145_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_3_i_146
       (.I0(pulse3_cfg[27]),
        .I1(pulse_3_reg_i_141_n_2),
        .I2(pulse3_cfg[29]),
        .O(pulse_3_i_146_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_148
       (.I0(\pulse3_cfg_r_reg[19]_0 [1]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_90_1[1]),
        .O(pulse_3_i_148_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_149
       (.I0(\pulse3_cfg_r_reg[9]_0 [0]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_90_0[2]),
        .O(pulse_3_i_149_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_150
       (.I0(\pulse3_cfg_r_reg[3]_0 [1]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_90_0[1]),
        .O(pulse_3_i_150_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_151
       (.I0(\pulse3_cfg_r_reg[3]_0 [0]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_90_0[0]),
        .O(pulse_3_i_151_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_152
       (.I0(pulse3_cfg[9]),
        .I1(pulse3_cfg[7]),
        .I2(pulse_3_reg_i_161_n_6),
        .I3(pulse3_cfg[13]),
        .I4(pulse_3_i_228_n_0),
        .O(pulse_3_i_152_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_153
       (.I0(pulse3_cfg[8]),
        .I1(pulse3_cfg[6]),
        .I2(pulse_3_reg_i_161_n_7),
        .I3(pulse3_cfg[12]),
        .I4(pulse_3_i_229_n_0),
        .O(pulse_3_i_153_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_154
       (.I0(pulse3_cfg[7]),
        .I1(pulse3_cfg[5]),
        .I2(pulse_3_reg_i_230_n_4),
        .I3(pulse3_cfg[11]),
        .I4(pulse_3_i_231_n_0),
        .O(pulse_3_i_154_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_155
       (.I0(pulse3_cfg[6]),
        .I1(pulse3_cfg[4]),
        .I2(pulse_3_reg_i_230_n_5),
        .I3(pulse3_cfg[10]),
        .I4(pulse_3_i_232_n_0),
        .O(pulse_3_i_155_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_156
       (.I0(pulse_3_i_152_n_0),
        .I1(pulse_3_i_163_n_0),
        .I2(pulse3_cfg[14]),
        .I3(pulse_3_reg_i_161_n_5),
        .I4(pulse3_cfg[8]),
        .I5(pulse3_cfg[10]),
        .O(pulse_3_i_156_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_157
       (.I0(pulse_3_i_153_n_0),
        .I1(pulse_3_i_228_n_0),
        .I2(pulse3_cfg[13]),
        .I3(pulse_3_reg_i_161_n_6),
        .I4(pulse3_cfg[7]),
        .I5(pulse3_cfg[9]),
        .O(pulse_3_i_157_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_158
       (.I0(pulse_3_i_154_n_0),
        .I1(pulse_3_i_229_n_0),
        .I2(pulse3_cfg[12]),
        .I3(pulse_3_reg_i_161_n_7),
        .I4(pulse3_cfg[6]),
        .I5(pulse3_cfg[8]),
        .O(pulse_3_i_158_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_159
       (.I0(pulse_3_i_155_n_0),
        .I1(pulse_3_i_231_n_0),
        .I2(pulse3_cfg[11]),
        .I3(pulse_3_reg_i_230_n_4),
        .I4(pulse3_cfg[5]),
        .I5(pulse3_cfg[7]),
        .O(pulse_3_i_159_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_162
       (.I0(pulse3_cfg[10]),
        .I1(pulse_3_reg_i_122_n_7),
        .I2(pulse3_cfg[12]),
        .O(pulse_3_i_162_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_163
       (.I0(pulse3_cfg[9]),
        .I1(pulse_3_reg_i_161_n_4),
        .I2(pulse3_cfg[11]),
        .O(pulse_3_i_163_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_164
       (.I0(pulse_3_reg_i_161_n_4),
        .I1(pulse3_cfg[9]),
        .I2(pulse3_cfg[11]),
        .O(pulse_3_i_164_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_3_i_165
       (.I0(pulse3_cfg[11]),
        .I1(pulse_3_reg_i_122_n_2),
        .I2(pulse3_cfg[13]),
        .O(pulse_3_i_165_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_17
       (.I0(\pulse3_cfg_r_reg[15]_0 [0]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_21_0[2]),
        .I3(pulse_3_reg_i_2[10]),
        .I4(\pulse3_cfg_r_reg[31]_0 ),
        .O(pulse_3_i_17_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_171
       (.I0(pulse_3_reg_i_62_0[1]),
        .I1(pulse3_cfg[28]),
        .O(pulse_3_i_171_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_172
       (.I0(pulse_3_reg_i_62_0[0]),
        .I1(pulse3_cfg[27]),
        .O(pulse_3_i_172_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_173
       (.I0(pulse_3_reg_i_111_0[3]),
        .I1(pulse3_cfg[26]),
        .O(pulse_3_i_173_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_174
       (.I0(pulse_3_reg_i_111_0[2]),
        .I1(pulse3_cfg[25]),
        .O(pulse_3_i_174_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_175
       (.I0(pulse3_cfg[28]),
        .I1(pulse_3_reg_i_62_0[1]),
        .I2(pulse_3_reg_i_62_0[2]),
        .I3(pulse3_cfg[29]),
        .O(pulse_3_i_175_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_176
       (.I0(pulse3_cfg[27]),
        .I1(pulse_3_reg_i_62_0[0]),
        .I2(pulse_3_reg_i_62_0[1]),
        .I3(pulse3_cfg[28]),
        .O(pulse_3_i_176_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_177
       (.I0(pulse3_cfg[26]),
        .I1(pulse_3_reg_i_111_0[3]),
        .I2(pulse_3_reg_i_62_0[0]),
        .I3(pulse3_cfg[27]),
        .O(pulse_3_i_177_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_178
       (.I0(pulse3_cfg[25]),
        .I1(pulse_3_reg_i_111_0[2]),
        .I2(pulse_3_reg_i_111_0[3]),
        .I3(pulse3_cfg[26]),
        .O(pulse_3_i_178_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_18
       (.I0(\pulse3_cfg_r_reg[14]_0 [3]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_21_0[1]),
        .I3(pulse_3_reg_i_2[9]),
        .I4(pulse_3_i_53_n_0),
        .O(pulse_3_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_184
       (.I0(pulse_3_reg_i_64_0[1]),
        .I1(pulse3_cfg[12]),
        .O(pulse_3_i_184_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_185
       (.I0(pulse_3_reg_i_64_0[0]),
        .I1(pulse3_cfg[11]),
        .O(pulse_3_i_185_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_186
       (.I0(pulse_3_reg_i_117_0[3]),
        .I1(pulse3_cfg[10]),
        .O(pulse_3_i_186_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_187
       (.I0(pulse_3_reg_i_117_0[2]),
        .I1(pulse3_cfg[9]),
        .O(pulse_3_i_187_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_188
       (.I0(pulse3_cfg[12]),
        .I1(pulse_3_reg_i_64_0[1]),
        .I2(pulse_3_reg_i_64_0[2]),
        .I3(pulse3_cfg[13]),
        .O(pulse_3_i_188_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_189
       (.I0(pulse3_cfg[11]),
        .I1(pulse_3_reg_i_64_0[0]),
        .I2(pulse_3_reg_i_64_0[1]),
        .I3(pulse3_cfg[12]),
        .O(pulse_3_i_189_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_19
       (.I0(\pulse3_cfg_r_reg[14]_0 [2]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_21_0[0]),
        .I3(pulse_3_reg_i_2[8]),
        .I4(\pulse3_cfg_r_reg[31]_2 ),
        .O(pulse_3_i_19_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_190
       (.I0(pulse3_cfg[10]),
        .I1(pulse_3_reg_i_117_0[3]),
        .I2(pulse_3_reg_i_64_0[0]),
        .I3(pulse3_cfg[11]),
        .O(pulse_3_i_190_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_191
       (.I0(pulse3_cfg[9]),
        .I1(pulse_3_reg_i_117_0[2]),
        .I2(pulse_3_reg_i_117_0[3]),
        .I3(pulse3_cfg[10]),
        .O(pulse_3_i_191_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_192
       (.I0(pulse3_cfg[15]),
        .O(pulse_3_i_192_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_193
       (.I0(pulse3_cfg[24]),
        .I1(pulse_3_reg_i_142_n_5),
        .I2(pulse3_cfg[26]),
        .O(pulse_3_i_193_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_194
       (.I0(pulse3_cfg[23]),
        .I1(pulse_3_reg_i_142_n_6),
        .I2(pulse3_cfg[25]),
        .O(pulse_3_i_194_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_196
       (.I0(pulse3_cfg[22]),
        .I1(pulse_3_reg_i_142_n_7),
        .I2(pulse3_cfg[24]),
        .O(pulse_3_i_196_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_197
       (.I0(pulse3_cfg[21]),
        .I1(pulse_3_reg_i_195_n_4),
        .I2(pulse3_cfg[23]),
        .O(pulse_3_i_197_n_0));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    pulse_3_i_199
       (.I0(pulse3_cfg[18]),
        .I1(pulse_3_reg_i_208_n_5),
        .I2(pulse3_cfg[16]),
        .I3(pulse3_cfg[22]),
        .I4(pulse_3_i_210_n_0),
        .O(pulse_3_i_199_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_20
       (.I0(\pulse3_cfg_r_reg[14]_0 [1]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_48_0[3]),
        .I3(pulse_3_reg_i_2[7]),
        .I4(pulse_3_i_55_n_0),
        .O(pulse_3_i_20_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pulse_3_i_200
       (.I0(pulse3_cfg[18]),
        .I1(pulse_3_reg_i_208_n_5),
        .I2(pulse3_cfg[16]),
        .I3(pulse3_cfg[21]),
        .O(pulse_3_i_200_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_3_i_201
       (.I0(pulse_3_reg_i_208_n_7),
        .I1(pulse3_cfg[16]),
        .O(pulse_3_i_201_n_0));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    pulse_3_i_202
       (.I0(pulse_3_i_210_n_0),
        .I1(pulse3_cfg[22]),
        .I2(pulse3_cfg[16]),
        .I3(pulse_3_reg_i_208_n_5),
        .I4(pulse3_cfg[18]),
        .I5(pulse3_cfg[21]),
        .O(pulse_3_i_202_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    pulse_3_i_203
       (.I0(pulse_3_i_200_n_0),
        .I1(pulse3_cfg[17]),
        .I2(pulse_3_reg_i_208_n_6),
        .I3(pulse3_cfg[20]),
        .O(pulse_3_i_203_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    pulse_3_i_204
       (.I0(pulse3_cfg[16]),
        .I1(pulse_3_reg_i_208_n_7),
        .I2(pulse3_cfg[17]),
        .I3(pulse_3_reg_i_208_n_6),
        .I4(pulse3_cfg[20]),
        .O(pulse_3_i_204_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_3_i_205
       (.I0(pulse_3_reg_i_208_n_7),
        .I1(pulse3_cfg[16]),
        .I2(pulse3_cfg[19]),
        .O(pulse_3_i_205_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_206
       (.I0(pulse3_cfg[20]),
        .I1(pulse_3_reg_i_195_n_5),
        .I2(pulse3_cfg[22]),
        .O(pulse_3_i_206_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_207
       (.I0(pulse3_cfg[19]),
        .I1(pulse_3_reg_i_195_n_6),
        .I2(pulse3_cfg[21]),
        .O(pulse_3_i_207_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_209
       (.I0(pulse3_cfg[18]),
        .I1(pulse_3_reg_i_195_n_7),
        .I2(pulse3_cfg[20]),
        .O(pulse_3_i_209_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_21
       (.I0(\pulse3_cfg_r_reg[31]_0 ),
        .I1(pulse_3_reg_i_2[10]),
        .I2(pulse_3_i_56_n_0),
        .I3(pulse_3_i_57_n_0),
        .I4(pulse_3_i_25_n_0),
        .I5(pulse_3_reg_i_2[11]),
        .O(pulse_3_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_210
       (.I0(pulse3_cfg[17]),
        .I1(pulse_3_reg_i_208_n_4),
        .I2(pulse3_cfg[19]),
        .O(pulse_3_i_210_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_211
       (.I0(pulse3_cfg[31]),
        .O(pulse_3_i_211_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_3_i_212
       (.I0(pulse3_cfg[31]),
        .I1(pulse3_cfg[29]),
        .O(pulse_3_i_212_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_3_i_213
       (.I0(pulse3_cfg[30]),
        .I1(pulse3_cfg[28]),
        .O(pulse_3_i_213_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_214
       (.I0(pulse3_cfg[27]),
        .I1(pulse3_cfg[29]),
        .I2(pulse3_cfg[31]),
        .O(pulse_3_i_214_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_3_i_215
       (.I0(pulse3_cfg[30]),
        .I1(pulse3_cfg[31]),
        .O(pulse_3_i_215_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    pulse_3_i_216
       (.I0(pulse3_cfg[29]),
        .I1(pulse3_cfg[31]),
        .I2(pulse3_cfg[30]),
        .O(pulse_3_i_216_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    pulse_3_i_217
       (.I0(pulse3_cfg[28]),
        .I1(pulse3_cfg[30]),
        .I2(pulse3_cfg[29]),
        .I3(pulse3_cfg[31]),
        .O(pulse_3_i_217_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    pulse_3_i_218
       (.I0(pulse3_cfg[31]),
        .I1(pulse3_cfg[29]),
        .I2(pulse3_cfg[27]),
        .I3(pulse3_cfg[28]),
        .I4(pulse3_cfg[30]),
        .O(pulse_3_i_218_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_22
       (.I0(pulse_3_i_53_n_0),
        .I1(pulse_3_reg_i_2[9]),
        .I2(pulse_3_i_58_n_0),
        .I3(pulse_3_i_56_n_0),
        .I4(\pulse3_cfg_r_reg[31]_0 ),
        .I5(pulse_3_reg_i_2[10]),
        .O(pulse_3_i_22_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_220
       (.I0(pulse3_cfg[5]),
        .I1(pulse3_cfg[3]),
        .I2(pulse_3_reg_i_230_n_6),
        .I3(pulse3_cfg[9]),
        .I4(pulse_3_i_296_n_0),
        .O(pulse_3_i_220_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_221
       (.I0(pulse3_cfg[4]),
        .I1(pulse_3_reg_i_230_n_7),
        .I2(pulse3_cfg[2]),
        .I3(pulse3_cfg[8]),
        .I4(pulse_3_i_297_n_0),
        .O(pulse_3_i_221_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_222
       (.I0(pulse3_cfg[3]),
        .I1(pulse_3_reg_i_298_n_4),
        .I2(pulse3_cfg[1]),
        .I3(pulse3_cfg[7]),
        .I4(pulse_3_i_299_n_0),
        .O(pulse_3_i_222_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_223
       (.I0(pulse3_cfg[2]),
        .I1(pulse_3_reg_i_298_n_5),
        .I2(pulse3_cfg[0]),
        .I3(pulse3_cfg[6]),
        .I4(pulse_3_i_300_n_0),
        .O(pulse_3_i_223_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_224
       (.I0(pulse_3_i_220_n_0),
        .I1(pulse_3_i_232_n_0),
        .I2(pulse3_cfg[10]),
        .I3(pulse_3_reg_i_230_n_5),
        .I4(pulse3_cfg[4]),
        .I5(pulse3_cfg[6]),
        .O(pulse_3_i_224_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_225
       (.I0(pulse_3_i_221_n_0),
        .I1(pulse_3_i_296_n_0),
        .I2(pulse3_cfg[9]),
        .I3(pulse_3_reg_i_230_n_6),
        .I4(pulse3_cfg[3]),
        .I5(pulse3_cfg[5]),
        .O(pulse_3_i_225_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_226
       (.I0(pulse_3_i_222_n_0),
        .I1(pulse_3_i_297_n_0),
        .I2(pulse3_cfg[8]),
        .I3(pulse3_cfg[2]),
        .I4(pulse_3_reg_i_230_n_7),
        .I5(pulse3_cfg[4]),
        .O(pulse_3_i_226_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_227
       (.I0(pulse_3_i_223_n_0),
        .I1(pulse_3_i_299_n_0),
        .I2(pulse3_cfg[7]),
        .I3(pulse3_cfg[1]),
        .I4(pulse_3_reg_i_298_n_4),
        .I5(pulse3_cfg[3]),
        .O(pulse_3_i_227_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_228
       (.I0(pulse3_cfg[8]),
        .I1(pulse_3_reg_i_161_n_5),
        .I2(pulse3_cfg[10]),
        .O(pulse_3_i_228_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_229
       (.I0(pulse3_cfg[7]),
        .I1(pulse_3_reg_i_161_n_6),
        .I2(pulse3_cfg[9]),
        .O(pulse_3_i_229_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_23
       (.I0(\pulse3_cfg_r_reg[31]_2 ),
        .I1(pulse_3_reg_i_2[8]),
        .I2(pulse_3_i_59_n_0),
        .I3(pulse_3_i_58_n_0),
        .I4(pulse_3_i_53_n_0),
        .I5(pulse_3_reg_i_2[9]),
        .O(pulse_3_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_231
       (.I0(pulse3_cfg[6]),
        .I1(pulse_3_reg_i_161_n_7),
        .I2(pulse3_cfg[8]),
        .O(pulse_3_i_231_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_232
       (.I0(pulse3_cfg[5]),
        .I1(pulse_3_reg_i_230_n_4),
        .I2(pulse3_cfg[7]),
        .O(pulse_3_i_232_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_3_i_233
       (.I0(pulse3_cfg[15]),
        .I1(pulse3_cfg[13]),
        .O(pulse_3_i_233_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_3_i_234
       (.I0(pulse3_cfg[14]),
        .I1(pulse3_cfg[12]),
        .O(pulse_3_i_234_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_235
       (.I0(pulse3_cfg[11]),
        .I1(pulse3_cfg[13]),
        .I2(pulse3_cfg[15]),
        .O(pulse_3_i_235_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_3_i_236
       (.I0(pulse3_cfg[14]),
        .I1(pulse3_cfg[15]),
        .O(pulse_3_i_236_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    pulse_3_i_237
       (.I0(pulse3_cfg[13]),
        .I1(pulse3_cfg[15]),
        .I2(pulse3_cfg[14]),
        .O(pulse_3_i_237_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    pulse_3_i_238
       (.I0(pulse3_cfg[12]),
        .I1(pulse3_cfg[14]),
        .I2(pulse3_cfg[13]),
        .I3(pulse3_cfg[15]),
        .O(pulse_3_i_238_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    pulse_3_i_239
       (.I0(pulse3_cfg[15]),
        .I1(pulse3_cfg[13]),
        .I2(pulse3_cfg[11]),
        .I3(pulse3_cfg[12]),
        .I4(pulse3_cfg[14]),
        .O(pulse_3_i_239_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_24
       (.I0(pulse_3_i_55_n_0),
        .I1(pulse_3_reg_i_2[7]),
        .I2(pulse_3_i_60_n_0),
        .I3(pulse_3_i_59_n_0),
        .I4(\pulse3_cfg_r_reg[31]_2 ),
        .I5(pulse_3_reg_i_2[8]),
        .O(pulse_3_i_24_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_246
       (.I0(pulse_3_reg_i_111_0[1]),
        .I1(pulse3_cfg[24]),
        .O(pulse_3_i_246_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_247
       (.I0(pulse_3_reg_i_111_0[0]),
        .I1(pulse3_cfg[23]),
        .O(pulse_3_i_247_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_248
       (.I0(pulse_3_reg_i_170_0[3]),
        .I1(pulse3_cfg[22]),
        .O(pulse_3_i_248_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_249
       (.I0(pulse_3_reg_i_170_0[2]),
        .I1(pulse3_cfg[21]),
        .O(pulse_3_i_249_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_25
       (.I0(\pulse3_cfg_r_reg[31]_1 [2]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_21_1[3]),
        .O(pulse_3_i_25_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_250
       (.I0(pulse3_cfg[24]),
        .I1(pulse_3_reg_i_111_0[1]),
        .I2(pulse_3_reg_i_111_0[2]),
        .I3(pulse3_cfg[25]),
        .O(pulse_3_i_250_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_251
       (.I0(pulse3_cfg[23]),
        .I1(pulse_3_reg_i_111_0[0]),
        .I2(pulse_3_reg_i_111_0[1]),
        .I3(pulse3_cfg[24]),
        .O(pulse_3_i_251_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_252
       (.I0(pulse3_cfg[22]),
        .I1(pulse_3_reg_i_170_0[3]),
        .I2(pulse_3_reg_i_111_0[0]),
        .I3(pulse3_cfg[23]),
        .O(pulse_3_i_252_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_253
       (.I0(pulse3_cfg[21]),
        .I1(pulse_3_reg_i_170_0[2]),
        .I2(pulse_3_reg_i_170_0[3]),
        .I3(pulse3_cfg[22]),
        .O(pulse_3_i_253_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_260
       (.I0(pulse_3_reg_i_117_0[1]),
        .I1(pulse3_cfg[8]),
        .O(pulse_3_i_260_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_261
       (.I0(pulse_3_reg_i_117_0[0]),
        .I1(pulse3_cfg[7]),
        .O(pulse_3_i_261_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_262
       (.I0(pulse_3_reg_i_183_0[3]),
        .I1(pulse3_cfg[6]),
        .O(pulse_3_i_262_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_263
       (.I0(pulse_3_reg_i_183_0[2]),
        .I1(pulse3_cfg[5]),
        .O(pulse_3_i_263_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_264
       (.I0(pulse3_cfg[8]),
        .I1(pulse_3_reg_i_117_0[1]),
        .I2(pulse_3_reg_i_117_0[2]),
        .I3(pulse3_cfg[9]),
        .O(pulse_3_i_264_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_265
       (.I0(pulse3_cfg[7]),
        .I1(pulse_3_reg_i_117_0[0]),
        .I2(pulse_3_reg_i_117_0[1]),
        .I3(pulse3_cfg[8]),
        .O(pulse_3_i_265_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_266
       (.I0(pulse3_cfg[6]),
        .I1(pulse_3_reg_i_183_0[3]),
        .I2(pulse_3_reg_i_117_0[0]),
        .I3(pulse3_cfg[7]),
        .O(pulse_3_i_266_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pulse_3_i_267
       (.I0(pulse3_cfg[5]),
        .I1(pulse_3_reg_i_183_0[2]),
        .I2(pulse_3_reg_i_183_0[3]),
        .I3(pulse3_cfg[6]),
        .O(pulse_3_i_267_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_268
       (.I0(pulse3_cfg[26]),
        .I1(pulse3_cfg[28]),
        .I2(pulse3_cfg[30]),
        .O(pulse_3_i_268_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_269
       (.I0(pulse3_cfg[25]),
        .I1(pulse3_cfg[27]),
        .I2(pulse3_cfg[29]),
        .O(pulse_3_i_269_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_3_i_27
       (.I0(pulse3_cfg[15]),
        .I1(pulse_3_i_8_0),
        .I2(pulse_3_reg_i_64_n_2),
        .O(pulse_3_i_27_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_270
       (.I0(pulse3_cfg[24]),
        .I1(pulse3_cfg[26]),
        .I2(pulse3_cfg[28]),
        .O(pulse_3_i_270_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_271
       (.I0(pulse3_cfg[23]),
        .I1(pulse3_cfg[25]),
        .I2(pulse3_cfg[27]),
        .O(pulse_3_i_271_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_272
       (.I0(pulse3_cfg[30]),
        .I1(pulse3_cfg[28]),
        .I2(pulse3_cfg[26]),
        .I3(pulse3_cfg[31]),
        .I4(pulse3_cfg[27]),
        .I5(pulse3_cfg[29]),
        .O(pulse_3_i_272_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_273
       (.I0(pulse3_cfg[29]),
        .I1(pulse3_cfg[27]),
        .I2(pulse3_cfg[25]),
        .I3(pulse3_cfg[30]),
        .I4(pulse3_cfg[26]),
        .I5(pulse3_cfg[28]),
        .O(pulse_3_i_273_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_274
       (.I0(pulse3_cfg[28]),
        .I1(pulse3_cfg[26]),
        .I2(pulse3_cfg[24]),
        .I3(pulse3_cfg[29]),
        .I4(pulse3_cfg[25]),
        .I5(pulse3_cfg[27]),
        .O(pulse_3_i_274_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_275
       (.I0(pulse3_cfg[27]),
        .I1(pulse3_cfg[25]),
        .I2(pulse3_cfg[23]),
        .I3(pulse3_cfg[28]),
        .I4(pulse3_cfg[24]),
        .I5(pulse3_cfg[26]),
        .O(pulse_3_i_275_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_276
       (.I0(pulse3_cfg[18]),
        .I1(pulse_3_reg_i_279_n_4),
        .O(pulse_3_i_276_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_277
       (.I0(pulse3_cfg[17]),
        .I1(pulse_3_reg_i_279_n_5),
        .O(pulse_3_i_277_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_278
       (.I0(pulse3_cfg[16]),
        .I1(pulse_3_reg_i_279_n_6),
        .O(pulse_3_i_278_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_280
       (.I0(pulse3_cfg[22]),
        .I1(pulse3_cfg[24]),
        .I2(pulse3_cfg[26]),
        .O(pulse_3_i_280_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_281
       (.I0(pulse3_cfg[21]),
        .I1(pulse3_cfg[23]),
        .I2(pulse3_cfg[25]),
        .O(pulse_3_i_281_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_282
       (.I0(pulse3_cfg[20]),
        .I1(pulse3_cfg[22]),
        .I2(pulse3_cfg[24]),
        .O(pulse_3_i_282_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_283
       (.I0(pulse3_cfg[19]),
        .I1(pulse3_cfg[21]),
        .I2(pulse3_cfg[23]),
        .O(pulse_3_i_283_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_284
       (.I0(pulse3_cfg[26]),
        .I1(pulse3_cfg[24]),
        .I2(pulse3_cfg[22]),
        .I3(pulse3_cfg[27]),
        .I4(pulse3_cfg[23]),
        .I5(pulse3_cfg[25]),
        .O(pulse_3_i_284_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_285
       (.I0(pulse3_cfg[25]),
        .I1(pulse3_cfg[23]),
        .I2(pulse3_cfg[21]),
        .I3(pulse3_cfg[26]),
        .I4(pulse3_cfg[22]),
        .I5(pulse3_cfg[24]),
        .O(pulse_3_i_285_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_286
       (.I0(pulse3_cfg[24]),
        .I1(pulse3_cfg[22]),
        .I2(pulse3_cfg[20]),
        .I3(pulse3_cfg[25]),
        .I4(pulse3_cfg[21]),
        .I5(pulse3_cfg[23]),
        .O(pulse_3_i_286_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_287
       (.I0(pulse3_cfg[23]),
        .I1(pulse3_cfg[21]),
        .I2(pulse3_cfg[19]),
        .I3(pulse3_cfg[24]),
        .I4(pulse3_cfg[20]),
        .I5(pulse3_cfg[22]),
        .O(pulse_3_i_287_n_0));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    pulse_3_i_289
       (.I0(pulse3_cfg[2]),
        .I1(pulse_3_reg_i_298_n_5),
        .I2(pulse3_cfg[0]),
        .I3(pulse3_cfg[6]),
        .I4(pulse_3_i_300_n_0),
        .O(pulse_3_i_289_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pulse_3_i_290
       (.I0(pulse3_cfg[2]),
        .I1(pulse_3_reg_i_298_n_5),
        .I2(pulse3_cfg[0]),
        .I3(pulse3_cfg[5]),
        .O(pulse_3_i_290_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_3_i_291
       (.I0(pulse_3_reg_i_298_n_7),
        .I1(pulse3_cfg[0]),
        .O(pulse_3_i_291_n_0));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    pulse_3_i_292
       (.I0(pulse_3_i_300_n_0),
        .I1(pulse3_cfg[6]),
        .I2(pulse3_cfg[0]),
        .I3(pulse_3_reg_i_298_n_5),
        .I4(pulse3_cfg[2]),
        .I5(pulse3_cfg[5]),
        .O(pulse_3_i_292_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    pulse_3_i_293
       (.I0(pulse_3_i_290_n_0),
        .I1(pulse3_cfg[1]),
        .I2(pulse_3_reg_i_298_n_6),
        .I3(pulse3_cfg[4]),
        .O(pulse_3_i_293_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    pulse_3_i_294
       (.I0(pulse3_cfg[0]),
        .I1(pulse_3_reg_i_298_n_7),
        .I2(pulse3_cfg[1]),
        .I3(pulse_3_reg_i_298_n_6),
        .I4(pulse3_cfg[4]),
        .O(pulse_3_i_294_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pulse_3_i_295
       (.I0(pulse_3_reg_i_298_n_7),
        .I1(pulse3_cfg[0]),
        .I2(pulse3_cfg[3]),
        .O(pulse_3_i_295_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_296
       (.I0(pulse3_cfg[4]),
        .I1(pulse_3_reg_i_230_n_5),
        .I2(pulse3_cfg[6]),
        .O(pulse_3_i_296_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_297
       (.I0(pulse3_cfg[3]),
        .I1(pulse_3_reg_i_230_n_6),
        .I2(pulse3_cfg[5]),
        .O(pulse_3_i_297_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_299
       (.I0(pulse3_cfg[2]),
        .I1(pulse_3_reg_i_230_n_7),
        .I2(pulse3_cfg[4]),
        .O(pulse_3_i_299_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_300
       (.I0(pulse3_cfg[1]),
        .I1(pulse_3_reg_i_298_n_4),
        .I2(pulse3_cfg[3]),
        .O(pulse_3_i_300_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_301
       (.I0(pulse3_cfg[10]),
        .I1(pulse3_cfg[12]),
        .I2(pulse3_cfg[14]),
        .O(pulse_3_i_301_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_302
       (.I0(pulse3_cfg[9]),
        .I1(pulse3_cfg[11]),
        .I2(pulse3_cfg[13]),
        .O(pulse_3_i_302_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_303
       (.I0(pulse3_cfg[8]),
        .I1(pulse3_cfg[10]),
        .I2(pulse3_cfg[12]),
        .O(pulse_3_i_303_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_304
       (.I0(pulse3_cfg[7]),
        .I1(pulse3_cfg[9]),
        .I2(pulse3_cfg[11]),
        .O(pulse_3_i_304_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_305
       (.I0(pulse3_cfg[14]),
        .I1(pulse3_cfg[12]),
        .I2(pulse3_cfg[10]),
        .I3(pulse3_cfg[15]),
        .I4(pulse3_cfg[11]),
        .I5(pulse3_cfg[13]),
        .O(pulse_3_i_305_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_306
       (.I0(pulse3_cfg[13]),
        .I1(pulse3_cfg[11]),
        .I2(pulse3_cfg[9]),
        .I3(pulse3_cfg[14]),
        .I4(pulse3_cfg[10]),
        .I5(pulse3_cfg[12]),
        .O(pulse_3_i_306_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_307
       (.I0(pulse3_cfg[12]),
        .I1(pulse3_cfg[10]),
        .I2(pulse3_cfg[8]),
        .I3(pulse3_cfg[13]),
        .I4(pulse3_cfg[9]),
        .I5(pulse3_cfg[11]),
        .O(pulse_3_i_307_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_308
       (.I0(pulse3_cfg[11]),
        .I1(pulse3_cfg[9]),
        .I2(pulse3_cfg[7]),
        .I3(pulse3_cfg[12]),
        .I4(pulse3_cfg[8]),
        .I5(pulse3_cfg[10]),
        .O(pulse_3_i_308_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_3_i_312
       (.I0(pulse_3_reg_i_170_0[1]),
        .I1(pulse3_cfg[20]),
        .O(pulse_3_i_312_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_313
       (.I0(pulse_3_reg_i_170_0[0]),
        .I1(pulse3_cfg[19]),
        .O(pulse_3_i_313_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_3_i_314
       (.I0(\pulse3_cfg_r_reg[19]_0 [0]),
        .I1(pulse3_cfg[18]),
        .O(pulse_3_i_314_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_3_i_315
       (.I0(pulse3_cfg[20]),
        .I1(pulse_3_reg_i_170_0[1]),
        .I2(pulse_3_reg_i_170_0[2]),
        .I3(pulse3_cfg[21]),
        .O(pulse_3_i_315_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pulse_3_i_316
       (.I0(pulse3_cfg[19]),
        .I1(pulse_3_reg_i_170_0[0]),
        .I2(pulse_3_reg_i_170_0[1]),
        .I3(pulse3_cfg[20]),
        .O(pulse_3_i_316_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_3_i_317
       (.I0(pulse3_cfg[18]),
        .I1(\pulse3_cfg_r_reg[19]_0 [0]),
        .I2(pulse_3_reg_i_170_0[0]),
        .I3(pulse3_cfg[19]),
        .O(pulse_3_i_317_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_318
       (.I0(pulse3_cfg[18]),
        .I1(\pulse3_cfg_r_reg[19]_0 [0]),
        .O(pulse_3_i_318_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_3_i_322
       (.I0(pulse_3_reg_i_183_0[1]),
        .I1(pulse3_cfg[4]),
        .O(pulse_3_i_322_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_3_i_323
       (.I0(pulse_3_reg_i_183_0[0]),
        .I1(pulse3_cfg[3]),
        .O(pulse_3_i_323_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pulse_3_i_324
       (.I0(\pulse3_cfg_r_reg[3]_0 [0]),
        .I1(pulse3_cfg[2]),
        .O(pulse_3_i_324_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_3_i_325
       (.I0(pulse3_cfg[4]),
        .I1(pulse_3_reg_i_183_0[1]),
        .I2(pulse_3_reg_i_183_0[2]),
        .I3(pulse3_cfg[5]),
        .O(pulse_3_i_325_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pulse_3_i_326
       (.I0(pulse3_cfg[3]),
        .I1(pulse_3_reg_i_183_0[0]),
        .I2(pulse_3_reg_i_183_0[1]),
        .I3(pulse3_cfg[4]),
        .O(pulse_3_i_326_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pulse_3_i_327
       (.I0(pulse3_cfg[2]),
        .I1(\pulse3_cfg_r_reg[3]_0 [0]),
        .I2(pulse_3_reg_i_183_0[0]),
        .I3(pulse3_cfg[3]),
        .O(pulse_3_i_327_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_328
       (.I0(pulse3_cfg[2]),
        .I1(\pulse3_cfg_r_reg[3]_0 [0]),
        .O(pulse_3_i_328_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_330
       (.I0(pulse3_cfg[18]),
        .I1(pulse3_cfg[20]),
        .I2(pulse3_cfg[22]),
        .O(pulse_3_i_330_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_331
       (.I0(pulse3_cfg[17]),
        .I1(pulse3_cfg[19]),
        .I2(pulse3_cfg[21]),
        .O(pulse_3_i_331_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_332
       (.I0(pulse3_cfg[19]),
        .I1(pulse3_cfg[17]),
        .I2(pulse3_cfg[21]),
        .O(pulse_3_i_332_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_333
       (.I0(pulse3_cfg[22]),
        .I1(pulse3_cfg[20]),
        .I2(pulse3_cfg[18]),
        .I3(pulse3_cfg[23]),
        .I4(pulse3_cfg[19]),
        .I5(pulse3_cfg[21]),
        .O(pulse_3_i_333_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_334
       (.I0(pulse3_cfg[21]),
        .I1(pulse3_cfg[19]),
        .I2(pulse3_cfg[17]),
        .I3(pulse3_cfg[22]),
        .I4(pulse3_cfg[18]),
        .I5(pulse3_cfg[20]),
        .O(pulse_3_i_334_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    pulse_3_i_335
       (.I0(pulse3_cfg[21]),
        .I1(pulse3_cfg[17]),
        .I2(pulse3_cfg[19]),
        .I3(pulse3_cfg[20]),
        .I4(pulse3_cfg[16]),
        .O(pulse_3_i_335_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_336
       (.I0(pulse3_cfg[16]),
        .I1(pulse3_cfg[20]),
        .I2(pulse3_cfg[18]),
        .O(pulse_3_i_336_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_337
       (.I0(pulse3_cfg[2]),
        .I1(pulse_3_reg_i_340_n_4),
        .O(pulse_3_i_337_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_338
       (.I0(pulse3_cfg[1]),
        .I1(pulse_3_reg_i_340_n_5),
        .O(pulse_3_i_338_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_339
       (.I0(pulse3_cfg[0]),
        .I1(pulse_3_reg_i_340_n_6),
        .O(pulse_3_i_339_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_341
       (.I0(pulse3_cfg[6]),
        .I1(pulse3_cfg[8]),
        .I2(pulse3_cfg[10]),
        .O(pulse_3_i_341_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_342
       (.I0(pulse3_cfg[5]),
        .I1(pulse3_cfg[7]),
        .I2(pulse3_cfg[9]),
        .O(pulse_3_i_342_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_343
       (.I0(pulse3_cfg[4]),
        .I1(pulse3_cfg[6]),
        .I2(pulse3_cfg[8]),
        .O(pulse_3_i_343_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_344
       (.I0(pulse3_cfg[3]),
        .I1(pulse3_cfg[5]),
        .I2(pulse3_cfg[7]),
        .O(pulse_3_i_344_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_345
       (.I0(pulse3_cfg[10]),
        .I1(pulse3_cfg[8]),
        .I2(pulse3_cfg[6]),
        .I3(pulse3_cfg[11]),
        .I4(pulse3_cfg[7]),
        .I5(pulse3_cfg[9]),
        .O(pulse_3_i_345_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_346
       (.I0(pulse3_cfg[9]),
        .I1(pulse3_cfg[7]),
        .I2(pulse3_cfg[5]),
        .I3(pulse3_cfg[10]),
        .I4(pulse3_cfg[6]),
        .I5(pulse3_cfg[8]),
        .O(pulse_3_i_346_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_347
       (.I0(pulse3_cfg[8]),
        .I1(pulse3_cfg[6]),
        .I2(pulse3_cfg[4]),
        .I3(pulse3_cfg[9]),
        .I4(pulse3_cfg[5]),
        .I5(pulse3_cfg[7]),
        .O(pulse_3_i_347_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_348
       (.I0(pulse3_cfg[7]),
        .I1(pulse3_cfg[5]),
        .I2(pulse3_cfg[3]),
        .I3(pulse3_cfg[8]),
        .I4(pulse3_cfg[4]),
        .I5(pulse3_cfg[6]),
        .O(pulse_3_i_348_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_3_i_349
       (.I0(pulse3_cfg[17]),
        .I1(pulse3_cfg[19]),
        .O(pulse_3_i_349_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_3_i_350
       (.I0(pulse3_cfg[16]),
        .I1(pulse3_cfg[18]),
        .O(pulse_3_i_350_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_351
       (.I0(pulse3_cfg[17]),
        .O(pulse_3_i_351_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_353
       (.I0(pulse3_cfg[2]),
        .I1(pulse3_cfg[4]),
        .I2(pulse3_cfg[6]),
        .O(pulse_3_i_353_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    pulse_3_i_354
       (.I0(pulse3_cfg[1]),
        .I1(pulse3_cfg[3]),
        .I2(pulse3_cfg[5]),
        .O(pulse_3_i_354_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_355
       (.I0(pulse3_cfg[3]),
        .I1(pulse3_cfg[1]),
        .I2(pulse3_cfg[5]),
        .O(pulse_3_i_355_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_356
       (.I0(pulse3_cfg[6]),
        .I1(pulse3_cfg[4]),
        .I2(pulse3_cfg[2]),
        .I3(pulse3_cfg[7]),
        .I4(pulse3_cfg[3]),
        .I5(pulse3_cfg[5]),
        .O(pulse_3_i_356_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_357
       (.I0(pulse3_cfg[5]),
        .I1(pulse3_cfg[3]),
        .I2(pulse3_cfg[1]),
        .I3(pulse3_cfg[6]),
        .I4(pulse3_cfg[2]),
        .I5(pulse3_cfg[4]),
        .O(pulse_3_i_357_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    pulse_3_i_358
       (.I0(pulse3_cfg[5]),
        .I1(pulse3_cfg[1]),
        .I2(pulse3_cfg[3]),
        .I3(pulse3_cfg[4]),
        .I4(pulse3_cfg[0]),
        .O(pulse_3_i_358_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pulse_3_i_359
       (.I0(pulse3_cfg[0]),
        .I1(pulse3_cfg[4]),
        .I2(pulse3_cfg[2]),
        .O(pulse_3_i_359_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_3_i_360
       (.I0(pulse3_cfg[1]),
        .I1(pulse3_cfg[3]),
        .O(pulse_3_i_360_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_3_i_361
       (.I0(pulse3_cfg[0]),
        .I1(pulse3_cfg[2]),
        .O(pulse_3_i_361_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_362
       (.I0(pulse3_cfg[1]),
        .O(pulse_3_i_362_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_37
       (.I0(\pulse3_cfg_r_reg[31]_1 [1]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_21_1[2]),
        .O(\pulse3_cfg_r_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_3_i_39
       (.I0(pulse3_cfg[31]),
        .I1(pulse_3_i_32),
        .I2(pulse_3_reg_i_62_n_2),
        .O(\pulse3_cfg_r_reg[31]_7 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_41
       (.I0(\pulse3_cfg_r_reg[30]_0 [3]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_21_1[0]),
        .O(\pulse3_cfg_r_reg[31]_2 ));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_44
       (.I0(\pulse3_cfg_r_reg[14]_0 [0]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_48_0[2]),
        .I3(pulse_3_reg_i_2[6]),
        .I4(\pulse3_cfg_r_reg[31]_3 ),
        .O(pulse_3_i_44_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_45
       (.I0(\pulse3_cfg_r_reg[9]_0 [3]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_48_0[1]),
        .I3(pulse_3_reg_i_2[5]),
        .I4(pulse_3_i_95_n_0),
        .O(pulse_3_i_45_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_46
       (.I0(\pulse3_cfg_r_reg[9]_0 [2]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_48_0[0]),
        .I3(pulse_3_reg_i_2[4]),
        .I4(\pulse3_cfg_r_reg[31]_4 ),
        .O(pulse_3_i_46_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_47
       (.I0(\pulse3_cfg_r_reg[9]_0 [1]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_90_0[3]),
        .I3(pulse_3_reg_i_2[3]),
        .I4(pulse_3_i_97_n_0),
        .O(pulse_3_i_47_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_48
       (.I0(\pulse3_cfg_r_reg[31]_3 ),
        .I1(pulse_3_reg_i_2[6]),
        .I2(pulse_3_i_98_n_0),
        .I3(pulse_3_i_60_n_0),
        .I4(pulse_3_i_55_n_0),
        .I5(pulse_3_reg_i_2[7]),
        .O(pulse_3_i_48_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_49
       (.I0(pulse_3_i_95_n_0),
        .I1(pulse_3_reg_i_2[5]),
        .I2(pulse_3_i_99_n_0),
        .I3(pulse_3_i_98_n_0),
        .I4(\pulse3_cfg_r_reg[31]_3 ),
        .I5(pulse_3_reg_i_2[6]),
        .O(pulse_3_i_49_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_50
       (.I0(\pulse3_cfg_r_reg[31]_4 ),
        .I1(pulse_3_reg_i_2[4]),
        .I2(pulse_3_i_100_n_0),
        .I3(pulse_3_i_99_n_0),
        .I4(pulse_3_i_95_n_0),
        .I5(pulse_3_reg_i_2[5]),
        .O(pulse_3_i_50_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_51
       (.I0(pulse_3_i_97_n_0),
        .I1(pulse_3_reg_i_2[3]),
        .I2(pulse_3_i_101_n_0),
        .I3(pulse_3_i_100_n_0),
        .I4(\pulse3_cfg_r_reg[31]_4 ),
        .I5(pulse_3_reg_i_2[4]),
        .O(pulse_3_i_51_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_53
       (.I0(\pulse3_cfg_r_reg[31]_1 [0]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_21_1[1]),
        .O(pulse_3_i_53_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_55
       (.I0(\pulse3_cfg_r_reg[30]_0 [2]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_48_1[3]),
        .O(pulse_3_i_55_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_56
       (.I0(\pulse3_cfg_r_reg[15]_0 [0]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_21_0[2]),
        .O(pulse_3_i_56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_57
       (.I0(\pulse3_cfg_r_reg[15]_0 [1]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_21_0[3]),
        .O(pulse_3_i_57_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_58
       (.I0(\pulse3_cfg_r_reg[14]_0 [3]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_21_0[1]),
        .O(pulse_3_i_58_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_59
       (.I0(\pulse3_cfg_r_reg[14]_0 [2]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_21_0[0]),
        .O(pulse_3_i_59_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_60
       (.I0(\pulse3_cfg_r_reg[14]_0 [1]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_48_0[3]),
        .O(pulse_3_i_60_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_3_i_65
       (.I0(pulse3_cfg[15]),
        .I1(pulse3_cfg[13]),
        .I2(pulse3_cfg[14]),
        .I3(pulse3_cfg[12]),
        .I4(pulse_3_reg_i_122_n_2),
        .O(pulse_3_i_65_n_0));
  LUT4 #(
    .INIT(16'hC813)) 
    pulse_3_i_66
       (.I0(pulse3_cfg[13]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_reg_i_122_n_2),
        .I3(pulse3_cfg[14]),
        .O(pulse_3_i_66_n_0));
  LUT5 #(
    .INIT(32'h1337C813)) 
    pulse_3_i_67
       (.I0(pulse3_cfg[12]),
        .I1(pulse3_cfg[14]),
        .I2(pulse_3_reg_i_122_n_2),
        .I3(pulse3_cfg[13]),
        .I4(pulse3_cfg[15]),
        .O(pulse_3_i_67_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_68
       (.I0(\pulse3_cfg_r_reg[30]_0 [1]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_48_1[2]),
        .O(\pulse3_cfg_r_reg[31]_3 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_70
       (.I0(\pulse3_cfg_r_reg[25]_0 [2]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_48_1[0]),
        .O(\pulse3_cfg_r_reg[31]_4 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_72
       (.I0(\pulse3_cfg_r_reg[25]_0 [0]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_90_1[2]),
        .O(\pulse3_cfg_r_reg[31]_5 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_74
       (.I0(\pulse3_cfg_r_reg[19]_0 [0]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_90_1[0]),
        .O(\pulse3_cfg_r_reg[31]_6 ));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_3_i_76
       (.I0(pulse3_cfg[31]),
        .I1(pulse3_cfg[29]),
        .I2(pulse3_cfg[30]),
        .I3(pulse3_cfg[28]),
        .I4(pulse_3_reg_i_141_n_2),
        .O(pulse_3_i_76_n_0));
  LUT4 #(
    .INIT(16'hC813)) 
    pulse_3_i_77
       (.I0(pulse3_cfg[29]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_reg_i_141_n_2),
        .I3(pulse3_cfg[30]),
        .O(pulse_3_i_77_n_0));
  LUT5 #(
    .INIT(32'h1337C813)) 
    pulse_3_i_78
       (.I0(pulse3_cfg[28]),
        .I1(pulse3_cfg[30]),
        .I2(pulse_3_reg_i_141_n_2),
        .I3(pulse3_cfg[29]),
        .I4(pulse3_cfg[31]),
        .O(pulse_3_i_78_n_0));
  LUT5 #(
    .INIT(32'h09006606)) 
    pulse_3_i_79
       (.I0(pulse3_cfg[30]),
        .I1(pulse3_cfg[28]),
        .I2(pulse3_cfg[29]),
        .I3(pulse3_cfg[27]),
        .I4(pulse_3_reg_i_141_n_2),
        .O(pulse_3_i_79_n_0));
  LUT6 #(
    .INIT(64'hBBB222B2444DDD4D)) 
    pulse_3_i_8
       (.I0(pulse_3_i_25_n_0),
        .I1(pulse_3_reg_i_2[11]),
        .I2(pulse_3_i_21_0[3]),
        .I3(pulse_3_i_27_n_0),
        .I4(\pulse3_cfg_r_reg[15]_0 [1]),
        .I5(pulse_3_reg_i_2[12]),
        .O(\cnt3_reg[11] ));
  LUT6 #(
    .INIT(64'h9696009600960000)) 
    pulse_3_i_80
       (.I0(pulse3_cfg[29]),
        .I1(pulse_3_reg_i_141_n_2),
        .I2(pulse3_cfg[27]),
        .I3(pulse3_cfg[28]),
        .I4(pulse3_cfg[26]),
        .I5(pulse_3_reg_i_141_n_7),
        .O(pulse_3_i_80_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_81
       (.I0(pulse3_cfg[27]),
        .I1(pulse3_cfg[25]),
        .I2(pulse_3_reg_i_142_n_4),
        .I3(pulse3_cfg[31]),
        .I4(pulse_3_i_143_n_0),
        .O(pulse_3_i_81_n_0));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pulse_3_i_82
       (.I0(pulse3_cfg[26]),
        .I1(pulse3_cfg[24]),
        .I2(pulse_3_reg_i_142_n_5),
        .I3(pulse3_cfg[30]),
        .I4(pulse_3_i_144_n_0),
        .O(pulse_3_i_82_n_0));
  LUT6 #(
    .INIT(64'hEC13C83737C8EC13)) 
    pulse_3_i_83
       (.I0(pulse3_cfg[27]),
        .I1(pulse3_cfg[29]),
        .I2(pulse_3_reg_i_141_n_2),
        .I3(pulse3_cfg[31]),
        .I4(pulse3_cfg[28]),
        .I5(pulse3_cfg[30]),
        .O(pulse_3_i_83_n_0));
  LUT6 #(
    .INIT(64'h6699699696696699)) 
    pulse_3_i_84
       (.I0(pulse_3_i_80_n_0),
        .I1(pulse3_cfg[28]),
        .I2(pulse_3_reg_i_141_n_2),
        .I3(pulse3_cfg[30]),
        .I4(pulse3_cfg[27]),
        .I5(pulse3_cfg[29]),
        .O(pulse_3_i_84_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    pulse_3_i_85
       (.I0(pulse3_cfg[31]),
        .I1(pulse_3_i_145_n_0),
        .I2(pulse_3_i_146_n_0),
        .I3(pulse_3_reg_i_141_n_7),
        .I4(pulse3_cfg[26]),
        .I5(pulse3_cfg[28]),
        .O(pulse_3_i_85_n_0));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    pulse_3_i_86
       (.I0(pulse_3_i_82_n_0),
        .I1(pulse_3_i_143_n_0),
        .I2(pulse3_cfg[31]),
        .I3(pulse_3_reg_i_142_n_4),
        .I4(pulse3_cfg[25]),
        .I5(pulse3_cfg[27]),
        .O(pulse_3_i_86_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_87
       (.I0(\pulse3_cfg_r_reg[9]_0 [0]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_90_0[2]),
        .I3(pulse_3_reg_i_2[2]),
        .I4(\pulse3_cfg_r_reg[31]_5 ),
        .O(pulse_3_i_87_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_88
       (.I0(\pulse3_cfg_r_reg[3]_0 [1]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_90_0[1]),
        .I3(pulse_3_reg_i_2[1]),
        .I4(pulse_3_i_148_n_0),
        .O(pulse_3_i_88_n_0));
  LUT5 #(
    .INIT(32'h4700FF47)) 
    pulse_3_i_89
       (.I0(\pulse3_cfg_r_reg[3]_0 [0]),
        .I1(pulse_3_i_27_n_0),
        .I2(pulse_3_i_90_0[0]),
        .I3(pulse_3_reg_i_2[0]),
        .I4(\pulse3_cfg_r_reg[31]_6 ),
        .O(pulse_3_i_89_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_90
       (.I0(\pulse3_cfg_r_reg[31]_5 ),
        .I1(pulse_3_reg_i_2[2]),
        .I2(pulse_3_i_149_n_0),
        .I3(pulse_3_i_101_n_0),
        .I4(pulse_3_i_97_n_0),
        .I5(pulse_3_reg_i_2[3]),
        .O(pulse_3_i_90_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_91
       (.I0(pulse_3_i_148_n_0),
        .I1(pulse_3_reg_i_2[1]),
        .I2(pulse_3_i_150_n_0),
        .I3(pulse_3_i_149_n_0),
        .I4(\pulse3_cfg_r_reg[31]_5 ),
        .I5(pulse_3_reg_i_2[2]),
        .O(pulse_3_i_91_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    pulse_3_i_92
       (.I0(\pulse3_cfg_r_reg[31]_6 ),
        .I1(pulse_3_reg_i_2[0]),
        .I2(pulse_3_i_151_n_0),
        .I3(pulse_3_i_150_n_0),
        .I4(pulse_3_i_148_n_0),
        .I5(pulse_3_reg_i_2[1]),
        .O(pulse_3_i_92_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    pulse_3_i_93
       (.I0(pulse_3_reg_i_2[0]),
        .I1(\pulse3_cfg_r_reg[31]_6 ),
        .I2(\pulse3_cfg_r_reg[3]_0 [0]),
        .I3(pulse_3_i_27_n_0),
        .I4(pulse_3_i_90_0[0]),
        .O(pulse_3_i_93_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_95
       (.I0(\pulse3_cfg_r_reg[30]_0 [0]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_48_1[1]),
        .O(pulse_3_i_95_n_0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    pulse_3_i_97
       (.I0(\pulse3_cfg_r_reg[25]_0 [1]),
        .I1(pulse3_cfg[31]),
        .I2(pulse_3_i_32),
        .I3(pulse_3_reg_i_62_n_2),
        .I4(pulse_3_i_90_1[3]),
        .O(pulse_3_i_97_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_98
       (.I0(\pulse3_cfg_r_reg[14]_0 [0]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_48_0[2]),
        .O(pulse_3_i_98_n_0));
  LUT5 #(
    .INIT(32'h551055DF)) 
    pulse_3_i_99
       (.I0(\pulse3_cfg_r_reg[9]_0 [3]),
        .I1(pulse3_cfg[15]),
        .I2(pulse_3_i_8_0),
        .I3(pulse_3_reg_i_64_n_2),
        .I4(pulse_3_i_48_0[1]),
        .O(pulse_3_i_99_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_111
       (.CI(pulse_3_reg_i_170_n_0),
        .CO({pulse_3_reg_i_111_n_0,pulse_3_reg_i_111_n_1,pulse_3_reg_i_111_n_2,pulse_3_reg_i_111_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_171_n_0,pulse_3_i_172_n_0,pulse_3_i_173_n_0,pulse_3_i_174_n_0}),
        .O(NLW_pulse_3_reg_i_111_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_175_n_0,pulse_3_i_176_n_0,pulse_3_i_177_n_0,pulse_3_i_178_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_117
       (.CI(pulse_3_reg_i_183_n_0),
        .CO({pulse_3_reg_i_117_n_0,pulse_3_reg_i_117_n_1,pulse_3_reg_i_117_n_2,pulse_3_reg_i_117_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_184_n_0,pulse_3_i_185_n_0,pulse_3_i_186_n_0,pulse_3_i_187_n_0}),
        .O(NLW_pulse_3_reg_i_117_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_188_n_0,pulse_3_i_189_n_0,pulse_3_i_190_n_0,pulse_3_i_191_n_0}));
  CARRY4 pulse_3_reg_i_122
       (.CI(pulse_3_reg_i_161_n_0),
        .CO({NLW_pulse_3_reg_i_122_CO_UNCONNECTED[3:2],pulse_3_reg_i_122_n_2,NLW_pulse_3_reg_i_122_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse3_cfg[15]}),
        .O({NLW_pulse_3_reg_i_122_O_UNCONNECTED[3:1],pulse_3_reg_i_122_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_3_i_192_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_132
       (.CI(pulse_3_reg_i_198_n_0),
        .CO({pulse_3_reg_i_132_n_0,pulse_3_reg_i_132_n_1,pulse_3_reg_i_132_n_2,pulse_3_reg_i_132_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_199_n_0,pulse_3_i_200_n_0,pulse_3_i_201_n_0,pulse3_cfg[19]}),
        .O(NLW_pulse_3_reg_i_132_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_202_n_0,pulse_3_i_203_n_0,pulse_3_i_204_n_0,pulse_3_i_205_n_0}));
  CARRY4 pulse_3_reg_i_141
       (.CI(pulse_3_reg_i_142_n_0),
        .CO({NLW_pulse_3_reg_i_141_CO_UNCONNECTED[3:2],pulse_3_reg_i_141_n_2,NLW_pulse_3_reg_i_141_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse3_cfg[31]}),
        .O({NLW_pulse_3_reg_i_141_O_UNCONNECTED[3:1],pulse_3_reg_i_141_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_3_i_211_n_0}));
  CARRY4 pulse_3_reg_i_142
       (.CI(pulse_3_reg_i_195_n_0),
        .CO({pulse_3_reg_i_142_n_0,pulse_3_reg_i_142_n_1,pulse_3_reg_i_142_n_2,pulse_3_reg_i_142_n_3}),
        .CYINIT(1'b0),
        .DI({pulse3_cfg[30],pulse_3_i_212_n_0,pulse_3_i_213_n_0,pulse_3_i_214_n_0}),
        .O({pulse_3_reg_i_142_n_4,pulse_3_reg_i_142_n_5,pulse_3_reg_i_142_n_6,pulse_3_reg_i_142_n_7}),
        .S({pulse_3_i_215_n_0,pulse_3_i_216_n_0,pulse_3_i_217_n_0,pulse_3_i_218_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_147
       (.CI(pulse_3_reg_i_219_n_0),
        .CO({pulse_3_reg_i_147_n_0,pulse_3_reg_i_147_n_1,pulse_3_reg_i_147_n_2,pulse_3_reg_i_147_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_220_n_0,pulse_3_i_221_n_0,pulse_3_i_222_n_0,pulse_3_i_223_n_0}),
        .O({\pulse3_cfg_r_reg[3]_0 ,NLW_pulse_3_reg_i_147_O_UNCONNECTED[1:0]}),
        .S({pulse_3_i_224_n_0,pulse_3_i_225_n_0,pulse_3_i_226_n_0,pulse_3_i_227_n_0}));
  CARRY4 pulse_3_reg_i_16
       (.CI(pulse_3_reg_i_43_n_0),
        .CO({pulse_3_reg_i_16_n_0,pulse_3_reg_i_16_n_1,pulse_3_reg_i_16_n_2,pulse_3_reg_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_44_n_0,pulse_3_i_45_n_0,pulse_3_i_46_n_0,pulse_3_i_47_n_0}),
        .O(NLW_pulse_3_reg_i_16_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_48_n_0,pulse_3_i_49_n_0,pulse_3_i_50_n_0,pulse_3_i_51_n_0}));
  CARRY4 pulse_3_reg_i_161
       (.CI(pulse_3_reg_i_230_n_0),
        .CO({pulse_3_reg_i_161_n_0,pulse_3_reg_i_161_n_1,pulse_3_reg_i_161_n_2,pulse_3_reg_i_161_n_3}),
        .CYINIT(1'b0),
        .DI({pulse3_cfg[14],pulse_3_i_233_n_0,pulse_3_i_234_n_0,pulse_3_i_235_n_0}),
        .O({pulse_3_reg_i_161_n_4,pulse_3_reg_i_161_n_5,pulse_3_reg_i_161_n_6,pulse_3_reg_i_161_n_7}),
        .S({pulse_3_i_236_n_0,pulse_3_i_237_n_0,pulse_3_i_238_n_0,pulse_3_i_239_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_170
       (.CI(pulse_3_reg_i_245_n_0),
        .CO({pulse_3_reg_i_170_n_0,pulse_3_reg_i_170_n_1,pulse_3_reg_i_170_n_2,pulse_3_reg_i_170_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_246_n_0,pulse_3_i_247_n_0,pulse_3_i_248_n_0,pulse_3_i_249_n_0}),
        .O(NLW_pulse_3_reg_i_170_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_250_n_0,pulse_3_i_251_n_0,pulse_3_i_252_n_0,pulse_3_i_253_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_183
       (.CI(pulse_3_reg_i_259_n_0),
        .CO({pulse_3_reg_i_183_n_0,pulse_3_reg_i_183_n_1,pulse_3_reg_i_183_n_2,pulse_3_reg_i_183_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_260_n_0,pulse_3_i_261_n_0,pulse_3_i_262_n_0,pulse_3_i_263_n_0}),
        .O(NLW_pulse_3_reg_i_183_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_264_n_0,pulse_3_i_265_n_0,pulse_3_i_266_n_0,pulse_3_i_267_n_0}));
  CARRY4 pulse_3_reg_i_195
       (.CI(pulse_3_reg_i_208_n_0),
        .CO({pulse_3_reg_i_195_n_0,pulse_3_reg_i_195_n_1,pulse_3_reg_i_195_n_2,pulse_3_reg_i_195_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_268_n_0,pulse_3_i_269_n_0,pulse_3_i_270_n_0,pulse_3_i_271_n_0}),
        .O({pulse_3_reg_i_195_n_4,pulse_3_reg_i_195_n_5,pulse_3_reg_i_195_n_6,pulse_3_reg_i_195_n_7}),
        .S({pulse_3_i_272_n_0,pulse_3_i_273_n_0,pulse_3_i_274_n_0,pulse_3_i_275_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_198
       (.CI(1'b0),
        .CO({pulse_3_reg_i_198_n_0,pulse_3_reg_i_198_n_1,pulse_3_reg_i_198_n_2,pulse_3_reg_i_198_n_3}),
        .CYINIT(1'b0),
        .DI({pulse3_cfg[18:16],1'b0}),
        .O(NLW_pulse_3_reg_i_198_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_276_n_0,pulse_3_i_277_n_0,pulse_3_i_278_n_0,pulse_3_reg_i_279_n_7}));
  CARRY4 pulse_3_reg_i_208
       (.CI(pulse_3_reg_i_279_n_0),
        .CO({pulse_3_reg_i_208_n_0,pulse_3_reg_i_208_n_1,pulse_3_reg_i_208_n_2,pulse_3_reg_i_208_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_280_n_0,pulse_3_i_281_n_0,pulse_3_i_282_n_0,pulse_3_i_283_n_0}),
        .O({pulse_3_reg_i_208_n_4,pulse_3_reg_i_208_n_5,pulse_3_reg_i_208_n_6,pulse_3_reg_i_208_n_7}),
        .S({pulse_3_i_284_n_0,pulse_3_i_285_n_0,pulse_3_i_286_n_0,pulse_3_i_287_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_219
       (.CI(pulse_3_reg_i_288_n_0),
        .CO({pulse_3_reg_i_219_n_0,pulse_3_reg_i_219_n_1,pulse_3_reg_i_219_n_2,pulse_3_reg_i_219_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_289_n_0,pulse_3_i_290_n_0,pulse_3_i_291_n_0,pulse3_cfg[3]}),
        .O(NLW_pulse_3_reg_i_219_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_292_n_0,pulse_3_i_293_n_0,pulse_3_i_294_n_0,pulse_3_i_295_n_0}));
  CARRY4 pulse_3_reg_i_230
       (.CI(pulse_3_reg_i_298_n_0),
        .CO({pulse_3_reg_i_230_n_0,pulse_3_reg_i_230_n_1,pulse_3_reg_i_230_n_2,pulse_3_reg_i_230_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_301_n_0,pulse_3_i_302_n_0,pulse_3_i_303_n_0,pulse_3_i_304_n_0}),
        .O({pulse_3_reg_i_230_n_4,pulse_3_reg_i_230_n_5,pulse_3_reg_i_230_n_6,pulse_3_reg_i_230_n_7}),
        .S({pulse_3_i_305_n_0,pulse_3_i_306_n_0,pulse_3_i_307_n_0,pulse_3_i_308_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_245
       (.CI(1'b0),
        .CO({pulse_3_reg_i_245_n_0,pulse_3_reg_i_245_n_1,pulse_3_reg_i_245_n_2,pulse_3_reg_i_245_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_312_n_0,pulse_3_i_313_n_0,pulse_3_i_314_n_0,1'b0}),
        .O(NLW_pulse_3_reg_i_245_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_315_n_0,pulse_3_i_316_n_0,pulse_3_i_317_n_0,pulse_3_i_318_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_259
       (.CI(1'b0),
        .CO({pulse_3_reg_i_259_n_0,pulse_3_reg_i_259_n_1,pulse_3_reg_i_259_n_2,pulse_3_reg_i_259_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_322_n_0,pulse_3_i_323_n_0,pulse_3_i_324_n_0,1'b0}),
        .O(NLW_pulse_3_reg_i_259_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_325_n_0,pulse_3_i_326_n_0,pulse_3_i_327_n_0,pulse_3_i_328_n_0}));
  CARRY4 pulse_3_reg_i_279
       (.CI(pulse_3_reg_i_329_n_0),
        .CO({pulse_3_reg_i_279_n_0,pulse_3_reg_i_279_n_1,pulse_3_reg_i_279_n_2,pulse_3_reg_i_279_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_330_n_0,pulse_3_i_331_n_0,pulse_3_i_332_n_0,pulse3_cfg[18]}),
        .O({pulse_3_reg_i_279_n_4,pulse_3_reg_i_279_n_5,pulse_3_reg_i_279_n_6,pulse_3_reg_i_279_n_7}),
        .S({pulse_3_i_333_n_0,pulse_3_i_334_n_0,pulse_3_i_335_n_0,pulse_3_i_336_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_28
       (.CI(pulse_3_reg_i_52_n_0),
        .CO({NLW_pulse_3_reg_i_28_CO_UNCONNECTED[3:1],pulse_3_reg_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse_3_i_65_n_0}),
        .O({NLW_pulse_3_reg_i_28_O_UNCONNECTED[3:2],\pulse3_cfg_r_reg[15]_0 }),
        .S({1'b0,1'b0,pulse_3_i_66_n_0,pulse_3_i_67_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_288
       (.CI(1'b0),
        .CO({pulse_3_reg_i_288_n_0,pulse_3_reg_i_288_n_1,pulse_3_reg_i_288_n_2,pulse_3_reg_i_288_n_3}),
        .CYINIT(1'b0),
        .DI({pulse3_cfg[2:0],1'b0}),
        .O(NLW_pulse_3_reg_i_288_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_337_n_0,pulse_3_i_338_n_0,pulse_3_i_339_n_0,pulse_3_reg_i_340_n_7}));
  CARRY4 pulse_3_reg_i_298
       (.CI(pulse_3_reg_i_340_n_0),
        .CO({pulse_3_reg_i_298_n_0,pulse_3_reg_i_298_n_1,pulse_3_reg_i_298_n_2,pulse_3_reg_i_298_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_341_n_0,pulse_3_i_342_n_0,pulse_3_i_343_n_0,pulse_3_i_344_n_0}),
        .O({pulse_3_reg_i_298_n_4,pulse_3_reg_i_298_n_5,pulse_3_reg_i_298_n_6,pulse_3_reg_i_298_n_7}),
        .S({pulse_3_i_345_n_0,pulse_3_i_346_n_0,pulse_3_i_347_n_0,pulse_3_i_348_n_0}));
  CARRY4 pulse_3_reg_i_329
       (.CI(1'b0),
        .CO({pulse_3_reg_i_329_n_0,pulse_3_reg_i_329_n_1,pulse_3_reg_i_329_n_2,pulse_3_reg_i_329_n_3}),
        .CYINIT(1'b0),
        .DI({pulse3_cfg[17:16],1'b0,1'b1}),
        .O(NLW_pulse_3_reg_i_329_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_349_n_0,pulse_3_i_350_n_0,pulse_3_i_351_n_0,pulse3_cfg[16]}));
  CARRY4 pulse_3_reg_i_340
       (.CI(pulse_3_reg_i_352_n_0),
        .CO({pulse_3_reg_i_340_n_0,pulse_3_reg_i_340_n_1,pulse_3_reg_i_340_n_2,pulse_3_reg_i_340_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_353_n_0,pulse_3_i_354_n_0,pulse_3_i_355_n_0,pulse3_cfg[2]}),
        .O({pulse_3_reg_i_340_n_4,pulse_3_reg_i_340_n_5,pulse_3_reg_i_340_n_6,pulse_3_reg_i_340_n_7}),
        .S({pulse_3_i_356_n_0,pulse_3_i_357_n_0,pulse_3_i_358_n_0,pulse_3_i_359_n_0}));
  CARRY4 pulse_3_reg_i_352
       (.CI(1'b0),
        .CO({pulse_3_reg_i_352_n_0,pulse_3_reg_i_352_n_1,pulse_3_reg_i_352_n_2,pulse_3_reg_i_352_n_3}),
        .CYINIT(1'b0),
        .DI({pulse3_cfg[1:0],1'b0,1'b1}),
        .O(NLW_pulse_3_reg_i_352_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_360_n_0,pulse_3_i_361_n_0,pulse_3_i_362_n_0,pulse3_cfg[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_38
       (.CI(pulse_3_reg_i_42_n_0),
        .CO({NLW_pulse_3_reg_i_38_CO_UNCONNECTED[3:1],pulse_3_reg_i_38_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pulse_3_i_76_n_0}),
        .O({NLW_pulse_3_reg_i_38_O_UNCONNECTED[3:2],\pulse3_cfg_r_reg[31]_1 [2:1]}),
        .S({1'b0,1'b0,pulse_3_i_77_n_0,pulse_3_i_78_n_0}));
  CARRY4 pulse_3_reg_i_4
       (.CI(pulse_3_reg_i_16_n_0),
        .CO({\cnt3_reg[10] ,pulse_3_reg_i_4_n_1,pulse_3_reg_i_4_n_2,pulse_3_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_17_n_0,pulse_3_i_18_n_0,pulse_3_i_19_n_0,pulse_3_i_20_n_0}),
        .O(NLW_pulse_3_reg_i_4_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_21_n_0,pulse_3_i_22_n_0,pulse_3_i_23_n_0,pulse_3_i_24_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_42
       (.CI(pulse_3_reg_i_71_n_0),
        .CO({pulse_3_reg_i_42_n_0,pulse_3_reg_i_42_n_1,pulse_3_reg_i_42_n_2,pulse_3_reg_i_42_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_79_n_0,pulse_3_i_80_n_0,pulse_3_i_81_n_0,pulse_3_i_82_n_0}),
        .O({\pulse3_cfg_r_reg[31]_1 [0],\pulse3_cfg_r_reg[30]_0 [3:1]}),
        .S({pulse_3_i_83_n_0,pulse_3_i_84_n_0,pulse_3_i_85_n_0,pulse_3_i_86_n_0}));
  CARRY4 pulse_3_reg_i_43
       (.CI(1'b0),
        .CO({pulse_3_reg_i_43_n_0,pulse_3_reg_i_43_n_1,pulse_3_reg_i_43_n_2,pulse_3_reg_i_43_n_3}),
        .CYINIT(1'b1),
        .DI({pulse_3_i_87_n_0,pulse_3_i_88_n_0,pulse_3_i_89_n_0,1'b1}),
        .O(NLW_pulse_3_reg_i_43_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_90_n_0,pulse_3_i_91_n_0,pulse_3_i_92_n_0,pulse_3_i_93_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_52
       (.CI(pulse_3_reg_i_94_n_0),
        .CO({pulse_3_reg_i_52_n_0,pulse_3_reg_i_52_n_1,pulse_3_reg_i_52_n_2,pulse_3_reg_i_52_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_102_n_0,pulse_3_i_103_n_0,pulse_3_i_104_n_0,pulse_3_i_105_n_0}),
        .O(\pulse3_cfg_r_reg[14]_0 ),
        .S({pulse_3_i_106_n_0,pulse_3_i_107_n_0,pulse_3_i_108_n_0,pulse_3_i_109_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_62
       (.CI(pulse_3_reg_i_111_n_0),
        .CO({NLW_pulse_3_reg_i_62_CO_UNCONNECTED[3:2],pulse_3_reg_i_62_n_2,pulse_3_reg_i_62_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_3_i_112_n_0,pulse_3_i_113_n_0}),
        .O(NLW_pulse_3_reg_i_62_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_3_i_114_n_0,pulse_3_i_115_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_64
       (.CI(pulse_3_reg_i_117_n_0),
        .CO({NLW_pulse_3_reg_i_64_CO_UNCONNECTED[3:2],pulse_3_reg_i_64_n_2,pulse_3_reg_i_64_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_3_i_118_n_0,pulse_3_i_119_n_0}),
        .O(NLW_pulse_3_reg_i_64_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_3_i_120_n_0,pulse_3_i_121_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_71
       (.CI(pulse_3_reg_i_75_n_0),
        .CO({pulse_3_reg_i_71_n_0,pulse_3_reg_i_71_n_1,pulse_3_reg_i_71_n_2,pulse_3_reg_i_71_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_123_n_0,pulse_3_i_124_n_0,pulse_3_i_125_n_0,pulse_3_i_126_n_0}),
        .O({\pulse3_cfg_r_reg[30]_0 [0],\pulse3_cfg_r_reg[25]_0 }),
        .S({pulse_3_i_127_n_0,pulse_3_i_128_n_0,pulse_3_i_129_n_0,pulse_3_i_130_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_75
       (.CI(pulse_3_reg_i_132_n_0),
        .CO({pulse_3_reg_i_75_n_0,pulse_3_reg_i_75_n_1,pulse_3_reg_i_75_n_2,pulse_3_reg_i_75_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_133_n_0,pulse_3_i_134_n_0,pulse_3_i_135_n_0,pulse_3_i_136_n_0}),
        .O({\pulse3_cfg_r_reg[19]_0 ,NLW_pulse_3_reg_i_75_O_UNCONNECTED[1:0]}),
        .S({pulse_3_i_137_n_0,pulse_3_i_138_n_0,pulse_3_i_139_n_0,pulse_3_i_140_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_94
       (.CI(pulse_3_reg_i_147_n_0),
        .CO({pulse_3_reg_i_94_n_0,pulse_3_reg_i_94_n_1,pulse_3_reg_i_94_n_2,pulse_3_reg_i_94_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_152_n_0,pulse_3_i_153_n_0,pulse_3_i_154_n_0,pulse_3_i_155_n_0}),
        .O(\pulse3_cfg_r_reg[9]_0 ),
        .S({pulse_3_i_156_n_0,pulse_3_i_157_n_0,pulse_3_i_158_n_0,pulse_3_i_159_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \pulse_seq_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\pulse0_cfg_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[4]),
        .I3(s_axi_awaddr[3]),
        .I4(s_axi_awaddr[0]),
        .I5(\pulse0_cfg_r[31]_i_3_n_0 ),
        .O(\pulse_seq_reg_r[31]_i_1_n_0 ));
  FDPE \pulse_seq_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse_seq_reg[0]));
  FDCE \pulse_seq_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(pulse_seq_reg[10]));
  FDCE \pulse_seq_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(pulse_seq_reg[11]));
  FDCE \pulse_seq_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(pulse_seq_reg[12]));
  FDCE \pulse_seq_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(pulse_seq_reg[13]));
  FDCE \pulse_seq_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(pulse_seq_reg[14]));
  FDCE \pulse_seq_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(pulse_seq_reg[15]));
  FDCE \pulse_seq_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(pulse_seq_reg[16]));
  FDCE \pulse_seq_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(pulse_seq_reg[17]));
  FDCE \pulse_seq_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(pulse_seq_reg[18]));
  FDCE \pulse_seq_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(pulse_seq_reg[19]));
  FDPE \pulse_seq_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse_seq_reg[1]));
  FDCE \pulse_seq_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(pulse_seq_reg[20]));
  FDCE \pulse_seq_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(pulse_seq_reg[21]));
  FDCE \pulse_seq_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(pulse_seq_reg[22]));
  FDCE \pulse_seq_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(pulse_seq_reg[23]));
  FDCE \pulse_seq_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(pulse_seq_reg[24]));
  FDCE \pulse_seq_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(pulse_seq_reg[25]));
  FDCE \pulse_seq_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(pulse_seq_reg[26]));
  FDCE \pulse_seq_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(pulse_seq_reg[27]));
  FDCE \pulse_seq_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(pulse_seq_reg[28]));
  FDCE \pulse_seq_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(pulse_seq_reg[29]));
  FDPE \pulse_seq_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse_seq_reg[2]));
  FDCE \pulse_seq_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(pulse_seq_reg[30]));
  FDCE \pulse_seq_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(pulse_seq_reg[31]));
  FDPE \pulse_seq_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .PRE(wr_en_i_1_n_0),
        .Q(pulse_seq_reg[3]));
  FDCE \pulse_seq_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(pulse_seq_reg[4]));
  FDCE \pulse_seq_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(pulse_seq_reg[5]));
  FDCE \pulse_seq_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(pulse_seq_reg[6]));
  FDCE \pulse_seq_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(pulse_seq_reg[7]));
  FDCE \pulse_seq_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(pulse_seq_reg[8]));
  FDCE \pulse_seq_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pulse_seq_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(pulse_seq_reg[9]));
  FDCE rd_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(wr_en_i_1_n_0),
        .D(E),
        .Q(s_axi_rvalid));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[0]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[0]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[0]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[0]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[0] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[0]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[0] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[0] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[0] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[0]_i_7 
       (.I0(pulse1_cfg[0]),
        .I1(pulse0_cfg[0]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\mw_phase_reg_r_reg[1]_1 [0]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[0]),
        .O(\rdata_r[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[0]_i_8 
       (.I0(seq_sel_reg[0]),
        .I1(pulse_seq_reg[0]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[0]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[0]),
        .O(\rdata_r[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[0]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[0] ),
        .I1(\seq_param2_r_reg_n_0_[0] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[0] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[0] ),
        .O(\rdata_r[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[10]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[10]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[10]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[10]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[10] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[10]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[10] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[10] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[10] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[10]_i_7 
       (.I0(pulse1_cfg[10]),
        .I1(pulse0_cfg[10]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[10]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[10]),
        .O(\rdata_r[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[10]_i_8 
       (.I0(seq_sel_reg[10]),
        .I1(pulse_seq_reg[10]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[10]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[10]),
        .O(\rdata_r[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[10]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[10] ),
        .I1(\seq_param2_r_reg_n_0_[10] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[10] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[10] ),
        .O(\rdata_r[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[11]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[11]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[11]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[11]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[11] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[11]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[11] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[11] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[11] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[11]_i_7 
       (.I0(pulse1_cfg[11]),
        .I1(pulse0_cfg[11]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[11]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[11]),
        .O(\rdata_r[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[11]_i_8 
       (.I0(seq_sel_reg[11]),
        .I1(pulse_seq_reg[11]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[11]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[11]),
        .O(\rdata_r[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[11]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[11] ),
        .I1(\seq_param2_r_reg_n_0_[11] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[11] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[11] ),
        .O(\rdata_r[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[12]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[12]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[12]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[12]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[12] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[12]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[12] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[12] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[12] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[12]_i_7 
       (.I0(pulse1_cfg[12]),
        .I1(pulse0_cfg[12]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[12]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[12]),
        .O(\rdata_r[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[12]_i_8 
       (.I0(seq_sel_reg[12]),
        .I1(pulse_seq_reg[12]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[12]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[12]),
        .O(\rdata_r[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[12]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[12] ),
        .I1(\seq_param2_r_reg_n_0_[12] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[12] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[12] ),
        .O(\rdata_r[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[13]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[13]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[13]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[13]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[13] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[13]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[13] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[13] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[13] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[13]_i_7 
       (.I0(pulse1_cfg[13]),
        .I1(pulse0_cfg[13]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[13]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[13]),
        .O(\rdata_r[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[13]_i_8 
       (.I0(seq_sel_reg[13]),
        .I1(pulse_seq_reg[13]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[13]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[13]),
        .O(\rdata_r[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[13]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[13] ),
        .I1(\seq_param2_r_reg_n_0_[13] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[13] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[13] ),
        .O(\rdata_r[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[14]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[14]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[14]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[14]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[14] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[14]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[14] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[14] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[14] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[14]_i_7 
       (.I0(pulse1_cfg[14]),
        .I1(pulse0_cfg[14]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[14]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[14]),
        .O(\rdata_r[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[14]_i_8 
       (.I0(seq_sel_reg[14]),
        .I1(pulse_seq_reg[14]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[14]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[14]),
        .O(\rdata_r[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[14]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[14] ),
        .I1(\seq_param2_r_reg_n_0_[14] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[14] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[14] ),
        .O(\rdata_r[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[15]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[15]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[15]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[15]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[15] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[15]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[15] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[15] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[15] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[15]_i_7 
       (.I0(pulse1_cfg[15]),
        .I1(pulse0_cfg[15]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[15]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[15]),
        .O(\rdata_r[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[15]_i_8 
       (.I0(seq_sel_reg[15]),
        .I1(pulse_seq_reg[15]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[15]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[15]),
        .O(\rdata_r[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[15]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[15] ),
        .I1(\seq_param2_r_reg_n_0_[15] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[15] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[15] ),
        .O(\rdata_r[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[16]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[16]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[16]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[16]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[16] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[16]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[16] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[16] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[16] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[16]_i_7 
       (.I0(pulse1_cfg[16]),
        .I1(pulse0_cfg[16]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[16]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[16]),
        .O(\rdata_r[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[16]_i_8 
       (.I0(seq_sel_reg[16]),
        .I1(pulse_seq_reg[16]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[16]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[16]),
        .O(\rdata_r[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[16]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[16] ),
        .I1(\seq_param2_r_reg_n_0_[16] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[16] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[16] ),
        .O(\rdata_r[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[17]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[17]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[17]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[17]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[17] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[17]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[17] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[17] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[17] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[17]_i_7 
       (.I0(pulse1_cfg[17]),
        .I1(pulse0_cfg[17]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[17]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[17]),
        .O(\rdata_r[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[17]_i_8 
       (.I0(seq_sel_reg[17]),
        .I1(pulse_seq_reg[17]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[17]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[17]),
        .O(\rdata_r[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[17]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[17] ),
        .I1(\seq_param2_r_reg_n_0_[17] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[17] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[17] ),
        .O(\rdata_r[17]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[18]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[18]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[18]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[18]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[18] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[18]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[18] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[18] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[18] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[18]_i_7 
       (.I0(pulse1_cfg[18]),
        .I1(pulse0_cfg[18]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[18]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[18]),
        .O(\rdata_r[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[18]_i_8 
       (.I0(seq_sel_reg[18]),
        .I1(pulse_seq_reg[18]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[18]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[18]),
        .O(\rdata_r[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[18]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[18] ),
        .I1(\seq_param2_r_reg_n_0_[18] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[18] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[18] ),
        .O(\rdata_r[18]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[19]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[19]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[19]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[19]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[19] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[19]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[19] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[19] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[19] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[19]_i_7 
       (.I0(pulse1_cfg[19]),
        .I1(pulse0_cfg[19]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[19]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[19]),
        .O(\rdata_r[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[19]_i_8 
       (.I0(seq_sel_reg[19]),
        .I1(pulse_seq_reg[19]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[19]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[19]),
        .O(\rdata_r[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[19]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[19] ),
        .I1(\seq_param2_r_reg_n_0_[19] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[19] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[19] ),
        .O(\rdata_r[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[1]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[1]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[1]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[1]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[1] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[1]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[1] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[1] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(ctrl_reg[1]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[1]_i_7 
       (.I0(pulse1_cfg[1]),
        .I1(pulse0_cfg[1]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\mw_phase_reg_r_reg[1]_1 [1]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[1]),
        .O(\rdata_r[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[1]_i_8 
       (.I0(seq_sel_reg[1]),
        .I1(pulse_seq_reg[1]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[1]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[1]),
        .O(\rdata_r[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[1]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[1] ),
        .I1(\seq_param2_r_reg_n_0_[1] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[1] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[1] ),
        .O(\rdata_r[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[20]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[20]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[20]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[20]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[20] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[20]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[20] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[20] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[20] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[20]_i_7 
       (.I0(pulse1_cfg[20]),
        .I1(pulse0_cfg[20]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[20]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[20]),
        .O(\rdata_r[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[20]_i_8 
       (.I0(seq_sel_reg[20]),
        .I1(pulse_seq_reg[20]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[20]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[20]),
        .O(\rdata_r[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[20]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[20] ),
        .I1(\seq_param2_r_reg_n_0_[20] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[20] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[20] ),
        .O(\rdata_r[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[21]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[21]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[21]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[21]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[21] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[21]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[21] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[21] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[21] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[21]_i_7 
       (.I0(pulse1_cfg[21]),
        .I1(pulse0_cfg[21]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[21]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[21]),
        .O(\rdata_r[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[21]_i_8 
       (.I0(seq_sel_reg[21]),
        .I1(pulse_seq_reg[21]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[21]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[21]),
        .O(\rdata_r[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[21]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[21] ),
        .I1(\seq_param2_r_reg_n_0_[21] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[21] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[21] ),
        .O(\rdata_r[21]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[22]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[22]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[22]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[22]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[22] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[22]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[22] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[22] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[22] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[22]_i_7 
       (.I0(pulse1_cfg[22]),
        .I1(pulse0_cfg[22]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[22]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[22]),
        .O(\rdata_r[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[22]_i_8 
       (.I0(seq_sel_reg[22]),
        .I1(pulse_seq_reg[22]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[22]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[22]),
        .O(\rdata_r[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[22]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[22] ),
        .I1(\seq_param2_r_reg_n_0_[22] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[22] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[22] ),
        .O(\rdata_r[22]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[23]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[23]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[23]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[23]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[23] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[23]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[23] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[23] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[23] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[23]_i_7 
       (.I0(pulse1_cfg[23]),
        .I1(pulse0_cfg[23]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[23]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[23]),
        .O(\rdata_r[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[23]_i_8 
       (.I0(seq_sel_reg[23]),
        .I1(pulse_seq_reg[23]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[23]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[23]),
        .O(\rdata_r[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[23]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[23] ),
        .I1(\seq_param2_r_reg_n_0_[23] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[23] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[23] ),
        .O(\rdata_r[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[24]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[24]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[24]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[24]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[24] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[24]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[24] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[24] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[24] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[24]_i_7 
       (.I0(pulse1_cfg[24]),
        .I1(pulse0_cfg[24]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[24]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[24]),
        .O(\rdata_r[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[24]_i_8 
       (.I0(seq_sel_reg[24]),
        .I1(pulse_seq_reg[24]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[24]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[24]),
        .O(\rdata_r[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[24]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[24] ),
        .I1(\seq_param2_r_reg_n_0_[24] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[24] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[24] ),
        .O(\rdata_r[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[25]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[25]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[25]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[25]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[25] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[25]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[25] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[25] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[25] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[25]_i_7 
       (.I0(pulse1_cfg[25]),
        .I1(pulse0_cfg[25]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[25]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[25]),
        .O(\rdata_r[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[25]_i_8 
       (.I0(seq_sel_reg[25]),
        .I1(pulse_seq_reg[25]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[25]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[25]),
        .O(\rdata_r[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[25]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[25] ),
        .I1(\seq_param2_r_reg_n_0_[25] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[25] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[25] ),
        .O(\rdata_r[25]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[26]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[26]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[26]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[26]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[26] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[26]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[26] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[26] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[26] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[26]_i_7 
       (.I0(pulse1_cfg[26]),
        .I1(pulse0_cfg[26]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[26]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[26]),
        .O(\rdata_r[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[26]_i_8 
       (.I0(seq_sel_reg[26]),
        .I1(pulse_seq_reg[26]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[26]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[26]),
        .O(\rdata_r[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[26]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[26] ),
        .I1(\seq_param2_r_reg_n_0_[26] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[26] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[26] ),
        .O(\rdata_r[26]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[27]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[27]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[27]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[27]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[27] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[27]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[27] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[27] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[27] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[27]_i_7 
       (.I0(pulse1_cfg[27]),
        .I1(pulse0_cfg[27]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[27]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[27]),
        .O(\rdata_r[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[27]_i_8 
       (.I0(seq_sel_reg[27]),
        .I1(pulse_seq_reg[27]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[27]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[27]),
        .O(\rdata_r[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[27]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[27] ),
        .I1(\seq_param2_r_reg_n_0_[27] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[27] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[27] ),
        .O(\rdata_r[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[28]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[28]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[28]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[28]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[28] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[28]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[28] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[28] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[28] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[28]_i_7 
       (.I0(pulse1_cfg[28]),
        .I1(pulse0_cfg[28]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[28]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[28]),
        .O(\rdata_r[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[28]_i_8 
       (.I0(seq_sel_reg[28]),
        .I1(pulse_seq_reg[28]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[28]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[28]),
        .O(\rdata_r[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[28]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[28] ),
        .I1(\seq_param2_r_reg_n_0_[28] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[28] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[28] ),
        .O(\rdata_r[28]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[29]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[29]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[29]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[29]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[29] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[29]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[29] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[29] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[29] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[29]_i_7 
       (.I0(pulse1_cfg[29]),
        .I1(pulse0_cfg[29]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[29]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[29]),
        .O(\rdata_r[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[29]_i_8 
       (.I0(seq_sel_reg[29]),
        .I1(pulse_seq_reg[29]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[29]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[29]),
        .O(\rdata_r[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[29]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[29] ),
        .I1(\seq_param2_r_reg_n_0_[29] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[29] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[29] ),
        .O(\rdata_r[29]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[2]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[2]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[2]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[2]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[2] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[2]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[2] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[2] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[2] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[2]_i_7 
       (.I0(pulse1_cfg[2]),
        .I1(pulse0_cfg[2]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[2]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[2]),
        .O(\rdata_r[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[2]_i_8 
       (.I0(seq_sel_reg[2]),
        .I1(pulse_seq_reg[2]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[2]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[2]),
        .O(\rdata_r[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[2]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[2] ),
        .I1(\seq_param2_r_reg_n_0_[2] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[2] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[2] ),
        .O(\rdata_r[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[30]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[30]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[30]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[30]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[30] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[30]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[30] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[30] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[30] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[30]_i_7 
       (.I0(pulse1_cfg[30]),
        .I1(pulse0_cfg[30]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[30]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[30]),
        .O(\rdata_r[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[30]_i_8 
       (.I0(seq_sel_reg[30]),
        .I1(pulse_seq_reg[30]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[30]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[30]),
        .O(\rdata_r[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[30]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[30] ),
        .I1(\seq_param2_r_reg_n_0_[30] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[30] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[30] ),
        .O(\rdata_r[30]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[31]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[31]_i_3_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[31]_i_5_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \rdata_r[31]_i_12 
       (.I0(s_axi_araddr[31]),
        .I1(\rdata_r[31]_i_21_n_0 ),
        .I2(s_axi_araddr[30]),
        .I3(s_axi_araddr[29]),
        .I4(s_axi_araddr[27]),
        .I5(s_axi_araddr[28]),
        .O(\rdata_r[31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata_r[31]_i_13 
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_araddr[11]),
        .I2(s_axi_araddr[14]),
        .I3(s_axi_araddr[13]),
        .I4(\rdata_r[31]_i_22_n_0 ),
        .O(\rdata_r[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \rdata_r[31]_i_14 
       (.I0(s_axi_araddr[20]),
        .I1(s_axi_araddr[19]),
        .I2(s_axi_araddr[21]),
        .I3(s_axi_araddr[22]),
        .I4(\rdata_r[31]_i_23_n_0 ),
        .O(\rdata_r[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rdata_r[31]_i_15 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .O(\rdata_r[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000101000010100)) 
    \rdata_r[31]_i_16 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[5]),
        .I4(s_axi_araddr[6]),
        .I5(s_axi_araddr[3]),
        .O(\rdata_r[31]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[31]_i_17 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[31] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[31] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[31] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[31]_i_18 
       (.I0(pulse1_cfg[31]),
        .I1(pulse0_cfg[31]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[31]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[31]),
        .O(\rdata_r[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[31]_i_19 
       (.I0(seq_sel_reg[31]),
        .I1(pulse_seq_reg[31]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[31]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[31]),
        .O(\rdata_r[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000111000011111)) 
    \rdata_r[31]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[5]),
        .I4(s_axi_araddr[6]),
        .I5(s_axi_araddr[3]),
        .O(\rdata_r[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[31]_i_20 
       (.I0(\adc_cfg_reg_r_reg_n_0_[31] ),
        .I1(\seq_param2_r_reg_n_0_[31] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[31] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[31] ),
        .O(\rdata_r[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rdata_r[31]_i_21 
       (.I0(s_axi_araddr[25]),
        .I1(s_axi_araddr[26]),
        .I2(s_axi_araddr[23]),
        .I3(s_axi_araddr[24]),
        .O(\rdata_r[31]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata_r[31]_i_22 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_araddr[10]),
        .I2(s_axi_araddr[7]),
        .I3(s_axi_araddr[8]),
        .O(\rdata_r[31]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata_r[31]_i_23 
       (.I0(s_axi_araddr[17]),
        .I1(s_axi_araddr[18]),
        .I2(s_axi_araddr[15]),
        .I3(s_axi_araddr[16]),
        .O(\rdata_r[31]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[31]_i_3 
       (.I0(\dma_cfg_reg_r_reg_n_0_[31] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000111111101)) 
    \rdata_r[31]_i_4 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[4]),
        .I4(s_axi_araddr[5]),
        .I5(s_axi_araddr[6]),
        .O(\rdata_r[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata_r[31]_i_6 
       (.I0(\rdata_r[31]_i_12_n_0 ),
        .I1(\rdata_r[31]_i_13_n_0 ),
        .I2(\rdata_r[31]_i_14_n_0 ),
        .O(\rdata_r[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEBEE6AFFFFFFFF)) 
    \rdata_r[31]_i_7 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[6]),
        .I2(s_axi_araddr[5]),
        .I3(s_axi_araddr[4]),
        .I4(s_axi_araddr[3]),
        .I5(\rdata_r[31]_i_15_n_0 ),
        .O(\rdata_r[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0E3FFBCFFFFFFFF)) 
    \rdata_r[31]_i_8 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[5]),
        .I2(s_axi_araddr[6]),
        .I3(s_axi_araddr[4]),
        .I4(s_axi_araddr[3]),
        .I5(\rdata_r[31]_i_15_n_0 ),
        .O(\rdata_r[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0010001000100100)) 
    \rdata_r[31]_i_9 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[5]),
        .I3(s_axi_araddr[6]),
        .I4(s_axi_araddr[4]),
        .I5(s_axi_araddr[3]),
        .O(\rdata_r[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[3]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[3]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[3]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[3]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[3] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[3]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[3] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[3] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[3] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[3]_i_7 
       (.I0(pulse1_cfg[3]),
        .I1(pulse0_cfg[3]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[3]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[3]),
        .O(\rdata_r[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[3]_i_8 
       (.I0(seq_sel_reg[3]),
        .I1(pulse_seq_reg[3]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[3]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[3]),
        .O(\rdata_r[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[3]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[3] ),
        .I1(\seq_param2_r_reg_n_0_[3] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[3] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[3] ),
        .O(\rdata_r[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[4]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[4]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[4]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[4]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[4] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[4]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[4] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[4] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(ctrl_reg[4]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[4]_i_7 
       (.I0(pulse1_cfg[4]),
        .I1(pulse0_cfg[4]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[4]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[4]),
        .O(\rdata_r[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[4]_i_8 
       (.I0(seq_sel_reg[4]),
        .I1(pulse_seq_reg[4]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[4]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[4]),
        .O(\rdata_r[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[4]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[4] ),
        .I1(\seq_param2_r_reg_n_0_[4] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[4] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[4] ),
        .O(\rdata_r[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[5]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[5]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[5]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[5]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[5] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[5]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[5] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[5] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[5] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[5]_i_7 
       (.I0(pulse1_cfg[5]),
        .I1(pulse0_cfg[5]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[5]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[5]),
        .O(\rdata_r[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[5]_i_8 
       (.I0(seq_sel_reg[5]),
        .I1(pulse_seq_reg[5]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[5]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[5]),
        .O(\rdata_r[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[5]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[5] ),
        .I1(\seq_param2_r_reg_n_0_[5] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[5] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[5] ),
        .O(\rdata_r[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[6]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[6]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[6]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[6]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[6] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[6]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[6] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[6] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[6] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[6]_i_7 
       (.I0(pulse1_cfg[6]),
        .I1(pulse0_cfg[6]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[6]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[6]),
        .O(\rdata_r[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[6]_i_8 
       (.I0(seq_sel_reg[6]),
        .I1(pulse_seq_reg[6]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[6]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[6]),
        .O(\rdata_r[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[6]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[6] ),
        .I1(\seq_param2_r_reg_n_0_[6] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[6] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[6] ),
        .O(\rdata_r[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[7]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[7]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[7]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[7]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[7] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[7]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[7] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[7] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[7] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[7]_i_7 
       (.I0(pulse1_cfg[7]),
        .I1(pulse0_cfg[7]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[7]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[7]),
        .O(\rdata_r[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[7]_i_8 
       (.I0(seq_sel_reg[7]),
        .I1(pulse_seq_reg[7]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[7]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[7]),
        .O(\rdata_r[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[7]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[7] ),
        .I1(\seq_param2_r_reg_n_0_[7] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[7] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[7] ),
        .O(\rdata_r[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[8]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[8]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[8]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[8]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[8] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[8]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[8] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[8] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[8] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[8]_i_7 
       (.I0(pulse1_cfg[8]),
        .I1(pulse0_cfg[8]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[8]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[8]),
        .O(\rdata_r[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[8]_i_8 
       (.I0(seq_sel_reg[8]),
        .I1(pulse_seq_reg[8]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[8]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[8]),
        .O(\rdata_r[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[8]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[8] ),
        .I1(\seq_param2_r_reg_n_0_[8] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[8] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[8] ),
        .O(\rdata_r[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \rdata_r[9]_i_1 
       (.I0(\rdata_r[31]_i_2_n_0 ),
        .I1(\rdata_r[9]_i_2_n_0 ),
        .I2(\rdata_r[31]_i_4_n_0 ),
        .I3(\rdata_r_reg[9]_i_3_n_0 ),
        .I4(\rdata_r[31]_i_6_n_0 ),
        .O(p_0_in_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_r[9]_i_2 
       (.I0(\dma_cfg_reg_r_reg_n_0_[9] ),
        .I1(\rdata_r[31]_i_7_n_0 ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .O(\rdata_r[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata_r[9]_i_6 
       (.I0(\mmcm_cfg_reg_r_reg_n_0_[9] ),
        .I1(\clk_cfg_reg_r_reg_n_0_[9] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\ctrl_reg_r_reg_n_0_[9] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .O(\rdata_r[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[9]_i_7 
       (.I0(pulse1_cfg[9]),
        .I1(pulse0_cfg[9]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(mw_phase_reg[9]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(mw_freq_reg[9]),
        .O(\rdata_r[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[9]_i_8 
       (.I0(seq_sel_reg[9]),
        .I1(pulse_seq_reg[9]),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(pulse3_cfg[9]),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(pulse2_cfg[9]),
        .O(\rdata_r[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_r[9]_i_9 
       (.I0(\adc_cfg_reg_r_reg_n_0_[9] ),
        .I1(\seq_param2_r_reg_n_0_[9] ),
        .I2(\rdata_r[31]_i_8_n_0 ),
        .I3(\seq_param1_r_reg_n_0_[9] ),
        .I4(\rdata_r[31]_i_7_n_0 ),
        .I5(\seq_param0_r_reg_n_0_[9] ),
        .O(\rdata_r[9]_i_9_n_0 ));
  FDCE \rdata_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[0]),
        .Q(s_axi_rdata[0]));
  MUXF8 \rdata_r_reg[0]_i_3 
       (.I0(\rdata_r_reg[0]_i_4_n_0 ),
        .I1(\rdata_r_reg[0]_i_5_n_0 ),
        .O(\rdata_r_reg[0]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[0]_i_4 
       (.I0(\rdata_r[0]_i_6_n_0 ),
        .I1(\rdata_r[0]_i_7_n_0 ),
        .O(\rdata_r_reg[0]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[0]_i_5 
       (.I0(\rdata_r[0]_i_8_n_0 ),
        .I1(\rdata_r[0]_i_9_n_0 ),
        .O(\rdata_r_reg[0]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[10]),
        .Q(s_axi_rdata[10]));
  MUXF8 \rdata_r_reg[10]_i_3 
       (.I0(\rdata_r_reg[10]_i_4_n_0 ),
        .I1(\rdata_r_reg[10]_i_5_n_0 ),
        .O(\rdata_r_reg[10]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[10]_i_4 
       (.I0(\rdata_r[10]_i_6_n_0 ),
        .I1(\rdata_r[10]_i_7_n_0 ),
        .O(\rdata_r_reg[10]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[10]_i_5 
       (.I0(\rdata_r[10]_i_8_n_0 ),
        .I1(\rdata_r[10]_i_9_n_0 ),
        .O(\rdata_r_reg[10]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[11]),
        .Q(s_axi_rdata[11]));
  MUXF8 \rdata_r_reg[11]_i_3 
       (.I0(\rdata_r_reg[11]_i_4_n_0 ),
        .I1(\rdata_r_reg[11]_i_5_n_0 ),
        .O(\rdata_r_reg[11]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[11]_i_4 
       (.I0(\rdata_r[11]_i_6_n_0 ),
        .I1(\rdata_r[11]_i_7_n_0 ),
        .O(\rdata_r_reg[11]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[11]_i_5 
       (.I0(\rdata_r[11]_i_8_n_0 ),
        .I1(\rdata_r[11]_i_9_n_0 ),
        .O(\rdata_r_reg[11]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[12]),
        .Q(s_axi_rdata[12]));
  MUXF8 \rdata_r_reg[12]_i_3 
       (.I0(\rdata_r_reg[12]_i_4_n_0 ),
        .I1(\rdata_r_reg[12]_i_5_n_0 ),
        .O(\rdata_r_reg[12]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[12]_i_4 
       (.I0(\rdata_r[12]_i_6_n_0 ),
        .I1(\rdata_r[12]_i_7_n_0 ),
        .O(\rdata_r_reg[12]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[12]_i_5 
       (.I0(\rdata_r[12]_i_8_n_0 ),
        .I1(\rdata_r[12]_i_9_n_0 ),
        .O(\rdata_r_reg[12]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[13]),
        .Q(s_axi_rdata[13]));
  MUXF8 \rdata_r_reg[13]_i_3 
       (.I0(\rdata_r_reg[13]_i_4_n_0 ),
        .I1(\rdata_r_reg[13]_i_5_n_0 ),
        .O(\rdata_r_reg[13]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[13]_i_4 
       (.I0(\rdata_r[13]_i_6_n_0 ),
        .I1(\rdata_r[13]_i_7_n_0 ),
        .O(\rdata_r_reg[13]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[13]_i_5 
       (.I0(\rdata_r[13]_i_8_n_0 ),
        .I1(\rdata_r[13]_i_9_n_0 ),
        .O(\rdata_r_reg[13]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[14]),
        .Q(s_axi_rdata[14]));
  MUXF8 \rdata_r_reg[14]_i_3 
       (.I0(\rdata_r_reg[14]_i_4_n_0 ),
        .I1(\rdata_r_reg[14]_i_5_n_0 ),
        .O(\rdata_r_reg[14]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[14]_i_4 
       (.I0(\rdata_r[14]_i_6_n_0 ),
        .I1(\rdata_r[14]_i_7_n_0 ),
        .O(\rdata_r_reg[14]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[14]_i_5 
       (.I0(\rdata_r[14]_i_8_n_0 ),
        .I1(\rdata_r[14]_i_9_n_0 ),
        .O(\rdata_r_reg[14]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[15]),
        .Q(s_axi_rdata[15]));
  MUXF8 \rdata_r_reg[15]_i_3 
       (.I0(\rdata_r_reg[15]_i_4_n_0 ),
        .I1(\rdata_r_reg[15]_i_5_n_0 ),
        .O(\rdata_r_reg[15]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[15]_i_4 
       (.I0(\rdata_r[15]_i_6_n_0 ),
        .I1(\rdata_r[15]_i_7_n_0 ),
        .O(\rdata_r_reg[15]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[15]_i_5 
       (.I0(\rdata_r[15]_i_8_n_0 ),
        .I1(\rdata_r[15]_i_9_n_0 ),
        .O(\rdata_r_reg[15]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[16]),
        .Q(s_axi_rdata[16]));
  MUXF8 \rdata_r_reg[16]_i_3 
       (.I0(\rdata_r_reg[16]_i_4_n_0 ),
        .I1(\rdata_r_reg[16]_i_5_n_0 ),
        .O(\rdata_r_reg[16]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[16]_i_4 
       (.I0(\rdata_r[16]_i_6_n_0 ),
        .I1(\rdata_r[16]_i_7_n_0 ),
        .O(\rdata_r_reg[16]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[16]_i_5 
       (.I0(\rdata_r[16]_i_8_n_0 ),
        .I1(\rdata_r[16]_i_9_n_0 ),
        .O(\rdata_r_reg[16]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[17]),
        .Q(s_axi_rdata[17]));
  MUXF8 \rdata_r_reg[17]_i_3 
       (.I0(\rdata_r_reg[17]_i_4_n_0 ),
        .I1(\rdata_r_reg[17]_i_5_n_0 ),
        .O(\rdata_r_reg[17]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[17]_i_4 
       (.I0(\rdata_r[17]_i_6_n_0 ),
        .I1(\rdata_r[17]_i_7_n_0 ),
        .O(\rdata_r_reg[17]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[17]_i_5 
       (.I0(\rdata_r[17]_i_8_n_0 ),
        .I1(\rdata_r[17]_i_9_n_0 ),
        .O(\rdata_r_reg[17]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[18]),
        .Q(s_axi_rdata[18]));
  MUXF8 \rdata_r_reg[18]_i_3 
       (.I0(\rdata_r_reg[18]_i_4_n_0 ),
        .I1(\rdata_r_reg[18]_i_5_n_0 ),
        .O(\rdata_r_reg[18]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[18]_i_4 
       (.I0(\rdata_r[18]_i_6_n_0 ),
        .I1(\rdata_r[18]_i_7_n_0 ),
        .O(\rdata_r_reg[18]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[18]_i_5 
       (.I0(\rdata_r[18]_i_8_n_0 ),
        .I1(\rdata_r[18]_i_9_n_0 ),
        .O(\rdata_r_reg[18]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[19]),
        .Q(s_axi_rdata[19]));
  MUXF8 \rdata_r_reg[19]_i_3 
       (.I0(\rdata_r_reg[19]_i_4_n_0 ),
        .I1(\rdata_r_reg[19]_i_5_n_0 ),
        .O(\rdata_r_reg[19]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[19]_i_4 
       (.I0(\rdata_r[19]_i_6_n_0 ),
        .I1(\rdata_r[19]_i_7_n_0 ),
        .O(\rdata_r_reg[19]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[19]_i_5 
       (.I0(\rdata_r[19]_i_8_n_0 ),
        .I1(\rdata_r[19]_i_9_n_0 ),
        .O(\rdata_r_reg[19]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[1]),
        .Q(s_axi_rdata[1]));
  MUXF8 \rdata_r_reg[1]_i_3 
       (.I0(\rdata_r_reg[1]_i_4_n_0 ),
        .I1(\rdata_r_reg[1]_i_5_n_0 ),
        .O(\rdata_r_reg[1]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[1]_i_4 
       (.I0(\rdata_r[1]_i_6_n_0 ),
        .I1(\rdata_r[1]_i_7_n_0 ),
        .O(\rdata_r_reg[1]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[1]_i_5 
       (.I0(\rdata_r[1]_i_8_n_0 ),
        .I1(\rdata_r[1]_i_9_n_0 ),
        .O(\rdata_r_reg[1]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[20]),
        .Q(s_axi_rdata[20]));
  MUXF8 \rdata_r_reg[20]_i_3 
       (.I0(\rdata_r_reg[20]_i_4_n_0 ),
        .I1(\rdata_r_reg[20]_i_5_n_0 ),
        .O(\rdata_r_reg[20]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[20]_i_4 
       (.I0(\rdata_r[20]_i_6_n_0 ),
        .I1(\rdata_r[20]_i_7_n_0 ),
        .O(\rdata_r_reg[20]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[20]_i_5 
       (.I0(\rdata_r[20]_i_8_n_0 ),
        .I1(\rdata_r[20]_i_9_n_0 ),
        .O(\rdata_r_reg[20]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[21]),
        .Q(s_axi_rdata[21]));
  MUXF8 \rdata_r_reg[21]_i_3 
       (.I0(\rdata_r_reg[21]_i_4_n_0 ),
        .I1(\rdata_r_reg[21]_i_5_n_0 ),
        .O(\rdata_r_reg[21]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[21]_i_4 
       (.I0(\rdata_r[21]_i_6_n_0 ),
        .I1(\rdata_r[21]_i_7_n_0 ),
        .O(\rdata_r_reg[21]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[21]_i_5 
       (.I0(\rdata_r[21]_i_8_n_0 ),
        .I1(\rdata_r[21]_i_9_n_0 ),
        .O(\rdata_r_reg[21]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[22]),
        .Q(s_axi_rdata[22]));
  MUXF8 \rdata_r_reg[22]_i_3 
       (.I0(\rdata_r_reg[22]_i_4_n_0 ),
        .I1(\rdata_r_reg[22]_i_5_n_0 ),
        .O(\rdata_r_reg[22]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[22]_i_4 
       (.I0(\rdata_r[22]_i_6_n_0 ),
        .I1(\rdata_r[22]_i_7_n_0 ),
        .O(\rdata_r_reg[22]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[22]_i_5 
       (.I0(\rdata_r[22]_i_8_n_0 ),
        .I1(\rdata_r[22]_i_9_n_0 ),
        .O(\rdata_r_reg[22]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[23]),
        .Q(s_axi_rdata[23]));
  MUXF8 \rdata_r_reg[23]_i_3 
       (.I0(\rdata_r_reg[23]_i_4_n_0 ),
        .I1(\rdata_r_reg[23]_i_5_n_0 ),
        .O(\rdata_r_reg[23]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[23]_i_4 
       (.I0(\rdata_r[23]_i_6_n_0 ),
        .I1(\rdata_r[23]_i_7_n_0 ),
        .O(\rdata_r_reg[23]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[23]_i_5 
       (.I0(\rdata_r[23]_i_8_n_0 ),
        .I1(\rdata_r[23]_i_9_n_0 ),
        .O(\rdata_r_reg[23]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[24]),
        .Q(s_axi_rdata[24]));
  MUXF8 \rdata_r_reg[24]_i_3 
       (.I0(\rdata_r_reg[24]_i_4_n_0 ),
        .I1(\rdata_r_reg[24]_i_5_n_0 ),
        .O(\rdata_r_reg[24]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[24]_i_4 
       (.I0(\rdata_r[24]_i_6_n_0 ),
        .I1(\rdata_r[24]_i_7_n_0 ),
        .O(\rdata_r_reg[24]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[24]_i_5 
       (.I0(\rdata_r[24]_i_8_n_0 ),
        .I1(\rdata_r[24]_i_9_n_0 ),
        .O(\rdata_r_reg[24]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[25]),
        .Q(s_axi_rdata[25]));
  MUXF8 \rdata_r_reg[25]_i_3 
       (.I0(\rdata_r_reg[25]_i_4_n_0 ),
        .I1(\rdata_r_reg[25]_i_5_n_0 ),
        .O(\rdata_r_reg[25]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[25]_i_4 
       (.I0(\rdata_r[25]_i_6_n_0 ),
        .I1(\rdata_r[25]_i_7_n_0 ),
        .O(\rdata_r_reg[25]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[25]_i_5 
       (.I0(\rdata_r[25]_i_8_n_0 ),
        .I1(\rdata_r[25]_i_9_n_0 ),
        .O(\rdata_r_reg[25]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[26]),
        .Q(s_axi_rdata[26]));
  MUXF8 \rdata_r_reg[26]_i_3 
       (.I0(\rdata_r_reg[26]_i_4_n_0 ),
        .I1(\rdata_r_reg[26]_i_5_n_0 ),
        .O(\rdata_r_reg[26]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[26]_i_4 
       (.I0(\rdata_r[26]_i_6_n_0 ),
        .I1(\rdata_r[26]_i_7_n_0 ),
        .O(\rdata_r_reg[26]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[26]_i_5 
       (.I0(\rdata_r[26]_i_8_n_0 ),
        .I1(\rdata_r[26]_i_9_n_0 ),
        .O(\rdata_r_reg[26]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[27]),
        .Q(s_axi_rdata[27]));
  MUXF8 \rdata_r_reg[27]_i_3 
       (.I0(\rdata_r_reg[27]_i_4_n_0 ),
        .I1(\rdata_r_reg[27]_i_5_n_0 ),
        .O(\rdata_r_reg[27]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[27]_i_4 
       (.I0(\rdata_r[27]_i_6_n_0 ),
        .I1(\rdata_r[27]_i_7_n_0 ),
        .O(\rdata_r_reg[27]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[27]_i_5 
       (.I0(\rdata_r[27]_i_8_n_0 ),
        .I1(\rdata_r[27]_i_9_n_0 ),
        .O(\rdata_r_reg[27]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[28]),
        .Q(s_axi_rdata[28]));
  MUXF8 \rdata_r_reg[28]_i_3 
       (.I0(\rdata_r_reg[28]_i_4_n_0 ),
        .I1(\rdata_r_reg[28]_i_5_n_0 ),
        .O(\rdata_r_reg[28]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[28]_i_4 
       (.I0(\rdata_r[28]_i_6_n_0 ),
        .I1(\rdata_r[28]_i_7_n_0 ),
        .O(\rdata_r_reg[28]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[28]_i_5 
       (.I0(\rdata_r[28]_i_8_n_0 ),
        .I1(\rdata_r[28]_i_9_n_0 ),
        .O(\rdata_r_reg[28]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[29]),
        .Q(s_axi_rdata[29]));
  MUXF8 \rdata_r_reg[29]_i_3 
       (.I0(\rdata_r_reg[29]_i_4_n_0 ),
        .I1(\rdata_r_reg[29]_i_5_n_0 ),
        .O(\rdata_r_reg[29]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[29]_i_4 
       (.I0(\rdata_r[29]_i_6_n_0 ),
        .I1(\rdata_r[29]_i_7_n_0 ),
        .O(\rdata_r_reg[29]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[29]_i_5 
       (.I0(\rdata_r[29]_i_8_n_0 ),
        .I1(\rdata_r[29]_i_9_n_0 ),
        .O(\rdata_r_reg[29]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[2]),
        .Q(s_axi_rdata[2]));
  MUXF8 \rdata_r_reg[2]_i_3 
       (.I0(\rdata_r_reg[2]_i_4_n_0 ),
        .I1(\rdata_r_reg[2]_i_5_n_0 ),
        .O(\rdata_r_reg[2]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[2]_i_4 
       (.I0(\rdata_r[2]_i_6_n_0 ),
        .I1(\rdata_r[2]_i_7_n_0 ),
        .O(\rdata_r_reg[2]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[2]_i_5 
       (.I0(\rdata_r[2]_i_8_n_0 ),
        .I1(\rdata_r[2]_i_9_n_0 ),
        .O(\rdata_r_reg[2]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[30]),
        .Q(s_axi_rdata[30]));
  MUXF8 \rdata_r_reg[30]_i_3 
       (.I0(\rdata_r_reg[30]_i_4_n_0 ),
        .I1(\rdata_r_reg[30]_i_5_n_0 ),
        .O(\rdata_r_reg[30]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[30]_i_4 
       (.I0(\rdata_r[30]_i_6_n_0 ),
        .I1(\rdata_r[30]_i_7_n_0 ),
        .O(\rdata_r_reg[30]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[30]_i_5 
       (.I0(\rdata_r[30]_i_8_n_0 ),
        .I1(\rdata_r[30]_i_9_n_0 ),
        .O(\rdata_r_reg[30]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[31]),
        .Q(s_axi_rdata[31]));
  MUXF7 \rdata_r_reg[31]_i_10 
       (.I0(\rdata_r[31]_i_17_n_0 ),
        .I1(\rdata_r[31]_i_18_n_0 ),
        .O(\rdata_r_reg[31]_i_10_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[31]_i_11 
       (.I0(\rdata_r[31]_i_19_n_0 ),
        .I1(\rdata_r[31]_i_20_n_0 ),
        .O(\rdata_r_reg[31]_i_11_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF8 \rdata_r_reg[31]_i_5 
       (.I0(\rdata_r_reg[31]_i_10_n_0 ),
        .I1(\rdata_r_reg[31]_i_11_n_0 ),
        .O(\rdata_r_reg[31]_i_5_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  FDCE \rdata_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[3]),
        .Q(s_axi_rdata[3]));
  MUXF8 \rdata_r_reg[3]_i_3 
       (.I0(\rdata_r_reg[3]_i_4_n_0 ),
        .I1(\rdata_r_reg[3]_i_5_n_0 ),
        .O(\rdata_r_reg[3]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[3]_i_4 
       (.I0(\rdata_r[3]_i_6_n_0 ),
        .I1(\rdata_r[3]_i_7_n_0 ),
        .O(\rdata_r_reg[3]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[3]_i_5 
       (.I0(\rdata_r[3]_i_8_n_0 ),
        .I1(\rdata_r[3]_i_9_n_0 ),
        .O(\rdata_r_reg[3]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[4]),
        .Q(s_axi_rdata[4]));
  MUXF8 \rdata_r_reg[4]_i_3 
       (.I0(\rdata_r_reg[4]_i_4_n_0 ),
        .I1(\rdata_r_reg[4]_i_5_n_0 ),
        .O(\rdata_r_reg[4]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[4]_i_4 
       (.I0(\rdata_r[4]_i_6_n_0 ),
        .I1(\rdata_r[4]_i_7_n_0 ),
        .O(\rdata_r_reg[4]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[4]_i_5 
       (.I0(\rdata_r[4]_i_8_n_0 ),
        .I1(\rdata_r[4]_i_9_n_0 ),
        .O(\rdata_r_reg[4]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[5]),
        .Q(s_axi_rdata[5]));
  MUXF8 \rdata_r_reg[5]_i_3 
       (.I0(\rdata_r_reg[5]_i_4_n_0 ),
        .I1(\rdata_r_reg[5]_i_5_n_0 ),
        .O(\rdata_r_reg[5]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[5]_i_4 
       (.I0(\rdata_r[5]_i_6_n_0 ),
        .I1(\rdata_r[5]_i_7_n_0 ),
        .O(\rdata_r_reg[5]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[5]_i_5 
       (.I0(\rdata_r[5]_i_8_n_0 ),
        .I1(\rdata_r[5]_i_9_n_0 ),
        .O(\rdata_r_reg[5]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[6]),
        .Q(s_axi_rdata[6]));
  MUXF8 \rdata_r_reg[6]_i_3 
       (.I0(\rdata_r_reg[6]_i_4_n_0 ),
        .I1(\rdata_r_reg[6]_i_5_n_0 ),
        .O(\rdata_r_reg[6]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[6]_i_4 
       (.I0(\rdata_r[6]_i_6_n_0 ),
        .I1(\rdata_r[6]_i_7_n_0 ),
        .O(\rdata_r_reg[6]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[6]_i_5 
       (.I0(\rdata_r[6]_i_8_n_0 ),
        .I1(\rdata_r[6]_i_9_n_0 ),
        .O(\rdata_r_reg[6]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[7]),
        .Q(s_axi_rdata[7]));
  MUXF8 \rdata_r_reg[7]_i_3 
       (.I0(\rdata_r_reg[7]_i_4_n_0 ),
        .I1(\rdata_r_reg[7]_i_5_n_0 ),
        .O(\rdata_r_reg[7]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[7]_i_4 
       (.I0(\rdata_r[7]_i_6_n_0 ),
        .I1(\rdata_r[7]_i_7_n_0 ),
        .O(\rdata_r_reg[7]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[7]_i_5 
       (.I0(\rdata_r[7]_i_8_n_0 ),
        .I1(\rdata_r[7]_i_9_n_0 ),
        .O(\rdata_r_reg[7]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[8]),
        .Q(s_axi_rdata[8]));
  MUXF8 \rdata_r_reg[8]_i_3 
       (.I0(\rdata_r_reg[8]_i_4_n_0 ),
        .I1(\rdata_r_reg[8]_i_5_n_0 ),
        .O(\rdata_r_reg[8]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[8]_i_4 
       (.I0(\rdata_r[8]_i_6_n_0 ),
        .I1(\rdata_r[8]_i_7_n_0 ),
        .O(\rdata_r_reg[8]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[8]_i_5 
       (.I0(\rdata_r[8]_i_8_n_0 ),
        .I1(\rdata_r[8]_i_9_n_0 ),
        .O(\rdata_r_reg[8]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  FDCE \rdata_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(wr_en_i_1_n_0),
        .D(p_0_in_0[9]),
        .Q(s_axi_rdata[9]));
  MUXF8 \rdata_r_reg[9]_i_3 
       (.I0(\rdata_r_reg[9]_i_4_n_0 ),
        .I1(\rdata_r_reg[9]_i_5_n_0 ),
        .O(\rdata_r_reg[9]_i_3_n_0 ),
        .S(\rdata_r[31]_i_9_n_0 ));
  MUXF7 \rdata_r_reg[9]_i_4 
       (.I0(\rdata_r[9]_i_6_n_0 ),
        .I1(\rdata_r[9]_i_7_n_0 ),
        .O(\rdata_r_reg[9]_i_4_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  MUXF7 \rdata_r_reg[9]_i_5 
       (.I0(\rdata_r[9]_i_8_n_0 ),
        .I1(\rdata_r[9]_i_9_n_0 ),
        .O(\rdata_r_reg[9]_i_5_n_0 ),
        .S(\rdata_r[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    s_axi_wready_INST_0
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(wr_en_reg_0),
        .O(s_axi_wready));
  LUT4 #(
    .INIT(16'h0020)) 
    \seq_param0_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_awaddr[5]),
        .I3(\mw_freq_reg_r[31]_i_2_n_0 ),
        .O(\seq_param0_r[31]_i_1_n_0 ));
  FDPE \seq_param0_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param0_r_reg_n_0_[0] ));
  FDCE \seq_param0_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(\seq_param0_r_reg_n_0_[10] ));
  FDCE \seq_param0_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\seq_param0_r_reg_n_0_[11] ));
  FDCE \seq_param0_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\seq_param0_r_reg_n_0_[12] ));
  FDCE \seq_param0_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\seq_param0_r_reg_n_0_[13] ));
  FDCE \seq_param0_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\seq_param0_r_reg_n_0_[14] ));
  FDCE \seq_param0_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(\seq_param0_r_reg_n_0_[15] ));
  FDCE \seq_param0_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(\seq_param0_r_reg_n_0_[16] ));
  FDCE \seq_param0_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\seq_param0_r_reg_n_0_[17] ));
  FDCE \seq_param0_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\seq_param0_r_reg_n_0_[18] ));
  FDCE \seq_param0_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(\seq_param0_r_reg_n_0_[19] ));
  FDCE \seq_param0_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(\seq_param0_r_reg_n_0_[1] ));
  FDCE \seq_param0_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(\seq_param0_r_reg_n_0_[20] ));
  FDCE \seq_param0_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\seq_param0_r_reg_n_0_[21] ));
  FDCE \seq_param0_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(\seq_param0_r_reg_n_0_[22] ));
  FDCE \seq_param0_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\seq_param0_r_reg_n_0_[23] ));
  FDCE \seq_param0_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(\seq_param0_r_reg_n_0_[24] ));
  FDCE \seq_param0_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(\seq_param0_r_reg_n_0_[25] ));
  FDCE \seq_param0_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\seq_param0_r_reg_n_0_[26] ));
  FDCE \seq_param0_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\seq_param0_r_reg_n_0_[27] ));
  FDCE \seq_param0_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(\seq_param0_r_reg_n_0_[28] ));
  FDCE \seq_param0_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\seq_param0_r_reg_n_0_[29] ));
  FDCE \seq_param0_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\seq_param0_r_reg_n_0_[2] ));
  FDCE \seq_param0_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(\seq_param0_r_reg_n_0_[30] ));
  FDCE \seq_param0_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(\seq_param0_r_reg_n_0_[31] ));
  FDCE \seq_param0_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(\seq_param0_r_reg_n_0_[3] ));
  FDCE \seq_param0_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(\seq_param0_r_reg_n_0_[4] ));
  FDCE \seq_param0_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(\seq_param0_r_reg_n_0_[5] ));
  FDCE \seq_param0_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(\seq_param0_r_reg_n_0_[6] ));
  FDCE \seq_param0_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(\seq_param0_r_reg_n_0_[7] ));
  FDCE \seq_param0_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(\seq_param0_r_reg_n_0_[8] ));
  FDCE \seq_param0_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\seq_param0_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(\seq_param0_r_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \seq_param1_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\pulse1_cfg_r[31]_i_3_n_0 ),
        .I2(s_axi_awaddr[4]),
        .I3(\pulse1_cfg_r[31]_i_2_n_0 ),
        .I4(s_axi_awaddr[3]),
        .O(\seq_param1_r[31]_i_1_n_0 ));
  FDCE \seq_param1_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\seq_param1_r_reg_n_0_[0] ));
  FDCE \seq_param1_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(\seq_param1_r_reg_n_0_[10] ));
  FDCE \seq_param1_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\seq_param1_r_reg_n_0_[11] ));
  FDCE \seq_param1_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\seq_param1_r_reg_n_0_[12] ));
  FDCE \seq_param1_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\seq_param1_r_reg_n_0_[13] ));
  FDCE \seq_param1_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\seq_param1_r_reg_n_0_[14] ));
  FDCE \seq_param1_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(\seq_param1_r_reg_n_0_[15] ));
  FDCE \seq_param1_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(\seq_param1_r_reg_n_0_[16] ));
  FDCE \seq_param1_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\seq_param1_r_reg_n_0_[17] ));
  FDCE \seq_param1_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\seq_param1_r_reg_n_0_[18] ));
  FDCE \seq_param1_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(\seq_param1_r_reg_n_0_[19] ));
  FDPE \seq_param1_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param1_r_reg_n_0_[1] ));
  FDCE \seq_param1_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(\seq_param1_r_reg_n_0_[20] ));
  FDCE \seq_param1_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\seq_param1_r_reg_n_0_[21] ));
  FDCE \seq_param1_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(\seq_param1_r_reg_n_0_[22] ));
  FDCE \seq_param1_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\seq_param1_r_reg_n_0_[23] ));
  FDCE \seq_param1_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(\seq_param1_r_reg_n_0_[24] ));
  FDCE \seq_param1_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(\seq_param1_r_reg_n_0_[25] ));
  FDCE \seq_param1_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\seq_param1_r_reg_n_0_[26] ));
  FDCE \seq_param1_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\seq_param1_r_reg_n_0_[27] ));
  FDCE \seq_param1_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(\seq_param1_r_reg_n_0_[28] ));
  FDCE \seq_param1_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\seq_param1_r_reg_n_0_[29] ));
  FDCE \seq_param1_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\seq_param1_r_reg_n_0_[2] ));
  FDCE \seq_param1_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(\seq_param1_r_reg_n_0_[30] ));
  FDCE \seq_param1_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(\seq_param1_r_reg_n_0_[31] ));
  FDPE \seq_param1_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param1_r_reg_n_0_[3] ));
  FDPE \seq_param1_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param1_r_reg_n_0_[4] ));
  FDPE \seq_param1_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param1_r_reg_n_0_[5] ));
  FDPE \seq_param1_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param1_r_reg_n_0_[6] ));
  FDCE \seq_param1_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(\seq_param1_r_reg_n_0_[7] ));
  FDPE \seq_param1_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param1_r_reg_n_0_[8] ));
  FDCE \seq_param1_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\seq_param1_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(\seq_param1_r_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \seq_param2_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\seq_param2_r[31]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(\pulse1_cfg_r[31]_i_2_n_0 ),
        .O(\seq_param2_r[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \seq_param2_r[31]_i_2 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[4]),
        .I3(s_axi_awaddr[6]),
        .I4(s_axi_awaddr[5]),
        .O(\seq_param2_r[31]_i_2_n_0 ));
  FDCE \seq_param2_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\seq_param2_r_reg_n_0_[0] ));
  FDPE \seq_param2_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param2_r_reg_n_0_[10] ));
  FDCE \seq_param2_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\seq_param2_r_reg_n_0_[11] ));
  FDCE \seq_param2_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\seq_param2_r_reg_n_0_[12] ));
  FDCE \seq_param2_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\seq_param2_r_reg_n_0_[13] ));
  FDCE \seq_param2_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\seq_param2_r_reg_n_0_[14] ));
  FDPE \seq_param2_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param2_r_reg_n_0_[15] ));
  FDPE \seq_param2_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param2_r_reg_n_0_[16] ));
  FDCE \seq_param2_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\seq_param2_r_reg_n_0_[17] ));
  FDCE \seq_param2_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\seq_param2_r_reg_n_0_[18] ));
  FDCE \seq_param2_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(\seq_param2_r_reg_n_0_[19] ));
  FDCE \seq_param2_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(\seq_param2_r_reg_n_0_[1] ));
  FDCE \seq_param2_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(\seq_param2_r_reg_n_0_[20] ));
  FDCE \seq_param2_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\seq_param2_r_reg_n_0_[21] ));
  FDCE \seq_param2_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(\seq_param2_r_reg_n_0_[22] ));
  FDCE \seq_param2_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\seq_param2_r_reg_n_0_[23] ));
  FDCE \seq_param2_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(\seq_param2_r_reg_n_0_[24] ));
  FDCE \seq_param2_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(\seq_param2_r_reg_n_0_[25] ));
  FDCE \seq_param2_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\seq_param2_r_reg_n_0_[26] ));
  FDCE \seq_param2_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\seq_param2_r_reg_n_0_[27] ));
  FDCE \seq_param2_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(\seq_param2_r_reg_n_0_[28] ));
  FDCE \seq_param2_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\seq_param2_r_reg_n_0_[29] ));
  FDCE \seq_param2_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\seq_param2_r_reg_n_0_[2] ));
  FDCE \seq_param2_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(\seq_param2_r_reg_n_0_[30] ));
  FDCE \seq_param2_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(\seq_param2_r_reg_n_0_[31] ));
  FDCE \seq_param2_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(\seq_param2_r_reg_n_0_[3] ));
  FDCE \seq_param2_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(\seq_param2_r_reg_n_0_[4] ));
  FDPE \seq_param2_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param2_r_reg_n_0_[5] ));
  FDCE \seq_param2_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(\seq_param2_r_reg_n_0_[6] ));
  FDPE \seq_param2_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param2_r_reg_n_0_[7] ));
  FDCE \seq_param2_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(\seq_param2_r_reg_n_0_[8] ));
  FDPE \seq_param2_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\seq_param2_r[31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .PRE(wr_en_i_1_n_0),
        .Q(\seq_param2_r_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \seq_sel_reg_r[31]_i_1 
       (.I0(\ctrl_reg_r[31]_i_2_n_0 ),
        .I1(\seq_sel_reg_r[31]_i_2_n_0 ),
        .I2(\pulse1_cfg_r[31]_i_2_n_0 ),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[5]),
        .O(\seq_sel_reg_r[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \seq_sel_reg_r[31]_i_2 
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[4]),
        .I3(s_axi_awaddr[3]),
        .I4(s_axi_awaddr[0]),
        .O(\seq_sel_reg_r[31]_i_2_n_0 ));
  FDCE \seq_sel_reg_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(seq_sel_reg[0]));
  FDCE \seq_sel_reg_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(seq_sel_reg[10]));
  FDCE \seq_sel_reg_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(seq_sel_reg[11]));
  FDCE \seq_sel_reg_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(seq_sel_reg[12]));
  FDCE \seq_sel_reg_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(seq_sel_reg[13]));
  FDCE \seq_sel_reg_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(seq_sel_reg[14]));
  FDCE \seq_sel_reg_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(seq_sel_reg[15]));
  FDCE \seq_sel_reg_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(seq_sel_reg[16]));
  FDCE \seq_sel_reg_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(seq_sel_reg[17]));
  FDCE \seq_sel_reg_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(seq_sel_reg[18]));
  FDCE \seq_sel_reg_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(seq_sel_reg[19]));
  FDCE \seq_sel_reg_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(seq_sel_reg[1]));
  FDCE \seq_sel_reg_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(seq_sel_reg[20]));
  FDCE \seq_sel_reg_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(seq_sel_reg[21]));
  FDCE \seq_sel_reg_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(seq_sel_reg[22]));
  FDCE \seq_sel_reg_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(seq_sel_reg[23]));
  FDCE \seq_sel_reg_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(seq_sel_reg[24]));
  FDCE \seq_sel_reg_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(seq_sel_reg[25]));
  FDCE \seq_sel_reg_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(seq_sel_reg[26]));
  FDCE \seq_sel_reg_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(seq_sel_reg[27]));
  FDCE \seq_sel_reg_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(seq_sel_reg[28]));
  FDCE \seq_sel_reg_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(seq_sel_reg[29]));
  FDCE \seq_sel_reg_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(seq_sel_reg[2]));
  FDCE \seq_sel_reg_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(seq_sel_reg[30]));
  FDCE \seq_sel_reg_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(seq_sel_reg[31]));
  FDCE \seq_sel_reg_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(seq_sel_reg[3]));
  FDCE \seq_sel_reg_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(seq_sel_reg[4]));
  FDCE \seq_sel_reg_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(seq_sel_reg[5]));
  FDCE \seq_sel_reg_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(seq_sel_reg[6]));
  FDCE \seq_sel_reg_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(seq_sel_reg[7]));
  FDCE \seq_sel_reg_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(seq_sel_reg[8]));
  FDCE \seq_sel_reg_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(\seq_sel_reg_r[31]_i_1_n_0 ),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(seq_sel_reg[9]));
  LUT1 #(
    .INIT(2'h1)) 
    wr_en_i_1
       (.I0(s_axi_aresetn),
        .O(wr_en_i_1_n_0));
  FDCE wr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(wr_en_i_1_n_0),
        .D(s_axi_wready),
        .Q(wr_en_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_gen
   (adc_clk,
    ref_clk_10m,
    mmcm_locked,
    pps_clk,
    sys_clk,
    AR);
  output adc_clk;
  output ref_clk_10m;
  output mmcm_locked;
  output pps_clk;
  input sys_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire adc_clk;
  wire clkfbout;
  wire [25:1]data0;
  wire mmcm_locked;
  wire pps_clk;
  wire pps_clk_r_i_1_n_0;
  wire pps_clk_r_i_2_n_0;
  wire pps_clk_r_i_3_n_0;
  wire pps_clk_r_i_4_n_0;
  wire pps_clk_r_i_5_n_0;
  wire pps_clk_r_i_6_n_0;
  wire pps_clk_r_i_7_n_0;
  wire pps_clk_r_i_8_n_0;
  wire [25:0]pps_cnt;
  wire pps_cnt0_carry__0_n_0;
  wire pps_cnt0_carry__0_n_1;
  wire pps_cnt0_carry__0_n_2;
  wire pps_cnt0_carry__0_n_3;
  wire pps_cnt0_carry__1_n_0;
  wire pps_cnt0_carry__1_n_1;
  wire pps_cnt0_carry__1_n_2;
  wire pps_cnt0_carry__1_n_3;
  wire pps_cnt0_carry__2_n_0;
  wire pps_cnt0_carry__2_n_1;
  wire pps_cnt0_carry__2_n_2;
  wire pps_cnt0_carry__2_n_3;
  wire pps_cnt0_carry__3_n_0;
  wire pps_cnt0_carry__3_n_1;
  wire pps_cnt0_carry__3_n_2;
  wire pps_cnt0_carry__3_n_3;
  wire pps_cnt0_carry__4_n_0;
  wire pps_cnt0_carry__4_n_1;
  wire pps_cnt0_carry__4_n_2;
  wire pps_cnt0_carry__4_n_3;
  wire pps_cnt0_carry_n_0;
  wire pps_cnt0_carry_n_1;
  wire pps_cnt0_carry_n_2;
  wire pps_cnt0_carry_n_3;
  wire \pps_cnt_reg_n_0_[0] ;
  wire \pps_cnt_reg_n_0_[10] ;
  wire \pps_cnt_reg_n_0_[11] ;
  wire \pps_cnt_reg_n_0_[12] ;
  wire \pps_cnt_reg_n_0_[13] ;
  wire \pps_cnt_reg_n_0_[14] ;
  wire \pps_cnt_reg_n_0_[15] ;
  wire \pps_cnt_reg_n_0_[16] ;
  wire \pps_cnt_reg_n_0_[17] ;
  wire \pps_cnt_reg_n_0_[18] ;
  wire \pps_cnt_reg_n_0_[19] ;
  wire \pps_cnt_reg_n_0_[1] ;
  wire \pps_cnt_reg_n_0_[20] ;
  wire \pps_cnt_reg_n_0_[21] ;
  wire \pps_cnt_reg_n_0_[22] ;
  wire \pps_cnt_reg_n_0_[23] ;
  wire \pps_cnt_reg_n_0_[24] ;
  wire \pps_cnt_reg_n_0_[25] ;
  wire \pps_cnt_reg_n_0_[2] ;
  wire \pps_cnt_reg_n_0_[3] ;
  wire \pps_cnt_reg_n_0_[4] ;
  wire \pps_cnt_reg_n_0_[5] ;
  wire \pps_cnt_reg_n_0_[6] ;
  wire \pps_cnt_reg_n_0_[7] ;
  wire \pps_cnt_reg_n_0_[8] ;
  wire \pps_cnt_reg_n_0_[9] ;
  wire ref_clk_10m;
  wire sys_clk;
  wire NLW_mmcm_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_inst_DO_UNCONNECTED;
  wire [3:0]NLW_pps_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_pps_cnt0_carry__5_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(16.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(20.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(25.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(80),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(sys_clk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(adc_clk),
        .CLKOUT0B(NLW_mmcm_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(ref_clk_10m),
        .CLKOUT1B(NLW_mmcm_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(AR));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h9)) 
    pps_clk_r_i_1
       (.I0(pps_clk_r_i_2_n_0),
        .I1(pps_clk),
        .O(pps_clk_r_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pps_clk_r_i_2
       (.I0(pps_clk_r_i_3_n_0),
        .I1(pps_clk_r_i_4_n_0),
        .I2(pps_clk_r_i_5_n_0),
        .I3(pps_clk_r_i_6_n_0),
        .I4(pps_clk_r_i_7_n_0),
        .I5(pps_clk_r_i_8_n_0),
        .O(pps_clk_r_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    pps_clk_r_i_3
       (.I0(\pps_cnt_reg_n_0_[15] ),
        .I1(\pps_cnt_reg_n_0_[14] ),
        .I2(\pps_cnt_reg_n_0_[17] ),
        .I3(\pps_cnt_reg_n_0_[16] ),
        .O(pps_clk_r_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    pps_clk_r_i_4
       (.I0(\pps_cnt_reg_n_0_[19] ),
        .I1(\pps_cnt_reg_n_0_[18] ),
        .I2(\pps_cnt_reg_n_0_[21] ),
        .I3(\pps_cnt_reg_n_0_[20] ),
        .O(pps_clk_r_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    pps_clk_r_i_5
       (.I0(\pps_cnt_reg_n_0_[6] ),
        .I1(\pps_cnt_reg_n_0_[7] ),
        .I2(\pps_cnt_reg_n_0_[9] ),
        .I3(\pps_cnt_reg_n_0_[8] ),
        .O(pps_clk_r_i_5_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    pps_clk_r_i_6
       (.I0(\pps_cnt_reg_n_0_[11] ),
        .I1(\pps_cnt_reg_n_0_[10] ),
        .I2(\pps_cnt_reg_n_0_[13] ),
        .I3(\pps_cnt_reg_n_0_[12] ),
        .O(pps_clk_r_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    pps_clk_r_i_7
       (.I0(\pps_cnt_reg_n_0_[3] ),
        .I1(\pps_cnt_reg_n_0_[2] ),
        .I2(\pps_cnt_reg_n_0_[5] ),
        .I3(\pps_cnt_reg_n_0_[4] ),
        .O(pps_clk_r_i_7_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    pps_clk_r_i_8
       (.I0(\pps_cnt_reg_n_0_[24] ),
        .I1(\pps_cnt_reg_n_0_[25] ),
        .I2(\pps_cnt_reg_n_0_[22] ),
        .I3(\pps_cnt_reg_n_0_[23] ),
        .I4(\pps_cnt_reg_n_0_[1] ),
        .I5(\pps_cnt_reg_n_0_[0] ),
        .O(pps_clk_r_i_8_n_0));
  FDCE pps_clk_r_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_clk_r_i_1_n_0),
        .Q(pps_clk));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pps_cnt0_carry
       (.CI(1'b0),
        .CO({pps_cnt0_carry_n_0,pps_cnt0_carry_n_1,pps_cnt0_carry_n_2,pps_cnt0_carry_n_3}),
        .CYINIT(\pps_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\pps_cnt_reg_n_0_[4] ,\pps_cnt_reg_n_0_[3] ,\pps_cnt_reg_n_0_[2] ,\pps_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pps_cnt0_carry__0
       (.CI(pps_cnt0_carry_n_0),
        .CO({pps_cnt0_carry__0_n_0,pps_cnt0_carry__0_n_1,pps_cnt0_carry__0_n_2,pps_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\pps_cnt_reg_n_0_[8] ,\pps_cnt_reg_n_0_[7] ,\pps_cnt_reg_n_0_[6] ,\pps_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pps_cnt0_carry__1
       (.CI(pps_cnt0_carry__0_n_0),
        .CO({pps_cnt0_carry__1_n_0,pps_cnt0_carry__1_n_1,pps_cnt0_carry__1_n_2,pps_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\pps_cnt_reg_n_0_[12] ,\pps_cnt_reg_n_0_[11] ,\pps_cnt_reg_n_0_[10] ,\pps_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pps_cnt0_carry__2
       (.CI(pps_cnt0_carry__1_n_0),
        .CO({pps_cnt0_carry__2_n_0,pps_cnt0_carry__2_n_1,pps_cnt0_carry__2_n_2,pps_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\pps_cnt_reg_n_0_[16] ,\pps_cnt_reg_n_0_[15] ,\pps_cnt_reg_n_0_[14] ,\pps_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pps_cnt0_carry__3
       (.CI(pps_cnt0_carry__2_n_0),
        .CO({pps_cnt0_carry__3_n_0,pps_cnt0_carry__3_n_1,pps_cnt0_carry__3_n_2,pps_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\pps_cnt_reg_n_0_[20] ,\pps_cnt_reg_n_0_[19] ,\pps_cnt_reg_n_0_[18] ,\pps_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pps_cnt0_carry__4
       (.CI(pps_cnt0_carry__3_n_0),
        .CO({pps_cnt0_carry__4_n_0,pps_cnt0_carry__4_n_1,pps_cnt0_carry__4_n_2,pps_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\pps_cnt_reg_n_0_[24] ,\pps_cnt_reg_n_0_[23] ,\pps_cnt_reg_n_0_[22] ,\pps_cnt_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pps_cnt0_carry__5
       (.CI(pps_cnt0_carry__4_n_0),
        .CO(NLW_pps_cnt0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pps_cnt0_carry__5_O_UNCONNECTED[3:1],data0[25]}),
        .S({1'b0,1'b0,1'b0,\pps_cnt_reg_n_0_[25] }));
  LUT1 #(
    .INIT(2'h1)) 
    \pps_cnt[0]_i_1 
       (.I0(\pps_cnt_reg_n_0_[0] ),
        .O(pps_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[10]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[10]),
        .O(pps_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[11]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[11]),
        .O(pps_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[12]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[12]),
        .O(pps_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[13]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[13]),
        .O(pps_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[14]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[14]),
        .O(pps_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[15]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[15]),
        .O(pps_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[16]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[16]),
        .O(pps_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[17]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[17]),
        .O(pps_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[18]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[18]),
        .O(pps_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[19]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[19]),
        .O(pps_cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[1]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[1]),
        .O(pps_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[20]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[20]),
        .O(pps_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[21]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[21]),
        .O(pps_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[22]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[22]),
        .O(pps_cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[23]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[23]),
        .O(pps_cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[24]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[24]),
        .O(pps_cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[25]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[25]),
        .O(pps_cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[2]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[2]),
        .O(pps_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[3]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[3]),
        .O(pps_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[4]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[4]),
        .O(pps_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[5]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[5]),
        .O(pps_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[6]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[6]),
        .O(pps_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[7]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[7]),
        .O(pps_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[8]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[8]),
        .O(pps_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pps_cnt[9]_i_1 
       (.I0(pps_clk_r_i_2_n_0),
        .I1(data0[9]),
        .O(pps_cnt[9]));
  FDCE \pps_cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[0]),
        .Q(\pps_cnt_reg_n_0_[0] ));
  FDCE \pps_cnt_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[10]),
        .Q(\pps_cnt_reg_n_0_[10] ));
  FDCE \pps_cnt_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[11]),
        .Q(\pps_cnt_reg_n_0_[11] ));
  FDCE \pps_cnt_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[12]),
        .Q(\pps_cnt_reg_n_0_[12] ));
  FDCE \pps_cnt_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[13]),
        .Q(\pps_cnt_reg_n_0_[13] ));
  FDCE \pps_cnt_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[14]),
        .Q(\pps_cnt_reg_n_0_[14] ));
  FDCE \pps_cnt_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[15]),
        .Q(\pps_cnt_reg_n_0_[15] ));
  FDCE \pps_cnt_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[16]),
        .Q(\pps_cnt_reg_n_0_[16] ));
  FDCE \pps_cnt_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[17]),
        .Q(\pps_cnt_reg_n_0_[17] ));
  FDCE \pps_cnt_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[18]),
        .Q(\pps_cnt_reg_n_0_[18] ));
  FDCE \pps_cnt_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[19]),
        .Q(\pps_cnt_reg_n_0_[19] ));
  FDCE \pps_cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[1]),
        .Q(\pps_cnt_reg_n_0_[1] ));
  FDCE \pps_cnt_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[20]),
        .Q(\pps_cnt_reg_n_0_[20] ));
  FDCE \pps_cnt_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[21]),
        .Q(\pps_cnt_reg_n_0_[21] ));
  FDCE \pps_cnt_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[22]),
        .Q(\pps_cnt_reg_n_0_[22] ));
  FDCE \pps_cnt_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[23]),
        .Q(\pps_cnt_reg_n_0_[23] ));
  FDCE \pps_cnt_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[24]),
        .Q(\pps_cnt_reg_n_0_[24] ));
  FDCE \pps_cnt_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[25]),
        .Q(\pps_cnt_reg_n_0_[25] ));
  FDCE \pps_cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[2]),
        .Q(\pps_cnt_reg_n_0_[2] ));
  FDCE \pps_cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[3]),
        .Q(\pps_cnt_reg_n_0_[3] ));
  FDCE \pps_cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[4]),
        .Q(\pps_cnt_reg_n_0_[4] ));
  FDCE \pps_cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[5]),
        .Q(\pps_cnt_reg_n_0_[5] ));
  FDCE \pps_cnt_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[6]),
        .Q(\pps_cnt_reg_n_0_[6] ));
  FDCE \pps_cnt_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[7]),
        .Q(\pps_cnt_reg_n_0_[7] ));
  FDCE \pps_cnt_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[8]),
        .Q(\pps_cnt_reg_n_0_[8] ));
  FDCE \pps_cnt_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pps_cnt[9]),
        .Q(\pps_cnt_reg_n_0_[9] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mw_phase_gen
   (mw_i,
    mw_q,
    \phase_acc_reg[0]_0 ,
    \phase_acc_reg[1]_0 ,
    \phase_acc_reg[2]_0 ,
    \phase_acc_reg[3]_0 ,
    \phase_acc_reg[4]_0 ,
    \phase_acc_reg[5]_0 ,
    \phase_acc_reg[6]_0 ,
    \phase_acc_reg[7]_0 ,
    \phase_acc_reg[8]_0 ,
    \phase_acc_reg[9]_0 ,
    \phase_acc_reg[10]_0 ,
    \phase_acc_reg[11]_0 ,
    \phase_acc_reg[12]_0 ,
    \phase_acc_reg[13]_0 ,
    \phase_acc_reg[14]_0 ,
    \phase_acc_reg[15]_0 ,
    \phase_acc_reg[16]_0 ,
    \phase_acc_reg[17]_0 ,
    \phase_acc_reg[18]_0 ,
    \phase_acc_reg[19]_0 ,
    \phase_acc_reg[20]_0 ,
    \phase_acc_reg[21]_0 ,
    \phase_acc_reg[22]_0 ,
    \phase_acc_reg[23]_0 ,
    \phase_acc_reg[24]_0 ,
    \phase_acc_reg[25]_0 ,
    \phase_acc_reg[26]_0 ,
    \phase_acc_reg[27]_0 ,
    \phase_acc_reg[28]_0 ,
    \phase_acc_reg[29]_0 ,
    p_1_in,
    p_0_in,
    mw_i_reg_0,
    sys_clk,
    AR,
    \phase_acc_reg[3]_1 ,
    \phase_acc_reg[7]_1 ,
    \phase_acc_reg[11]_1 ,
    \phase_acc_reg[15]_1 ,
    \phase_acc_reg[19]_1 ,
    \phase_acc_reg[23]_1 ,
    \phase_acc_reg[27]_1 ,
    \phase_acc_reg[31]_0 ,
    mw_q_reg_0);
  output mw_i;
  output mw_q;
  output \phase_acc_reg[0]_0 ;
  output \phase_acc_reg[1]_0 ;
  output \phase_acc_reg[2]_0 ;
  output \phase_acc_reg[3]_0 ;
  output \phase_acc_reg[4]_0 ;
  output \phase_acc_reg[5]_0 ;
  output \phase_acc_reg[6]_0 ;
  output \phase_acc_reg[7]_0 ;
  output \phase_acc_reg[8]_0 ;
  output \phase_acc_reg[9]_0 ;
  output \phase_acc_reg[10]_0 ;
  output \phase_acc_reg[11]_0 ;
  output \phase_acc_reg[12]_0 ;
  output \phase_acc_reg[13]_0 ;
  output \phase_acc_reg[14]_0 ;
  output \phase_acc_reg[15]_0 ;
  output \phase_acc_reg[16]_0 ;
  output \phase_acc_reg[17]_0 ;
  output \phase_acc_reg[18]_0 ;
  output \phase_acc_reg[19]_0 ;
  output \phase_acc_reg[20]_0 ;
  output \phase_acc_reg[21]_0 ;
  output \phase_acc_reg[22]_0 ;
  output \phase_acc_reg[23]_0 ;
  output \phase_acc_reg[24]_0 ;
  output \phase_acc_reg[25]_0 ;
  output \phase_acc_reg[26]_0 ;
  output \phase_acc_reg[27]_0 ;
  output \phase_acc_reg[28]_0 ;
  output \phase_acc_reg[29]_0 ;
  output p_1_in;
  output p_0_in;
  input mw_i_reg_0;
  input sys_clk;
  input [0:0]AR;
  input [3:0]\phase_acc_reg[3]_1 ;
  input [3:0]\phase_acc_reg[7]_1 ;
  input [3:0]\phase_acc_reg[11]_1 ;
  input [3:0]\phase_acc_reg[15]_1 ;
  input [3:0]\phase_acc_reg[19]_1 ;
  input [3:0]\phase_acc_reg[23]_1 ;
  input [3:0]\phase_acc_reg[27]_1 ;
  input [3:0]\phase_acc_reg[31]_0 ;
  input [1:0]mw_q_reg_0;

  wire [0:0]AR;
  wire mw_i;
  wire mw_i_reg_0;
  wire mw_q;
  wire mw_q_i_1_n_0;
  wire [1:0]mw_q_reg_0;
  wire p_0_in;
  wire p_1_in;
  wire \phase_acc_reg[0]_0 ;
  wire \phase_acc_reg[10]_0 ;
  wire \phase_acc_reg[11]_0 ;
  wire [3:0]\phase_acc_reg[11]_1 ;
  wire \phase_acc_reg[12]_0 ;
  wire \phase_acc_reg[13]_0 ;
  wire \phase_acc_reg[14]_0 ;
  wire \phase_acc_reg[15]_0 ;
  wire [3:0]\phase_acc_reg[15]_1 ;
  wire \phase_acc_reg[16]_0 ;
  wire \phase_acc_reg[17]_0 ;
  wire \phase_acc_reg[18]_0 ;
  wire \phase_acc_reg[19]_0 ;
  wire [3:0]\phase_acc_reg[19]_1 ;
  wire \phase_acc_reg[1]_0 ;
  wire \phase_acc_reg[20]_0 ;
  wire \phase_acc_reg[21]_0 ;
  wire \phase_acc_reg[22]_0 ;
  wire \phase_acc_reg[23]_0 ;
  wire [3:0]\phase_acc_reg[23]_1 ;
  wire \phase_acc_reg[24]_0 ;
  wire \phase_acc_reg[25]_0 ;
  wire \phase_acc_reg[26]_0 ;
  wire \phase_acc_reg[27]_0 ;
  wire [3:0]\phase_acc_reg[27]_1 ;
  wire \phase_acc_reg[28]_0 ;
  wire \phase_acc_reg[29]_0 ;
  wire \phase_acc_reg[2]_0 ;
  wire [3:0]\phase_acc_reg[31]_0 ;
  wire \phase_acc_reg[3]_0 ;
  wire [3:0]\phase_acc_reg[3]_1 ;
  wire \phase_acc_reg[4]_0 ;
  wire \phase_acc_reg[5]_0 ;
  wire \phase_acc_reg[6]_0 ;
  wire \phase_acc_reg[7]_0 ;
  wire [3:0]\phase_acc_reg[7]_1 ;
  wire \phase_acc_reg[8]_0 ;
  wire \phase_acc_reg[9]_0 ;
  wire sys_clk;

  FDCE mw_i_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(mw_i_reg_0),
        .Q(mw_i));
  LUT4 #(
    .INIT(16'h939C)) 
    mw_q_i_1
       (.I0(p_0_in),
        .I1(mw_q_reg_0[1]),
        .I2(mw_q_reg_0[0]),
        .I3(p_1_in),
        .O(mw_q_i_1_n_0));
  FDCE mw_q_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(mw_q_i_1_n_0),
        .Q(mw_q));
  FDCE \phase_acc_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[3]_1 [0]),
        .Q(\phase_acc_reg[0]_0 ));
  FDCE \phase_acc_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[11]_1 [2]),
        .Q(\phase_acc_reg[10]_0 ));
  FDCE \phase_acc_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[11]_1 [3]),
        .Q(\phase_acc_reg[11]_0 ));
  FDCE \phase_acc_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[15]_1 [0]),
        .Q(\phase_acc_reg[12]_0 ));
  FDCE \phase_acc_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[15]_1 [1]),
        .Q(\phase_acc_reg[13]_0 ));
  FDCE \phase_acc_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[15]_1 [2]),
        .Q(\phase_acc_reg[14]_0 ));
  FDCE \phase_acc_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[15]_1 [3]),
        .Q(\phase_acc_reg[15]_0 ));
  FDCE \phase_acc_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[19]_1 [0]),
        .Q(\phase_acc_reg[16]_0 ));
  FDCE \phase_acc_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[19]_1 [1]),
        .Q(\phase_acc_reg[17]_0 ));
  FDCE \phase_acc_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[19]_1 [2]),
        .Q(\phase_acc_reg[18]_0 ));
  FDCE \phase_acc_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[19]_1 [3]),
        .Q(\phase_acc_reg[19]_0 ));
  FDCE \phase_acc_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[3]_1 [1]),
        .Q(\phase_acc_reg[1]_0 ));
  FDCE \phase_acc_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[23]_1 [0]),
        .Q(\phase_acc_reg[20]_0 ));
  FDCE \phase_acc_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[23]_1 [1]),
        .Q(\phase_acc_reg[21]_0 ));
  FDCE \phase_acc_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[23]_1 [2]),
        .Q(\phase_acc_reg[22]_0 ));
  FDCE \phase_acc_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[23]_1 [3]),
        .Q(\phase_acc_reg[23]_0 ));
  FDCE \phase_acc_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[27]_1 [0]),
        .Q(\phase_acc_reg[24]_0 ));
  FDCE \phase_acc_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[27]_1 [1]),
        .Q(\phase_acc_reg[25]_0 ));
  FDCE \phase_acc_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[27]_1 [2]),
        .Q(\phase_acc_reg[26]_0 ));
  FDCE \phase_acc_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[27]_1 [3]),
        .Q(\phase_acc_reg[27]_0 ));
  FDCE \phase_acc_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[31]_0 [0]),
        .Q(\phase_acc_reg[28]_0 ));
  FDCE \phase_acc_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[31]_0 [1]),
        .Q(\phase_acc_reg[29]_0 ));
  FDCE \phase_acc_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[3]_1 [2]),
        .Q(\phase_acc_reg[2]_0 ));
  FDCE \phase_acc_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[31]_0 [2]),
        .Q(p_1_in));
  FDCE \phase_acc_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[31]_0 [3]),
        .Q(p_0_in));
  FDCE \phase_acc_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[3]_1 [3]),
        .Q(\phase_acc_reg[3]_0 ));
  FDCE \phase_acc_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[7]_1 [0]),
        .Q(\phase_acc_reg[4]_0 ));
  FDCE \phase_acc_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[7]_1 [1]),
        .Q(\phase_acc_reg[5]_0 ));
  FDCE \phase_acc_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[7]_1 [2]),
        .Q(\phase_acc_reg[6]_0 ));
  FDCE \phase_acc_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[7]_1 [3]),
        .Q(\phase_acc_reg[7]_0 ));
  FDCE \phase_acc_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[11]_1 [0]),
        .Q(\phase_acc_reg[8]_0 ));
  FDCE \phase_acc_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\phase_acc_reg[11]_1 [1]),
        .Q(\phase_acc_reg[9]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen
   (pulse_0,
    pulse_1,
    pulse_2,
    pulse_3,
    Q,
    \cnt1_reg[12]_0 ,
    \cnt2_reg[12]_0 ,
    \cnt3_reg[12]_0 ,
    pulse_0_reg_i_147,
    pulse_0_i_258_0,
    pulse_0_i_182_0,
    pulse_0_reg_i_28,
    pulse_0_i_160_0,
    pulse_0_reg_i_94,
    pulse_0_reg_i_52,
    pulse_0_reg_i_75,
    pulse_0_i_244_0,
    pulse_0_i_169_0,
    pulse_0_reg_i_38,
    cnt00,
    \cnt0_reg[10]_0 ,
    \cnt0_reg[15]_0 ,
    pulse_1_reg_i_147,
    pulse_1_i_258_0,
    pulse_1_i_182_0,
    pulse_1_reg_i_28,
    pulse_1_i_160_0,
    pulse_1_reg_i_94,
    pulse_1_reg_i_52,
    pulse_1_reg_i_75,
    pulse_1_i_244_0,
    pulse_1_i_169_0,
    pulse_1_reg_i_38,
    cnt10,
    \cnt1_reg[10]_0 ,
    \cnt1_reg[15]_0 ,
    pulse_2_reg_i_147,
    pulse_2_i_258_0,
    pulse_2_i_182_0,
    pulse_2_reg_i_28,
    pulse_2_i_160_0,
    pulse_2_reg_i_94,
    pulse_2_reg_i_52,
    pulse_2_reg_i_75,
    pulse_2_i_244_0,
    pulse_2_i_169_0,
    pulse_2_reg_i_38,
    cnt20,
    \cnt2_reg[10]_0 ,
    \cnt2_reg[15]_0 ,
    pulse_3_reg_i_147,
    pulse_3_i_258_0,
    pulse_3_i_182_0,
    pulse_3_reg_i_28,
    pulse_3_i_160_0,
    pulse_3_reg_i_94,
    pulse_3_reg_i_52,
    pulse_3_reg_i_75,
    pulse_3_i_244_0,
    pulse_3_i_169_0,
    pulse_3_reg_i_38,
    cnt30,
    \cnt3_reg[10]_0 ,
    CO,
    pulse_00,
    sys_clk,
    AR,
    pulse_10,
    pulse_20,
    pulse_30,
    pulse_0_reg_i_3_0,
    pulse_0_reg_i_9_0,
    DI,
    pulse_0_reg_i_3_1,
    pulse_0_reg_i_3_2,
    pulse_0_reg_i_9_1,
    pulse_0_i_247,
    pulse_0_reg_i_9_2,
    pulse_0_reg_i_9_3,
    pulse_0_reg_i_9_4,
    pulse_0_i_313,
    pulse_0_reg_i_9_5,
    pulse_0_i_313_0,
    pulse_0_reg_i_9_6,
    O,
    pulse_1_reg_i_3_0,
    pulse_1_reg_i_9_0,
    pulse_1_i_172,
    pulse_1_reg_i_3_1,
    pulse_1_reg_i_3_2,
    pulse_1_reg_i_9_1,
    pulse_1_i_247,
    pulse_1_reg_i_9_2,
    pulse_1_reg_i_9_3,
    pulse_1_reg_i_9_4,
    pulse_1_i_313,
    pulse_1_reg_i_9_5,
    pulse_1_i_313_0,
    pulse_1_reg_i_9_6,
    pulse_1_reg_i_254_0,
    pulse_2_reg_i_3_0,
    pulse_2_reg_i_9_0,
    pulse_2_i_172,
    pulse_2_reg_i_3_1,
    pulse_2_reg_i_3_2,
    pulse_2_reg_i_9_1,
    pulse_2_i_247,
    pulse_2_reg_i_9_2,
    pulse_2_reg_i_9_3,
    pulse_2_reg_i_9_4,
    pulse_2_i_313,
    pulse_2_reg_i_9_5,
    pulse_2_i_313_0,
    pulse_2_reg_i_9_6,
    pulse_2_reg_i_254_0,
    pulse_3_reg_i_3_0,
    pulse_3_reg_i_9_0,
    pulse_3_i_172,
    pulse_3_reg_i_3_1,
    pulse_3_reg_i_3_2,
    pulse_3_reg_i_9_1,
    pulse_3_i_247,
    pulse_3_reg_i_9_2,
    pulse_3_reg_i_9_3,
    pulse_3_reg_i_9_4,
    pulse_3_i_313,
    pulse_3_reg_i_9_5,
    pulse_3_i_313_0,
    pulse_3_reg_i_9_6,
    pulse_3_reg_i_254_0,
    pulse_0_reg_i_179_0,
    pulse_0_reg_i_116_0,
    pulse_0_reg_i_116_1,
    pulse_0_reg_0,
    S,
    pulse_1_reg_i_179_0,
    pulse_1_reg_i_116_0,
    pulse_1_reg_i_116_1,
    pulse_1_reg_0,
    pulse_1_reg_1,
    pulse_2_reg_i_179_0,
    pulse_2_reg_i_116_0,
    pulse_2_reg_i_116_1,
    pulse_2_reg_0,
    pulse_2_reg_1,
    pulse_3_reg_i_179_0,
    pulse_3_reg_i_116_0,
    pulse_3_reg_i_116_1,
    pulse_3_reg_0,
    pulse_3_reg_1,
    D,
    \cnt1_reg[15]_1 ,
    \cnt2_reg[15]_1 ,
    \cnt3_reg[15]_0 );
  output pulse_0;
  output pulse_1;
  output pulse_2;
  output pulse_3;
  output [12:0]Q;
  output [12:0]\cnt1_reg[12]_0 ;
  output [12:0]\cnt2_reg[12]_0 ;
  output [12:0]\cnt3_reg[12]_0 ;
  output [3:0]pulse_0_reg_i_147;
  output [3:0]pulse_0_i_258_0;
  output [3:0]pulse_0_i_182_0;
  output [0:0]pulse_0_reg_i_28;
  output [3:0]pulse_0_i_160_0;
  output [3:0]pulse_0_reg_i_94;
  output [3:0]pulse_0_reg_i_52;
  output [3:0]pulse_0_reg_i_75;
  output [3:0]pulse_0_i_244_0;
  output [3:0]pulse_0_i_169_0;
  output [0:0]pulse_0_reg_i_38;
  output [14:0]cnt00;
  output [0:0]\cnt0_reg[10]_0 ;
  output [0:0]\cnt0_reg[15]_0 ;
  output [3:0]pulse_1_reg_i_147;
  output [3:0]pulse_1_i_258_0;
  output [3:0]pulse_1_i_182_0;
  output [0:0]pulse_1_reg_i_28;
  output [3:0]pulse_1_i_160_0;
  output [3:0]pulse_1_reg_i_94;
  output [3:0]pulse_1_reg_i_52;
  output [3:0]pulse_1_reg_i_75;
  output [3:0]pulse_1_i_244_0;
  output [3:0]pulse_1_i_169_0;
  output [0:0]pulse_1_reg_i_38;
  output [14:0]cnt10;
  output [0:0]\cnt1_reg[10]_0 ;
  output [0:0]\cnt1_reg[15]_0 ;
  output [3:0]pulse_2_reg_i_147;
  output [3:0]pulse_2_i_258_0;
  output [3:0]pulse_2_i_182_0;
  output [0:0]pulse_2_reg_i_28;
  output [3:0]pulse_2_i_160_0;
  output [3:0]pulse_2_reg_i_94;
  output [3:0]pulse_2_reg_i_52;
  output [3:0]pulse_2_reg_i_75;
  output [3:0]pulse_2_i_244_0;
  output [3:0]pulse_2_i_169_0;
  output [0:0]pulse_2_reg_i_38;
  output [14:0]cnt20;
  output [0:0]\cnt2_reg[10]_0 ;
  output [0:0]\cnt2_reg[15]_0 ;
  output [3:0]pulse_3_reg_i_147;
  output [3:0]pulse_3_i_258_0;
  output [3:0]pulse_3_i_182_0;
  output [0:0]pulse_3_reg_i_28;
  output [3:0]pulse_3_i_160_0;
  output [3:0]pulse_3_reg_i_94;
  output [3:0]pulse_3_reg_i_52;
  output [3:0]pulse_3_reg_i_75;
  output [3:0]pulse_3_i_244_0;
  output [3:0]pulse_3_i_169_0;
  output [0:0]pulse_3_reg_i_38;
  output [14:0]cnt30;
  output [0:0]\cnt3_reg[10]_0 ;
  output [0:0]CO;
  input pulse_00;
  input sys_clk;
  input [0:0]AR;
  input pulse_10;
  input pulse_20;
  input pulse_30;
  input [1:0]pulse_0_reg_i_3_0;
  input pulse_0_reg_i_9_0;
  input [2:0]DI;
  input pulse_0_reg_i_3_1;
  input pulse_0_reg_i_3_2;
  input [1:0]pulse_0_reg_i_9_1;
  input [3:0]pulse_0_i_247;
  input pulse_0_reg_i_9_2;
  input pulse_0_reg_i_9_3;
  input [1:0]pulse_0_reg_i_9_4;
  input [2:0]pulse_0_i_313;
  input pulse_0_reg_i_9_5;
  input [1:0]pulse_0_i_313_0;
  input pulse_0_reg_i_9_6;
  input [1:0]O;
  input [1:0]pulse_1_reg_i_3_0;
  input pulse_1_reg_i_9_0;
  input [2:0]pulse_1_i_172;
  input pulse_1_reg_i_3_1;
  input pulse_1_reg_i_3_2;
  input [1:0]pulse_1_reg_i_9_1;
  input [3:0]pulse_1_i_247;
  input pulse_1_reg_i_9_2;
  input pulse_1_reg_i_9_3;
  input [1:0]pulse_1_reg_i_9_4;
  input [2:0]pulse_1_i_313;
  input pulse_1_reg_i_9_5;
  input [1:0]pulse_1_i_313_0;
  input pulse_1_reg_i_9_6;
  input [1:0]pulse_1_reg_i_254_0;
  input [1:0]pulse_2_reg_i_3_0;
  input pulse_2_reg_i_9_0;
  input [2:0]pulse_2_i_172;
  input pulse_2_reg_i_3_1;
  input pulse_2_reg_i_3_2;
  input [1:0]pulse_2_reg_i_9_1;
  input [3:0]pulse_2_i_247;
  input pulse_2_reg_i_9_2;
  input pulse_2_reg_i_9_3;
  input [1:0]pulse_2_reg_i_9_4;
  input [2:0]pulse_2_i_313;
  input pulse_2_reg_i_9_5;
  input [1:0]pulse_2_i_313_0;
  input pulse_2_reg_i_9_6;
  input [1:0]pulse_2_reg_i_254_0;
  input [1:0]pulse_3_reg_i_3_0;
  input pulse_3_reg_i_9_0;
  input [2:0]pulse_3_i_172;
  input pulse_3_reg_i_3_1;
  input pulse_3_reg_i_3_2;
  input [1:0]pulse_3_reg_i_9_1;
  input [3:0]pulse_3_i_247;
  input pulse_3_reg_i_9_2;
  input pulse_3_reg_i_9_3;
  input [1:0]pulse_3_reg_i_9_4;
  input [2:0]pulse_3_i_313;
  input pulse_3_reg_i_9_5;
  input [1:0]pulse_3_i_313_0;
  input pulse_3_reg_i_9_6;
  input [1:0]pulse_3_reg_i_254_0;
  input [3:0]pulse_0_reg_i_179_0;
  input [3:0]pulse_0_reg_i_116_0;
  input [1:0]pulse_0_reg_i_116_1;
  input [0:0]pulse_0_reg_0;
  input [0:0]S;
  input [3:0]pulse_1_reg_i_179_0;
  input [3:0]pulse_1_reg_i_116_0;
  input [1:0]pulse_1_reg_i_116_1;
  input [0:0]pulse_1_reg_0;
  input [0:0]pulse_1_reg_1;
  input [3:0]pulse_2_reg_i_179_0;
  input [3:0]pulse_2_reg_i_116_0;
  input [1:0]pulse_2_reg_i_116_1;
  input [0:0]pulse_2_reg_0;
  input [0:0]pulse_2_reg_1;
  input [3:0]pulse_3_reg_i_179_0;
  input [3:0]pulse_3_reg_i_116_0;
  input [1:0]pulse_3_reg_i_116_1;
  input [0:0]pulse_3_reg_0;
  input [0:0]pulse_3_reg_1;
  input [15:0]D;
  input [15:0]\cnt1_reg[15]_1 ;
  input [15:0]\cnt2_reg[15]_1 ;
  input [15:0]\cnt3_reg[15]_0 ;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [15:0]D;
  wire [2:0]DI;
  wire [1:0]O;
  wire [12:0]Q;
  wire [0:0]S;
  wire [15:13]cnt0;
  wire [14:0]cnt00;
  wire [0:0]\cnt0_reg[10]_0 ;
  wire \cnt0_reg[12]_i_2_n_0 ;
  wire \cnt0_reg[12]_i_2_n_1 ;
  wire \cnt0_reg[12]_i_2_n_2 ;
  wire \cnt0_reg[12]_i_2_n_3 ;
  wire [0:0]\cnt0_reg[15]_0 ;
  wire \cnt0_reg[15]_i_3_n_2 ;
  wire \cnt0_reg[15]_i_3_n_3 ;
  wire \cnt0_reg[4]_i_2_n_0 ;
  wire \cnt0_reg[4]_i_2_n_1 ;
  wire \cnt0_reg[4]_i_2_n_2 ;
  wire \cnt0_reg[4]_i_2_n_3 ;
  wire \cnt0_reg[8]_i_2_n_0 ;
  wire \cnt0_reg[8]_i_2_n_1 ;
  wire \cnt0_reg[8]_i_2_n_2 ;
  wire \cnt0_reg[8]_i_2_n_3 ;
  wire [15:13]cnt1;
  wire [14:0]cnt10;
  wire [0:0]\cnt1_reg[10]_0 ;
  wire [12:0]\cnt1_reg[12]_0 ;
  wire \cnt1_reg[12]_i_2_n_0 ;
  wire \cnt1_reg[12]_i_2_n_1 ;
  wire \cnt1_reg[12]_i_2_n_2 ;
  wire \cnt1_reg[12]_i_2_n_3 ;
  wire [0:0]\cnt1_reg[15]_0 ;
  wire [15:0]\cnt1_reg[15]_1 ;
  wire \cnt1_reg[15]_i_3_n_2 ;
  wire \cnt1_reg[15]_i_3_n_3 ;
  wire \cnt1_reg[4]_i_2_n_0 ;
  wire \cnt1_reg[4]_i_2_n_1 ;
  wire \cnt1_reg[4]_i_2_n_2 ;
  wire \cnt1_reg[4]_i_2_n_3 ;
  wire \cnt1_reg[8]_i_2_n_0 ;
  wire \cnt1_reg[8]_i_2_n_1 ;
  wire \cnt1_reg[8]_i_2_n_2 ;
  wire \cnt1_reg[8]_i_2_n_3 ;
  wire [15:13]cnt2;
  wire [14:0]cnt20;
  wire [0:0]\cnt2_reg[10]_0 ;
  wire [12:0]\cnt2_reg[12]_0 ;
  wire \cnt2_reg[12]_i_2_n_0 ;
  wire \cnt2_reg[12]_i_2_n_1 ;
  wire \cnt2_reg[12]_i_2_n_2 ;
  wire \cnt2_reg[12]_i_2_n_3 ;
  wire [0:0]\cnt2_reg[15]_0 ;
  wire [15:0]\cnt2_reg[15]_1 ;
  wire \cnt2_reg[15]_i_3_n_2 ;
  wire \cnt2_reg[15]_i_3_n_3 ;
  wire \cnt2_reg[4]_i_2_n_0 ;
  wire \cnt2_reg[4]_i_2_n_1 ;
  wire \cnt2_reg[4]_i_2_n_2 ;
  wire \cnt2_reg[4]_i_2_n_3 ;
  wire \cnt2_reg[8]_i_2_n_0 ;
  wire \cnt2_reg[8]_i_2_n_1 ;
  wire \cnt2_reg[8]_i_2_n_2 ;
  wire \cnt2_reg[8]_i_2_n_3 ;
  wire [15:13]cnt3;
  wire [14:0]cnt30;
  wire [0:0]\cnt3_reg[10]_0 ;
  wire [12:0]\cnt3_reg[12]_0 ;
  wire \cnt3_reg[12]_i_2_n_0 ;
  wire \cnt3_reg[12]_i_2_n_1 ;
  wire \cnt3_reg[12]_i_2_n_2 ;
  wire \cnt3_reg[12]_i_2_n_3 ;
  wire [15:0]\cnt3_reg[15]_0 ;
  wire \cnt3_reg[15]_i_3_n_2 ;
  wire \cnt3_reg[15]_i_3_n_3 ;
  wire \cnt3_reg[4]_i_2_n_0 ;
  wire \cnt3_reg[4]_i_2_n_1 ;
  wire \cnt3_reg[4]_i_2_n_2 ;
  wire \cnt3_reg[4]_i_2_n_3 ;
  wire \cnt3_reg[8]_i_2_n_0 ;
  wire \cnt3_reg[8]_i_2_n_1 ;
  wire \cnt3_reg[8]_i_2_n_2 ;
  wire \cnt3_reg[8]_i_2_n_3 ;
  wire pulse_0;
  wire pulse_00;
  wire pulse_0_i_10_n_0;
  wire pulse_0_i_11_n_0;
  wire pulse_0_i_12_n_0;
  wire pulse_0_i_13_n_0;
  wire pulse_0_i_14_n_0;
  wire pulse_0_i_15_n_0;
  wire [3:0]pulse_0_i_160_0;
  wire pulse_0_i_160_n_0;
  wire pulse_0_i_167_n_0;
  wire pulse_0_i_168_n_0;
  wire [3:0]pulse_0_i_169_0;
  wire pulse_0_i_169_n_0;
  wire pulse_0_i_180_n_0;
  wire pulse_0_i_181_n_0;
  wire [3:0]pulse_0_i_182_0;
  wire pulse_0_i_182_n_0;
  wire pulse_0_i_241_n_0;
  wire pulse_0_i_242_n_0;
  wire pulse_0_i_243_n_0;
  wire [3:0]pulse_0_i_244_0;
  wire pulse_0_i_244_n_0;
  wire [3:0]pulse_0_i_247;
  wire pulse_0_i_255_n_0;
  wire pulse_0_i_256_n_0;
  wire pulse_0_i_257_n_0;
  wire [3:0]pulse_0_i_258_0;
  wire pulse_0_i_258_n_0;
  wire pulse_0_i_29_n_0;
  wire pulse_0_i_309_n_0;
  wire pulse_0_i_30_n_0;
  wire pulse_0_i_310_n_0;
  wire pulse_0_i_311_n_0;
  wire [2:0]pulse_0_i_313;
  wire [1:0]pulse_0_i_313_0;
  wire pulse_0_i_319_n_0;
  wire pulse_0_i_31_n_0;
  wire pulse_0_i_320_n_0;
  wire pulse_0_i_321_n_0;
  wire pulse_0_i_32_n_0;
  wire pulse_0_i_33_n_0;
  wire pulse_0_i_34_n_0;
  wire pulse_0_i_35_n_0;
  wire pulse_0_i_36_n_0;
  wire pulse_0_i_5_n_0;
  wire pulse_0_i_6_n_0;
  wire pulse_0_i_7_n_0;
  wire [0:0]pulse_0_reg_0;
  wire pulse_0_reg_i_110_n_0;
  wire pulse_0_reg_i_110_n_1;
  wire pulse_0_reg_i_110_n_2;
  wire pulse_0_reg_i_110_n_3;
  wire [3:0]pulse_0_reg_i_116_0;
  wire [1:0]pulse_0_reg_i_116_1;
  wire pulse_0_reg_i_116_n_0;
  wire pulse_0_reg_i_116_n_1;
  wire pulse_0_reg_i_116_n_2;
  wire pulse_0_reg_i_116_n_3;
  wire [3:0]pulse_0_reg_i_147;
  wire pulse_0_reg_i_166_n_0;
  wire pulse_0_reg_i_166_n_1;
  wire pulse_0_reg_i_166_n_2;
  wire pulse_0_reg_i_166_n_3;
  wire [3:0]pulse_0_reg_i_179_0;
  wire pulse_0_reg_i_179_n_0;
  wire pulse_0_reg_i_179_n_1;
  wire pulse_0_reg_i_179_n_2;
  wire pulse_0_reg_i_179_n_3;
  wire pulse_0_reg_i_240_n_0;
  wire pulse_0_reg_i_240_n_1;
  wire pulse_0_reg_i_240_n_2;
  wire pulse_0_reg_i_240_n_3;
  wire pulse_0_reg_i_254_n_0;
  wire pulse_0_reg_i_254_n_1;
  wire pulse_0_reg_i_254_n_2;
  wire pulse_0_reg_i_254_n_3;
  wire pulse_0_reg_i_26_n_1;
  wire pulse_0_reg_i_26_n_2;
  wire pulse_0_reg_i_26_n_3;
  wire [0:0]pulse_0_reg_i_28;
  wire pulse_0_reg_i_2_n_1;
  wire pulse_0_reg_i_2_n_2;
  wire pulse_0_reg_i_2_n_3;
  wire [0:0]pulse_0_reg_i_38;
  wire [1:0]pulse_0_reg_i_3_0;
  wire pulse_0_reg_i_3_1;
  wire pulse_0_reg_i_3_2;
  wire pulse_0_reg_i_3_n_1;
  wire pulse_0_reg_i_3_n_2;
  wire pulse_0_reg_i_3_n_3;
  wire [3:0]pulse_0_reg_i_52;
  wire pulse_0_reg_i_54_n_0;
  wire pulse_0_reg_i_54_n_1;
  wire pulse_0_reg_i_54_n_2;
  wire pulse_0_reg_i_54_n_3;
  wire [3:0]pulse_0_reg_i_75;
  wire [3:0]pulse_0_reg_i_94;
  wire pulse_0_reg_i_96_n_0;
  wire pulse_0_reg_i_96_n_1;
  wire pulse_0_reg_i_96_n_2;
  wire pulse_0_reg_i_96_n_3;
  wire pulse_0_reg_i_9_0;
  wire [1:0]pulse_0_reg_i_9_1;
  wire pulse_0_reg_i_9_2;
  wire pulse_0_reg_i_9_3;
  wire [1:0]pulse_0_reg_i_9_4;
  wire pulse_0_reg_i_9_5;
  wire pulse_0_reg_i_9_6;
  wire pulse_0_reg_i_9_n_0;
  wire pulse_0_reg_i_9_n_1;
  wire pulse_0_reg_i_9_n_2;
  wire pulse_0_reg_i_9_n_3;
  wire pulse_1;
  wire pulse_10;
  wire pulse_1_i_10_n_0;
  wire pulse_1_i_11_n_0;
  wire pulse_1_i_12_n_0;
  wire pulse_1_i_13_n_0;
  wire pulse_1_i_14_n_0;
  wire pulse_1_i_15_n_0;
  wire [3:0]pulse_1_i_160_0;
  wire pulse_1_i_160_n_0;
  wire pulse_1_i_167_n_0;
  wire pulse_1_i_168_n_0;
  wire [3:0]pulse_1_i_169_0;
  wire pulse_1_i_169_n_0;
  wire [2:0]pulse_1_i_172;
  wire pulse_1_i_180_n_0;
  wire pulse_1_i_181_n_0;
  wire [3:0]pulse_1_i_182_0;
  wire pulse_1_i_182_n_0;
  wire pulse_1_i_241_n_0;
  wire pulse_1_i_242_n_0;
  wire pulse_1_i_243_n_0;
  wire [3:0]pulse_1_i_244_0;
  wire pulse_1_i_244_n_0;
  wire [3:0]pulse_1_i_247;
  wire pulse_1_i_255_n_0;
  wire pulse_1_i_256_n_0;
  wire pulse_1_i_257_n_0;
  wire [3:0]pulse_1_i_258_0;
  wire pulse_1_i_258_n_0;
  wire pulse_1_i_29_n_0;
  wire pulse_1_i_309_n_0;
  wire pulse_1_i_30_n_0;
  wire pulse_1_i_310_n_0;
  wire pulse_1_i_311_n_0;
  wire [2:0]pulse_1_i_313;
  wire [1:0]pulse_1_i_313_0;
  wire pulse_1_i_319_n_0;
  wire pulse_1_i_31_n_0;
  wire pulse_1_i_320_n_0;
  wire pulse_1_i_321_n_0;
  wire pulse_1_i_32_n_0;
  wire pulse_1_i_33_n_0;
  wire pulse_1_i_34_n_0;
  wire pulse_1_i_35_n_0;
  wire pulse_1_i_36_n_0;
  wire pulse_1_i_5_n_0;
  wire pulse_1_i_6_n_0;
  wire pulse_1_i_7_n_0;
  wire [0:0]pulse_1_reg_0;
  wire [0:0]pulse_1_reg_1;
  wire pulse_1_reg_i_110_n_0;
  wire pulse_1_reg_i_110_n_1;
  wire pulse_1_reg_i_110_n_2;
  wire pulse_1_reg_i_110_n_3;
  wire [3:0]pulse_1_reg_i_116_0;
  wire [1:0]pulse_1_reg_i_116_1;
  wire pulse_1_reg_i_116_n_0;
  wire pulse_1_reg_i_116_n_1;
  wire pulse_1_reg_i_116_n_2;
  wire pulse_1_reg_i_116_n_3;
  wire [3:0]pulse_1_reg_i_147;
  wire pulse_1_reg_i_166_n_0;
  wire pulse_1_reg_i_166_n_1;
  wire pulse_1_reg_i_166_n_2;
  wire pulse_1_reg_i_166_n_3;
  wire [3:0]pulse_1_reg_i_179_0;
  wire pulse_1_reg_i_179_n_0;
  wire pulse_1_reg_i_179_n_1;
  wire pulse_1_reg_i_179_n_2;
  wire pulse_1_reg_i_179_n_3;
  wire pulse_1_reg_i_240_n_0;
  wire pulse_1_reg_i_240_n_1;
  wire pulse_1_reg_i_240_n_2;
  wire pulse_1_reg_i_240_n_3;
  wire [1:0]pulse_1_reg_i_254_0;
  wire pulse_1_reg_i_254_n_0;
  wire pulse_1_reg_i_254_n_1;
  wire pulse_1_reg_i_254_n_2;
  wire pulse_1_reg_i_254_n_3;
  wire pulse_1_reg_i_26_n_1;
  wire pulse_1_reg_i_26_n_2;
  wire pulse_1_reg_i_26_n_3;
  wire [0:0]pulse_1_reg_i_28;
  wire pulse_1_reg_i_2_n_1;
  wire pulse_1_reg_i_2_n_2;
  wire pulse_1_reg_i_2_n_3;
  wire [0:0]pulse_1_reg_i_38;
  wire [1:0]pulse_1_reg_i_3_0;
  wire pulse_1_reg_i_3_1;
  wire pulse_1_reg_i_3_2;
  wire pulse_1_reg_i_3_n_1;
  wire pulse_1_reg_i_3_n_2;
  wire pulse_1_reg_i_3_n_3;
  wire [3:0]pulse_1_reg_i_52;
  wire pulse_1_reg_i_54_n_0;
  wire pulse_1_reg_i_54_n_1;
  wire pulse_1_reg_i_54_n_2;
  wire pulse_1_reg_i_54_n_3;
  wire [3:0]pulse_1_reg_i_75;
  wire [3:0]pulse_1_reg_i_94;
  wire pulse_1_reg_i_96_n_0;
  wire pulse_1_reg_i_96_n_1;
  wire pulse_1_reg_i_96_n_2;
  wire pulse_1_reg_i_96_n_3;
  wire pulse_1_reg_i_9_0;
  wire [1:0]pulse_1_reg_i_9_1;
  wire pulse_1_reg_i_9_2;
  wire pulse_1_reg_i_9_3;
  wire [1:0]pulse_1_reg_i_9_4;
  wire pulse_1_reg_i_9_5;
  wire pulse_1_reg_i_9_6;
  wire pulse_1_reg_i_9_n_0;
  wire pulse_1_reg_i_9_n_1;
  wire pulse_1_reg_i_9_n_2;
  wire pulse_1_reg_i_9_n_3;
  wire pulse_2;
  wire pulse_20;
  wire pulse_2_i_10_n_0;
  wire pulse_2_i_11_n_0;
  wire pulse_2_i_12_n_0;
  wire pulse_2_i_13_n_0;
  wire pulse_2_i_14_n_0;
  wire pulse_2_i_15_n_0;
  wire [3:0]pulse_2_i_160_0;
  wire pulse_2_i_160_n_0;
  wire pulse_2_i_167_n_0;
  wire pulse_2_i_168_n_0;
  wire [3:0]pulse_2_i_169_0;
  wire pulse_2_i_169_n_0;
  wire [2:0]pulse_2_i_172;
  wire pulse_2_i_180_n_0;
  wire pulse_2_i_181_n_0;
  wire [3:0]pulse_2_i_182_0;
  wire pulse_2_i_182_n_0;
  wire pulse_2_i_241_n_0;
  wire pulse_2_i_242_n_0;
  wire pulse_2_i_243_n_0;
  wire [3:0]pulse_2_i_244_0;
  wire pulse_2_i_244_n_0;
  wire [3:0]pulse_2_i_247;
  wire pulse_2_i_255_n_0;
  wire pulse_2_i_256_n_0;
  wire pulse_2_i_257_n_0;
  wire [3:0]pulse_2_i_258_0;
  wire pulse_2_i_258_n_0;
  wire pulse_2_i_29_n_0;
  wire pulse_2_i_309_n_0;
  wire pulse_2_i_30_n_0;
  wire pulse_2_i_310_n_0;
  wire pulse_2_i_311_n_0;
  wire [2:0]pulse_2_i_313;
  wire [1:0]pulse_2_i_313_0;
  wire pulse_2_i_319_n_0;
  wire pulse_2_i_31_n_0;
  wire pulse_2_i_320_n_0;
  wire pulse_2_i_321_n_0;
  wire pulse_2_i_32_n_0;
  wire pulse_2_i_33_n_0;
  wire pulse_2_i_34_n_0;
  wire pulse_2_i_35_n_0;
  wire pulse_2_i_36_n_0;
  wire pulse_2_i_5_n_0;
  wire pulse_2_i_6_n_0;
  wire pulse_2_i_7_n_0;
  wire [0:0]pulse_2_reg_0;
  wire [0:0]pulse_2_reg_1;
  wire pulse_2_reg_i_110_n_0;
  wire pulse_2_reg_i_110_n_1;
  wire pulse_2_reg_i_110_n_2;
  wire pulse_2_reg_i_110_n_3;
  wire [3:0]pulse_2_reg_i_116_0;
  wire [1:0]pulse_2_reg_i_116_1;
  wire pulse_2_reg_i_116_n_0;
  wire pulse_2_reg_i_116_n_1;
  wire pulse_2_reg_i_116_n_2;
  wire pulse_2_reg_i_116_n_3;
  wire [3:0]pulse_2_reg_i_147;
  wire pulse_2_reg_i_166_n_0;
  wire pulse_2_reg_i_166_n_1;
  wire pulse_2_reg_i_166_n_2;
  wire pulse_2_reg_i_166_n_3;
  wire [3:0]pulse_2_reg_i_179_0;
  wire pulse_2_reg_i_179_n_0;
  wire pulse_2_reg_i_179_n_1;
  wire pulse_2_reg_i_179_n_2;
  wire pulse_2_reg_i_179_n_3;
  wire pulse_2_reg_i_240_n_0;
  wire pulse_2_reg_i_240_n_1;
  wire pulse_2_reg_i_240_n_2;
  wire pulse_2_reg_i_240_n_3;
  wire [1:0]pulse_2_reg_i_254_0;
  wire pulse_2_reg_i_254_n_0;
  wire pulse_2_reg_i_254_n_1;
  wire pulse_2_reg_i_254_n_2;
  wire pulse_2_reg_i_254_n_3;
  wire pulse_2_reg_i_26_n_1;
  wire pulse_2_reg_i_26_n_2;
  wire pulse_2_reg_i_26_n_3;
  wire [0:0]pulse_2_reg_i_28;
  wire pulse_2_reg_i_2_n_1;
  wire pulse_2_reg_i_2_n_2;
  wire pulse_2_reg_i_2_n_3;
  wire [0:0]pulse_2_reg_i_38;
  wire [1:0]pulse_2_reg_i_3_0;
  wire pulse_2_reg_i_3_1;
  wire pulse_2_reg_i_3_2;
  wire pulse_2_reg_i_3_n_1;
  wire pulse_2_reg_i_3_n_2;
  wire pulse_2_reg_i_3_n_3;
  wire [3:0]pulse_2_reg_i_52;
  wire pulse_2_reg_i_54_n_0;
  wire pulse_2_reg_i_54_n_1;
  wire pulse_2_reg_i_54_n_2;
  wire pulse_2_reg_i_54_n_3;
  wire [3:0]pulse_2_reg_i_75;
  wire [3:0]pulse_2_reg_i_94;
  wire pulse_2_reg_i_96_n_0;
  wire pulse_2_reg_i_96_n_1;
  wire pulse_2_reg_i_96_n_2;
  wire pulse_2_reg_i_96_n_3;
  wire pulse_2_reg_i_9_0;
  wire [1:0]pulse_2_reg_i_9_1;
  wire pulse_2_reg_i_9_2;
  wire pulse_2_reg_i_9_3;
  wire [1:0]pulse_2_reg_i_9_4;
  wire pulse_2_reg_i_9_5;
  wire pulse_2_reg_i_9_6;
  wire pulse_2_reg_i_9_n_0;
  wire pulse_2_reg_i_9_n_1;
  wire pulse_2_reg_i_9_n_2;
  wire pulse_2_reg_i_9_n_3;
  wire pulse_3;
  wire pulse_30;
  wire pulse_3_i_10_n_0;
  wire pulse_3_i_11_n_0;
  wire pulse_3_i_12_n_0;
  wire pulse_3_i_13_n_0;
  wire pulse_3_i_14_n_0;
  wire pulse_3_i_15_n_0;
  wire [3:0]pulse_3_i_160_0;
  wire pulse_3_i_160_n_0;
  wire pulse_3_i_167_n_0;
  wire pulse_3_i_168_n_0;
  wire [3:0]pulse_3_i_169_0;
  wire pulse_3_i_169_n_0;
  wire [2:0]pulse_3_i_172;
  wire pulse_3_i_180_n_0;
  wire pulse_3_i_181_n_0;
  wire [3:0]pulse_3_i_182_0;
  wire pulse_3_i_182_n_0;
  wire pulse_3_i_241_n_0;
  wire pulse_3_i_242_n_0;
  wire pulse_3_i_243_n_0;
  wire [3:0]pulse_3_i_244_0;
  wire pulse_3_i_244_n_0;
  wire [3:0]pulse_3_i_247;
  wire pulse_3_i_255_n_0;
  wire pulse_3_i_256_n_0;
  wire pulse_3_i_257_n_0;
  wire [3:0]pulse_3_i_258_0;
  wire pulse_3_i_258_n_0;
  wire pulse_3_i_29_n_0;
  wire pulse_3_i_309_n_0;
  wire pulse_3_i_30_n_0;
  wire pulse_3_i_310_n_0;
  wire pulse_3_i_311_n_0;
  wire [2:0]pulse_3_i_313;
  wire [1:0]pulse_3_i_313_0;
  wire pulse_3_i_319_n_0;
  wire pulse_3_i_31_n_0;
  wire pulse_3_i_320_n_0;
  wire pulse_3_i_321_n_0;
  wire pulse_3_i_32_n_0;
  wire pulse_3_i_33_n_0;
  wire pulse_3_i_34_n_0;
  wire pulse_3_i_35_n_0;
  wire pulse_3_i_36_n_0;
  wire pulse_3_i_5_n_0;
  wire pulse_3_i_6_n_0;
  wire pulse_3_i_7_n_0;
  wire [0:0]pulse_3_reg_0;
  wire [0:0]pulse_3_reg_1;
  wire pulse_3_reg_i_110_n_0;
  wire pulse_3_reg_i_110_n_1;
  wire pulse_3_reg_i_110_n_2;
  wire pulse_3_reg_i_110_n_3;
  wire [3:0]pulse_3_reg_i_116_0;
  wire [1:0]pulse_3_reg_i_116_1;
  wire pulse_3_reg_i_116_n_0;
  wire pulse_3_reg_i_116_n_1;
  wire pulse_3_reg_i_116_n_2;
  wire pulse_3_reg_i_116_n_3;
  wire [3:0]pulse_3_reg_i_147;
  wire pulse_3_reg_i_166_n_0;
  wire pulse_3_reg_i_166_n_1;
  wire pulse_3_reg_i_166_n_2;
  wire pulse_3_reg_i_166_n_3;
  wire [3:0]pulse_3_reg_i_179_0;
  wire pulse_3_reg_i_179_n_0;
  wire pulse_3_reg_i_179_n_1;
  wire pulse_3_reg_i_179_n_2;
  wire pulse_3_reg_i_179_n_3;
  wire pulse_3_reg_i_240_n_0;
  wire pulse_3_reg_i_240_n_1;
  wire pulse_3_reg_i_240_n_2;
  wire pulse_3_reg_i_240_n_3;
  wire [1:0]pulse_3_reg_i_254_0;
  wire pulse_3_reg_i_254_n_0;
  wire pulse_3_reg_i_254_n_1;
  wire pulse_3_reg_i_254_n_2;
  wire pulse_3_reg_i_254_n_3;
  wire pulse_3_reg_i_26_n_1;
  wire pulse_3_reg_i_26_n_2;
  wire pulse_3_reg_i_26_n_3;
  wire [0:0]pulse_3_reg_i_28;
  wire pulse_3_reg_i_2_n_1;
  wire pulse_3_reg_i_2_n_2;
  wire pulse_3_reg_i_2_n_3;
  wire [0:0]pulse_3_reg_i_38;
  wire [1:0]pulse_3_reg_i_3_0;
  wire pulse_3_reg_i_3_1;
  wire pulse_3_reg_i_3_2;
  wire pulse_3_reg_i_3_n_1;
  wire pulse_3_reg_i_3_n_2;
  wire pulse_3_reg_i_3_n_3;
  wire [3:0]pulse_3_reg_i_52;
  wire pulse_3_reg_i_54_n_0;
  wire pulse_3_reg_i_54_n_1;
  wire pulse_3_reg_i_54_n_2;
  wire pulse_3_reg_i_54_n_3;
  wire [3:0]pulse_3_reg_i_75;
  wire [3:0]pulse_3_reg_i_94;
  wire pulse_3_reg_i_96_n_0;
  wire pulse_3_reg_i_96_n_1;
  wire pulse_3_reg_i_96_n_2;
  wire pulse_3_reg_i_96_n_3;
  wire pulse_3_reg_i_9_0;
  wire [1:0]pulse_3_reg_i_9_1;
  wire pulse_3_reg_i_9_2;
  wire pulse_3_reg_i_9_3;
  wire [1:0]pulse_3_reg_i_9_4;
  wire pulse_3_reg_i_9_5;
  wire pulse_3_reg_i_9_6;
  wire pulse_3_reg_i_9_n_0;
  wire pulse_3_reg_i_9_n_1;
  wire pulse_3_reg_i_9_n_2;
  wire pulse_3_reg_i_9_n_3;
  wire sys_clk;
  wire [3:2]\NLW_cnt0_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt0_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt1_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt1_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt2_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt2_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt3_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt3_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_pulse_0_reg_i_2_O_UNCONNECTED;
  wire [3:3]NLW_pulse_0_reg_i_26_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_61_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_0_reg_i_61_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_63_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_0_reg_i_63_O_UNCONNECTED;
  wire [3:0]NLW_pulse_0_reg_i_9_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_2_O_UNCONNECTED;
  wire [3:3]NLW_pulse_1_reg_i_26_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_61_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_1_reg_i_61_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_63_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_1_reg_i_63_O_UNCONNECTED;
  wire [3:0]NLW_pulse_1_reg_i_9_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_2_O_UNCONNECTED;
  wire [3:3]NLW_pulse_2_reg_i_26_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_61_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_2_reg_i_61_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_63_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_2_reg_i_63_O_UNCONNECTED;
  wire [3:0]NLW_pulse_2_reg_i_9_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_2_O_UNCONNECTED;
  wire [3:3]NLW_pulse_3_reg_i_26_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_61_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_3_reg_i_61_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_63_CO_UNCONNECTED;
  wire [3:1]NLW_pulse_3_reg_i_63_O_UNCONNECTED;
  wire [3:0]NLW_pulse_3_reg_i_9_O_UNCONNECTED;

  FDCE \cnt0_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \cnt0_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \cnt0_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \cnt0_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_reg[12]_i_2 
       (.CI(\cnt0_reg[8]_i_2_n_0 ),
        .CO({\cnt0_reg[12]_i_2_n_0 ,\cnt0_reg[12]_i_2_n_1 ,\cnt0_reg[12]_i_2_n_2 ,\cnt0_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt00[11:8]),
        .S(Q[12:9]));
  FDCE \cnt0_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(cnt0[13]));
  FDCE \cnt0_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(cnt0[14]));
  FDCE \cnt0_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(cnt0[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_reg[15]_i_3 
       (.CI(\cnt0_reg[12]_i_2_n_0 ),
        .CO({\NLW_cnt0_reg[15]_i_3_CO_UNCONNECTED [3:2],\cnt0_reg[15]_i_3_n_2 ,\cnt0_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt0_reg[15]_i_3_O_UNCONNECTED [3],cnt00[14:12]}),
        .S({1'b0,cnt0}));
  FDCE \cnt0_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \cnt0_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \cnt0_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \cnt0_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt0_reg[4]_i_2_n_0 ,\cnt0_reg[4]_i_2_n_1 ,\cnt0_reg[4]_i_2_n_2 ,\cnt0_reg[4]_i_2_n_3 }),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt00[3:0]),
        .S(Q[4:1]));
  FDCE \cnt0_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \cnt0_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \cnt0_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \cnt0_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_reg[8]_i_2 
       (.CI(\cnt0_reg[4]_i_2_n_0 ),
        .CO({\cnt0_reg[8]_i_2_n_0 ,\cnt0_reg[8]_i_2_n_1 ,\cnt0_reg[8]_i_2_n_2 ,\cnt0_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt00[7:4]),
        .S(Q[8:5]));
  FDCE \cnt0_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
  FDCE \cnt1_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [0]),
        .Q(\cnt1_reg[12]_0 [0]));
  FDCE \cnt1_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [10]),
        .Q(\cnt1_reg[12]_0 [10]));
  FDCE \cnt1_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [11]),
        .Q(\cnt1_reg[12]_0 [11]));
  FDCE \cnt1_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [12]),
        .Q(\cnt1_reg[12]_0 [12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt1_reg[12]_i_2 
       (.CI(\cnt1_reg[8]_i_2_n_0 ),
        .CO({\cnt1_reg[12]_i_2_n_0 ,\cnt1_reg[12]_i_2_n_1 ,\cnt1_reg[12]_i_2_n_2 ,\cnt1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt10[11:8]),
        .S(\cnt1_reg[12]_0 [12:9]));
  FDCE \cnt1_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [13]),
        .Q(cnt1[13]));
  FDCE \cnt1_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [14]),
        .Q(cnt1[14]));
  FDCE \cnt1_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [15]),
        .Q(cnt1[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt1_reg[15]_i_3 
       (.CI(\cnt1_reg[12]_i_2_n_0 ),
        .CO({\NLW_cnt1_reg[15]_i_3_CO_UNCONNECTED [3:2],\cnt1_reg[15]_i_3_n_2 ,\cnt1_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt1_reg[15]_i_3_O_UNCONNECTED [3],cnt10[14:12]}),
        .S({1'b0,cnt1}));
  FDCE \cnt1_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [1]),
        .Q(\cnt1_reg[12]_0 [1]));
  FDCE \cnt1_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [2]),
        .Q(\cnt1_reg[12]_0 [2]));
  FDCE \cnt1_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [3]),
        .Q(\cnt1_reg[12]_0 [3]));
  FDCE \cnt1_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [4]),
        .Q(\cnt1_reg[12]_0 [4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt1_reg[4]_i_2_n_0 ,\cnt1_reg[4]_i_2_n_1 ,\cnt1_reg[4]_i_2_n_2 ,\cnt1_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt1_reg[12]_0 [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt10[3:0]),
        .S(\cnt1_reg[12]_0 [4:1]));
  FDCE \cnt1_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [5]),
        .Q(\cnt1_reg[12]_0 [5]));
  FDCE \cnt1_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [6]),
        .Q(\cnt1_reg[12]_0 [6]));
  FDCE \cnt1_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [7]),
        .Q(\cnt1_reg[12]_0 [7]));
  FDCE \cnt1_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [8]),
        .Q(\cnt1_reg[12]_0 [8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt1_reg[8]_i_2 
       (.CI(\cnt1_reg[4]_i_2_n_0 ),
        .CO({\cnt1_reg[8]_i_2_n_0 ,\cnt1_reg[8]_i_2_n_1 ,\cnt1_reg[8]_i_2_n_2 ,\cnt1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt10[7:4]),
        .S(\cnt1_reg[12]_0 [8:5]));
  FDCE \cnt1_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt1_reg[15]_1 [9]),
        .Q(\cnt1_reg[12]_0 [9]));
  FDCE \cnt2_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [0]),
        .Q(\cnt2_reg[12]_0 [0]));
  FDCE \cnt2_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [10]),
        .Q(\cnt2_reg[12]_0 [10]));
  FDCE \cnt2_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [11]),
        .Q(\cnt2_reg[12]_0 [11]));
  FDCE \cnt2_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [12]),
        .Q(\cnt2_reg[12]_0 [12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt2_reg[12]_i_2 
       (.CI(\cnt2_reg[8]_i_2_n_0 ),
        .CO({\cnt2_reg[12]_i_2_n_0 ,\cnt2_reg[12]_i_2_n_1 ,\cnt2_reg[12]_i_2_n_2 ,\cnt2_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt20[11:8]),
        .S(\cnt2_reg[12]_0 [12:9]));
  FDCE \cnt2_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [13]),
        .Q(cnt2[13]));
  FDCE \cnt2_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [14]),
        .Q(cnt2[14]));
  FDCE \cnt2_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [15]),
        .Q(cnt2[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt2_reg[15]_i_3 
       (.CI(\cnt2_reg[12]_i_2_n_0 ),
        .CO({\NLW_cnt2_reg[15]_i_3_CO_UNCONNECTED [3:2],\cnt2_reg[15]_i_3_n_2 ,\cnt2_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt2_reg[15]_i_3_O_UNCONNECTED [3],cnt20[14:12]}),
        .S({1'b0,cnt2}));
  FDCE \cnt2_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [1]),
        .Q(\cnt2_reg[12]_0 [1]));
  FDCE \cnt2_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [2]),
        .Q(\cnt2_reg[12]_0 [2]));
  FDCE \cnt2_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [3]),
        .Q(\cnt2_reg[12]_0 [3]));
  FDCE \cnt2_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [4]),
        .Q(\cnt2_reg[12]_0 [4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt2_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt2_reg[4]_i_2_n_0 ,\cnt2_reg[4]_i_2_n_1 ,\cnt2_reg[4]_i_2_n_2 ,\cnt2_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt2_reg[12]_0 [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt20[3:0]),
        .S(\cnt2_reg[12]_0 [4:1]));
  FDCE \cnt2_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [5]),
        .Q(\cnt2_reg[12]_0 [5]));
  FDCE \cnt2_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [6]),
        .Q(\cnt2_reg[12]_0 [6]));
  FDCE \cnt2_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [7]),
        .Q(\cnt2_reg[12]_0 [7]));
  FDCE \cnt2_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [8]),
        .Q(\cnt2_reg[12]_0 [8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt2_reg[8]_i_2 
       (.CI(\cnt2_reg[4]_i_2_n_0 ),
        .CO({\cnt2_reg[8]_i_2_n_0 ,\cnt2_reg[8]_i_2_n_1 ,\cnt2_reg[8]_i_2_n_2 ,\cnt2_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt20[7:4]),
        .S(\cnt2_reg[12]_0 [8:5]));
  FDCE \cnt2_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt2_reg[15]_1 [9]),
        .Q(\cnt2_reg[12]_0 [9]));
  FDCE \cnt3_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [0]),
        .Q(\cnt3_reg[12]_0 [0]));
  FDCE \cnt3_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [10]),
        .Q(\cnt3_reg[12]_0 [10]));
  FDCE \cnt3_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [11]),
        .Q(\cnt3_reg[12]_0 [11]));
  FDCE \cnt3_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [12]),
        .Q(\cnt3_reg[12]_0 [12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt3_reg[12]_i_2 
       (.CI(\cnt3_reg[8]_i_2_n_0 ),
        .CO({\cnt3_reg[12]_i_2_n_0 ,\cnt3_reg[12]_i_2_n_1 ,\cnt3_reg[12]_i_2_n_2 ,\cnt3_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt30[11:8]),
        .S(\cnt3_reg[12]_0 [12:9]));
  FDCE \cnt3_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [13]),
        .Q(cnt3[13]));
  FDCE \cnt3_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [14]),
        .Q(cnt3[14]));
  FDCE \cnt3_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [15]),
        .Q(cnt3[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt3_reg[15]_i_3 
       (.CI(\cnt3_reg[12]_i_2_n_0 ),
        .CO({\NLW_cnt3_reg[15]_i_3_CO_UNCONNECTED [3:2],\cnt3_reg[15]_i_3_n_2 ,\cnt3_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt3_reg[15]_i_3_O_UNCONNECTED [3],cnt30[14:12]}),
        .S({1'b0,cnt3}));
  FDCE \cnt3_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [1]),
        .Q(\cnt3_reg[12]_0 [1]));
  FDCE \cnt3_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [2]),
        .Q(\cnt3_reg[12]_0 [2]));
  FDCE \cnt3_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [3]),
        .Q(\cnt3_reg[12]_0 [3]));
  FDCE \cnt3_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [4]),
        .Q(\cnt3_reg[12]_0 [4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt3_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt3_reg[4]_i_2_n_0 ,\cnt3_reg[4]_i_2_n_1 ,\cnt3_reg[4]_i_2_n_2 ,\cnt3_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt3_reg[12]_0 [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt30[3:0]),
        .S(\cnt3_reg[12]_0 [4:1]));
  FDCE \cnt3_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [5]),
        .Q(\cnt3_reg[12]_0 [5]));
  FDCE \cnt3_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [6]),
        .Q(\cnt3_reg[12]_0 [6]));
  FDCE \cnt3_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [7]),
        .Q(\cnt3_reg[12]_0 [7]));
  FDCE \cnt3_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [8]),
        .Q(\cnt3_reg[12]_0 [8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt3_reg[8]_i_2 
       (.CI(\cnt3_reg[4]_i_2_n_0 ),
        .CO({\cnt3_reg[8]_i_2_n_0 ,\cnt3_reg[8]_i_2_n_1 ,\cnt3_reg[8]_i_2_n_2 ,\cnt3_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt30[7:4]),
        .S(\cnt3_reg[12]_0 [8:5]));
  FDCE \cnt3_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt3_reg[15]_0 [9]),
        .Q(\cnt3_reg[12]_0 [9]));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_0_i_10
       (.I0(Q[10]),
        .I1(pulse_0_reg_i_3_1),
        .I2(DI[2]),
        .I3(pulse_0_reg_i_9_0),
        .I4(pulse_0_reg_i_3_0[1]),
        .I5(Q[11]),
        .O(pulse_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_0_i_11
       (.I0(Q[8]),
        .I1(pulse_0_reg_i_3_2),
        .I2(DI[0]),
        .I3(pulse_0_reg_i_9_0),
        .I4(pulse_0_reg_i_3_0[0]),
        .I5(Q[9]),
        .O(pulse_0_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pulse_0_i_12
       (.I0(cnt0[15]),
        .I1(cnt0[14]),
        .O(pulse_0_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pulse_0_i_13
       (.I0(cnt0[13]),
        .I1(Q[12]),
        .O(pulse_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_0_i_14
       (.I0(Q[11]),
        .I1(pulse_0_reg_i_3_0[1]),
        .I2(pulse_0_reg_i_9_0),
        .I3(DI[2]),
        .I4(pulse_0_reg_i_3_1),
        .I5(Q[10]),
        .O(pulse_0_i_14_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_0_i_15
       (.I0(Q[9]),
        .I1(pulse_0_reg_i_3_0[0]),
        .I2(pulse_0_reg_i_9_0),
        .I3(DI[0]),
        .I4(pulse_0_reg_i_3_2),
        .I5(Q[8]),
        .O(pulse_0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_160
       (.I0(O[0]),
        .O(pulse_0_i_160_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_167
       (.I0(DI[2]),
        .I1(DI[0]),
        .O(pulse_0_i_167_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_168
       (.I0(DI[1]),
        .I1(pulse_0_i_247[3]),
        .O(pulse_0_i_168_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_169
       (.I0(DI[0]),
        .I1(pulse_0_i_247[2]),
        .O(pulse_0_i_169_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_180
       (.I0(pulse_0_reg_i_116_1[1]),
        .I1(pulse_0_reg_i_116_0[3]),
        .O(pulse_0_i_180_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_181
       (.I0(pulse_0_reg_i_116_1[0]),
        .I1(pulse_0_reg_i_116_0[2]),
        .O(pulse_0_i_181_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_182
       (.I0(pulse_0_reg_i_116_0[3]),
        .I1(pulse_0_reg_i_116_0[1]),
        .O(pulse_0_i_182_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_241
       (.I0(pulse_0_i_247[3]),
        .I1(pulse_0_i_247[1]),
        .O(pulse_0_i_241_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_242
       (.I0(pulse_0_i_247[2]),
        .I1(pulse_0_i_247[0]),
        .O(pulse_0_i_242_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_243
       (.I0(pulse_0_i_247[1]),
        .I1(pulse_0_i_313[2]),
        .O(pulse_0_i_243_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_244
       (.I0(pulse_0_i_247[0]),
        .I1(pulse_0_i_313[1]),
        .O(pulse_0_i_244_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_255
       (.I0(pulse_0_reg_i_116_0[2]),
        .I1(pulse_0_reg_i_116_0[0]),
        .O(pulse_0_i_255_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_256
       (.I0(pulse_0_reg_i_116_0[1]),
        .I1(pulse_0_reg_i_179_0[3]),
        .O(pulse_0_i_256_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_257
       (.I0(pulse_0_reg_i_116_0[0]),
        .I1(pulse_0_reg_i_179_0[2]),
        .O(pulse_0_i_257_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_258
       (.I0(pulse_0_reg_i_179_0[3]),
        .I1(pulse_0_reg_i_179_0[1]),
        .O(pulse_0_i_258_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_0_i_29
       (.I0(Q[6]),
        .I1(pulse_0_reg_i_9_2),
        .I2(pulse_0_i_247[2]),
        .I3(pulse_0_reg_i_9_0),
        .I4(pulse_0_reg_i_9_1[1]),
        .I5(Q[7]),
        .O(pulse_0_i_29_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_0_i_30
       (.I0(Q[4]),
        .I1(pulse_0_reg_i_9_3),
        .I2(pulse_0_i_247[0]),
        .I3(pulse_0_reg_i_9_0),
        .I4(pulse_0_reg_i_9_1[0]),
        .I5(Q[5]),
        .O(pulse_0_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_309
       (.I0(pulse_0_i_313[2]),
        .I1(pulse_0_i_313[0]),
        .O(pulse_0_i_309_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_0_i_31
       (.I0(Q[2]),
        .I1(pulse_0_reg_i_9_5),
        .I2(pulse_0_i_313[1]),
        .I3(pulse_0_reg_i_9_0),
        .I4(pulse_0_reg_i_9_4[1]),
        .I5(Q[3]),
        .O(pulse_0_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_310
       (.I0(pulse_0_i_313[1]),
        .I1(pulse_0_i_313_0[1]),
        .O(pulse_0_i_310_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_311
       (.I0(pulse_0_i_313[0]),
        .I1(pulse_0_i_313_0[0]),
        .O(pulse_0_i_311_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_319
       (.I0(pulse_0_reg_i_179_0[2]),
        .I1(pulse_0_reg_i_179_0[0]),
        .O(pulse_0_i_319_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_0_i_32
       (.I0(Q[0]),
        .I1(pulse_0_reg_i_9_6),
        .I2(pulse_0_i_313_0[1]),
        .I3(pulse_0_reg_i_9_0),
        .I4(pulse_0_reg_i_9_4[0]),
        .I5(Q[1]),
        .O(pulse_0_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_320
       (.I0(pulse_0_reg_i_179_0[1]),
        .I1(O[1]),
        .O(pulse_0_i_320_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_0_i_321
       (.I0(pulse_0_reg_i_179_0[0]),
        .I1(O[0]),
        .O(pulse_0_i_321_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_0_i_33
       (.I0(Q[7]),
        .I1(pulse_0_reg_i_9_1[1]),
        .I2(pulse_0_reg_i_9_0),
        .I3(pulse_0_i_247[2]),
        .I4(pulse_0_reg_i_9_2),
        .I5(Q[6]),
        .O(pulse_0_i_33_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_0_i_34
       (.I0(Q[5]),
        .I1(pulse_0_reg_i_9_1[0]),
        .I2(pulse_0_reg_i_9_0),
        .I3(pulse_0_i_247[0]),
        .I4(pulse_0_reg_i_9_3),
        .I5(Q[4]),
        .O(pulse_0_i_34_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_0_i_35
       (.I0(Q[3]),
        .I1(pulse_0_reg_i_9_4[1]),
        .I2(pulse_0_reg_i_9_0),
        .I3(pulse_0_i_313[1]),
        .I4(pulse_0_reg_i_9_5),
        .I5(Q[2]),
        .O(pulse_0_i_35_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_0_i_36
       (.I0(Q[1]),
        .I1(pulse_0_reg_i_9_4[0]),
        .I2(pulse_0_reg_i_9_0),
        .I3(pulse_0_i_313_0[1]),
        .I4(pulse_0_reg_i_9_6),
        .I5(Q[0]),
        .O(pulse_0_i_36_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_5
       (.I0(cnt0[15]),
        .O(pulse_0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_6
       (.I0(cnt0[14]),
        .O(pulse_0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_7
       (.I0(cnt0[13]),
        .O(pulse_0_i_7_n_0));
  FDCE pulse_0_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pulse_00),
        .Q(pulse_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_110
       (.CI(pulse_0_reg_i_166_n_0),
        .CO({pulse_0_reg_i_110_n_0,pulse_0_reg_i_110_n_1,pulse_0_reg_i_110_n_2,pulse_0_reg_i_110_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,DI}),
        .O(pulse_0_i_169_0),
        .S({DI[1],pulse_0_i_167_n_0,pulse_0_i_168_n_0,pulse_0_i_169_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_116
       (.CI(pulse_0_reg_i_179_n_0),
        .CO({pulse_0_reg_i_116_n_0,pulse_0_reg_i_116_n_1,pulse_0_reg_i_116_n_2,pulse_0_reg_i_116_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pulse_0_reg_i_116_1,pulse_0_reg_i_116_0[3]}),
        .O(pulse_0_i_182_0),
        .S({pulse_0_reg_i_116_1[0],pulse_0_i_180_n_0,pulse_0_i_181_n_0,pulse_0_i_182_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_166
       (.CI(pulse_0_reg_i_240_n_0),
        .CO({pulse_0_reg_i_166_n_0,pulse_0_reg_i_166_n_1,pulse_0_reg_i_166_n_2,pulse_0_reg_i_166_n_3}),
        .CYINIT(1'b0),
        .DI(pulse_0_i_247),
        .O(pulse_0_i_244_0),
        .S({pulse_0_i_241_n_0,pulse_0_i_242_n_0,pulse_0_i_243_n_0,pulse_0_i_244_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_179
       (.CI(pulse_0_reg_i_254_n_0),
        .CO({pulse_0_reg_i_179_n_0,pulse_0_reg_i_179_n_1,pulse_0_reg_i_179_n_2,pulse_0_reg_i_179_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_reg_i_116_0[2:0],pulse_0_reg_i_179_0[3]}),
        .O(pulse_0_i_258_0),
        .S({pulse_0_i_255_n_0,pulse_0_i_256_n_0,pulse_0_i_257_n_0,pulse_0_i_258_n_0}));
  CARRY4 pulse_0_reg_i_2
       (.CI(pulse_0_reg_0),
        .CO({\cnt0_reg[15]_0 ,pulse_0_reg_i_2_n_1,pulse_0_reg_i_2_n_2,pulse_0_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt0,Q[12]}),
        .O(NLW_pulse_0_reg_i_2_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_5_n_0,pulse_0_i_6_n_0,pulse_0_i_7_n_0,S}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_240
       (.CI(1'b0),
        .CO({pulse_0_reg_i_240_n_0,pulse_0_reg_i_240_n_1,pulse_0_reg_i_240_n_2,pulse_0_reg_i_240_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_313,1'b0}),
        .O(pulse_0_reg_i_75),
        .S({pulse_0_i_309_n_0,pulse_0_i_310_n_0,pulse_0_i_311_n_0,pulse_0_i_313_0[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_254
       (.CI(1'b0),
        .CO({pulse_0_reg_i_254_n_0,pulse_0_reg_i_254_n_1,pulse_0_reg_i_254_n_2,pulse_0_reg_i_254_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_reg_i_179_0[2:0],1'b0}),
        .O(pulse_0_reg_i_147),
        .S({pulse_0_i_319_n_0,pulse_0_i_320_n_0,pulse_0_i_321_n_0,O[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_26
       (.CI(pulse_0_reg_i_54_n_0),
        .CO({NLW_pulse_0_reg_i_26_CO_UNCONNECTED[3],pulse_0_reg_i_26_n_1,pulse_0_reg_i_26_n_2,pulse_0_reg_i_26_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pulse_0_reg_i_52),
        .S({pulse_0_reg_i_116_1,pulse_0_reg_i_116_0[3:2]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_0_reg_i_3
       (.CI(pulse_0_reg_i_9_n_0),
        .CO({\cnt0_reg[10]_0 ,pulse_0_reg_i_3_n_1,pulse_0_reg_i_3_n_2,pulse_0_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_0_i_10_n_0,pulse_0_i_11_n_0}),
        .O(NLW_pulse_0_reg_i_3_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_12_n_0,pulse_0_i_13_n_0,pulse_0_i_14_n_0,pulse_0_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_54
       (.CI(pulse_0_reg_i_96_n_0),
        .CO({pulse_0_reg_i_54_n_0,pulse_0_reg_i_54_n_1,pulse_0_reg_i_54_n_2,pulse_0_reg_i_54_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pulse_0_reg_i_94),
        .S({pulse_0_reg_i_116_0[1:0],pulse_0_reg_i_179_0[3:2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_61
       (.CI(pulse_0_reg_i_110_n_0),
        .CO(NLW_pulse_0_reg_i_61_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_0_reg_i_61_O_UNCONNECTED[3:1],pulse_0_reg_i_38}),
        .S({1'b0,1'b0,1'b0,DI[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_63
       (.CI(pulse_0_reg_i_116_n_0),
        .CO(NLW_pulse_0_reg_i_63_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_0_reg_i_63_O_UNCONNECTED[3:1],pulse_0_reg_i_28}),
        .S({1'b0,1'b0,1'b0,pulse_0_reg_i_116_1[1]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_0_reg_i_9
       (.CI(1'b0),
        .CO({pulse_0_reg_i_9_n_0,pulse_0_reg_i_9_n_1,pulse_0_reg_i_9_n_2,pulse_0_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_0_i_29_n_0,pulse_0_i_30_n_0,pulse_0_i_31_n_0,pulse_0_i_32_n_0}),
        .O(NLW_pulse_0_reg_i_9_O_UNCONNECTED[3:0]),
        .S({pulse_0_i_33_n_0,pulse_0_i_34_n_0,pulse_0_i_35_n_0,pulse_0_i_36_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_96
       (.CI(1'b0),
        .CO({pulse_0_reg_i_96_n_0,pulse_0_reg_i_96_n_1,pulse_0_reg_i_96_n_2,pulse_0_reg_i_96_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(pulse_0_i_160_0),
        .S({pulse_0_reg_i_179_0[1:0],O[1],pulse_0_i_160_n_0}));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_1_i_10
       (.I0(\cnt1_reg[12]_0 [10]),
        .I1(pulse_1_reg_i_3_1),
        .I2(pulse_1_i_172[2]),
        .I3(pulse_1_reg_i_9_0),
        .I4(pulse_1_reg_i_3_0[1]),
        .I5(\cnt1_reg[12]_0 [11]),
        .O(pulse_1_i_10_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_1_i_11
       (.I0(\cnt1_reg[12]_0 [8]),
        .I1(pulse_1_reg_i_3_2),
        .I2(pulse_1_i_172[0]),
        .I3(pulse_1_reg_i_9_0),
        .I4(pulse_1_reg_i_3_0[0]),
        .I5(\cnt1_reg[12]_0 [9]),
        .O(pulse_1_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pulse_1_i_12
       (.I0(cnt1[15]),
        .I1(cnt1[14]),
        .O(pulse_1_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pulse_1_i_13
       (.I0(cnt1[13]),
        .I1(\cnt1_reg[12]_0 [12]),
        .O(pulse_1_i_13_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_1_i_14
       (.I0(\cnt1_reg[12]_0 [11]),
        .I1(pulse_1_reg_i_3_0[1]),
        .I2(pulse_1_reg_i_9_0),
        .I3(pulse_1_i_172[2]),
        .I4(pulse_1_reg_i_3_1),
        .I5(\cnt1_reg[12]_0 [10]),
        .O(pulse_1_i_14_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_1_i_15
       (.I0(\cnt1_reg[12]_0 [9]),
        .I1(pulse_1_reg_i_3_0[0]),
        .I2(pulse_1_reg_i_9_0),
        .I3(pulse_1_i_172[0]),
        .I4(pulse_1_reg_i_3_2),
        .I5(\cnt1_reg[12]_0 [8]),
        .O(pulse_1_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_160
       (.I0(pulse_1_reg_i_254_0[0]),
        .O(pulse_1_i_160_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_167
       (.I0(pulse_1_i_172[2]),
        .I1(pulse_1_i_172[0]),
        .O(pulse_1_i_167_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_168
       (.I0(pulse_1_i_172[1]),
        .I1(pulse_1_i_247[3]),
        .O(pulse_1_i_168_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_169
       (.I0(pulse_1_i_172[0]),
        .I1(pulse_1_i_247[2]),
        .O(pulse_1_i_169_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_180
       (.I0(pulse_1_reg_i_116_1[1]),
        .I1(pulse_1_reg_i_116_0[3]),
        .O(pulse_1_i_180_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_181
       (.I0(pulse_1_reg_i_116_1[0]),
        .I1(pulse_1_reg_i_116_0[2]),
        .O(pulse_1_i_181_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_182
       (.I0(pulse_1_reg_i_116_0[3]),
        .I1(pulse_1_reg_i_116_0[1]),
        .O(pulse_1_i_182_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_241
       (.I0(pulse_1_i_247[3]),
        .I1(pulse_1_i_247[1]),
        .O(pulse_1_i_241_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_242
       (.I0(pulse_1_i_247[2]),
        .I1(pulse_1_i_247[0]),
        .O(pulse_1_i_242_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_243
       (.I0(pulse_1_i_247[1]),
        .I1(pulse_1_i_313[2]),
        .O(pulse_1_i_243_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_244
       (.I0(pulse_1_i_247[0]),
        .I1(pulse_1_i_313[1]),
        .O(pulse_1_i_244_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_255
       (.I0(pulse_1_reg_i_116_0[2]),
        .I1(pulse_1_reg_i_116_0[0]),
        .O(pulse_1_i_255_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_256
       (.I0(pulse_1_reg_i_116_0[1]),
        .I1(pulse_1_reg_i_179_0[3]),
        .O(pulse_1_i_256_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_257
       (.I0(pulse_1_reg_i_116_0[0]),
        .I1(pulse_1_reg_i_179_0[2]),
        .O(pulse_1_i_257_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_258
       (.I0(pulse_1_reg_i_179_0[3]),
        .I1(pulse_1_reg_i_179_0[1]),
        .O(pulse_1_i_258_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_1_i_29
       (.I0(\cnt1_reg[12]_0 [6]),
        .I1(pulse_1_reg_i_9_2),
        .I2(pulse_1_i_247[2]),
        .I3(pulse_1_reg_i_9_0),
        .I4(pulse_1_reg_i_9_1[1]),
        .I5(\cnt1_reg[12]_0 [7]),
        .O(pulse_1_i_29_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_1_i_30
       (.I0(\cnt1_reg[12]_0 [4]),
        .I1(pulse_1_reg_i_9_3),
        .I2(pulse_1_i_247[0]),
        .I3(pulse_1_reg_i_9_0),
        .I4(pulse_1_reg_i_9_1[0]),
        .I5(\cnt1_reg[12]_0 [5]),
        .O(pulse_1_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_309
       (.I0(pulse_1_i_313[2]),
        .I1(pulse_1_i_313[0]),
        .O(pulse_1_i_309_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_1_i_31
       (.I0(\cnt1_reg[12]_0 [2]),
        .I1(pulse_1_reg_i_9_5),
        .I2(pulse_1_i_313[1]),
        .I3(pulse_1_reg_i_9_0),
        .I4(pulse_1_reg_i_9_4[1]),
        .I5(\cnt1_reg[12]_0 [3]),
        .O(pulse_1_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_310
       (.I0(pulse_1_i_313[1]),
        .I1(pulse_1_i_313_0[1]),
        .O(pulse_1_i_310_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_311
       (.I0(pulse_1_i_313[0]),
        .I1(pulse_1_i_313_0[0]),
        .O(pulse_1_i_311_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_319
       (.I0(pulse_1_reg_i_179_0[2]),
        .I1(pulse_1_reg_i_179_0[0]),
        .O(pulse_1_i_319_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_1_i_32
       (.I0(\cnt1_reg[12]_0 [0]),
        .I1(pulse_1_reg_i_9_6),
        .I2(pulse_1_i_313_0[1]),
        .I3(pulse_1_reg_i_9_0),
        .I4(pulse_1_reg_i_9_4[0]),
        .I5(\cnt1_reg[12]_0 [1]),
        .O(pulse_1_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_320
       (.I0(pulse_1_reg_i_179_0[1]),
        .I1(pulse_1_reg_i_254_0[1]),
        .O(pulse_1_i_320_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_1_i_321
       (.I0(pulse_1_reg_i_179_0[0]),
        .I1(pulse_1_reg_i_254_0[0]),
        .O(pulse_1_i_321_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_1_i_33
       (.I0(\cnt1_reg[12]_0 [7]),
        .I1(pulse_1_reg_i_9_1[1]),
        .I2(pulse_1_reg_i_9_0),
        .I3(pulse_1_i_247[2]),
        .I4(pulse_1_reg_i_9_2),
        .I5(\cnt1_reg[12]_0 [6]),
        .O(pulse_1_i_33_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_1_i_34
       (.I0(\cnt1_reg[12]_0 [5]),
        .I1(pulse_1_reg_i_9_1[0]),
        .I2(pulse_1_reg_i_9_0),
        .I3(pulse_1_i_247[0]),
        .I4(pulse_1_reg_i_9_3),
        .I5(\cnt1_reg[12]_0 [4]),
        .O(pulse_1_i_34_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_1_i_35
       (.I0(\cnt1_reg[12]_0 [3]),
        .I1(pulse_1_reg_i_9_4[1]),
        .I2(pulse_1_reg_i_9_0),
        .I3(pulse_1_i_313[1]),
        .I4(pulse_1_reg_i_9_5),
        .I5(\cnt1_reg[12]_0 [2]),
        .O(pulse_1_i_35_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_1_i_36
       (.I0(\cnt1_reg[12]_0 [1]),
        .I1(pulse_1_reg_i_9_4[0]),
        .I2(pulse_1_reg_i_9_0),
        .I3(pulse_1_i_313_0[1]),
        .I4(pulse_1_reg_i_9_6),
        .I5(\cnt1_reg[12]_0 [0]),
        .O(pulse_1_i_36_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_5
       (.I0(cnt1[15]),
        .O(pulse_1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_6
       (.I0(cnt1[14]),
        .O(pulse_1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_7
       (.I0(cnt1[13]),
        .O(pulse_1_i_7_n_0));
  FDCE pulse_1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pulse_10),
        .Q(pulse_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_110
       (.CI(pulse_1_reg_i_166_n_0),
        .CO({pulse_1_reg_i_110_n_0,pulse_1_reg_i_110_n_1,pulse_1_reg_i_110_n_2,pulse_1_reg_i_110_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pulse_1_i_172}),
        .O(pulse_1_i_169_0),
        .S({pulse_1_i_172[1],pulse_1_i_167_n_0,pulse_1_i_168_n_0,pulse_1_i_169_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_116
       (.CI(pulse_1_reg_i_179_n_0),
        .CO({pulse_1_reg_i_116_n_0,pulse_1_reg_i_116_n_1,pulse_1_reg_i_116_n_2,pulse_1_reg_i_116_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pulse_1_reg_i_116_1,pulse_1_reg_i_116_0[3]}),
        .O(pulse_1_i_182_0),
        .S({pulse_1_reg_i_116_1[0],pulse_1_i_180_n_0,pulse_1_i_181_n_0,pulse_1_i_182_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_166
       (.CI(pulse_1_reg_i_240_n_0),
        .CO({pulse_1_reg_i_166_n_0,pulse_1_reg_i_166_n_1,pulse_1_reg_i_166_n_2,pulse_1_reg_i_166_n_3}),
        .CYINIT(1'b0),
        .DI(pulse_1_i_247),
        .O(pulse_1_i_244_0),
        .S({pulse_1_i_241_n_0,pulse_1_i_242_n_0,pulse_1_i_243_n_0,pulse_1_i_244_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_179
       (.CI(pulse_1_reg_i_254_n_0),
        .CO({pulse_1_reg_i_179_n_0,pulse_1_reg_i_179_n_1,pulse_1_reg_i_179_n_2,pulse_1_reg_i_179_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_reg_i_116_0[2:0],pulse_1_reg_i_179_0[3]}),
        .O(pulse_1_i_258_0),
        .S({pulse_1_i_255_n_0,pulse_1_i_256_n_0,pulse_1_i_257_n_0,pulse_1_i_258_n_0}));
  CARRY4 pulse_1_reg_i_2
       (.CI(pulse_1_reg_0),
        .CO({\cnt1_reg[15]_0 ,pulse_1_reg_i_2_n_1,pulse_1_reg_i_2_n_2,pulse_1_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt1,\cnt1_reg[12]_0 [12]}),
        .O(NLW_pulse_1_reg_i_2_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_5_n_0,pulse_1_i_6_n_0,pulse_1_i_7_n_0,pulse_1_reg_1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_240
       (.CI(1'b0),
        .CO({pulse_1_reg_i_240_n_0,pulse_1_reg_i_240_n_1,pulse_1_reg_i_240_n_2,pulse_1_reg_i_240_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_313,1'b0}),
        .O(pulse_1_reg_i_75),
        .S({pulse_1_i_309_n_0,pulse_1_i_310_n_0,pulse_1_i_311_n_0,pulse_1_i_313_0[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_254
       (.CI(1'b0),
        .CO({pulse_1_reg_i_254_n_0,pulse_1_reg_i_254_n_1,pulse_1_reg_i_254_n_2,pulse_1_reg_i_254_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_reg_i_179_0[2:0],1'b0}),
        .O(pulse_1_reg_i_147),
        .S({pulse_1_i_319_n_0,pulse_1_i_320_n_0,pulse_1_i_321_n_0,pulse_1_reg_i_254_0[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_26
       (.CI(pulse_1_reg_i_54_n_0),
        .CO({NLW_pulse_1_reg_i_26_CO_UNCONNECTED[3],pulse_1_reg_i_26_n_1,pulse_1_reg_i_26_n_2,pulse_1_reg_i_26_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pulse_1_reg_i_52),
        .S({pulse_1_reg_i_116_1,pulse_1_reg_i_116_0[3:2]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_1_reg_i_3
       (.CI(pulse_1_reg_i_9_n_0),
        .CO({\cnt1_reg[10]_0 ,pulse_1_reg_i_3_n_1,pulse_1_reg_i_3_n_2,pulse_1_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_1_i_10_n_0,pulse_1_i_11_n_0}),
        .O(NLW_pulse_1_reg_i_3_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_12_n_0,pulse_1_i_13_n_0,pulse_1_i_14_n_0,pulse_1_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_54
       (.CI(pulse_1_reg_i_96_n_0),
        .CO({pulse_1_reg_i_54_n_0,pulse_1_reg_i_54_n_1,pulse_1_reg_i_54_n_2,pulse_1_reg_i_54_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pulse_1_reg_i_94),
        .S({pulse_1_reg_i_116_0[1:0],pulse_1_reg_i_179_0[3:2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_61
       (.CI(pulse_1_reg_i_110_n_0),
        .CO(NLW_pulse_1_reg_i_61_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_1_reg_i_61_O_UNCONNECTED[3:1],pulse_1_reg_i_38}),
        .S({1'b0,1'b0,1'b0,pulse_1_i_172[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_63
       (.CI(pulse_1_reg_i_116_n_0),
        .CO(NLW_pulse_1_reg_i_63_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_1_reg_i_63_O_UNCONNECTED[3:1],pulse_1_reg_i_28}),
        .S({1'b0,1'b0,1'b0,pulse_1_reg_i_116_1[1]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_1_reg_i_9
       (.CI(1'b0),
        .CO({pulse_1_reg_i_9_n_0,pulse_1_reg_i_9_n_1,pulse_1_reg_i_9_n_2,pulse_1_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_1_i_29_n_0,pulse_1_i_30_n_0,pulse_1_i_31_n_0,pulse_1_i_32_n_0}),
        .O(NLW_pulse_1_reg_i_9_O_UNCONNECTED[3:0]),
        .S({pulse_1_i_33_n_0,pulse_1_i_34_n_0,pulse_1_i_35_n_0,pulse_1_i_36_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_96
       (.CI(1'b0),
        .CO({pulse_1_reg_i_96_n_0,pulse_1_reg_i_96_n_1,pulse_1_reg_i_96_n_2,pulse_1_reg_i_96_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(pulse_1_i_160_0),
        .S({pulse_1_reg_i_179_0[1:0],pulse_1_reg_i_254_0[1],pulse_1_i_160_n_0}));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_2_i_10
       (.I0(\cnt2_reg[12]_0 [10]),
        .I1(pulse_2_reg_i_3_1),
        .I2(pulse_2_i_172[2]),
        .I3(pulse_2_reg_i_9_0),
        .I4(pulse_2_reg_i_3_0[1]),
        .I5(\cnt2_reg[12]_0 [11]),
        .O(pulse_2_i_10_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_2_i_11
       (.I0(\cnt2_reg[12]_0 [8]),
        .I1(pulse_2_reg_i_3_2),
        .I2(pulse_2_i_172[0]),
        .I3(pulse_2_reg_i_9_0),
        .I4(pulse_2_reg_i_3_0[0]),
        .I5(\cnt2_reg[12]_0 [9]),
        .O(pulse_2_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pulse_2_i_12
       (.I0(cnt2[15]),
        .I1(cnt2[14]),
        .O(pulse_2_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pulse_2_i_13
       (.I0(cnt2[13]),
        .I1(\cnt2_reg[12]_0 [12]),
        .O(pulse_2_i_13_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_2_i_14
       (.I0(\cnt2_reg[12]_0 [11]),
        .I1(pulse_2_reg_i_3_0[1]),
        .I2(pulse_2_reg_i_9_0),
        .I3(pulse_2_i_172[2]),
        .I4(pulse_2_reg_i_3_1),
        .I5(\cnt2_reg[12]_0 [10]),
        .O(pulse_2_i_14_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_2_i_15
       (.I0(\cnt2_reg[12]_0 [9]),
        .I1(pulse_2_reg_i_3_0[0]),
        .I2(pulse_2_reg_i_9_0),
        .I3(pulse_2_i_172[0]),
        .I4(pulse_2_reg_i_3_2),
        .I5(\cnt2_reg[12]_0 [8]),
        .O(pulse_2_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_160
       (.I0(pulse_2_reg_i_254_0[0]),
        .O(pulse_2_i_160_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_167
       (.I0(pulse_2_i_172[2]),
        .I1(pulse_2_i_172[0]),
        .O(pulse_2_i_167_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_168
       (.I0(pulse_2_i_172[1]),
        .I1(pulse_2_i_247[3]),
        .O(pulse_2_i_168_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_169
       (.I0(pulse_2_i_172[0]),
        .I1(pulse_2_i_247[2]),
        .O(pulse_2_i_169_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_180
       (.I0(pulse_2_reg_i_116_1[1]),
        .I1(pulse_2_reg_i_116_0[3]),
        .O(pulse_2_i_180_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_181
       (.I0(pulse_2_reg_i_116_1[0]),
        .I1(pulse_2_reg_i_116_0[2]),
        .O(pulse_2_i_181_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_182
       (.I0(pulse_2_reg_i_116_0[3]),
        .I1(pulse_2_reg_i_116_0[1]),
        .O(pulse_2_i_182_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_241
       (.I0(pulse_2_i_247[3]),
        .I1(pulse_2_i_247[1]),
        .O(pulse_2_i_241_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_242
       (.I0(pulse_2_i_247[2]),
        .I1(pulse_2_i_247[0]),
        .O(pulse_2_i_242_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_243
       (.I0(pulse_2_i_247[1]),
        .I1(pulse_2_i_313[2]),
        .O(pulse_2_i_243_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_244
       (.I0(pulse_2_i_247[0]),
        .I1(pulse_2_i_313[1]),
        .O(pulse_2_i_244_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_255
       (.I0(pulse_2_reg_i_116_0[2]),
        .I1(pulse_2_reg_i_116_0[0]),
        .O(pulse_2_i_255_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_256
       (.I0(pulse_2_reg_i_116_0[1]),
        .I1(pulse_2_reg_i_179_0[3]),
        .O(pulse_2_i_256_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_257
       (.I0(pulse_2_reg_i_116_0[0]),
        .I1(pulse_2_reg_i_179_0[2]),
        .O(pulse_2_i_257_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_258
       (.I0(pulse_2_reg_i_179_0[3]),
        .I1(pulse_2_reg_i_179_0[1]),
        .O(pulse_2_i_258_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_2_i_29
       (.I0(\cnt2_reg[12]_0 [6]),
        .I1(pulse_2_reg_i_9_2),
        .I2(pulse_2_i_247[2]),
        .I3(pulse_2_reg_i_9_0),
        .I4(pulse_2_reg_i_9_1[1]),
        .I5(\cnt2_reg[12]_0 [7]),
        .O(pulse_2_i_29_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_2_i_30
       (.I0(\cnt2_reg[12]_0 [4]),
        .I1(pulse_2_reg_i_9_3),
        .I2(pulse_2_i_247[0]),
        .I3(pulse_2_reg_i_9_0),
        .I4(pulse_2_reg_i_9_1[0]),
        .I5(\cnt2_reg[12]_0 [5]),
        .O(pulse_2_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_309
       (.I0(pulse_2_i_313[2]),
        .I1(pulse_2_i_313[0]),
        .O(pulse_2_i_309_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_2_i_31
       (.I0(\cnt2_reg[12]_0 [2]),
        .I1(pulse_2_reg_i_9_5),
        .I2(pulse_2_i_313[1]),
        .I3(pulse_2_reg_i_9_0),
        .I4(pulse_2_reg_i_9_4[1]),
        .I5(\cnt2_reg[12]_0 [3]),
        .O(pulse_2_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_310
       (.I0(pulse_2_i_313[1]),
        .I1(pulse_2_i_313_0[1]),
        .O(pulse_2_i_310_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_311
       (.I0(pulse_2_i_313[0]),
        .I1(pulse_2_i_313_0[0]),
        .O(pulse_2_i_311_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_319
       (.I0(pulse_2_reg_i_179_0[2]),
        .I1(pulse_2_reg_i_179_0[0]),
        .O(pulse_2_i_319_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_2_i_32
       (.I0(\cnt2_reg[12]_0 [0]),
        .I1(pulse_2_reg_i_9_6),
        .I2(pulse_2_i_313_0[1]),
        .I3(pulse_2_reg_i_9_0),
        .I4(pulse_2_reg_i_9_4[0]),
        .I5(\cnt2_reg[12]_0 [1]),
        .O(pulse_2_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_320
       (.I0(pulse_2_reg_i_179_0[1]),
        .I1(pulse_2_reg_i_254_0[1]),
        .O(pulse_2_i_320_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_2_i_321
       (.I0(pulse_2_reg_i_179_0[0]),
        .I1(pulse_2_reg_i_254_0[0]),
        .O(pulse_2_i_321_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_2_i_33
       (.I0(\cnt2_reg[12]_0 [7]),
        .I1(pulse_2_reg_i_9_1[1]),
        .I2(pulse_2_reg_i_9_0),
        .I3(pulse_2_i_247[2]),
        .I4(pulse_2_reg_i_9_2),
        .I5(\cnt2_reg[12]_0 [6]),
        .O(pulse_2_i_33_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_2_i_34
       (.I0(\cnt2_reg[12]_0 [5]),
        .I1(pulse_2_reg_i_9_1[0]),
        .I2(pulse_2_reg_i_9_0),
        .I3(pulse_2_i_247[0]),
        .I4(pulse_2_reg_i_9_3),
        .I5(\cnt2_reg[12]_0 [4]),
        .O(pulse_2_i_34_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_2_i_35
       (.I0(\cnt2_reg[12]_0 [3]),
        .I1(pulse_2_reg_i_9_4[1]),
        .I2(pulse_2_reg_i_9_0),
        .I3(pulse_2_i_313[1]),
        .I4(pulse_2_reg_i_9_5),
        .I5(\cnt2_reg[12]_0 [2]),
        .O(pulse_2_i_35_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_2_i_36
       (.I0(\cnt2_reg[12]_0 [1]),
        .I1(pulse_2_reg_i_9_4[0]),
        .I2(pulse_2_reg_i_9_0),
        .I3(pulse_2_i_313_0[1]),
        .I4(pulse_2_reg_i_9_6),
        .I5(\cnt2_reg[12]_0 [0]),
        .O(pulse_2_i_36_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_5
       (.I0(cnt2[15]),
        .O(pulse_2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_6
       (.I0(cnt2[14]),
        .O(pulse_2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_7
       (.I0(cnt2[13]),
        .O(pulse_2_i_7_n_0));
  FDCE pulse_2_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pulse_20),
        .Q(pulse_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_110
       (.CI(pulse_2_reg_i_166_n_0),
        .CO({pulse_2_reg_i_110_n_0,pulse_2_reg_i_110_n_1,pulse_2_reg_i_110_n_2,pulse_2_reg_i_110_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pulse_2_i_172}),
        .O(pulse_2_i_169_0),
        .S({pulse_2_i_172[1],pulse_2_i_167_n_0,pulse_2_i_168_n_0,pulse_2_i_169_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_116
       (.CI(pulse_2_reg_i_179_n_0),
        .CO({pulse_2_reg_i_116_n_0,pulse_2_reg_i_116_n_1,pulse_2_reg_i_116_n_2,pulse_2_reg_i_116_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pulse_2_reg_i_116_1,pulse_2_reg_i_116_0[3]}),
        .O(pulse_2_i_182_0),
        .S({pulse_2_reg_i_116_1[0],pulse_2_i_180_n_0,pulse_2_i_181_n_0,pulse_2_i_182_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_166
       (.CI(pulse_2_reg_i_240_n_0),
        .CO({pulse_2_reg_i_166_n_0,pulse_2_reg_i_166_n_1,pulse_2_reg_i_166_n_2,pulse_2_reg_i_166_n_3}),
        .CYINIT(1'b0),
        .DI(pulse_2_i_247),
        .O(pulse_2_i_244_0),
        .S({pulse_2_i_241_n_0,pulse_2_i_242_n_0,pulse_2_i_243_n_0,pulse_2_i_244_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_179
       (.CI(pulse_2_reg_i_254_n_0),
        .CO({pulse_2_reg_i_179_n_0,pulse_2_reg_i_179_n_1,pulse_2_reg_i_179_n_2,pulse_2_reg_i_179_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_reg_i_116_0[2:0],pulse_2_reg_i_179_0[3]}),
        .O(pulse_2_i_258_0),
        .S({pulse_2_i_255_n_0,pulse_2_i_256_n_0,pulse_2_i_257_n_0,pulse_2_i_258_n_0}));
  CARRY4 pulse_2_reg_i_2
       (.CI(pulse_2_reg_0),
        .CO({\cnt2_reg[15]_0 ,pulse_2_reg_i_2_n_1,pulse_2_reg_i_2_n_2,pulse_2_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt2,\cnt2_reg[12]_0 [12]}),
        .O(NLW_pulse_2_reg_i_2_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_5_n_0,pulse_2_i_6_n_0,pulse_2_i_7_n_0,pulse_2_reg_1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_240
       (.CI(1'b0),
        .CO({pulse_2_reg_i_240_n_0,pulse_2_reg_i_240_n_1,pulse_2_reg_i_240_n_2,pulse_2_reg_i_240_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_313,1'b0}),
        .O(pulse_2_reg_i_75),
        .S({pulse_2_i_309_n_0,pulse_2_i_310_n_0,pulse_2_i_311_n_0,pulse_2_i_313_0[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_254
       (.CI(1'b0),
        .CO({pulse_2_reg_i_254_n_0,pulse_2_reg_i_254_n_1,pulse_2_reg_i_254_n_2,pulse_2_reg_i_254_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_reg_i_179_0[2:0],1'b0}),
        .O(pulse_2_reg_i_147),
        .S({pulse_2_i_319_n_0,pulse_2_i_320_n_0,pulse_2_i_321_n_0,pulse_2_reg_i_254_0[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_26
       (.CI(pulse_2_reg_i_54_n_0),
        .CO({NLW_pulse_2_reg_i_26_CO_UNCONNECTED[3],pulse_2_reg_i_26_n_1,pulse_2_reg_i_26_n_2,pulse_2_reg_i_26_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pulse_2_reg_i_52),
        .S({pulse_2_reg_i_116_1,pulse_2_reg_i_116_0[3:2]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_2_reg_i_3
       (.CI(pulse_2_reg_i_9_n_0),
        .CO({\cnt2_reg[10]_0 ,pulse_2_reg_i_3_n_1,pulse_2_reg_i_3_n_2,pulse_2_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_2_i_10_n_0,pulse_2_i_11_n_0}),
        .O(NLW_pulse_2_reg_i_3_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_12_n_0,pulse_2_i_13_n_0,pulse_2_i_14_n_0,pulse_2_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_54
       (.CI(pulse_2_reg_i_96_n_0),
        .CO({pulse_2_reg_i_54_n_0,pulse_2_reg_i_54_n_1,pulse_2_reg_i_54_n_2,pulse_2_reg_i_54_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pulse_2_reg_i_94),
        .S({pulse_2_reg_i_116_0[1:0],pulse_2_reg_i_179_0[3:2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_61
       (.CI(pulse_2_reg_i_110_n_0),
        .CO(NLW_pulse_2_reg_i_61_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_2_reg_i_61_O_UNCONNECTED[3:1],pulse_2_reg_i_38}),
        .S({1'b0,1'b0,1'b0,pulse_2_i_172[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_63
       (.CI(pulse_2_reg_i_116_n_0),
        .CO(NLW_pulse_2_reg_i_63_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_2_reg_i_63_O_UNCONNECTED[3:1],pulse_2_reg_i_28}),
        .S({1'b0,1'b0,1'b0,pulse_2_reg_i_116_1[1]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_2_reg_i_9
       (.CI(1'b0),
        .CO({pulse_2_reg_i_9_n_0,pulse_2_reg_i_9_n_1,pulse_2_reg_i_9_n_2,pulse_2_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_2_i_29_n_0,pulse_2_i_30_n_0,pulse_2_i_31_n_0,pulse_2_i_32_n_0}),
        .O(NLW_pulse_2_reg_i_9_O_UNCONNECTED[3:0]),
        .S({pulse_2_i_33_n_0,pulse_2_i_34_n_0,pulse_2_i_35_n_0,pulse_2_i_36_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_96
       (.CI(1'b0),
        .CO({pulse_2_reg_i_96_n_0,pulse_2_reg_i_96_n_1,pulse_2_reg_i_96_n_2,pulse_2_reg_i_96_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(pulse_2_i_160_0),
        .S({pulse_2_reg_i_179_0[1:0],pulse_2_reg_i_254_0[1],pulse_2_i_160_n_0}));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_3_i_10
       (.I0(\cnt3_reg[12]_0 [10]),
        .I1(pulse_3_reg_i_3_1),
        .I2(pulse_3_i_172[2]),
        .I3(pulse_3_reg_i_9_0),
        .I4(pulse_3_reg_i_3_0[1]),
        .I5(\cnt3_reg[12]_0 [11]),
        .O(pulse_3_i_10_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_3_i_11
       (.I0(\cnt3_reg[12]_0 [8]),
        .I1(pulse_3_reg_i_3_2),
        .I2(pulse_3_i_172[0]),
        .I3(pulse_3_reg_i_9_0),
        .I4(pulse_3_reg_i_3_0[0]),
        .I5(\cnt3_reg[12]_0 [9]),
        .O(pulse_3_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pulse_3_i_12
       (.I0(cnt3[15]),
        .I1(cnt3[14]),
        .O(pulse_3_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pulse_3_i_13
       (.I0(cnt3[13]),
        .I1(\cnt3_reg[12]_0 [12]),
        .O(pulse_3_i_13_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_3_i_14
       (.I0(\cnt3_reg[12]_0 [11]),
        .I1(pulse_3_reg_i_3_0[1]),
        .I2(pulse_3_reg_i_9_0),
        .I3(pulse_3_i_172[2]),
        .I4(pulse_3_reg_i_3_1),
        .I5(\cnt3_reg[12]_0 [10]),
        .O(pulse_3_i_14_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_3_i_15
       (.I0(\cnt3_reg[12]_0 [9]),
        .I1(pulse_3_reg_i_3_0[0]),
        .I2(pulse_3_reg_i_9_0),
        .I3(pulse_3_i_172[0]),
        .I4(pulse_3_reg_i_3_2),
        .I5(\cnt3_reg[12]_0 [8]),
        .O(pulse_3_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_160
       (.I0(pulse_3_reg_i_254_0[0]),
        .O(pulse_3_i_160_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_167
       (.I0(pulse_3_i_172[2]),
        .I1(pulse_3_i_172[0]),
        .O(pulse_3_i_167_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_168
       (.I0(pulse_3_i_172[1]),
        .I1(pulse_3_i_247[3]),
        .O(pulse_3_i_168_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_169
       (.I0(pulse_3_i_172[0]),
        .I1(pulse_3_i_247[2]),
        .O(pulse_3_i_169_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_180
       (.I0(pulse_3_reg_i_116_1[1]),
        .I1(pulse_3_reg_i_116_0[3]),
        .O(pulse_3_i_180_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_181
       (.I0(pulse_3_reg_i_116_1[0]),
        .I1(pulse_3_reg_i_116_0[2]),
        .O(pulse_3_i_181_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_182
       (.I0(pulse_3_reg_i_116_0[3]),
        .I1(pulse_3_reg_i_116_0[1]),
        .O(pulse_3_i_182_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_241
       (.I0(pulse_3_i_247[3]),
        .I1(pulse_3_i_247[1]),
        .O(pulse_3_i_241_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_242
       (.I0(pulse_3_i_247[2]),
        .I1(pulse_3_i_247[0]),
        .O(pulse_3_i_242_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_243
       (.I0(pulse_3_i_247[1]),
        .I1(pulse_3_i_313[2]),
        .O(pulse_3_i_243_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_244
       (.I0(pulse_3_i_247[0]),
        .I1(pulse_3_i_313[1]),
        .O(pulse_3_i_244_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_255
       (.I0(pulse_3_reg_i_116_0[2]),
        .I1(pulse_3_reg_i_116_0[0]),
        .O(pulse_3_i_255_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_256
       (.I0(pulse_3_reg_i_116_0[1]),
        .I1(pulse_3_reg_i_179_0[3]),
        .O(pulse_3_i_256_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_257
       (.I0(pulse_3_reg_i_116_0[0]),
        .I1(pulse_3_reg_i_179_0[2]),
        .O(pulse_3_i_257_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_258
       (.I0(pulse_3_reg_i_179_0[3]),
        .I1(pulse_3_reg_i_179_0[1]),
        .O(pulse_3_i_258_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_3_i_29
       (.I0(\cnt3_reg[12]_0 [6]),
        .I1(pulse_3_reg_i_9_2),
        .I2(pulse_3_i_247[2]),
        .I3(pulse_3_reg_i_9_0),
        .I4(pulse_3_reg_i_9_1[1]),
        .I5(\cnt3_reg[12]_0 [7]),
        .O(pulse_3_i_29_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_3_i_30
       (.I0(\cnt3_reg[12]_0 [4]),
        .I1(pulse_3_reg_i_9_3),
        .I2(pulse_3_i_247[0]),
        .I3(pulse_3_reg_i_9_0),
        .I4(pulse_3_reg_i_9_1[0]),
        .I5(\cnt3_reg[12]_0 [5]),
        .O(pulse_3_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_309
       (.I0(pulse_3_i_313[2]),
        .I1(pulse_3_i_313[0]),
        .O(pulse_3_i_309_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_3_i_31
       (.I0(\cnt3_reg[12]_0 [2]),
        .I1(pulse_3_reg_i_9_5),
        .I2(pulse_3_i_313[1]),
        .I3(pulse_3_reg_i_9_0),
        .I4(pulse_3_reg_i_9_4[1]),
        .I5(\cnt3_reg[12]_0 [3]),
        .O(pulse_3_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_310
       (.I0(pulse_3_i_313[1]),
        .I1(pulse_3_i_313_0[1]),
        .O(pulse_3_i_310_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_311
       (.I0(pulse_3_i_313[0]),
        .I1(pulse_3_i_313_0[0]),
        .O(pulse_3_i_311_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_319
       (.I0(pulse_3_reg_i_179_0[2]),
        .I1(pulse_3_reg_i_179_0[0]),
        .O(pulse_3_i_319_n_0));
  LUT6 #(
    .INIT(64'h40444000F4FFF444)) 
    pulse_3_i_32
       (.I0(\cnt3_reg[12]_0 [0]),
        .I1(pulse_3_reg_i_9_6),
        .I2(pulse_3_i_313_0[1]),
        .I3(pulse_3_reg_i_9_0),
        .I4(pulse_3_reg_i_9_4[0]),
        .I5(\cnt3_reg[12]_0 [1]),
        .O(pulse_3_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_320
       (.I0(pulse_3_reg_i_179_0[1]),
        .I1(pulse_3_reg_i_254_0[1]),
        .O(pulse_3_i_320_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pulse_3_i_321
       (.I0(pulse_3_reg_i_179_0[0]),
        .I1(pulse_3_reg_i_254_0[0]),
        .O(pulse_3_i_321_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_3_i_33
       (.I0(\cnt3_reg[12]_0 [7]),
        .I1(pulse_3_reg_i_9_1[1]),
        .I2(pulse_3_reg_i_9_0),
        .I3(pulse_3_i_247[2]),
        .I4(pulse_3_reg_i_9_2),
        .I5(\cnt3_reg[12]_0 [6]),
        .O(pulse_3_i_33_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_3_i_34
       (.I0(\cnt3_reg[12]_0 [5]),
        .I1(pulse_3_reg_i_9_1[0]),
        .I2(pulse_3_reg_i_9_0),
        .I3(pulse_3_i_247[0]),
        .I4(pulse_3_reg_i_9_3),
        .I5(\cnt3_reg[12]_0 [4]),
        .O(pulse_3_i_34_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_3_i_35
       (.I0(\cnt3_reg[12]_0 [3]),
        .I1(pulse_3_reg_i_9_4[1]),
        .I2(pulse_3_reg_i_9_0),
        .I3(pulse_3_i_313[1]),
        .I4(pulse_3_reg_i_9_5),
        .I5(\cnt3_reg[12]_0 [2]),
        .O(pulse_3_i_35_n_0));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    pulse_3_i_36
       (.I0(\cnt3_reg[12]_0 [1]),
        .I1(pulse_3_reg_i_9_4[0]),
        .I2(pulse_3_reg_i_9_0),
        .I3(pulse_3_i_313_0[1]),
        .I4(pulse_3_reg_i_9_6),
        .I5(\cnt3_reg[12]_0 [0]),
        .O(pulse_3_i_36_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_5
       (.I0(cnt3[15]),
        .O(pulse_3_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_6
       (.I0(cnt3[14]),
        .O(pulse_3_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_7
       (.I0(cnt3[13]),
        .O(pulse_3_i_7_n_0));
  FDCE pulse_3_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(pulse_30),
        .Q(pulse_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_110
       (.CI(pulse_3_reg_i_166_n_0),
        .CO({pulse_3_reg_i_110_n_0,pulse_3_reg_i_110_n_1,pulse_3_reg_i_110_n_2,pulse_3_reg_i_110_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pulse_3_i_172}),
        .O(pulse_3_i_169_0),
        .S({pulse_3_i_172[1],pulse_3_i_167_n_0,pulse_3_i_168_n_0,pulse_3_i_169_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_116
       (.CI(pulse_3_reg_i_179_n_0),
        .CO({pulse_3_reg_i_116_n_0,pulse_3_reg_i_116_n_1,pulse_3_reg_i_116_n_2,pulse_3_reg_i_116_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pulse_3_reg_i_116_1,pulse_3_reg_i_116_0[3]}),
        .O(pulse_3_i_182_0),
        .S({pulse_3_reg_i_116_1[0],pulse_3_i_180_n_0,pulse_3_i_181_n_0,pulse_3_i_182_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_166
       (.CI(pulse_3_reg_i_240_n_0),
        .CO({pulse_3_reg_i_166_n_0,pulse_3_reg_i_166_n_1,pulse_3_reg_i_166_n_2,pulse_3_reg_i_166_n_3}),
        .CYINIT(1'b0),
        .DI(pulse_3_i_247),
        .O(pulse_3_i_244_0),
        .S({pulse_3_i_241_n_0,pulse_3_i_242_n_0,pulse_3_i_243_n_0,pulse_3_i_244_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_179
       (.CI(pulse_3_reg_i_254_n_0),
        .CO({pulse_3_reg_i_179_n_0,pulse_3_reg_i_179_n_1,pulse_3_reg_i_179_n_2,pulse_3_reg_i_179_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_reg_i_116_0[2:0],pulse_3_reg_i_179_0[3]}),
        .O(pulse_3_i_258_0),
        .S({pulse_3_i_255_n_0,pulse_3_i_256_n_0,pulse_3_i_257_n_0,pulse_3_i_258_n_0}));
  CARRY4 pulse_3_reg_i_2
       (.CI(pulse_3_reg_0),
        .CO({CO,pulse_3_reg_i_2_n_1,pulse_3_reg_i_2_n_2,pulse_3_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt3,\cnt3_reg[12]_0 [12]}),
        .O(NLW_pulse_3_reg_i_2_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_5_n_0,pulse_3_i_6_n_0,pulse_3_i_7_n_0,pulse_3_reg_1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_240
       (.CI(1'b0),
        .CO({pulse_3_reg_i_240_n_0,pulse_3_reg_i_240_n_1,pulse_3_reg_i_240_n_2,pulse_3_reg_i_240_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_313,1'b0}),
        .O(pulse_3_reg_i_75),
        .S({pulse_3_i_309_n_0,pulse_3_i_310_n_0,pulse_3_i_311_n_0,pulse_3_i_313_0[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_254
       (.CI(1'b0),
        .CO({pulse_3_reg_i_254_n_0,pulse_3_reg_i_254_n_1,pulse_3_reg_i_254_n_2,pulse_3_reg_i_254_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_reg_i_179_0[2:0],1'b0}),
        .O(pulse_3_reg_i_147),
        .S({pulse_3_i_319_n_0,pulse_3_i_320_n_0,pulse_3_i_321_n_0,pulse_3_reg_i_254_0[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_26
       (.CI(pulse_3_reg_i_54_n_0),
        .CO({NLW_pulse_3_reg_i_26_CO_UNCONNECTED[3],pulse_3_reg_i_26_n_1,pulse_3_reg_i_26_n_2,pulse_3_reg_i_26_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pulse_3_reg_i_52),
        .S({pulse_3_reg_i_116_1,pulse_3_reg_i_116_0[3:2]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_3_reg_i_3
       (.CI(pulse_3_reg_i_9_n_0),
        .CO({\cnt3_reg[10]_0 ,pulse_3_reg_i_3_n_1,pulse_3_reg_i_3_n_2,pulse_3_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_3_i_10_n_0,pulse_3_i_11_n_0}),
        .O(NLW_pulse_3_reg_i_3_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_12_n_0,pulse_3_i_13_n_0,pulse_3_i_14_n_0,pulse_3_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_54
       (.CI(pulse_3_reg_i_96_n_0),
        .CO({pulse_3_reg_i_54_n_0,pulse_3_reg_i_54_n_1,pulse_3_reg_i_54_n_2,pulse_3_reg_i_54_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pulse_3_reg_i_94),
        .S({pulse_3_reg_i_116_0[1:0],pulse_3_reg_i_179_0[3:2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_61
       (.CI(pulse_3_reg_i_110_n_0),
        .CO(NLW_pulse_3_reg_i_61_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_3_reg_i_61_O_UNCONNECTED[3:1],pulse_3_reg_i_38}),
        .S({1'b0,1'b0,1'b0,pulse_3_i_172[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_63
       (.CI(pulse_3_reg_i_116_n_0),
        .CO(NLW_pulse_3_reg_i_63_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_3_reg_i_63_O_UNCONNECTED[3:1],pulse_3_reg_i_28}),
        .S({1'b0,1'b0,1'b0,pulse_3_reg_i_116_1[1]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_3_reg_i_9
       (.CI(1'b0),
        .CO({pulse_3_reg_i_9_n_0,pulse_3_reg_i_9_n_1,pulse_3_reg_i_9_n_2,pulse_3_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_3_i_29_n_0,pulse_3_i_30_n_0,pulse_3_i_31_n_0,pulse_3_i_32_n_0}),
        .O(NLW_pulse_3_reg_i_9_O_UNCONNECTED[3:0]),
        .S({pulse_3_i_33_n_0,pulse_3_i_34_n_0,pulse_3_i_35_n_0,pulse_3_i_36_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_96
       (.CI(1'b0),
        .CO({pulse_3_reg_i_96_n_0,pulse_3_reg_i_96_n_1,pulse_3_reg_i_96_n_2,pulse_3_reg_i_96_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(pulse_3_i_160_0),
        .S({pulse_3_reg_i_179_0[1:0],pulse_3_reg_i_254_0[1],pulse_3_i_160_n_0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_odmr_ip
   (wr_en_reg,
    s_axi_wready,
    s_axi_rvalid,
    E,
    adc_clk,
    ref_clk_10m,
    pulse_0,
    pulse_1,
    pulse_2,
    pulse_3,
    mw_i,
    mw_q,
    pps_clk,
    O,
    \pulse0_cfg_r_reg[31] ,
    \pulse0_cfg_r_reg[30] ,
    \pulse0_cfg_r_reg[25] ,
    \pulse1_cfg_r_reg[19] ,
    \pulse1_cfg_r_reg[31] ,
    \pulse1_cfg_r_reg[30] ,
    \pulse1_cfg_r_reg[25] ,
    \pulse2_cfg_r_reg[19] ,
    \pulse2_cfg_r_reg[31] ,
    \pulse2_cfg_r_reg[30] ,
    \pulse2_cfg_r_reg[25] ,
    \pulse3_cfg_r_reg[19] ,
    \pulse3_cfg_r_reg[31] ,
    \pulse3_cfg_r_reg[30] ,
    \pulse3_cfg_r_reg[25] ,
    s_axi_rdata,
    s_axi_aclk,
    sys_clk,
    sys_rst_n,
    pulse_0_i_21,
    pulse_0_i_48,
    pulse_0_i_90,
    pulse_1_i_21,
    pulse_1_i_48,
    pulse_1_i_90,
    pulse_2_i_21,
    pulse_2_i_48,
    pulse_2_i_90,
    pulse_3_i_21,
    pulse_3_i_48,
    pulse_3_i_90,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wvalid);
  output wr_en_reg;
  output s_axi_wready;
  output s_axi_rvalid;
  output [0:0]E;
  output adc_clk;
  output ref_clk_10m;
  output pulse_0;
  output pulse_1;
  output pulse_2;
  output pulse_3;
  output mw_i;
  output mw_q;
  output pps_clk;
  output [1:0]O;
  output [1:0]\pulse0_cfg_r_reg[31] ;
  output [3:0]\pulse0_cfg_r_reg[30] ;
  output [3:0]\pulse0_cfg_r_reg[25] ;
  output [1:0]\pulse1_cfg_r_reg[19] ;
  output [1:0]\pulse1_cfg_r_reg[31] ;
  output [3:0]\pulse1_cfg_r_reg[30] ;
  output [3:0]\pulse1_cfg_r_reg[25] ;
  output [1:0]\pulse2_cfg_r_reg[19] ;
  output [1:0]\pulse2_cfg_r_reg[31] ;
  output [3:0]\pulse2_cfg_r_reg[30] ;
  output [3:0]\pulse2_cfg_r_reg[25] ;
  output [1:0]\pulse3_cfg_r_reg[19] ;
  output [1:0]\pulse3_cfg_r_reg[31] ;
  output [3:0]\pulse3_cfg_r_reg[30] ;
  output [3:0]\pulse3_cfg_r_reg[25] ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input sys_clk;
  input sys_rst_n;
  input [3:0]pulse_0_i_21;
  input [3:0]pulse_0_i_48;
  input [3:0]pulse_0_i_90;
  input [3:0]pulse_1_i_21;
  input [3:0]pulse_1_i_48;
  input [3:0]pulse_1_i_90;
  input [3:0]pulse_2_i_21;
  input [3:0]pulse_2_i_48;
  input [3:0]pulse_2_i_90;
  input [3:0]pulse_3_i_21;
  input [3:0]pulse_3_i_48;
  input [3:0]pulse_3_i_90;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_wdata;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_wvalid;

  wire [0:0]E;
  wire [1:0]O;
  wire RST0;
  wire adc_clk;
  wire [12:0]cnt0;
  wire [15:1]cnt00;
  wire [12:0]cnt1;
  wire [15:1]cnt10;
  wire [12:0]cnt2;
  wire [15:1]cnt20;
  wire [12:0]cnt3;
  wire [15:1]cnt30;
  wire mmcm_locked;
  wire mw_i;
  wire [1:0]mw_phase_reg;
  wire mw_q;
  wire p_0_in;
  wire p_1_in;
  wire pps_clk;
  wire [3:0]\pulse0_cfg_r_reg[25] ;
  wire [3:0]\pulse0_cfg_r_reg[30] ;
  wire [1:0]\pulse0_cfg_r_reg[31] ;
  wire [1:0]\pulse1_cfg_r_reg[19] ;
  wire [3:0]\pulse1_cfg_r_reg[25] ;
  wire [3:0]\pulse1_cfg_r_reg[30] ;
  wire [1:0]\pulse1_cfg_r_reg[31] ;
  wire [1:0]\pulse2_cfg_r_reg[19] ;
  wire [3:0]\pulse2_cfg_r_reg[25] ;
  wire [3:0]\pulse2_cfg_r_reg[30] ;
  wire [1:0]\pulse2_cfg_r_reg[31] ;
  wire [1:0]\pulse3_cfg_r_reg[19] ;
  wire [3:0]\pulse3_cfg_r_reg[25] ;
  wire [3:0]\pulse3_cfg_r_reg[30] ;
  wire [1:0]\pulse3_cfg_r_reg[31] ;
  wire pulse_0;
  wire pulse_00;
  wire [3:0]pulse_0_i_21;
  wire [3:0]pulse_0_i_48;
  wire [3:0]pulse_0_i_90;
  wire pulse_1;
  wire pulse_10;
  wire [3:0]pulse_1_i_21;
  wire [3:0]pulse_1_i_48;
  wire [3:0]pulse_1_i_90;
  wire pulse_2;
  wire pulse_20;
  wire [3:0]pulse_2_i_21;
  wire [3:0]pulse_2_i_48;
  wire [3:0]pulse_2_i_90;
  wire pulse_3;
  wire pulse_30;
  wire [3:0]pulse_3_i_21;
  wire [3:0]pulse_3_i_48;
  wire [3:0]pulse_3_i_90;
  wire ref_clk_10m;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire sys_clk;
  wire sys_rst_n;
  wire u_axi_lite_n_10;
  wire u_axi_lite_n_101;
  wire u_axi_lite_n_102;
  wire u_axi_lite_n_103;
  wire u_axi_lite_n_107;
  wire u_axi_lite_n_108;
  wire u_axi_lite_n_109;
  wire u_axi_lite_n_110;
  wire u_axi_lite_n_111;
  wire u_axi_lite_n_116;
  wire u_axi_lite_n_117;
  wire u_axi_lite_n_118;
  wire u_axi_lite_n_119;
  wire u_axi_lite_n_120;
  wire u_axi_lite_n_121;
  wire u_axi_lite_n_125;
  wire u_axi_lite_n_126;
  wire u_axi_lite_n_127;
  wire u_axi_lite_n_128;
  wire u_axi_lite_n_129;
  wire u_axi_lite_n_130;
  wire u_axi_lite_n_131;
  wire u_axi_lite_n_132;
  wire u_axi_lite_n_133;
  wire u_axi_lite_n_134;
  wire u_axi_lite_n_135;
  wire u_axi_lite_n_136;
  wire u_axi_lite_n_137;
  wire u_axi_lite_n_138;
  wire u_axi_lite_n_139;
  wire u_axi_lite_n_14;
  wire u_axi_lite_n_140;
  wire u_axi_lite_n_141;
  wire u_axi_lite_n_142;
  wire u_axi_lite_n_143;
  wire u_axi_lite_n_145;
  wire u_axi_lite_n_146;
  wire u_axi_lite_n_147;
  wire u_axi_lite_n_148;
  wire u_axi_lite_n_149;
  wire u_axi_lite_n_15;
  wire u_axi_lite_n_150;
  wire u_axi_lite_n_151;
  wire u_axi_lite_n_152;
  wire u_axi_lite_n_153;
  wire u_axi_lite_n_154;
  wire u_axi_lite_n_155;
  wire u_axi_lite_n_156;
  wire u_axi_lite_n_157;
  wire u_axi_lite_n_158;
  wire u_axi_lite_n_159;
  wire u_axi_lite_n_16;
  wire u_axi_lite_n_160;
  wire u_axi_lite_n_162;
  wire u_axi_lite_n_163;
  wire u_axi_lite_n_164;
  wire u_axi_lite_n_165;
  wire u_axi_lite_n_166;
  wire u_axi_lite_n_167;
  wire u_axi_lite_n_168;
  wire u_axi_lite_n_169;
  wire u_axi_lite_n_17;
  wire u_axi_lite_n_170;
  wire u_axi_lite_n_171;
  wire u_axi_lite_n_172;
  wire u_axi_lite_n_173;
  wire u_axi_lite_n_174;
  wire u_axi_lite_n_175;
  wire u_axi_lite_n_176;
  wire u_axi_lite_n_177;
  wire u_axi_lite_n_179;
  wire u_axi_lite_n_18;
  wire u_axi_lite_n_180;
  wire u_axi_lite_n_181;
  wire u_axi_lite_n_182;
  wire u_axi_lite_n_183;
  wire u_axi_lite_n_184;
  wire u_axi_lite_n_185;
  wire u_axi_lite_n_186;
  wire u_axi_lite_n_187;
  wire u_axi_lite_n_188;
  wire u_axi_lite_n_189;
  wire u_axi_lite_n_190;
  wire u_axi_lite_n_191;
  wire u_axi_lite_n_192;
  wire u_axi_lite_n_193;
  wire u_axi_lite_n_194;
  wire u_axi_lite_n_196;
  wire u_axi_lite_n_197;
  wire u_axi_lite_n_198;
  wire u_axi_lite_n_199;
  wire u_axi_lite_n_200;
  wire u_axi_lite_n_201;
  wire u_axi_lite_n_202;
  wire u_axi_lite_n_203;
  wire u_axi_lite_n_204;
  wire u_axi_lite_n_207;
  wire u_axi_lite_n_208;
  wire u_axi_lite_n_209;
  wire u_axi_lite_n_210;
  wire u_axi_lite_n_211;
  wire u_axi_lite_n_212;
  wire u_axi_lite_n_213;
  wire u_axi_lite_n_214;
  wire u_axi_lite_n_215;
  wire u_axi_lite_n_216;
  wire u_axi_lite_n_217;
  wire u_axi_lite_n_218;
  wire u_axi_lite_n_219;
  wire u_axi_lite_n_220;
  wire u_axi_lite_n_221;
  wire u_axi_lite_n_222;
  wire u_axi_lite_n_223;
  wire u_axi_lite_n_224;
  wire u_axi_lite_n_225;
  wire u_axi_lite_n_226;
  wire u_axi_lite_n_227;
  wire u_axi_lite_n_228;
  wire u_axi_lite_n_229;
  wire u_axi_lite_n_23;
  wire u_axi_lite_n_230;
  wire u_axi_lite_n_231;
  wire u_axi_lite_n_232;
  wire u_axi_lite_n_233;
  wire u_axi_lite_n_234;
  wire u_axi_lite_n_235;
  wire u_axi_lite_n_236;
  wire u_axi_lite_n_237;
  wire u_axi_lite_n_238;
  wire u_axi_lite_n_24;
  wire u_axi_lite_n_25;
  wire u_axi_lite_n_26;
  wire u_axi_lite_n_27;
  wire u_axi_lite_n_28;
  wire u_axi_lite_n_32;
  wire u_axi_lite_n_33;
  wire u_axi_lite_n_34;
  wire u_axi_lite_n_35;
  wire u_axi_lite_n_36;
  wire u_axi_lite_n_39;
  wire u_axi_lite_n_4;
  wire u_axi_lite_n_40;
  wire u_axi_lite_n_41;
  wire u_axi_lite_n_45;
  wire u_axi_lite_n_46;
  wire u_axi_lite_n_47;
  wire u_axi_lite_n_48;
  wire u_axi_lite_n_49;
  wire u_axi_lite_n_5;
  wire u_axi_lite_n_54;
  wire u_axi_lite_n_55;
  wire u_axi_lite_n_56;
  wire u_axi_lite_n_57;
  wire u_axi_lite_n_58;
  wire u_axi_lite_n_59;
  wire u_axi_lite_n_63;
  wire u_axi_lite_n_64;
  wire u_axi_lite_n_65;
  wire u_axi_lite_n_66;
  wire u_axi_lite_n_67;
  wire u_axi_lite_n_70;
  wire u_axi_lite_n_71;
  wire u_axi_lite_n_72;
  wire u_axi_lite_n_76;
  wire u_axi_lite_n_77;
  wire u_axi_lite_n_78;
  wire u_axi_lite_n_79;
  wire u_axi_lite_n_8;
  wire u_axi_lite_n_80;
  wire u_axi_lite_n_85;
  wire u_axi_lite_n_86;
  wire u_axi_lite_n_87;
  wire u_axi_lite_n_88;
  wire u_axi_lite_n_89;
  wire u_axi_lite_n_9;
  wire u_axi_lite_n_90;
  wire u_axi_lite_n_94;
  wire u_axi_lite_n_95;
  wire u_axi_lite_n_96;
  wire u_axi_lite_n_97;
  wire u_axi_lite_n_98;
  wire u_mw_phase_gen_n_10;
  wire u_mw_phase_gen_n_11;
  wire u_mw_phase_gen_n_12;
  wire u_mw_phase_gen_n_13;
  wire u_mw_phase_gen_n_14;
  wire u_mw_phase_gen_n_15;
  wire u_mw_phase_gen_n_16;
  wire u_mw_phase_gen_n_17;
  wire u_mw_phase_gen_n_18;
  wire u_mw_phase_gen_n_19;
  wire u_mw_phase_gen_n_2;
  wire u_mw_phase_gen_n_20;
  wire u_mw_phase_gen_n_21;
  wire u_mw_phase_gen_n_22;
  wire u_mw_phase_gen_n_23;
  wire u_mw_phase_gen_n_24;
  wire u_mw_phase_gen_n_25;
  wire u_mw_phase_gen_n_26;
  wire u_mw_phase_gen_n_27;
  wire u_mw_phase_gen_n_28;
  wire u_mw_phase_gen_n_29;
  wire u_mw_phase_gen_n_3;
  wire u_mw_phase_gen_n_30;
  wire u_mw_phase_gen_n_31;
  wire u_mw_phase_gen_n_4;
  wire u_mw_phase_gen_n_5;
  wire u_mw_phase_gen_n_6;
  wire u_mw_phase_gen_n_7;
  wire u_mw_phase_gen_n_8;
  wire u_mw_phase_gen_n_9;
  wire u_pulse_gen_n_109;
  wire u_pulse_gen_n_110;
  wire u_pulse_gen_n_111;
  wire u_pulse_gen_n_112;
  wire u_pulse_gen_n_113;
  wire u_pulse_gen_n_114;
  wire u_pulse_gen_n_115;
  wire u_pulse_gen_n_116;
  wire u_pulse_gen_n_117;
  wire u_pulse_gen_n_118;
  wire u_pulse_gen_n_119;
  wire u_pulse_gen_n_120;
  wire u_pulse_gen_n_121;
  wire u_pulse_gen_n_122;
  wire u_pulse_gen_n_123;
  wire u_pulse_gen_n_124;
  wire u_pulse_gen_n_125;
  wire u_pulse_gen_n_126;
  wire u_pulse_gen_n_127;
  wire u_pulse_gen_n_128;
  wire u_pulse_gen_n_129;
  wire u_pulse_gen_n_130;
  wire u_pulse_gen_n_131;
  wire u_pulse_gen_n_132;
  wire u_pulse_gen_n_133;
  wire u_pulse_gen_n_134;
  wire u_pulse_gen_n_135;
  wire u_pulse_gen_n_136;
  wire u_pulse_gen_n_137;
  wire u_pulse_gen_n_138;
  wire u_pulse_gen_n_139;
  wire u_pulse_gen_n_140;
  wire u_pulse_gen_n_141;
  wire u_pulse_gen_n_142;
  wire u_pulse_gen_n_143;
  wire u_pulse_gen_n_144;
  wire u_pulse_gen_n_145;
  wire u_pulse_gen_n_146;
  wire u_pulse_gen_n_147;
  wire u_pulse_gen_n_148;
  wire u_pulse_gen_n_164;
  wire u_pulse_gen_n_165;
  wire u_pulse_gen_n_166;
  wire u_pulse_gen_n_167;
  wire u_pulse_gen_n_168;
  wire u_pulse_gen_n_169;
  wire u_pulse_gen_n_170;
  wire u_pulse_gen_n_171;
  wire u_pulse_gen_n_172;
  wire u_pulse_gen_n_173;
  wire u_pulse_gen_n_174;
  wire u_pulse_gen_n_175;
  wire u_pulse_gen_n_176;
  wire u_pulse_gen_n_177;
  wire u_pulse_gen_n_178;
  wire u_pulse_gen_n_179;
  wire u_pulse_gen_n_180;
  wire u_pulse_gen_n_181;
  wire u_pulse_gen_n_182;
  wire u_pulse_gen_n_183;
  wire u_pulse_gen_n_184;
  wire u_pulse_gen_n_185;
  wire u_pulse_gen_n_186;
  wire u_pulse_gen_n_187;
  wire u_pulse_gen_n_188;
  wire u_pulse_gen_n_189;
  wire u_pulse_gen_n_190;
  wire u_pulse_gen_n_191;
  wire u_pulse_gen_n_192;
  wire u_pulse_gen_n_193;
  wire u_pulse_gen_n_194;
  wire u_pulse_gen_n_195;
  wire u_pulse_gen_n_196;
  wire u_pulse_gen_n_197;
  wire u_pulse_gen_n_198;
  wire u_pulse_gen_n_199;
  wire u_pulse_gen_n_200;
  wire u_pulse_gen_n_201;
  wire u_pulse_gen_n_202;
  wire u_pulse_gen_n_203;
  wire u_pulse_gen_n_219;
  wire u_pulse_gen_n_220;
  wire u_pulse_gen_n_221;
  wire u_pulse_gen_n_222;
  wire u_pulse_gen_n_223;
  wire u_pulse_gen_n_224;
  wire u_pulse_gen_n_225;
  wire u_pulse_gen_n_226;
  wire u_pulse_gen_n_227;
  wire u_pulse_gen_n_228;
  wire u_pulse_gen_n_229;
  wire u_pulse_gen_n_230;
  wire u_pulse_gen_n_231;
  wire u_pulse_gen_n_232;
  wire u_pulse_gen_n_233;
  wire u_pulse_gen_n_234;
  wire u_pulse_gen_n_235;
  wire u_pulse_gen_n_236;
  wire u_pulse_gen_n_237;
  wire u_pulse_gen_n_238;
  wire u_pulse_gen_n_239;
  wire u_pulse_gen_n_240;
  wire u_pulse_gen_n_241;
  wire u_pulse_gen_n_242;
  wire u_pulse_gen_n_243;
  wire u_pulse_gen_n_244;
  wire u_pulse_gen_n_245;
  wire u_pulse_gen_n_246;
  wire u_pulse_gen_n_247;
  wire u_pulse_gen_n_248;
  wire u_pulse_gen_n_249;
  wire u_pulse_gen_n_250;
  wire u_pulse_gen_n_251;
  wire u_pulse_gen_n_252;
  wire u_pulse_gen_n_253;
  wire u_pulse_gen_n_254;
  wire u_pulse_gen_n_255;
  wire u_pulse_gen_n_256;
  wire u_pulse_gen_n_257;
  wire u_pulse_gen_n_258;
  wire u_pulse_gen_n_274;
  wire u_pulse_gen_n_275;
  wire u_pulse_gen_n_56;
  wire u_pulse_gen_n_57;
  wire u_pulse_gen_n_58;
  wire u_pulse_gen_n_59;
  wire u_pulse_gen_n_60;
  wire u_pulse_gen_n_61;
  wire u_pulse_gen_n_62;
  wire u_pulse_gen_n_63;
  wire u_pulse_gen_n_64;
  wire u_pulse_gen_n_65;
  wire u_pulse_gen_n_66;
  wire u_pulse_gen_n_67;
  wire u_pulse_gen_n_68;
  wire u_pulse_gen_n_69;
  wire u_pulse_gen_n_70;
  wire u_pulse_gen_n_71;
  wire u_pulse_gen_n_72;
  wire u_pulse_gen_n_73;
  wire u_pulse_gen_n_74;
  wire u_pulse_gen_n_75;
  wire u_pulse_gen_n_76;
  wire u_pulse_gen_n_77;
  wire u_pulse_gen_n_78;
  wire u_pulse_gen_n_79;
  wire u_pulse_gen_n_80;
  wire u_pulse_gen_n_81;
  wire u_pulse_gen_n_82;
  wire u_pulse_gen_n_83;
  wire u_pulse_gen_n_84;
  wire u_pulse_gen_n_85;
  wire u_pulse_gen_n_86;
  wire u_pulse_gen_n_87;
  wire u_pulse_gen_n_88;
  wire u_pulse_gen_n_89;
  wire u_pulse_gen_n_90;
  wire u_pulse_gen_n_91;
  wire u_pulse_gen_n_92;
  wire u_pulse_gen_n_93;
  wire wr_en_reg;

  LUT1 #(
    .INIT(2'h1)) 
    mmcm_inst_i_1
       (.I0(sys_rst_n),
        .O(RST0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_slave u_axi_lite
       (.CO(u_pulse_gen_n_275),
        .D({u_axi_lite_n_128,u_axi_lite_n_129,u_axi_lite_n_130,u_axi_lite_n_131,u_axi_lite_n_132,u_axi_lite_n_133,u_axi_lite_n_134,u_axi_lite_n_135,u_axi_lite_n_136,u_axi_lite_n_137,u_axi_lite_n_138,u_axi_lite_n_139,u_axi_lite_n_140,u_axi_lite_n_141,u_axi_lite_n_142,u_axi_lite_n_143}),
        .DI({\pulse0_cfg_r_reg[31] ,\pulse0_cfg_r_reg[30] [3]}),
        .E(E),
        .O({u_axi_lite_n_4,u_axi_lite_n_5}),
        .Q(cnt0),
        .S(u_axi_lite_n_200),
        .cnt00(cnt00),
        .\cnt0_reg[10] (u_axi_lite_n_196),
        .cnt10(cnt10),
        .\cnt1_reg[10] (u_axi_lite_n_197),
        .\cnt1_reg[11] (u_axi_lite_n_201),
        .cnt20(cnt20),
        .\cnt2_reg[10] (u_axi_lite_n_198),
        .\cnt2_reg[11] (u_axi_lite_n_202),
        .cnt30(cnt30),
        .\cnt3_reg[10] (u_axi_lite_n_199),
        .\cnt3_reg[11] (u_axi_lite_n_203),
        .\ctrl_reg_r_reg[4]_0 ({u_axi_lite_n_145,u_axi_lite_n_146,u_axi_lite_n_147,u_axi_lite_n_148,u_axi_lite_n_149,u_axi_lite_n_150,u_axi_lite_n_151,u_axi_lite_n_152,u_axi_lite_n_153,u_axi_lite_n_154,u_axi_lite_n_155,u_axi_lite_n_156,u_axi_lite_n_157,u_axi_lite_n_158,u_axi_lite_n_159,u_axi_lite_n_160}),
        .\ctrl_reg_r_reg[4]_1 ({u_axi_lite_n_162,u_axi_lite_n_163,u_axi_lite_n_164,u_axi_lite_n_165,u_axi_lite_n_166,u_axi_lite_n_167,u_axi_lite_n_168,u_axi_lite_n_169,u_axi_lite_n_170,u_axi_lite_n_171,u_axi_lite_n_172,u_axi_lite_n_173,u_axi_lite_n_174,u_axi_lite_n_175,u_axi_lite_n_176,u_axi_lite_n_177}),
        .\ctrl_reg_r_reg[4]_2 ({u_axi_lite_n_179,u_axi_lite_n_180,u_axi_lite_n_181,u_axi_lite_n_182,u_axi_lite_n_183,u_axi_lite_n_184,u_axi_lite_n_185,u_axi_lite_n_186,u_axi_lite_n_187,u_axi_lite_n_188,u_axi_lite_n_189,u_axi_lite_n_190,u_axi_lite_n_191,u_axi_lite_n_192,u_axi_lite_n_193,u_axi_lite_n_194}),
        .mmcm_locked(mmcm_locked),
        .\mw_freq_reg_r_reg[11]_0 ({u_axi_lite_n_215,u_axi_lite_n_216,u_axi_lite_n_217,u_axi_lite_n_218}),
        .\mw_freq_reg_r_reg[15]_0 ({u_axi_lite_n_219,u_axi_lite_n_220,u_axi_lite_n_221,u_axi_lite_n_222}),
        .\mw_freq_reg_r_reg[19]_0 ({u_axi_lite_n_223,u_axi_lite_n_224,u_axi_lite_n_225,u_axi_lite_n_226}),
        .\mw_freq_reg_r_reg[23]_0 ({u_axi_lite_n_227,u_axi_lite_n_228,u_axi_lite_n_229,u_axi_lite_n_230}),
        .\mw_freq_reg_r_reg[27]_0 ({u_axi_lite_n_231,u_axi_lite_n_232,u_axi_lite_n_233,u_axi_lite_n_234}),
        .\mw_freq_reg_r_reg[30]_0 ({u_axi_lite_n_235,u_axi_lite_n_236,u_axi_lite_n_237,u_axi_lite_n_238}),
        .\mw_freq_reg_r_reg[3]_0 ({u_axi_lite_n_207,u_axi_lite_n_208,u_axi_lite_n_209,u_axi_lite_n_210}),
        .\mw_freq_reg_r_reg[7]_0 ({u_axi_lite_n_211,u_axi_lite_n_212,u_axi_lite_n_213,u_axi_lite_n_214}),
        .\mw_phase_reg_r_reg[1]_0 (u_axi_lite_n_204),
        .\mw_phase_reg_r_reg[1]_1 (mw_phase_reg),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .\phase_acc_reg[11] (u_mw_phase_gen_n_10),
        .\phase_acc_reg[11]_0 (u_mw_phase_gen_n_11),
        .\phase_acc_reg[11]_1 (u_mw_phase_gen_n_12),
        .\phase_acc_reg[11]_2 (u_mw_phase_gen_n_13),
        .\phase_acc_reg[15] (u_mw_phase_gen_n_14),
        .\phase_acc_reg[15]_0 (u_mw_phase_gen_n_15),
        .\phase_acc_reg[15]_1 (u_mw_phase_gen_n_16),
        .\phase_acc_reg[15]_2 (u_mw_phase_gen_n_17),
        .\phase_acc_reg[19] (u_mw_phase_gen_n_18),
        .\phase_acc_reg[19]_0 (u_mw_phase_gen_n_19),
        .\phase_acc_reg[19]_1 (u_mw_phase_gen_n_20),
        .\phase_acc_reg[19]_2 (u_mw_phase_gen_n_21),
        .\phase_acc_reg[23] (u_mw_phase_gen_n_22),
        .\phase_acc_reg[23]_0 (u_mw_phase_gen_n_23),
        .\phase_acc_reg[23]_1 (u_mw_phase_gen_n_24),
        .\phase_acc_reg[23]_2 (u_mw_phase_gen_n_25),
        .\phase_acc_reg[27] (u_mw_phase_gen_n_26),
        .\phase_acc_reg[27]_0 (u_mw_phase_gen_n_27),
        .\phase_acc_reg[27]_1 (u_mw_phase_gen_n_28),
        .\phase_acc_reg[27]_2 (u_mw_phase_gen_n_29),
        .\phase_acc_reg[31] (u_mw_phase_gen_n_30),
        .\phase_acc_reg[31]_0 (u_mw_phase_gen_n_31),
        .\phase_acc_reg[3] (u_mw_phase_gen_n_2),
        .\phase_acc_reg[3]_0 (u_mw_phase_gen_n_3),
        .\phase_acc_reg[3]_1 (u_mw_phase_gen_n_4),
        .\phase_acc_reg[3]_2 (u_mw_phase_gen_n_5),
        .\phase_acc_reg[7] (u_mw_phase_gen_n_6),
        .\phase_acc_reg[7]_0 (u_mw_phase_gen_n_7),
        .\phase_acc_reg[7]_1 (u_mw_phase_gen_n_8),
        .\phase_acc_reg[7]_2 (u_mw_phase_gen_n_9),
        .\pulse0_cfg_r_reg[14]_0 ({u_axi_lite_n_14,u_axi_lite_n_15,u_axi_lite_n_16,u_axi_lite_n_17}),
        .\pulse0_cfg_r_reg[15]_0 ({u_axi_lite_n_8,u_axi_lite_n_9}),
        .\pulse0_cfg_r_reg[19]_0 (O),
        .\pulse0_cfg_r_reg[25]_0 (\pulse0_cfg_r_reg[25] [2:0]),
        .\pulse0_cfg_r_reg[30]_0 ({\pulse0_cfg_r_reg[30] [2:0],\pulse0_cfg_r_reg[25] [3]}),
        .\pulse0_cfg_r_reg[31]_0 (u_axi_lite_n_10),
        .\pulse0_cfg_r_reg[31]_1 (u_axi_lite_n_18),
        .\pulse0_cfg_r_reg[31]_2 (u_axi_lite_n_23),
        .\pulse0_cfg_r_reg[31]_3 (u_axi_lite_n_28),
        .\pulse0_cfg_r_reg[31]_4 (u_axi_lite_n_32),
        .\pulse0_cfg_r_reg[31]_5 (u_axi_lite_n_33),
        .\pulse0_cfg_r_reg[31]_6 (u_axi_lite_n_34),
        .\pulse0_cfg_r_reg[9]_0 ({u_axi_lite_n_24,u_axi_lite_n_25,u_axi_lite_n_26,u_axi_lite_n_27}),
        .\pulse1_cfg_r_reg[14]_0 ({u_axi_lite_n_45,u_axi_lite_n_46,u_axi_lite_n_47,u_axi_lite_n_48}),
        .\pulse1_cfg_r_reg[15]_0 ({u_axi_lite_n_39,u_axi_lite_n_40}),
        .\pulse1_cfg_r_reg[19]_0 (\pulse1_cfg_r_reg[19] ),
        .\pulse1_cfg_r_reg[25]_0 (\pulse1_cfg_r_reg[25] [2:0]),
        .\pulse1_cfg_r_reg[30]_0 ({\pulse1_cfg_r_reg[30] [2:0],\pulse1_cfg_r_reg[25] [3]}),
        .\pulse1_cfg_r_reg[31]_0 (u_axi_lite_n_41),
        .\pulse1_cfg_r_reg[31]_1 ({\pulse1_cfg_r_reg[31] ,\pulse1_cfg_r_reg[30] [3]}),
        .\pulse1_cfg_r_reg[31]_2 (u_axi_lite_n_49),
        .\pulse1_cfg_r_reg[31]_3 (u_axi_lite_n_54),
        .\pulse1_cfg_r_reg[31]_4 (u_axi_lite_n_59),
        .\pulse1_cfg_r_reg[31]_5 (u_axi_lite_n_63),
        .\pulse1_cfg_r_reg[31]_6 (u_axi_lite_n_64),
        .\pulse1_cfg_r_reg[31]_7 (u_axi_lite_n_65),
        .\pulse1_cfg_r_reg[3]_0 ({u_axi_lite_n_35,u_axi_lite_n_36}),
        .\pulse1_cfg_r_reg[9]_0 ({u_axi_lite_n_55,u_axi_lite_n_56,u_axi_lite_n_57,u_axi_lite_n_58}),
        .\pulse2_cfg_r_reg[14]_0 ({u_axi_lite_n_76,u_axi_lite_n_77,u_axi_lite_n_78,u_axi_lite_n_79}),
        .\pulse2_cfg_r_reg[15]_0 ({u_axi_lite_n_70,u_axi_lite_n_71}),
        .\pulse2_cfg_r_reg[19]_0 (\pulse2_cfg_r_reg[19] ),
        .\pulse2_cfg_r_reg[25]_0 (\pulse2_cfg_r_reg[25] [2:0]),
        .\pulse2_cfg_r_reg[30]_0 ({\pulse2_cfg_r_reg[30] [2:0],\pulse2_cfg_r_reg[25] [3]}),
        .\pulse2_cfg_r_reg[31]_0 (u_axi_lite_n_72),
        .\pulse2_cfg_r_reg[31]_1 ({\pulse2_cfg_r_reg[31] ,\pulse2_cfg_r_reg[30] [3]}),
        .\pulse2_cfg_r_reg[31]_2 (u_axi_lite_n_80),
        .\pulse2_cfg_r_reg[31]_3 (u_axi_lite_n_85),
        .\pulse2_cfg_r_reg[31]_4 (u_axi_lite_n_90),
        .\pulse2_cfg_r_reg[31]_5 (u_axi_lite_n_94),
        .\pulse2_cfg_r_reg[31]_6 (u_axi_lite_n_95),
        .\pulse2_cfg_r_reg[31]_7 (u_axi_lite_n_96),
        .\pulse2_cfg_r_reg[3]_0 ({u_axi_lite_n_66,u_axi_lite_n_67}),
        .\pulse2_cfg_r_reg[9]_0 ({u_axi_lite_n_86,u_axi_lite_n_87,u_axi_lite_n_88,u_axi_lite_n_89}),
        .\pulse3_cfg_r_reg[14]_0 ({u_axi_lite_n_107,u_axi_lite_n_108,u_axi_lite_n_109,u_axi_lite_n_110}),
        .\pulse3_cfg_r_reg[15]_0 ({u_axi_lite_n_101,u_axi_lite_n_102}),
        .\pulse3_cfg_r_reg[19]_0 (\pulse3_cfg_r_reg[19] ),
        .\pulse3_cfg_r_reg[25]_0 (\pulse3_cfg_r_reg[25] [2:0]),
        .\pulse3_cfg_r_reg[30]_0 ({\pulse3_cfg_r_reg[30] [2:0],\pulse3_cfg_r_reg[25] [3]}),
        .\pulse3_cfg_r_reg[31]_0 (u_axi_lite_n_103),
        .\pulse3_cfg_r_reg[31]_1 ({\pulse3_cfg_r_reg[31] ,\pulse3_cfg_r_reg[30] [3]}),
        .\pulse3_cfg_r_reg[31]_2 (u_axi_lite_n_111),
        .\pulse3_cfg_r_reg[31]_3 (u_axi_lite_n_116),
        .\pulse3_cfg_r_reg[31]_4 (u_axi_lite_n_121),
        .\pulse3_cfg_r_reg[31]_5 (u_axi_lite_n_125),
        .\pulse3_cfg_r_reg[31]_6 (u_axi_lite_n_126),
        .\pulse3_cfg_r_reg[31]_7 (u_axi_lite_n_127),
        .\pulse3_cfg_r_reg[3]_0 ({u_axi_lite_n_97,u_axi_lite_n_98}),
        .\pulse3_cfg_r_reg[9]_0 ({u_axi_lite_n_117,u_axi_lite_n_118,u_axi_lite_n_119,u_axi_lite_n_120}),
        .pulse_00(pulse_00),
        .pulse_0_i_21_0({u_pulse_gen_n_77,u_pulse_gen_n_78,u_pulse_gen_n_79,u_pulse_gen_n_80}),
        .pulse_0_i_21_1(pulse_0_i_21),
        .pulse_0_i_32(u_pulse_gen_n_93),
        .pulse_0_i_48_0({u_pulse_gen_n_73,u_pulse_gen_n_74,u_pulse_gen_n_75,u_pulse_gen_n_76}),
        .pulse_0_i_48_1(pulse_0_i_48),
        .pulse_0_i_8_0(u_pulse_gen_n_68),
        .pulse_0_i_90_0({u_pulse_gen_n_69,u_pulse_gen_n_70,u_pulse_gen_n_71,u_pulse_gen_n_72}),
        .pulse_0_i_90_1(pulse_0_i_90),
        .pulse_0_reg(u_pulse_gen_n_110),
        .pulse_0_reg_0(u_pulse_gen_n_109),
        .pulse_0_reg_i_111_0({u_pulse_gen_n_85,u_pulse_gen_n_86,u_pulse_gen_n_87,u_pulse_gen_n_88}),
        .pulse_0_reg_i_117_0({u_pulse_gen_n_60,u_pulse_gen_n_61,u_pulse_gen_n_62,u_pulse_gen_n_63}),
        .pulse_0_reg_i_170_0({u_pulse_gen_n_81,u_pulse_gen_n_82,u_pulse_gen_n_83,u_pulse_gen_n_84}),
        .pulse_0_reg_i_183_0({u_pulse_gen_n_56,u_pulse_gen_n_57,u_pulse_gen_n_58,u_pulse_gen_n_59}),
        .pulse_0_reg_i_62_0({u_pulse_gen_n_89,u_pulse_gen_n_90,u_pulse_gen_n_91,u_pulse_gen_n_92}),
        .pulse_0_reg_i_64_0({u_pulse_gen_n_64,u_pulse_gen_n_65,u_pulse_gen_n_66,u_pulse_gen_n_67}),
        .pulse_10(pulse_10),
        .pulse_1_i_21_0({u_pulse_gen_n_132,u_pulse_gen_n_133,u_pulse_gen_n_134,u_pulse_gen_n_135}),
        .pulse_1_i_21_1(pulse_1_i_21),
        .pulse_1_i_32(u_pulse_gen_n_148),
        .pulse_1_i_48_0({u_pulse_gen_n_128,u_pulse_gen_n_129,u_pulse_gen_n_130,u_pulse_gen_n_131}),
        .pulse_1_i_48_1(pulse_1_i_48),
        .pulse_1_i_8_0(u_pulse_gen_n_123),
        .pulse_1_i_90_0({u_pulse_gen_n_124,u_pulse_gen_n_125,u_pulse_gen_n_126,u_pulse_gen_n_127}),
        .pulse_1_i_90_1(pulse_1_i_90),
        .pulse_1_reg(u_pulse_gen_n_165),
        .pulse_1_reg_0(u_pulse_gen_n_164),
        .pulse_1_reg_i_111_0({u_pulse_gen_n_140,u_pulse_gen_n_141,u_pulse_gen_n_142,u_pulse_gen_n_143}),
        .pulse_1_reg_i_117_0({u_pulse_gen_n_115,u_pulse_gen_n_116,u_pulse_gen_n_117,u_pulse_gen_n_118}),
        .pulse_1_reg_i_170_0({u_pulse_gen_n_136,u_pulse_gen_n_137,u_pulse_gen_n_138,u_pulse_gen_n_139}),
        .pulse_1_reg_i_183_0({u_pulse_gen_n_111,u_pulse_gen_n_112,u_pulse_gen_n_113,u_pulse_gen_n_114}),
        .pulse_1_reg_i_2(cnt1),
        .pulse_1_reg_i_62_0({u_pulse_gen_n_144,u_pulse_gen_n_145,u_pulse_gen_n_146,u_pulse_gen_n_147}),
        .pulse_1_reg_i_64_0({u_pulse_gen_n_119,u_pulse_gen_n_120,u_pulse_gen_n_121,u_pulse_gen_n_122}),
        .pulse_20(pulse_20),
        .pulse_2_i_21_0({u_pulse_gen_n_187,u_pulse_gen_n_188,u_pulse_gen_n_189,u_pulse_gen_n_190}),
        .pulse_2_i_21_1(pulse_2_i_21),
        .pulse_2_i_32(u_pulse_gen_n_203),
        .pulse_2_i_48_0({u_pulse_gen_n_183,u_pulse_gen_n_184,u_pulse_gen_n_185,u_pulse_gen_n_186}),
        .pulse_2_i_48_1(pulse_2_i_48),
        .pulse_2_i_8_0(u_pulse_gen_n_178),
        .pulse_2_i_90_0({u_pulse_gen_n_179,u_pulse_gen_n_180,u_pulse_gen_n_181,u_pulse_gen_n_182}),
        .pulse_2_i_90_1(pulse_2_i_90),
        .pulse_2_reg(u_pulse_gen_n_220),
        .pulse_2_reg_0(u_pulse_gen_n_219),
        .pulse_2_reg_i_111_0({u_pulse_gen_n_195,u_pulse_gen_n_196,u_pulse_gen_n_197,u_pulse_gen_n_198}),
        .pulse_2_reg_i_117_0({u_pulse_gen_n_170,u_pulse_gen_n_171,u_pulse_gen_n_172,u_pulse_gen_n_173}),
        .pulse_2_reg_i_170_0({u_pulse_gen_n_191,u_pulse_gen_n_192,u_pulse_gen_n_193,u_pulse_gen_n_194}),
        .pulse_2_reg_i_183_0({u_pulse_gen_n_166,u_pulse_gen_n_167,u_pulse_gen_n_168,u_pulse_gen_n_169}),
        .pulse_2_reg_i_2(cnt2),
        .pulse_2_reg_i_62_0({u_pulse_gen_n_199,u_pulse_gen_n_200,u_pulse_gen_n_201,u_pulse_gen_n_202}),
        .pulse_2_reg_i_64_0({u_pulse_gen_n_174,u_pulse_gen_n_175,u_pulse_gen_n_176,u_pulse_gen_n_177}),
        .pulse_30(pulse_30),
        .pulse_3_i_21_0({u_pulse_gen_n_242,u_pulse_gen_n_243,u_pulse_gen_n_244,u_pulse_gen_n_245}),
        .pulse_3_i_21_1(pulse_3_i_21),
        .pulse_3_i_32(u_pulse_gen_n_258),
        .pulse_3_i_48_0({u_pulse_gen_n_238,u_pulse_gen_n_239,u_pulse_gen_n_240,u_pulse_gen_n_241}),
        .pulse_3_i_48_1(pulse_3_i_48),
        .pulse_3_i_8_0(u_pulse_gen_n_233),
        .pulse_3_i_90_0({u_pulse_gen_n_234,u_pulse_gen_n_235,u_pulse_gen_n_236,u_pulse_gen_n_237}),
        .pulse_3_i_90_1(pulse_3_i_90),
        .pulse_3_reg(u_pulse_gen_n_274),
        .pulse_3_reg_i_111_0({u_pulse_gen_n_250,u_pulse_gen_n_251,u_pulse_gen_n_252,u_pulse_gen_n_253}),
        .pulse_3_reg_i_117_0({u_pulse_gen_n_225,u_pulse_gen_n_226,u_pulse_gen_n_227,u_pulse_gen_n_228}),
        .pulse_3_reg_i_170_0({u_pulse_gen_n_246,u_pulse_gen_n_247,u_pulse_gen_n_248,u_pulse_gen_n_249}),
        .pulse_3_reg_i_183_0({u_pulse_gen_n_221,u_pulse_gen_n_222,u_pulse_gen_n_223,u_pulse_gen_n_224}),
        .pulse_3_reg_i_2(cnt3),
        .pulse_3_reg_i_62_0({u_pulse_gen_n_254,u_pulse_gen_n_255,u_pulse_gen_n_256,u_pulse_gen_n_257}),
        .pulse_3_reg_i_64_0({u_pulse_gen_n_229,u_pulse_gen_n_230,u_pulse_gen_n_231,u_pulse_gen_n_232}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_en_reg_0(wr_en_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_gen u_clk_gen
       (.AR(RST0),
        .adc_clk(adc_clk),
        .mmcm_locked(mmcm_locked),
        .pps_clk(pps_clk),
        .ref_clk_10m(ref_clk_10m),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mw_phase_gen u_mw_phase_gen
       (.AR(RST0),
        .mw_i(mw_i),
        .mw_i_reg_0(u_axi_lite_n_204),
        .mw_q(mw_q),
        .mw_q_reg_0(mw_phase_reg),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .\phase_acc_reg[0]_0 (u_mw_phase_gen_n_2),
        .\phase_acc_reg[10]_0 (u_mw_phase_gen_n_12),
        .\phase_acc_reg[11]_0 (u_mw_phase_gen_n_13),
        .\phase_acc_reg[11]_1 ({u_axi_lite_n_215,u_axi_lite_n_216,u_axi_lite_n_217,u_axi_lite_n_218}),
        .\phase_acc_reg[12]_0 (u_mw_phase_gen_n_14),
        .\phase_acc_reg[13]_0 (u_mw_phase_gen_n_15),
        .\phase_acc_reg[14]_0 (u_mw_phase_gen_n_16),
        .\phase_acc_reg[15]_0 (u_mw_phase_gen_n_17),
        .\phase_acc_reg[15]_1 ({u_axi_lite_n_219,u_axi_lite_n_220,u_axi_lite_n_221,u_axi_lite_n_222}),
        .\phase_acc_reg[16]_0 (u_mw_phase_gen_n_18),
        .\phase_acc_reg[17]_0 (u_mw_phase_gen_n_19),
        .\phase_acc_reg[18]_0 (u_mw_phase_gen_n_20),
        .\phase_acc_reg[19]_0 (u_mw_phase_gen_n_21),
        .\phase_acc_reg[19]_1 ({u_axi_lite_n_223,u_axi_lite_n_224,u_axi_lite_n_225,u_axi_lite_n_226}),
        .\phase_acc_reg[1]_0 (u_mw_phase_gen_n_3),
        .\phase_acc_reg[20]_0 (u_mw_phase_gen_n_22),
        .\phase_acc_reg[21]_0 (u_mw_phase_gen_n_23),
        .\phase_acc_reg[22]_0 (u_mw_phase_gen_n_24),
        .\phase_acc_reg[23]_0 (u_mw_phase_gen_n_25),
        .\phase_acc_reg[23]_1 ({u_axi_lite_n_227,u_axi_lite_n_228,u_axi_lite_n_229,u_axi_lite_n_230}),
        .\phase_acc_reg[24]_0 (u_mw_phase_gen_n_26),
        .\phase_acc_reg[25]_0 (u_mw_phase_gen_n_27),
        .\phase_acc_reg[26]_0 (u_mw_phase_gen_n_28),
        .\phase_acc_reg[27]_0 (u_mw_phase_gen_n_29),
        .\phase_acc_reg[27]_1 ({u_axi_lite_n_231,u_axi_lite_n_232,u_axi_lite_n_233,u_axi_lite_n_234}),
        .\phase_acc_reg[28]_0 (u_mw_phase_gen_n_30),
        .\phase_acc_reg[29]_0 (u_mw_phase_gen_n_31),
        .\phase_acc_reg[2]_0 (u_mw_phase_gen_n_4),
        .\phase_acc_reg[31]_0 ({u_axi_lite_n_235,u_axi_lite_n_236,u_axi_lite_n_237,u_axi_lite_n_238}),
        .\phase_acc_reg[3]_0 (u_mw_phase_gen_n_5),
        .\phase_acc_reg[3]_1 ({u_axi_lite_n_207,u_axi_lite_n_208,u_axi_lite_n_209,u_axi_lite_n_210}),
        .\phase_acc_reg[4]_0 (u_mw_phase_gen_n_6),
        .\phase_acc_reg[5]_0 (u_mw_phase_gen_n_7),
        .\phase_acc_reg[6]_0 (u_mw_phase_gen_n_8),
        .\phase_acc_reg[7]_0 (u_mw_phase_gen_n_9),
        .\phase_acc_reg[7]_1 ({u_axi_lite_n_211,u_axi_lite_n_212,u_axi_lite_n_213,u_axi_lite_n_214}),
        .\phase_acc_reg[8]_0 (u_mw_phase_gen_n_10),
        .\phase_acc_reg[9]_0 (u_mw_phase_gen_n_11),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen u_pulse_gen
       (.AR(RST0),
        .CO(u_pulse_gen_n_275),
        .D({u_axi_lite_n_179,u_axi_lite_n_180,u_axi_lite_n_181,u_axi_lite_n_182,u_axi_lite_n_183,u_axi_lite_n_184,u_axi_lite_n_185,u_axi_lite_n_186,u_axi_lite_n_187,u_axi_lite_n_188,u_axi_lite_n_189,u_axi_lite_n_190,u_axi_lite_n_191,u_axi_lite_n_192,u_axi_lite_n_193,u_axi_lite_n_194}),
        .DI({\pulse0_cfg_r_reg[31] ,\pulse0_cfg_r_reg[30] [3]}),
        .O({u_axi_lite_n_4,u_axi_lite_n_5}),
        .Q(cnt0),
        .S(u_axi_lite_n_200),
        .cnt00(cnt00),
        .\cnt0_reg[10]_0 (u_pulse_gen_n_109),
        .\cnt0_reg[15]_0 (u_pulse_gen_n_110),
        .cnt10(cnt10),
        .\cnt1_reg[10]_0 (u_pulse_gen_n_164),
        .\cnt1_reg[12]_0 (cnt1),
        .\cnt1_reg[15]_0 (u_pulse_gen_n_165),
        .\cnt1_reg[15]_1 ({u_axi_lite_n_162,u_axi_lite_n_163,u_axi_lite_n_164,u_axi_lite_n_165,u_axi_lite_n_166,u_axi_lite_n_167,u_axi_lite_n_168,u_axi_lite_n_169,u_axi_lite_n_170,u_axi_lite_n_171,u_axi_lite_n_172,u_axi_lite_n_173,u_axi_lite_n_174,u_axi_lite_n_175,u_axi_lite_n_176,u_axi_lite_n_177}),
        .cnt20(cnt20),
        .\cnt2_reg[10]_0 (u_pulse_gen_n_219),
        .\cnt2_reg[12]_0 (cnt2),
        .\cnt2_reg[15]_0 (u_pulse_gen_n_220),
        .\cnt2_reg[15]_1 ({u_axi_lite_n_145,u_axi_lite_n_146,u_axi_lite_n_147,u_axi_lite_n_148,u_axi_lite_n_149,u_axi_lite_n_150,u_axi_lite_n_151,u_axi_lite_n_152,u_axi_lite_n_153,u_axi_lite_n_154,u_axi_lite_n_155,u_axi_lite_n_156,u_axi_lite_n_157,u_axi_lite_n_158,u_axi_lite_n_159,u_axi_lite_n_160}),
        .cnt30(cnt30),
        .\cnt3_reg[10]_0 (u_pulse_gen_n_274),
        .\cnt3_reg[12]_0 (cnt3),
        .\cnt3_reg[15]_0 ({u_axi_lite_n_128,u_axi_lite_n_129,u_axi_lite_n_130,u_axi_lite_n_131,u_axi_lite_n_132,u_axi_lite_n_133,u_axi_lite_n_134,u_axi_lite_n_135,u_axi_lite_n_136,u_axi_lite_n_137,u_axi_lite_n_138,u_axi_lite_n_139,u_axi_lite_n_140,u_axi_lite_n_141,u_axi_lite_n_142,u_axi_lite_n_143}),
        .pulse_0(pulse_0),
        .pulse_00(pulse_00),
        .pulse_0_i_160_0({u_pulse_gen_n_69,u_pulse_gen_n_70,u_pulse_gen_n_71,u_pulse_gen_n_72}),
        .pulse_0_i_169_0({u_pulse_gen_n_89,u_pulse_gen_n_90,u_pulse_gen_n_91,u_pulse_gen_n_92}),
        .pulse_0_i_182_0({u_pulse_gen_n_64,u_pulse_gen_n_65,u_pulse_gen_n_66,u_pulse_gen_n_67}),
        .pulse_0_i_244_0({u_pulse_gen_n_85,u_pulse_gen_n_86,u_pulse_gen_n_87,u_pulse_gen_n_88}),
        .pulse_0_i_247({\pulse0_cfg_r_reg[30] [2:0],\pulse0_cfg_r_reg[25] [3]}),
        .pulse_0_i_258_0({u_pulse_gen_n_60,u_pulse_gen_n_61,u_pulse_gen_n_62,u_pulse_gen_n_63}),
        .pulse_0_i_313(\pulse0_cfg_r_reg[25] [2:0]),
        .pulse_0_i_313_0(O),
        .pulse_0_reg_0(u_axi_lite_n_196),
        .pulse_0_reg_i_116_0({u_axi_lite_n_14,u_axi_lite_n_15,u_axi_lite_n_16,u_axi_lite_n_17}),
        .pulse_0_reg_i_116_1({u_axi_lite_n_8,u_axi_lite_n_9}),
        .pulse_0_reg_i_147({u_pulse_gen_n_56,u_pulse_gen_n_57,u_pulse_gen_n_58,u_pulse_gen_n_59}),
        .pulse_0_reg_i_179_0({u_axi_lite_n_24,u_axi_lite_n_25,u_axi_lite_n_26,u_axi_lite_n_27}),
        .pulse_0_reg_i_28(u_pulse_gen_n_68),
        .pulse_0_reg_i_38(u_pulse_gen_n_93),
        .pulse_0_reg_i_3_0({pulse_0_i_21[3],pulse_0_i_21[1]}),
        .pulse_0_reg_i_3_1(u_axi_lite_n_10),
        .pulse_0_reg_i_3_2(u_axi_lite_n_18),
        .pulse_0_reg_i_52({u_pulse_gen_n_77,u_pulse_gen_n_78,u_pulse_gen_n_79,u_pulse_gen_n_80}),
        .pulse_0_reg_i_75({u_pulse_gen_n_81,u_pulse_gen_n_82,u_pulse_gen_n_83,u_pulse_gen_n_84}),
        .pulse_0_reg_i_94({u_pulse_gen_n_73,u_pulse_gen_n_74,u_pulse_gen_n_75,u_pulse_gen_n_76}),
        .pulse_0_reg_i_9_0(u_axi_lite_n_34),
        .pulse_0_reg_i_9_1({pulse_0_i_48[3],pulse_0_i_48[1]}),
        .pulse_0_reg_i_9_2(u_axi_lite_n_23),
        .pulse_0_reg_i_9_3(u_axi_lite_n_28),
        .pulse_0_reg_i_9_4({pulse_0_i_90[3],pulse_0_i_90[1]}),
        .pulse_0_reg_i_9_5(u_axi_lite_n_32),
        .pulse_0_reg_i_9_6(u_axi_lite_n_33),
        .pulse_1(pulse_1),
        .pulse_10(pulse_10),
        .pulse_1_i_160_0({u_pulse_gen_n_124,u_pulse_gen_n_125,u_pulse_gen_n_126,u_pulse_gen_n_127}),
        .pulse_1_i_169_0({u_pulse_gen_n_144,u_pulse_gen_n_145,u_pulse_gen_n_146,u_pulse_gen_n_147}),
        .pulse_1_i_172({\pulse1_cfg_r_reg[31] ,\pulse1_cfg_r_reg[30] [3]}),
        .pulse_1_i_182_0({u_pulse_gen_n_119,u_pulse_gen_n_120,u_pulse_gen_n_121,u_pulse_gen_n_122}),
        .pulse_1_i_244_0({u_pulse_gen_n_140,u_pulse_gen_n_141,u_pulse_gen_n_142,u_pulse_gen_n_143}),
        .pulse_1_i_247({\pulse1_cfg_r_reg[30] [2:0],\pulse1_cfg_r_reg[25] [3]}),
        .pulse_1_i_258_0({u_pulse_gen_n_115,u_pulse_gen_n_116,u_pulse_gen_n_117,u_pulse_gen_n_118}),
        .pulse_1_i_313(\pulse1_cfg_r_reg[25] [2:0]),
        .pulse_1_i_313_0(\pulse1_cfg_r_reg[19] ),
        .pulse_1_reg_0(u_axi_lite_n_197),
        .pulse_1_reg_1(u_axi_lite_n_201),
        .pulse_1_reg_i_116_0({u_axi_lite_n_45,u_axi_lite_n_46,u_axi_lite_n_47,u_axi_lite_n_48}),
        .pulse_1_reg_i_116_1({u_axi_lite_n_39,u_axi_lite_n_40}),
        .pulse_1_reg_i_147({u_pulse_gen_n_111,u_pulse_gen_n_112,u_pulse_gen_n_113,u_pulse_gen_n_114}),
        .pulse_1_reg_i_179_0({u_axi_lite_n_55,u_axi_lite_n_56,u_axi_lite_n_57,u_axi_lite_n_58}),
        .pulse_1_reg_i_254_0({u_axi_lite_n_35,u_axi_lite_n_36}),
        .pulse_1_reg_i_28(u_pulse_gen_n_123),
        .pulse_1_reg_i_38(u_pulse_gen_n_148),
        .pulse_1_reg_i_3_0({pulse_1_i_21[3],pulse_1_i_21[1]}),
        .pulse_1_reg_i_3_1(u_axi_lite_n_41),
        .pulse_1_reg_i_3_2(u_axi_lite_n_49),
        .pulse_1_reg_i_52({u_pulse_gen_n_132,u_pulse_gen_n_133,u_pulse_gen_n_134,u_pulse_gen_n_135}),
        .pulse_1_reg_i_75({u_pulse_gen_n_136,u_pulse_gen_n_137,u_pulse_gen_n_138,u_pulse_gen_n_139}),
        .pulse_1_reg_i_94({u_pulse_gen_n_128,u_pulse_gen_n_129,u_pulse_gen_n_130,u_pulse_gen_n_131}),
        .pulse_1_reg_i_9_0(u_axi_lite_n_65),
        .pulse_1_reg_i_9_1({pulse_1_i_48[3],pulse_1_i_48[1]}),
        .pulse_1_reg_i_9_2(u_axi_lite_n_54),
        .pulse_1_reg_i_9_3(u_axi_lite_n_59),
        .pulse_1_reg_i_9_4({pulse_1_i_90[3],pulse_1_i_90[1]}),
        .pulse_1_reg_i_9_5(u_axi_lite_n_63),
        .pulse_1_reg_i_9_6(u_axi_lite_n_64),
        .pulse_2(pulse_2),
        .pulse_20(pulse_20),
        .pulse_2_i_160_0({u_pulse_gen_n_179,u_pulse_gen_n_180,u_pulse_gen_n_181,u_pulse_gen_n_182}),
        .pulse_2_i_169_0({u_pulse_gen_n_199,u_pulse_gen_n_200,u_pulse_gen_n_201,u_pulse_gen_n_202}),
        .pulse_2_i_172({\pulse2_cfg_r_reg[31] ,\pulse2_cfg_r_reg[30] [3]}),
        .pulse_2_i_182_0({u_pulse_gen_n_174,u_pulse_gen_n_175,u_pulse_gen_n_176,u_pulse_gen_n_177}),
        .pulse_2_i_244_0({u_pulse_gen_n_195,u_pulse_gen_n_196,u_pulse_gen_n_197,u_pulse_gen_n_198}),
        .pulse_2_i_247({\pulse2_cfg_r_reg[30] [2:0],\pulse2_cfg_r_reg[25] [3]}),
        .pulse_2_i_258_0({u_pulse_gen_n_170,u_pulse_gen_n_171,u_pulse_gen_n_172,u_pulse_gen_n_173}),
        .pulse_2_i_313(\pulse2_cfg_r_reg[25] [2:0]),
        .pulse_2_i_313_0(\pulse2_cfg_r_reg[19] ),
        .pulse_2_reg_0(u_axi_lite_n_198),
        .pulse_2_reg_1(u_axi_lite_n_202),
        .pulse_2_reg_i_116_0({u_axi_lite_n_76,u_axi_lite_n_77,u_axi_lite_n_78,u_axi_lite_n_79}),
        .pulse_2_reg_i_116_1({u_axi_lite_n_70,u_axi_lite_n_71}),
        .pulse_2_reg_i_147({u_pulse_gen_n_166,u_pulse_gen_n_167,u_pulse_gen_n_168,u_pulse_gen_n_169}),
        .pulse_2_reg_i_179_0({u_axi_lite_n_86,u_axi_lite_n_87,u_axi_lite_n_88,u_axi_lite_n_89}),
        .pulse_2_reg_i_254_0({u_axi_lite_n_66,u_axi_lite_n_67}),
        .pulse_2_reg_i_28(u_pulse_gen_n_178),
        .pulse_2_reg_i_38(u_pulse_gen_n_203),
        .pulse_2_reg_i_3_0({pulse_2_i_21[3],pulse_2_i_21[1]}),
        .pulse_2_reg_i_3_1(u_axi_lite_n_72),
        .pulse_2_reg_i_3_2(u_axi_lite_n_80),
        .pulse_2_reg_i_52({u_pulse_gen_n_187,u_pulse_gen_n_188,u_pulse_gen_n_189,u_pulse_gen_n_190}),
        .pulse_2_reg_i_75({u_pulse_gen_n_191,u_pulse_gen_n_192,u_pulse_gen_n_193,u_pulse_gen_n_194}),
        .pulse_2_reg_i_94({u_pulse_gen_n_183,u_pulse_gen_n_184,u_pulse_gen_n_185,u_pulse_gen_n_186}),
        .pulse_2_reg_i_9_0(u_axi_lite_n_96),
        .pulse_2_reg_i_9_1({pulse_2_i_48[3],pulse_2_i_48[1]}),
        .pulse_2_reg_i_9_2(u_axi_lite_n_85),
        .pulse_2_reg_i_9_3(u_axi_lite_n_90),
        .pulse_2_reg_i_9_4({pulse_2_i_90[3],pulse_2_i_90[1]}),
        .pulse_2_reg_i_9_5(u_axi_lite_n_94),
        .pulse_2_reg_i_9_6(u_axi_lite_n_95),
        .pulse_3(pulse_3),
        .pulse_30(pulse_30),
        .pulse_3_i_160_0({u_pulse_gen_n_234,u_pulse_gen_n_235,u_pulse_gen_n_236,u_pulse_gen_n_237}),
        .pulse_3_i_169_0({u_pulse_gen_n_254,u_pulse_gen_n_255,u_pulse_gen_n_256,u_pulse_gen_n_257}),
        .pulse_3_i_172({\pulse3_cfg_r_reg[31] ,\pulse3_cfg_r_reg[30] [3]}),
        .pulse_3_i_182_0({u_pulse_gen_n_229,u_pulse_gen_n_230,u_pulse_gen_n_231,u_pulse_gen_n_232}),
        .pulse_3_i_244_0({u_pulse_gen_n_250,u_pulse_gen_n_251,u_pulse_gen_n_252,u_pulse_gen_n_253}),
        .pulse_3_i_247({\pulse3_cfg_r_reg[30] [2:0],\pulse3_cfg_r_reg[25] [3]}),
        .pulse_3_i_258_0({u_pulse_gen_n_225,u_pulse_gen_n_226,u_pulse_gen_n_227,u_pulse_gen_n_228}),
        .pulse_3_i_313(\pulse3_cfg_r_reg[25] [2:0]),
        .pulse_3_i_313_0(\pulse3_cfg_r_reg[19] ),
        .pulse_3_reg_0(u_axi_lite_n_199),
        .pulse_3_reg_1(u_axi_lite_n_203),
        .pulse_3_reg_i_116_0({u_axi_lite_n_107,u_axi_lite_n_108,u_axi_lite_n_109,u_axi_lite_n_110}),
        .pulse_3_reg_i_116_1({u_axi_lite_n_101,u_axi_lite_n_102}),
        .pulse_3_reg_i_147({u_pulse_gen_n_221,u_pulse_gen_n_222,u_pulse_gen_n_223,u_pulse_gen_n_224}),
        .pulse_3_reg_i_179_0({u_axi_lite_n_117,u_axi_lite_n_118,u_axi_lite_n_119,u_axi_lite_n_120}),
        .pulse_3_reg_i_254_0({u_axi_lite_n_97,u_axi_lite_n_98}),
        .pulse_3_reg_i_28(u_pulse_gen_n_233),
        .pulse_3_reg_i_38(u_pulse_gen_n_258),
        .pulse_3_reg_i_3_0({pulse_3_i_21[3],pulse_3_i_21[1]}),
        .pulse_3_reg_i_3_1(u_axi_lite_n_103),
        .pulse_3_reg_i_3_2(u_axi_lite_n_111),
        .pulse_3_reg_i_52({u_pulse_gen_n_242,u_pulse_gen_n_243,u_pulse_gen_n_244,u_pulse_gen_n_245}),
        .pulse_3_reg_i_75({u_pulse_gen_n_246,u_pulse_gen_n_247,u_pulse_gen_n_248,u_pulse_gen_n_249}),
        .pulse_3_reg_i_94({u_pulse_gen_n_238,u_pulse_gen_n_239,u_pulse_gen_n_240,u_pulse_gen_n_241}),
        .pulse_3_reg_i_9_0(u_axi_lite_n_127),
        .pulse_3_reg_i_9_1({pulse_3_i_48[3],pulse_3_i_48[1]}),
        .pulse_3_reg_i_9_2(u_axi_lite_n_116),
        .pulse_3_reg_i_9_3(u_axi_lite_n_121),
        .pulse_3_reg_i_9_4({pulse_3_i_90[3],pulse_3_i_90[1]}),
        .pulse_3_reg_i_9_5(u_axi_lite_n_125),
        .pulse_3_reg_i_9_6(u_axi_lite_n_126),
        .sys_clk(sys_clk));
endmodule

(* CHECK_LICENSE_TYPE = "pulse_odmr_system_pulse_odmr_ip_0_0,pulse_odmr_ip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "pulse_odmr_ip,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sys_clk,
    sys_rst_n,
    uart2_rx,
    uart2_tx,
    ref_clk_10m,
    pps_clk,
    mw_i,
    mw_q,
    ad_data,
    ad_otr,
    pulse_0,
    pulse_1,
    pulse_2,
    pulse_3,
    adc_clk);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi:S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pulse_odmr_system_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN pulse_odmr_system_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pulse_odmr_system_sys_clk_0, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_rst_n;
  input uart2_rx;
  output uart2_tx;
  output ref_clk_10m;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pps_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pps_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pulse_odmr_system_pulse_odmr_ip_0_0_pps_clk, INSERT_VIP 0" *) output pps_clk;
  output mw_i;
  output mw_q;
  input [7:0]ad_data;
  input ad_otr;
  output pulse_0;
  output pulse_1;
  output pulse_2;
  output pulse_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pulse_odmr_system_pulse_odmr_ip_0_0_adc_clk, INSERT_VIP 0" *) output adc_clk;

  wire \<const0> ;
  wire adc_clk;
  wire inst_n_13;
  wire inst_n_14;
  wire inst_n_15;
  wire inst_n_16;
  wire inst_n_17;
  wire inst_n_18;
  wire inst_n_19;
  wire inst_n_20;
  wire inst_n_21;
  wire inst_n_22;
  wire inst_n_23;
  wire inst_n_24;
  wire inst_n_25;
  wire inst_n_26;
  wire inst_n_27;
  wire inst_n_28;
  wire inst_n_29;
  wire inst_n_30;
  wire inst_n_31;
  wire inst_n_32;
  wire inst_n_33;
  wire inst_n_34;
  wire inst_n_35;
  wire inst_n_36;
  wire inst_n_37;
  wire inst_n_38;
  wire inst_n_39;
  wire inst_n_40;
  wire inst_n_41;
  wire inst_n_42;
  wire inst_n_43;
  wire inst_n_44;
  wire inst_n_45;
  wire inst_n_46;
  wire inst_n_47;
  wire inst_n_48;
  wire inst_n_49;
  wire inst_n_50;
  wire inst_n_51;
  wire inst_n_52;
  wire inst_n_53;
  wire inst_n_54;
  wire inst_n_55;
  wire inst_n_56;
  wire inst_n_57;
  wire inst_n_58;
  wire inst_n_59;
  wire inst_n_60;
  wire mw_i;
  wire mw_q;
  wire pps_clk;
  wire pulse_0;
  wire pulse_0_i_131_n_0;
  wire pulse_0_reg_i_40_n_1;
  wire pulse_0_reg_i_40_n_2;
  wire pulse_0_reg_i_40_n_3;
  wire pulse_0_reg_i_40_n_4;
  wire pulse_0_reg_i_40_n_5;
  wire pulse_0_reg_i_40_n_6;
  wire pulse_0_reg_i_40_n_7;
  wire pulse_0_reg_i_69_n_0;
  wire pulse_0_reg_i_69_n_1;
  wire pulse_0_reg_i_69_n_2;
  wire pulse_0_reg_i_69_n_3;
  wire pulse_0_reg_i_69_n_4;
  wire pulse_0_reg_i_69_n_5;
  wire pulse_0_reg_i_69_n_6;
  wire pulse_0_reg_i_69_n_7;
  wire pulse_0_reg_i_73_n_0;
  wire pulse_0_reg_i_73_n_1;
  wire pulse_0_reg_i_73_n_2;
  wire pulse_0_reg_i_73_n_3;
  wire pulse_0_reg_i_73_n_4;
  wire pulse_0_reg_i_73_n_5;
  wire pulse_0_reg_i_73_n_6;
  wire pulse_0_reg_i_73_n_7;
  wire pulse_1;
  wire pulse_1_i_131_n_0;
  wire pulse_1_reg_i_40_n_1;
  wire pulse_1_reg_i_40_n_2;
  wire pulse_1_reg_i_40_n_3;
  wire pulse_1_reg_i_40_n_4;
  wire pulse_1_reg_i_40_n_5;
  wire pulse_1_reg_i_40_n_6;
  wire pulse_1_reg_i_40_n_7;
  wire pulse_1_reg_i_69_n_0;
  wire pulse_1_reg_i_69_n_1;
  wire pulse_1_reg_i_69_n_2;
  wire pulse_1_reg_i_69_n_3;
  wire pulse_1_reg_i_69_n_4;
  wire pulse_1_reg_i_69_n_5;
  wire pulse_1_reg_i_69_n_6;
  wire pulse_1_reg_i_69_n_7;
  wire pulse_1_reg_i_73_n_0;
  wire pulse_1_reg_i_73_n_1;
  wire pulse_1_reg_i_73_n_2;
  wire pulse_1_reg_i_73_n_3;
  wire pulse_1_reg_i_73_n_4;
  wire pulse_1_reg_i_73_n_5;
  wire pulse_1_reg_i_73_n_6;
  wire pulse_1_reg_i_73_n_7;
  wire pulse_2;
  wire pulse_2_i_131_n_0;
  wire pulse_2_reg_i_40_n_1;
  wire pulse_2_reg_i_40_n_2;
  wire pulse_2_reg_i_40_n_3;
  wire pulse_2_reg_i_40_n_4;
  wire pulse_2_reg_i_40_n_5;
  wire pulse_2_reg_i_40_n_6;
  wire pulse_2_reg_i_40_n_7;
  wire pulse_2_reg_i_69_n_0;
  wire pulse_2_reg_i_69_n_1;
  wire pulse_2_reg_i_69_n_2;
  wire pulse_2_reg_i_69_n_3;
  wire pulse_2_reg_i_69_n_4;
  wire pulse_2_reg_i_69_n_5;
  wire pulse_2_reg_i_69_n_6;
  wire pulse_2_reg_i_69_n_7;
  wire pulse_2_reg_i_73_n_0;
  wire pulse_2_reg_i_73_n_1;
  wire pulse_2_reg_i_73_n_2;
  wire pulse_2_reg_i_73_n_3;
  wire pulse_2_reg_i_73_n_4;
  wire pulse_2_reg_i_73_n_5;
  wire pulse_2_reg_i_73_n_6;
  wire pulse_2_reg_i_73_n_7;
  wire pulse_3;
  wire pulse_3_i_131_n_0;
  wire pulse_3_reg_i_40_n_1;
  wire pulse_3_reg_i_40_n_2;
  wire pulse_3_reg_i_40_n_3;
  wire pulse_3_reg_i_40_n_4;
  wire pulse_3_reg_i_40_n_5;
  wire pulse_3_reg_i_40_n_6;
  wire pulse_3_reg_i_40_n_7;
  wire pulse_3_reg_i_69_n_0;
  wire pulse_3_reg_i_69_n_1;
  wire pulse_3_reg_i_69_n_2;
  wire pulse_3_reg_i_69_n_3;
  wire pulse_3_reg_i_69_n_4;
  wire pulse_3_reg_i_69_n_5;
  wire pulse_3_reg_i_69_n_6;
  wire pulse_3_reg_i_69_n_7;
  wire pulse_3_reg_i_73_n_0;
  wire pulse_3_reg_i_73_n_1;
  wire pulse_3_reg_i_73_n_2;
  wire pulse_3_reg_i_73_n_3;
  wire pulse_3_reg_i_73_n_4;
  wire pulse_3_reg_i_73_n_5;
  wire pulse_3_reg_i_73_n_6;
  wire pulse_3_reg_i_73_n_7;
  wire ref_clk_10m;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire sys_clk;
  wire sys_rst_n;
  wire [3:3]NLW_pulse_0_reg_i_40_CO_UNCONNECTED;
  wire [3:3]NLW_pulse_1_reg_i_40_CO_UNCONNECTED;
  wire [3:3]NLW_pulse_2_reg_i_40_CO_UNCONNECTED;
  wire [3:3]NLW_pulse_3_reg_i_40_CO_UNCONNECTED;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign uart2_tx = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_odmr_ip inst
       (.E(s_axi_arready),
        .O({inst_n_13,inst_n_14}),
        .adc_clk(adc_clk),
        .mw_i(mw_i),
        .mw_q(mw_q),
        .pps_clk(pps_clk),
        .\pulse0_cfg_r_reg[25] ({inst_n_21,inst_n_22,inst_n_23,inst_n_24}),
        .\pulse0_cfg_r_reg[30] ({inst_n_17,inst_n_18,inst_n_19,inst_n_20}),
        .\pulse0_cfg_r_reg[31] ({inst_n_15,inst_n_16}),
        .\pulse1_cfg_r_reg[19] ({inst_n_25,inst_n_26}),
        .\pulse1_cfg_r_reg[25] ({inst_n_33,inst_n_34,inst_n_35,inst_n_36}),
        .\pulse1_cfg_r_reg[30] ({inst_n_29,inst_n_30,inst_n_31,inst_n_32}),
        .\pulse1_cfg_r_reg[31] ({inst_n_27,inst_n_28}),
        .\pulse2_cfg_r_reg[19] ({inst_n_37,inst_n_38}),
        .\pulse2_cfg_r_reg[25] ({inst_n_45,inst_n_46,inst_n_47,inst_n_48}),
        .\pulse2_cfg_r_reg[30] ({inst_n_41,inst_n_42,inst_n_43,inst_n_44}),
        .\pulse2_cfg_r_reg[31] ({inst_n_39,inst_n_40}),
        .\pulse3_cfg_r_reg[19] ({inst_n_49,inst_n_50}),
        .\pulse3_cfg_r_reg[25] ({inst_n_57,inst_n_58,inst_n_59,inst_n_60}),
        .\pulse3_cfg_r_reg[30] ({inst_n_53,inst_n_54,inst_n_55,inst_n_56}),
        .\pulse3_cfg_r_reg[31] ({inst_n_51,inst_n_52}),
        .pulse_0(pulse_0),
        .pulse_0_i_21({pulse_0_reg_i_40_n_4,pulse_0_reg_i_40_n_5,pulse_0_reg_i_40_n_6,pulse_0_reg_i_40_n_7}),
        .pulse_0_i_48({pulse_0_reg_i_69_n_4,pulse_0_reg_i_69_n_5,pulse_0_reg_i_69_n_6,pulse_0_reg_i_69_n_7}),
        .pulse_0_i_90({pulse_0_reg_i_73_n_4,pulse_0_reg_i_73_n_5,pulse_0_reg_i_73_n_6,pulse_0_reg_i_73_n_7}),
        .pulse_1(pulse_1),
        .pulse_1_i_21({pulse_1_reg_i_40_n_4,pulse_1_reg_i_40_n_5,pulse_1_reg_i_40_n_6,pulse_1_reg_i_40_n_7}),
        .pulse_1_i_48({pulse_1_reg_i_69_n_4,pulse_1_reg_i_69_n_5,pulse_1_reg_i_69_n_6,pulse_1_reg_i_69_n_7}),
        .pulse_1_i_90({pulse_1_reg_i_73_n_4,pulse_1_reg_i_73_n_5,pulse_1_reg_i_73_n_6,pulse_1_reg_i_73_n_7}),
        .pulse_2(pulse_2),
        .pulse_2_i_21({pulse_2_reg_i_40_n_4,pulse_2_reg_i_40_n_5,pulse_2_reg_i_40_n_6,pulse_2_reg_i_40_n_7}),
        .pulse_2_i_48({pulse_2_reg_i_69_n_4,pulse_2_reg_i_69_n_5,pulse_2_reg_i_69_n_6,pulse_2_reg_i_69_n_7}),
        .pulse_2_i_90({pulse_2_reg_i_73_n_4,pulse_2_reg_i_73_n_5,pulse_2_reg_i_73_n_6,pulse_2_reg_i_73_n_7}),
        .pulse_3(pulse_3),
        .pulse_3_i_21({pulse_3_reg_i_40_n_4,pulse_3_reg_i_40_n_5,pulse_3_reg_i_40_n_6,pulse_3_reg_i_40_n_7}),
        .pulse_3_i_48({pulse_3_reg_i_69_n_4,pulse_3_reg_i_69_n_5,pulse_3_reg_i_69_n_6,pulse_3_reg_i_69_n_7}),
        .pulse_3_i_90({pulse_3_reg_i_73_n_4,pulse_3_reg_i_73_n_5,pulse_3_reg_i_73_n_6,pulse_3_reg_i_73_n_7}),
        .ref_clk_10m(ref_clk_10m),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .wr_en_reg(s_axi_bvalid));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_0_i_131
       (.I0(inst_n_14),
        .O(pulse_0_i_131_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_40
       (.CI(pulse_0_reg_i_69_n_0),
        .CO({NLW_pulse_0_reg_i_40_CO_UNCONNECTED[3],pulse_0_reg_i_40_n_1,pulse_0_reg_i_40_n_2,pulse_0_reg_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pulse_0_reg_i_40_n_4,pulse_0_reg_i_40_n_5,pulse_0_reg_i_40_n_6,pulse_0_reg_i_40_n_7}),
        .S({inst_n_15,inst_n_16,inst_n_17,inst_n_18}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_69
       (.CI(pulse_0_reg_i_73_n_0),
        .CO({pulse_0_reg_i_69_n_0,pulse_0_reg_i_69_n_1,pulse_0_reg_i_69_n_2,pulse_0_reg_i_69_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pulse_0_reg_i_69_n_4,pulse_0_reg_i_69_n_5,pulse_0_reg_i_69_n_6,pulse_0_reg_i_69_n_7}),
        .S({inst_n_19,inst_n_20,inst_n_21,inst_n_22}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_0_reg_i_73
       (.CI(1'b0),
        .CO({pulse_0_reg_i_73_n_0,pulse_0_reg_i_73_n_1,pulse_0_reg_i_73_n_2,pulse_0_reg_i_73_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({pulse_0_reg_i_73_n_4,pulse_0_reg_i_73_n_5,pulse_0_reg_i_73_n_6,pulse_0_reg_i_73_n_7}),
        .S({inst_n_23,inst_n_24,inst_n_13,pulse_0_i_131_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_1_i_131
       (.I0(inst_n_26),
        .O(pulse_1_i_131_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_40
       (.CI(pulse_1_reg_i_69_n_0),
        .CO({NLW_pulse_1_reg_i_40_CO_UNCONNECTED[3],pulse_1_reg_i_40_n_1,pulse_1_reg_i_40_n_2,pulse_1_reg_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pulse_1_reg_i_40_n_4,pulse_1_reg_i_40_n_5,pulse_1_reg_i_40_n_6,pulse_1_reg_i_40_n_7}),
        .S({inst_n_27,inst_n_28,inst_n_29,inst_n_30}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_69
       (.CI(pulse_1_reg_i_73_n_0),
        .CO({pulse_1_reg_i_69_n_0,pulse_1_reg_i_69_n_1,pulse_1_reg_i_69_n_2,pulse_1_reg_i_69_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pulse_1_reg_i_69_n_4,pulse_1_reg_i_69_n_5,pulse_1_reg_i_69_n_6,pulse_1_reg_i_69_n_7}),
        .S({inst_n_31,inst_n_32,inst_n_33,inst_n_34}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_1_reg_i_73
       (.CI(1'b0),
        .CO({pulse_1_reg_i_73_n_0,pulse_1_reg_i_73_n_1,pulse_1_reg_i_73_n_2,pulse_1_reg_i_73_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({pulse_1_reg_i_73_n_4,pulse_1_reg_i_73_n_5,pulse_1_reg_i_73_n_6,pulse_1_reg_i_73_n_7}),
        .S({inst_n_35,inst_n_36,inst_n_25,pulse_1_i_131_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_2_i_131
       (.I0(inst_n_38),
        .O(pulse_2_i_131_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_40
       (.CI(pulse_2_reg_i_69_n_0),
        .CO({NLW_pulse_2_reg_i_40_CO_UNCONNECTED[3],pulse_2_reg_i_40_n_1,pulse_2_reg_i_40_n_2,pulse_2_reg_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pulse_2_reg_i_40_n_4,pulse_2_reg_i_40_n_5,pulse_2_reg_i_40_n_6,pulse_2_reg_i_40_n_7}),
        .S({inst_n_39,inst_n_40,inst_n_41,inst_n_42}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_69
       (.CI(pulse_2_reg_i_73_n_0),
        .CO({pulse_2_reg_i_69_n_0,pulse_2_reg_i_69_n_1,pulse_2_reg_i_69_n_2,pulse_2_reg_i_69_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pulse_2_reg_i_69_n_4,pulse_2_reg_i_69_n_5,pulse_2_reg_i_69_n_6,pulse_2_reg_i_69_n_7}),
        .S({inst_n_43,inst_n_44,inst_n_45,inst_n_46}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_2_reg_i_73
       (.CI(1'b0),
        .CO({pulse_2_reg_i_73_n_0,pulse_2_reg_i_73_n_1,pulse_2_reg_i_73_n_2,pulse_2_reg_i_73_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({pulse_2_reg_i_73_n_4,pulse_2_reg_i_73_n_5,pulse_2_reg_i_73_n_6,pulse_2_reg_i_73_n_7}),
        .S({inst_n_47,inst_n_48,inst_n_37,pulse_2_i_131_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_3_i_131
       (.I0(inst_n_50),
        .O(pulse_3_i_131_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_40
       (.CI(pulse_3_reg_i_69_n_0),
        .CO({NLW_pulse_3_reg_i_40_CO_UNCONNECTED[3],pulse_3_reg_i_40_n_1,pulse_3_reg_i_40_n_2,pulse_3_reg_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pulse_3_reg_i_40_n_4,pulse_3_reg_i_40_n_5,pulse_3_reg_i_40_n_6,pulse_3_reg_i_40_n_7}),
        .S({inst_n_51,inst_n_52,inst_n_53,inst_n_54}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_69
       (.CI(pulse_3_reg_i_73_n_0),
        .CO({pulse_3_reg_i_69_n_0,pulse_3_reg_i_69_n_1,pulse_3_reg_i_69_n_2,pulse_3_reg_i_69_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pulse_3_reg_i_69_n_4,pulse_3_reg_i_69_n_5,pulse_3_reg_i_69_n_6,pulse_3_reg_i_69_n_7}),
        .S({inst_n_55,inst_n_56,inst_n_57,inst_n_58}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_3_reg_i_73
       (.CI(1'b0),
        .CO({pulse_3_reg_i_73_n_0,pulse_3_reg_i_73_n_1,pulse_3_reg_i_73_n_2,pulse_3_reg_i_73_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({pulse_3_reg_i_73_n_4,pulse_3_reg_i_73_n_5,pulse_3_reg_i_73_n_6,pulse_3_reg_i_73_n_7}),
        .S({inst_n_59,inst_n_60,inst_n_49,pulse_3_i_131_n_0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
