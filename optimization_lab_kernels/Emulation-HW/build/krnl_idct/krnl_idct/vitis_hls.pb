
a
GRunning '/opt/Xilinx/Vitis_HLS/2021.1/bin/unwrapped/lnx64.o/vitis_hls'
*HLSZ200-10h px 
¨
For user 'centos' on host 'ip-172-31-90-216.ec2.internal' (Linux_x86_64 version 3.10.0-1160.31.1.el7.x86_64) on Tue Jan 25 07:50:41 UTC 2022
*HLSZ200-10h px 
G
-On os "CentOS Linux release 7.9.2009 (Core)"
*HLSZ200-10h px 

fIn directory '/home/centos/workspace/optimization_lab_kernels/Emulation-HW/build/krnl_idct/krnl_idct'
*HLSZ200-10h px 
?
$Sourcing Tcl script 'krnl_idct.tcl'
*HLSZ200-150h px 
^
Running: %s
2001510*hls2+
open_project krnl_idct 2default:defaultZ200-1510h px 

Creating and opening project '/home/centos/workspace/optimization_lab_kernels/Emulation-HW/build/krnl_idct/krnl_idct/krnl_idct'.
*HLSZ200-10h px 
Y
Running: %s
2001510*hls2&
set_top krnl_idct 2default:defaultZ200-1510h px 
Ù
Running: %s
2001510*hls2¥
add_files /home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp -cflags  -g -I /home/centos/workspace/optimization_lab_kernels/src  2default:defaultZ200-1510h px 

fAdding design file '/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp' to the project
*HLSZ200-10h px 
q
Running: %s
2001510*hls2>
*open_solution -flow_target vitis solution 2default:defaultZ200-1510h px 
¦
Creating and opening solution '/home/centos/workspace/optimization_lab_kernels/Emulation-HW/build/krnl_idct/krnl_idct/krnl_idct/solution'.
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
3config_export -format ip_catalog -ipname krnl_idct 2default:defaultZ200-1510h px 
U
Running: %s
2001510*hls2"
csynth_design 2default:defaultZ200-1510h px 
Ç
«Finished File checks and directory preparation: CPU user time: 0.01 seconds. CPU system time: 0 seconds. Elapsed time: 0.01 seconds; current allocated memory: 108.735 MB.
*HLSZ200-111h px 
y
_Analyzing design file '/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp' ... 
*HLSZ200-10h px 
­
Ignore interface attribute or pragma which is not used in top function: /home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:358:9
*HLSZ207-5528h px 

hunused parameter 'print': /opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/ap_int_base.h:792:16
*HLSZ207-5301h px 
Ë
¯Finished Source Code Analysis and Preprocessing: CPU user time: 6.76 seconds. CPU system time: 0.63 seconds. Elapsed time: 6.35 seconds; current allocated memory: 110.555 MB.
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

Inlining function 'hls::stream<ap_uint<512>, 0>::write(ap_uint<512> const&)' into 'void read_blocks<ap_uint<512> >(ap_uint<512> const*, hls::stream<ap_uint<512>, 0>&, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:226:6)
*HLSZ214-131h px 

