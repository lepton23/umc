; ModuleID = './polybench-output/wasm/phis/gemm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/gemm/gemm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"checksum %.17g\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 44000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 52800, i32 noundef 8) #3
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i32 [ 0, %2 ], [ %19, %18 ]
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = mul nuw nsw i32 %9, %7
  %11 = add nuw nsw i32 %10, 1
  %12 = urem i32 %11, 200
  %13 = uitofp nneg i32 %12 to double
  %14 = fdiv double %13, 2.000000e+02
  %15 = getelementptr inbounds [220 x double], ptr %3, i32 %7, i32 %9
  store double %14, ptr %15, align 8, !tbaa !2
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 220
  br i1 %17, label %18, label %8, !llvm.loop !6

18:                                               ; preds = %8
  %19 = add nuw nsw i32 %7, 1
  %20 = icmp eq i32 %19, 200
  br i1 %20, label %21, label %6, !llvm.loop !9

21:                                               ; preds = %18, %32
  %22 = phi i32 [ %33, %32 ], [ 0, %18 ]
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %25, %23 ]
  %25 = add nuw nsw i32 %24, 1
  %26 = mul nuw nsw i32 %25, %22
  %27 = urem i32 %26, 240
  %28 = uitofp nneg i32 %27 to double
  %29 = fdiv double %28, 2.400000e+02
  %30 = getelementptr inbounds [240 x double], ptr %4, i32 %22, i32 %24
  store double %29, ptr %30, align 8, !tbaa !2
  %31 = icmp eq i32 %25, 240
  br i1 %31, label %32, label %23, !llvm.loop !10

32:                                               ; preds = %23
  %33 = add nuw nsw i32 %22, 1
  %34 = icmp eq i32 %33, 200
  br i1 %34, label %35, label %21, !llvm.loop !11

35:                                               ; preds = %32, %47
  %36 = phi i32 [ %48, %47 ], [ 0, %32 ]
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ 0, %35 ], [ %45, %37 ]
  %39 = add nuw nsw i32 %38, 2
  %40 = mul nuw nsw i32 %39, %36
  %41 = urem i32 %40, 220
  %42 = uitofp nneg i32 %41 to double
  %43 = fdiv double %42, 2.200000e+02
  %44 = getelementptr inbounds [220 x double], ptr %5, i32 %36, i32 %38
  store double %43, ptr %44, align 8, !tbaa !2
  %45 = add nuw nsw i32 %38, 1
  %46 = icmp eq i32 %45, 220
  br i1 %46, label %47, label %37, !llvm.loop !12

47:                                               ; preds = %37
  %48 = add nuw nsw i32 %36, 1
  %49 = icmp eq i32 %48, 240
  br i1 %49, label %50, label %35, !llvm.loop !13

50:                                               ; preds = %47, %76
  %51 = phi i32 [ %77, %76 ], [ 0, %47 ]
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi i32 [ 0, %50 ], [ %57, %52 ]
  %54 = getelementptr inbounds [220 x double], ptr %3, i32 %51, i32 %53
  %55 = load double, ptr %54, align 8, !tbaa !2
  %56 = fmul double %55, 1.200000e+00
  store double %56, ptr %54, align 8, !tbaa !2
  %57 = add nuw nsw i32 %53, 1
  %58 = icmp eq i32 %57, 220
  br i1 %58, label %59, label %52, !llvm.loop !14

59:                                               ; preds = %52, %73
  %60 = phi i32 [ %74, %73 ], [ 0, %52 ]
  %61 = getelementptr inbounds [240 x double], ptr %4, i32 %51, i32 %60
  br label %62

62:                                               ; preds = %62, %59
  %63 = phi i32 [ 0, %59 ], [ %71, %62 ]
  %64 = load double, ptr %61, align 8, !tbaa !2
  %65 = fmul double %64, 1.500000e+00
  %66 = getelementptr inbounds [220 x double], ptr %5, i32 %60, i32 %63
  %67 = load double, ptr %66, align 8, !tbaa !2
  %68 = getelementptr inbounds [220 x double], ptr %3, i32 %51, i32 %63
  %69 = load double, ptr %68, align 8, !tbaa !2
  %70 = tail call double @llvm.fmuladd.f64(double %65, double %67, double %69)
  store double %70, ptr %68, align 8, !tbaa !2
  %71 = add nuw nsw i32 %63, 1
  %72 = icmp eq i32 %71, 220
  br i1 %72, label %73, label %62, !llvm.loop !15

73:                                               ; preds = %62
  %74 = add nuw nsw i32 %60, 1
  %75 = icmp eq i32 %74, 240
  br i1 %75, label %76, label %59, !llvm.loop !16

76:                                               ; preds = %73
  %77 = add nuw nsw i32 %51, 1
  %78 = icmp eq i32 %77, 200
  br i1 %78, label %79, label %50, !llvm.loop !17

79:                                               ; preds = %76
  %80 = load ptr, ptr @stderr, align 4, !tbaa !18
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str) #3
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %83

83:                                               ; preds = %103, %79
  %84 = phi double [ 0.000000e+00, %79 ], [ %100, %103 ]
  %85 = phi i32 [ 0, %79 ], [ %104, %103 ]
  %86 = mul nuw nsw i32 %85, 200
  br label %87

87:                                               ; preds = %95, %83
  %88 = phi double [ %84, %83 ], [ %100, %95 ]
  %89 = phi i32 [ 0, %83 ], [ %101, %95 ]
  %90 = add nuw nsw i32 %89, %86
  %91 = urem i32 %90, 20
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.3) #3
  br label %95

95:                                               ; preds = %93, %87
  %96 = getelementptr inbounds [220 x double], ptr %3, i32 %85, i32 %89
  %97 = load double, ptr %96, align 8, !tbaa !2
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.4, double noundef %97) #3
  %99 = load double, ptr %96, align 8, !tbaa !2
  %100 = fadd double %88, %99
  %101 = add nuw nsw i32 %89, 1
  %102 = icmp eq i32 %101, 220
  br i1 %102, label %103, label %87, !llvm.loop !20

103:                                              ; preds = %95
  %104 = add nuw nsw i32 %85, 1
  %105 = icmp eq i32 %104, 200
  br i1 %105, label %106, label %83, !llvm.loop !21

106:                                              ; preds = %103
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.5, double noundef %100) #3
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #3
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.7) #3
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
!16 = distinct !{!16, !7, !8}
!17 = distinct !{!17, !7, !8}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
