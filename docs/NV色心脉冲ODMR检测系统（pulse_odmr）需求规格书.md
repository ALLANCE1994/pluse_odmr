NV色心脉冲ODMR检测系统（pulse_odmr）需求规格书
版本：V1.1（阶段1门禁通过版）
修订日期：2026-05-29
状态：阶段2进行中
保密等级：项目内部公开

1. 文档说明
1.1 编写目的
本规格书用于明确pulse_odmr项目的完整需求、约束、架构、配置及进度，保证项目迭代过程中上下文延续性，为AI辅助开发提供唯一准确输入。所有内容优先匹配知识库官方文档，冲突处以知识库为准。
1.2 适用范围
适用于pulse_odmr项目全周期（阶段0-阶段5）的开发、验证、部署工作，阶段0固化配置全周期不可变更。
1.3 参考文档
文档名称类型备注bucher2019.pdf知识库NV色心传感、脉冲序列协议依据 3PA9280.pdf知识库AD9280 ADC参数依据ug472_7series_clocking.pdfXilinx官方7系列FPGA时钟架构依据ug953-vivado-7series-libraries.pdfXilinx官方Xilinx宏、约束语法依据正点原子领航者ZYNQ之FPGA开发指南V3.3.pdf 知识库ZYNQ-7020硬件架构依据context_002.md项目上下文阶段0-1固化配置

2. 工程概述
2.1 基本信息

正式名称：NV色心脉冲ODMR检测系统，代号pulse_odmr
核心目标：基于正点原子ZYNQ-7020平台实现同源时钟同步的脉冲ODMR实验闭环，输出稳定ODMR谱线，支撑NV色心自旋态操控、荧光信号采集、多模式脉冲序列生成
核心平台：正点原子ZYNQ-7020开发板，主控芯片XC7Z020CLG400-2（速度等级-2工业级）
芯片参数（知识库为准）：双核Cortex-A9最高主频666.666MHz；PL逻辑单元85K，LUT 53200，触发器FF 106400；BRAM总容量4.9Mb（140个36Kb块）；最大用户IO 253个
开发配置：单人开发+Vivado2020.2工具链+Trae辅助，总周期5周

2.2 阶段0固化配置（全周期不可变更）

工具链：Vivado2020.2路径C:\Xilinx\Vivado\2020.2\bin\vivado.bat，内置Python3.8.3路径C:\Xilinx\Vivado\2020.2\tps\win64\python-3.8.3\python.exe
工程目录：根目录C:\Users\user\Desktop\desktop_project\pulse_odmr，子目录src/、sim/、docs/、scripts/、venv/，已初始化Git
虚拟环境：路径pulse_odmr\venv，固定依赖pynq==2.7、numpy>=1.21.0、matplotlib>=3.4.0、pyserial>=3.5、scipy>=1.7.0
阶段0门禁结论：✅工具链安装完成 ✅XC7Z020器件约束生成 ✅Git仓库初始化完成 ✅虚拟环境依赖全部验证通过

3. 核心约束与要求
3.1 硬件约束（XC7Z020CLG400-2专用）

可用PL Bank：仅13、34、35

Bank13：1.2-3.3V HR Bank，仅XC7Z020支持，引脚引至J4扩展口
Bank34/35：3.3V HR Bank，支持1.2V-3.3V IO标准

资源限制：总IO使用≤80（芯片总IO253，预留冗余），禁止跨电压域直连
DDR配置：两片NT5CC256M16，总容量1GB，连接PS Bank502，供电1.35V
扩展口限制：J4仅ZYNQ-7020核心板可用（XC7Z010无Bank13）

3.2 功能要求（匹配bucher2019.pdf协议）

时序生成：纳秒级对齐的脉冲ODMR序列（激光极化→微波脉冲→荧光读取），支持四路独立可编程同步脉冲：AOM控制、微波开关控制、外设触发、全局同步，脉冲宽度/延迟可配置，支持以下序列：
序列类型功能关键参数依据NV-ESRNV色心共振检测，确定磁场强度 频率范围1.8-4GHz，零场分裂2.87GHz，公式$B_0=(2870-f_{NV})/2.8$ G Rabi确定π/π/2脉冲宽度π脉冲宽度20-60ns，对比度最高30% T1弛豫纵向弛豫时间测量 室温下典型值1-10msT2弛豫（Hahn-echo）横向弛豫时间测量浅NV系综典型值1-10μsXY8-N动态解耦 交流磁场传感，纳米核磁检测τ=1/(2f₀)，f₀为核自旋拉莫尔频率相关光谱核自旋相关检测，消除谐波干扰两个XY8-N序列，扫描t_corr 

