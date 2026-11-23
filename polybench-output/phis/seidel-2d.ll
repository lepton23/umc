; ModuleID = '/home/lepton/PolyBenchC-4.2.1/stencils/seidel-2d/seidel-2d.c'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/seidel-2d/seidel-2d.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #4
  br label %4

4:                                                ; preds = %18, %2
  %5 = phi i64 [ 0, %2 ], [ %19, %18 ]
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = uitofp nneg i32 %6 to double
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i64 [ 0, %4 ], [ %16, %8 ]
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, 2
  %12 = uitofp nneg i32 %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %7, double %12, double 2.000000e+00)
  %14 = fdiv double %13, 4.000000e+02
  %15 = getelementptr inbounds [400 x double], ptr %3, i64 %5, i64 %9
  store double %14, ptr %15, align 8, !tbaa !5
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, 400
  br i1 %17, label %18, label %8, !llvm.loop !9

18:                                               ; preds = %8
  %19 = add nuw nsw i64 %5, 1
  %20 = icmp eq i64 %19, 400
  br i1 %20, label %21, label %4, !llvm.loop !12

21:                                               ; preds = %18, %66
  %22 = phi i32 [ %67, %66 ], [ 0, %18 ]
  br label %23

23:                                               ; preds = %63, %21
  %24 = phi i64 [ 1, %21 ], [ %64, %63 ]
  %25 = getelementptr [400 x double], ptr %3, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -3200
  %27 = getelementptr inbounds i8, ptr %25, i64 3200
  %28 = load double, ptr %26, align 8, !tbaa !5
  %29 = getelementptr i8, ptr %25, i64 -3192
  %30 = load double, ptr %29, align 8, !tbaa !5
  %31 = load double, ptr %25, align 8, !tbaa !5
  %32 = getelementptr inbounds [400 x double], ptr %3, i64 %24, i64 1
  %33 = load double, ptr %32, align 8, !tbaa !5
  %34 = load double, ptr %27, align 8, !tbaa !5
  %35 = getelementptr inbounds i8, ptr %25, i64 3208
  %36 = load double, ptr %35, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %37, %23
  %38 = phi double [ %36, %23 ], [ %59, %37 ]
  %39 = phi double [ %34, %23 ], [ %38, %37 ]
  %40 = phi double [ %33, %23 ], [ %54, %37 ]
  %41 = phi double [ %31, %23 ], [ %61, %37 ]
  %42 = phi double [ %30, %23 ], [ %48, %37 ]
  %43 = phi double [ %28, %23 ], [ %42, %37 ]
  %44 = phi i64 [ 1, %23 ], [ %46, %37 ]
  %45 = fadd double %42, %43
  %46 = add nuw nsw i64 %44, 1
  %47 = getelementptr inbounds [400 x double], ptr %26, i64 0, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !5
  %49 = fadd double %45, %48
  %50 = fadd double %41, %49
  %51 = getelementptr inbounds [400 x double], ptr %3, i64 %24, i64 %44
  %52 = fadd double %40, %50
  %53 = getelementptr inbounds [400 x double], ptr %3, i64 %24, i64 %46
  %54 = load double, ptr %53, align 8, !tbaa !5
  %55 = fadd double %54, %52
  %56 = fadd double %39, %55
  %57 = fadd double %38, %56
  %58 = getelementptr inbounds [400 x double], ptr %27, i64 0, i64 %46
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = fadd double %59, %57
  %61 = fdiv double %60, 9.000000e+00
  store double %61, ptr %51, align 8, !tbaa !5
  %62 = icmp eq i64 %46, 399
  br i1 %62, label %63, label %37, !llvm.loop !13

63:                                               ; preds = %37
  %64 = add nuw nsw i64 %24, 1
  %65 = icmp eq i64 %64, 399
  br i1 %65, label %66, label %23, !llvm.loop !14

66:                                               ; preds = %63
  %67 = add nuw nsw i32 %22, 1
  %68 = icmp eq i32 %67, 100
  br i1 %68, label %69, label %21, !llvm.loop !15

69:                                               ; preds = %66
  %70 = load ptr, ptr @stderr, align 8, !tbaa !16
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str) #4
  %72 = load ptr, ptr @stderr, align 8, !tbaa !16
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %74

74:                                               ; preds = %93, %69
  %75 = phi i64 [ 0, %69 ], [ %94, %93 ]
  %76 = mul nuw nsw i64 %75, 400
  br label %77

77:                                               ; preds = %86, %74
  %78 = phi i64 [ 0, %74 ], [ %91, %86 ]
  %79 = add nuw nsw i64 %78, %76
  %80 = trunc nuw nsw i64 %79 to i32
  %81 = urem i32 %80, 20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load ptr, ptr @stderr, align 8, !tbaa !16
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.3) #4
  br label %86

86:                                               ; preds = %83, %77
  %87 = load ptr, ptr @stderr, align 8, !tbaa !16
  %88 = getelementptr inbounds [400 x double], ptr %3, i64 %75, i64 %78
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.4, double noundef %89) #4
  %91 = add nuw nsw i64 %78, 1
  %92 = icmp eq i64 %91, 400
  br i1 %92, label %93, label %77, !llvm.loop !18

93:                                               ; preds = %86
  %94 = add nuw nsw i64 %75, 1
  %95 = icmp eq i64 %94, 400
  br i1 %95, label %96, label %74, !llvm.loop !19

96:                                               ; preds = %93
  %97 = load ptr, ptr @stderr, align 8, !tbaa !16
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %99 = load ptr, ptr @stderr, align 8, !tbaa !16
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.6) #4
  tail call void @free(ptr noundef nonnull %3) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
