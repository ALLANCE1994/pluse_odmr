# 项目文件清单

## 根目录
- `README.md` - 项目概述与使用说明
- `.gitignore` - Git忽略规则
- `trae.config.json` - Trae配置文件
- `requirements.txt` - Python依赖清单

## src目录
### src/rtl
- *待添加* - RTL源代码

### src/bd
- *待添加* - Block Design文件

### src/constraints
- `device_constraints.xdc` - 器件约束（Bank电压、IO标准）
- `odmr_system.xdc` - 系统约束（时钟、复位、信号约束）

### src/python
- `odmr_controller.py` - PYNQ控制模块

## sim目录
- *待添加* - 仿真文件

## docs目录
- *待添加* - 文档

## scripts目录
- `create_project.tcl` - Vivado项目创建脚本
- `create_venv.py` - 虚拟环境创建脚本
- `generate_bitstream.tcl` - 比特流生成脚本
- `install_requirements.py` - 依赖安装脚本
- `setup_pynq_env.py` - PYNQ环境配置脚本
- `test_pynq.py` - PYNQ测试脚本
- `validate_python_env.py` - Python环境验证脚本
- `validate_vivado_env.py` - Vivado环境验证脚本
- `create_odmr_project.tcl` - ODMR项目创建脚本
- `create_odmr_bd.tcl` - Block Design创建脚本
- `create_odmr_system.tcl` - ODMR系统完整创建脚本
- `configure_zynq_ps.tcl` - ZYNQ PS配置脚本

## vivado目录
- `odmr_system/` - Vivado项目目录