ûInlining function 'hls::stream<ap_int<512>, 0>::write(ap_int<512> const&)' into 'void read_blocks<ap_int<512> >(ap_int<512> const*, hls::stream<ap_int<512>, 0>&, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:226:6)
*HLSZ214-131h px 
ß
ÃInlining function 'hls::stream<ap_uint<512>, 0>::read(ap_uint<512>&)' into 'hls::stream<ap_uint<512>, 0>::read()' (/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 
Ü
ÀInlining function 'hls::stream<ap_int<512>, 0>::read(ap_int<512>&)' into 'hls::stream<ap_int<512>, 0>::read()' (/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 

Inlining function 'hls::stream<ap_uint<512>, 0>::read()' into 'execute(hls::stream<ap_int<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_int<512>, 0>&, bool, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:259:14)
*HLSZ214-131h px 
°
Inlining function 'hls::stream<ap_int<512>, 0>::write(ap_int<512> const&)' into 'execute(hls::stream<ap_int<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_int<512>, 0>&, bool, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:281:14)
*HLSZ214-131h px 
°
Inlining function 'idct(short const*, unsigned short const*, short*, bool)' into 'execute(hls::stream<ap_int<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_int<512>, 0>&, bool, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:274:5)
*HLSZ214-131h px 

Inlining function 'hls::stream<ap_int<512>, 0>::read()' into 'execute(hls::stream<ap_int<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_int<512>, 0>&, bool, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:268:20)
*HLSZ214-131h px 
í
ÑInlining function 'hls::stream<ap_int<512>, 0>::read()' into 'write_blocks(ap_int<512>*, hls::stream<ap_int<512>, 0>&, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:300:14)
*HLSZ214-131h px 

ôInlining function 'hls::stream<ap_int<512>, 0>::stream(char const*)' into 'krnl_idct_dataflow(ap_int<512> const*, ap_uint<512> const*, ap_int<512>*, int, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:321:25)
*HLSZ214-131h px 

õInlining function 'hls::stream<ap_uint<512>, 0>::stream(char const*)' into 'krnl_idct_dataflow(ap_int<512> const*, ap_uint<512> const*, ap_int<512>*, int, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:322:26)
*HLSZ214-131h px 

ôInlining function 'hls::stream<ap_int<512>, 0>::stream(char const*)' into 'krnl_idct_dataflow(ap_int<512> const*, ap_uint<512> const*, ap_int<512>*, int, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:323:25)
*HLSZ214-131h px 
À
¤Inlining function 'void read_blocks<ap_uint<512> >(ap_uint<512> const*, hls::stream<ap_uint<512>, 0>&, unsigned int)' into 'krnl_idct_dataflow(ap_int<512> const*, ap_uint<512> const*, ap_int<512>*, int, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:318:0)
*HLSZ214-178h px 
½
¡Inlining function 'void read_blocks<ap_int<512> >(ap_int<512> const*, hls::stream<ap_int<512>, 0>&, unsigned int)' into 'krnl_idct_dataflow(ap_int<512> const*, ap_uint<512> const*, ap_int<512>*, int, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:318:0)
*HLSZ214-178h px 
¥
Inlining function 'write_blocks(ap_int<512>*, hls::stream<ap_int<512>, 0>&, unsigned int)' into 'krnl_idct_dataflow(ap_int<512> const*, ap_uint<512> const*, ap_int<512>*, int, unsigned int)' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:318:0)
*HLSZ214-178h px 
è
ÌInlining function 'krnl_idct_dataflow(ap_int<512> const*, ap_uint<512> const*, ap_int<512>*, int, unsigned int)' into 'krnl_idct' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:349:0)
*HLSZ214-178h px 
ª
Aggregating maxi variable 'voutp' with non-compact mode in 512-bits (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:349:0)
*HLSZ214-241h px 
¦
Aggregating maxi variable 'q' with non-compact mode in 512-bits (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:349:0)
*HLSZ214-241h px 
ª
Aggregating maxi variable 'block' with non-compact mode in 512-bits (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:349:0)
*HLSZ214-241h px 
J
/Starting automatic array partition analysis...
*HLSZ214-270h px 
¬
Inferring complete partitioning for array 'intermed.i' on dimension 1 (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:69:10)
*HLSZ214-270h px 
ª
Inferring complete partitioning for array 'iiblock' on dimension 1 (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:252:10)
*HLSZ214-270h px 
¦
Inferring complete partitioning for array 'iiq' on dimension 1 (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:253:14)
*HLSZ214-270h px 
ª
Inferring complete partitioning for array 'iivoutp' on dimension 1 (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:254:13)
*HLSZ214-270h px 
Ë
¯Multiple burst reads of variable length and bit width 512 in loop 'loop_rd_blocks'(/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:223:21) has been inferred on port 'gmem0'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:223:21)
*HLSZ214-115h px 
Ì
°Multiple burst writes of variable length and bit width 512 in loop 'loop_wr_blocks'(/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:297:19) has been inferred on port 'gmem2'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:297:19)
*HLSZ214-115h px 

