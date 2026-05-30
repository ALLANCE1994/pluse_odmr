# ZYNQ7020 脉冲ODMR工程

基于Xilinx ZYNQ-7020的脉冲ODMR（Optically Detected Magnetic Resonance）实验平台。

## 项目结构

```
├── hardware/               # 硬件设计
│   ├── pl/                 #   PL RTL 源码（按子系统组织）
│   │   ├── adc/            #     ADC驱动 (ad9280_driver.v)
│   │   ├── bus/            #     AXI-Lite 从机 (axi_lite_slave.v)
│   │   ├── clock/          #     时钟生成 (clk_gen.v)
│   │   ├── phase/          #     微波相位生成 (mw_phase_gen.v)
│   │   ├── pulse/          #     脉冲序列生成 (pulse_gen.v)
│   │   └── top/            #     顶层集成 (pulse_odmr_ip.v / pulse_odmr_top.v)
│   └── constraints/        #   约束文件 (XDC)
├── simulation/             # 仿真
│   ├── testbenches/        #   Testbench (7个模块)
│   └── scripts/            #   仿真自动化脚本
├── software/               # 软件代码
│   ├── pynq/               #   PYNQ端（PL驱动 + 实验编排 + Overlay）
│   └── pc/                 #   上位机（B210微波源REST服务）
├── scripts/                # 自动化脚本
│   ├── vivado/             #   Vivado TCL 流程脚本 (step1~step7)
│   ├── utils/              #   工具脚本（PowerShell 流程调度）
│   └── env/                #   环境配置脚本
├── vivado/                 # Vivado 工程输出（自动生成）
│   ├── project/            #   Vivado 工程 (.xpr)
│   ├── ip_package/         #   自定义IP打包输出
│   ├── logs/               #   流程日志
│   └── reports/            #   流程报告
├── docs/                   # 文档
│   ├── specs/              #   需求规格与系统框架
│   ├── summaries/          #   设计总结
│   ├── reports/            #   Gate检查报告
│   └── context/            #   上下文记录
├── reference/              # 外部参考资料
├── FILES.md                # 文件清单
└── README.md
```

## 设备信息

- **FPGA型号**: XC7Z020-CLG400-2
- **工具链**: Vivado 2020.2 + PYNQ v2.7

## 快速开始

1. 使用Vivado打开项目
2. 运行综合和实现
3. 生成比特流并下载到开发板

## License

MIT License