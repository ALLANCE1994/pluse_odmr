PYNQ环境部署说明
PYNQ环境部署分为基础PYNQ系统环境部署（开发板底层系统）和pulse_odmr项目部署（用户业务代码）两部分，所需文件/代码严格遵循知识库规范与上下文开发要求（无中文注释、符合PYNQ 2.7 API规范）。

一、基础PYNQ系统环境（无需用户编码）
使用正点原子官方提供的ZYNQ-7020 PYNQ 2.7.0镜像，已预装Ubuntu、Python、Jupyter、PYNQ库及常用科学计算库，无需用户编写代码。
1. 所需文件

镜像压缩包：ZYNQ-7020-2.7.0.zip（路径：领航者资料盘A盘\4_SourceCode\5_PYNQ_Design\IMG\）
烧录工具：imageUSB.exe（路径：资料盘A盘\6_常用软件\imageUSB\）
硬件：≥8GB且≤32GB的Micro SD卡、领航者ZYNQ-7020开发板

2. 部署步骤（简化自知识库第二章）

解压ZYNQ-7020-2.7.0.zip得到ZYNQ-7020-2.7.0.img
用imageUSB将img文件烧录到Micro SD卡
开发板设置SD启动模式，插入SD卡、连接网线/串口，上电启动
浏览器访问http://pynq:9090或开发板IP:9090，进入Jupyter Notebook即完成基础环境部署

二、pulse_odmr项目部署所需文件/代码
严格遵循知识库1.4节Overlay规范（bitstream、hwh、Python API三者缺一不可），结合上下文交付物清单，所需文件如下：
分类文件名说明来源硬件Overlay文件（必须同名，放在/home/xilinx/pynq/overlays/pulse_odmr/目录下）pulse_odmr.bit比特流文件Vivado step6流程生成的system.bit重命名pulse_odmr.hwh硬件描述文件Vivado工程路径pulse_odmr.srcs/sources_1/bd/system/hw_handoff/system.hwh重命名Python驱动代码（同一目录下）pulse_odmr_ip.py自定义AXI-Lite IP驱动，封装寄存器操作用户编写（下文生成）pl_reg_driver.pyPS端寄存器通用读写工具上下文阶段2交付物ad_collect.pyAD9280数据采集代码，基于PYNQ DMA类 用户编写（下文生成）odmr_spectrum.pyODMR谱线计算与绘制代码上下文阶段2交付物测试验证代码test_pulse_odmr.ipynbJupyter Notebook测试脚本用户编写（下文生成）

三、核心代码生成（符合开发要求：无中文注释，兼容PYNQ 2.7）
1. 自定义IP驱动 pulse_odmr_ip.py
封装AXI-Lite寄存器操作，绑定上下文寄存器映射表：
from pynq.lib import DefaultIP

class PulseOdmrIP(DefaultIP):
    def __init__(self, description):
        super().__init__(description=description)
    
    # Register access methods
    def read_ctrl_reg(self):
        return self.read(0x00)
    
    def write_ctrl_reg(self, val):
        self.write(0x00, val)
    
    def read_stat_reg(self):
        return self.read(0x04)
    
    def write_mw_freq_reg(self, val):
        self.write(0x18, val)
    
    def write_pulse0_cfg(self, val):
        self.write(0x20, val)
    
    def write_pulse1_cfg(self, val):
        self.write(0x24, val)
    
    def write_pulse2_cfg(self, val):
        self.write(0x28, val)
    
    def write_pulse3_cfg(self, val):
        self.write(0x2C, val)
    
    def write_seq_sel_reg(self, val):
        self.write(0x34, val)
    
    def read_adc_stat_reg(self):
        return self.read(0x48)
    
    def write_dma_cfg_reg(self, val):
        self.write(0x60, val)

# Register custom IP driver to PYNQ Overlay
from pynq import Overlay
Overlay.register_custom_overlay("pulse_odmr", PulseOdmrIP)

2. AD采集代码 ad_collect.py
基于PYNQ DMA类实现AD9280数据读取，符合知识库第八章DMA规范：
import numpy as np
from pynq import Overlay, allocate
from pynq.lib import DMA

class ADCollector:
    def __init__(self, overlay_path="/home/xilinx/pynq/overlays/pulse_odmr/pulse_odmr.bit"):
        self.ol = Overlay(overlay_path)
        self.dma = self.ol.axi_dma_0  # Match DMA IP name in Vivado design
        adc_cfg = self.ol.pulse_odmr_ip_0.read(0x44)
        self.sample_points = adc_cfg & 0xFFFF  # Lower 16 bits: sample point count
    
    def collect(self):
        # Allocate DMA buffer
        input_buf = allocate(shape=(self.sample_points,), dtype=np.uint8)
        output_buf = allocate(shape=(self.sample_points,), dtype=np.uint8)
        
        # Enable ADC and DMA upload: CTRL_REG bit2=1, bit3=1
        ctrl_val = self.ol.pulse_odmr_ip_0.read(0x00)
        ctrl_val |= (1 << 2) | (1 << 3)
        self.ol.pulse_odmr_ip_0.write(0x00, ctrl_val)
        
        # Start sequence: CTRL_REG bit4=1
        ctrl_val |= (1 << 4)
        self.ol.pulse_odmr_ip_0.write(0x00, ctrl_val)
        
        # Wait for DMA transfer complete
        self.dma.recvchannel.transfer(output_buf)
        self.dma.recvchannel.wait()
        
        # Copy data and free buffer
        ad_data = np.copy(output_buf)
        del input_buf, output_buf
        return ad_data

3. 测试Notebook test_pulse_odmr.ipynb（核心Cell）
# Cell 1: Load overlay and check status
from pynq import Overlay
ol = Overlay("/home/xilinx/pynq/overlays/pulse_odmr/pulse_odmr.bit")
print("Overlay loaded:", ol.is_loaded())
print("IP list:", list(ol.ip_dict.keys()))

# Cell 2: Test register read/write
default_mw_freq = ol.pulse_odmr_ip_0.read(0x18)
print("Default MW_FREQ_REG:", hex(default_mw_freq))

# Write 2.87GHz (0x002BCA00) to MW_FREQ_REG
ol.pulse_odmr_ip_0.write(0x18, 0x002BCA00)
print("MW_FREQ_REG after write:", hex(ol.pulse_odmr_ip_0.read(0x18)))

# Cell 3: Test pulse output (check J4 Pin14 with oscilloscope)
# CTRL_REG: bit0=1(system enable), bit1=1(pulse enable), bit4=1(sequence start)
ol.pulse_odmr_ip_0.write(0x00, 0x13)
print("Pulse test started, check pulse_0 on J4 Pin14")

# Cell 4: Test AD collection
from ad_collect import ADCollector
collector = ADCollector()
ad_data = collector.collect()
print("Collected data length:", len(ad_data))
print("First 10 samples:", ad_data[:10])

四、部署验证步骤（来自上下文阶段4计划）

将pulse_odmr.bit、pulse_odmr.hwh、pulse_odmr_ip.py、ad_collect.py、test_pulse_odmr.ipynb复制到开发板/home/xilinx/pynq/overlays/pulse_odmr/目录
打开Jupyter Notebook，运行test_pulse_odmr.ipynb所有Cell
示波器检测J4 Pin14/15/16/17脉冲输出，验证时序符合配置
运行ODMR测试序列，生成谱线完成部署