wInlining function '_llvm.fpga.pack.none.i512.s_struct.ssdm_ints' into '_llvm.fpga.unpack.none.s_struct.ap_ints.i512.1'
*HLSZ214-131h px 
¯
Inlining function '_llvm.fpga.pack.none.i512.s_struct.ap_ints' into 'execute(hls::stream<ap_int<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_int<512>, 0>&, bool, unsigned int) (.1)' (/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 
Á
¥Inlining function '_llvm.fpga.unpack.none.s_struct.ap_ints.i512.1' into 'krnl_idct' (/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 
Á
¥Inlining function '_llvm.fpga.unpack.none.s_struct.ap_ints.i512.1' into 'krnl_idct' (/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 
É
­Finished Compiling Optimization and Transform: CPU user time: 6.05 seconds. CPU system time: 0.48 seconds. Elapsed time: 6.64 seconds; current allocated memory: 113.755 MB.
*HLSZ200-111h px 
¬
Finished Checking Pragmas: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0 seconds; current allocated memory: 113.756 MB.
*HLSZ200-111h px 
<
"Starting code transformations ...
*HLSZ200-10h px 
µ
Finished Standard Transforms: CPU user time: 0.05 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 116.999 MB.
*HLSZ200-111h px 
8
Checking synthesizability ...
*HLSZ200-10h px 
¤
/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/ap_int_ref.h:708: variable-indexed range selection may cause suboptimal QoR.
*SYNCHKZ200-23h px 
7
0 error(s), 1 warning(s).
*SYNCHKZ200-10h px 
»
Finished Checking Synthesizability: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 118.186 MB.
*HLSZ200-111h px 
¿
¡Unrolling all sub-loops inside loop 'loop_execute' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:277) in function 'execute' for pipelining.
*XFORMZ203-502h px 
Å
§Updating loop upper bound from 2048 to 2 for loop 'loop_rd_blocks' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:223:38) in function 'krnl_idct'.
*XFORMZ203-561h px 
Å
§Updating loop lower bound from 2048 to 2 for loop 'loop_rd_blocks' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:223:38) in function 'krnl_idct'.
*XFORMZ203-561h px 
ò
1Unrolling loop %s completely with a factor of %s.200489*hls2
p'VITIS_LOOP_256_1' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:256) in function 'execute'2default:default2
22default:defaultZ200-489h px 
ó
1Unrolling loop %s completely with a factor of %s.200489*hls2
p'VITIS_LOOP_260_2' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:260) in function 'execute'2default:default2
322default:defaultZ200-489h px 
÷
1Unrolling loop %s completely with a factor of %s.200489*hls2
u'VITIS_LOOP_266_3' (/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h:0) in function 'execute'2default:default2
22default:defaultZ200-489h px 
ó
1Unrolling loop %s completely with a factor of %s.200489*hls2
p'VITIS_LOOP_269_4' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:269) in function 'execute'2default:default2
322default:defaultZ200-489h px 
ð
1Unrolling loop %s completely with a factor of %s.200489*hls2
n'VITIS_LOOP_88_1' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:88) in function 'execute'2default:default2
82default:defaultZ200-489h px 
ò
1Unrolling loop %s completely with a factor of %s.200489*hls2
p'VITIS_LOOP_154_2' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:154) in function 'execute'2default:default2
82default:defaultZ200-489h px 
ò
1Unrolling loop %s completely with a factor of %s.200489*hls2
p'VITIS_LOOP_276_5' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:277) in function 'execute'2default:default2
22default:defaultZ200-489h px 
ó
1Unrolling loop %s completely with a factor of %s.200489*hls2
p'VITIS_LOOP_278_6' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:277) in function 'execute'2default:default2
322default:defaultZ200-489h px 

Partitioning array 'intermed' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:69) in dimension 1 completely.
*XFORMZ203-101h px 

Partitioning array 'iiblock' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:252) in dimension 1 completely.
*XFORMZ203-101h px 

|Partitioning array 'iiq' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:253) in dimension 1 completely.
*XFORMZ203-101h px 

Partitioning array 'iivoutp' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:254) in dimension 1 completely.
*XFORMZ203-101h px 
Ð
²Performing if-conversion on hyperblock from (/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h:145:9) in function 'execute'... converting 27 basic blocks.
*XFORMZ203-401h px 
°
Balancing expressions in function 'execute' (/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:90:18)...48 expression(s) balanced.
*XFORMZ203-11h px 
Ë
¯Finished Loop, function and other optimizations: CPU user time: 0.53 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.62 seconds; current allocated memory: 146.473 MB.
*HLSZ200-111h px 

¦%s%s. These data requests might be further partitioned to multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings.
200444*hls2¶
¡Inferring multiple bus burst read of a total cumulative length 2 on port 'gmem1' (/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h:174:9)2default:default2
 2default:defaultZ200-444h px 
