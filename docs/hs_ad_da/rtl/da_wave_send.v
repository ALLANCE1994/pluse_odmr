`timescale 1ns / 1ps
module da_wave_send(
    input                 clk    ,
    input                 rst_n  ,
    
    input        [7:0]    rd_data,
    output  reg  [7:0]    rd_addr,
    output                da_clk ,
    output       [7:0]    da_data  
    );

parameter  FREQ_ADJ = 8'd5;

reg    [7:0]    freq_cnt  ;

assign  da_clk = ~clk;       
assign  da_data = rd_data;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        freq_cnt <= 8'd0;
    else if(freq_cnt == FREQ_ADJ)    
        freq_cnt <= 8'd0;
    else         
        freq_cnt <= freq_cnt + 8'd1;
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        rd_addr <= 8'd0;
    else begin
        if((freq_cnt == FREQ_ADJ) && (rd_addr < 8'd255))
            rd_addr <= rd_addr + 8'd1;
        else if((freq_cnt == FREQ_ADJ) && (rd_addr == 8'd255))
            rd_addr <= 8'd0;
        else
            rd_addr <= rd_addr;
    end            
end

endmodule