时钟同步：50MHz板载晶振为唯一母钟，输出10MHz参考时钟+PPS秒脉冲同步外设，同步精度<500ps
数据采集：AD9280（8位并行，32MSPS，兼容3PA9280）独占J4接口，采集NV荧光信号，参数匹配3PA9280.pdf：分辨率8Bit，转换率32MHz，孔径抖动2ps，输入带宽300MHz
数据处理：PS端接收数据，生成ODMR谱线，支持上位机交互

3.3 开发要求

硬件隔离：J3（同步控制区）与J4（高速采集区）物理隔离，无引脚复用
阶段门禁：每个阶段完成后需通过合规检查，不通过不进入下一阶段
幻觉规避：不确定参数向用户索要官方知识库，禁止自行编造

4. 系统架构
4.1 硬件资源划分
4.1.1 J3扩展口（同步控制区，40Pin 2×20，Bank34/35 3.3V）
核心属性：多功能复用扩展口，默认搭载LCD、触摸、串口、CAN外设，未占用引脚可作普通PL GPIO
引脚号FPGA物理引脚信号功能备注1K14UART2_RXPS串口2接收2M15UART2_TXPS串口2发送3J14CAN_TXCAN总线发送4L16CAN_RXCAN总线接收5U19T_PEN触摸屏笔检测中断6N20T_MISO触摸屏SPI MISO7M19T_CS触摸屏SPI片选8M20LCD_BLLCD背光控制9U20LCD_DELCD数据使能10T20LCD_VSYNCLCD场同步11N18LCD_HSYNCLCD行同步12P19LCD_CLKLCD像素时钟13-36-LCD RGB数据RGB565数据线，按正点原子原理图分配37-GND公共地38-3.3V板载3.3V输出39-GND公共地40-5V板载5V输出

注：芯片封装内部Bank502引脚与扩展口J3/J4重名，无关联

4.1.2 J4扩展口（高速采集区，40Pin 2×20，Bank13+Bank34 3.3V）
核心属性：纯PL端通用GPIO扩展口，无默认外设复用，全部IO可自由配置，适配ATK-HS-ADDA模块
引脚号FPGA物理引脚信号功能备注1V5ref_clk_10m10MHz参考输出2T11pps_clk1Hz PPS输出3U5mw_i微波I路输出（相位控制）4T5mw_q微波Q路输出（相位控制）5W8AD_DATA[7]AD9280数据位7，ATK-HS-ADDA Pin56U7AD_DATA[6]AD9280数据位6，ATK-HS-ADDA Pin67V7AD_DATA[5]AD9280数据位5，ATK-HS-ADDA Pin78V8AD_DATA[4]AD9280数据位4，ATK-HS-ADDA Pin89U9AD_DATA[3]AD9280数据位3，ATK-HS-ADDA Pin910U8AD_DATA[2]AD9280数据位2，ATK-HS-ADDA Pin1011U10AD_DATA[1]AD9280数据位1，ATK-HS-ADDA Pin1112T9AD_DATA[0]AD9280数据位0，ATK-HS-ADDA Pin1213W6AD_OTR超量程反馈，ATK-HS-ADDA Pin1314V6pulse_0AOM控制脉冲输出 15Y7pulse_1微波开关控制脉冲输出16Y6pulse_2外设触发脉冲输出17Y9pulse_3全局同步脉冲输出33W14adc_clk32MHz采样时钟，ATK-HS-ADDA Pin1437-GND公共地，ATK-HS-ADDA Pin2/438-3.3V板载3.3V输出39-GND公共地，ATK-HS-ADDA Pin2/440-5VATK-HS-ADDA模块供电

注：禁用DA部分（Pin16-24不连接），DA_CLK/DA_DATA悬空

