`timescale 1ns / 1ps
//=============================================================================
// pulse_odmr_ip.v
// Function: AXI4-Lite IP wrapper top module
// Description: Wraps pulse_odmr_top to expose AXI4-Lite bus interface ports,
//             for Vivado IP packaging and Block Design integration.
//             Original pulse_odmr_top.v remains unchanged for simulation compatibility.
//
// AXI4-Lite address map (base address 0x43C00000, allocated by PS):
//   0x00 : CTRL_REG      - Global control (bit[1]=pulse_en, bit[4]=seq_start)
//   0x04 : STAT_REG      - Global status (read-only)
//   0x10 : CLK_CFG_REG   - Clock configuration
//   0x14 : MMCM_CFG_REG  - MMCM configuration
//   0x18 : MW_FREQ_REG   - Microwave frequency
//   0x1C : MW_PHASE_REG  - Microwave phase
//   0x20 : PULSE0_CFG    - Pulse 0 config [31:16]=delay(ns), [15:0]=width(ns)
//   0x24 : PULSE1_CFG    - Pulse 1 config
//   0x28 : PULSE2_CFG    - Pulse 2 config
//   0x2C : PULSE3_CFG    - Pulse 3 config
//   0x30 : PULSE_SEQ_REG - Pulse enable mask
//   0x34 : SEQ_SEL_REG   - Sequence selection
//   0x38 : SEQ_PARAM0    - XY8-N N value
//   0x3C : SEQ_PARAM1    - XY8-N tau value
//   0x40 : SEQ_PARAM2    - Correlation spectrum t_corr
//   0x44 : ADC_CFG_REG   - ADC configuration
//   0x48 : ADC_STAT_REG  - ADC status (read-only)
//   0x60 : DMA_CFG_REG   - DMA configuration
//   0x64 : DMA_STAT_REG  - DMA status (read-only)
//=============================================================================

module pulse_odmr_ip(
    // ========== AXI4-Lite Slave Interface ==========
    input         s_axi_aclk,
    input         s_axi_aresetn,
    // Write Address Channel
    input  [31:0] s_axi_awaddr,
    input         s_axi_awvalid,
    output        s_axi_awready,
    // Write Data Channel
    input  [31:0] s_axi_wdata,
    input  [3:0]  s_axi_wstrb,
    input         s_axi_wvalid,
    output        s_axi_wready,
    // Write Response Channel
    output [1:0]  s_axi_bresp,
    output        s_axi_bvalid,
    input         s_axi_bready,
    // Read Address Channel
    input  [31:0] s_axi_araddr,
    input         s_axi_arvalid,
    output        s_axi_arready,
    // Read Data Channel
    output [31:0] s_axi_rdata,
    output [1:0]  s_axi_rresp,
    output        s_axi_rvalid,
    input         s_axi_rready,

    // ========== PL External Ports (J3/J4 Expansion) ==========
    // Global clock and reset
    input         sys_clk,          // 50MHz crystal, Pin U18, Bank35
    input         sys_rst_n,        // Active-low reset

    // J3 expansion port
    input         uart2_rx,         // J3 Pin1
    output        uart2_tx,         // J3 Pin2

    // J4 expansion port
    output        ref_clk_10m,      // J4 Pin1, 10MHz reference
    output        pps_clk,          // J4 Pin2, 1Hz PPS
    output        mw_i,             // J4 Pin3, microwave I channel
    output        mw_q,             // J4 Pin4, microwave Q channel
    input  [7:0]  ad_data,          // J4 Pin5-12, AD9280 data
    input         ad_otr,           // J4 Pin13, overrange
    output        pulse_0,          // J4 Pin14, AOM control
    output        pulse_1,          // J4 Pin15, microwave switch
    output        pulse_2,          // J4 Pin16, peripheral trigger
    output        pulse_3,          // J4 Pin17, global sync
    output        adc_clk           // J4 Pin33, 32MHz sampling clock
);

// -------------------- Internal AXI-Lite Register Signals --------------------
wire [31:0] ctrl_reg;
wire [31:0] stat_reg;
wire [31:0] clk_cfg_reg;
wire [31:0] mmcm_cfg_reg;
wire [31:0] mw_freq_reg;
wire [31:0] mw_phase_reg;
wire [31:0] pulse0_cfg;
wire [31:0] pulse1_cfg;
wire [31:0] pulse2_cfg;
wire [31:0] pulse3_cfg;
wire [31:0] pulse_seq_reg;
wire [31:0] seq_sel_reg;
wire [31:0] seq_param0;
wire [31:0] seq_param1;
wire [31:0] seq_param2;
wire [31:0] adc_cfg_reg;
wire [31:0] adc_stat_reg;
wire [31:0] dma_cfg_reg;
wire [31:0] dma_stat_reg;

// -------------------- AXI4-Lite Slave Instance --------------------
axi_lite_slave u_axi_lite(
    .s_axi_aclk    (s_axi_aclk),
    .s_axi_aresetn (s_axi_aresetn),
    .s_axi_awaddr  (s_axi_awaddr),
    .s_axi_awvalid (s_axi_awvalid),
    .s_axi_awready (s_axi_awready),
    .s_axi_wdata   (s_axi_wdata),
    .s_axi_wstrb   (s_axi_wstrb),
    .s_axi_wvalid  (s_axi_wvalid),
    .s_axi_wready  (s_axi_wready),
    .s_axi_bresp   (s_axi_bresp),
    .s_axi_bvalid  (s_axi_bvalid),
    .s_axi_bready  (s_axi_bready),
    .s_axi_araddr  (s_axi_araddr),
    .s_axi_arvalid (s_axi_arvalid),
    .s_axi_arready (s_axi_arready),
    .s_axi_rdata   (s_axi_rdata),
    .s_axi_rresp   (s_axi_rresp),
    .s_axi_rvalid  (s_axi_rvalid),
    .s_axi_rready  (s_axi_rready),
    // Register interface
    .ctrl_reg      (ctrl_reg),
    .stat_reg      (stat_reg),
    .clk_cfg_reg   (clk_cfg_reg),
    .mmcm_cfg_reg  (mmcm_cfg_reg),
    .mw_freq_reg   (mw_freq_reg),
    .mw_phase_reg  (mw_phase_reg),
    .pulse0_cfg    (pulse0_cfg),
    .pulse1_cfg    (pulse1_cfg),
    .pulse2_cfg    (pulse2_cfg),
    .pulse3_cfg    (pulse3_cfg),
    .pulse_seq_reg (pulse_seq_reg),
    .seq_sel_reg   (seq_sel_reg),
    .seq_param0    (seq_param0),
    .seq_param1    (seq_param1),
    .seq_param2    (seq_param2),
    .adc_cfg_reg   (adc_cfg_reg),
    .adc_stat_reg  (adc_stat_reg),
    .dma_cfg_reg   (dma_cfg_reg),
    .dma_stat_reg  (dma_stat_reg)
);

// -------------------- Internal Signals --------------------
wire       mmcm_locked;
wire       adc_clk_i;
wire       ref_clk_10m_i;
wire       pps_clk_i;
wire       pulse_en   = ctrl_reg[1];
wire       seq_start  = ctrl_reg[4];

// -------------------- Clock Management --------------------
clk_gen u_clk_gen(
    .sys_clk      (sys_clk),
    .sys_rst_n    (sys_rst_n),
    .adc_clk      (adc_clk_i),
    .ref_clk_10m  (ref_clk_10m_i),
    .pps_clk      (pps_clk_i),
    .mmcm_locked  (mmcm_locked)
);

// -------------------- Pulse Generation --------------------
pulse_gen u_pulse_gen(
    .sys_clk       (sys_clk),
    .sys_rst_n     (sys_rst_n),
    .mmcm_locked   (mmcm_locked),
    .pulse0_cfg    (pulse0_cfg),
    .pulse1_cfg    (pulse1_cfg),
    .pulse2_cfg    (pulse2_cfg),
    .pulse3_cfg    (pulse3_cfg),
    .pulse_seq_mask(pulse_seq_reg),
    .seq_sel       (seq_sel_reg),
    .seq_start     (seq_start),
    .pulse_en      (pulse_en),
    .pulse_0       (pulse_0),
    .pulse_1       (pulse_1),
    .pulse_2       (pulse_2),
    .pulse_3       (pulse_3)
);

// -------------------- Microwave Phase Generation --------------------
mw_phase_gen u_mw_phase_gen(
    .sys_clk      (sys_clk),
    .sys_rst_n    (sys_rst_n),
    .mw_freq_reg  (mw_freq_reg),
    .mw_phase_reg (mw_phase_reg),
    .mw_i         (mw_i),
    .mw_q         (mw_q)
);

// -------------------- AD9280 Driver --------------------
ad9280_driver u_ad9280_driver(
    .adc_clk      (adc_clk_i),
    .sys_rst_n    (sys_rst_n),
    .ad_data      (ad_data),
    .ad_otr       (ad_otr),
    .fifo_wr_data (),
    .fifo_wr_en   (),
    .fifo_full    (),
    .ovr_flag     (),
    .ovr_clr      (ctrl_reg[1])
);

// -------------------- Output Assignments --------------------
assign ref_clk_10m = ref_clk_10m_i;
assign pps_clk     = pps_clk_i;
assign adc_clk     = adc_clk_i;

endmodule
