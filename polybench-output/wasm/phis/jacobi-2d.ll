; ModuleID = './polybench-output/wasm/phis/jacobi-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-2d/jacobi-2d.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #3
  br label %5

5:                                                ; preds = %22, %2
  %6 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %7 = uitofp nneg i32 %6 to double
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i32 [ 0, %5 ], [ %20, %8 ]
  %10 = add nuw nsw i32 %9, 2
  %11 = uitofp nneg i32 %10 to double
  %12 = tail call double @llvm.fmuladd.f64(double %7, double %11, double 2.000000e+00)
  %13 = fdiv double %12, 2.500000e+02
  %14 = getelementptr inbounds [250 x double], ptr %3, i32 %6, i32 %9
  store double %13, ptr %14, align 8, !tbaa !2
  %15 = add nuw nsw i32 %9, 3
  %16 = uitofp nneg i32 %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %7, double %16, double 3.000000e+00)
  %18 = fdiv double %17, 2.500000e+02
  %19 = getelementptr inbounds [250 x double], ptr %4, i32 %6, i32 %9
  store double %18, ptr %19, align 8, !tbaa !2
  %20 = add nuw nsw i32 %9, 1
  %21 = icmp eq i32 %20, 250
  br i1 %21, label %22, label %8, !llvm.loop !6

22:                                               ; preds = %8
  %23 = add nuw nsw i32 %6, 1
  %24 = icmp eq i32 %23, 250
  br i1 %24, label %25, label %5, !llvm.loop !9

25:                                               ; preds = %22, %85
  %26 = phi i32 [ %86, %85 ], [ 0, %22 ]
  br label %27

27:                                               ; preds = %53, %25
  %28 = phi i32 [ 1, %25 ], [ %54, %53 ]
  %29 = getelementptr inbounds [250 x double], ptr %3, i32 %28
  %30 = getelementptr inbounds i8, ptr %29, i32 2000
  %31 = getelementptr i8, ptr %29, i32 -2000
  br label %32

32:                                               ; preds = %32, %27
  %33 = phi i32 [ 1, %27 ], [ %40, %32 ]
  %34 = getelementptr inbounds [250 x double], ptr %3, i32 %28, i32 %33
  %35 = load double, ptr %34, align 8, !tbaa !2
  %36 = add nsw i32 %33, -1
  %37 = getelementptr inbounds [250 x double], ptr %3, i32 %28, i32 %36
  %38 = load double, ptr %37, align 8, !tbaa !2
  %39 = fadd double %35, %38
  %40 = add nuw nsw i32 %33, 1
  %41 = getelementptr inbounds [250 x double], ptr %3, i32 %28, i32 %40
  %42 = load double, ptr %41, align 8, !tbaa !2
  %43 = fadd double %39, %42
  %44 = getelementptr inbounds [250 x double], ptr %30, i32 0, i32 %33
  %45 = load double, ptr %44, align 8, !tbaa !2
  %46 = fadd double %43, %45
  %47 = getelementptr inbounds [250 x double], ptr %31, i32 0, i32 %33
  %48 = load double, ptr %47, align 8, !tbaa !2
  %49 = fadd double %46, %48
  %50 = fmul double %49, 2.000000e-01
  %51 = getelementptr inbounds [250 x double], ptr %4, i32 %28, i32 %33
  store double %50, ptr %51, align 8, !tbaa !2
  %52 = icmp eq i32 %40, 249
  br i1 %52, label %53, label %32, !llvm.loop !10

53:                                               ; preds = %32
  %54 = add nuw nsw i32 %28, 1
  %55 = icmp eq i32 %54, 249
  br i1 %55, label %56, label %27, !llvm.loop !11

56:                                               ; preds = %53, %82
  %57 = phi i32 [ %83, %82 ], [ 1, %53 ]
  %58 = getelementptr inbounds [250 x double], ptr %4, i32 %57
  %59 = getelementptr inbounds i8, ptr %58, i32 2000
  %60 = getelementptr i8, ptr %58, i32 -2000
  br label %61

61:                                               ; preds = %61, %56
  %62 = phi i32 [ 1, %56 ], [ %69, %61 ]
  %63 = getelementptr inbounds [250 x double], ptr %4, i32 %57, i32 %62
  %64 = load double, ptr %63, align 8, !tbaa !2
  %65 = add nsw i32 %62, -1
  %66 = getelementptr inbounds [250 x double], ptr %4, i32 %57, i32 %65
  %67 = load double, ptr %66, align 8, !tbaa !2
  %68 = fadd double %64, %67
  %69 = add nuw nsw i32 %62, 1
  %70 = getelementptr inbounds [250 x double], ptr %4, i32 %57, i32 %69
  %71 = load double, ptr %70, align 8, !tbaa !2
  %72 = fadd double %68, %71
  %73 = getelementptr inbounds [250 x double], ptr %59, i32 0, i32 %62
  %74 = load double, ptr %73, align 8, !tbaa !2
  %75 = fadd double %72, %74
  %76 = getelementptr inbounds [250 x double], ptr %60, i32 0, i32 %62
  %77 = load double, ptr %76, align 8, !tbaa !2
  %78 = fadd double %75, %77
  %79 = fmul double %78, 2.000000e-01
  %80 = getelementptr inbounds [250 x double], ptr %3, i32 %57, i32 %62
  store double %79, ptr %80, align 8, !tbaa !2
  %81 = icmp eq i32 %69, 249
  br i1 %81, label %82, label %61, !llvm.loop !12

82:                                               ; preds = %61
  %83 = add nuw nsw i32 %57, 1
  %84 = icmp eq i32 %83, 249
  br i1 %84, label %85, label %56, !llvm.loop !13

85:                                               ; preds = %82
  %86 = add nuw nsw i32 %26, 1
  %87 = icmp eq i32 %86, 100
  br i1 %87, label %88, label %25, !llvm.loop !14

88:                                               ; preds = %85
  %89 = load ptr, ptr @stderr, align 4, !tbaa !15
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str) #3
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %92

92:                                               ; preds = %108, %88
  %93 = phi i32 [ 0, %88 ], [ %109, %108 ]
  %94 = mul nuw nsw i32 %93, 250
  br label %95

95:                                               ; preds = %102, %92
  %96 = phi i32 [ 0, %92 ], [ %106, %102 ]
  %97 = add nuw nsw i32 %96, %94
  %98 = urem i32 %97, 20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.3) #3
  br label %102

102:                                              ; preds = %100, %95
  %103 = getelementptr inbounds [250 x double], ptr %3, i32 %93, i32 %96
  %104 = load double, ptr %103, align 8, !tbaa !2
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.4, double noundef %104) #3
  %106 = add nuw nsw i32 %96, 1
  %107 = icmp eq i32 %106, 250
  br i1 %107, label %108, label %95, !llvm.loop !17

108:                                              ; preds = %102
  %109 = add nuw nsw i32 %93, 1
  %110 = icmp eq i32 %109, 250
  br i1 %110, label %111, label %92, !llvm.loop !18

111:                                              ; preds = %108
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.6) #3
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
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7, !8}
!18 = distinct !{!18, !7, !8}