»
Finished Architecture Synthesis: CPU user time: 0.43 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.45 seconds; current allocated memory: 187.853 MB.
*HLSZ200-111h px 
:
 Starting hardware synthesis ...
*HLSZ200-10h px 
7
Synthesizing 'krnl_idct' ...
*HLSZ200-10h px 

{Renaming port name 'krnl_idct/block' to 'krnl_idct/block_r' to avoid the conflict with HDL keywords or other object names.
*SYNZ201-107h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
V
<-- Implementing module 'krnl_idct_Pipeline_loop_rd_blocks' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
>
"Pipelining loop 'loop_rd_blocks'.
*SCHEDZ204-61h px 
×
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
32default:default2)
loop 'loop_rd_blocks'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.21 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.23 seconds; current allocated memory: 188.837 MB.
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
Finished Binding: CPU user time: 0.42 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.43 seconds; current allocated memory: 189.145 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
W
=-- Implementing module 'krnl_idct_Pipeline_loop_rd_blocks1' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
>
"Pipelining loop 'loop_rd_blocks'.
*SCHEDZ204-61h px 
×
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
32default:default2)
loop 'loop_rd_blocks'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.1 seconds. CPU system time: 0 seconds. Elapsed time: 0.1 seconds; current allocated memory: 189.232 MB.
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
©
Finished Binding: CPU user time: 0.03 seconds. CPU system time: 0 seconds. Elapsed time: 0.03 seconds; current allocated memory: 189.347 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
<
"-- Implementing module 'execute' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln182_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln181_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln180_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln175_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln174_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln173_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln172_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln171_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln170_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln182_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln181_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln180_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln175_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln174_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln173_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln172_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln171_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln170_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln182_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln181_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln180_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln175_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln174_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln173_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln172_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln171_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln170_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln182_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln181_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln180_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln175_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln174_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln173_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln172_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln171_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln170_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln182_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln181_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln180_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln175_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln174_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln173_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln172_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln171_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln170_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln182_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln181_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln180_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln175_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln174_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln173_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln172_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln171_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln170_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln182_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln181_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln180_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln175_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln174_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln173_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln172_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln171_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln170_12default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln1822default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln1812default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	add_ln1802default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln1752default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln1742default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	add_ln1732default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln1722default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln1712default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	add_ln1702default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln98_72default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln97_72default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln96_72default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln95_72default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln94_72default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln93_72default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln92_72default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln91_72default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln98_62default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln97_62default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln96_62default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln95_62default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln94_62default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln93_62default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln92_62default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln91_62default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln98_52default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln97_52default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln96_52default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln95_52default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln94_52default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln93_52default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln92_52default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln91_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln128_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln127_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
add_ln126_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln98_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln97_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln96_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln95_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln94_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln93_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln92_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln91_42default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln98_32default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln97_32default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln96_32default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln95_32default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln94_32default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln93_32default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln92_32default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln91_32default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln98_22default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln97_22default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln96_22default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln95_22default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln94_22default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln93_22default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln92_22default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln91_22default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln98_12default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln97_12default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln96_12default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln95_12default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln94_12default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln93_12default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln92_12default:default2
32default:defaultZ200-486h px 
¡
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2

mul_ln91_12default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln1282default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln1272default:default2
32default:defaultZ200-486h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	add_ln1262default:default2
32default:defaultZ200-486h px 

GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln982default:default2
32default:defaultZ200-486h px 

GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln972default:default2
32default:defaultZ200-486h px 

GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln962default:default2
32default:defaultZ200-486h px 

GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln952default:default2
32default:defaultZ200-486h px 

GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln942default:default2
32default:defaultZ200-486h px 

GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln932default:default2
32default:defaultZ200-486h px 

GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln922default:default2
32default:defaultZ200-486h px 

GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln912default:default2
32default:defaultZ200-486h px 
<
 Pipelining loop 'loop_execute'.
