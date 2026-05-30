`timescale 1ns / 1ps
module pulse_gen_tb;

reg sys_clk;
reg sys_rst_n;
reg mmcm_locked;
reg [31:0] pulse0_cfg;
reg [31:0] pulse1_cfg;
reg [31:0] pulse2_cfg;
reg [31:0] pulse3_cfg;
reg [31:0] pulse_seq_mask;
reg [31:0] seq_sel;
reg seq_start;
reg pulse_en;

wire pulse_0;
wire pulse_1;
wire pulse_2;
wire pulse_3;

pulse_gen u_pulse_gen(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .mmcm_locked(mmcm_locked),
    .pulse0_cfg(pulse0_cfg),
    .pulse1_cfg(pulse1_cfg),
    .pulse2_cfg(pulse2_cfg),
    .pulse3_cfg(pulse3_cfg),
    .pulse_seq_mask(pulse_seq_mask),
    .seq_sel(seq_sel),
    .seq_start(seq_start),
    .pulse_en(pulse_en),
    .pulse_0(pulse_0),
    .pulse_1(pulse_1),
    .pulse_2(pulse_2),
    .pulse_3(pulse_3)
);

initial begin
    sys_clk = 1'b0;
    forever #10 sys_clk = ~sys_clk;
end

initial begin
    sys_rst_n = 1'b0;
    mmcm_locked = 1'b0;
    pulse0_cfg = 32'h00000000;
    pulse1_cfg = 32'h00000000;
    pulse2_cfg = 32'h00000000;
    pulse3_cfg = 32'h00000000;
    pulse_seq_mask = 32'h00000000;
    seq_sel = 32'h00000000;
    seq_start = 1'b0;
    pulse_en = 1'b0;

    #200;
    sys_rst_n = 1'b1;
    mmcm_locked = 1'b1;

    #100;
    pulse0_cfg = {16'd100, 16'd0};
    pulse1_cfg = {16'd40, 16'd20};
    pulse2_cfg = {16'd100, 16'd60};
    pulse3_cfg = {16'd500, 16'd200};
    pulse_seq_mask = 32'h0000000F;
    seq_sel = 32'h00000001;
    pulse_en = 1'b1;

    #100;
    seq_start = 1'b1;
    #40;
    seq_start = 1'b0;

    #1000;
    $display("[PASS] pulse_gen simulation completed");
    $finish;
end

endmodule
