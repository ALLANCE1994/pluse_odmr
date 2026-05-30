`timescale 1ns / 1ps
// Clock management module: generates all clocks required by the system
// Based on: ug472 7-series clock specification, user document 3.2 clock architecture
module clk_gen(
    input        sys_clk,
    input        sys_rst_n,
    output       adc_clk,
    output       ref_clk_10m,
    output       pps_clk,
    output       mmcm_locked
);

`ifdef SIMULATION

reg        mmcm_locked_d;
reg        adc_clk_r;
reg [3:0]  adc_clk_div;
reg [2:0]  ref_div;
reg        ref_10m_r;

assign mmcm_locked = mmcm_locked_d;
assign adc_clk     = adc_clk_r;
assign ref_clk_10m = ref_10m_r;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        mmcm_locked_d <= 1'b0;
        adc_clk_div   <= 4'd0;
        adc_clk_r     <= 1'b0;
        ref_div       <= 3'd0;
        ref_10m_r     <= 1'b0;
    end else begin
        mmcm_locked_d <= 1'b1;

        adc_clk_div <= adc_clk_div + 4'd1;
        if (adc_clk_div == 4'd1) begin
            adc_clk_r <= ~adc_clk_r;
            adc_clk_div <= 4'd0;
        end

        ref_div <= ref_div + 3'd1;
        if (ref_div == 3'd4) begin
            ref_10m_r <= ~ref_10m_r;
            ref_div <= 3'd0;
        end
    end
end

`else

wire        clkfbout;
wire        clkfbin;

MMCME2_ADV #(
    .BANDWIDTH         ("OPTIMIZED"),
    .CLKFBOUT_MULT_F   (16.0),
    .CLKFBOUT_PHASE    (0.0),
    .CLKIN1_PERIOD     (20.0),
    .DIVCLK_DIVIDE     (1),
    .CLKOUT0_DIVIDE_F  (25.0),
    .CLKOUT0_DUTY_CYCLE(0.5),
    .CLKOUT0_PHASE     (0.0),
    .CLKOUT1_DIVIDE    (80),
    .CLKOUT1_DUTY_CYCLE(0.5),
    .CLKOUT1_PHASE     (0.0),
    .REF_JITTER1       (0.0)
) mmcm_inst (
    .CLKIN1    (sys_clk),
    .CLKIN2    (1'b0),
    .CLKFBIN   (clkfbout),
    .CLKFBOUT  (clkfbout),
    .CLKOUT0   (adc_clk),
    .CLKOUT1   (ref_clk_10m),
    .CLKOUT2   (),
    .CLKOUT3   (),
    .CLKOUT4   (),
    .CLKOUT5   (),
    .CLKOUT6   (),
    .LOCKED    (mmcm_locked),
    .RST       (~sys_rst_n),
    .PWRDWN    (1'b0)
);

`endif

reg [25:0] pps_cnt;
reg         pps_clk_r;

assign pps_clk = pps_clk_r;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        pps_cnt   <= 26'd0;
        pps_clk_r <= 1'b0;
    end else if (pps_cnt == 26'd49_999_999) begin
        pps_cnt   <= 26'd0;
        pps_clk_r <= ~pps_clk_r;
    end else begin
        pps_cnt   <= pps_cnt + 26'd1;
    end
end

endmodule
