; ModuleID = './polybench-output/wasm/phis/atax.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/atax/atax.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 159900, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 410, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 410, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 390, i32 noundef 8) #3
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 0, %2 ], [ %13, %7 ]
  %9 = uitofp nneg i32 %8 to double
  %10 = fdiv double %9, 4.100000e+02
  %11 = fadd double %10, 1.000000e+00
  %12 = getelementptr inbounds double, ptr %4, i32 %8
  store double %11, ptr %12, align 8, !tbaa !2
  %13 = add nuw nsw i32 %8, 1
  %14 = icmp eq i32 %13, 410
  br i1 %14, label %15, label %7, !llvm.loop !6

15:                                               ; preds = %7, %26
  %16 = phi i32 [ %27, %26 ], [ 0, %7 ]
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ 0, %15 ], [ %24, %17 ]
  %19 = add nuw nsw i32 %18, %16
  %20 = urem i32 %19, 410
  %21 = uitofp nneg i32 %20 to double
  %22 = fdiv double %21, 1.950000e+03
  %23 = getelementptr inbounds [410 x double], ptr %3, i32 %16, i32 %18
  store double %22, ptr %23, align 8, !tbaa !2
  %24 = add nuw nsw i32 %18, 1
  %25 = icmp eq i32 %24, 410
  br i1 %25, label %26, label %17, !llvm.loop !9

26:                                               ; preds = %17
  %27 = add nuw nsw i32 %16, 1
  %28 = icmp eq i32 %27, 390
  br i1 %28, label %29, label %15, !llvm.loop !10

29:                                               ; preds = %26, %29
  %30 = phi i32 [ %32, %29 ], [ 0, %26 ]
  %31 = getelementptr inbounds double, ptr %5, i32 %30
  store double 0.000000e+00, ptr %31, align 8, !tbaa !2
  %32 = add nuw nsw i32 %30, 1
  %33 = icmp eq i32 %32, 410
  br i1 %33, label %34, label %29, !llvm.loop !11

34:                                               ; preds = %29, %57
  %35 = phi i32 [ %58, %57 ], [ 0, %29 ]
  %36 = getelementptr inbounds double, ptr %6, i32 %35
  store double 0.000000e+00, ptr %36, align 8, !tbaa !2
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ 0, %34 ], [ %45, %37 ]
  %39 = phi double [ 0.000000e+00, %34 ], [ %44, %37 ]
  %40 = getelementptr inbounds [410 x double], ptr %3, i32 %35, i32 %38
  %41 = load double, ptr %40, align 8, !tbaa !2
  %42 = getelementptr inbounds double, ptr %4, i32 %38
  %43 = load double, ptr %42, align 8, !tbaa !2
  %44 = tail call double @llvm.fmuladd.f64(double %41, double %43, double %39)
  store double %44, ptr %36, align 8, !tbaa !2
  %45 = add nuw nsw i32 %38, 1
  %46 = icmp eq i32 %45, 410
  br i1 %46, label %47, label %37, !llvm.loop !12

47:                                               ; preds = %37, %47
  %48 = phi i32 [ %55, %47 ], [ 0, %37 ]
  %49 = getelementptr inbounds double, ptr %5, i32 %48
  %50 = load double, ptr %49, align 8, !tbaa !2
  %51 = getelementptr inbounds [410 x double], ptr %3, i32 %35, i32 %48
  %52 = load double, ptr %51, align 8, !tbaa !2
  %53 = load double, ptr %36, align 8, !tbaa !2
  %54 = tail call double @llvm.fmuladd.f64(double %52, double %53, double %50)
  store double %54, ptr %49, align 8, !tbaa !2
  %55 = add nuw nsw i32 %48, 1
  %56 = icmp eq i32 %55, 410
  br i1 %56, label %57, label %47, !llvm.loop !13

57:                                               ; preds = %47
  %58 = add nuw nsw i32 %35, 1
  %59 = icmp eq i32 %58, 390
  br i1 %59, label %60, label %34, !llvm.loop !14

60:                                               ; preds = %57
  %61 = load ptr, ptr @stderr, align 4, !tbaa !15
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str) #3
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %64

64:                                               ; preds = %71, %60
  %65 = phi i32 [ 0, %60 ], [ %75, %71 ]
  %66 = trunc nuw i32 %65 to i16
  %67 = urem i16 %66, 20
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.3) #3
  br label %71

71:                                               ; preds = %69, %64
  %72 = getelementptr inbounds double, ptr %5, i32 %65
  %73 = load double, ptr %72, align 8, !tbaa !2
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.4, double noundef %73) #3
  %75 = add nuw nsw i32 %65, 1
  %76 = icmp eq i32 %75, 410
  br i1 %76, label %77, label %64, !llvm.loop !17

77:                                               ; preds = %71
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef nonnull %5) #3
  tail call void @free(ptr noundef %6) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !7, !8}
!10 = distinct !{!10, !7, !8}
!11 = distinct !{!11, !7, !8}
!12 = distinct !{!12, !7, !8}
!13 = distinct !{!13, !7, !8}
!14 = distinct !{!14, !7, !8}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7, !8}
