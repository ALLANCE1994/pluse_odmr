# 设定项目根路径、IP相关参数
set proj_root [file normalize [file dirname [info script]]/..]
set ip_name    "pulse_odmr_ip"
set ip_vendor  "odmr.lab"
set ip_library "user"
set ip_version "1.0"
set rtl_dir    [file join $proj_root "src" "rtl"]
set ip_out_dir [file join $proj_root "vivado" "ip_package"]

# 定义RTL文件列表（确保路径拼接无语法错误）
set rtl_files [list \
    [file join $rtl_dir "axi_lite_slave.v"] \
    [file join $rtl_dir "clk_gen.v"] \
    [file join $rtl_dir "pulse_gen.v"] \
    [file join $rtl_dir "mw_phase_gen.v"] \
    [file join $rtl_dir "ad9280_driver.v"] \
    [file join $rtl_dir "pulse_odmr_ip.v"] \
]

# 删除临时打包目录（强制删除，路径拼接无歧义）
file delete -force [file join $proj_root "vivado" "temp_pkg"]

# 创建临时项目（指定器件型号，强制覆盖）
create_project pulse_odmr_ip_pkg [file join $proj_root "vivado" "temp_pkg"] -part xc7z020clg400-2 -force
set_property target_language Verilog [current_project]
# 重置项目状态（避免残留配置导致语法/逻辑错误）
reset_project

# 添加RTL文件到项目
foreach f $rtl_files {
    add_files -norecurse $f
}
# 设置顶层模块（关联IP名称）
set_property top $ip_name [current_fileset]
# 更新编译顺序（确保文件依赖正确）
update_compile_order -fileset sources_1

# 创建IP输出目录（确保目录存在）
file mkdir $ip_out_dir

# IP打包核心命令（修正参数换行格式，确保反斜杠后无多余空格）
ipx::package_project \
    -root_dir     [file join $ip_out_dir $ip_name] \
    -vendor       $ip_vendor \
    -library      $ip_library \
    -taxonomy     /userIP \
    -import_files \
    -force

# 获取当前IP Core句柄（确保后续操作关联正确Core）
set core [ipx::current_core]
# 设置IP显示名称、描述、版本（字符串加引号，避免TCL解析歧义）
set_property display_name "Pulse ODMR AXI4-Lite IP" $core
set_property description  "NV center pulse ODMR detection system" $core
set_property version      $ip_version $core

# 添加AXI4-Lite从机接口（修正总线接口属性设置语法）
set axi_if [ipx::add_bus_interface S_AXI $core]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 $axi_if
set_property bus_type_vlnv        xilinx.com:interface:aximm:1.0      $axi_if
set_property interface_mode       slave                                $axi_if

# 映射AXI总线逻辑端口到物理端口（循环无语法错误，端口映射参数正确）
foreach {logical physical} {
    AWADDR   s_axi_awaddr
    AWVALID  s_axi_awvalid
    AWREADY  s_axi_awready
    WDATA    s_axi_wdata
    WSTRB    s_axi_wstrb
    WVALID   s_axi_wvalid
    WREADY   s_axi_wready
    BRESP    s_axi_bresp
    BVALID   s_axi_bvalid
    BREADY   s_axi_bready
    ARADDR   s_axi_araddr
    ARVALID  s_axi_arvalid
    ARREADY  s_axi_arready
    RDATA    s_axi_rdata
    RRESP    s_axi_rresp
    RVALID   s_axi_rvalid
    RREADY   s_axi_rready
} {
    set pm [ipx::add_port_map $logical $axi_if]
    set_property physical_name $physical $pm
}

# 添加AXI内存映射（修正内存映射关联语法）
set mem_map [ipx::add_memory_map S_AXI $core]
set_property slave_memory_map_ref S_AXI $axi_if $mem_map

# 添加地址块（修正属性值引号，避免TCL解析错误）
set addr_block [ipx::add_address_block reg0 $mem_map]
set_property base_address 0x00000000 $addr_block
set_property range          65536    $addr_block
set_property width             32    $addr_block
set_property usage        "register" $addr_block  # 关键修改：字符串加引号

# 关联AXI接口与时钟（修正总线接口-时钟关联语法）
ipx::associate_bus_interfaces -busif S_AXI -clock s_axi_aclk $core

# 生成IP GUI文件、更新校验和、保存Core（确保IP文件完整性）
ipx::create_xgui_files $core
ipx::update_checksums   $core
ipx::save_core          $core

# 关闭临时项目（避免资源占用）
close_project

puts "step1_ip_package.tcl done"