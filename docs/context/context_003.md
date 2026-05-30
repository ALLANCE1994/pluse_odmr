NV色心脉冲ODMR检测系统（pulse_odmr）上下文总结
更新至2026-05-30，保留原结构框架，全量核心信息整合，冲突处已标注，字数约11800字

一、工程总览
1.1 基本信息

正式名称：NV色心脉冲ODMR检测系统，代号pulse_odmr
核心目标：实现同源时钟同步的脉冲ODMR实验闭环，输出稳定ODMR谱线，支撑NV色心自旋态操控、荧光信号采集、脉冲ODMR谱线生成
核心平台：正点原子ZYNQ-7020开发板，主控芯片XC7Z020CLG400-2（速度等级-2工业级）
芯片参数：双核Cortex-A9；PL逻辑单元85K，LUT 53200，触发器FF 106400；BRAM总容量4.9Mb（140个36Kb块）；最大用户IO 253个
开发配置：单人开发+Vivado 2020.2工具链+Trae辅助，总周期5周
工具链细节：

Vivado 2020.2路径：C:\Xilinx\Vivado\2020.2\bin\vivado.bat
内置Python3.8.3路径：C:\Xilinx\Vivado\2020.2\tps\win64\python-3.8.3\python.exe
工程根目录：C:\Users\user\Desktop\desktop_project\pulse_odmr，子目录src/、sim/、docs/、scripts/，已初始化Git
虚拟环境路径：pulse_odmr\venv，固定依赖pynq==2.7、numpy>=1.21.0、matplotlib>=3.4.0、pyserial>=3.5、scipy>=1.7.0

阶段0（环境准备，1天，✅已完成固化）：工具链安装完成、XC7Z020器件约束生成、Git仓库初始化完成、虚拟环境依赖全部验证通过

1.2 阶段划分与最新进度
阶段内容周期状态0环境准备1天✅ 已完成（全工程固化不可变更）1需求与约束锁定1周✅ 已完成（门禁通过）2模块级开发+验证1.5周✅ 已完成（静态验证+动态仿真均通过）3子系统集成+验证1周待执行4系统集成+板级调试1周待执行5优化+部署+维护0.5周待执行
⚠️ 验证流程差异标注：上传文档参考豆包建议「先静态验证（综合）再动态仿真」，知识库（正点原子FPGA开发指南）明确流程为「先编写Testbench做功能仿真（动态）→ 波形与设计时序一致 → 再新建工程 → 综合（静态检查）→ 后续实现步骤」，以知识库为准。

二、核心约束与要求
2.1 硬件约束（XC7Z020CLG400-2专用，全工程不可变更）

可用PL Bank：仅13、34、35；Bank13为1.2-3.3V HR Bank（仅XC7Z020支持，引至J4扩展口）；Bank34/35为3.3V HR Bank，支持1.2V-3.3V IO标准
资源限制：总IO使用≤80（芯片总IO253，预留冗余），禁止跨电压域直连
DDR配置：两片NT5CC256M16，总容量1GB，连接PS Bank502，供电1.35V
扩展口限制：J4仅ZYNQ-7020核心板可用（XC7Z010无Bank13）

2.2 功能要求

时序生成：纳秒级对齐的脉冲ODMR序列（激光极化→微波脉冲→荧光读取），支持四路独立可编程同步脉冲：

pulse_0：AOM控制、pulse_1：微波开关控制、pulse_2：外设触发、pulse_3：全局同步，脉冲宽度/延迟可配置

时钟同步：50MHz板载晶振为唯一母钟，输出10MHz参考时钟+PPS秒脉冲同步外设，同步精度<500ps
数据采集：AD9280（8位并行，32MSPS，兼容3PA9280，禁用AD9708（DA））独占J4接口，采集荧光信号
数据处理：PS端接收数据，生成ODMR谱线，支持上位机交互
硬件隔离：J3（同步控制区）与J4（高速采集区）物理隔离，无引脚复用

2.3 开发要求

阶段门禁：每个阶段完成后需通过合规检查，不通过不进入下一阶段
代码规范：组合逻辑if/case语句必须带else/default分支避免latch
幻觉规避：不确定参数向用户索要官方知识库，禁止自行编造规则
代码规则：代码不允许使用中文注释，tcl脚本、xdc文件不允许添加注释

三、系统架构
3.1 硬件资源划分（最终修正版）
3.1.1 J3扩展口（同步控制区，40Pin 2×20，Bank34/35 3.3V）

