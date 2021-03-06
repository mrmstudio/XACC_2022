
?
Emulation-HW$13b4a159-d479-4318-be99-f868dd3f0f82Vitis IDE session Emulation-HW*N"J/home/centos/workspace/optimization_lab_kernels/Emulation-HW/guidance.html2L"H/home/centos/workspace/optimization_lab_kernels/Emulation-HW/guidance.pb*?=
??	Interface"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
?Multiple burst reads of variable length and bit width 512 in loop 'loop_rd_blocks'(!%1!) has been inferred on port 'gmem0'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (!%2!)
?
?2?Multiple burst reads of variable length and bit width 512 in loop 'loop_rd_blocks'(%REF) has been inferred on port 'gmem0'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (%REF)

d
bkrnl_idct.cpp2O"A/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp2line=223
d
bkrnl_idct.cpp2O"A/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp2line=223Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_idctZ	Interfaceh 
??	Interface"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
?Multiple burst writes of variable length and bit width 512 in loop 'loop_wr_blocks'(!%1!) has been inferred on port 'gmem2'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (!%2!)
?
?2?Multiple burst writes of variable length and bit width 512 in loop 'loop_wr_blocks'(%REF) has been inferred on port 'gmem2'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (%REF)

d
bkrnl_idct.cpp2O"A/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp2line=297
d
bkrnl_idct.cpp2O"A/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp2line=297Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_idctZ	Interfaceh 
??	Interface"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
?Inferring multiple bus burst read of a total cumulative length 2 on port 'gmem1' (!%1!). These data requests might be further partitioned to multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings.
?
?2?Inferring multiple bus burst read of a total cumulative length 2 on port 'gmem1' (%REF). These data requests might be further partitioned to multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings.

m
khls_stream_39.h2V"H/opt/Xilinx/Vitis_HLS/2021.1/common/technology/autopilot/hls_stream_39.h2line=174Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_idctZ	Interfaceh 
??
Throughput"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
RPipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'loop_rd_blocks'
V
T2RPipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'loop_rd_blocks'
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_idctZ
Throughputh 
??
Throughput"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
RPipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'loop_rd_blocks'
V
T2RPipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'loop_rd_blocks'
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z
ThroughputZ AcceleratorZ	krnl_idcth 
??
Throughput"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
QPipelining result : Target II = 2, Final II = 2, Depth = 24, loop 'loop_execute'
U
S2QPipelining result : Target II = 2, Final II = 2, Depth = 24, loop 'loop_execute'
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_idctZ
Throughputh 
??Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
?Estimated clock period (3.392ns) exceeds the target (target clock period: 4ns, clock uncertainty: 1.08ns, effective delay budget: 2.92ns).
?
?2?Estimated clock period (3.392ns) exceeds the target (target clock period: 4ns, clock uncertainty: 1.08ns, effective delay budget: 2.92ns).
R?
!%0!?
??
5See here for more help on vitis_hls 200-871 guidance.Mwww.xilinx.com"9/cgi-bin/docs/rdoc?v=2021.1;t=hls+guidance;d=200-871.htmlZ AcceleratorZ	krnl_idctZ
Kernelh 
??Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
?The critical path in module 'execute' consists of the following:	'add' operation of DSP[408] ('add_ln126', !%1!) [407]  (2.4 ns)
	'mul' operation of DSP[408] ('mul_ln126', !%2!) [408]  (0.996 ns)

?
?2?The critical path in module 'execute' consists of the following:	'add' operation of DSP[408] ('add_ln126', %REF) [407]  (2.4 ns)
	'mul' operation of DSP[408] ('mul_ln126', %REF) [408]  (0.996 ns)


d
bkrnl_idct.cpp2O"A/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp2line=126
d
bkrnl_idct.cpp2O"A/home/centos/workspace/optimization_lab_kernels/src/krnl_idct.cpp2line=126R?
!%0!?
??
6See here for more help on vitis_hls 200-1016 guidance.Nwww.xilinx.com":/cgi-bin/docs/rdoc?v=2021.1;t=hls+guidance;d=200-1016.htmlZ AcceleratorZ	krnl_idctZ
Kernelh 
?	?	
Throughput"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
RPipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'loop_wr_blocks'
V
T2RPipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'loop_wr_blocks'
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_idctZ
Throughputh 
?
?
	Interface"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
oDesign has MAXI bursts and missed bursts, see Vitis HLS GUI synthesis summary report for detailed information.
s
q2oDesign has MAXI bursts and missed bursts, see Vitis HLS GUI synthesis summary report for detailed information.
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_idctZ	Interfaceh 
??Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
B**** Loop Constraint Status: All loop constraints were satisfied.
F
D2B**** Loop Constraint Status: All loop constraints were satisfied.
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_idctZ
Kernelh 
??Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;JH
 **** Estimated Fmax: 294.81 MHz
$
"2 **** Estimated Fmax: 294.81 MHz
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z	krnl_idctZ
KernelZ Acceleratorh B?
?
	Interface?
	InterfaceHLS Interface RelatedHLS"%s:	Interface: Accelerator:
KernelB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;P? ?  ?
?
Kernel?
KernelHLS Kernel RelatedHLS"%s: Accelerator:
Kernel:
KernelB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;P?  ?? 
?

Throughput?

ThroughputHLS Throughput RelatedHLS"%s: Accelerator:
Kernel:
ThroughputB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;P?  ?? 