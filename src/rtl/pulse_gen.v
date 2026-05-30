`timescale 1ns / 1ps
// Four-channel pulse generation module: outputs synchronized pulses to J4 expansion port
// Based on: Zhen Dian Yuan Zi logic design guide, user document 2.2 functional requirements
module pulse_gen(
    input        sys_clk,         // 50MHz system clock
    input        sys_rst_n,       // Active-low reset
    input        mmcm_locked,     // MMCM locked signal
    // Configuration inputs (from AXI-Lite)
    input  [31:0] pulse0_cfg,     // Pulse 0 config: bit[15:0] width(ns), bit[31:16] delay(ns)
    input  [31:0] pulse1_cfg,
    input  [31:0] pulse2_cfg,
    input  [31:0] pulse3_cfg,
    input  [31:0] pulse_seq_mask, // Pulse enable mask: bit[3:0] for four channels
    input  [31:0] seq_sel,        // Sequence selection: 00=NV-ESR/01=Rabi/10=T1/11=T2
    input        seq_start,       // Sequence start signal (write 1 auto clear)
    input        pulse_en,        // Pulse sequence enable (ctrl_reg bit[1])
    // Pulse outputs to J4
    output reg    pulse_0,         // J4 Pin14
    output reg    pulse_1,         // J4 Pin15
    output reg    pulse_2,         // J4 Pin16
    output reg    pulse_3          // J4 Pin17
);

// -------------------- Internal signal definitions --------------------
// Pulse 0
wire [15:0] pulse0_width = pulse0_cfg[15:0]; // Pulse width in ns
wire [15:0] pulse0_dly   = pulse0_cfg[31:16]; // Delay in ns
wire [15:0] pulse0_width_cnt = pulse0_width / 20;
wire [15:0] pulse0_dly_cnt   = pulse0_dly / 20;
// Pulse 1
wire [15:0] pulse1_width = pulse1_cfg[15:0];
wire [15:0] pulse1_dly   = pulse1_cfg[31:16];
wire [15:0] pulse1_width_cnt = pulse1_width / 20;
wire [15:0] pulse1_dly_cnt   = pulse1_dly / 20;
// Pulse 2
wire [15:0] pulse2_width = pulse2_cfg[15:0];
wire [15:0] pulse2_dly   = pulse2_cfg[31:16];
wire [15:0] pulse2_width_cnt = pulse2_width / 20;
wire [15:0] pulse2_dly_cnt   = pulse2_dly / 20;
// Pulse 3
wire [15:0] pulse3_width = pulse3_cfg[15:0];
wire [15:0] pulse3_dly   = pulse3_cfg[31:16];
wire [15:0] pulse3_width_cnt = pulse3_width / 20;
wire [15:0] pulse3_dly_cnt   = pulse3_dly / 20;

reg [15:0] cnt0, cnt1, cnt2, cnt3;
reg         pulse0_en, pulse1_en, pulse2_en, pulse3_en;

// -------------------- Pulse 0 generation logic (others similar, simplified to pulse_0 example) --------------------
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n || !mmcm_locked) begin
        cnt0 <= 16'd0;
        pulse_0 <= 1'b0;
        pulse0_en <= 1'b0;
    end else if (pulse_en && pulse_seq_mask[0] && seq_start) begin
        if (!pulse0_en) $display("[PULSE0] TRIGGER en=%b mask[0]=%b start=%b locked=%b", pulse_en, pulse_seq_mask[0], seq_start, mmcm_locked);
        pulse0_en <= 1'b1;
        if (cnt0 < pulse0_dly_cnt) begin // Delay phase
            cnt0 <= cnt0 + 16'd1;
            pulse_0 <= 1'b0;
        end else if (cnt0 < pulse0_dly_cnt + pulse0_width_cnt) begin // Pulse high phase
            cnt0 <= cnt0 + 16'd1;
            pulse_0 <= 1'b1;
        end else begin // Pulse end
            cnt0 <= 16'd0;
            pulse_0 <= 1'b0;
            pulse0_en <= 1'b0;
        end
    end else begin
        pulse_0 <= 1'b0;
        cnt0 <= 16'd0;
    end
end

// -------------------- Pulse 1/2/3 generation logic (same structure as pulse 0) --------------------

// Pulse 1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n || !mmcm_locked) begin
        cnt1 <= 16'd0;
        pulse_1 <= 1'b0;
        pulse1_en <= 1'b0;
    end else if (pulse_en && pulse_seq_mask[1] && seq_start) begin
        pulse1_en <= 1'b1;
        if (cnt1 < pulse1_dly_cnt) begin
            cnt1 <= cnt1 + 16'd1;
            pulse_1 <= 1'b0;
        end else if (cnt1 < pulse1_dly_cnt + pulse1_width_cnt) begin
            cnt1 <= cnt1 + 16'd1;
            pulse_1 <= 1'b1;
        end else begin
            cnt1 <= 16'd0;
            pulse_1 <= 1'b0;
            pulse1_en <= 1'b0;
        end
    end else begin
        pulse_1 <= 1'b0;
        cnt1 <= 16'd0;
    end
end

// Pulse 2
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n || !mmcm_locked) begin
        cnt2 <= 16'd0;
        pulse_2 <= 1'b0;
        pulse2_en <= 1'b0;
    end else if (pulse_en && pulse_seq_mask[2] && seq_start) begin
        pulse2_en <= 1'b1;
        if (cnt2 < pulse2_dly_cnt) begin
            cnt2 <= cnt2 + 16'd1;
            pulse_2 <= 1'b0;
        end else if (cnt2 < pulse2_dly_cnt + pulse2_width_cnt) begin
            cnt2 <= cnt2 + 16'd1;
            pulse_2 <= 1'b1;
        end else begin
            cnt2 <= 16'd0;
            pulse_2 <= 1'b0;
            pulse2_en <= 1'b0;
        end
    end else begin
        pulse_2 <= 1'b0;
        cnt2 <= 16'd0;
    end
end

// Pulse 3
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n || !mmcm_locked) begin
        cnt3 <= 16'd0;
        pulse_3 <= 1'b0;
        pulse3_en <= 1'b0;
    end else if (pulse_en && pulse_seq_mask[3] && seq_start) begin
        pulse3_en <= 1'b1;
        if (cnt3 < pulse3_dly_cnt) begin
            cnt3 <= cnt3 + 16'd1;
            pulse_3 <= 1'b0;
        end else if (cnt3 < pulse3_dly_cnt + pulse3_width_cnt) begin
            cnt3 <= cnt3 + 16'd1;
            pulse_3 <= 1'b1;
        end else begin
            cnt3 <= 16'd0;
            pulse_3 <= 1'b0;
            pulse3_en <= 1'b0;
        end
    end else begin
        pulse_3 <= 1'b0;
        cnt3 <= 16'd0;
    end
end

endmodule