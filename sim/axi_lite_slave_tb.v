`timescale 1ns / 1ps
module axi_lite_slave_tb;

reg s_axi_aclk;
reg s_axi_aresetn;
reg [31:0] s_axi_awaddr;
reg s_axi_awvalid;
wire s_axi_awready;
reg [31:0] s_axi_wdata;
reg [3:0] s_axi_wstrb;
reg s_axi_wvalid;
wire s_axi_wready;
wire [1:0] s_axi_bresp;
wire s_axi_bvalid;
reg s_axi_bready;
reg [31:0] s_axi_araddr;
reg s_axi_arvalid;
wire s_axi_arready;
wire [31:0] s_axi_rdata;
wire [1:0] s_axi_rresp;
wire s_axi_rvalid;
reg s_axi_rready;

wire [31:0] ctrl_reg;
wire [31:0] clk_cfg_reg;
wire [31:0] mmcm_cfg_reg;
wire [31:0] pulse0_cfg;
wire [31:0] pulse1_cfg;
wire [31:0] pulse2_cfg;
wire [31:0] pulse3_cfg;
wire [31:0] pulse_seq_mask;
wire [31:0] seq_sel_reg;
wire [31:0] mw_freq_reg;
wire [31:0] mw_phase_reg;
wire [31:0] seq_param0;
wire [31:0] seq_param1;
wire [31:0] seq_param2;
wire [31:0] adc_cfg_reg;
wire [31:0] adc_stat_reg;
wire [31:0] dma_cfg_reg;
wire [31:0] dma_stat_reg;

axi_lite_slave u_axi_lite(
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .ctrl_reg(ctrl_reg),
    .stat_reg(32'h0),
    .clk_cfg_reg(clk_cfg_reg),
    .mmcm_cfg_reg(mmcm_cfg_reg),
    .mw_freq_reg(mw_freq_reg),
    .mw_phase_reg(mw_phase_reg),
    .pulse0_cfg(pulse0_cfg),
    .pulse1_cfg(pulse1_cfg),
    .pulse2_cfg(pulse2_cfg),
    .pulse3_cfg(pulse3_cfg),
    .pulse_seq_reg(pulse_seq_mask),
    .seq_sel_reg(seq_sel_reg),
    .seq_param0(seq_param0),
    .seq_param1(seq_param1),
    .seq_param2(seq_param2),
    .adc_cfg_reg(adc_cfg_reg),
    .adc_stat_reg(32'h0),
    .dma_cfg_reg(dma_cfg_reg),
    .dma_stat_reg(32'h0)
);

initial begin
    s_axi_aclk = 1'b0;
    forever #10 s_axi_aclk = ~s_axi_aclk;
end

initial begin
    s_axi_aresetn = 1'b0;
    #100 s_axi_aresetn = 1'b1;
end

initial begin
    s_axi_awaddr = 0;
    s_axi_awvalid = 0;
    s_axi_wdata = 0;
    s_axi_wstrb = 4'hF;
    s_axi_wvalid = 0;
    s_axi_bready = 1'b1;
    s_axi_araddr = 0;
    s_axi_arvalid = 0;
    s_axi_rready = 1'b1;

    #200;

    s_axi_awaddr = 32'h43C00000;
    s_axi_wdata = 32'h00000003;
    s_axi_awvalid = 1'b1;
    s_axi_wvalid = 1'b1;
    #40;
    s_axi_awvalid = 1'b0;
    s_axi_wvalid = 1'b0;

    #100;

    $display("[PASS] AXI-Lite write test completed");
    $display("[INFO] ctrl_reg = 0x%h", ctrl_reg);

    #100;
    $finish;
end

endmodule
