`timescale 1ns / 1ps
// AXI4-Lite slave module: implements all PS-PL register mappings
// Based on: AXI-Lite protocol specification, user document 4.1 register map
module axi_lite_slave(
    // AXI-Lite bus interface
    input         s_axi_aclk,
    input         s_axi_aresetn,
    input  [31:0] s_axi_awaddr,
    input         s_axi_awvalid,
    output        s_axi_awready,
    input  [31:0] s_axi_wdata,
    input  [3:0]  s_axi_wstrb,
    input         s_axi_wvalid,
    output        s_axi_wready,
    output [1:0]  s_axi_bresp,
    output        s_axi_bvalid,
    input         s_axi_bready,
    input  [31:0] s_axi_araddr,
    input         s_axi_arvalid,
    output        s_axi_arready,
    output [31:0] s_axi_rdata,
    output [1:0]  s_axi_rresp,
    output        s_axi_rvalid,
    input         s_axi_rready,

    // Register outputs (connected to functional modules)
    output [31:0] ctrl_reg,        // 0x00 Global control
    input  [31:0] stat_reg,        // 0x04 Global status
    output [31:0] clk_cfg_reg,     // 0x10 Clock configuration
    output [31:0] mmcm_cfg_reg,    // 0x14 MMCM configuration
    output [31:0] mw_freq_reg,     // 0x18 Microwave frequency
    output [31:0] mw_phase_reg,    // 0x1C Microwave phase
    output [31:0] pulse0_cfg,      // 0x20 Pulse 0 configuration
    output [31:0] pulse1_cfg,      // 0x24 Pulse 1 configuration
    output [31:0] pulse2_cfg,      // 0x28 Pulse 2 configuration
    output [31:0] pulse3_cfg,      // 0x2C Pulse 3 configuration
    output [31:0] pulse_seq_reg,   // 0x30 Pulse enable mask
    output [31:0] seq_sel_reg,     // 0x34 Sequence selection
    output [31:0] seq_param0,      // 0x38 XY8-N N value
    output [31:0] seq_param1,      // 0x3C XY8-N tau value
    output [31:0] seq_param2,      // 0x40 Correlation spectrum t_corr
    output [31:0] adc_cfg_reg,     // 0x44 ADC configuration
    input  [31:0] adc_stat_reg,    // 0x48 ADC status
    output [31:0] dma_cfg_reg,     // 0x60 DMA configuration
    input  [31:0] dma_stat_reg     // 0x64 DMA status
);

// -------------------- Address offset capture (base address 0x43C00000, blocking for race-free sampling) --------------------
reg  [31:0] wr_off;
reg  [31:0] rd_off;
reg         wr_en;
reg         rd_en;

// -------------------- Write channel logic --------------------
reg [31:0] ctrl_reg_r;
reg [31:0] clk_cfg_reg_r;
reg [31:0] mmcm_cfg_reg_r;
reg [31:0] mw_freq_reg_r;
reg [31:0] mw_phase_reg_r;
reg [31:0] pulse0_cfg_r;
reg [31:0] pulse1_cfg_r;
reg [31:0] pulse2_cfg_r;
reg [31:0] pulse3_cfg_r;
reg [31:0] pulse_seq_reg_r;
reg [31:0] seq_sel_reg_r;
reg [31:0] seq_param0_r;
reg [31:0] seq_param1_r;
reg [31:0] seq_param2_r;
reg [31:0] adc_cfg_reg_r;
reg [31:0] dma_cfg_reg_r;

assign ctrl_reg    = ctrl_reg_r;
assign clk_cfg_reg = clk_cfg_reg_r;
assign mmcm_cfg_reg= mmcm_cfg_reg_r;
assign mw_freq_reg= mw_freq_reg_r;
assign mw_phase_reg= mw_phase_reg_r;
assign pulse0_cfg = pulse0_cfg_r;
assign pulse1_cfg = pulse1_cfg_r;
assign pulse2_cfg = pulse2_cfg_r;
assign pulse3_cfg = pulse3_cfg_r;
assign pulse_seq_reg= pulse_seq_reg_r;
assign seq_sel_reg= seq_sel_reg_r;
assign seq_param0 = seq_param0_r;
assign seq_param1 = seq_param1_r;
assign seq_param2 = seq_param2_r;
assign adc_cfg_reg= adc_cfg_reg_r;
assign dma_cfg_reg= dma_cfg_reg_r;

// Write ready signals
assign s_axi_awready = s_axi_awvalid && s_axi_wvalid && !wr_en;
assign s_axi_wready  = s_axi_awvalid && s_axi_wvalid && !wr_en;
assign s_axi_bresp   = 2'b00; // Write response OK
assign s_axi_bvalid = wr_en;

always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
    if (!s_axi_aresetn) begin
        ctrl_reg_r     <= 32'h00000000;
        clk_cfg_reg_r  <= 32'hC3500000;
        mmcm_cfg_reg_r <= 32'h50190110;
        mw_freq_reg_r  <= 32'h002BCA00; // Default 2.87GHz
        mw_phase_reg_r <= 32'h00000000;
        pulse0_cfg_r   <= 32'h00001388; // Default width 5000ns, delay 0ns
        pulse1_cfg_r   <= 32'h00140028; // Default width 40ns, delay 20ns
        pulse2_cfg_r   <= 32'h00001388;
        pulse3_cfg_r   <= 32'h00001388;
        pulse_seq_reg_r<= 32'h0000000F; // Default enable all pulses
        seq_sel_reg_r  <= 32'h00000000;
        seq_param0_r   <= 32'h00000001; // Default N=1
        seq_param1_r   <= 32'h0000017A; // Default tau=378ns
        seq_param2_r   <= 32'h000186A0; // Default t_corr=100us
        adc_cfg_reg_r  <= 32'h00000400; // Default sample 1024 points
        dma_cfg_reg_r  <= 32'h00000400; // Default DMA upload 1024 bytes
        wr_en          <= 1'b0;
    end else begin
        wr_en <= 1'b0;
        // Perform write operation when both address and data are valid
        if (s_axi_awvalid && s_axi_wvalid && !wr_en) begin
            wr_en <= 1'b1;
            wr_off = s_axi_awaddr - 32'h43C00000;
            $display("[AXI_WR] awaddr=0x%h wr_off=0x%h wdata=0x%h", s_axi_awaddr, wr_off, s_axi_wdata);
            case (wr_off)
                32'h00: ctrl_reg_r     <= s_axi_wdata;
                32'h10: clk_cfg_reg_r  <= s_axi_wdata;
                32'h14: mmcm_cfg_reg_r <= s_axi_wdata;
                32'h18: mw_freq_reg_r  <= s_axi_wdata;
                32'h1C: mw_phase_reg_r <= s_axi_wdata;
                32'h20: pulse0_cfg_r   <= s_axi_wdata;
                32'h24: pulse1_cfg_r   <= s_axi_wdata;
                32'h28: pulse2_cfg_r   <= s_axi_wdata;
                32'h2C: pulse3_cfg_r   <= s_axi_wdata;
                32'h30: pulse_seq_reg_r<= s_axi_wdata;
                32'h34: seq_sel_reg_r  <= s_axi_wdata;
                32'h38: seq_param0_r   <= s_axi_wdata;
                32'h3C: seq_param1_r   <= s_axi_wdata;
                32'h40: seq_param2_r   <= s_axi_wdata;
                32'h44: adc_cfg_reg_r  <= s_axi_wdata;
                32'h60: dma_cfg_reg_r  <= s_axi_wdata;
                default: ; // Undefined address, no operation to avoid latch
            endcase
        end
    end
end

// -------------------- Read channel logic --------------------
reg [31:0] rdata_r;
assign s_axi_rdata = rdata_r;
assign s_axi_rresp = 2'b00; // Read response OK
assign s_axi_arready = s_axi_arvalid && !rd_en;
assign s_axi_rvalid  = rd_en;

always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
    if (!s_axi_aresetn) begin
        rdata_r <= 32'h00000000;
        rd_en   <= 1'b0;
    end else begin
        rd_en <= 1'b0;
        if (s_axi_arvalid && !rd_en) begin
            rd_en <= 1'b1;
            rd_off = s_axi_araddr - 32'h43C00000;
            $display("[AXI_RD] araddr=0x%h rd_off=0x%h", s_axi_araddr, rd_off);
            case (rd_off)
                32'h00: rdata_r <= ctrl_reg_r;
                32'h04: rdata_r <= stat_reg;
                32'h10: rdata_r <= clk_cfg_reg_r;
                32'h14: rdata_r <= mmcm_cfg_reg_r;
                32'h18: rdata_r <= mw_freq_reg_r;
                32'h1C: rdata_r <= mw_phase_reg_r;
                32'h20: rdata_r <= pulse0_cfg_r;
                32'h24: rdata_r <= pulse1_cfg_r;
                32'h28: rdata_r <= pulse2_cfg_r;
                32'h2C: rdata_r <= pulse3_cfg_r;
                32'h30: rdata_r <= pulse_seq_reg_r;
                32'h34: rdata_r <= seq_sel_reg_r;
                32'h38: rdata_r <= seq_param0_r;
                32'h3C: rdata_r <= seq_param1_r;
                32'h40: rdata_r <= seq_param2_r;
                32'h44: rdata_r <= adc_cfg_reg_r;
                32'h48: rdata_r <= adc_stat_reg;
                32'h60: rdata_r <= dma_cfg_reg_r;
                32'h64: rdata_r <= dma_stat_reg;
                default: rdata_r <= 32'h00000000; // Undefined address returns 0
            endcase
        end
    end
end

endmodule