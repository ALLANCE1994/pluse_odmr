NV色心脉冲ODMR实验系统完整框架
版本：V2.0（实验系统框架版）
修订日期：2026-05-30
状态：阶段2进行中
保密等级：项目内部公开

1. 文档说明
1.1 编写目的
本框架文档用于定义NV色心脉冲ODMR实验系统的完整硬件构成、子系统互联拓扑、信号流路径及软件协同架构，为实验搭建、调试与迭代提供唯一参照依据。所有设备型号、连接方式、信号标准以本文档为准。

1.2 适用范围
适用于pulse_odmr实验系统的全生命周期，包括光学平台搭建、电学互联、软件部署、系统联调及日常实验操作。

1.3 参考文档
文档名称类型备注pulse_odmr需求规格书V1.1项目文档系统需求与PL/PS架构定义b210_server.py项目代码上位机B210 REST API服务odmr_experiment.py项目代码PYNQ端实验主编排器bucher2019.pdf知识库NV色心传感、脉冲序列协议依据3PA9280.pdf知识库AD9280 ADC参数依据正点原子领航者ZYNQ之FPGA开发指南V3.3.pdf知识库ZYNQ-7020硬件架构依据Ettus B210mini Datasheet知识库B210mini射频参数与外部参考规范Mini-Circuits ZASWA-2-50DR+知识库微波开关数据手册

2. 实验系统概述
2.1 基本信息

正式名称：NV色心脉冲ODMR实验系统，代号pulse_odmr_lab
核心目标：基于NV色心（元素六金刚石）自旋态操控，通过532nm激光极化、B210mini微波操控、APD荧光收集，实现完整脉冲ODMR谱线测量闭环
实验模式：连续波ODMR（CW-ODMR）+ 脉冲ODMR（Pulse-ODMR），支持NV-ESR/Rabi/T1/T2-Hahn/XY8-N/相关光谱共6种实验序列
控制架构：ZYNQ-7020（脉冲时序+ADC采集） + 普通PC（B210微波源控制）双层协同

2.2 系统固化配置（全实验周期不可变更）

光路配置：532nm固体激光器 → 二向色镜 → 物镜 → NV色心（元素六金刚石）→ 荧光原路返回 → 二向色镜反射 → 滤光片（650nm长通）→ APD探测器
微波链路：B210mini TX/RX → Mini-Circuits微波开关（ZASWA-2-50DR+或同级SPDT）→ 微波放大器（Mini-Circuits ZHL-16W-43-S+）→ 铜微波天线/共面波导
时钟同步：ZYNQ PL 50MHz母钟 → MMCM分频 → 10MHz REF + 1Hz PPS → B210mini外部参考输入，全系统同源同步
采集链路：APD输出电压 → 正点原子ATK-HS-ADDA模块（AD9280） → ZYNQ J4扩展口 → PL FIFO → AXI-DMA → PS端谱线计算

3. 实验系统硬件构成
3.1 硬件总清单

序号设备名称型号/规格供应商/品牌功能角色供电方式1NV色心金刚石样品DNV-B1（单晶Ib或CVD）元素六（Element Six）自旋载体，NV浓度~1-10ppm，<111>晶向无需供电2532nm激光器MGL-III-532-200mW长春新产业/CNI NV色心极化激发源220V AC/12V DC3声光调制器AOM3080-122或同级Gooch & Housego激光脉冲调制（纳秒级开关）24V DC4二向色镜DMLP550RThorlabs532nm反射/>650nm透射，分离激发与荧光无需供电5长通滤光片FELH0650Thorlabs透过>650nm荧光，截止532nm泵浦光无需供电6物镜40X/0.65NA或同级Olympus/Nikon 激光聚焦与荧光收集无需供电7APD探测器APD440A2或同级Thorlabs单光子计数级荧光探测，DC-1MHz带宽±12V DC8正点原子ADDA模块ATK-HS-ADDA（3PA9280）正点原子AD9280 8位32MSPS ADC，采集APD输出5V DC（J4供电）9ZYNQ-7020开发板领航者ZYNQ-7020正点原子脉冲时序生成+ADC驱动+PS端数据处理5V DC/12V DC10B210mini USRPB210miniEttus Research70MHz-6GHz微波源，软件定义射频收发USB 3.0供电6V DC11微波开关ZASWA-2-50DR+Mini-CircuitsSPDT吸收式微波开关，DC-5GHz，<10ns切换5V DC/0V逻辑12微波放大器ZHL-16W-43-S+Mini-Circuits 0.7-4.2GHz，增益>43dB，输出功率>+43dBm 24V DC13普通PCWindows/Linux用户自备运行B210 REST服务器+UHD驱动220V AC14以太网交换机TL-SG105或同级TP-Link ZYNQ与PC之间网络通信5V DC