核心属性：多功能复用扩展口，默认搭载LCD、触摸、串口、CAN外设，未占用引脚可作普通PL GPIO
关键引脚分配：
引脚号FPGA物理引脚信号功能备注1K14UART2_RXPS串口2接收2M15UART2_TXPS串口2发送3J14CAN_TXCAN总线发送4L16CAN_RXCAN总线接收

注：芯片封装内部Bank502引脚与扩展口J3/J4重名，无关联

3.1.2 J4扩展口（高速采集区，40Pin 2×20，Bank13+Bank34 3.3V）

核心属性：纯PL端通用GPIO扩展口，无默认外设复用，全部IO可自由配置，适配ATK-HS-ADDA模块
关键引脚分配：
引脚号FPGA物理引脚信号功能备注1V5ref_clk_10m10MHz参考输出2T11pps_clk1Hz PPS输出3U5mw_i微波I路输出4T5mw_q微波Q路输出5-12W7/U7/W8/V8/U9/U8/U10/T9AD_DATA[7:0]AD9280数据位7~013W6ad_otr超量程反馈14V6pulse_0AOM控制脉冲输出15Y7pulse_1微波开关控制脉冲输出16Y6pulse_2外设触发脉冲输出17Y9pulse_3全局同步脉冲输出33W14adc_clk32MHz采样时钟40-5VATK-HS-ADDA模块供电

禁用DA部分：Pin16-24不连接，DA_CLK/DA_DATA悬空
⚠️ 更新说明：2026-05-29版本设置DA引脚DONT_TOUCH，2026-05-30决策直接从RTL移除DA端口，避免DRC UCIO-1错误，以最新上传文档为准。

3.2 时钟架构（合规修正版）

唯一母钟：50MHz板载晶振，连接PL Bank35 U18引脚
MMCM分频参数：输入50MHz，输入分频D=1，倍频M=16 → VCO频率=800MHz

32MHz：ADC采样时钟（J4 Pin33，匹配AD9280 32MSPS最大采样率），分频系数=800/32=25
10MHz：参考时钟（J4 Pin1，供外设同步），分频系数=800/10=80

1Hz PPS秒脉冲：由50MHz母钟经PL计数器分频50000000倍实现（非MMCM直接输出），输出到J4 Pin2
同步精度要求：<500ps，ref_clk_10m时钟不确定性设置为0.5ns
Bug修复说明：clk_gen.v中MMCM参数CLKOUT1_DIVIDE_F已修正为正确参数名CLKOUT1_DIVIDE，删除MMCME2_ADV不存在的端口CLKFBOUTB、CLKFBINB，未修改时钟分频参数，符合约束要求。

3.3 PL/PS分工
功能模块PL端（FPGA）PS端（ARM Linux）时钟管理50MHz倍频/分频，生成多路同源时钟-脉冲生成四路可编程同步脉冲（AOM/微波开关/外设触发/全局同步）-数据采集AD9280驱动、FIFO缓存、AXI-DMA上传-参数配置-AXI-Lite配置寄存器、数据接收、ODMR谱线计算流程控制-实验流程调度、上位机交互

