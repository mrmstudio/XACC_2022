; ModuleID = '/home/centos/workspace/optimization_lab_kernels/Emulation-HW/build/krnl_idct/krnl_idct/krnl_idct/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_int = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i512 }

; Function Attrs: noinline
define void @apatb_krnl_idct_ir(%struct.ap_int* %block, %struct.ap_int* %q, %struct.ap_int* %voutp, i32 %ignore_dc, i32 %blocks) local_unnamed_addr #0 {
entry:
  %block_copy1 = alloca i512, align 512
  %q_copy2 = alloca i512, align 512
  %voutp_copy3 = alloca i512, align 512
  call fastcc void @copy_in(%struct.ap_int* %block, i512* nonnull align 512 %block_copy1, %struct.ap_int* %q, i512* nonnull align 512 %q_copy2, %struct.ap_int* %voutp, i512* nonnull align 512 %voutp_copy3)
  call void @apatb_krnl_idct_hw(i512* %block_copy1, i512* %q_copy2, i512* %voutp_copy3, i32 %ignore_dc, i32 %blocks)
  call fastcc void @copy_out(%struct.ap_int* %block, i512* nonnull align 512 %block_copy1, %struct.ap_int* %q, i512* nonnull align 512 %q_copy2, %struct.ap_int* %voutp, i512* nonnull align 512 %voutp_copy3)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%struct.ap_int* readonly, i512* noalias align 512, %struct.ap_int* readonly, i512* noalias align 512, %struct.ap_int* readonly, i512* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.ap_int.4(i512* align 512 %1, %struct.ap_int* %0)
  call fastcc void @onebyonecpy_hls.p0struct.ap_int.4(i512* align 512 %3, %struct.ap_int* %2)
  call fastcc void @onebyonecpy_hls.p0struct.ap_int.4(i512* align 512 %5, %struct.ap_int* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%struct.ap_int*, i512* noalias readonly align 512, %struct.ap_int*, i512* noalias readonly align 512, %struct.ap_int*, i512* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.ap_int(%struct.ap_int* %0, i512* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0struct.ap_int(%struct.ap_int* %2, i512* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.ap_int(%struct.ap_int* %4, i512* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_int.4(i512* noalias align 512, %struct.ap_int* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i512* %0, null
  %3 = icmp eq %struct.ap_int* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_int, %struct.ap_int* %1, i64 0, i32 0, i32 0, i32 0
  %6 = load i512, i512* %5, align 64
  store i512 %6, i512* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_int(%struct.ap_int* noalias, i512* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.ap_int* %0, null
  %3 = icmp eq i512* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_int, %struct.ap_int* %0, i64 0, i32 0, i32 0, i32 0
  %6 = load i512, i512* %1, align 512
  store i512 %6, i512* %5, align 64
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_krnl_idct_hw(i512*, i512*, i512*, i32, i32)

define void @krnl_idct_hw_stub_wrapper(i512*, i512*, i512*, i32, i32) #4 {
entry:
  %5 = alloca %struct.ap_int
  %6 = alloca %struct.ap_int
  %7 = alloca %struct.ap_int
  call void @copy_out(%struct.ap_int* %5, i512* %0, %struct.ap_int* %6, i512* %1, %struct.ap_int* %7, i512* %2)
  call void @krnl_idct_hw_stub(%struct.ap_int* %5, %struct.ap_int* %6, %struct.ap_int* %7, i32 %3, i32 %4)
  call void @copy_in(%struct.ap_int* %5, i512* %0, %struct.ap_int* %6, i512* %1, %struct.ap_int* %7, i512* %2)
  ret void
}

declare void @krnl_idct_hw_stub(%struct.ap_int*, %struct.ap_int*, %struct.ap_int*, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
