; ModuleID = './polybench-output/wasm/phis/doitgen.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/doitgen/doitgen.c"
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define hidden void @kernel_doitgen(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %6
  %9 = icmp sgt i32 %1, 0
  %10 = icmp sgt i32 %2, 0
  br label %11

11:                                               ; preds = %8, %42
  %12 = phi i32 [ 0, %8 ], [ %43, %42 ]
  br i1 %9, label %13, label %42

13:                                               ; preds = %11, %39
  %14 = phi i32 [ %40, %39 ], [ 0, %11 ]
  br i1 %10, label %16, label %39

15:                                               ; preds = %29
  br i1 %10, label %32, label %39

16:                                               ; preds = %13, %29
  %17 = phi i32 [ %30, %29 ], [ 0, %13 ]
  %18 = getelementptr inbounds double, ptr %5, i32 %17
  store double 0.000000e+00, ptr %18, align 8, !tbaa !2
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi double [ 0.000000e+00, %16 ], [ %26, %19 ]
  %21 = phi i32 [ 0, %16 ], [ %27, %19 ]
  %22 = getelementptr inbounds [40 x [60 x double]], ptr %3, i32 %12, i32 %14, i32 %21
  %23 = load double, ptr %22, align 8, !tbaa !2
  %24 = getelementptr inbounds [60 x double], ptr %4, i32 %21, i32 %17
  %25 = load double, ptr %24, align 8, !tbaa !2
  %26 = tail call double @llvm.fmuladd.f64(double %23, double %25, double %20)
  store double %26, ptr %18, align 8, !tbaa !2
  %27 = add nuw nsw i32 %21, 1
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %19, !llvm.loop !6

29:                                               ; preds = %19
  %30 = add nuw nsw i32 %17, 1
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %15, label %16, !llvm.loop !9

32:                                               ; preds = %15, %32
  %33 = phi i32 [ %37, %32 ], [ 0, %15 ]
  %34 = getelementptr inbounds double, ptr %5, i32 %33
  %35 = load double, ptr %34, align 8, !tbaa !2
  %36 = getelementptr inbounds [40 x [60 x double]], ptr %3, i32 %12, i32 %14, i32 %33
  store double %35, ptr %36, align 8, !tbaa !2
  %37 = add nuw nsw i32 %33, 1
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %32, !llvm.loop !10

39:                                               ; preds = %32, %13, %15
  %40 = add nuw nsw i32 %14, 1
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %42, label %13, !llvm.loop !11

42:                                               ; preds = %39, %11
  %43 = add nuw nsw i32 %12, 1
  %44 = icmp eq i32 %43, %0
  br i1 %44, label %45, label %11, !llvm.loop !12

45:                                               ; preds = %42, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 120000, i32 noundef 8) #4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 60, i32 noundef 8) #4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 3600, i32 noundef 8) #4
  br label %6

6:                                                ; preds = %23, %2
  %7 = phi i32 [ 0, %2 ], [ %24, %23 ]
  br label %8

8:                                                ; preds = %20, %6
  %9 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %10 = mul nuw nsw i32 %9, %7
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ 0, %8 ], [ %18, %11 ]
  %13 = add nuw nsw i32 %12, %10
  %14 = urem i32 %13, 60
  %15 = uitofp nneg i32 %14 to double
  %16 = fdiv double %15, 6.000000e+01
  %17 = getelementptr inbounds [40 x [60 x double]], ptr %3, i32 %7, i32 %9, i32 %12
  store double %16, ptr %17, align 8, !tbaa !2
  %18 = add nuw nsw i32 %12, 1
  %19 = icmp eq i32 %18, 60
  br i1 %19, label %20, label %11, !llvm.loop !13

20:                                               ; preds = %11
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp eq i32 %21, 40
  br i1 %22, label %23, label %8, !llvm.loop !14

23:                                               ; preds = %20
  %24 = add nuw nsw i32 %7, 1
  %25 = icmp eq i32 %24, 50
  br i1 %25, label %26, label %6, !llvm.loop !15

26:                                               ; preds = %23, %37
  %27 = phi i32 [ %38, %37 ], [ 0, %23 ]
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %35, %28 ]
  %30 = mul nuw nsw i32 %29, %27
  %31 = urem i32 %30, 60
  %32 = uitofp nneg i32 %31 to double
  %33 = fdiv double %32, 6.000000e+01
  %34 = getelementptr inbounds [60 x double], ptr %5, i32 %27, i32 %29
  store double %33, ptr %34, align 8, !tbaa !2
  %35 = add nuw nsw i32 %29, 1
  %36 = icmp eq i32 %35, 60
  br i1 %36, label %37, label %28, !llvm.loop !16