3.2 各子系统详细参数
3.2.1 NV色心样品（元素六）

参数名称典型值备注NV浓度~1-10ppm浓度过高会降低T2*零场分裂D2.87GHz常温下应变/温度可引起微小偏移晶向<111>或<100>金刚石单晶晶向NV轴方向与磁场夹角决定ODMR对比度NV轴数量4个<111>晶向有4个等效NV取向C13同位素自然丰度1.1%C13核自旋是退相干主因，如需长T2建议使用C12富集样品尺寸2×2×0.5mm³或根据样品架定制

3.2.2 532nm激光器（CNI MGL-III-532）

参数名称典型值备注波长532nmNd:YAG倍频，匹配NV色心吸收带输出功率50-200mW可调（建议100mW）功率稳定性<2% RMS（8小时）AOM后实际到达样品~10-50mW光束质量TEM₀₀单横模，利于物镜聚焦光斑直径出口~1.5mm（1/e²）需扩束或直接耦合调制方式外部AOM激光器本身为CW模式

3.2.3 B210mini微波源（Ettus USRP）

参数名称典型值备注频率范围70MHz - 6GHz覆盖NV零场分裂2.87GHz及其±1GHz调谐范围瞬时带宽最大56MHz（61.44MSPS）满足CW-ODMR扫频需求频率分辨率<1Hz优于1Hz调谐步进输出功率最大+10dBm（约10mW）需外接功率放大器至+30~+43dBm外部参考输入10MHz 0~10dBm正弦波或方波由ZYNQ J4 Pin1(V5)提供PPS同步输入1Hz 0~5V TTL由ZYNQ J4 Pin2(T11)提供USB接口USB 3.0 Micro-B连接上位PC，供电+数据

3.2.4 Mini-Circuits微波开关（ZASWA-2-50DR+）

参数名称典型值备注类型SPDT吸收式单刀双掷，50Ω终端频率范围DC - 5GHz覆盖NV频段1.8-4GHz开关速度典型10ns（max 20ns）匹配脉冲ODMR>20ns微波脉冲隔离度>50dB(@2GHz)关断时泄漏极低插入损耗<1.5dB(@2GHz)导通路径损耗控制电压TTL Low=J1→J2, High=J1→J3由ZYNQ J4 Pin15(Y7) pulse_1驱动

3.2.5 正点原子ADDA模块（ATK-HS-ADDA / 3PA9280）

参数名称典型值备注ADC芯片AD9280（Analog Devices）8位并行，32MSPS最大采样率输入通道AD_IN（SMA）BNC-SMA转接线连接APD输出输入电压范围0~2Vp-p（可由REF调整）匹配APD输出电压摆幅采样时钟32MHz由ZYNQ J4 Pin33(W14) adc_clk提供数据接口8bit并行 + OTR超量程连接J4 Pin5-13（AD_DATA + AD_OTR）DA部分AD9708已禁用模块上DA不连接，DA_CLK/DA_DATA悬空供电5V DC由J4 Pin40供电

3.2.6 APD探测器（Thorlabs APD440A2或同级）

参数名称典型值备注波长范围400-1100nm覆盖NV荧光637-800nm带宽DC - 1MHz脉冲ODMR荧光读取~1-5μs足够增益（M因子）~10-100可调需要低噪声高压偏置电源输出方式电压输出（BNC）±5V范围，50Ω输出阻抗噪声等效功率（NEP）<0.5 pW/√Hz典型值

3.2.7 普通PC（上位机）

