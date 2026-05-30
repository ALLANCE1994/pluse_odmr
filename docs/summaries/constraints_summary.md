# FPGA Constraints Summary

This document contains the consolidated constraints files for the pulse_odmr project.

---

## 1. Register Map (`register_map.csv`)

```csv
Address Offset,Register Name,Access,Width,Description,Default Value,Reference
0x00,CTRL_REG,R/W,32,Global Control: bit[0] System Enable, bit[1] Pulse Sequence Enable, bit[2] ADC Acquisition Enable, bit[3] AXI-DMA Upload Enable, bit[4] Sequence Start (Write 1 Auto Clear), bit[31:5] Reserved,0x00000000,-
0x04,STAT_REG,RO,32,Global Status: bit[0] System Ready, bit[1] ADC Overflow (Write 1 Clear), bit[2] FIFO Empty, bit[3] FIFO Full, bit[4] Sequence Complete, bit[31:5] Reserved,0x00000000,-
0x10,CLK_CFG_REG,R/W,32,Clock Config: bit[15:0] Reserved (10MHz controlled by MMCM), bit[31:16] PPS Divider (Default 50000000),0xC3500000,Modified
0x14,MMCM_CFG_REG,R/W,32,MMCM Parameters: bit[7:0] M=16, bit[15:8] D=1, bit[23:16] 32MHz Divider=25, bit[31:24] 10MHz Divider=80,0x50190110,ug472+context
0x18,MW_FREQ_REG,R/W,32,Microwave Frequency (Unit kHz, Range 1.8G-4G), Default 2.87GHz,0x002BCA00,bucher2019.pdf
0x1C,MW_PHASE_REG,R/W,32,Microwave Phase: bit[1:0] Phase Select, bit[31:2] Reserved,0x00000000,bucher2019.pdf
0x20,PULSE0_CFG_REG,R/W,32,Pulse 0 (AOM): bit[15:0] Width (Default 5000ns), bit[31:16] Delay (Default 0ns),0x00001388,bucher2019.pdf
0x24,PULSE1_CFG_REG,R/W,32,Pulse 1 (Microwave Switch): bit[15:0] Width (Default 40ns), bit[31:16] Delay (Default 20ns),0x00140028,bucher2019.pdf
0x28,PULSE2_CFG_REG,R/W,32,Pulse 2 (External Trigger): Same as PULSE0,0x00001388,-
0x2C,PULSE3_CFG_REG,R/W,32,Pulse 3 (Global Sync): Same as PULSE0,0x00001388,-
0x30,PULSE_SEQ_REG,R/W,32,Pulse Enable Mask: bit[3:0] for Four Pulses, 1=Enable,0x0000000F,-
0x34,SEQ_SEL_REG,R/W,32,Sequence Select: 00=NV-ESR/01=Rabi/10=T1/11=T2/100=XY8-N/101=Correlation Spectroscopy,0x00000000,bucher2019.pdf
0x38,SEQ_PARAM0_REG,R/W,32,XY8-N N Value (Default 1),0x00000001,bucher2019.pdf
0x3C,SEQ_PARAM1_REG,R/W,32,XY8-N Tau Value (Default 378ns),0x0000017A,bucher2019.pdf
0x40,SEQ_PARAM2_REG,R/W,32,Correlation Spectroscopy t_corr (Default 100us),0x000186A0,bucher2019.pdf
0x44,ADC_CFG_REG,R/W,32,ADC Config: bit[15:0] Sample Count (Default 1024), bit[23:16] Sample Clock Divider,0x00000400,-
0x48,ADC_STAT_REG,RO,32,ADC Status: bit[15:0] Sampled Count,0x00000000,-
0x60,DMA_CFG_REG,R/W,32,DMA Upload Length (Default 1024 Bytes),0x00000400,-
0x64,DMA_STAT_REG,RO,32,DMA Status: bit[0] Complete, bit[1] Error,0x00000000,-
```

---

## 2. Timing Constraints (`timing_constraints.xdc`)

```tcl
# 1. Main Clock Constraint (50MHz, Pin U18, Bank35)
create_clock -name sys_clk -period 20.000 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN U18 [get_ports sys_clk]

# 2. Derived Clock Constraints (MMCM Generated, VCO=800MHz)
create_generated_clock -name adc_clk -source [get_clocks sys_clk] -multiply_by 16 -divide_by 25 [get_ports adc_clk]  # 32MHz
create_generated_clock -name ref_clk_10m -source [get_clocks sys_clk] -multiply_by 16 -divide_by 80 [get_ports ref_clk_10m]  # 10MHz

# 3. PPS Clock Constraint (Counter Divider Generated, NOT MMCM Output)
# According to Xilinx 7 Series Clock Specification (ug472), counters-generated clocks
# should use create_clock instead of create_generated_clock
create_clock -name pps_clk -period 1000000000.000 [get_ports pps_clk]  # 1Hz
set_clock_uncertainty -setup 0.500 [get_clocks pps_clk]
set_clock_uncertainty -hold 0.500 [get_clocks pps_clk]

# 4. ADC (AD9280) Timing Constraints
set adc_period 31.250
set conv_delay_max [expr 3 * $adc_period + 25.0]
set_input_delay -clock adc_clk -max $conv_delay_max [get_ports {ad_data[7:0]}]
set_input_delay -clock adc_clk -max $conv_delay_max [get_ports ad_otr]
set_input_delay -clock adc_clk -min 10.0 [get_ports {ad_data[7:0]}]

# 5. Timing Margin Constraints
set_clock_uncertainty -setup 0.300 [get_clocks sys_clk]
set_clock_uncertainty -hold 0.150 [get_clocks sys_clk]
set_clock_uncertainty -setup 0.500 [get_clocks ref_clk_10m]
set_clock_uncertainty -hold 0.500 [get_clocks ref_clk_10m]

# 6. Pulse Width Constraint (Minimum 2ns)
set_property MIN_PULSE_WIDTH 2ns [get_ports {pulse_0 pulse_1 pulse_2 pulse_3}]

# 7. Cross-Clock Domain False Path
set_false_path -from [get_clocks sys_clk] -to [get_clocks pps_clk]
```

---

## 3. Pin Assignments (`pin_assignments.xdc`)

```tcl
# Global IO Standard
set_property IOSTANDARD LVCMOS33 [get_ports *]

# Main Clock Pin
set_property PACKAGE_PIN U18 [get_ports sys_clk]

# J3 Expansion Port Pins
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

# J4 Expansion Port Pins
set_property PACKAGE_PIN V5 [get_ports ref_clk_10m]
set_property PACKAGE_PIN T11 [get_ports pps_clk]
set_property PACKAGE_PIN U5 [get_ports mw_i]
set_property PACKAGE_PIN T5 [get_ports mw_q]
set_property PACKAGE_PIN W8 [get_ports ad_data[5]]
set_property PACKAGE_PIN U7 [get_ports ad_data[6]]
set_property PACKAGE_PIN V7 [get_ports ad_data[7]]
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

# Disable DA Section
set_property DONT_TOUCH true [get_ports {da_clk da_data[7:0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da_clk da_data[7:0]}]
```

---

*Generated: 2026-05-29*