4.2 时钟架构（符合Xilinx 7系列MMCM VCO 600-1440MHz要求）

唯一母钟：50MHz板载晶振，连接PL Bank35 U18引脚
MMCM分频参数：
输入50MHz，输入分频D=1，倍频M=16 → VCO频率=50×16/1=800MHz（合法）
输出分频：

32MHz：ADC采样时钟（J4 Pin33，匹配AD9280 32MSPS最大采样率），分频系数=800/32=25
10MHz：参考时钟（J4 Pin1，供外设同步），分频系数=800/10=80
1Hz PPS秒脉冲：由50MHz母钟经PL计数器分频50000000倍实现（非MMCM直接输出），输出到J4 Pin2

同步精度要求：<500ps

4.3 PL/PS分工
模块PL端（FPGA）PS端（ARM Linux）时钟管理50MHz倍频/分频，生成多路同源时钟-脉冲生成四路可编程同步脉冲（AOM/微波开关/外设触发/全局同步），支持6种脉冲序列-数据采集AD9280驱动、FIFO缓存、AXI-DMA上传-流程控制-实验流程调度、参数配置（AXI-Lite）、数据接收、ODMR谱线计算、上位机交互

5. 重要参数配置
5.1 脉冲序列参数（匹配bucher2019.pdf）
参数名称典型值备注NV零场分裂D 2.87GHz温度/应变会有微小波动微波频率范围1.8-4GHz对应磁场0-400G左右AOM初始化/读取脉冲宽度 5μs对应PULSE0_CFG_REG默认5000nsπ脉冲宽度20-60ns对应PULSE1_CFG_REG默认40nsπ/2脉冲宽度10-30nsπ脉冲的一半XY8-N τ参数300-2000nsτ=1/(2f₀)，f₀为核自旋拉莫尔频率相关光谱t_corr 0-350μs扫描范围匹配核自旋拉莫尔周期
5.2 ADC参数（匹配3PA9280.pdf）
参数名称典型值备注分辨率8Bit-最大转换率32MSPS对应adc_clk 32MHz孔径抖动2ps保证采样精度输入带宽(-3dB)300MHz-输入电压范围0~2*(REFT-REFB)由参考电压决定

6. 寄存器映射与约束（AXI-Lite 32位对齐，地址范围0x43C00000-0x43C0FFFF）
地址偏移寄存器名读写位宽描述默认值依据0x00CTRL_REGR/W32全局控制：bit[0]系统使能、bit[1]脉冲序列使能、bit[2]ADC采集使能、bit[3]AXI-DMA上传使能、bit[4]序列启动（写1自动清零）、bit[31:5]保留0x00000000-0x04STAT_REGRO32全局状态：bit[0]系统就绪、bit[1]ADC超量程（写1清零）、bit[2]fIFO空、bit[3]fIFO满、bit[4]序列执行完成、bit[31:5]保留0x00000000-0x10CLK_CFG_REGR/W32时钟配置：bit[15:0]保留、bit[31:16]PPS分频系数（默认50000000）0xC3500000修正后0x14MMCM_CFG_REGR/W32MMCM参数：bit[7:0]M=16、bit[15:8]D=1、bit[23:16]32MHz分频=25、bit[31:24]10MHz分频=800x50190110ug472+context0x18MW_FREQ_REGR/W32微波频率（单位kHz，范围1.8G-4G），默认2.87GHz0x002BCA00bucher2019.pdf0x1CMW_PHASE_REGR/W32微波相位：bit[1:0]相位选择、bit[31:2]保留0x00000000bucher2019.pdf0x20PULSE0_CFG_REGR/W32脉冲0（AOM）：bit[15:0]宽度（默认5000ns）、bit[31:16]延迟（默认0ns）0x00001388bucher2019.pdf0x24PULSE1_CFG_REGR/W32脉冲1（微波开关）：bit[15:0]宽度（默认40ns）、bit[31:16]延迟（默认20ns）0x00140028bucher2019.pdf0x28PULSE2_CFG_REGR/W32脉冲2（外设触发）：同PULSE0格式0x00001388-0x2CPULSE3_CFG_REGR/W32脉冲3（全局同步）：同PULSE0格式0x00001388-0x30PULSE_SEQ_REGR/W32脉冲使能掩码：bit[3:0]对应四路脉冲，1=使能0x0000000F-0x34SEQ_SEL_REGR/W32序列选择：00=NV-ESR/01=Rabi/10=T1/11=T2/100=XY8-N/101=相关光谱 0x00000000bucher2019.pdf0x38SEQ_PARAM0_REGR/W32XY8-N的N值（默认1）0x00000001bucher2019.pdf0x3CSEQ_PARAM1_REGR/W32XY8-N的τ值（默认378ns） 0x0000017Abucher2019.pdf0x40SEQ_PARAM2_REGR/W32相关光谱的t_corr（默认100μs）0x000186A0bucher2019.pdf0x44ADC_CFG_REGR/W32ADC配置：bit[15:0]采样点数（默认1024）、bit[23:16]采样时钟分频0x00000400-0x48ADC_STAT_REGRO32ADC状态：bit[15:0]已采样点数0x00000000-0x60DMA_CFG_REGR/W32DMA上传长度（默认1024字节）0x00000400-0x64DMA_STAT_REGRO32DMA状态：bit[0]完成、bit[1]错误0x00000000-