参数名称典型值备注操作系统Windows 10/11, Ubuntu 20.04/22.04需要USB 3.0接口和UHD驱动USB接口USB 3.0 Type-A连接B210mini（USB 3.0 Micro-B）网络接口千兆以太网连接ZYNQ-7020开发板Python版本≥3.7UHD Python API要求关键库uhd, numpy, scipy安装见requirements_pc.txt角色REST API服务器（b210_server.py）+ UHD驱动

4. 系统互联拓扑
4.1 光学路径

┌─────────┐         ┌──────────┐         ┌─────────┐
│ 532nm   │ ──CW──▶ │   AOM    │ ──调──▶ │ 二向色镜 │
│ 激光器  │         │ (声光调制)│  制光   │ (DMLP550R)
└─────────┘         └──────────┘         └────┬────┘
                                               │ 反射532nm
                                          ┌────▼────┐
                                          │  物镜    │
                                          │ 40X/0.65 │
                                          └────┬────┘
                                               │ 聚焦到NV色心
                                          ┌────▼────┐
                                          │ NV色心   │
                                          │(元素六)  │
                                          └────┬────┘
                                               │ 荧光(637-800nm)+残余532nm
                                          ┌────▼────┐
                                          │  物镜    │ 荧光原路返回
                                          └────┬────┘
                                               │
                                          ┌────▼────┐
                                          │ 二向色镜 │ 透过>650nm荧光
                                          └────┬────┘
                                               │
                                          ┌────▼────┐
                                          │650nm LP │ 滤除残余532nm
                                          │ 滤光片  │
                                          └────┬────┘
                                               │ 纯荧光
                                          ┌────▼────┐
                                          │  APD    │ 光电转换
                                          │探测器   │
                                          └────┬────┘
                                               │ 电压信号
                                          ┌────▼────┐
                                          │ 3PA9280 │ ADC采集
                                          │(AD9280) │
                                          └─────────┘

4.2 微波路径

┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│   普通PC     │     │  B210mini    │     │ 微波开关     │     │ 微波放大器   │
│              │ USB │              │ SMA │ (ZASWA-2-    │ SMA │ (ZHL-16W-    │
│ UHD +        │────▶│ TX/RX ──────▶│     50DR+) ────▶│     43-S+)    │
│ b210_server  │ 3.0 │ 2.87GHz CW   │     │ pulse_1门控  │     │ +43dBm输出   │
└──────────────┘     └──────┬───────┘     └──────┬───────┘     └──────┬───────┘
                            │                    │                    │
              ┌─────────────┘                    │                    │
              │ 10MHz REF + PPS                  │ TTL门控            │
              │ 来自ZYNQ J4 Pin1/2         ZYNQ J4 Pin15(Y7)          │
              │                            脉冲宽度20-60ns             │
              │                                                       │
              │                                              ┌────────▼───────┐
              │                                              │ 铜微波天线/    │
              │                                              │ 共面波导(CPW)  │
              │                                              │ → NV色心辐照   │
              │                                              └────────────────┘

4.3 时钟同步路径（同源时钟保证<500ps同步精度）

┌────────────────────────────────────────────────────────────┐
│  ZYNQ PL (XC7Z020)                                          │
│                                                             │
│  ┌───────────┐    ┌───────────┐    ┌───────────┐           │
│  │50MHz晶振  │───▶│  MMCM     │───▶│32MHz adc  │──▶ J4    │
│  │(U18,母钟) │    │VCO=800MHz │    │  _clk     │   Pin33  │──▶ 3PA9280 ADC
│  │           │    │           │    └───────────┘           │ 采样时钟
│  │           │    │           │    ┌───────────┐           │
│  │           │    │           │───▶│10MHz ref  │──▶ J4    │
│  │           │    │           │    │  _clk_10m │   Pin1   │──▶ B210mini REF IN
│  │           │    └───────────┘    └───────────┘    (V5)   │  (SMA同轴)
│  │           │                                              │
│  │           │    ┌───────────┐                             │
│  │           │───▶│计数器分频 │──▶ J4 Pin2(T11) ────────▶ B210mini PPS IN
│  │           │    │×50000000  │   1Hz PPS                   │  (SMA同轴)
│  │           │    └───────────┘                             │
│  └───────────┘                                              │
└────────────────────────────────────────────────────────────┘

