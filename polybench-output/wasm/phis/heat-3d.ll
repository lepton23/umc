; ModuleID = './polybench-output/wasm/phis/heat-3d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/heat-3d/heat-3d.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 64000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 64000, i32 noundef 8) #3
  br label %5

5:                                                ; preds = %24, %2
  %6 = phi i32 [ 0, %2 ], [ %25, %24 ]
  %7 = add nuw nsw i32 %6, 40
  br label %8

8:                                                ; preds = %21, %5
  %9 = phi i32 [ 0, %5 ], [ %22, %21 ]
  %10 = add nuw nsw i32 %7, %9
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ 0, %8 ], [ %19, %11 ]
  %13 = sub nuw nsw i32 %10, %12
  %14 = uitofp nneg i32 %13 to double
  %15 = fmul double %14, 1.000000e+01
  %16 = fdiv double %15, 4.000000e+01
  %17 = getelementptr inbounds [40 x [40 x double]], ptr %4, i32 %6, i32 %9, i32 %12
  store double %16, ptr %17, align 8, !tbaa !2
  %18 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %6, i32 %9, i32 %12
  store double %16, ptr %18, align 8, !tbaa !2
  %19 = add nuw nsw i32 %12, 1
  %20 = icmp eq i32 %19, 40
  br i1 %20, label %21, label %11, !llvm.loop !6

21:                                               ; preds = %11
  %22 = add nuw nsw i32 %9, 1
  %23 = icmp eq i32 %22, 40
  br i1 %23, label %24, label %8, !llvm.loop !9

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %6, 1
  %26 = icmp eq i32 %25, 40
  br i1 %26, label %27, label %5, !llvm.loop !10

27:                                               ; preds = %24, %117
  %28 = phi i32 [ %118, %117 ], [ 1, %24 ]
  br label %29

29:                                               ; preds = %70, %27
  %30 = phi i32 [ 1, %27 ], [ %71, %70 ]
  %31 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %30
  %32 = getelementptr inbounds i8, ptr %31, i32 12800
  %33 = getelementptr i8, ptr %31, i32 -12800
  br label %34

