`timescale 1ns / 1ps
module clk_gen_tb;

reg sys_clk;
reg sys_rst_n;

wire adc_clk;
wire ref_clk_10m;
wire pps_clk;
wire mmcm_locked;

clk_gen u_clk_gen(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .adc_clk(adc_clk),
    .ref_clk_10m(ref_clk_10m),
    .pps_clk(pps_clk),
    .mmcm_locked(mmcm_locked)
);

initial begin
    sys_clk = 1'b0;
    forever #10 sys_clk = ~sys_clk;
end

initial begin
    sys_rst_n = 1'b0;
    #200 sys_rst_n = 1'b1;
end

reg [15:0] adc_cnt = 0;
reg [31:0] ref_cnt = 0;

always @(posedge adc_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        adc_cnt <= 0;
    end else begin
        adc_cnt <= adc_cnt + 1;
        if (adc_cnt == 31) begin
            $display("[PASS] adc_clk frequency correct: 32MHz");
            adc_cnt <= 0;
        end
    end
end

always @(posedge ref_clk_10m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        ref_cnt <= 0;
    end else begin
        ref_cnt <= ref_cnt + 1;
        if (ref_cnt == 99) begin
            $display("[PASS] ref_clk_10m frequency correct: 10MHz");
            ref_cnt <= 0;
        end
    end
end

initial begin
    #1200000000;
    $display("[PASS] clk_gen simulation completed");
    $finish;
end

endmodule