4.4 控制信号路径

ZYNQ PL ──J4 Pin14(V6) pulse_0 ──▶ AOM驱动器 ──▶ AOM晶体（激光脉冲调制）
ZYNQ PL ──J4 Pin15(Y7) pulse_1 ──▶ Mini-Circuits微波开关（微波脉冲门控）
ZYNQ PL ──J4 Pin16(Y6) pulse_2 ──▶ 外设触发（预留：可触发示波器/计数器）
ZYNQ PL ──J4 Pin17(Y9) pulse_3 ──▶ 全局同步（预留：多板级联/外部同步）
普通PC ──以太网──▶ ZYNQ PS ──AXI-Lite──▶ ZYNQ PL（实验参数配置与流程调度）

4.5 数据流路径

APD探测器 ──BNC-SMA──▶ 3PA9280 AD_IN ──8bit并行──▶ J4 Pin5-13(AD_DATA) ──▶ PL FIFO
                                                          │
                                            J4 Pin33(W14) │ adc_clk 32MHz
                                                          ▼
                                            PL AD9280驱动 ──▶ AXI-DMA ──▶ PS DDR
                                                                              │
                                                                              ▼
                                                              PYNQ Python ──▶ ODMR谱线
                                                                              │
                                                                              ├──▶ JSON/NPZ保存
                                                                              └──▶ matplotlib绘图

5. 实验序列与信号时序
5.1 脉冲ODMR标准序列（激光极化→微波操控→荧光读取）

时序图（以Rabi振荡为例）：
                    ┌──────────┐
                    │ 初始化    │
                    │ 激光5μs  │
                    └──────────┘
                          │
                          ▼
              ┌─────────────────────┐
              │  微波π脉冲          │
              │  20-60ns            │
              │  (B210mini CW +     │
              │   微波开关门控)      │
              └─────────────────────┘
                          │
                          ▼
              ┌─────────────────────┐
              │  荧光读取           │
              │  激光重开5μs        │
              │  APD采集1-5μs       │
              └─────────────────────┘

脉冲通道分配与参数：
脉冲通道信号名称J4引脚功能描述典型参数pulse_0AOM控制Pin14 (V6)激光脉冲开关，高有效宽度5000ns，延迟0nspulse_1微波开关Pin15 (Y7)Mini-Circuits开关TTL，高=B210→天线宽度20-60ns，延迟20nspulse_2外设触发Pin16 (Y6)触发示波器/计数器，高有效宽度5000ns，延迟0nspulse_3全局同步Pin17 (Y9)板间同步/测试触发，高有效宽度5000ns，延迟0ns

5.2 六种实验序列操作流程

序列0：NV-ESR（连续波ODMR扫频）
操作步骤：

B210mini设定为CW模式，起始频率2.80GHz
ZYNQ PL输出pulse_0=1（AOM常开，激光持续极化）
B210mini以步进1MHz逐步扫描至2.95GHz
每步驻留50ms，同步采集APD荧光计数
绘制荧光-频率曲线，由荧光极小值确定共振频率
计算B₀ = (2.87GHz - f_res) / 2.8 (G)

序列1：Rabi（微波脉冲宽度扫描）

B210mini固定频率（如2.87GHz），CW模式
ZYNQ PL AOM先开后关（激光极化→暗态）
pulse_1控制微波开关：脉冲宽度从10ns扫描至100ns
每个宽度重复N次采集荧光
拟合Rabi振荡曲线，确定π脉冲宽度（首个极小值对应2×π脉冲宽度）

序列2：T1（纵向弛豫时间测量）

固定π脉冲宽度（由Rabi测量确定）
变化激光极化→微波π脉冲→延迟τ→荧光读取之间的延迟τ
τ从1μs扫描至~10ms
拟合I(τ) = I₀·exp(-τ/T₁)，提取T1

序列3：T2 Hahn-echo（横向弛豫时间测量）

微波序列：π/2 - τ - π - τ - π/2 - 读荧光
变化τ从50ns扫描至~10μs
拟合I(τ) = I₀·exp(-τ/T₂)，提取T2