7. 时钟与引脚约束（XDC格式，已通过Trae语法检查）
7.1 时序约束
# 1. 主时钟约束（50MHz，Pin U18，Bank35）
create_clock -name sys_clk -period 20.000 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN U18 [get_ports sys_clk]

# 2. 衍生时钟约束（MMCM生成，VCO=800MHz）
create_generated_clock -name adc_clk -source [get_clocks sys_clk] -multiply_by 16 -divide_by 25 [get_ports adc_clk]  # 32MHz
create_generated_clock -name ref_clk_10m -source [get_clocks sys_clk] -multiply_by 16 -divide_by 80 [get_ports ref_clk_10m]  # 10MHz
create_generated_clock -name pps_clk -source [get_clocks sys_clk] -divide_by 50000000 [get_ports pps_clk]  # 1Hz

# 3. ADC（AD9280）时序约束
set adc_period 31.250
set conv_delay_max [expr 3 * $adc_period + 25.0]
set_input_delay -clock adc_clk -max $conv_delay_max [get_ports {ad_data[7:0]}]
set_input_delay -clock adc_clk -max $conv_delay_max [get_ports ad_otr]
set_input_delay -clock adc_clk -min 10.0 [get_ports {ad_data[7:0]}]

# 4. 时序裕量约束
set_clock_uncertainty -setup 0.300 [get_clocks sys_clk]
set_clock_uncertainty -hold 0.150 [get_clocks sys_clk]
set_clock_uncertainty -setup 0.500 [get_clocks ref_clk_10m]
set_clock_uncertainty -hold 0.500 [get_clocks ref_clk_10m]

# 5. 脉冲宽度约束（最小2ns）
set_property MIN_PULSE_WIDTH 2ns [get_ports {pulse_0 pulse_1 pulse_2 pulse_3}]

# 6. 跨时钟域伪路径
set_false_path -from [get_clocks sys_clk] -to [get_clocks pps_clk]

7.2 引脚约束
# 全局IO标准
set_property IOSTANDARD LVCMOS33 [get_ports *]

# 主时钟引脚
set_property PACKAGE_PIN U18 [get_ports sys_clk]

# J3扩展口引脚
set_property PACKAGE_PIN K14 [get_ports uart2_rx]
set_property PACKAGE_PIN M15 [get_ports uart2_tx]
set_property PACKAGE_PIN J14 [get_ports can_tx]
set_property PACKAGE_PIN L16 [get_ports can_rx]
set_property PACKAGE_PIN U19 [get_ports t_pen]
set_property PACKAGE_PIN N20 [get_ports t_miso]
set_property PACKAGE_PIN M19 [get_ports t_cs]
set_property PACKAGE_PIN M20 [get_ports lcd_bl]
set_property PACKAGE_PIN U20 [get_ports lcd_de]
set_property PACKAGE_PIN T20 [get_ports lcd_vsync]
set_property PACKAGE_PIN N18 [get_ports lcd_hsync]
set_property PACKAGE_PIN P19 [get_ports lcd_clk]

