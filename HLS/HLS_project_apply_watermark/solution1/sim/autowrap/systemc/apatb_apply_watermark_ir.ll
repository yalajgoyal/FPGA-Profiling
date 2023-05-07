; ModuleID = '/export/hdd/scratch/ygoyal8/special_problems/HLS_project_apply_watermark/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.TYPE = type { [16 x i32] }

; Function Attrs: noinline
define void @apatb_apply_watermark_ir(%struct.TYPE* noalias nocapture nonnull readonly %input, %struct.TYPE* noalias nocapture nonnull %output) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 2020352)
  %input_copy = bitcast i8* %malloccall to [31568 x i512]*
  %malloccall1 = call i8* @malloc(i64 2020352)
  %output_copy = bitcast i8* %malloccall1 to [31568 x i512]*
  %0 = bitcast %struct.TYPE* %input to [31568 x %struct.TYPE]*
  %1 = bitcast %struct.TYPE* %output to [31568 x %struct.TYPE]*
  call fastcc void @copy_in([31568 x %struct.TYPE]* nonnull %0, [31568 x i512]* %input_copy, [31568 x %struct.TYPE]* nonnull %1, [31568 x i512]* %output_copy)
  %2 = getelementptr [31568 x i512], [31568 x i512]* %input_copy, i32 0, i32 0
  %3 = getelementptr [31568 x i512], [31568 x i512]* %output_copy, i32 0, i32 0
  call void @apatb_apply_watermark_hw(i512* %2, i512* %3)
  call void @copy_back([31568 x %struct.TYPE]* %0, [31568 x i512]* %input_copy, [31568 x %struct.TYPE]* %1, [31568 x i512]* %output_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([31568 x %struct.TYPE]* noalias readonly, [31568 x i512]* noalias, [31568 x %struct.TYPE]* noalias readonly, [31568 x i512]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a31568struct.TYPE.10([31568 x i512]* %1, [31568 x %struct.TYPE]* %0)
  call fastcc void @onebyonecpy_hls.p0a31568struct.TYPE.10([31568 x i512]* %3, [31568 x %struct.TYPE]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([31568 x %struct.TYPE]* noalias, [31568 x i512]* noalias readonly, [31568 x %struct.TYPE]* noalias, [31568 x i512]* noalias readonly) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a31568struct.TYPE([31568 x %struct.TYPE]* %0, [31568 x i512]* %1)
  call fastcc void @onebyonecpy_hls.p0a31568struct.TYPE([31568 x %struct.TYPE]* %2, [31568 x i512]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a31568struct.TYPE([31568 x %struct.TYPE]* noalias, [31568 x i512]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [31568 x %struct.TYPE]* %0, null
  %3 = icmp eq [31568 x i512]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [31568 x i512], [31568 x i512]* %1, i64 0, i64 %for.loop.idx12
  %6 = load i512, i512* %5, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr59 = getelementptr [31568 x %struct.TYPE], [31568 x %struct.TYPE]* %0, i64 0, i64 %for.loop.idx12, i32 0, i64 %for.loop.idx311
  %7 = mul nuw nsw i64 32, %for.loop.idx311
  %8 = zext i64 %7 to i512
  %9 = lshr i512 %6, %8
  %.partselect = trunc i512 %9 to i32
  store i32 %.partselect, i32* %dst.addr59, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 16
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 31568
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a31568struct.TYPE.10([31568 x i512]* noalias, [31568 x %struct.TYPE]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [31568 x i512]* %0, null
  %3 = icmp eq [31568 x %struct.TYPE]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [31568 x i512], [31568 x i512]* %0, i64 0, i64 %for.loop.idx12
  %.promoted = load i512, i512* %5, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %.partset1 = phi i512 [ %.promoted, %for.loop ], [ %.partset, %for.loop2 ]
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %6 = mul nuw nsw i64 32, %for.loop.idx311
  %src.addr610 = getelementptr [31568 x %struct.TYPE], [31568 x %struct.TYPE]* %1, i64 0, i64 %for.loop.idx12, i32 0, i64 %for.loop.idx311
  %7 = load i32, i32* %src.addr610, align 4
  %8 = zext i64 %6 to i512
  %9 = shl i512 4294967295, %8
  %10 = zext i32 %7 to i512
  %11 = shl i512 %10, %8
  %12 = xor i512 %9, -1
  %13 = and i512 %.partset1, %12
  %.partset = or i512 %13, %11
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 16
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i512 %.partset, i512* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 31568
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_apply_watermark_hw(i512*, i512*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([31568 x %struct.TYPE]* noalias, [31568 x i512]* noalias readonly, [31568 x %struct.TYPE]* noalias, [31568 x i512]* noalias readonly) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a31568struct.TYPE([31568 x %struct.TYPE]* %2, [31568 x i512]* %3)
  ret void
}

define void @apply_watermark_hw_stub_wrapper(i512*, i512*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 2020352)
  %2 = bitcast i8* %malloccall to [31568 x %struct.TYPE]*
  %malloccall1 = tail call i8* @malloc(i64 2020352)
  %3 = bitcast i8* %malloccall1 to [31568 x %struct.TYPE]*
  %4 = bitcast i512* %0 to [31568 x i512]*
  %5 = bitcast i512* %1 to [31568 x i512]*
  call void @copy_out([31568 x %struct.TYPE]* %2, [31568 x i512]* %4, [31568 x %struct.TYPE]* %3, [31568 x i512]* %5)
  %6 = bitcast [31568 x %struct.TYPE]* %2 to %struct.TYPE*
  %7 = bitcast [31568 x %struct.TYPE]* %3 to %struct.TYPE*
  call void @apply_watermark_hw_stub(%struct.TYPE* %6, %struct.TYPE* %7)
  call void @copy_in([31568 x %struct.TYPE]* %2, [31568 x i512]* %4, [31568 x %struct.TYPE]* %3, [31568 x i512]* %5)
  ret void
}

declare void @apply_watermark_hw_stub(%struct.TYPE*, %struct.TYPE*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
