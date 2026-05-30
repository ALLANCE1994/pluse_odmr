# ZYNQ7020 脉冲ODMR工程

基于Xilinx ZYNQ-7020的脉冲ODMR（Optically Detected Magnetic Resonance）实验平台。

## 项目结构

```
├── src/
│   ├── rtl/          # RTL源代码
│   ├── bd/           # Block Design文件
│   ├── constraints/  # 约束文件
│   └── python/       # Python代码
├── sim/              # 仿真文件
├── docs/             # 文档
├── scripts/          # 脚本文件
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