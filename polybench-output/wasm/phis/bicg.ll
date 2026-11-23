; ModuleID = './polybench-output/wasm/phis/bicg.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/bicg/bicg.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 159900, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 390, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 410, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 390, i32 noundef 8) #3
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 410, i32 noundef 8) #3
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 0, %2 ], [ %13, %8 ]
  %10 = uitofp nneg i32 %9 to double
  %11 = fdiv double %10, 3.900000e+02
  %12 = getelementptr inbounds double, ptr %6, i32 %9
  store double %11, ptr %12, align 8, !tbaa !2
  %13 = add nuw nsw i32 %9, 1
  %14 = icmp eq i32 %13, 390
  br i1 %14, label %15, label %8, !llvm.loop !6

15:                                               ; preds = %8, %29
  %16 = phi i32 [ %30, %29 ], [ 0, %8 ]
  %17 = uitofp nneg i32 %16 to double
  %18 = fdiv double %17, 4.100000e+02
  %19 = getelementptr inbounds double, ptr %7, i32 %16
  store double %18, ptr %19, align 8, !tbaa !2
  br label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ 0, %15 ], [ %22, %20 ]
  %22 = add nuw nsw i32 %21, 1
  %23 = mul nuw nsw i32 %22, %16
  %24 = urem i32 %23, 410
  %25 = uitofp nneg i32 %24 to double
  %26 = fdiv double %25, 4.100000e+02
  %27 = getelementptr inbounds [390 x double], ptr %3, i32 %16, i32 %21
  store double %26, ptr %27, align 8, !tbaa !2
  %28 = icmp eq i32 %22, 390
  br i1 %28, label %29, label %20, !llvm.loop !9

29:                                               ; preds = %20
  %30 = add nuw nsw i32 %16, 1
  %31 = icmp eq i32 %30, 410
  br i1 %31, label %32, label %15, !llvm.loop !10

32:                                               ; preds = %29, %32
  %33 = phi i32 [ %35, %32 ], [ 0, %29 ]
  %34 = getelementptr inbounds double, ptr %4, i32 %33
  store double 0.000000e+00, ptr %34, align 8, !tbaa !2
  %35 = add nuw nsw i32 %33, 1
  %36 = icmp eq i32 %35, 390
  br i1 %36, label %37, label %32, !llvm.loop !11

37:                                               ; preds = %32, %56
  %38 = phi i32 [ %57, %56 ], [ 0, %32 ]
  %39 = getelementptr inbounds double, ptr %5, i32 %38
  store double 0.000000e+00, ptr %39, align 8, !tbaa !2
  %40 = getelementptr inbounds double, ptr %7, i32 %38
  br label %41

41:                                               ; preds = %41, %37
  %42 = phi i32 [ 0, %37 ], [ %54, %41 ]
  %43 = getelementptr inbounds double, ptr %4, i32 %42
  %44 = load double, ptr %43, align 8, !tbaa !2
  %45 = load double, ptr %40, align 8, !tbaa !2
  %46 = getelementptr inbounds [390 x double], ptr %3, i32 %38, i32 %42
  %47 = load double, ptr %46, align 8, !tbaa !2
  %48 = tail call double @llvm.fmuladd.f64(double %45, double %47, double %44)
  store double %48, ptr %43, align 8, !tbaa !2
  %49 = load double, ptr %39, align 8, !tbaa !2
  %50 = load double, ptr %46, align 8, !tbaa !2
  %51 = getelementptr inbounds double, ptr %6, i32 %42
  %52 = load double, ptr %51, align 8, !tbaa !2
  %53 = tail call double @llvm.fmuladd.f64(double %50, double %52, double %49)
  store double %53, ptr %39, align 8, !tbaa !2
  %54 = add nuw nsw i32 %42, 1
  %55 = icmp eq i32 %54, 390
  br i1 %55, label %56, label %41, !llvm.loop !12

56:                                               ; preds = %41
  %57 = add nuw nsw i32 %38, 1
  %58 = icmp eq i32 %57, 410
  br i1 %58, label %59, label %37, !llvm.loop !13

59:                                               ; preds = %56
  %60 = load ptr, ptr @stderr, align 4, !tbaa !14
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str) #3
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %63

63:                                               ; preds = %70, %59
  %64 = phi i32 [ 0, %59 ], [ %74, %70 ]
  %65 = trunc nuw i32 %64 to i16
  %66 = urem i16 %65, 20
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.3) #3
  br label %70

70:                                               ; preds = %68, %63
  %71 = getelementptr inbounds double, ptr %4, i32 %64
  %72 = load double, ptr %71, align 8, !tbaa !2
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.4, double noundef %72) #3
  %74 = add nuw nsw i32 %64, 1
  %75 = icmp eq i32 %74, 390
  br i1 %75, label %76, label %63, !llvm.loop !16

76:                                               ; preds = %70
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #3
  br label %79

79:                                               ; preds = %86, %76
  %80 = phi i32 [ 0, %76 ], [ %90, %86 ]
  %81 = trunc nuw i32 %80 to i16
  %82 = urem i16 %81, 20
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.3) #3
  br label %86

86:                                               ; preds = %84, %79
  %87 = getelementptr inbounds double, ptr %5, i32 %80
  %88 = load double, ptr %87, align 8, !tbaa !2
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.4, double noundef %88) #3
  %90 = add nuw nsw i32 %80, 1
  %91 = icmp eq i32 %90, 410
  br i1 %91, label %92, label %79, !llvm.loop !17

92:                                               ; preds = %86
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.7) #3
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
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = distinct !{!16, !7, !8}
!17 = distinct !{!17, !7, !8}
