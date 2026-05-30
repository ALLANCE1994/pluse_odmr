`timescale 1ns / 1ps
// AD9280 acquisition driver module: samples fluorescence signal, writes to FIFO for upload
// Based on: AD9280 datasheet, user document 2.2 functional requirements
module ad9280_driver(
    input        adc_clk,         // 32MHz sampling clock, J4 Pin33
    input        sys_rst_n,
    input  [7:0] ad_data,         // AD9280 data, J4 Pin5-12
    input        ad_otr,          // AD9280 overrange, J4 Pin13
    output [7:0] fifo_wr_data,    // FIFO write data
    output       fifo_wr_en,      // FIFO write enable
    output       fifo_full,       // FIFO full signal
    output reg   ovr_flag,        // Overrange flag (stat_reg bit[1])
    input        ovr_clr          // Overrange clear (write 1 to clear)
);

// -------------------- Data synchronization (metastability elimination) --------------------
reg [7:0] ad_data_r1, ad_data_r2;
reg       ad_otr_r1, ad_otr_r2;

always @(posedge adc_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        ad_data_r1 <= 8'd0;
        ad_data_r2 <= 8'd0;
        ad_otr_r1  <= 1'b0;
        ad_otr_r2  <= 1'b0;
    end else begin
        ad_data_r1 <= ad_data;
        ad_data_r2 <= ad_data_r1;
        ad_otr_r1  <= ad_otr;
        ad_otr_r2  <= ad_otr_r1;
    end
end

assign fifo_wr_data = ad_data_r2;
assign fifo_wr_en  = 1'b1; // Continuous write to FIFO, add enable in actual design
assign fifo_full   = 1'b0; // Connect to async FIFO full signal

// -------------------- Overrange handling --------------------
always @(posedge adc_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        ovr_flag <= 1'b0;
    end else if (ad_otr_r2) begin
        ovr_flag <= 1'b1;
    end else if (ovr_clr) begin
        ovr_flag <= 1'b0;
    end
end

endmodule