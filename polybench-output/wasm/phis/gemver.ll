; ModuleID = './polybench-output/wasm/phis/gemver.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/gemver/gemver.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %10 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %11 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  br label %14

12:                                               ; preds = %33
  %13 = icmp eq i32 %18, 400
  br i1 %13, label %42, label %14, !llvm.loop !2

14:                                               ; preds = %12, %2
  %15 = phi i32 [ 0, %2 ], [ %18, %12 ]
  %16 = uitofp nneg i32 %15 to double
  %17 = getelementptr inbounds double, ptr %4, i32 %15
  store double %16, ptr %17, align 8, !tbaa !5
  %18 = add nuw nsw i32 %15, 1
  %19 = uitofp nneg i32 %18 to double
  %20 = fdiv double %19, 4.000000e+02
  %21 = fmul double %20, 5.000000e-01
  %22 = getelementptr inbounds double, ptr %6, i32 %15
  store double %21, ptr %22, align 8, !tbaa !5
  %23 = fmul double %20, 2.500000e-01
  %24 = getelementptr inbounds double, ptr %5, i32 %15
  store double %23, ptr %24, align 8, !tbaa !5
  %25 = fdiv double %20, 6.000000e+00
  %26 = getelementptr inbounds double, ptr %7, i32 %15
  store double %25, ptr %26, align 8, !tbaa !5
  %27 = fmul double %20, 1.250000e-01
  %28 = getelementptr inbounds double, ptr %10, i32 %15
  store double %27, ptr %28, align 8, !tbaa !5
  %29 = fdiv double %20, 9.000000e+00
  %30 = getelementptr inbounds double, ptr %11, i32 %15
  store double %29, ptr %30, align 8, !tbaa !5
  %31 = getelementptr inbounds double, ptr %9, i32 %15
  store double 0.000000e+00, ptr %31, align 8, !tbaa !5
  %32 = getelementptr inbounds double, ptr %8, i32 %15
  store double 0.000000e+00, ptr %32, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %33, %14
  %34 = phi i32 [ 0, %14 ], [ %40, %33 ]
  %35 = mul nuw nsw i32 %34, %15
  %36 = urem i32 %35, 400
  %37 = uitofp nneg i32 %36 to double
  %38 = fdiv double %37, 4.000000e+02
  %39 = getelementptr inbounds [400 x double], ptr %3, i32 %15, i32 %34
  store double %38, ptr %39, align 8, !tbaa !5
  %40 = add nuw nsw i32 %34, 1
  %41 = icmp eq i32 %40, 400
  br i1 %41, label %12, label %33, !llvm.loop !9

42:                                               ; preds = %12, %60
  %43 = phi i32 [ %61, %60 ], [ 0, %12 ]
  %44 = getelementptr inbounds double, ptr %4, i32 %43
  %45 = getelementptr inbounds double, ptr %6, i32 %43
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi i32 [ 0, %42 ], [ %58, %46 ]
  %48 = getelementptr inbounds [400 x double], ptr %3, i32 %43, i32 %47
  %49 = load double, ptr %48, align 8, !tbaa !5
  %50 = load double, ptr %44, align 8, !tbaa !5
  %51 = getelementptr inbounds double, ptr %5, i32 %47
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = tail call double @llvm.fmuladd.f64(double %50, double %52, double %49)
  %54 = load double, ptr %45, align 8, !tbaa !5
  %55 = getelementptr inbounds double, ptr %7, i32 %47
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = tail call double @llvm.fmuladd.f64(double %54, double %56, double %53)
  store double %57, ptr %48, align 8, !tbaa !5
  %58 = add nuw nsw i32 %47, 1
  %59 = icmp eq i32 %58, 400
  br i1 %59, label %60, label %46, !llvm.loop !10

60:                                               ; preds = %46
  %61 = add nuw nsw i32 %43, 1
  %62 = icmp eq i32 %61, 400
  br i1 %62, label %63, label %42, !llvm.loop !11

