`timescale 1ns / 1ps

module pulse_odmr_subsystem_tb;

parameter C_S_AXI_DATA_WIDTH = 32;
parameter C_S_AXI_ADDR_WIDTH = 32;
parameter BASE_ADDR           = 32'h43C00000;
parameter SYS_CLK_PERIOD      = 20;
parameter ADC_CLK_PERIOD      = 31.25;

parameter ADDR_CTRL_REG       = 32'h43C00000;
parameter ADDR_STAT_REG       = 32'h43C00004;
parameter ADDR_MW_FREQ_REG    = 32'h43C00018;
parameter ADDR_MW_PHASE_REG   = 32'h43C0001C;
parameter ADDR_PULSE0_CFG     = 32'h43C00020;
parameter ADDR_PULSE1_CFG     = 32'h43C00024;
parameter ADDR_PULSE2_CFG     = 32'h43C00028;
parameter ADDR_PULSE3_CFG     = 32'h43C0002C;
parameter ADDR_PULSE_SEQ_REG  = 32'h43C00030;
parameter ADDR_SEQ_SEL_REG    = 32'h43C00034;
parameter ADDR_ADC_CFG_REG    = 32'h43C00044;

reg         sys_clk;
reg         sys_rst_n;

reg         s_axi_aclk;
reg         s_axi_aresetn;
reg  [31:0] s_axi_awaddr;
reg         s_axi_awvalid;
wire        s_axi_awready;
reg  [31:0] s_axi_wdata;
reg  [3:0]  s_axi_wstrb;
reg         s_axi_wvalid;
wire        s_axi_wready;
wire [1:0]  s_axi_bresp;
wire        s_axi_bvalid;
reg         s_axi_bready;
reg  [31:0] s_axi_araddr;
reg         s_axi_arvalid;
wire        s_axi_arready;
wire [31:0] s_axi_rdata;
wire [1:0]  s_axi_rresp;
wire        s_axi_rvalid;
reg         s_axi_rready;

reg         uart2_rx;
wire        uart2_tx;
wire        ref_clk_10m;
wire        pps_clk;
wire        mw_i;
wire        mw_q;
reg  [7:0]  ad_data;
reg         ad_otr;
wire        pulse_0;
wire        pulse_1;
wire        pulse_2;
wire        pulse_3;
wire        adc_clk;

integer pass_count = 0;
integer fail_count = 0;
reg [31:0] rdata;

pulse_odmr_ip u_dut(
    .s_axi_aclk    (s_axi_aclk),
    .s_axi_aresetn (s_axi_aresetn),
    .s_axi_awaddr  (s_axi_awaddr),
    .s_axi_awvalid (s_axi_awvalid),
    .s_axi_awready (s_axi_awready),
    .s_axi_wdata   (s_axi_wdata),
    .s_axi_wstrb   (s_axi_wstrb),
    .s_axi_wvalid  (s_axi_wvalid),
    .s_axi_wready  (s_axi_wready),
    .s_axi_bresp   (s_axi_bresp),
    .s_axi_bvalid  (s_axi_bvalid),
    .s_axi_bready  (s_axi_bready),
    .s_axi_araddr  (s_axi_araddr),
    .s_axi_arvalid (s_axi_arvalid),
    .s_axi_arready (s_axi_arready),
    .s_axi_rdata   (s_axi_rdata),
    .s_axi_rresp   (s_axi_rresp),
    .s_axi_rvalid  (s_axi_rvalid),
    .s_axi_rready  (s_axi_rready),

    .sys_clk       (sys_clk),
    .sys_rst_n     (sys_rst_n),
    .uart2_rx      (uart2_rx),
    .uart2_tx      (uart2_tx),
    .ref_clk_10m   (ref_clk_10m),
    .pps_clk       (pps_clk),
    .mw_i          (mw_i),
    .mw_q          (mw_q),
    .ad_data       (ad_data),
    .ad_otr        (ad_otr),
    .pulse_0       (pulse_0),
    .pulse_1       (pulse_1),
    .pulse_2       (pulse_2),
    .pulse_3       (pulse_3),
    .adc_clk       (adc_clk)
);

initial begin
    sys_clk       = 1'b0;
    s_axi_aclk    = 1'b0;
    forever #(SYS_CLK_PERIOD/2) begin
        sys_clk    = ~sys_clk;
        s_axi_aclk = ~s_axi_aclk;
    end
end

initial begin
    ad_data = 8'h80;
    ad_otr  = 1'b0;
    uart2_rx = 1'b1;
    force u_dut.u_clk_gen.mmcm_locked = 1'b1;
end

task axi_lite_write;
    input [C_S_AXI_ADDR_WIDTH-1:0] addr;
    input [C_S_AXI_DATA_WIDTH-1:0] data;
    begin
        @(posedge s_axi_aclk);
        s_axi_awaddr  = addr;
        s_axi_awvalid = 1'b1;
        s_axi_wdata   = data;
        s_axi_wstrb   = 4'hF;
        s_axi_wvalid  = 1'b1;
        s_axi_bready  = 1'b1;
        wait(s_axi_awready && s_axi_wready);
        @(posedge s_axi_aclk);
        s_axi_awvalid = 1'b0;
        s_axi_wvalid  = 1'b0;
        wait(s_axi_bvalid);
        @(posedge s_axi_aclk);
        s_axi_bready  = 1'b0;
        $display("[%0t] WRITE: Addr=0x%h Data=0x%h", $time, addr, data);
    end
endtask

task axi_lite_read;
    input [C_S_AXI_ADDR_WIDTH-1:0] addr;
    output [C_S_AXI_DATA_WIDTH-1:0] data;
    begin
        @(posedge s_axi_aclk);
        s_axi_araddr  = addr;
        s_axi_arvalid = 1'b1;
        s_axi_rready  = 1'b1;
        wait(s_axi_arready);
        @(posedge s_axi_aclk);
        s_axi_arvalid = 1'b0;
        wait(s_axi_rvalid);
        data = s_axi_rdata;
        @(posedge s_axi_aclk);
        s_axi_rready  = 1'b0;
        $display("[%0t] READ:  Addr=0x%h Data=0x%h", $time, addr, data);
    end
endtask

initial begin
    sys_rst_n      = 1'b0;
    s_axi_aresetn  = 1'b0;

    s_axi_awaddr  = 32'h00000000;
    s_axi_awvalid = 1'b0;
    s_axi_wdata   = 32'h00000000;
    s_axi_wstrb   = 4'h0;
    s_axi_wvalid  = 1'b0;
    s_axi_bready  = 1'b0;
    s_axi_araddr  = 32'h00000000;
    s_axi_arvalid = 1'b0;
    s_axi_rready  = 1'b0;

    $display("==============================================");
    $display("  Pulse ODMR IP Subsystem Testbench");
    $display("==============================================");

    #500;
    sys_rst_n     = 1'b1;
    s_axi_aresetn = 1'b1;

    #500;

    $display("[%0t] --- Test 1: Default register readback ---", $time);
    begin
        axi_lite_read(ADDR_PULSE0_CFG, rdata);
        if (rdata == 32'h00001388) begin
            $display("  PASS: PULSE0_CFG default = 0x%h", rdata);
            pass_count = pass_count + 1;
        end else begin
            $display("  FAIL: PULSE0_CFG expected 0x00001388 got 0x%h", rdata);
            fail_count = fail_count + 1;
        end

        axi_lite_read(ADDR_CTRL_REG, rdata);
        if (rdata == 32'h00000000) begin
            $display("  PASS: CTRL_REG default = 0x%h", rdata);
            pass_count = pass_count + 1;
        end else begin
            $display("  FAIL: CTRL_REG expected 0x00000000 got 0x%h", rdata);
            fail_count = fail_count + 1;
        end
    end

    #200;

    $display("[%0t] --- Test 2: Write pulse config ---", $time);
    axi_lite_write(ADDR_PULSE0_CFG, {16'd0, 16'd5000});
    axi_lite_write(ADDR_PULSE1_CFG, {16'd20, 16'd40});
    axi_lite_write(ADDR_PULSE2_CFG, {16'd60, 16'd100});
    axi_lite_write(ADDR_PULSE3_CFG, {16'd200, 16'd500});
    axi_lite_write(ADDR_PULSE_SEQ_REG, 32'h0000000F);

    begin
        axi_lite_read(ADDR_PULSE0_CFG, rdata);
        if (rdata == {16'd0, 16'd5000}) begin
            $display("  PASS: PULSE0 written correctly");
            pass_count = pass_count + 1;
        end else begin
            $display("  FAIL: PULSE0 readback 0x%h", rdata);
            fail_count = fail_count + 1;
        end
        axi_lite_read(ADDR_PULSE1_CFG, rdata);
        if (rdata == {16'd20, 16'd40}) begin
            $display("  PASS: PULSE1 written correctly");
            pass_count = pass_count + 1;
        end else begin
            $display("  FAIL: PULSE1 readback 0x%h", rdata);
            fail_count = fail_count + 1;
        end
    end

    #200;

    $display("[%0t] --- Test 3: Enable pulse sequence ---", $time);
    axi_lite_write(ADDR_CTRL_REG, 32'h00000012);

    #5000;

    if (pulse_0 === 1'b1 || pulse_1 === 1'b1 ||
        pulse_2 === 1'b1 || pulse_3 === 1'b1) begin
        $display("  PASS: Pulse outputs active");
        pass_count = pass_count + 1;
    end else begin
        $display("  WARN: No pulse detected. Expected after enable+start.");
        $display("    pulse_0=%b pulse_1=%b pulse_2=%b pulse_3=%b",
                 pulse_0, pulse_1, pulse_2, pulse_3);
        fail_count = fail_count + 1;
    end

    #10000;

    $display("[%0t] --- Test 4: Disable pulses ---", $time);
    axi_lite_write(ADDR_CTRL_REG, 32'h00000000);

    #1000;

    if (pulse_0 === 1'b0 && pulse_1 === 1'b0 &&
        pulse_2 === 1'b0 && pulse_3 === 1'b0) begin
        $display("  PASS: All pulses stopped");
        pass_count = pass_count + 1;
    end else begin
        $display("  FAIL: Pulses still active after disable!");
        $display("    pulse_0=%b pulse_1=%b pulse_2=%b pulse_3=%b",
                 pulse_0, pulse_1, pulse_2, pulse_3);
        fail_count = fail_count + 1;
    end

    #200;

    $display("[%0t] --- Test 5: MW frequency write/read ---", $time);
    axi_lite_write(ADDR_MW_FREQ_REG, 32'd2870000);
    begin
        axi_lite_read(ADDR_MW_FREQ_REG, rdata);
        if (rdata == 32'd2870000) begin
            $display("  PASS: MW_FREQ_REG = %d", rdata);
            pass_count = pass_count + 1;
        end else begin
            $display("  FAIL: MW_FREQ_REG expected 2870000 got %d", rdata);
            fail_count = fail_count + 1;
        end
    end

    $display("==============================================");
    if (fail_count == 0) begin
        $display("  TEST PASSED (Pass: %0d, Fail: %0d)", pass_count, fail_count);
    end else begin
        $display("  TEST FAILED (Pass: %0d, Fail: %0d)", pass_count, fail_count);
    end
    $display("==============================================");

    $finish;
end

always @(posedge pulse_0) $display("[%0t] pulse_0 rising edge", $time);
always @(posedge pulse_1) $display("[%0t] pulse_1 rising edge", $time);
always @(posedge pulse_2) $display("[%0t] pulse_2 rising edge", $time);
always @(posedge pulse_3) $display("[%0t] pulse_3 rising edge", $time);

endmodule
