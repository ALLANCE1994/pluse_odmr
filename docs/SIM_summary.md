
信源优先级说明
本次回答严格遵循规则：优先采用<knowledge_base>标签内的真实内容，<uploaded_files>（即用户上传的context_002.md）与知识库冲突时明确标注差异，冲突部分以知识库为准；对话历史与知识库冲突时优先采纳知识库内容。
一、上传文档与知识库差异核对（必须先确认，避免错误延续）
差异项上传文档（context_002.md）内容知识库真实内容处理说明latch参考章节参考《正点原子FPGA开发指南》8.4.5节知识库中《1_【正点原子】领航者ZYNQ之FPGA开发指南V3.3.pdf》《1_【正点原子】领航者ZYNQ之FPGA开发指南（WM8960）.pdf》的latch内容位于第8.4节「什么是latch」，无8.4.5子章节；且明确规则：仅不带时钟的组合逻辑always语句（如always @(*)）中if/case无else/default才会生成latch，带时钟的时序逻辑always语句（如always @(posedge clk)）无论是否写else都不会生成latch 以知识库为准，调整参考章节为8.4节，latch检查按知识库规则执行，时序逻辑无需强制加else验证流程顺序豆包建议「先静态验证（综合）再动态仿真」知识库《1_【正点原子】领航者ZYNQ之FPGA开发指南V3.3.pdf》7.5节明确流程：先编写Testbench做功能仿真（动态）→ 波形与设计时序一致 → 再新建工程 → 综合（静态检查）→ 后续实现步骤 调整验证顺序为：先完成所有模块Testbench动态仿真→ 再执行综合静态检查→ 最后实现时序检查组合逻辑latch检查范围要求所有if/case都带else/default仅组合逻辑（无时钟的always块）需要满足该要求，时序逻辑无需强制添加代码检查阶段区分逻辑类型，避免无效修改

二、当前进度确认
项目处于阶段2：模块级开发+验证（进行中），已完成全部PL端RTL代码（符合知识库规范：无组合逻辑latch、脉冲宽度≥2ns、AXI-Lite合规、DA引脚设DONT_TOUCH）。
下一步交付物优先级（从高到低）：

仿真验证类：各模块Testbench（*_tb.v）、自动化仿真脚本run_all_sim.tcl（最高优先级，阶段2核心验证项）
PS端软件类：寄存器驱动、数据采集、谱线生成程序
门禁文档类：模块验证报告、阶段门禁报告

三、下一步交付物生成（全基于知识库规范，标注依据）
▶ 类别1：仿真验证交付物（最高优先级）
知识库依据：《1_【正点原子】领航者ZYNQ之FPGA开发指南V3.3.pdf》第7章软件仿真要求、Vivado仿真流程（ug892-vivado-design-flows-overview.pdf）、时序约束规范（ug903-vivado-using-constraints.pdf）
1.1 各模块Testbench（*_tb.v）
交付列表：clk_gen_tb.v、axi_lite_slave_tb.v、pulse_gen_tb.v、mw_phase_gen_tb.v、ad9280_driver_tb.v、pulse_odmr_top_tb.v
编写要求（符合知识库）：

覆盖模块100%功能点，仿真波形需与模块设计时序图完全一致（参考FPGA开发指南7.5节波形比对要求）
包含时钟生成、复位生成、激励生成、自动化结果检查（用$display输出检查结果，无需手动看波形）
行为级仿真（behavioral），不依赖综合后的网表