序列4：XY8-N（动态解耦）

微波序列：π/2 - [τ-π-τ-π-τ-π-τ-π-τ-π-τ-π-τ-π-τ-π]×N - π/2
用于抑制退相干，延长相干时间
每周期8个π脉冲，扫描N（周期数）或τ

序列5：相关光谱（Correlation Spectroscopy）

两个独立XY8-N序列，间隔时间t_corr扫描
用于核自旋检测，消除谐波干扰

6. 软件系统架构
6.1 软件分层架构

┌─────────────────────────────────────────────────────────────┐
│  实验操作层                                                  │
│  odmr_experiment.py (PYNQ PS端主编排器)                      │
│  ├── NV-ESR 扫频  ├── Rabi 振荡  ├── T1/T2 弛豫            │
│  ├── XY8-N 解耦  └── Correlation 相关光谱                   │
└──────────┬──────────────────────┬───────────────────────────┘
           │ MMIO (AXI-Lite)       │ HTTP REST
           ▼                       ▼
┌───────────────────┐   ┌──────────────────────────┐
│  PL驱动层          │   │  微波控制层 (PC端)        │
│  pl_reg_driver.py │   │  b210_server.py :5000     │
│  (寄存器读写)      │   │  ├── b210_controller.py   │
│  基址0x43C00000   │   │  └── UHD Python API       │
└────────┬──────────┘   └──────────┬───────────────┘
         │ AXI-Lite HW              │ USB 3.0
         ▼                          ▼
┌───────────────────┐   ┌──────────────────────────┐
│  ZYNQ PL 硬件     │   │  B210mini 硬件            │
│  pulse_odmr_ip    │   │  FPGA(AD9361) + RF前端    │
└───────────────────┘   └──────────────────────────┘

6.2 代码文件清单

运行位置文件名功能描述文件路径普通PCb210_controller.pyB210mini UHD驱动核心，CW/脉冲/扫频射频控制src/python/pc/普通PCb210_server.py零依赖REST API服务器(Flask-free)，HTTP :5000监听src/python/pc/普通PCrequirements_pc.txtPC端Python依赖: uhd, numpy, scipysrc/python/pc/ZYNQ PSremote_b210.pyPYNQ端B210远程HTTP客户端，通过urllib与PC通信src/python/pynq/ZYNQ PSodmr_experiment.py主编排器：overlay加载+寄存器配置+6种ODMR序列+谱线计算src/python/pynq/

6.3 PYNQ端与PC端通信协议（REST API，JSON格式）

端点方法请求体响应体说明/statusGET-{mboard_name, tx_freq_hz, tx_gain_db, ref_locked, ...}获取B210状态/frequencyGET-{freq_hz}获取当前频率/frequencyPOST{freq_hz: 2.87e9}{freq_hz, freq_mhz}设置微波频率(1.8G-4G)/gainGET-{gain_db}获取当前增益/gainPOST{gain_db: 70.0}{gain_db}设置TX增益/tx/startPOST{}{tx_state: "continuous"}开始连续波/tx/stopPOST{}{tx_state: "stopped"}停止发射/tx/pulsedPOST{pulse_width_s, pulse_period_s, num_pulses}{tx_state: "pulsed"}脉冲调制发射/sequence/modePOST{sequence_type, freq_hz, ...}{mode, freq_hz}设置ODMR序列模式/sweep/startPOST{start_freq_hz, stop_freq_hz, step_freq_hz, dwell_time_s}{sweep_state}启动频率扫描/healthGET-{alive, uptime_s, b210_connected}健康检查/resetPOST{}{time_reset}重置设备时间

7. 物理接线汇总
7.1 光路连接

序号源端目的端连接类型/接口备注1532nm激光器输出AOM输入自由空间/光纤耦合激光先经AOM再入光路2AOM一级衍射光二向色镜反射面自由空间AOM驱动信号来自ZYNQ pulse_03二向色镜透射面物镜后孔径自由空间532nm反射至物镜4物镜NV色心金刚石自由空间激光聚焦激发NV5NV色心金刚石物镜（荧光收集）自由空间荧光原路返回6物镜二向色镜自由空间荧光（>650nm）透射通过7二向色镜透射光650nm长通滤光片自由空间截止残余532nm8滤光片透射光APD探测器光敏面自由空间/光纤耦合荧光信号→电信号

