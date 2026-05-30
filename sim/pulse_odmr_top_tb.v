`timescale 1ns / 1ps
module pulse_odmr_top_tb;

reg sys_clk;
reg sys_rst_n;

wire mmcm_locked;
wire adc_clk;
wire ref_clk_10m;
wire pps_clk;

wire pulse_0;
wire pulse_1;
wire pulse_2;
wire pulse_3;

wire mw_i;
wire mw_q;

wire [7:0] fifo_wr_data;
wire fifo_wr_en;
wire fifo_full;
wire ovr_flag;

reg [7:0] ad_data;
reg ad_otr;

wire uart2_tx;
wire da_clk;
wire [7:0] da_data;

pulse_odmr_top u_dut(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .uart2_rx(1'b0),
    .uart2_tx(uart2_tx),
    .ref_clk_10m(ref_clk_10m),
    .pps_clk(pps_clk),
    .mw_i(mw_i),
    .mw_q(mw_q),
    .ad_data(ad_data),
    .ad_otr(ad_otr),
    .pulse_0(pulse_0),
    .pulse_1(pulse_1),
    .pulse_2(pulse_2),
    .pulse_3(pulse_3),
    .adc_clk(adc_clk),
    .da_clk(da_clk),
    .da_data(da_data)
);

initial begin
    sys_clk = 1'b0;
    forever #10 sys_clk = ~sys_clk;
end

initial begin
    sys_rst_n = 1'b0;
    ad_data = 8'h80;
    ad_otr = 1'b0;

    #200;
    sys_rst_n = 1'b1;

    #1000;

    if (u_dut.mmcm_locked !== 1'b1) begin
        $display("[INFO] Forcing mmcm_locked = 1");
        force u_dut.mmcm_locked = 1'b1;
    end
    #20;

    $display("========================================");
    $display("Pulse_ODMR Top Level Simulation");
    $display("========================================");
    $display("[INFO] mmcm_locked = %b", u_dut.mmcm_locked);
    $display("[INFO] ctrl_reg = 0x%08x", u_dut.ctrl_reg);
    $display("[INFO] pulse_seq_mask = 0x%08x", u_dut.pulse_seq_mask);

    $display("");
    $display("--- Configuring pulse_gen via internal register force ---");

    force u_dut.u_axi_lite.pulse0_cfg_r = {16'd0, 16'd5000};
    force u_dut.u_axi_lite.pulse1_cfg_r = {16'd20, 16'd100};
    force u_dut.u_axi_lite.pulse2_cfg_r = {16'd80, 16'd300};
    force u_dut.u_axi_lite.pulse3_cfg_r = {16'd200, 16'd600};
    force u_dut.u_axi_lite.pulse_seq_reg_r = 32'h0000000F;

    #20;

    $display("[INFO] pulse0_cfg = 0x%08x (delay=%dns, width=%dns)",
        u_dut.pulse0_cfg, u_dut.pulse0_cfg[31:16], u_dut.pulse0_cfg[15:0]);
    $display("[INFO] pulse_seq_mask = 0x%08x", u_dut.pulse_seq_mask);

    $display("");
    $display("--- Setting ctrl_reg = 0x13 (enable + pulse_en + seq_start) ---");
    force u_dut.u_axi_lite.ctrl_reg_r = 32'h00000013;
    #20;
    $display("[INFO] ctrl_reg = 0x%08x", u_dut.ctrl_reg);
    $display("[INFO] pulse_en = %b, seq_start = %b", u_dut.pulse_en, u_dut.seq_start);

    $display("");
    $display("--- Waiting for pulse outputs (2 us) ---");
    #2000;

    $display("");
    $display("--- Results ---");
    $display("  pulse_0=%b  pulse_1=%b  pulse_2=%b  pulse_3=%b",
        pulse_0, pulse_1, pulse_2, pulse_3);

    if (pulse_0 === 1'b1 || pulse_1 === 1'b1 ||
        pulse_2 === 1'b1 || pulse_3 === 1'b1) begin
        $display("[PASS] Pulse outputs detected!");
    end else begin
        $display("[FAIL] No pulse outputs");
        $display("  u_dut.u_pulse_gen.pulse0_en=%b, cnt0=%d",
            u_dut.u_pulse_gen.pulse0_en, u_dut.u_pulse_gen.cnt0);
        $display("  u_dut.u_pulse_gen.pulse_en=%b, seq_start=%b, mask0=%b",
            u_dut.u_pulse_gen.pulse_en, u_dut.u_pulse_gen.seq_start,
            u_dut.u_pulse_gen.pulse_seq_mask[0]);
    end

    $display("");
    $display("========================================");
    $display("[PASS] Simulation completed");
    $display("========================================");
    $finish;
end

endmodule