34:                                               ; preds = %68, %29
  %35 = phi i32 [ 1, %29 ], [ %36, %68 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = add nsw i32 %35, -1
  br label %38

38:                                               ; preds = %38, %34
  %39 = phi i32 [ 1, %34 ], [ %56, %38 ]
  %40 = getelementptr inbounds [40 x [40 x double]], ptr %32, i32 0, i32 %35, i32 %39
  %41 = load double, ptr %40, align 8, !tbaa !2
  %42 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %30, i32 %35, i32 %39
  %43 = load double, ptr %42, align 8, !tbaa !2
  %44 = tail call double @llvm.fmuladd.f64(double %43, double -2.000000e+00, double %41)
  %45 = getelementptr inbounds [40 x [40 x double]], ptr %33, i32 0, i32 %35, i32 %39
  %46 = load double, ptr %45, align 8, !tbaa !2
  %47 = fadd double %44, %46
  %48 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %30, i32 %36, i32 %39
  %49 = load double, ptr %48, align 8, !tbaa !2
  %50 = tail call double @llvm.fmuladd.f64(double %43, double -2.000000e+00, double %49)
  %51 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %30, i32 %37, i32 %39
  %52 = load double, ptr %51, align 8, !tbaa !2
  %53 = fadd double %50, %52
  %54 = fmul double %53, 1.250000e-01
  %55 = tail call double @llvm.fmuladd.f64(double %47, double 1.250000e-01, double %54)
  %56 = add nuw nsw i32 %39, 1
  %57 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %30, i32 %35, i32 %56
  %58 = load double, ptr %57, align 8, !tbaa !2
  %59 = tail call double @llvm.fmuladd.f64(double %43, double -2.000000e+00, double %58)
  %60 = add nsw i32 %39, -1
  %61 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %30, i32 %35, i32 %60
  %62 = load double, ptr %61, align 8, !tbaa !2
  %63 = fadd double %59, %62
  %64 = tail call double @llvm.fmuladd.f64(double %63, double 1.250000e-01, double %55)
  %65 = fadd double %43, %64
  %66 = getelementptr inbounds [40 x [40 x double]], ptr %4, i32 %30, i32 %35, i32 %39
  store double %65, ptr %66, align 8, !tbaa !2
  %67 = icmp eq i32 %56, 39
  br i1 %67, label %68, label %38, !llvm.loop !11

68:                                               ; preds = %38
  %69 = icmp eq i32 %36, 39
  br i1 %69, label %70, label %34, !llvm.loop !12

70:                                               ; preds = %68
  %71 = add nuw nsw i32 %30, 1
  %72 = icmp eq i32 %71, 39
  br i1 %72, label %73, label %29, !llvm.loop !13

73:                                               ; preds = %70, %114
  %74 = phi i32 [ %115, %114 ], [ 1, %70 ]
  %75 = getelementptr inbounds [40 x [40 x double]], ptr %4, i32 %74
  %76 = getelementptr inbounds i8, ptr %75, i32 12800
  %77 = getelementptr i8, ptr %75, i32 -12800
  br label %78

78:                                               ; preds = %112, %73
  %79 = phi i32 [ 1, %73 ], [ %80, %112 ]
  %80 = add nuw nsw i32 %79, 1
  %81 = add nsw i32 %79, -1
  br label %82

82:                                               ; preds = %82, %78
  %83 = phi i32 [ 1, %78 ], [ %100, %82 ]
  %84 = getelementptr inbounds [40 x [40 x double]], ptr %76, i32 0, i32 %79, i32 %83
  %85 = load double, ptr %84, align 8, !tbaa !2
  %86 = getelementptr inbounds [40 x [40 x double]], ptr %4, i32 %74, i32 %79, i32 %83
  %87 = load double, ptr %86, align 8, !tbaa !2
  %88 = tail call double @llvm.fmuladd.f64(double %87, double -2.000000e+00, double %85)
  %89 = getelementptr inbounds [40 x [40 x double]], ptr %77, i32 0, i32 %79, i32 %83
  %90 = load double, ptr %89, align 8, !tbaa !2
  %91 = fadd double %88, %90
  %92 = getelementptr inbounds [40 x [40 x double]], ptr %4, i32 %74, i32 %80, i32 %83
  %93 = load double, ptr %92, align 8, !tbaa !2
  %94 = tail call double @llvm.fmuladd.f64(double %87, double -2.000000e+00, double %93)
  %95 = getelementptr inbounds [40 x [40 x double]], ptr %4, i32 %74, i32 %81, i32 %83
  %96 = load double, ptr %95, align 8, !tbaa !2
  %97 = fadd double %94, %96
  %98 = fmul double %97, 1.250000e-01
  %99 = tail call double @llvm.fmuladd.f64(double %91, double 1.250000e-01, double %98)
  %100 = add nuw nsw i32 %83, 1
  %101 = getelementptr inbounds [40 x [40 x double]], ptr %4, i32 %74, i32 %79, i32 %100
  %102 = load double, ptr %101, align 8, !tbaa !2
  %103 = tail call double @llvm.fmuladd.f64(double %87, double -2.000000e+00, double %102)
  %104 = add nsw i32 %83, -1
  %105 = getelementptr inbounds [40 x [40 x double]], ptr %4, i32 %74, i32 %79, i32 %104
  %106 = load double, ptr %105, align 8, !tbaa !2
  %107 = fadd double %103, %106
  %108 = tail call double @llvm.fmuladd.f64(double %107, double 1.250000e-01, double %99)
  %109 = fadd double %87, %108
  %110 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %74, i32 %79, i32 %83
  store double %109, ptr %110, align 8, !tbaa !2
  %111 = icmp eq i32 %100, 39
  br i1 %111, label %112, label %82, !llvm.loop !14

112:                                              ; preds = %82
  %113 = icmp eq i32 %80, 39
  br i1 %113, label %114, label %78, !llvm.loop !15

114:                                              ; preds = %112
  %115 = add nuw nsw i32 %74, 1
  %116 = icmp eq i32 %115, 39
  br i1 %116, label %117, label %73, !llvm.loop !16

117:                                              ; preds = %114
  %118 = add nuw nsw i32 %28, 1
  %119 = icmp eq i32 %118, 101
  br i1 %119, label %120, label %27, !llvm.loop !17

120:                                              ; preds = %117
  %121 = load ptr, ptr @stderr, align 4, !tbaa !18
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str) #3
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %124

124:                                              ; preds = %147, %120
  %125 = phi i32 [ 0, %120 ], [ %148, %147 ]
  %126 = mul nuw nsw i32 %125, 1600
  br label %127

127:                                              ; preds = %144, %124
  %128 = phi i32 [ 0, %124 ], [ %145, %144 ]
  %129 = mul nuw nsw i32 %128, 40
  %130 = add nuw nsw i32 %129, %126
  br label %131

131:                                              ; preds = %138, %127
  %132 = phi i32 [ 0, %127 ], [ %142, %138 ]
  %133 = add nuw nsw i32 %130, %132
  %134 = urem i32 %133, 20
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.3) #3
  br label %138

138:                                              ; preds = %136, %131
  %139 = getelementptr inbounds [40 x [40 x double]], ptr %3, i32 %125, i32 %128, i32 %132
  %140 = load double, ptr %139, align 8, !tbaa !2
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.4, double noundef %140) #3
  %142 = add nuw nsw i32 %132, 1
  %143 = icmp eq i32 %142, 40
  br i1 %143, label %144, label %131, !llvm.loop !20

144:                                              ; preds = %138
  %145 = add nuw nsw i32 %128, 1
  %146 = icmp eq i32 %145, 40
  br i1 %146, label %147, label %127, !llvm.loop !21

147:                                              ; preds = %144
  %148 = add nuw nsw i32 %125, 1
  %149 = icmp eq i32 %148, 40
  br i1 %149, label %150, label %124, !llvm.loop !22

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.6) #3
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
