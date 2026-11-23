; ModuleID = './polybench-output/wasm/phis/symm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/symm/symm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  br label %6

6:                                                ; preds = %23, %2
  %7 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %8 = add nuw nsw i32 %7, 240
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ 0, %6 ], [ %21, %9 ]
  %11 = add nuw nsw i32 %10, %7
  %12 = urem i32 %11, 100
  %13 = uitofp nneg i32 %12 to double
  %14 = fdiv double %13, 2.000000e+02
  %15 = getelementptr inbounds [240 x double], ptr %3, i32 %7, i32 %10
  store double %14, ptr %15, align 8, !tbaa !2
  %16 = sub nuw nsw i32 %8, %10
  %17 = urem i32 %16, 100
  %18 = uitofp nneg i32 %17 to double
  %19 = fdiv double %18, 2.000000e+02
  %20 = getelementptr inbounds [240 x double], ptr %5, i32 %7, i32 %10
  store double %19, ptr %20, align 8, !tbaa !2
  %21 = add nuw nsw i32 %10, 1
  %22 = icmp eq i32 %21, 240
  br i1 %22, label %23, label %9, !llvm.loop !6

23:                                               ; preds = %9
  %24 = add nuw nsw i32 %7, 1
  %25 = icmp eq i32 %24, 200
  br i1 %25, label %29, label %6, !llvm.loop !9

26:                                               ; preds = %44, %41
  %27 = add nuw nsw i32 %30, 1
  %28 = icmp eq i32 %42, 200
  br i1 %28, label %49, label %29, !llvm.loop !10

29:                                               ; preds = %23, %26
  %30 = phi i32 [ %27, %26 ], [ 1, %23 ]
  %31 = phi i32 [ %42, %26 ], [ 0, %23 ]
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ 0, %29 ], [ %39, %32 ]
  %34 = add nuw nsw i32 %33, %31
  %35 = urem i32 %34, 100
  %36 = uitofp nneg i32 %35 to double
  %37 = fdiv double %36, 2.000000e+02
  %38 = getelementptr inbounds [200 x double], ptr %4, i32 %31, i32 %33
  store double %37, ptr %38, align 8, !tbaa !2
  %39 = add nuw nsw i32 %33, 1
  %40 = icmp eq i32 %39, %30
  br i1 %40, label %41, label %32, !llvm.loop !11

41:                                               ; preds = %32
  %42 = add nuw nsw i32 %31, 1
  %43 = icmp ult i32 %31, 199
  br i1 %43, label %44, label %26

44:                                               ; preds = %41, %44
  %45 = phi i32 [ %47, %44 ], [ %42, %41 ]
  %46 = getelementptr inbounds [200 x double], ptr %4, i32 %31, i32 %45
  store double -9.990000e+02, ptr %46, align 8, !tbaa !2
  %47 = add nuw nsw i32 %45, 1
  %48 = icmp eq i32 %47, 200
  br i1 %48, label %26, label %44, !llvm.loop !12

49:                                               ; preds = %26, %86
  %50 = phi i32 [ %87, %86 ], [ 0, %26 ]
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds [200 x double], ptr %4, i32 %50, i32 %50
  br label %53

53:                                               ; preds = %73, %49
  %54 = phi i32 [ 0, %49 ], [ %84, %73 ]
  br i1 %51, label %73, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds [240 x double], ptr %5, i32 %50, i32 %54
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi double [ 0.000000e+00, %55 ], [ %70, %57 ]
  %59 = phi i32 [ 0, %55 ], [ %71, %57 ]
  %60 = load double, ptr %56, align 8, !tbaa !2
  %61 = fmul double %60, 1.500000e+00
  %62 = getelementptr inbounds [200 x double], ptr %4, i32 %50, i32 %59
  %63 = load double, ptr %62, align 8, !tbaa !2
  %64 = getelementptr inbounds [240 x double], ptr %3, i32 %59, i32 %54
  %65 = load double, ptr %64, align 8, !tbaa !2
  %66 = tail call double @llvm.fmuladd.f64(double %61, double %63, double %65)
  store double %66, ptr %64, align 8, !tbaa !2
  %67 = getelementptr inbounds [240 x double], ptr %5, i32 %59, i32 %54
  %68 = load double, ptr %67, align 8, !tbaa !2
  %69 = load double, ptr %62, align 8, !tbaa !2
  %70 = tail call double @llvm.fmuladd.f64(double %68, double %69, double %58)
  %71 = add nuw nsw i32 %59, 1
  %72 = icmp eq i32 %71, %50
  br i1 %72, label %73, label %57, !llvm.loop !13

73:                                               ; preds = %57, %53
  %74 = phi double [ 0.000000e+00, %53 ], [ %70, %57 ]
  %75 = getelementptr inbounds [240 x double], ptr %3, i32 %50, i32 %54
  %76 = load double, ptr %75, align 8, !tbaa !2
  %77 = getelementptr inbounds [240 x double], ptr %5, i32 %50, i32 %54
  %78 = load double, ptr %77, align 8, !tbaa !2
  %79 = fmul double %78, 1.500000e+00
  %80 = load double, ptr %52, align 8, !tbaa !2
  %81 = fmul double %79, %80
  %82 = tail call double @llvm.fmuladd.f64(double %76, double 1.200000e+00, double %81)
  %83 = tail call double @llvm.fmuladd.f64(double %74, double 1.500000e+00, double %82)
  store double %83, ptr %75, align 8, !tbaa !2
  %84 = add nuw nsw i32 %54, 1
  %85 = icmp eq i32 %84, 240
  br i1 %85, label %86, label %53, !llvm.loop !14

86:                                               ; preds = %73
  %87 = add nuw nsw i32 %50, 1
  %88 = icmp eq i32 %87, 200
  br i1 %88, label %89, label %49, !llvm.loop !15

89:                                               ; preds = %86
  %90 = load ptr, ptr @stderr, align 4, !tbaa !16
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str) #3
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %93

93:                                               ; preds = %109, %89
  %94 = phi i32 [ 0, %89 ], [ %110, %109 ]
  %95 = mul nuw nsw i32 %94, 200
  br label %96

96:                                               ; preds = %103, %93
  %97 = phi i32 [ 0, %93 ], [ %107, %103 ]
  %98 = add nuw nsw i32 %97, %95
  %99 = urem i32 %98, 20
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.3) #3
  br label %103

103:                                              ; preds = %101, %96
  %104 = getelementptr inbounds [240 x double], ptr %3, i32 %94, i32 %97
  %105 = load double, ptr %104, align 8, !tbaa !2
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.4, double noundef %105) #3
  %107 = add nuw nsw i32 %97, 1
  %108 = icmp eq i32 %107, 240
  br i1 %108, label %109, label %96, !llvm.loop !18

109:                                              ; preds = %103
  %110 = add nuw nsw i32 %94, 1
  %111 = icmp eq i32 %110, 200
  br i1 %111, label %112, label %93, !llvm.loop !19

112:                                              ; preds = %109
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef nonnull %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef %5) #3
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
!15 = distinct !{!15, !7, !8}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !7, !8}
