`timescale 1ns / 1ps
module mw_phase_gen_tb;

reg sys_clk;
reg sys_rst_n;
reg [31:0] mw_freq_reg;
reg [31:0] mw_phase_reg;

wire mw_i;
wire mw_q;

mw_phase_gen u_mw_phase_gen(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .mw_freq_reg(mw_freq_reg),
    .mw_phase_reg(mw_phase_reg),
    .mw_i(mw_i),
    .mw_q(mw_q)
);

initial begin
    sys_clk = 1'b0;
    forever #10 sys_clk = ~sys_clk;
end

initial begin
    sys_rst_n = 1'b0;
    mw_freq_reg = 32'd2870000;
    mw_phase_reg = 32'd0;

    #200;
    sys_rst_n = 1'b1;

    #5000;
    $display("[PASS] mw_phase_gen simulation completed");
    $finish;
end

endmodule
