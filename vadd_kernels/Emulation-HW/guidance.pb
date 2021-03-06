
?
Emulation-HW$ffe569d5-2274-4138-b9b8-68950898980eVitis IDE session Emulation-HW*B">/home/centos/workspace/vadd_kernels/Emulation-HW/guidance.html2@"</home/centos/workspace/vadd_kernels/Emulation-HW/guidance.pb*?
??	Interface"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
?Multiple burst writes of variable length and bit width 32 in loop 'vadd1'(!%1!) has been inferred on port 'gmem'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (!%2!)
?
?2?Multiple burst writes of variable length and bit width 32 in loop 'vadd1'(%REF) has been inferred on port 'gmem'. These bursts requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (%REF)

W
Ukrnl_vadd.cpp2B"5/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp2line=51
W
Ukrnl_vadd.cpp2B"5/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp2line=51Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ	Interfaceh 
??Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
?The II Violation in module 'krnl_vadd_Pipeline_vadd1' (loop 'vadd1'): Unable to schedule bus request operation ('gmem_load_1_req', !%1!) on port 'gmem' (!%2!) due to limited memory ports (II = 1). Please consider using a memory core with more ports or partitioning the array.
?
?2?The II Violation in module 'krnl_vadd_Pipeline_vadd1' (loop 'vadd1'): Unable to schedule bus request operation ('gmem_load_1_req', %REF) on port 'gmem' (%REF) due to limited memory ports (II = 1). Please consider using a memory core with more ports or partitioning the array.

W
Ukrnl_vadd.cpp2B"5/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp2line=55
W
Ukrnl_vadd.cpp2B"5/home/centos/workspace/vadd_kernels/src/krnl_vadd.cpp2line=55R?
!%0!?
??
5See here for more help on vitis_hls 200-885 guidance.Mwww.xilinx.com"9/cgi-bin/docs/rdoc?v=2021.1;t=hls+guidance;d=200-885.htmlZ AcceleratorZ	krnl_vaddZ
Kernelh 
??
Throughput"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
KPipelining result : Target II = NA, Final II = 2, Depth = 75, loop 'vadd1'
O
M2KPipelining result : Target II = NA, Final II = 2, Depth = 75, loop 'vadd1'
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ
Throughputh 
??	Interface"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
oDesign has MAXI bursts and missed bursts, see Vitis HLS GUI synthesis summary report for detailed information.
s
q2oDesign has MAXI bursts and missed bursts, see Vitis HLS GUI synthesis summary report for detailed information.
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ	Interfaceh 
??Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;J?
F**** Loop Constraint Status: All loop constraints were NOT satisfied.
J
H2F**** Loop Constraint Status: All loop constraints were NOT satisfied.
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ
Kernelh 
??Kernel"j
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;JH
 **** Estimated Fmax: 342.47 MHz
$
"2 **** Estimated Fmax: 342.47 MHz
Rp
 l
jh
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;Z AcceleratorZ	krnl_vaddZ
Kernelh B?
?
	Interface?
	InterfaceHLS Interface RelatedHLS"%s: Accelerator:
Kernel:	InterfaceB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;P?  ?? 
?
Kernel?
KernelHLS Kernel RelatedHLS"%s:
Kernel: Accelerator:
KernelB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;P?? ?  
?

Throughput?

ThroughputHLS Throughput RelatedHLS"%s: Accelerator:
Kernel:
ThroughputB Jj
h
Vitis HLS User Guide (UG1399)Gwww.xilinx.com"3/cgi-bin/docs/rdoc?v=2021.1;d=ug1399-vitis-hls.pdf;P? ?  ?