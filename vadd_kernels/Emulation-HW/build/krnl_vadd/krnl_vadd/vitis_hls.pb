
a
GRunning '/opt/Xilinx/Vitis_HLS/2021.1/bin/unwrapped/lnx64.o/vitis_hls'
*HLSZ200-10h px 
¨
For user 'centos' on host 'ip-172-31-90-216.ec2.internal' (Linux_x86_64 version 3.10.0-1160.31.1.el7.x86_64) on Mon Jan 24 11:45:11 UTC 2022
*HLSZ200-10h px 
G
-On os "CentOS Linux release 7.9.2009 (Core)"
*HLSZ200-10h px 
t
ZIn directory '/home/centos/workspace/vadd_kernels/Emulation-HW/build/krnl_vadd/krnl_vadd'
*HLSZ200-10h px 
?
$Sourcing Tcl script 'krnl_vadd.tcl'
*HLSZ200-150h px 
^
Running: %s
2001510*hls2+
open_project krnl_vadd 2default:defaultZ200-1510h px 

uCreating and opening project '/home/centos/workspace/vadd_kernels/Emulation-HW/build/krnl_vadd/krnl_vadd/krnl_vadd'.
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
Creating and opening solution '/home/centos/workspace/vadd_kernels/Emulation-HW/build/krnl_vadd/krnl_vadd/krnl_vadd/solution'.
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
U
Running: %s
2001510*hls2"
csynth_design 2default:defaultZ200-1510h px 
Ç
«Finished File checks and directory preparation: CPU user time: 0.01 seconds. CPU system time: 0 seconds. Elapsed time: 0.01 seconds; current allocated memory: 108.767 MB.
*HLSZ200-111h px 
m
SAnalyzing design file '/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp' ... 
*HLSZ200-10h px 
Ë
¯Finished Source Code Analysis and Preprocessing: CPU user time: 1.12 seconds. CPU system time: 0.27 seconds. Elapsed time: 0.97 seconds; current allocated memory: 109.368 MB.
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
J
/Starting automatic array partition analysis...
*HLSZ214-270h px 
¥
Multiple burst writes of variable length and bit width 32 in loop 'vadd1'(/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp:51:5) has been inferred on port 'gmem'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp:51:5)
*HLSZ214-115h px 
É
­Finished Compiling Optimization and Transform: CPU user time: 4.89 seconds. CPU system time: 0.37 seconds. Elapsed time: 4.43 seconds; current allocated memory: 111.397 MB.
*HLSZ200-111h px 
¯
Finished Checking Pragmas: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.01 seconds; current allocated memory: 111.398 MB.
*HLSZ200-111h px 
<
"Starting code transformations ...
*HLSZ200-10h px 
¸
Finished Standard Transforms: CPU user time: 0.02 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.01 seconds; current allocated memory: 112.577 MB.
*HLSZ200-111h px 
8
Checking synthesizability ...
*HLSZ200-10h px 
»
Finished Checking Synthesizability: CPU user time: 0.01 seconds. CPU system time: 0 seconds. Elapsed time: 0.01 seconds; current allocated memory: 111.798 MB.
*HLSZ200-111h px 

zPipelining loop 'vadd1' (/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp:51) in function 'krnl_vadd' automatically.
*XFORMZ203-510h px 
Ë
¯Finished Loop, function and other optimizations: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.05 seconds; current allocated memory: 132.387 MB.
*HLSZ200-111h px 
¸
Finished Architecture Synthesis: CPU user time: 0.03 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 134.567 MB.
*HLSZ200-111h px 
:
 Starting hardware synthesis ...
*HLSZ200-10h px 
7
Synthesizing 'krnl_vadd' ...
*HLSZ200-10h px 

