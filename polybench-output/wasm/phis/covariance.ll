; ModuleID = './polybench-output/wasm/phis/covariance.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/datamining/covariance/covariance.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cov\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62400, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 240, i32 noundef 8) #3
  br label %6

6:                                                ; preds = %16, %2
  %7 = phi i32 [ 0, %2 ], [ %17, %16 ]
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %14, %8 ]
  %10 = mul nuw nsw i32 %9, %7
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double %11, 2.400000e+02
  %13 = getelementptr inbounds [240 x double], ptr %3, i32 %7, i32 %9
  store double %12, ptr %13, align 8, !tbaa !2
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp eq i32 %14, 240
  br i1 %15, label %16, label %8, !llvm.loop !6

16:                                               ; preds = %8
  %17 = add nuw nsw i32 %7, 1
  %18 = icmp eq i32 %17, 260
  br i1 %18, label %19, label %6, !llvm.loop !9

19:                                               ; preds = %16, %30
  %20 = phi i32 [ %32, %30 ], [ 0, %16 ]
  %21 = getelementptr inbounds double, ptr %5, i32 %20
  store double 0.000000e+00, ptr %21, align 8, !tbaa !2
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ 0, %19 ], [ %28, %22 ]
  %24 = phi double [ 0.000000e+00, %19 ], [ %27, %22 ]
  %25 = getelementptr inbounds [240 x double], ptr %3, i32 %23, i32 %20
  %26 = load double, ptr %25, align 8, !tbaa !2
  %27 = fadd double %24, %26
  store double %27, ptr %21, align 8, !tbaa !2
  %28 = add nuw nsw i32 %23, 1
  %29 = icmp eq i32 %28, 260
  br i1 %29, label %30, label %22, !llvm.loop !10

30:                                               ; preds = %22
  %31 = fdiv double %27, 2.600000e+02
  store double %31, ptr %21, align 8, !tbaa !2
  %32 = add nuw nsw i32 %20, 1
  %33 = icmp eq i32 %32, 240
  br i1 %33, label %34, label %19, !llvm.loop !11

34:                                               ; preds = %30, %45
  %35 = phi i32 [ %46, %45 ], [ 0, %30 ]
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ 0, %34 ], [ %43, %36 ]
  %38 = getelementptr inbounds double, ptr %5, i32 %37
  %39 = load double, ptr %38, align 8, !tbaa !2
  %40 = getelementptr inbounds [240 x double], ptr %3, i32 %35, i32 %37
  %41 = load double, ptr %40, align 8, !tbaa !2
  %42 = fsub double %41, %39
  store double %42, ptr %40, align 8, !tbaa !2
  %43 = add nuw nsw i32 %37, 1
  %44 = icmp eq i32 %43, 240
  br i1 %44, label %45, label %36, !llvm.loop !12

45:                                               ; preds = %36
  %46 = add nuw nsw i32 %35, 1
  %47 = icmp eq i32 %46, 260
  br i1 %47, label %48, label %34, !llvm.loop !13

48:                                               ; preds = %45, %68
  %49 = phi i32 [ %69, %68 ], [ 0, %45 ]
  br label %50

50:                                               ; preds = %63, %48
  %51 = phi i32 [ %49, %48 ], [ %66, %63 ]
  %52 = getelementptr inbounds [240 x double], ptr %4, i32 %49, i32 %51
  store double 0.000000e+00, ptr %52, align 8, !tbaa !2
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ 0, %50 ], [ %61, %53 ]
  %55 = phi double [ 0.000000e+00, %50 ], [ %60, %53 ]
  %56 = getelementptr inbounds [240 x double], ptr %3, i32 %54, i32 %49
  %57 = load double, ptr %56, align 8, !tbaa !2
  %58 = getelementptr inbounds [240 x double], ptr %3, i32 %54, i32 %51
  %59 = load double, ptr %58, align 8, !tbaa !2
  %60 = tail call double @llvm.fmuladd.f64(double %57, double %59, double %55)
  store double %60, ptr %52, align 8, !tbaa !2
  %61 = add nuw nsw i32 %54, 1
  %62 = icmp eq i32 %61, 260
  br i1 %62, label %63, label %53, !llvm.loop !14

63:                                               ; preds = %53
  %64 = fdiv double %60, 2.590000e+02
  store double %64, ptr %52, align 8, !tbaa !2
  %65 = getelementptr inbounds [240 x double], ptr %4, i32 %51, i32 %49
  store double %64, ptr %65, align 8, !tbaa !2
  %66 = add nuw nsw i32 %51, 1
  %67 = icmp eq i32 %66, 240
  br i1 %67, label %68, label %50, !llvm.loop !15

68:                                               ; preds = %63
  %69 = add nuw nsw i32 %49, 1
  %70 = icmp eq i32 %69, 240
  br i1 %70, label %71, label %48, !llvm.loop !16

71:                                               ; preds = %68
  %72 = load ptr, ptr @stderr, align 4, !tbaa !17
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str) #3
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %75

75:                                               ; preds = %91, %71
  %76 = phi i32 [ 0, %71 ], [ %92, %91 ]
  %77 = mul nuw nsw i32 %76, 240
  br label %78

78:                                               ; preds = %85, %75
  %79 = phi i32 [ 0, %75 ], [ %89, %85 ]
  %80 = add nuw nsw i32 %79, %77
  %81 = urem i32 %80, 20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.3) #3
  br label %85

85:                                               ; preds = %83, %78
  %86 = getelementptr inbounds [240 x double], ptr %4, i32 %76, i32 %79
  %87 = load double, ptr %86, align 8, !tbaa !2
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.4, double noundef %87) #3
  %89 = add nuw nsw i32 %79, 1
  %90 = icmp eq i32 %89, 240
  br i1 %90, label %91, label %78, !llvm.loop !19

91:                                               ; preds = %85
  %92 = add nuw nsw i32 %76, 1
  %93 = icmp eq i32 %92, 240
  br i1 %93, label %94, label %75, !llvm.loop !20

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef nonnull %4) #3
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
!16 = distinct !{!16, !7, !8}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !4, i64 0}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