37:                                               ; preds = %28
  %38 = add nuw nsw i32 %27, 1
  %39 = icmp eq i32 %38, 60
  br i1 %39, label %40, label %26, !llvm.loop !17

40:                                               ; preds = %37, %70
  %41 = phi i32 [ %71, %70 ], [ 0, %37 ]
  br label %42

42:                                               ; preds = %67, %40
  %43 = phi i32 [ %68, %67 ], [ 0, %40 ]
  br label %44

44:                                               ; preds = %57, %42
  %45 = phi i32 [ %58, %57 ], [ 0, %42 ]
  %46 = getelementptr inbounds double, ptr %4, i32 %45
  store double 0.000000e+00, ptr %46, align 8, !tbaa !2
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi double [ 0.000000e+00, %44 ], [ %54, %47 ]
  %49 = phi i32 [ 0, %44 ], [ %55, %47 ]
  %50 = getelementptr inbounds [40 x [60 x double]], ptr %3, i32 %41, i32 %43, i32 %49
  %51 = load double, ptr %50, align 8, !tbaa !2
  %52 = getelementptr inbounds [60 x double], ptr %5, i32 %49, i32 %45
  %53 = load double, ptr %52, align 8, !tbaa !2
  %54 = tail call double @llvm.fmuladd.f64(double %51, double %53, double %48)
  store double %54, ptr %46, align 8, !tbaa !2
  %55 = add nuw nsw i32 %49, 1
  %56 = icmp eq i32 %55, 60
  br i1 %56, label %57, label %47, !llvm.loop !6

57:                                               ; preds = %47
  %58 = add nuw nsw i32 %45, 1
  %59 = icmp eq i32 %58, 60
  br i1 %59, label %60, label %44, !llvm.loop !9

60:                                               ; preds = %57, %60
  %61 = phi i32 [ %65, %60 ], [ 0, %57 ]
  %62 = getelementptr inbounds double, ptr %4, i32 %61
  %63 = load double, ptr %62, align 8, !tbaa !2
  %64 = getelementptr inbounds [40 x [60 x double]], ptr %3, i32 %41, i32 %43, i32 %61
  store double %63, ptr %64, align 8, !tbaa !2
  %65 = add nuw nsw i32 %61, 1
  %66 = icmp eq i32 %65, 60
  br i1 %66, label %67, label %60, !llvm.loop !10

67:                                               ; preds = %60
  %68 = add nuw nsw i32 %43, 1
  %69 = icmp eq i32 %68, 40
  br i1 %69, label %70, label %42, !llvm.loop !11

70:                                               ; preds = %67
  %71 = add nuw nsw i32 %41, 1
  %72 = icmp eq i32 %71, 50
  br i1 %72, label %73, label %40, !llvm.loop !12

73:                                               ; preds = %70
  %74 = load ptr, ptr @stderr, align 4, !tbaa !18
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str) #4
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %77

77:                                               ; preds = %100, %73
  %78 = phi i32 [ 0, %73 ], [ %101, %100 ]
  %79 = mul nuw nsw i32 %78, 2400
  br label %80

80:                                               ; preds = %97, %77
  %81 = phi i32 [ 0, %77 ], [ %98, %97 ]
  %82 = mul nuw nsw i32 %81, 60
  %83 = add nuw nsw i32 %82, %79
  br label %84

84:                                               ; preds = %91, %80
  %85 = phi i32 [ 0, %80 ], [ %95, %91 ]
  %86 = add nuw nsw i32 %83, %85
  %87 = urem i32 %86, 20
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.3) #4
  br label %91

91:                                               ; preds = %89, %84
  %92 = getelementptr inbounds [40 x [60 x double]], ptr %3, i32 %78, i32 %81, i32 %85
  %93 = load double, ptr %92, align 8, !tbaa !2
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.4, double noundef %93) #4
  %95 = add nuw nsw i32 %85, 1
  %96 = icmp eq i32 %95, 60
  br i1 %96, label %97, label %84, !llvm.loop !20

97:                                               ; preds = %91
  %98 = add nuw nsw i32 %81, 1
  %99 = icmp eq i32 %98, 40
  br i1 %99, label %100, label %80, !llvm.loop !21

100:                                              ; preds = %97
  %101 = add nuw nsw i32 %78, 1
  %102 = icmp eq i32 %101, 50
  br i1 %102, label %103, label %77, !llvm.loop !22

103:                                              ; preds = %100
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.6) #4
  tail call void @free(ptr noundef nonnull %3) #4
  tail call void @free(ptr noundef %4) #4
  tail call void @free(ptr noundef %5) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @free(ptr noundef) local_unnamed_addr #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
!22 = distinct !{!22, !7, !8}