63:                                               ; preds = %60, %78
  %64 = phi i32 [ %79, %78 ], [ 0, %60 ]
  %65 = getelementptr inbounds double, ptr %9, i32 %64
  %66 = load double, ptr %65, align 8, !tbaa !5
  br label %67

67:                                               ; preds = %67, %63
  %68 = phi i32 [ 0, %63 ], [ %76, %67 ]
  %69 = phi double [ %66, %63 ], [ %75, %67 ]
  %70 = getelementptr inbounds [400 x double], ptr %3, i32 %68, i32 %64
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = fmul double %71, 1.200000e+00
  %73 = getelementptr inbounds double, ptr %10, i32 %68
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = tail call double @llvm.fmuladd.f64(double %72, double %74, double %69)
  store double %75, ptr %65, align 8, !tbaa !5
  %76 = add nuw nsw i32 %68, 1
  %77 = icmp eq i32 %76, 400
  br i1 %77, label %78, label %67, !llvm.loop !12

78:                                               ; preds = %67
  %79 = add nuw nsw i32 %64, 1
  %80 = icmp eq i32 %79, 400
  br i1 %80, label %81, label %63, !llvm.loop !13

81:                                               ; preds = %78, %81
  %82 = phi i32 [ %88, %81 ], [ 0, %78 ]
  %83 = getelementptr inbounds double, ptr %9, i32 %82
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = getelementptr inbounds double, ptr %11, i32 %82
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = fadd double %84, %86
  store double %87, ptr %83, align 8, !tbaa !5
  %88 = add nuw nsw i32 %82, 1
  %89 = icmp eq i32 %88, 400
  br i1 %89, label %90, label %81, !llvm.loop !14

90:                                               ; preds = %81, %105
  %91 = phi i32 [ %106, %105 ], [ 0, %81 ]
  %92 = getelementptr inbounds double, ptr %8, i32 %91
  %93 = load double, ptr %92, align 8, !tbaa !5
  br label %94

94:                                               ; preds = %94, %90
  %95 = phi i32 [ 0, %90 ], [ %103, %94 ]
  %96 = phi double [ %93, %90 ], [ %102, %94 ]
  %97 = getelementptr inbounds [400 x double], ptr %3, i32 %91, i32 %95
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = fmul double %98, 1.500000e+00
  %100 = getelementptr inbounds double, ptr %9, i32 %95
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = tail call double @llvm.fmuladd.f64(double %99, double %101, double %96)
  store double %102, ptr %92, align 8, !tbaa !5
  %103 = add nuw nsw i32 %95, 1
  %104 = icmp eq i32 %103, 400
  br i1 %104, label %105, label %94, !llvm.loop !15

105:                                              ; preds = %94
  %106 = add nuw nsw i32 %91, 1
  %107 = icmp eq i32 %106, 400
  br i1 %107, label %108, label %90, !llvm.loop !16

108:                                              ; preds = %105
  %109 = load ptr, ptr @stderr, align 4, !tbaa !17
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str) #3
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %112

112:                                              ; preds = %119, %108
  %113 = phi i32 [ 0, %108 ], [ %123, %119 ]
  %114 = trunc nuw i32 %113 to i16
  %115 = urem i16 %114, 20
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.3) #3
  br label %119

119:                                              ; preds = %117, %112
  %120 = getelementptr inbounds double, ptr %8, i32 %113
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.4, double noundef %121) #3
  %123 = add nuw nsw i32 %113, 1
  %124 = icmp eq i32 %123, 400
  br i1 %124, label %125, label %112, !llvm.loop !19

125:                                              ; preds = %119
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef %5) #3
  tail call void @free(ptr noundef %6) #3
  tail call void @free(ptr noundef %7) #3
  tail call void @free(ptr noundef nonnull %8) #3
  tail call void @free(ptr noundef %9) #3
  tail call void @free(ptr noundef %10) #3
  tail call void @free(ptr noundef %11) #3
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
!14 = distinct !{!14, !3, !4}
!15 = distinct !{!15, !3, !4}
!16 = distinct !{!16, !3, !4}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !3, !4}
