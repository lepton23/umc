; ModuleID = './polybench-output/wasm/phis/seidel-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/seidel-2d/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %6 = uitofp nneg i32 %5 to double
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ 0, %4 ], [ %14, %7 ]
  %9 = add nuw nsw i32 %8, 2
  %10 = uitofp nneg i32 %9 to double
  %11 = tail call double @llvm.fmuladd.f64(double %6, double %10, double 2.000000e+00)
  %12 = fdiv double %11, 4.000000e+02
  %13 = getelementptr inbounds [400 x double], ptr %3, i32 %5, i32 %8
  store double %12, ptr %13, align 8, !tbaa !2
  %14 = add nuw nsw i32 %8, 1
  %15 = icmp eq i32 %14, 400
  br i1 %15, label %16, label %7, !llvm.loop !6

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %5, 1
  %18 = icmp eq i32 %17, 400
  br i1 %18, label %19, label %4, !llvm.loop !9

19:                                               ; preds = %16, %64
  %20 = phi i32 [ %65, %64 ], [ 0, %16 ]
  br label %21

21:                                               ; preds = %61, %19
  %22 = phi i32 [ 1, %19 ], [ %62, %61 ]
  %23 = getelementptr [400 x double], ptr %3, i32 %22
  %24 = getelementptr i8, ptr %23, i32 -3200
  %25 = getelementptr inbounds i8, ptr %23, i32 3200
  %26 = load double, ptr %24, align 8, !tbaa !2
  %27 = getelementptr i8, ptr %23, i32 -3192
  %28 = load double, ptr %27, align 8, !tbaa !2
  %29 = load double, ptr %23, align 8, !tbaa !2
  %30 = getelementptr inbounds [400 x double], ptr %3, i32 %22, i32 1
  %31 = load double, ptr %30, align 8, !tbaa !2
  %32 = load double, ptr %25, align 8, !tbaa !2
  %33 = getelementptr inbounds i8, ptr %23, i32 3208
  %34 = load double, ptr %33, align 8, !tbaa !2
  br label %35

35:                                               ; preds = %35, %21
  %36 = phi double [ %34, %21 ], [ %57, %35 ]
  %37 = phi double [ %32, %21 ], [ %36, %35 ]
  %38 = phi double [ %31, %21 ], [ %52, %35 ]
  %39 = phi double [ %29, %21 ], [ %59, %35 ]
  %40 = phi double [ %28, %21 ], [ %46, %35 ]
  %41 = phi double [ %26, %21 ], [ %40, %35 ]
  %42 = phi i32 [ 1, %21 ], [ %44, %35 ]
  %43 = fadd double %40, %41
  %44 = add nuw nsw i32 %42, 1
  %45 = getelementptr inbounds [400 x double], ptr %24, i32 0, i32 %44
  %46 = load double, ptr %45, align 8, !tbaa !2
  %47 = fadd double %43, %46
  %48 = fadd double %39, %47
  %49 = getelementptr inbounds [400 x double], ptr %3, i32 %22, i32 %42
  %50 = fadd double %38, %48
  %51 = getelementptr inbounds [400 x double], ptr %3, i32 %22, i32 %44
  %52 = load double, ptr %51, align 8, !tbaa !2
  %53 = fadd double %52, %50
  %54 = fadd double %37, %53
  %55 = fadd double %36, %54
  %56 = getelementptr inbounds [400 x double], ptr %25, i32 0, i32 %44
  %57 = load double, ptr %56, align 8, !tbaa !2
  %58 = fadd double %57, %55
  %59 = fdiv double %58, 9.000000e+00
  store double %59, ptr %49, align 8, !tbaa !2
  %60 = icmp eq i32 %44, 399
  br i1 %60, label %61, label %35, !llvm.loop !10

61:                                               ; preds = %35
  %62 = add nuw nsw i32 %22, 1
  %63 = icmp eq i32 %62, 399
  br i1 %63, label %64, label %21, !llvm.loop !11

64:                                               ; preds = %61
  %65 = add nuw nsw i32 %20, 1
  %66 = icmp eq i32 %65, 100
  br i1 %66, label %67, label %19, !llvm.loop !12

67:                                               ; preds = %64
  %68 = load ptr, ptr @stderr, align 4, !tbaa !13
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str) #3
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %71

71:                                               ; preds = %87, %67
  %72 = phi i32 [ 0, %67 ], [ %88, %87 ]
  %73 = mul nuw nsw i32 %72, 400
  br label %74

74:                                               ; preds = %81, %71
  %75 = phi i32 [ 0, %71 ], [ %85, %81 ]
  %76 = add nuw nsw i32 %75, %73
  %77 = urem i32 %76, 20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.3) #3
  br label %81

81:                                               ; preds = %79, %74
  %82 = getelementptr inbounds [400 x double], ptr %3, i32 %72, i32 %75
  %83 = load double, ptr %82, align 8, !tbaa !2
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.4, double noundef %83) #3
  %85 = add nuw nsw i32 %75, 1
  %86 = icmp eq i32 %85, 400
  br i1 %86, label %87, label %74, !llvm.loop !15

87:                                               ; preds = %81
  %88 = add nuw nsw i32 %72, 1
  %89 = icmp eq i32 %88, 400
  br i1 %89, label %90, label %71, !llvm.loop !16

90:                                               ; preds = %87
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef nonnull %3) #3
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
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = distinct !{!15, !7, !8}
!16 = distinct !{!16, !7, !8}
