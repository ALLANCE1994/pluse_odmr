`timescale 1ns / 1ps
// Microwave phase generation module: outputs I/Q quadrature signals to J4
// Based on: bucher2019.pdf, user document 2.2 functional requirements
module mw_phase_gen(
    input        sys_clk,         // 50MHz system clock
    input        sys_rst_n,
    input  [31:0] mw_freq_reg,    // Microwave frequency in kHz, range 1.8G-4G
    input  [31:0] mw_phase_reg,   // Phase configuration: bit[1:0] phase selection
    output reg    mw_i,            // J4 Pin3, I channel output
    output reg    mw_q             // J4 Pin4, Q channel output
);

// -------------------- Simplified DDS logic (match frequency requirements in actual design) --------------------
// Note: Actual microwave frequency requires external microwave source configured via frequency control word
reg [31:0] phase_acc;
wire [1:0] phase_sel = mw_phase_reg[1:0];

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        phase_acc <= 32'd0;
        mw_i <= 1'b0;
        mw_q <= 1'b0;
    end else begin
        // Phase accumulation, frequency proportional to mw_freq_reg
        phase_acc <= phase_acc + mw_freq_reg;
        // Phase selection: 00=0°, 01=90°, 10=180°, 11=270°
        case (phase_sel)
            2'b00: begin mw_i <= phase_acc[31]; mw_q <= phase_acc[30]; end // Sine/cosine approximation
            2'b01: begin mw_i <= phase_acc[30]; mw_q <= ~phase_acc[31]; end
            2'b10: begin mw_i <= ~phase_acc[31]; mw_q <= ~phase_acc[30]; end
            2'b11: begin mw_i <= ~phase_acc[30]; mw_q <= phase_acc[31]; end
            default: begin mw_i <= 1'b0; mw_q <= 1'b0; end // Avoid latch
        endcase
    end
end

endmodule