7.2 电学连接

序号源端目的端连接类型备注1ZYNQ J4 Pin1(V5) ref_clk_10mB210mini REF IN (SMA)SMA同轴电缆50Ω，10MHz参考时钟2ZYNQ J4 Pin2(T11) pps_clkB210mini PPS IN (SMA)SMA同轴电缆50Ω，1Hz秒脉冲3ZYNQ J4 Pin14(V6) pulse_0AOM驱动器TTL输入杜邦线3.3V TTL/5V需电平转换4ZYNQ J4 Pin15(Y7) pulse_1微波开关CTRL输入杜邦线3.3V TTL5ZYNQ J4 Pin33(W14) adc_clk3PA9280模块AD_CLK杜邦线32MHz采样时钟6ZYNQ J4 Pin5-12(AD_DATA[0:7])3PA9280模块AD_DATA[0:7]8路杜邦线8位并行数据7ZYNQ J4 Pin13(W6) ad_otr3PA9280模块AD_OTR杜邦线超量程指示83PA9280模块AD_INAPD探测器BNC-SMA转接线50Ω输入阻抗9B210mini TX/RX (SMA)微波开关 J1 (SMA) SMA同轴电缆50Ω，TX信号入开关10微波开关 J2 (SMA) 微波放大器输入 (SMA)SMA同轴电缆微波开关导通路径11微波放大器输出 (SMA)铜微波天线/CPW (SMA)SMA同轴电缆50Ω，高功率RF→天线12B210mini USB 3.0 Micro-B普通PC USB 3.0 Type-AUSB 3.0 Micro-B电缆供电+数据13ZYNQ 以太网口以太网交换机RJ45网线PS端网络通信14普通PC 以太网口以太网交换机RJ45网线上位机网络通信15ZYNQ 12V DC12V电源适配器专用电源适配器开发板供电163PA9280 +5VZYNQ J4 Pin40杜邦线模块供电

8. 部署与启动流程
8.1 光学平台搭建顺序

安装532nm激光器于光学平台，固定所有光学调整架
安装AOM于激光器输出端，调整一级衍射光效率最大化
安装二向色镜（DMLP550R，45°放置），确保反射532nm至物镜方向
安装物镜（40X/0.65NA），调整后焦距使光斑聚焦于样品位置
安装NV色心金刚石样品于样品架/三维纳米平移台
安装650nm长通滤光片于二向色镜透射侧
安装APD探测器于滤光片后，确保荧光光斑入射APD有效面积
粗调光路，用荧光显微镜模式确认NV荧光可被APD探测

8.2 电学设备启动顺序

连接所有SMA同轴电缆（时钟、微波、APD信号线）
连接所有杜邦线（ADC数据、控制脉冲、供电）
B210mini上电，PC启动 b210_server.py:
python b210_server.py --freq 2.87e9 --gain 70

确认B210mini REF LOCK指示灯常亮（锁定时钟）
ZYNQ-7020上电，等待PYNQ启动完成（约30秒）
PYNQ端运行主编排器:
cd /home/xilinx/pynq/overlays/pulse_odmr/
python3 odmr_experiment.py --b210-host <PC_IP> --seq nv_esr \
    --start-freq 2.80e9 --stop-freq 2.95e9

观察ODMR谱线输出，确认共振峰清晰可见

8.3 日常实验操作流程

开机：激光器预热（≥15分钟）→ B210 server启动 → ZYNQ PYNQ启动 → 光路检查
校准：运行NV-ESR扫频 → 确认共振频率 → 运行Rabi → 确定π脉冲宽度
实验：选择所需序列 → 设置参数 → 运行采集 → 保存数据 → 分析谱线
关机：停止B210发射 → 关闭激光器 → 关闭ZYNQ → 关闭B210 → 关闭PC

9. 关键参数速查表
9.1 NV色心参数

参数符号典型值NV零场分裂D2.87GHz (约1040nm对应能量)NV荧光波长范围λ_FL637-800nm (零声子线637nm)NV荧光寿命τ_FL ~12ns (室温)NV基态自旋S=1，三重态自旋极化时间~1-10ms (取决于NV浓度与激光功率)

