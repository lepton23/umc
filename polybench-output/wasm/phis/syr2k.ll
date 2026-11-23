; ModuleID = './polybench-output/wasm/phis/syr2k.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/syr2k/syr2k.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  br label %6

6:                                                ; preds = %23, %2
  %7 = phi i32 [ 0, %2 ], [ %24, %23 ]
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %21, %8 ]
  %10 = mul nuw nsw i32 %9, %7
  %11 = add nuw nsw i32 %10, 1
  %12 = urem i32 %11, 240
  %13 = uitofp nneg i32 %12 to double
  %14 = fdiv double %13, 2.400000e+02
  %15 = getelementptr inbounds [200 x double], ptr %4, i32 %7, i32 %9
  store double %14, ptr %15, align 8, !tbaa !2
  %16 = add nuw nsw i32 %10, 2
  %17 = urem i32 %16, 200
  %18 = uitofp nneg i32 %17 to double
  %19 = fdiv double %18, 2.000000e+02
  %20 = getelementptr inbounds [200 x double], ptr %5, i32 %7, i32 %9
  store double %19, ptr %20, align 8, !tbaa !2
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp eq i32 %21, 200
  br i1 %22, label %23, label %8, !llvm.loop !6

23:                                               ; preds = %8
  %24 = add nuw nsw i32 %7, 1
  %25 = icmp eq i32 %24, 240
  br i1 %25, label %26, label %6, !llvm.loop !9

26:                                               ; preds = %23, %38
  %27 = phi i32 [ %39, %38 ], [ 0, %23 ]
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %36, %28 ]
  %30 = mul nuw nsw i32 %29, %27
  %31 = add nuw nsw i32 %30, 3
  %32 = urem i32 %31, 240
  %33 = uitofp nneg i32 %32 to double
  %34 = fdiv double %33, 2.000000e+02
  %35 = getelementptr inbounds [240 x double], ptr %3, i32 %27, i32 %29
  store double %34, ptr %35, align 8, !tbaa !2
  %36 = add nuw nsw i32 %29, 1
  %37 = icmp eq i32 %36, 240
  br i1 %37, label %38, label %28, !llvm.loop !10

38:                                               ; preds = %28
  %39 = add nuw nsw i32 %27, 1
  %40 = icmp eq i32 %39, 240
  br i1 %40, label %41, label %26, !llvm.loop !11

41:                                               ; preds = %38, %75
  %42 = phi i32 [ %77, %75 ], [ 1, %38 ]
  %43 = phi i32 [ %76, %75 ], [ 0, %38 ]
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi i32 [ 0, %41 ], [ %49, %44 ]
  %46 = getelementptr inbounds [240 x double], ptr %3, i32 %43, i32 %45
  %47 = load double, ptr %46, align 8, !tbaa !2
  %48 = fmul double %47, 1.200000e+00
  store double %48, ptr %46, align 8, !tbaa !2
  %49 = add nuw nsw i32 %45, 1
  %50 = icmp eq i32 %49, %42
  br i1 %50, label %51, label %44, !llvm.loop !12

51:                                               ; preds = %44, %72
  %52 = phi i32 [ %73, %72 ], [ 0, %44 ]
  %53 = getelementptr inbounds [200 x double], ptr %5, i32 %43, i32 %52
  %54 = getelementptr inbounds [200 x double], ptr %4, i32 %43, i32 %52
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi i32 [ 0, %51 ], [ %70, %55 ]
  %57 = getelementptr inbounds [200 x double], ptr %4, i32 %56, i32 %52
  %58 = load double, ptr %57, align 8, !tbaa !2
  %59 = fmul double %58, 1.500000e+00
  %60 = load double, ptr %53, align 8, !tbaa !2
  %61 = getelementptr inbounds [200 x double], ptr %5, i32 %56, i32 %52
  %62 = load double, ptr %61, align 8, !tbaa !2
  %63 = fmul double %62, 1.500000e+00
  %64 = load double, ptr %54, align 8, !tbaa !2
  %65 = fmul double %63, %64
  %66 = tail call double @llvm.fmuladd.f64(double %59, double %60, double %65)
  %67 = getelementptr inbounds [240 x double], ptr %3, i32 %43, i32 %56
  %68 = load double, ptr %67, align 8, !tbaa !2
  %69 = fadd double %68, %66
  store double %69, ptr %67, align 8, !tbaa !2
  %70 = add nuw nsw i32 %56, 1
  %71 = icmp eq i32 %70, %42
  br i1 %71, label %72, label %55, !llvm.loop !13

72:                                               ; preds = %55
  %73 = add nuw nsw i32 %52, 1
  %74 = icmp eq i32 %73, 200
  br i1 %74, label %75, label %51, !llvm.loop !14

75:                                               ; preds = %72
  %76 = add nuw nsw i32 %43, 1
  %77 = add nuw nsw i32 %42, 1
  %78 = icmp eq i32 %76, 240
  br i1 %78, label %79, label %41, !llvm.loop !15

79:                                               ; preds = %75
  %80 = load ptr, ptr @stderr, align 4, !tbaa !16
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str) #3
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %83

83:                                               ; preds = %99, %79
  %84 = phi i32 [ 0, %79 ], [ %100, %99 ]
  %85 = mul nuw nsw i32 %84, 240
  br label %86

86:                                               ; preds = %93, %83
  %87 = phi i32 [ 0, %83 ], [ %97, %93 ]
  %88 = add nuw nsw i32 %87, %85
  %89 = urem i32 %88, 20
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.3) #3
  br label %93

93:                                               ; preds = %91, %86
  %94 = getelementptr inbounds [240 x double], ptr %3, i32 %84, i32 %87
  %95 = load double, ptr %94, align 8, !tbaa !2
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.4, double noundef %95) #3
  %97 = add nuw nsw i32 %87, 1
  %98 = icmp eq i32 %97, 240
  br i1 %98, label %99, label %86, !llvm.loop !18

99:                                               ; preds = %93
  %100 = add nuw nsw i32 %84, 1
  %101 = icmp eq i32 %100, 240
  br i1 %101, label %102, label %83, !llvm.loop !19

102:                                              ; preds = %99
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.6) #3
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
