; ModuleID = './polybench-output/wasm/phis/trmm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/trmm/trmm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  br label %5

5:                                                ; preds = %29, %2
  %6 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %15, %8 ], [ 0, %5 ]
  %10 = add nuw nsw i32 %9, %6
  %11 = urem i32 %10, 200
  %12 = uitofp nneg i32 %11 to double
  %13 = fdiv double %12, 2.000000e+02
  %14 = getelementptr inbounds [200 x double], ptr %3, i32 %6, i32 %9
  store double %13, ptr %14, align 8, !tbaa !2
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !6

17:                                               ; preds = %8, %5
  %18 = getelementptr inbounds [200 x double], ptr %3, i32 %6, i32 %6
  store double 1.000000e+00, ptr %18, align 8, !tbaa !2
  %19 = add nuw nsw i32 %6, 240
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ 0, %17 ], [ %27, %20 ]
  %22 = sub nuw nsw i32 %19, %21
  %23 = urem i32 %22, 240
  %24 = uitofp nneg i32 %23 to double
  %25 = fdiv double %24, 2.400000e+02
  %26 = getelementptr inbounds [240 x double], ptr %4, i32 %6, i32 %21
  store double %25, ptr %26, align 8, !tbaa !2
  %27 = add nuw nsw i32 %21, 1
  %28 = icmp eq i32 %27, 240
  br i1 %28, label %29, label %20, !llvm.loop !9

29:                                               ; preds = %20
  %30 = add nuw nsw i32 %6, 1
  %31 = icmp eq i32 %30, 200
  br i1 %31, label %32, label %5, !llvm.loop !10

32:                                               ; preds = %29, %54
  %33 = phi i32 [ %55, %54 ], [ 0, %29 ]
  %34 = icmp ult i32 %33, 199
  br label %35

35:                                               ; preds = %49, %32
  %36 = phi i32 [ 0, %32 ], [ %52, %49 ]
  %37 = getelementptr inbounds [240 x double], ptr %4, i32 %33, i32 %36
  %38 = load double, ptr %37, align 8, !tbaa !2
  br i1 %34, label %39, label %49

39:                                               ; preds = %35, %39
  %40 = phi double [ %47, %39 ], [ %38, %35 ]
  %41 = phi i32 [ %42, %39 ], [ %33, %35 ]
  %42 = add nuw nsw i32 %41, 1
  %43 = getelementptr inbounds [200 x double], ptr %3, i32 %42, i32 %33
  %44 = load double, ptr %43, align 8, !tbaa !2
  %45 = getelementptr inbounds [240 x double], ptr %4, i32 %42, i32 %36
  %46 = load double, ptr %45, align 8, !tbaa !2
  %47 = tail call double @llvm.fmuladd.f64(double %44, double %46, double %40)
  store double %47, ptr %37, align 8, !tbaa !2
  %48 = icmp eq i32 %42, 199
  br i1 %48, label %49, label %39, !llvm.loop !11

49:                                               ; preds = %39, %35
  %50 = phi double [ %38, %35 ], [ %47, %39 ]
  %51 = fmul double %50, 1.500000e+00
  store double %51, ptr %37, align 8, !tbaa !2
  %52 = add nuw nsw i32 %36, 1
  %53 = icmp eq i32 %52, 240
  br i1 %53, label %54, label %35, !llvm.loop !12

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %33, 1
  %56 = icmp eq i32 %55, 200
  br i1 %56, label %57, label %32, !llvm.loop !13

57:                                               ; preds = %54
  %58 = load ptr, ptr @stderr, align 4, !tbaa !14
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str) #3
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %61

61:                                               ; preds = %77, %57
  %62 = phi i32 [ 0, %57 ], [ %78, %77 ]
  %63 = mul nuw nsw i32 %62, 200
  br label %64

64:                                               ; preds = %71, %61
  %65 = phi i32 [ 0, %61 ], [ %75, %71 ]
  %66 = add nuw nsw i32 %65, %63
  %67 = urem i32 %66, 20
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.3) #3
  br label %71

71:                                               ; preds = %69, %64
  %72 = getelementptr inbounds [240 x double], ptr %4, i32 %62, i32 %65
  %73 = load double, ptr %72, align 8, !tbaa !2
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.4, double noundef %73) #3
  %75 = add nuw nsw i32 %65, 1
  %76 = icmp eq i32 %75, 240
  br i1 %76, label %77, label %64, !llvm.loop !16

77:                                               ; preds = %71
  %78 = add nuw nsw i32 %62, 1
  %79 = icmp eq i32 %78, 200
  br i1 %79, label %80, label %61, !llvm.loop !17

80:                                               ; preds = %77
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef nonnull %4) #3
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