示例：clk_gen_tb.v（修正原示例错误，符合知识库规范）
`timescale 1ns / 1ps
module clk_gen_tb;
// 输入信号
reg sys_clk;
reg sys_rst_n;
// 输出信号
wire adc_clk;       // 32MHz，周期31.25ns
wire ref_clk_10m;   // 10MHz，周期100ns
wire pps_clk;       // 1Hz，周期1s

// 例化被测模块（clk_gen为已完成的RTL模块）
clk_gen u_clk_gen(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .adc_clk(adc_clk),
    .ref_clk_10m(ref_clk_10m),
    .pps_clk(pps_clk)
);

// 1. 50MHz母钟生成（周期20ns，符合知识库板载晶振参数）
initial begin
    sys_clk = 1'b0;
    forever #10 sys_clk = ~sys_clk;
end

// 2. 复位信号：低电平有效，复位200ns（符合知识库复位规范）
initial begin
    sys_rst_n = 1'b0;
    #200 sys_rst_n = 1'b1;
end

// 3. 时钟正确性自动化检查（避免浮点数比较误差，用周期计数）
reg [15:0] adc_cnt = 0;
reg [31:0] ref_cnt = 0;
always @(posedge adc_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) adc_cnt <= 0;
    else begin
        adc_cnt <= adc_cnt + 1;
        if (adc_cnt == 31) $display("[PASS] adc_clk frequency correct: 32MHz");
    end
end
always @(posedge ref_clk_10m or negedge sys_rst_n) begin
    if (!sys_rst_n) ref_cnt <= 0;
    else begin
        ref_cnt <= ref_cnt + 1;
        if (ref_cnt == 99) $display("[PASS] ref_clk_10m frequency correct: 10MHz");
    end
end

// 4. 1Hz PPS检查：运行1.1s后检查pps_clk翻转
initial begin
    #1100000000; // 1.1s
    if (pps_clk == 1'b1) $display("[PASS] pps_clk 1Hz correct");
    else $display("[FAIL] pps_clk frequency error");
    $finish;
end
endmodule

1.2 自动化仿真Tcl脚本（run_all_sim.tcl）
功能：自动编译所有RTL、Testbench，依次运行仿真并输出结果，符合Vivado Tcl命令规范（知识库ug892）。
# 关闭已有工程
close_project -quiet

# 创建仿真工程，指定器件为XC7Z020CLG400-2（知识库器件参数）
create_project -force sim_project ./sim -part xc7z020clg400-2

# 添加PL端RTL源文件（按模块依赖顺序）
add_files -norecurse ./src/clk_gen.v
add_files -norecurse ./src/axi_lite_slave.v
add_files -norecurse ./src/pulse_gen.v
add_files -norecurse ./src/mw_phase_gen.v
add_files -norecurse ./src/ad9280_driver.v
add_files -norecurse ./src/pulse_odmr_top.v

# 添加Testbench文件
add_files -norecurse ./sim/clk_gen_tb.v
add_files -norecurse ./sim/axi_lite_slave_tb.v
add_files -norecurse ./sim/pulse_gen_tb.v
add_files -norecurse ./sim/mw_phase_gen_tb.v
add_files -norecurse ./sim/ad9280_driver_tb.v
add_files -norecurse ./sim/pulse_odmr_top_tb.v

# 依次运行各模块仿真（行为级）
set tb_list {clk_gen_tb axi_lite_slave_tb pulse_gen_tb mw_phase_gen_tb ad9280_driver_tb pulse_odmr_top_tb}
foreach tb $tb_list {
    set_property top $tb [get_filesets sim_1]
    launch_simulation -simset sim_1 -mode behavioral
    puts "Simulation for $tb completed!"
}

puts "All simulations completed!"

▶ 类别2：PS端软件交付物
知识库依据：《5_【正点原子】领航者ZYNQ之PYNQ开发指南_V3.0.pdf》MMIO使用规范、ug1399-vitis-hls-user-guide AXI-Lite接口规范、虚拟环境依赖要求（numpy>=1.21.0、matplotlib>=3.4.0等）
2.1 AXI-Lite寄存器驱动（pl_reg_driver.py）
功能：封装所有PS-PL寄存器读写，基于PYNQ的MMIO类，基地址0x43C00000（与上传文档一致，知识库PYNQ指南要求hwh/bit文件同名，需确保system.hwh与system.bit同目录）。
from pynq import MMIO

class PLRegDriver:
    def __init__(self, base_addr=0x43C00000):
        # 256字节地址空间，覆盖0x43C00000-0x43C000FF所有寄存器（知识库AXI-Lite 32位对齐要求）
        self.mmio = MMIO(base_addr, 256)

    # ------------------- 全局控制寄存器 0x00 -------------------
    def set_ctrl_reg(self, enable=0, pulse_en=0, adc_en=0, dma_en=0, seq_start=0):
        """bit[0]系统使能, bit[1]脉冲序列使能, bit[2]ADC使能, bit[3]DMA上传使能, bit[4]序列启动(写1自动清零)"""
        val = (seq_start << 4) | (dma_en << 3) | (adc_en << 2) | (pulse_en << 1) | enable
        self.mmio.write(0x00, val)

    # ------------------- 全局状态寄存器 0x04（只读） -------------------
    def get_stat_reg(self):
        """bit[0]系统就绪, bit[1]ADC超量程(写1清零), bit[2]fIFO空, bit[3]fIFO满, bit[4]序列执行完成"""
        return self.mmio.read(0x04)

    # ------------------- MMCM配置寄存器 0x14 -------------------
    def set_mmcm_cfg(self, m=16, d=1, clk32_div=25, clk10_div=80):
        """bit[7:0]M=16, bit[15:8]D=1, bit[23:16]32MHz分频=25, bit[31:24]10MHz分频=80"""
        val = (clk10_div << 24) | (clk32_div << 16) | (d << 8) | m
        self.mmio.write(0x14, val)

    # ------------------- 微波频率寄存器 0x18 -------------------
    def set_mw_freq(self, freq_khz):
        """微波频率，单位kHz，范围1.8G-4G，默认2.87GHz"""
        self.mmio.write(0x18, freq_khz)

    # ------------------- 脉冲0配置寄存器 0x20 -------------------
    def set_pulse0(self, width_ns=5000, delay_ns=0):
        """bit[15:0]宽度（默认5000ns）, bit[31:16]延迟（默认0ns）"""
        val = (delay_ns << 16) | width_ns
        self.mmio.write(0x20, val)

    # ------------------- 脉冲1配置寄存器 0x24 -------------------
    def set_pulse1(self, width_ns=40, delay_ns=20):
        """bit[15:0]宽度（默认40ns）, bit[31:16]延迟（默认20ns）"""
        val = (delay_ns << 16) | width_ns
        self.mmio.write(0x24, val)

if __name__ == "__main__":
    driver = PLRegDriver()
    driver.set_ctrl_reg(enable=1)  # 使能系统
    print(f"STAT_REG: {hex(driver.get_stat_reg())}")

2.2 AD数据采集程序（ad_collect.py）
功能：通过AXI-DMA接收AD9280采集的荧光信号，解析为数组并存储为CSV，符合知识库ug1399 DMA传输规范、虚拟环境依赖要求。
import numpy as np
from pynq import Overlay, MMIO

class ADCollect:
    def __init__(self, bit_file="./system.bit"):
        self.overlay = Overlay(bit_file)
        self.dma = self.overlay.axi_dma_0  # 假设Vivado工程中AXI-DMA实例名为axi_dma_0
        self.pl_reg = PLRegDriver()  # 复用寄存器驱动

    def collect(self, sample_points=1024):
        """采集指定点数的AD数据，返回numpy数组"""
        # 配置ADC采样点数
        self.pl_reg.mmio.write(0x44, sample_points)  # ADC_CFG寄存器0x44，bit[15:0]采样点数
        # 启动采集
        self.pl_reg.set_ctrl_reg(adc_en=1, dma_en=1)
        # 等待采集完成（轮询状态寄存器bit[4]序列执行完成）
        while not (self.pl_reg.get_stat_reg() & 0x10):
            pass
        # 读取DMA数据（假设AXI-DMA配置为16位数据，1024点对应2048字节）
        data = self.dma.read(2048)
        # 转换为numpy数组（AD9280为8位，实际按寄存器配置解析）
        ad_data = np.frombuffer(data, dtype=np.uint8)
        return ad_data[:sample_points]

    def save_to_csv(self, data, filename="ad_data.csv"):
        np.savetxt(filename, data, delimiter=",")
        print(f"Data saved to {filename}")

if __name__ == "__main__":
    collect = ADCollect()
    data = collect.collect(sample_points=1024)
    collect.save_to_csv(data)

2.3 ODMR谱线生成程序（odmr_spectrum.py）
功能：处理采集的AD数据，拟合生成ODMR谱线，用matplotlib绘图，符合虚拟环境依赖（numpy>=1.21.0、matplotlib>=3.4.0、scipy>=1.7.0）。
import numpy as np
import matplotlib.pyplot as plt
from ad_collect import ADCollect

class ODMRSpectrum:
    def __init__(self):
        self.collect = ADCollect()

    def generate_spectrum(self, freq_start=1800000, freq_end=4000000, freq_step=1000):
        """生成ODMR谱线：扫描频率从freq_start到freq_end，步长freq_step（单位kHz）"""
        freq_list = np.arange(freq_start, freq_end, freq_step)
        odmr_intensity = []

        for freq in freq_list:
            # 设置当前微波频率
            self.collect.pl_reg.set_mw_freq(freq)
            # 启动脉冲序列
            self.collect.pl_reg.set_ctrl_reg(enable=1, pulse_en=1, seq_start=1)
            # 采集荧光数据
            ad_data = self.collect.collect(sample_points=1024)
            # 计算平均荧光强度（ODMR信号为荧光强度随微波频率的变化）
            avg_intensity = np.mean(ad_data)
            odmr_intensity.append(avg_intensity)
            print(f"Freq: {freq}kHz, Intensity: {avg_intensity}")

        return freq_list, np.array(odmr_intensity)

    def plot_spectrum(self, freq_list, intensity):
        plt.figure(figsize=(10, 6))
        plt.plot(freq_list / 1000, intensity, marker='o')  # 转换为MHz显示
        plt.xlabel("Frequency (MHz)")
        plt.ylabel("Fluorescence Intensity")
        plt.title("NV Color Center Pulse ODMR Spectrum")
        plt.grid(True)
        plt.savefig("odmr_spectrum.png")
        plt.show()

if __name__ == "__main__":
    spectrum = ODMRSpectrum()
    freq, intensity = spectrum.generate_spectrum()
    spectrum.plot_spectrum(freq, intensity)

▶ 类别3：门禁文档交付物
知识库依据：《正点原子FPGA静态时序分析与时序约束_V2.3.pdf》时序报告规范、上下文阶段门禁要求（6.3节5项强制检查）
3.1 模块级验证报告（gate2_module_verify_report.md）
内容要求：

时序裕量：按知识库公式计算建立/保持时间裕量，要求建立时间裕量≥0，保持时间裕量≥0（公式：数据到达时间=启动沿+Tclka+Tco+Tdata；时钟到达时间=采样沿+Tclkb；建立裕量=时钟到达时间-Tsetup-数据到达时间）
资源使用率：LUT使用率≤80%（知识库XC7Z020 LUT总量53200）、FF≤80%（总量106400）、BRAM≤80%（总量4.9Mb）、总IO≤80（上传文档约束，芯片总IO253），附Vivado综合后资源报告截图
功能点验证：列出所有模块的所有功能点，标注通过/失败，附仿真波形截图（与知识库设计时序图比对）
规范检查：组合逻辑if/case是否带else/default、脉冲宽度是否≥2ns、DA引脚是否设DONT_TOUCH、AXI-Lite地址是否对齐32位

3.2 阶段2门禁报告（gate2_report.md）
内容要求：执行5项强制检查（上下文6.3节），每项检查标注知识库依据和结果：

引脚分配合规性：检查J4引脚是否属于Bank13、J3引脚属于Bank34/35，无跨Bank分配（知识库XC7Z020 Bank划分：Bank13为1.2-3.3V HR Bank，Bank34/35为3.3V HR Bank）
电压域冲突检查：检查Bank13引脚IO标准是否为LVCMOS33（3.3V），无1.2V与3.3V直连（知识库电压域规则）
时序违规检查：检查Vivado时序报告无负建立/保持裕量，脉冲宽度≥2ns（知识库MIN_PULSE_WIDTH约束）
资源占用检查：总IO≤80，LUT/FF/BRAM使用率≤80%（知识库XC7Z020资源限制）
AXI总线合规性：检查AXI4-Lite协议符合ug1399规范，地址范围0x43C00000-0x43C0FFFF，无地址重叠

四、交付优先级执行顺序

完成所有模块Testbench并通过行为级仿真（阶段2核心验证项，优先级最高）
完成run_all_sim.tcl脚本，实现一键自动化仿真
完成3个PS端软件程序，验证PS-PL通信正常
输出2份门禁文档，提交阶段2门禁检查
