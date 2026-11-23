; ModuleID = './polybench-output/wasm/phis/gesummv.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/gesummv/gesummv.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 250, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 250, i32 noundef 8) #3
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 250, i32 noundef 8) #3
  br label %8

8:                                                ; preds = %28, %2
  %9 = phi i32 [ 0, %2 ], [ %29, %28 ]
  %10 = uitofp nneg i32 %9 to double
  %11 = fdiv double %10, 2.500000e+02
  %12 = getelementptr inbounds double, ptr %6, i32 %9
  store double %11, ptr %12, align 8, !tbaa !2
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi i32 [ 0, %8 ], [ %26, %13 ]
  %15 = mul nuw nsw i32 %14, %9
  %16 = add nuw nsw i32 %15, 1
  %17 = urem i32 %16, 250
  %18 = uitofp nneg i32 %17 to double
  %19 = fdiv double %18, 2.500000e+02
  %20 = getelementptr inbounds [250 x double], ptr %3, i32 %9, i32 %14
  store double %19, ptr %20, align 8, !tbaa !2
  %21 = add nuw nsw i32 %15, 2
  %22 = urem i32 %21, 250
  %23 = uitofp nneg i32 %22 to double
  %24 = fdiv double %23, 2.500000e+02
  %25 = getelementptr inbounds [250 x double], ptr %4, i32 %9, i32 %14
  store double %24, ptr %25, align 8, !tbaa !2
  %26 = add nuw nsw i32 %14, 1
  %27 = icmp eq i32 %26, 250
  br i1 %27, label %28, label %13, !llvm.loop !6

28:                                               ; preds = %13
  %29 = add nuw nsw i32 %9, 1
  %30 = icmp eq i32 %29, 250
  br i1 %30, label %31, label %8, !llvm.loop !9

31:                                               ; preds = %28, %50
  %32 = phi i32 [ %54, %50 ], [ 0, %28 ]
  %33 = getelementptr inbounds double, ptr %5, i32 %32
  store double 0.000000e+00, ptr %33, align 8, !tbaa !2
  %34 = getelementptr inbounds double, ptr %7, i32 %32
  store double 0.000000e+00, ptr %34, align 8, !tbaa !2
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi i32 [ 0, %31 ], [ %48, %35 ]
  %37 = getelementptr inbounds [250 x double], ptr %3, i32 %32, i32 %36
  %38 = load double, ptr %37, align 8, !tbaa !2
  %39 = getelementptr inbounds double, ptr %6, i32 %36
  %40 = load double, ptr %39, align 8, !tbaa !2
  %41 = load double, ptr %33, align 8, !tbaa !2
  %42 = tail call double @llvm.fmuladd.f64(double %38, double %40, double %41)
  store double %42, ptr %33, align 8, !tbaa !2
  %43 = getelementptr inbounds [250 x double], ptr %4, i32 %32, i32 %36
  %44 = load double, ptr %43, align 8, !tbaa !2
  %45 = load double, ptr %39, align 8, !tbaa !2
  %46 = load double, ptr %34, align 8, !tbaa !2
  %47 = tail call double @llvm.fmuladd.f64(double %44, double %45, double %46)
  store double %47, ptr %34, align 8, !tbaa !2
  %48 = add nuw nsw i32 %36, 1
  %49 = icmp eq i32 %48, 250
  br i1 %49, label %50, label %35, !llvm.loop !10

50:                                               ; preds = %35
  %51 = load double, ptr %33, align 8, !tbaa !2
  %52 = fmul double %47, 1.200000e+00
  %53 = tail call double @llvm.fmuladd.f64(double %51, double 1.500000e+00, double %52)
  store double %53, ptr %34, align 8, !tbaa !2
  %54 = add nuw nsw i32 %32, 1
  %55 = icmp eq i32 %54, 250
  br i1 %55, label %56, label %31, !llvm.loop !11

56:                                               ; preds = %50
  %57 = load ptr, ptr @stderr, align 4, !tbaa !12
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str) #3
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %60

60:                                               ; preds = %67, %56
  %61 = phi i32 [ 0, %56 ], [ %71, %67 ]
  %62 = trunc nuw i32 %61 to i8
  %63 = urem i8 %62, 20
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.3) #3
  br label %67

67:                                               ; preds = %65, %60
  %68 = getelementptr inbounds double, ptr %7, i32 %61
  %69 = load double, ptr %68, align 8, !tbaa !2
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.4, double noundef %69) #3
  %71 = add nuw nsw i32 %61, 1
  %72 = icmp eq i32 %71, 250
  br i1 %72, label %73, label %60, !llvm.loop !14

73:                                               ; preds = %67
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef %5) #3
  tail call void @free(ptr noundef %6) #3
  tail call void @free(ptr noundef nonnull %7) #3
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
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = distinct !{!14, !7, !8}
