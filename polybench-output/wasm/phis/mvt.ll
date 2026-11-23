; ModuleID = './polybench-output/wasm/phis/mvt.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/mvt/mvt.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  br label %9

8:                                                ; preds = %32
  br i1 %15, label %41, label %9, !llvm.loop !2

9:                                                ; preds = %8, %2
  %10 = phi i32 [ 0, %2 ], [ %14, %8 ]
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double %11, 4.000000e+02
  %13 = getelementptr inbounds double, ptr %4, i32 %10
  store double %12, ptr %13, align 8, !tbaa !5
  %14 = add nuw nsw i32 %10, 1
  %15 = icmp eq i32 %14, 400
  %16 = select i1 %15, i32 0, i32 %14
  %17 = uitofp nneg i32 %16 to double
  %18 = fdiv double %17, 4.000000e+02
  %19 = getelementptr inbounds double, ptr %5, i32 %10
  store double %18, ptr %19, align 8, !tbaa !5
  %20 = icmp ult i32 %10, 397
  %21 = select i1 %20, i32 3, i32 -397
  %22 = add nsw i32 %21, %10
  %23 = uitofp nneg i32 %22 to double
  %24 = fdiv double %23, 4.000000e+02
  %25 = getelementptr inbounds double, ptr %6, i32 %10
  store double %24, ptr %25, align 8, !tbaa !5
  %26 = icmp ult i32 %10, 396
  %27 = select i1 %26, i32 4, i32 -396
  %28 = add nsw i32 %27, %10
  %29 = uitofp nneg i32 %28 to double
  %30 = fdiv double %29, 4.000000e+02
  %31 = getelementptr inbounds double, ptr %7, i32 %10
  store double %30, ptr %31, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %32, %9
  %33 = phi i32 [ 0, %9 ], [ %39, %32 ]
  %34 = mul nuw nsw i32 %33, %10
  %35 = urem i32 %34, 400
  %36 = uitofp nneg i32 %35 to double
  %37 = fdiv double %36, 4.000000e+02
  %38 = getelementptr inbounds [400 x double], ptr %3, i32 %10, i32 %33
  store double %37, ptr %38, align 8, !tbaa !5
  %39 = add nuw nsw i32 %33, 1
  %40 = icmp eq i32 %39, 400
  br i1 %40, label %8, label %32, !llvm.loop !9

41:                                               ; preds = %8, %55
  %42 = phi i32 [ %56, %55 ], [ 0, %8 ]
  %43 = getelementptr inbounds double, ptr %4, i32 %42
  %44 = load double, ptr %43, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %45, %41
  %46 = phi i32 [ 0, %41 ], [ %53, %45 ]
  %47 = phi double [ %44, %41 ], [ %52, %45 ]
  %48 = getelementptr inbounds [400 x double], ptr %3, i32 %42, i32 %46
  %49 = load double, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds double, ptr %6, i32 %46
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = tail call double @llvm.fmuladd.f64(double %49, double %51, double %47)
  store double %52, ptr %43, align 8, !tbaa !5
  %53 = add nuw nsw i32 %46, 1
  %54 = icmp eq i32 %53, 400
  br i1 %54, label %55, label %45, !llvm.loop !10

55:                                               ; preds = %45
  %56 = add nuw nsw i32 %42, 1
  %57 = icmp eq i32 %56, 400
  br i1 %57, label %58, label %41, !llvm.loop !11

58:                                               ; preds = %55, %72
  %59 = phi i32 [ %73, %72 ], [ 0, %55 ]
  %60 = getelementptr inbounds double, ptr %5, i32 %59
  %61 = load double, ptr %60, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %62, %58
  %63 = phi i32 [ 0, %58 ], [ %70, %62 ]
  %64 = phi double [ %61, %58 ], [ %69, %62 ]
  %65 = getelementptr inbounds [400 x double], ptr %3, i32 %63, i32 %59
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds double, ptr %7, i32 %63
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = tail call double @llvm.fmuladd.f64(double %66, double %68, double %64)
  store double %69, ptr %60, align 8, !tbaa !5
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 400
  br i1 %71, label %72, label %62, !llvm.loop !12

72:                                               ; preds = %62
  %73 = add nuw nsw i32 %59, 1
  %74 = icmp eq i32 %73, 400
  br i1 %74, label %75, label %58, !llvm.loop !13

75:                                               ; preds = %72
  %76 = load ptr, ptr @stderr, align 4, !tbaa !14
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str) #3
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %79

79:                                               ; preds = %86, %75
  %80 = phi i32 [ 0, %75 ], [ %90, %86 ]
  %81 = trunc nuw i32 %80 to i16
  %82 = urem i16 %81, 20
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.3) #3
  br label %86

86:                                               ; preds = %84, %79
  %87 = getelementptr inbounds double, ptr %4, i32 %80
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.4, double noundef %88) #3
  %90 = add nuw nsw i32 %80, 1
  %91 = icmp eq i32 %90, 400
  br i1 %91, label %92, label %79, !llvm.loop !16

92:                                               ; preds = %86
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #3
  br label %95

95:                                               ; preds = %102, %92
  %96 = phi i32 [ 0, %92 ], [ %106, %102 ]
  %97 = trunc nuw i32 %96 to i16
  %98 = urem i16 %97, 20
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.3) #3
  br label %102

102:                                              ; preds = %100, %95
  %103 = getelementptr inbounds double, ptr %5, i32 %96
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.4, double noundef %104) #3
  %106 = add nuw nsw i32 %96, 1
  %107 = icmp eq i32 %106, 400
  br i1 %107, label %108, label %95, !llvm.loop !17

108:                                              ; preds = %102
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.7) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef nonnull %5) #3
  tail call void @free(ptr noundef %6) #3
  tail call void @free(ptr noundef %7) #3
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
!2 = distinct !{!2, !3, !4}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.unroll.disable"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !3, !4}
!10 = distinct !{!10, !3, !4}
!11 = distinct !{!11, !3, !4}
!12 = distinct !{!12, !3, !4}
!13 = distinct !{!13, !3, !4}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = distinct !{!16, !3, !4}
!17 = distinct !{!17, !3, !4}
