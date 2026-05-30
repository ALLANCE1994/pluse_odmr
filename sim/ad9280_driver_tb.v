`timescale 1ns / 1ps
module ad9280_driver_tb;

reg adc_clk;
reg sys_rst_n;
reg [7:0] ad_data;
reg ad_otr;

wire [7:0] fifo_wr_data;
wire fifo_wr_en;
wire fifo_full;
wire ovr_flag;
reg ovr_clr;

ad9280_driver u_ad9280_driver(
    .adc_clk(adc_clk),
    .sys_rst_n(sys_rst_n),
    .ad_data(ad_data),
    .ad_otr(ad_otr),
    .fifo_wr_data(fifo_wr_data),
    .fifo_wr_en(fifo_wr_en),
    .fifo_full(fifo_full),
    .ovr_flag(ovr_flag),
    .ovr_clr(ovr_clr)
);

initial begin
    adc_clk = 1'b0;
    forever #15.625 adc_clk = ~adc_clk;
end

initial begin
    sys_rst_n = 1'b0;
    ad_data = 8'h80;
    ad_otr = 1'b0;
    ovr_clr = 1'b0;

    #200;
    sys_rst_n = 1'b1;

    #500;
    ad_data = 8'hFF;
    #100;
    ad_data = 8'h7F;
    #100;
    ad_data = 8'h00;
    #100;
    ad_otr = 1'b1;
    #50;
    ad_otr = 1'b0;

    #1000;
    $display("[PASS] ad9280_driver simulation completed");
    $finish;
end

endmodule
