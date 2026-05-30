`timescale 1ns / 1ps
module hs_ad_da(
    input                 sys_clk     ,
    input                 sys_rst_n   ,
    output                da_clk      ,
    output    [7:0]       da_data     ,
    input     [7:0]       ad_data     ,
    input                 ad_otr      ,
    output                ad_clk
);

wire      [7:0]    rd_addr       ;
wire      [7:0]    rd_data       ;
wire               clk_50m       ;
wire               clk_25m       ;
wire               locked        ;
wire               rst_n         ;

assign   rst_n = sys_rst_n & locked ;
assign   ad_clk = clk_25m ;

pll_clk	u_pll_clk (
    .areset      ( ~sys_rst_n ),
    .inclk0      ( sys_clk ),
    .c0          ( clk_50m ),
    .c1          ( clk_25m ),
    .locked      ( locked )
    );

da_wave_send u_da_wave_send(
    .clk         (clk_50m  ), 
    .rst_n       (rst_n    ),
    .rd_data     (rd_data  ),
    .rd_addr     (rd_addr  ),
    .da_clk      (da_clk   ),  
    .da_data     (da_data  )
    );

rom_256x8b	u_rom_256x8b (
    .address    ( rd_addr ),
    .clock      ( clk_50m ),
    .q          ( rd_data )
    );

endmodule