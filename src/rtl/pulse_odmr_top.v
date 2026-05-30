`timescale 1ns / 1ps
// Top-level module: instantiates all PL sub-modules, connects J3/J4 expansion ports
// Based on: Zhen Dian Yuan Zi FPGA development guide, user document 3.1 pin assignment
module pulse_odmr_top(
    // Global clock and reset
    input        sys_clk,         // 50MHz crystal, Pin U18, Bank35
    input        sys_rst_n,       // Active-low reset
    // J3 expansion port pins (example, actual per user document 3.1.1)
    input        uart2_rx,        // J3 Pin1
    output       uart2_tx,        // J3 Pin2
    // J4 expansion port pins
    output       ref_clk_10m,     // J4 Pin1, 10MHz reference
    output       pps_clk,         // J4 Pin2, 1Hz PPS
    output       mw_i,            // J4 Pin3, microwave I channel
    output       mw_q,            // J4 Pin4, microwave Q channel
    input  [7:0] ad_data,         // J4 Pin5-12, AD9280 data
    input        ad_otr,          // J4 Pin13, overrange
    output       pulse_0,         // J4 Pin14, AOM control
    output       pulse_1,         // J4 Pin15, microwave switch
    output       pulse_2,         // J4 Pin16, peripheral trigger
    output       pulse_3,         // J4 Pin17, global sync
    output       adc_clk,         // J4 Pin33, 32MHz sampling clock
    // Disabled DA pins (set DONT_TOUCH)
    (* DONT_TOUCH = "true" *) output reg da_clk,
    (* DONT_TOUCH = "true" *) output reg [7:0] da_data
);

// -------------------- Internal signal definitions --------------------
wire       mmcm_locked;
wire       adc_clk_i;
wire       ref_clk_10m_i;
wire       pps_clk_i;
// AXI-Lite register signals
wire [31:0] ctrl_reg;
wire [31:0] stat_reg;
wire [31:0] pulse0_cfg;
wire [31:0] pulse1_cfg;
wire [31:0] pulse2_cfg;
wire [31:0] pulse3_cfg;
wire [31:0] pulse_seq_mask;
wire [31:0] seq_sel_reg;
wire [31:0] mw_freq_reg;
wire [31:0] mw_phase_reg;
wire [31:0] adc_cfg_reg;
wire [31:0] adc_stat_reg;
wire [31:0] dma_cfg_reg;
wire [31:0] dma_stat_reg;
// Configuration signals
wire       pulse_en = ctrl_reg[1];
wire       seq_start = ctrl_reg[4];

// -------------------- Module instantiation --------------------
// 1. Clock management
clk_gen u_clk_gen(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .adc_clk(adc_clk_i),
    .ref_clk_10m(ref_clk_10m_i),
    .pps_clk(pps_clk_i),
    .mmcm_locked(mmcm_locked)
);

// 2. AXI-Lite slave (example, connect to PS AXI bus in actual design)
axi_lite_slave u_axi_lite(
    // AXI-Lite bus interface (connect to PS in actual design)
    .s_axi_aclk(sys_clk),
    .s_axi_aresetn(sys_rst_n),
    .s_axi_awaddr(32'h43C00000),
    .s_axi_awvalid(1'b0),
    .s_axi_awready(),
    .s_axi_wdata(32'h00000000),
    .s_axi_wstrb(4'h0),
    .s_axi_wvalid(1'b0),
    .s_axi_wready(),
    .s_axi_bresp(),
    .s_axi_bvalid(),
    .s_axi_bready(1'b1),
    .s_axi_araddr(32'h43C00000),
    .s_axi_arvalid(1'b0),
    .s_axi_arready(),
    .s_axi_rdata(),
    .s_axi_rresp(),
    .s_axi_rvalid(),
    .s_axi_rready(1'b1),
    // Register interface
    .ctrl_reg(ctrl_reg),
    .stat_reg(stat_reg),
    .clk_cfg_reg(),
    .mmcm_cfg_reg(),
    .mw_freq_reg(mw_freq_reg),
    .mw_phase_reg(mw_phase_reg),
    .pulse0_cfg(pulse0_cfg),
    .pulse1_cfg(pulse1_cfg),
    .pulse2_cfg(pulse2_cfg),
    .pulse3_cfg(pulse3_cfg),
    .pulse_seq_reg(pulse_seq_mask),
    .seq_sel_reg(seq_sel_reg),
    .seq_param0(),
    .seq_param1(),
    .seq_param2(),
    .adc_cfg_reg(adc_cfg_reg),
    .adc_stat_reg(adc_stat_reg),
    .dma_cfg_reg(dma_cfg_reg),
    .dma_stat_reg(dma_stat_reg)
);

// 3. Pulse generation
pulse_gen u_pulse_gen(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .mmcm_locked(mmcm_locked),
    .pulse0_cfg(pulse0_cfg),
    .pulse1_cfg(pulse1_cfg),
    .pulse2_cfg(pulse2_cfg),
    .pulse3_cfg(pulse3_cfg),
    .pulse_seq_mask(pulse_seq_mask),
    .seq_sel(seq_sel_reg),
    .seq_start(seq_start),
    .pulse_en(pulse_en),
    .pulse_0(pulse_0),
    .pulse_1(pulse_1),
    .pulse_2(pulse_2),
    .pulse_3(pulse_3)
);

// 4. Microwave phase generation
mw_phase_gen u_mw_phase_gen(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .mw_freq_reg(mw_freq_reg),
    .mw_phase_reg(mw_phase_reg),
    .mw_i(mw_i),
    .mw_q(mw_q)
);

// 5. AD9280 driver
ad9280_driver u_ad9280_driver(
    .adc_clk(adc_clk_i),
    .sys_rst_n(sys_rst_n),
    .ad_data(ad_data),
    .ad_otr(ad_otr),
    .fifo_wr_data(),
    .fifo_wr_en(),
    .fifo_full(),
    .ovr_flag(),
    .ovr_clr(ctrl_reg[1])
);

// -------------------- Output signal assignments --------------------
assign ref_clk_10m = ref_clk_10m_i;
assign pps_clk = pps_clk_i;
assign adc_clk = adc_clk_i;

// Disable DA pins, no logic connected
always @(*) begin
    da_clk = 1'b0;
    da_data = 8'd0;
end

endmodule