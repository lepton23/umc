; ModuleID = './polybench-output/wasm/phis/syrk.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/syrk/syrk.c"
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
  br label %5

5:                                                ; preds = %17, %2
  %6 = phi i32 [ 0, %2 ], [ %18, %17 ]
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %9 = mul nuw nsw i32 %8, %6
  %10 = add nuw nsw i32 %9, 1
  %11 = urem i32 %10, 240
  %12 = uitofp nneg i32 %11 to double
  %13 = fdiv double %12, 2.400000e+02
  %14 = getelementptr inbounds [200 x double], ptr %4, i32 %6, i32 %8
  store double %13, ptr %14, align 8, !tbaa !2
  %15 = add nuw nsw i32 %8, 1
  %16 = icmp eq i32 %15, 200
  br i1 %16, label %17, label %7, !llvm.loop !6

17:                                               ; preds = %7
  %18 = add nuw nsw i32 %6, 1
  %19 = icmp eq i32 %18, 240
  br i1 %19, label %20, label %5, !llvm.loop !9

20:                                               ; preds = %17, %32
  %21 = phi i32 [ %33, %32 ], [ 0, %17 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 0, %20 ], [ %30, %22 ]
  %24 = mul nuw nsw i32 %23, %21
  %25 = add nuw nsw i32 %24, 2
  %26 = urem i32 %25, 200
  %27 = uitofp nneg i32 %26 to double
  %28 = fdiv double %27, 2.000000e+02
  %29 = getelementptr inbounds [240 x double], ptr %3, i32 %21, i32 %23
  store double %28, ptr %29, align 8, !tbaa !2
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, 240
  br i1 %31, label %32, label %22, !llvm.loop !10

32:                                               ; preds = %22
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp eq i32 %33, 240
  br i1 %34, label %35, label %20, !llvm.loop !11

35:                                               ; preds = %32, %62
  %36 = phi i32 [ %64, %62 ], [ 1, %32 ]
  %37 = phi i32 [ %63, %62 ], [ 0, %32 ]
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi i32 [ 0, %35 ], [ %43, %38 ]
  %40 = getelementptr inbounds [240 x double], ptr %3, i32 %37, i32 %39
  %41 = load double, ptr %40, align 8, !tbaa !2
  %42 = fmul double %41, 1.200000e+00
  store double %42, ptr %40, align 8, !tbaa !2
  %43 = add nuw nsw i32 %39, 1
  %44 = icmp eq i32 %43, %36
  br i1 %44, label %45, label %38, !llvm.loop !12

45:                                               ; preds = %38, %59
  %46 = phi i32 [ %60, %59 ], [ 0, %38 ]
  %47 = getelementptr inbounds [200 x double], ptr %4, i32 %37, i32 %46
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi i32 [ 0, %45 ], [ %57, %48 ]
  %50 = load double, ptr %47, align 8, !tbaa !2
  %51 = fmul double %50, 1.500000e+00
  %52 = getelementptr inbounds [200 x double], ptr %4, i32 %49, i32 %46
  %53 = load double, ptr %52, align 8, !tbaa !2
  %54 = getelementptr inbounds [240 x double], ptr %3, i32 %37, i32 %49
  %55 = load double, ptr %54, align 8, !tbaa !2
  %56 = tail call double @llvm.fmuladd.f64(double %51, double %53, double %55)
  store double %56, ptr %54, align 8, !tbaa !2
  %57 = add nuw nsw i32 %49, 1
  %58 = icmp eq i32 %57, %36
  br i1 %58, label %59, label %48, !llvm.loop !13

59:                                               ; preds = %48
  %60 = add nuw nsw i32 %46, 1
  %61 = icmp eq i32 %60, 200
  br i1 %61, label %62, label %45, !llvm.loop !14

62:                                               ; preds = %59
  %63 = add nuw nsw i32 %37, 1
  %64 = add nuw nsw i32 %36, 1
  %65 = icmp eq i32 %63, 240
  br i1 %65, label %66, label %35, !llvm.loop !15

66:                                               ; preds = %62
  %67 = load ptr, ptr @stderr, align 4, !tbaa !16
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str) #3
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %70

70:                                               ; preds = %86, %66
  %71 = phi i32 [ 0, %66 ], [ %87, %86 ]
  %72 = mul nuw nsw i32 %71, 240
  br label %73

73:                                               ; preds = %80, %70
  %74 = phi i32 [ 0, %70 ], [ %84, %80 ]
  %75 = add nuw nsw i32 %74, %72
  %76 = urem i32 %75, 20
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.3) #3
  br label %80

80:                                               ; preds = %78, %73
  %81 = getelementptr inbounds [240 x double], ptr %3, i32 %71, i32 %74
  %82 = load double, ptr %81, align 8, !tbaa !2
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.4, double noundef %82) #3
  %84 = add nuw nsw i32 %74, 1
  %85 = icmp eq i32 %84, 240
  br i1 %85, label %86, label %73, !llvm.loop !18

86:                                               ; preds = %80
  %87 = add nuw nsw i32 %71, 1
  %88 = icmp eq i32 %87, 240
  br i1 %88, label %89, label %70, !llvm.loop !19

89:                                               ; preds = %86
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef nonnull %3) #3
  tail call void @free(ptr noundef %4) #3
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
