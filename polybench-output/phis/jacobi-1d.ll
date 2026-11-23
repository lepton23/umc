; ModuleID = './polybench-output/phis/jacobi-1d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-1d/jacobi-1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %16, %5 ]
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 2
  %9 = uitofp nneg i32 %8 to double
  %10 = fdiv double %9, 4.000000e+02
  %11 = getelementptr inbounds double, ptr %3, i64 %6
  store double %10, ptr %11, align 8, !tbaa !5
  %12 = add i32 %7, 3
  %13 = uitofp nneg i32 %12 to double
  %14 = fdiv double %13, 4.000000e+02
  %15 = getelementptr inbounds double, ptr %4, i64 %6
  store double %14, ptr %15, align 8, !tbaa !5
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 400
  br i1 %17, label %18, label %5, !llvm.loop !9

18:                                               ; preds = %5, %48
  %19 = phi i32 [ %49, %48 ], [ 0, %5 ]
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 1, %18 ], [ %27, %20 ]
  %22 = getelementptr double, ptr %3, i64 %21
  %23 = getelementptr i8, ptr %22, i64 -8
  %24 = load double, ptr %23, align 8, !tbaa !5
  %25 = load double, ptr %22, align 8, !tbaa !5
  %26 = fadd double %24, %25
  %27 = add nuw nsw i64 %21, 1
  %28 = getelementptr inbounds double, ptr %3, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !5
  %30 = fadd double %26, %29
  %31 = fmul double %30, 3.333300e-01
  %32 = getelementptr inbounds double, ptr %4, i64 %21
  store double %31, ptr %32, align 8, !tbaa !5
  %33 = icmp eq i64 %27, 399
  br i1 %33, label %34, label %20, !llvm.loop !12

34:                                               ; preds = %20, %34
  %35 = phi i64 [ %41, %34 ], [ 1, %20 ]
  %36 = getelementptr double, ptr %4, i64 %35
  %37 = getelementptr i8, ptr %36, i64 -8
  %38 = load double, ptr %37, align 8, !tbaa !5
  %39 = load double, ptr %36, align 8, !tbaa !5
  %40 = fadd double %38, %39
  %41 = add nuw nsw i64 %35, 1
  %42 = getelementptr inbounds double, ptr %4, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !5
  %44 = fadd double %40, %43
  %45 = fmul double %44, 3.333300e-01
  %46 = getelementptr inbounds double, ptr %3, i64 %35
  store double %45, ptr %46, align 8, !tbaa !5
  %47 = icmp eq i64 %41, 399
  br i1 %47, label %48, label %34, !llvm.loop !13

48:                                               ; preds = %34
  %49 = add nuw nsw i32 %19, 1
  %50 = icmp eq i32 %49, 100
  br i1 %50, label %51, label %18, !llvm.loop !14

51:                                               ; preds = %48
  %52 = load ptr, ptr @stderr, align 8, !tbaa !15
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str) #3
  %54 = load ptr, ptr @stderr, align 8, !tbaa !15
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %56

56:                                               ; preds = %64, %51
  %57 = phi i64 [ 0, %51 ], [ %69, %64 ]
  %58 = trunc i64 %57 to i16
  %59 = urem i16 %58, 20
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr @stderr, align 8, !tbaa !15
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.3) #3
  br label %64

64:                                               ; preds = %61, %56
  %65 = load ptr, ptr @stderr, align 8, !tbaa !15
  %66 = getelementptr inbounds double, ptr %3, i64 %57
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.4, double noundef %67) #3
  %69 = add nuw nsw i64 %57, 1
  %70 = icmp eq i64 %69, 400
  br i1 %70, label %71, label %56, !llvm.loop !17

71:                                               ; preds = %64
  %72 = load ptr, ptr @stderr, align 8, !tbaa !15
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %74 = load ptr, ptr @stderr, align 8, !tbaa !15
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef nonnull %3) #3
  tail call void @free(ptr noundef %4) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !10, !11}