四、重要寄存器与约束
4.1 PS-PL寄存器映射（AXI-Lite 32位对齐，地址范围0x43C00000-0x43C0FFFF，✅最终确认版）
地址偏移寄存器名读写位宽描述默认值0x00CTRL_REGR/W32全局控制：bit[0]系统使能、bit[1]脉冲序列使能、bit[2]ADC采集使能、bit[3]AXI-DMA上传使能、bit[4]序列启动（写1自动清零）、bit[31:5]保留0x000000000x04STAT_REGRO32全局状态：bit[0]系统就绪、bit[1]ADC超量程（写1清零）、bit[2]fIFO空、bit[3]fIFO满、bit[4]序列执行完成、bit[31:5]保留0x000000000x14MMCM_CFG_REGR/W32MMCM参数：bit[7:0]M=16、bit[15:8]D=1、bit[23:16]32MHz分频=25、bit[31:24]10MHz分频=800x501901100x18MW_FREQ_REGR/W32微波频率（单位kHz，范围1.8G-4G），默认2.87GHz0x002BCA000x20PULSE0_CFGR/W32脉冲0（AOM）：bit[15:0]宽度（默认5000ns）、bit[31:16]延迟（默认0ns）0x000013880x24PULSE1_CFGR/W32脉冲1（微波开关）：bit[15:0]宽度（默认40ns）、bit[31:16]延迟（默认20ns）0x001400280x28PULSE2_CFGR/W32脉冲2（外设触发）：bit[15:0]宽度（默认5000ns）、bit[31:16]延迟（默认0ns）0x000013880x2CPULSE3_CFGR/W32脉冲3（全局同步）：bit[15:0]宽度（默认5000ns）、bit[31:16]延迟（默认0ns）0x000013880x30PULSE_SEQ_REGR/W32脉冲使能掩码：bit[3:0]对应四路脉冲，1=使能0x0000000F0x34SEQ_SEL_REGR/W32序列选择：00=NV-ESR/01=Rabi/10=T1/11=T2/100=XY8-N/101=相关光谱0x000000000x38SEQ_PARAM0R/W32XY8-N N value0x000000010x3CSEQ_PARAM1R/W32XY8-N tau (ns)0x0000017A0x40SEQ_PARAM2R/W32Correlation t_corr (ns)0x000186A00x44ADC_CFG_REGR/W32采样点数（默认1024）、bit[23:16]采样时钟分频0x000004000x48ADC_STAT_REGRO32已采样点数0x000000000x60DMA_CFG_REGR/W32DMA上传长度（默认1024字节）0x000004000x64DMA_STAT_REGRO32DMA完成/错误状态0x00000000
（完整寄存器表见register_map.csv）
4.2 时序约束（✅最终确认版，XDC格式，与知识库规范一致）
# 1. 主时钟约束（50MHz，Pin U18，Bank35）
create_clock -name sys_clk -period 20.000 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN U18 [get_ports sys_clk]

# 2. 衍生时钟约束（MMCM生成，VCO=800MHz）
create_generated_clock -name adc_clk -source [get_clocks sys_clk] -multiply_by 16 -divide_by 25 [get_ports adc_clk]  # 32MHz
create_generated_clock -name ref_clk_10m -source [get_clocks sys_clk] -multiply_by 16 -divide_by 80 [get_ports ref_clk_10m]  # 10MHz

# 3. 1Hz PPS秒脉冲（计数器分频生成，非MMCM输出）
create_clock -name pps_clk -period 1000000000.000 [get_ports pps_clk]
set_clock_uncertainty -setup 0.500 [get_clocks pps_clk]
set_clock_uncertainty -hold 0.500 [get_clocks pps_clk]

# 4. ADC（AD9280）时序约束
set adc_period 31.250
set conv_delay_max [expr 3 * $adc_period + 25.0]
set_input_delay -clock adc_clk -max $conv_delay_max [get_ports {ad_data[7:0]}]
set_input_delay -clock adc_clk -max $conv_delay_max [get_ports ad_otr]
set_input_delay -clock adc_clk -min 10.0 [get_ports {ad_data[7:0]}]

# 5. 时序裕量约束
set_clock_uncertainty -setup 0.300 [get_clocks sys_clk]
set_clock_uncertainty -hold 0.150 [get_clocks sys_clk]
set_clock_uncertainty -setup 0.500 [get_clocks ref_clk_10m]
set_clock_uncertainty -hold 0.500 [get_clocks ref_clk_10m]

# 6. 脉冲宽度约束（最小2ns）
set_property MIN_PULSE_WIDTH 2ns [get_ports {pulse_0 pulse_1 pulse_2 pulse_3}]

# 7. 跨时钟域伪路径
set_false_path -from [get_clocks sys_clk] -to [get_clocks pps_clk]

⚠️ 补充更新（2026-05-30）：Vivado Block Design wrapper会自动为所有外部端口添加_0后缀，XDC中get_ports需使用BD wrapper端口名（如sys_clk_0，而非sys_clk），否则约束无效，触发DRC UCIO-1错误。当前XDC已同步更新。
4.3 引脚约束（✅最终确认版，XDC格式，与知识库规范一致）
# 全局IO标准
set_property IOSTANDARD LVCMOS33 [get_ports *]

# 主时钟引脚
set_property PACKAGE_PIN U18 [get_ports sys_clk]

# J3扩展口引脚（部分）
set_property PACKAGE_PIN K14 [get_ports uart2_rx]
set_property PACKAGE_PIN M15 [get_ports uart2_tx]
set_property PACKAGE_PIN J14 [get_ports can_tx]
set_property PACKAGE_PIN L16 [get_ports can_rx]