wRenaming port name 'krnl_vadd/out' to 'krnl_vadd/out_r' to avoid the conflict with HDL keywords or other object names.
*SYNZ201-107h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
M
3-- Implementing module 'krnl_vadd_Pipeline_vadd1' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
5
Pipelining loop 'vadd1'.
*SCHEDZ204-61h px 
è
@The II Violation in module '%s' (%s): Unable to schedule %s %s.
200885*hls2,
krnl_vadd_Pipeline_vadd12default:default2 
loop 'vadd1'2default:default2Â
­bus request operation ('gmem_load_1_req', /home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp:55) on port 'gmem' (/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp:55)2default:default2
sdue to limited memory ports (II = 1). Please consider using a memory core with more ports or partitioning the array2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.1;t=hls+guidance;d=200-885.html 
Ð
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
22default:default2
752default:default2 
loop 'vadd1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
®
Finished Scheduling: CPU user time: 0.2 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.21 seconds; current allocated memory: 135.175 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.43 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.44 seconds; current allocated memory: 135.656 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
>
$-- Implementing module 'krnl_vadd' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.24 seconds. CPU system time: 0 seconds. Elapsed time: 0.25 seconds; current allocated memory: 135.918 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¨
Finished Binding: CPU user time: 0.41 seconds. CPU system time: 0 seconds. Elapsed time: 0.4 seconds; current allocated memory: 136.264 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
S
9-- Generating RTL for module 'krnl_vadd_Pipeline_vadd1' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ß
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2,
krnl_vadd_Pipeline_vadd12default:default2
vadd12default:default2!
loop pipeline2default:defaultZ200-1030h px 
k
NSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWVALID' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWADDR' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWID' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWLEN' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWSIZE' to 0.
*RTGENZ206-101h px 
k
NSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWBURST' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWLOCK' to 0.
*RTGENZ206-101h px 
k
NSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWCACHE' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWPROT' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWQOS' to 0.
*RTGENZ206-101h px 
l
OSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWREGION' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_AWUSER' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'krnl_vadd_Pipeline_vadd1/m_axi_gmem_BREADY' to 0.
*RTGENZ206-101h px 
Y
<Finished creating RTL model for 'krnl_vadd_Pipeline_vadd1'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.12 seconds. CPU system time: 0 seconds. Elapsed time: 0.14 seconds; current allocated memory: 137.478 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
D
*-- Generating RTL for module 'krnl_vadd' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
f
IDesign contains AXI ports. Reset is fixed to synchronous and active low.
*RTGENZ206-101h px 
Y
<Setting interface mode on port 'krnl_vadd/gmem' to 'm_axi'.
*RTGENZ206-500h px 
f
ISetting interface mode on port 'krnl_vadd/in1' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
f
ISetting interface mode on port 'krnl_vadd/in2' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
h
KSetting interface mode on port 'krnl_vadd/out_r' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
k
NSetting interface mode on port 'krnl_vadd/elements' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
l
OSetting interface mode on function 'krnl_vadd' to 's_axilite & ap_ctrl_chain'.
*RTGENZ206-500h px 
g
JBundling port 'in1', 'in2', 'out_r', 'elements' to AXI-Lite port control.
*RTGENZ206-100h px 
J
-Finished creating RTL model for 'krnl_vadd'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.32 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.33 seconds; current allocated memory: 140.243 MB.
*HLSZ200-111h px 
¾
¢Finished Generating all RTL models: CPU user time: 0.52 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.73 seconds; current allocated memory: 145.041 MB.
*HLSZ200-111h px 
¬
_Design has MAXI bursts%s, see Vitis HLS GUI synthesis summary report for detailed information.
2001603*hls2&
 and missed bursts2default:defaultZ200-1603h px 
º
Finished Updating report files: CPU user time: 0.62 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.64 seconds; current allocated memory: 150.199 MB.
*HLSZ200-111h px 
?
#Generating VHDL RTL for krnl_vadd.
*VHDLZ208-304h px 
B
&Generating Verilog RTL for krnl_vadd.
*VLOGZ209-307h px 

**** Loop Constraint Status: %s200790*hls2<
(All loop constraints were NOT satisfied.2default:defaultZ200-790h px 
Z
**** Estimated Fmax: %s MHz200789*hls2
342.472default:defaultZ200-789h px 
µ
Finished Command csynth_design CPU user time: 9 seconds. CPU system time: 0.76 seconds. Elapsed time: 8.7 seconds; current allocated memory: 150.186 MB.
*HLSZ200-111h px 
U
Running: %s
2001510*hls2"
export_design 2default:defaultZ200-1510h px 
8
Exporting RTL as a Vivado IP.
*IMPLZ213-8h px 

í
****** Vivado v2021.1 (64-bit)
  **** SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
  **** IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
    ** Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.

source run_ippack.tcl -notrace
*commonh px 
µ
ipx::create_core: Time (s): cpu = 00:00:01 ; elapsed = 00:00:07 . Memory (MB): peak = 2581.305 ; gain = 2.020 ; free physical = 113040 ; free virtual = 128521
*commonh px 
G
2INFO: [IP_Flow 19-234] Refreshing IP repositories
*commonh px 
O
:INFO: [IP_Flow 19-1704] No user IP repositories specified
*commonh px 
n
YINFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/opt/Xilinx/Vivado/2021.1/data/ip'.
*commonh px 
Y
DINFO: [Common 17-206] Exiting Vivado at Mon Jan 24 11:45:50 2022...
*commonh px 
t
Generated output file %s
200802*hls26
"krnl_vadd/solution/impl/export.zip2default:defaultZ200-802h px 
»
Finished Command export_design CPU user time: 17.57 seconds. CPU system time: 1.45 seconds. Elapsed time: 29.83 seconds; current allocated memory: 152.929 MB.
*HLSZ200-111h px 
6
HLS completed successfully
*HLSZ200-150h px 
ª
Total CPU user time: 27.7 seconds. Total CPU system time: 2.58 seconds. Total elapsed time: 39.69 seconds; peak allocated memory: 150.199 MB.
*HLSZ200-112h px 

Exiting %s at %s...
206*common2
	vitis_hls2default:default2,
Mon Jan 24 11:45:50 20222default:defaultZ17-206h px 


End Record