# J4扩展口引脚
set_property PACKAGE_PIN V5 [get_ports ref_clk_10m]
set_property PACKAGE_PIN T11 [get_ports pps_clk]
set_property PACKAGE_PIN U5 [get_ports mw_i]
set_property PACKAGE_PIN T5 [get_ports mw_q]
set_property PACKAGE_PIN W8 [get_ports ad_data[7]]
set_property PACKAGE_PIN U7 [get_ports ad_data[6]]
set_property PACKAGE_PIN V7 [get_ports ad_data[5]]
set_property PACKAGE_PIN V8 [get_ports ad_data[4]]
set_property PACKAGE_PIN U9 [get_ports ad_data[3]]
set_property PACKAGE_PIN U8 [get_ports ad_data[2]]
set_property PACKAGE_PIN U10 [get_ports ad_data[1]]
set_property PACKAGE_PIN T9 [get_ports ad_data[0]]
set_property PACKAGE_PIN W6 [get_ports ad_otr]
set_property PACKAGE_PIN V6 [get_ports pulse_0]
set_property PACKAGE_PIN Y7 [get_ports pulse_1]
set_property PACKAGE_PIN Y6 [get_ports pulse_2]
set_property PACKAGE_PIN Y9 [get_ports pulse_3]
set_property PACKAGE_PIN W14 [get_ports adc_clk]

# 禁用DA部分
set_property DONT_TOUCH true [get_ports {da_clk da_data[7:0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da_clk da_data[7:0]}]

8. 当前进度与交付物
8.1 阶段划分与进度
阶段内容周期状态0环境准备1天✅ 已完成（固化不可变更）1需求与约束锁定1周✅ 已完成（门禁通过）2模块级开发+验证1.5周🚀 进行中3子系统集成+验证1周待执行4系统集成+板级调试1周待执行5优化+部署+维护0.5周待执行
8.2 阶段1交付物（✅全部确认）
交付物状态需求规格书（本文件）✅ 已完成PS-PL寄存器映射表（register_map.csv）✅ 已完成时序约束文件（timing_constraints.xdc）✅ 已完成引脚分配方案（pin_assignments.xdc）✅ 已完成阶段1门禁验证报告（gate1_report.md）✅ 已完成（6项全通过）

9. 后续计划与产出
9.1 执行顺序
阶段2开发（控制寄存器→脉冲生成→微波相位→AD采集）→ 阶段2门禁 → 阶段3集成 → 阶段4调试 → 阶段5部署
9.2 最终交付物清单
{
  "hardware_design": ["full_system.tcl", "system.bit", "system.hwh"],
  "software_code": ["odmr_driver.py", "test_odmr.py"],
  "constraints": ["full_constraints.xdc", "pin_assignments.xdc", "device_constraints.xdc"],
  "documentation": ["requirements.pdf", "register_map.csv", "timing_constraints.xdc", "pin_assignments.xdc", "gate1_report.md", "deployment_guide.md", "maintenance_guide.md", "final_acceptance_checklist.md", "context_summary.md"],
  "test_artifacts": ["gate1_report.md", "gate2_report.md", "gate3_report.md", "board_test_guide.md", "optimization_report.md"]
}

9.3 阶段门禁检查项（每阶段结束后执行）
trae run --agent=checker --task=检查引脚分配合规性 --params=device:XC7Z020-2CLG400
trae run --agent=checker --task=检查电压域冲突 --params=device:XC7Z020-2CLG400
trae run --agent=checker --task=检查时序违规 --params=device:XC7Z020-2CLG400
trae run --agent=checker --task=检查资源占用 --params=device:XC7Z020-2CLG400
trae run --agent=checker --task=检查AXI总线合规性 --params=device:XC7Z020-2CLG400

9.4 上下文更新规则

阶段0配置全工程固化不可变更，仅修改对应阶段章节
知识库与用户文档冲突时，优先采用知识库真实值
定期迭代浓缩上下文，保留版本记录，后续更新仅修改对应章节，固化配置保持不变

10. 附录：术语表
术语解释ODMR光检测磁共振NV氮空位色心ESR电子自旋共振NMR核磁共振PL光致发光AOM声光调制器MMCM混合模式时钟管理器AXIARM高级可扩展接口DMA直接内存访问