9.2 光学参数

参数典型值激发波长532nm激发功率（样品处）~10-50mWAOM衍射效率>80% (一级衍射)二向色镜截止波长550nm滤光片截止波长650nm物镜NA0.65APD增益~50 (可调)APD带宽DC-1MHz

9.3 微波参数

参数典型值NV-ESR频率范围2.80-2.95GHz (对应磁场0-25G)π脉冲宽度20-60ns (取决于微波功率)B210输出功率+10dBm (max)放大器增益+43dB微波开关隔离度>50dB微波开关速度<10ns天线类型铜微波天线或共面波导(CPW)

9.4 数据采集参数

参数典型值ADC分辨率8位ADC采样率32MSPS荧光读取持续时间1-5μs每点平均次数>100 (信噪比优化)扫频点数50-150 (NV-ESR)Rabi扫描点数20-50T1/T2扫描点数50-100

10. 故障排查指南
10.1 光学故障

故障现象可能原因排查方法无荧光信号激光未开启/光路遮挡/APD未供电检查激光电源指示灯、APD偏置电压、光路各元件是否对准荧光极弱光路未对准/滤光片衰减过大重新优化光路耦合、检查滤光片是否损坏荧光漂移激光器功率漂移/样品位置漂移检查激光器温控稳定性、紧固样品台

10.2 电学故障

故障现象可能原因排查方法B210 REF未锁定10MHz时钟未到达/电平不匹配用示波器检查ZYNQ J4 Pin1是否有10MHz信号、幅度是否>0dBm(3.3V)无ODMR信号微波链路断开/放大器未供电逐级检查：B210输出→开关→放大器→天线，确认各器件供电微波开关不响应pulse_1信号未到达/电平不匹配检查ZYNQ J4 Pin15 TTL输出，确认Mini-Circuits控制逻辑极性ADC采集异常adc_clk 32MHz未输出/AD_DATA连接错误检查J4 Pin33时钟信号、AD_DATA8路通断

10.3 软件故障

故障现象可能原因排查方法PC端b210_server启动失败UHD未安装/B210驱动未识别检查UHD驱动安装：uhd_find_devicesB210连接失败USB电缆不匹配/USB 3.0端口不能用USB 3.0端口+USB 3.0 Micro-B电缆，避免使用USB 2.0PYNQ连接B210 server超时网络不通/防火墙阻塞ping PC IP地址，检查PC防火墙是否开放5000端口

11. 附录
11.1 术语表

术语解释ODMR光检测磁共振（Optically Detected Magnetic Resonance）NV氮空位色心（Nitrogen-Vacancy center），金刚石中的点缺陷ESR电子自旋共振（Electron Spin Resonance）NMR核磁共振（Nuclear Magnetic Resonance）AOM声光调制器（Acousto-Optic Modulator），用于激光脉冲调制APD雪崩光电二极管（Avalanche Photodiode），单光子级荧光探测器MMCM混合模式时钟管理器（Mixed-Mode Clock Manager），Xilinx 7系列时钟管理硬核AXI高级可扩展接口（Advanced eXtensible Interface），ARM AMBA总线协议DMA直接内存访问（Direct Memory Access）PYNQPython Productivity for ZYNQ，Xilinx开源框架UHDUSRP Hardware Driver，Ettus Research通用软件无线电驱动RF射频（Radio Frequency）CPW共面波导（Coplanar Waveguide），微波传输线结构SPDT单刀双掷（Single Pole Double Throw），微波开关类型

11.2 关键参考标准与协议

标准/协议名称说明bucher2019.pdfNV色心脉冲ODMR标准协议（脉冲序列、参数约定）USB 3.0B210mini与上位机通信接口标准10MHz REFB210mini外部参考时钟输入标准，正弦波0-10dBm1Hz PPS秒脉冲同步标准，TTL 0-5V50Ω阻抗所有SMA射频连接均为50Ω匹配LVCMOS33ZYNQ PL IO标准，3.3V低电压CMOSAXI4-LitePS与PL之间寄存器访问协议，32位对齐
