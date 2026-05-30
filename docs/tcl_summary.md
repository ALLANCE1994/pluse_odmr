为了严格遵循阶段3（子系统集成+验证）的标准流程，并完成你交付物清单中的脚本要求，我为你生成了全套自动化Tcl脚本。这些脚本覆盖了从工程重建、BD集成、仿真、综合实现到门禁检查的完整环节。

脚本1：工程初始化与约束加载 (setup_project.tcl)
用于在Vivado中创建工程、添加阶段2的RTL源文件和阶段1的约束文件。
# setup_project.tcl
# 工程路径与名称设置
set proj_name "pulse_odmr"
set proj_dir "C:/Users/user/Desktop/desktop_project/pulse_odmr"

# 创建工程（如果已存在则先删除）
if {[file exists "$proj_dir/$proj_name"]} {
    file delete -force "$proj_dir/$proj_name"
}
create_project $proj_name $proj_dir -part xc7z020clg400-2 -force

# 添加RTL源文件 (假设阶段2代码在 src/ 目录下)
add_files [glob ./src/*.v]

# 添加约束文件 (阶段1输出的约束)
add_files -fileset constrs_1 [glob ./constraints/*.xdc]

# 设置顶层模块 (阶段2的顶层，后续生成Wrapper后会更改)
set_property top pulse_odmr_top [current_fileset]

# 更新编译顺序
update_compile_order -fileset sources_1

puts "工程初始化与源文件添加完成！"

脚本2：BD构建与AXI集成 (create_system_bd.tcl)
这是阶段3的核心脚本，用于创建Block Design、添加PS和自定义IP、配置0x43C00000地址映射。
# create_system_bd.tcl
# 创建Block Design
create_bd_design "system"

# 添加 ZYNQ7 PS IP
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0

# 应用ZYNQ预设配置，并开启FCLK_CLK0 (50MHz) 和 Fabric Interrupt
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" } [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_IRQ_F2P_INTR {1}] [get_bd_cells processing_system7_0]

# 添加自定义IP (确保已在IP Catalog中打包为 pulse_odmr_ip_v1.0)
create_bd_cell -type ip -vlnv user.org:user:pulse_odmr_ip:1.0 pulse_odmr_ip_0

# 添加 AXI Interconnect
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
set_property -dict [list CONFIG.NUM_MI {2}] [get_bd_cells axi_interconnect_0]

# 添加 AXI DMA (仅开启S2MM用于AD数据上传)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
set_property -dict [list CONFIG.c_include_mm2s {0} CONFIG.c_include_s2mm {1} CONFIG.c_s2mm_burst_len {16}] [get_bd_cells axi_dma_0]

# 连接AXI总线：PS M_AXI_GP0 -> Interconnect -> 自定义IP & DMA Lite
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins pulse_odmr_ip_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins axi_dma_0/S_AXI_LITE]

# 连接AXI总线：DMA M_AXI_S2MM -> PS S_AXI_HP0 (高速DDR通路)
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

# 连接中断：DMA s2mm_introut -> PS IRQ_F2P
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
set_property -dict [list CONFIG.NUM_PORTS {1}] [get_bd_cells xlconcat_0]
connect_bd_net [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In0]
connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins processing_system7_0/IRQ_F2P]

# 使用自动化连线工具连接时钟和复位（简化手动连线）
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {/processing_system7_0/FCLK_CLK0 (50 MHz)} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {Auto} ddr_seg {Auto} intc_ip {Auto} }  [get_bd_intf_pins axi_interconnect_0/M00_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {/processing_system7_0/FCLK_CLK0 (50 MHz)} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {Auto} ddr_seg {Auto} intc_ip {Auto} }  [get_bd_intf_pins axi_interconnect_0/M01_AXI]

# ★ 关键：手动分配地址，严格匹配 context_002.md 规范
# 将 pulse_odmr_ip 分配到 0x43C00000 (64K范围)
assign_bd_address [get_bd_addr_segs {pulse_odmr_ip_0/S00_AXI/reg0 }] -target_address_space [get_bd_addr_spaces processing_system7_0/Data] -offset 0x43C00000 -range 0x00010000
# 将 DMA 分配到紧随其后的地址
assign_bd_address [get_bd_addr_segs {axi_dma_0/S_AXI_LITE/Reg }] -target_address_space [get_bd_addr_spaces processing_system7_0/Data] -offset 0x43C10000

# 将自定义IP的PL外部端口引出
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pulse_0]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pulse_1]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pulse_2]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pulse_3]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/ad_data]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/ad_otr]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/adc_clk]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/ref_clk_10m]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/pps_clk]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/mw_i]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/mw_q]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/da_clk]
make_bd_pins_external [get_bd_pins pulse_odmr_ip_0/da_data]

# 验证设计
validate_bd_design
save_bd_design

puts "Block Design 创建与AXI集成完成！"

脚本3：生成输出产品与HDL Wrapper (generate_outputs.tcl)
执行BD的综合前准备，生成PS仿真模型与顶层Wrapper。
# generate_outputs.tcl
# 打开已创建的Block Design
open_bd_design [get_files system.bd]

# 生成输出产品，包含仿真用的HDL文件 (Out-of-context per IP)
generate_target all [get_files system.bd] -force
export_ip_user_files -of_objects [get_files system.bd] -no_script -sync -force -quiet
create_ip_run [get_files system.bd]

# 生成仿真模型文件 (用于后续的行为级仿真)
export_simulation -of_objects [get_files system.bd] -directory ./ip_user_files/sim_scripts -ip_user_files_dir ./ip_user_files -ipstatic_source_dir ./ip_user_files/ipstatic -lib_map_path [list {modelsim=./questa_fdo_lib}] -use_ip_compiled_libs -force -quiet

# 创建HDL Wrapper，并让Vivado自动管理
make_wrapper -files [get_files system.bd] -top -import
set_property top system_wrapper [current_fileset]
update_compile_order -fileset sources_1

puts "输出产品生成与HDL Wrapper创建完成！"

脚本4：子系统级行为仿真 (run_subsystem_sim.tcl)
启动Vivado自带XSIM，运行子系统级仿真（需要你提前在GUI中通过 Tools -> Generate Testbench 生成或自行编写 pulse_odmr_subsystem_tb.v 并设为顶层）。
# run_subsystem_sim.tcl
# 确保仿真文件存在
if {[llength [get_files *subsystem_tb.v]] == 0} {
    puts "错误：未找到子系统Testbench文件 (pulse_odmr_subsystem_tb.v)，请先添加并设为顶层！"
} else {
    # 设置仿真顶层模块
    set_property top pulse_odmr_subsystem_tb [get_filesets sim_1]
    update_compile_order -fileset sim_1

    # 启动行为仿真
    launch_simulation

    # 运行仿真 10 微秒 (可根据你的脉冲序列长度调整)
    run 10 us

    # 注意：此处脚本仅启动并运行，请手动查看波形验证AXI配置和脉冲输出
    # 如需自动化检查，需在TB中使用 $display("PASS") 和 $finish
}

脚本5：综合、实现与Bitstream生成 (run_impl.tcl)
在仿真验证无误后，执行完整的编译流程。
# run_impl.tcl
# 重置之前的运行结果（如果有）
reset_run synth_1

# 启动综合，启用4线程加速
launch_runs synth_1 -jobs 4
wait_on_run synth_1

# 检查综合是否成功
if {[get_property STATUS [get_runs synth_1]] != "synth_design Complete!"} {
    puts "综合失败，请检查日志！"
    exit 1
}

# 启动实现（包含Bitstream生成）
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

# 检查实现是否成功
if {[get_property STATUS [get_runs impl_1]] != "write_bitstream Complete!"} {
    puts "实现或比特流生成失败，请检查日志！"
    exit 1
}

puts "综合、实现与Bitstream生成全部完成！"

# 导出硬件 (包含Bitstream，用于Vitis软件开发)
write_hw_platform -fixed -include_bit -force ./system_wrapper.xsa
puts "已导出硬件文件：system_wrapper.xsa"

脚本6：阶段3门禁强制检查 (run_all_phase3_checks.tcl)
提取阶段3必须检查的关键指标：时序、资源、电压域/DRC。
# run_all_phase3_checks.tcl
puts "========== 开始执行 阶段3 门禁强制检查 =========="

# 1. 检查时序违规 (必须在 impl_1 完成后运行)
puts "\n>>> 检查项3：时序违规"
set wns [get_property STATS.WNS [get_runs impl_1]]
set whs [get_property STATS.WHS [get_runs impl_1]]
if {$wns < 0 || $whs < 0} {
    puts "❌ 时序未通过：WNS = $wns, WHS = $whs"
} else {
    puts "✅ 时序通过：WNS = $wns, WHS = $whs"
}

# 2. 检查资源占用
puts "\n>>> 检查项4：资源占用"
set util_rpt [report_utilization -return_string]
puts $util_rpt

# 3. 检查DRC (包含电压域冲突检查)
puts "\n>>> 检查项2：电压域冲突 / 检查项1：引脚分配合规性"
set drc_rpt [report_drc -return_string]
if {[string match "*0 VIOLATIONS*" $drc_rpt]} {
    puts "✅ DRC检查通过，无电压域冲突及严重违例"
} else {
    puts "❌ 存在DRC违例，请检查报告：\n$drc_rpt"
}

puts "\n========== 门禁检查执行完毕 =========="

⚠️ 执行顺序与重要提醒

前提条件：

你必须已经使用 Vivado GUI 的 Tools -> Create and Package IP 将阶段2的RTL封装为 pulse_odmr_ip_v1.0，否则脚本2无法找到该IP。
脚本2生成的BD极度依赖Vivado的自动连线引擎，如果报错，建议在GUI中打开 system.bd，点击顶部的刷新/自动连线按钮补全剩余信号。

推荐的控制台执行顺序：
# 第一步：建立工程底座
source setup_project.tcl

# 第二步：构建BD与AXI系统
source create_system_bd.tcl

# 第三步：生成仿真模型与Wrapper
source generate_outputs.tcl

# 此时，请前往Vivado GUI，利用 Tools -> Generate Testbench 生成子系统TB，并编写测试激励

# 第四步：运行子系统仿真
source run_subsystem_sim.tcl

# 第五步：仿真通过后，执行综合实现
source run_impl.tcl

# 第六步：实现完成后，提取门禁报告
source run_all_phase3_checks.tcl

关于仿真TB：脚本4仅启动仿真，真正的验证效力取决于你的 pulse_odmr_subsystem_tb.v 写得是否完善。一定要在TB中模拟PS端向 0x43C00000 写入寄存器，并监视PL端的脉冲输出是否翻转。