# J4扩展口引脚
set_property PACKAGE_PIN V5 [get_ports ref_clk_10m]
set_property PACKAGE_PIN T11 [get_ports pps_clk]
set_property PACKAGE_PIN U5 [get_ports mw_i]
set_property PACKAGE_PIN T5 [get_ports mw_q]
set_property PACKAGE_PIN V7 [get_ports ad_data[7]]
set_property PACKAGE_PIN U7 [get_ports ad_data[6]]
set_property PACKAGE_PIN W8 [get_ports ad_data[5]]
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

# 禁用DA部分（2026-05-29设置，2026-05-30已移除DA端口）
set_property DONT_TOUCH true [get_ports {da_clk da_data[7:0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da_clk da_data[7:0]}]

五、当前进度与交付物（更新至2026-05-30）
5.1 阶段1交付物（✅全部确认）

需求规格书（context_002.md）
PS-PL寄存器映射表（register_map.csv）
时序约束文件（timing_constraints.xdc）
引脚分配方案（pin_assignments.xdc）
阶段1门禁验证报告（gate1_report.md，6项全通过）

5.2 阶段2交付物（✅全部完成）

PL端RTL：clk_gen.v、axi_lite_slave.v、pulse_gen.v、mw_phase_gen.v、ad9280_driver.v、pulse_odmr_top.v（均符合规范：无组合逻辑latch、脉冲宽度≥2ns、AXI-Lite合规、DA端口已移除）
仿真验证：各模块Testbench（_tb.v）、自动化仿真脚本run_all_sim.tcl、顶层仿真结果✅通过（3260ns仿真无功能错误）
PS端软件：pl_reg_driver.py、ad_collect.py、odmr_spectrum.py（符合PYNQ、AXI-Lite规范）
门禁文档：gate2_module_verify_report.md、gate2_report.md（5项强制检查全通过）

5.3 静态验证结果（✅2026-05-29通过）

修复pulse_gen.v语法错误：pulse_1/2/3声明为output reg却用assign赋值，已删除冲突assign语句，补充完整always块逻辑，脉冲功能、宽度/延迟参数未修改
修复clk_gen.v MMCM参数错误：CLKOUT1_DIVIDE_F修正为CLKOUT1_DIVIDE，删除MMCME2_ADV不存在的端口CLKFBOUTB、CLKFBINB，时钟分频参数完全保留
综合+实现无Error，仅少量警告，未修改寄存器、时序、引脚约束

5.4 动态仿真结果（✅2026-05-29通过）

编译（xvlog）：所有7个文件编译成功✅
构建（xelab）：所有模块成功构建仿真快照✅
仿真（xsim）：运行至$finish，输出PASS✅
子模块检查结果：
模块状态说明clk_gen⚠️有警告MMCME2_ADV正确实例化；警告：49_999_999赋值给25-bit reg（数值在范围内，建议改为26-bit）；仿真中mmcm_locked被force=1（MMCM行为模型不会自动lock，属正常仿真做法）axi_lite_slave✅正常寄存器读写正常，ctrl_reg从0x00000000→0x00000013正确赋值，pulse_seq_mask正确设为0x0000000Fpulse_gen✅正常四路脉冲输出符合配置：pulse_0=1（delay=0ns, width=5000ns）、pulse_1=1（delay=20ns, width=100ns）、pulse_3=1（delay=200ns, width=600ns）；pulse_2=0处于延迟期，属正常时序行为mw_phase_gen✅通过编译通过，接口连接正确ad9280_driver✅通过编译通过，AD数据输入设为0x80未触发overrange，FIFO接口信号正确连接pulse_odmr_top✅正确顶层集成正确，资源使用：50 LUTs、51寄存器、1 MMCM、21 IOBs

5.5 已知低优先级问题（待后续优化）

RTL模块缺少timescale定义，仅有TB有定义，建议添加消除警告
clk_gen.v PPS计数器常量49_999_999需26-bit，当前reg为25-bit，建议修改
Hold时序违例-0.025ns（8条路径总计-0.130ns），布局布线后优化
seq_start为电平敏感，如需单次触发建议改为边沿检测
BD wrapper端口_0后缀问题已修复，XDC已同步更新

5.6 自动化脚本与编译结果（✅2026-05-30全部通过）
7个按顺序执行的Tcl脚本：

step1_ip_package.tcl：封装pulse_odmr_ip AXI4-Lite自定义IP
step2_setup_project.tcl：创建Vivado项目、添加RTL+XDC
step3_create_system_bd.tcl：构建Block Design（PS7 + IP + Interconnect）
step4_generate_outputs.tcl：生成输出产品+HDL Wrapper
step5_run_subsystem_sim.tcl：子系统级行为仿真
step6_run_impl.tcl：综合+实现+比特流+XSA
step7_run_phase3_checks.tcl：门禁检查（时序/资源/DRC）

配套脚本：run_vivado_flow.ps1（全自动化PowerShell）、kill_vivado.ps1（后台进程清理）

编译结果：Step1-Step6全部通过，比特流生成完成，就绪状态可上板部署
时序结果：WNS（建立时间裕量）+3.074ns，WHS（保持时间裕量）+0.062ns，所有时序约束满足，0 failing endpoints

六、后续计划与更新规则
6.1 执行顺序
阶段2门禁通过 → 阶段3子系统集成+验证 → 阶段4系统集成+板级调试 → 阶段5优化+部署+维护
6.2 更新规则

阶段0配置全工程固化不可变更，仅修改对应阶段章节
知识库与用户文档冲突时，优先采用知识库真实值
定期迭代浓缩上下文，保留版本记录
验证流程以知识库为准（先动态仿真再静态综合）

6.3 强制检查项（每阶段结束后执行）
trae run --agent=checker --task=检查引脚分配合规性 --params=device:XC7Z020-2CLG400
trae run --agent=checker --task=检查电压域冲突 --params=device:XC7Z020-2CLG400
trae run --agent=checker --task=检查时序违规 --params=device:XC7Z020-2CLG400
trae run --agent=checker --task=检查资源占用 --params=device:XC7Z020-2CLG400
trae run --agent=checker --task=检查AXI总线合规性 --params=device:XC7Z020-2CLG400

6.4 近期上板计划（阶段4，2026-05-30起）

上传比特流+硬件描述文件到开发板：复制pynq/overlay/到/home/xilinx/pynq/overlays/pulse_odmr/
PYNQ加载overlay：ol = Overlay("pulse_odmr.bit")
验证寄存器读写：ol.pulse_odmr_ip_0.read(0x00), ol.pulse_odmr_ip_0.write(0x20, 0x00001388)
示波器测试脉冲输出：写CTRL_REG=0x12，观察pulse_0波形
验证四路脉冲、AD采集、时钟同步功能
运行NV-ESR ODMR测试序列

七、最终交付物清单（全部阶段完成后输出）
{
  "hardware_design": ["full_system.tcl", "system.bit", "system.hwh"],
  "software_code": ["odmr_driver.py", "test_odmr.py"],
  "constraints": ["full_constraints.xdc", "pin_assignments.xdc", "device_constraints.xdc"],
  "documentation": ["requirements.pdf", "register_map.csv", "timing_constraints.xdc", "pin_assignments.xdc", "gate1_report.md", "deployment_guide.md", "maintenance_guide.md", "final_acceptance_checklist.md", "context_summary.md"],
  "test_artifacts": ["gate1_report.md", "gate2_report.md", "gate3_report.md", "board_test_guide.md", "optimization_report.md"]
}

八、关键设计决策与经验教训（2026-05-30补充）
8.1 关键设计决策

DA端口移除：原设置DONT_TOUCH，后决策直接从RTL移除DA端口，避免DRC UCIO-1错误
仅IP级仿真：不开展PS系统级仿真，因PS7需加密模型，BD级仿真耗时，IP级仿真可覆盖100% PL RTL验证
三层MMCM仿真旁路：RTL（ifdef SIMULATION）、TCL（verilog_define SIMULATION）、TB（force mmcm_locked）三层防御，确保仿真时MMCM立即锁定
Vivado项目重置核选项：遇到BD名称冲突或数据库错误，直接删除整个项目目录重建，避免调试XML损坏

8.2 经验教训

验证优先：RTL修改后添加$display字符串，仿真日志未出现则说明缓存未更新
端口命名：BD wrapper端口自动添加_0后缀，XDC需同步更新，否则约束无效
地址解码：AXI地址解码使用reg+阻塞赋值，避免wire连续赋值导致仿真delta周期竞争
缓存清理：RTL修改后需同时删除.sim/和.cache/目录，避免xelab增量编译缓存旧版本
IP仓库：每个脚本需重新注册ip_repo_paths，避免BD找不到IP

后续更新将追加至对应章节，定期浓缩冗余信息，保留版本迭代记录