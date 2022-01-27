catch {::common::set_param -quiet hls.xocc.mode csynth};
# 
# HLS run script generated by v++ compiler
# 

open_project krnl_vadd
set_top krnl_vadd
# v++ -g, -D, -I, --advanced.prop kernel.krnl_vadd.kernel_flags
add_files "/home/centos/workspace/wide_vadd_kernels/src/krnl_vadd.cpp" -cflags " -g -I /home/centos/workspace/wide_vadd_kernels/src "
open_solution -flow_target vitis solution
set_part xcvu9p-flgb2104-2-i
create_clock -period 250.000000MHz -name default
# v++ -g or --profile_kernel stall
config_rtl -kernel_profile
# v++ --advanced.param compiler.hlsDataflowStrictMode
config_dataflow -strict_mode warning
# v++ -g
config_debug -enable
# v++ --advanced.param compiler.deadlockDetection
config_export -disable_deadlock_detection=true
# v++ --advanced.param compiler.axiDeadLockFree
config_rtl -m_axi_conservative_mode=1
config_interface -m_axi_addr64
# v++ --hls.max_memory_ports
config_interface -m_axi_auto_max_ports=0
config_export -format ip_catalog -ipname krnl_vadd
csynth_design
export_design
close_project
puts "HLS completed successfully"
exit
