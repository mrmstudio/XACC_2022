
a
GRunning '/opt/Xilinx/Vitis_HLS/2021.1/bin/unwrapped/lnx64.o/vitis_hls'
*HLSZ200-10h px 
¨
For user 'centos' on host 'ip-172-31-90-216.ec2.internal' (Linux_x86_64 version 3.10.0-1160.31.1.el7.x86_64) on Mon Jan 24 11:11:49 UTC 2022
*HLSZ200-10h px 
G
-On os "CentOS Linux release 7.9.2009 (Core)"
*HLSZ200-10h px 
t
ZIn directory '/home/centos/workspace/vadd_kernels/Emulation-SW/build/krnl_vadd/krnl_vadd'
*HLSZ200-10h px 
?
$Sourcing Tcl script 'krnl_vadd.tcl'
*HLSZ200-150h px 
^
Running: %s
2001510*hls2+
open_project krnl_vadd 2default:defaultZ200-1510h px 

uCreating and opening project '/home/centos/workspace/vadd_kernels/Emulation-SW/build/krnl_vadd/krnl_vadd/krnl_vadd'.
*HLSZ200-10h px 
Y
Running: %s
2001510*hls2&
set_top krnl_vadd 2default:defaultZ200-1510h px 
À
Running: %s
2001510*hls2
xadd_files /home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp -cflags  -g -I /home/centos/workspace/vadd_kernels/src  2default:defaultZ200-1510h px 
t
ZAdding design file '/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp' to the project
*HLSZ200-10h px 
q
Running: %s
2001510*hls2>
*open_solution -flow_target vitis solution 2default:defaultZ200-1510h px 

Creating and opening solution '/home/centos/workspace/vadd_kernels/Emulation-SW/build/krnl_vadd/krnl_vadd/krnl_vadd/solution'.
*HLSZ200-10h px 
×
Using %sflow_target '%s'
2001505*hls2
 2default:default2
vitis2default:defaultZ200-1505h pxeFor help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.1;t=hls+guidance;d=200-1505.html 
°
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default26
"config_interface -m_axi_latency=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_alignment_byte_size=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_max_widen_bitwidth=5122default:defaultZ200-435h px 
®
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default24
 config_rtl -register_reset_num=32default:defaultZ200-435h px 
d
Running: %s
2001510*hls21
set_part xcvu9p-flgb2104-2-i 2default:defaultZ200-1510h px 
k
Setting target device to '%s'2001611*hls2'
xcvu9p-flgb2104-2-i2default:defaultZ200-1611h px 
x
Running: %s
2001510*hls2E
1create_clock -period 250.000000MHz -name default 2default:defaultZ200-1510h px 
L
1Setting up clock 'default' with a period of 4ns.
*SYNZ201-201h px 
b
Running: %s
2001510*hls2/
config_rtl -kernel_profile 2default:defaultZ200-1510h px 
l
Running: %s
2001510*hls29
%config_dataflow -strict_mode warning 2default:defaultZ200-1510h px 
\
Running: %s
2001510*hls2)
config_debug -enable 2default:defaultZ200-1510h px 
v
Running: %s
2001510*hls2C
/config_export -disable_deadlock_detection=true 2default:defaultZ200-1510h px 
m
Running: %s
2001510*hls2:
&config_rtl -m_axi_conservative_mode=1 2default:defaultZ200-1510h px 
þ
cThe '%s' command is deprecated and will be removed in a future release. Use %s as its replacement.
200483*hls27
#config_rtl -m_axi_conservative_mode2default:default2=
)config_interface -m_axi_conservative_mode2default:defaultZ200-483h px 
f
Running: %s
2001510*hls23
config_interface -m_axi_addr64 2default:defaultZ200-1510h px 
p
Running: %s
2001510*hls2=
)config_interface -m_axi_auto_max_ports=0 2default:defaultZ200-1510h px 
z
Running: %s
2001510*hls2G
3config_export -format ip_catalog -ipname krnl_vadd 2default:defaultZ200-1510h px 
f
Running: %s
2001510*hls23
csynth_design -synthesis_check 2default:defaultZ200-1510h px 
Ç
«Finished File checks and directory preparation: CPU user time: 0.01 seconds. CPU system time: 0.01 seconds. Elapsed time: 0 seconds; current allocated memory: 108.767 MB.
*HLSZ200-111h px 
m
SAnalyzing design file '/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp' ... 
*HLSZ200-10h px 
Ê
®Finished Source Code Analysis and Preprocessing: CPU user time: 1.25 seconds. CPU system time: 0.36 seconds. Elapsed time: 2.4 seconds; current allocated memory: 109.334 MB.
*HLSZ200-111h px 
m
/Using interface defaults for '%s' flow target.
200777*hls2
Vitis2default:defaultZ200-777h px 
Q
6Initial Interval estimation mode is set into default.
*HLSZ214-279h px 
J
/Auto array partition mode is set into default.
*HLSZ214-284h px 
É
­Finished Compiling Optimization and Transform: CPU user time: 5.06 seconds. CPU system time: 0.38 seconds. Elapsed time: 5.54 seconds; current allocated memory: 110.730 MB.
*HLSZ200-111h px 
¯
Finished Checking Pragmas: CPU user time: 0 seconds. CPU system time: 0.01 seconds. Elapsed time: 0 seconds; current allocated memory: 110.731 MB.
*HLSZ200-111h px 
x
SRunning only source code synthesis checks, skipping scheduling and RTL generation.
2001493*hlsZ200-1493h px 
¹
Finished Command csynth_design CPU user time: 6.32 seconds. CPU system time: 0.77 seconds. Elapsed time: 8.02 seconds; current allocated memory: 110.719 MB.
*HLSZ200-111h px 
6
HLS completed successfully
*HLSZ200-150h px 
ª
Total CPU user time: 7.37 seconds. Total CPU system time: 1.11 seconds. Total elapsed time: 13.25 seconds; peak allocated memory: 110.731 MB.
*HLSZ200-112h px 

Exiting %s at %s...
206*common2
	vitis_hls2default:default2,
Mon Jan 24 11:12:01 20222default:defaultZ17-206h px 


End Record