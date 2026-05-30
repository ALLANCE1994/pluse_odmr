`timescale 1ns / 1ps

module tb_hs_ad_da();

parameter  CLK_PERIOD = 20;

reg     sys_clk;
reg     sys_rst_n;

initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    #20
    sys_rst_n = 1'b1;
end

always #(CLK_PERIOD/2) sys_clk = ~sys_clk;

hs_ad_da u_hs_ad_da(
    .sys_clk          (sys_clk        ),
    .sys_rst_n        (sys_rst_n      ),
    .da_clk           (),
    .da_data          (),
    .ad_data          (),
    .ad_otr           (),
    .ad_clk           ()
    );

endmodule