*SCHEDZ204-61h px 
Ö
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
22default:default2
22default:default2
242default:default2'
loop 'loop_execute'2default:defaultZ200-1470h px 
ì
|Estimated clock period (%s%sns) %s(target clock period: %s%sns, clock uncertainty: %s%sns, effective delay budget: %s%sns).
200871*hls2
 2default:default2
3.3922default:default2'
exceeds the target 2default:default2
 2default:default2
42default:default2
 2default:default2
1.082default:default2
 2default:default2
2.922default:defaultZ200-871h pxcFor help on HLS 200-871 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.1;t=hls+guidance;d=200-871.html 

>The critical path in module '%s' consists of the following:%s
2001016*hls2
execute2default:default2
	'add' operation of DSP[408] ('add_ln126', /home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:126) [407]  (2.4 ns)
	'mul' operation of DSP[408] ('mul_ln126', /home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp:126) [408]  (0.996 ns)
2default:defaultZ200-1016h pxeFor help on HLS 200-1016 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.1;t=hls+guidance;d=200-1016.html 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 3.05 seconds. CPU system time: 0.41 seconds. Elapsed time: 3.51 seconds; current allocated memory: 195.434 MB.
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
Finished Binding: CPU user time: 2.88 seconds. CPU system time: 0.45 seconds. Elapsed time: 3.33 seconds; current allocated memory: 203.232 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
V
<-- Implementing module 'krnl_idct_Pipeline_loop_wr_blocks' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
>
"Pipelining loop 'loop_wr_blocks'.
*SCHEDZ204-61h px 
×
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
32default:default2)
loop 'loop_wr_blocks'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
®
Finished Scheduling: CPU user time: 3.98 seconds. CPU system time: 0.43 seconds. Elapsed time: 4.4 seconds; current allocated memory: 203.324 MB.
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
©
Finished Binding: CPU user time: 0.03 seconds. CPU system time: 0 seconds. Elapsed time: 0.04 seconds; current allocated memory: 203.441 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
>
$-- Implementing module 'krnl_idct' 
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
¯
Finished Scheduling: CPU user time: 0.28 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.29 seconds; current allocated memory: 203.852 MB.
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
©
Finished Binding: CPU user time: 1.43 seconds. CPU system time: 0 seconds. Elapsed time: 1.44 seconds; current allocated memory: 204.565 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
\
B-- Generating RTL for module 'krnl_idct_Pipeline_loop_rd_blocks' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
b
EFinished creating RTL model for 'krnl_idct_Pipeline_loop_rd_blocks'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 2.41 seconds. CPU system time: 0 seconds. Elapsed time: 2.42 seconds; current allocated memory: 205.622 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
]
C-- Generating RTL for module 'krnl_idct_Pipeline_loop_rd_blocks1' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ò
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls26
"krnl_idct_Pipeline_loop_rd_blocks12default:default2"
loop_rd_blocks2default:default2!
loop pipeline2default:defaultZ200-1030h px 
v
YSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARVALID' to 0.
*RTGENZ206-101h px 
u
XSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARADDR' to 0.
*RTGENZ206-101h px 
s
VSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARID' to 0.
*RTGENZ206-101h px 
t
WSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARLEN' to 0.
*RTGENZ206-101h px 
u
XSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARSIZE' to 0.
*RTGENZ206-101h px 
v
YSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARBURST' to 0.
*RTGENZ206-101h px 
u
XSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARLOCK' to 0.
*RTGENZ206-101h px 
v
YSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARCACHE' to 0.
*RTGENZ206-101h px 
u
XSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARPROT' to 0.
*RTGENZ206-101h px 
t
WSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARQOS' to 0.
*RTGENZ206-101h px 
w
ZSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARREGION' to 0.
*RTGENZ206-101h px 
u
XSetting dangling out port 'krnl_idct_Pipeline_loop_rd_blocks1/m_axi_gmem0_ARUSER' to 0.
*RTGENZ206-101h px 
c
FFinished creating RTL model for 'krnl_idct_Pipeline_loop_rd_blocks1'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.23 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.24 seconds; current allocated memory: 206.663 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
B
(-- Generating RTL for module 'execute' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Õ
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2
execute2default:default2 
loop_execute2default:default2!
loop pipeline2default:defaultZ200-1030h px 
¥
Estimated max fanout for 'execute' is 8425 from HDL expression: ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))
*RTGENZ206-104h px 
d
GGenerating core module 'am_addmul_24s_24s_12ns_32_4_1': 8 instance(s).
*RTGENZ206-100h px 
d
GGenerating core module 'am_addmul_27s_27s_11ns_27_4_1': 2 instance(s).
*RTGENZ206-100h px 
l
OGenerating core module 'ama_addmuladd_24s_24s_10ns_3ns_32_4_1': 8 instance(s).
*RTGENZ206-100h px 
l
OGenerating core module 'ama_addmuladd_24s_24s_11ns_3ns_30_4_1': 8 instance(s).
*RTGENZ206-100h px 
f
IGenerating core module 'mac_muladd_24s_11ns_30ns_30_4_1': 8 instance(s).
*RTGENZ206-100h px 
e
HGenerating core module 'mac_muladd_24s_11s_32ns_32_4_1': 8 instance(s).
*RTGENZ206-100h px 
f
IGenerating core module 'mac_muladd_24s_12ns_32ns_32_4_1': 8 instance(s).
*RTGENZ206-100h px 
e
HGenerating core module 'mac_muladd_24s_13s_30ns_30_4_1': 8 instance(s).
*RTGENZ206-100h px 
f
IGenerating core module 'mac_muladd_24s_13s_32ns_32_4_1': 16 instance(s).
*RTGENZ206-100h px 
f
IGenerating core module 'mac_muladd_27s_11ns_27ns_27_4_1': 2 instance(s).
*RTGENZ206-100h px 
e
HGenerating core module 'mac_muladd_27s_13s_27ns_27_4_1': 2 instance(s).
*RTGENZ206-100h px 
Z
=Generating core module 'mul_31s_9ns_32_2_1': 16 instance(s).
*RTGENZ206-100h px 
Z
=Generating core module 'mul_32s_11ns_32_2_1': 8 instance(s).
*RTGENZ206-100h px 
Y
<Generating core module 'mul_32s_11s_32_2_1': 8 instance(s).
*RTGENZ206-100h px 
[
>Generating core module 'mul_32s_12ns_32_2_1': 12 instance(s).
*RTGENZ206-100h px 
[
>Generating core module 'mul_32s_13ns_32_2_1': 16 instance(s).
*RTGENZ206-100h px 
Z
=Generating core module 'mul_32s_13s_32_2_1': 22 instance(s).
*RTGENZ206-100h px 
Z
=Generating core module 'mul_32s_9ns_32_2_1': 16 instance(s).
*RTGENZ206-100h px 
_
BGenerating core module 'mul_mul_16ns_16s_32_4_1': 48 instance(s).
*RTGENZ206-100h px 
_
BGenerating core module 'mul_mul_16s_16ns_21_4_1': 14 instance(s).
*RTGENZ206-100h px 
]
@Generating core module 'mul_mul_16s_16s_16_4_1': 2 instance(s).
*RTGENZ206-100h px 
H
+Finished creating RTL model for 'execute'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.98 seconds. CPU system time: 0.03 seconds. Elapsed time: 1.25 seconds; current allocated memory: 223.694 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
\
B-- Generating RTL for module 'krnl_idct_Pipeline_loop_wr_blocks' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ñ
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls25
!krnl_idct_Pipeline_loop_wr_blocks2default:default2"
loop_wr_blocks2default:default2!
loop pipeline2default:defaultZ200-1030h px 
u
XSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWVALID' to 0.
*RTGENZ206-101h px 
t
WSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWADDR' to 0.
*RTGENZ206-101h px 
r
USetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWID' to 0.
*RTGENZ206-101h px 
s
VSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWLEN' to 0.
*RTGENZ206-101h px 
t
WSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWSIZE' to 0.
*RTGENZ206-101h px 
u
XSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWBURST' to 0.
*RTGENZ206-101h px 
t
WSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWLOCK' to 0.
*RTGENZ206-101h px 
u
XSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWCACHE' to 0.
*RTGENZ206-101h px 
t
WSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWPROT' to 0.
*RTGENZ206-101h px 
s
VSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWQOS' to 0.
*RTGENZ206-101h px 
v
YSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWREGION' to 0.
*RTGENZ206-101h px 
t
WSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_AWUSER' to 0.
*RTGENZ206-101h px 
t
WSetting dangling out port 'krnl_idct_Pipeline_loop_wr_blocks/m_axi_gmem2_BREADY' to 0.
*RTGENZ206-101h px 
b
EFinished creating RTL model for 'krnl_idct_Pipeline_loop_wr_blocks'.
*RTGENZ206-100h px 
¸
Finished Creating RTL model: CPU user time: 9.93 seconds. CPU system time: 0.55 seconds. Elapsed time: 10.72 seconds; current allocated memory: 254.859 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
D
*-- Generating RTL for module 'krnl_idct' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
f
IDesign contains AXI ports. Reset is fixed to synchronous and active low.
*RTGENZ206-101h px 
Z
=Setting interface mode on port 'krnl_idct/gmem0' to 'm_axi'.
*RTGENZ206-500h px 
Z
=Setting interface mode on port 'krnl_idct/gmem1' to 'm_axi'.
*RTGENZ206-500h px 
Z
=Setting interface mode on port 'krnl_idct/gmem2' to 'm_axi'.
*RTGENZ206-500h px 
j
MSetting interface mode on port 'krnl_idct/block_r' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
d
GSetting interface mode on port 'krnl_idct/q' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
h
KSetting interface mode on port 'krnl_idct/voutp' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
l
OSetting interface mode on port 'krnl_idct/ignore_dc' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
i
LSetting interface mode on port 'krnl_idct/blocks' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
l
OSetting interface mode on function 'krnl_idct' to 's_axilite & ap_ctrl_chain'.
*RTGENZ206-500h px 
t
WBundling port 'block_r', 'q', 'voutp', 'ignore_dc', 'blocks' to AXI-Lite port control.
*RTGENZ206-100h px 
J
-Finished creating RTL model for 'krnl_idct'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.25 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.55 seconds; current allocated memory: 258.948 MB.
*HLSZ200-111h px 
p
TImplementing FIFO 'iblock_U(krnl_idct_fifo_w512_d512_A)' using Vivado Default RAMs.
*RTMGZ210-285h px 
f
JImplementing FIFO 'iq_U(krnl_idct_fifo_w512_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
p
TImplementing FIFO 'ivoutp_U(krnl_idct_fifo_w512_d512_A)' using Vivado Default RAMs.
*RTMGZ210-285h px 
¾
¢Finished Generating all RTL models: CPU user time: 5.56 seconds. CPU system time: 0.06 seconds. Elapsed time: 5.63 seconds; current allocated memory: 264.708 MB.
*HLSZ200-111h px 
¬
_Design has MAXI bursts%s, see Vitis HLS GUI synthesis summary report for detailed information.
2001603*hls2&
 and missed bursts2default:defaultZ200-1603h px 
º
Finished Updating report files: CPU user time: 1.86 seconds. CPU system time: 0.03 seconds. Elapsed time: 1.89 seconds; current allocated memory: 279.382 MB.
*HLSZ200-111h px 
?
#Generating VHDL RTL for krnl_idct.
*VHDLZ208-304h px 
B
&Generating Verilog RTL for krnl_idct.
*VLOGZ209-307h px 
|
**** Loop Constraint Status: %s200790*hls28
$All loop constraints were satisfied.2default:defaultZ200-790h px 
Z
**** Estimated Fmax: %s MHz200789*hls2
294.812default:defaultZ200-789h px 
»
Finished Command csynth_design CPU user time: 47.62 seconds. CPU system time: 3.17 seconds. Elapsed time: 50.78 seconds; current allocated memory: 279.369 MB.
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
DINFO: [Common 17-206] Exiting Vivado at Tue Jan 25 07:51:59 2022...
*commonh px 
t
Generated output file %s
200802*hls26
"krnl_idct/solution/impl/export.zip2default:defaultZ200-802h px 
»
Finished Command export_design CPU user time: 22.12 seconds. CPU system time: 1.93 seconds. Elapsed time: 24.56 seconds; current allocated memory: 284.533 MB.
*HLSZ200-111h px 
6
HLS completed successfully
*HLSZ200-150h px 
ª
Total CPU user time: 71.26 seconds. Total CPU system time: 5.7 seconds. Total elapsed time: 79.06 seconds; peak allocated memory: 279.382 MB.
*HLSZ200-112h px 

Exiting %s at %s...
206*common2
	vitis_hls2default:default2,
Tue Jan 25 07:51:59 20222default:defaultZ17-206h px 


End Record