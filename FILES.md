# 项目文件清单

## 硬件设计 hardware/

### PL FPGA子系统 hardware/pl/
```
hardware/pl/
├── clock/clk_gen.v            # 时钟管理模块 (50MHz→32MHz/10MHz/1Hz PPS)
├── bus/axi_lite_slave.v       # AXI4-Lite 从机模块 (19个寄存器)
├── pulse/pulse_gen.v           # 四路可编程脉冲生成模块
├── phase/mw_phase_gen.v        # 微波IQ相位控制模块
├── adc/ad9280_driver.v         # AD9280 ADC驱动模块
└── top/
    ├── pulse_odmr_ip.v         # IP顶层封装
    └── pulse_odmr_top.v        # 系统顶层模块
```

### 约束文件 hardware/constraints/
```
hardware/constraints/
├── pin_assignments.xdc         # 引脚分配约束
├── timing_constraints.xdc      # 时序约束
└── register_map.csv            # 寄存器映射表
```

## 仿真 simulation/
```
simulation/
├── testbenches/
│   ├── clk_gen_tb.v                  # 时钟管理模块仿真
│   ├── axi_lite_slave_tb.v           # AXI-Lite从机仿真
│   ├── pulse_gen_tb.v                # 脉冲生成模块仿真
│   ├── mw_phase_gen_tb.v             # 微波相位模块仿真
│   ├── ad9280_driver_tb.v            # ADC驱动模块仿真
│   ├── pulse_odmr_subsystem_tb.v     # 子系统集成仿真
│   └── pulse_odmr_top_tb.v           # 顶层系统仿真
└── scripts/
    ├── run_all_sim.tcl               # 自动化仿真脚本
    ├── run_simulation.bat            # 仿真批处理
    ├── run_static_verify.tcl         # 静态验证脚本
    └── run_static_verify.bat         # 静态验证批处理
```

## 软件代码 software/

### PYNQ PS端 software/pynq/ (运行在 ZYNQ-7020)
```
software/pynq/
├── odmr_experiment.py          # 实验流程主编排器 (6种ODMR序列)
├── remote_b210.py              # B210mini 远程HTTP客户端
└── odmr_controller.py          # ODMR控制器 (初始版本)
```

### 上位机PC端 software/pc/ (运行在普通PC)
```
software/pc/
├── b210_controller.py          # B210mini UHD驱动核心
├── b210_server.py              # REST API服务器 (Flask-free, :5000)
└── requirements_pc.txt         # PC端Python依赖
```

## 自动化脚本 scripts/

### Vivado流程 scripts/vivado/
```
scripts/vivado/
├── step1_ip_package.tcl        # IP打包
├── step2_setup_project.tcl     # Vivado工程创建
├── step3_create_system_bd.tcl  # Block Design构建
├── step4_generate_outputs.tcl  # 输出生成 (bit/hwh)
├── step5_run_subsystem_sim.tcl # 子系统仿真
├── step6_run_impl.tcl          # 综合+实现
└── step7_run_phase3_checks.tcl # 阶段3门禁检查
```

### 环境配置 scripts/env/
```
scripts/env/
├── create_venv.py              # 虚拟环境创建
├── install_requirements.py     # 依赖安装
├── setup_pynq_env.py           # PYNQ环境配置
├── validate_python_env.py      # Python环境验证
└── validate_vivado_env.py      # Vivado环境验证
```

### 工具脚本 scripts/utils/
```
scripts/utils/
├── kill_vivado.ps1             # Vivado进程强制终止
├── run_vivado_flow.ps1         # 全流程自动运行
├── test_pynq.py                # PYNQ测试脚本
└── step1.md                    # 流程说明
```

## Vivado工程 vivado/
```
vivado/
├── project/                    # Vivado项目目录
├── ip_package/pulse_odmr_ip/   # IP封装输出
├── temp_pkg/                   # 临时打包工程
└── logs/                       # 流程日志
```

## 文档 docs/
```
docs/
├── specs/
│   ├── NV色心脉冲ODMR检测系统需求规格书.md     # 工程需求规格书
│   └── NV色心脉冲ODMR实验系统完整框架.md       # 实验系统框架文档
├── summaries/
│   ├── PYNQ_summary.md          # PYNQ环境部署说明
│   ├── RTL_summary.md           # RTL代码总结
│   ├── SIM_summary.md           # 仿真验证总结
│   ├── constraints_summary.md   # 约束文件总结
│   └── bugfix_kb.md             # Bug修复知识库
├── reports/
│   └── gate1_report.md          # 阶段1门禁验证报告
└── context/
    ├── context_000.md           # 工程上下文 (阶段0)
    ├── context_001.md           # 工程上下文 (阶段1)
    ├── context_002.md           # 工程上下文 (阶段1门禁通过)
    └── context_003.md           # 工程上下文 (阶段2进行中)
```

## 外部参考 reference/
```
reference/
├── hs_ad_da/                    # 正点原子高速ADDA参考设计 (Quartus)
├── NA/                          # PS配置参考
└── J3_J4扩展口引脚定义对照表.md # 引脚定义对照表
```

## 根目录文件
```
.gitignore                       # Git忽略规则
README.md                        # 项目概述
FILES.md                         # 本文件
```
