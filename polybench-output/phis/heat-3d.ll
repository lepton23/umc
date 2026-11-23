; ModuleID = './polybench-output/phis/heat-3d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/heat-3d/heat-3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 64000, i32 noundef 8) #4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 64000, i32 noundef 8) #4
  br label %5

5:                                                ; preds = %25, %2
  %6 = phi i64 [ 0, %2 ], [ %26, %25 ]
  %7 = add nuw nsw i64 %6, 40
  br label %8

8:                                                ; preds = %22, %5
  %9 = phi i64 [ 0, %5 ], [ %23, %22 ]
  %10 = add nuw nsw i64 %7, %9
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i64 [ 0, %8 ], [ %20, %11 ]
  %13 = sub nuw nsw i64 %10, %12
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 1.000000e+01
  %17 = fdiv double %16, 4.000000e+01
  %18 = getelementptr inbounds [40 x [40 x double]], ptr %4, i64 %6, i64 %9, i64 %12
  store double %17, ptr %18, align 8, !tbaa !5
  %19 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %6, i64 %9, i64 %12
  store double %17, ptr %19, align 8, !tbaa !5
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, 40
  br i1 %21, label %22, label %11, !llvm.loop !9

22:                                               ; preds = %11
  %23 = add nuw nsw i64 %9, 1
  %24 = icmp eq i64 %23, 40
  br i1 %24, label %25, label %8, !llvm.loop !12

25:                                               ; preds = %22
  %26 = add nuw nsw i64 %6, 1
  %27 = icmp eq i64 %26, 40
  br i1 %27, label %28, label %5, !llvm.loop !13

28:                                               ; preds = %25, %118
  %29 = phi i32 [ %119, %118 ], [ 1, %25 ]
  br label %30

30:                                               ; preds = %71, %28
  %31 = phi i64 [ 1, %28 ], [ %72, %71 ]
  %32 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 12800
  %34 = getelementptr i8, ptr %32, i64 -12800
  br label %35

35:                                               ; preds = %69, %30
  %36 = phi i64 [ 1, %30 ], [ %37, %69 ]
  %37 = add nuw nsw i64 %36, 1
  %38 = add nsw i64 %36, -1
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi i64 [ 1, %35 ], [ %57, %39 ]
  %41 = getelementptr inbounds [40 x [40 x double]], ptr %33, i64 0, i64 %36, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %31, i64 %36, i64 %40
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = tail call double @llvm.fmuladd.f64(double %44, double -2.000000e+00, double %42)
  %46 = getelementptr inbounds [40 x [40 x double]], ptr %34, i64 0, i64 %36, i64 %40
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = fadd double %45, %47
  %49 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %31, i64 %37, i64 %40
  %50 = load double, ptr %49, align 8, !tbaa !5
  %51 = tail call double @llvm.fmuladd.f64(double %44, double -2.000000e+00, double %50)
  %52 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %31, i64 %38, i64 %40
  %53 = load double, ptr %52, align 8, !tbaa !5
  %54 = fadd double %51, %53
  %55 = fmul double %54, 1.250000e-01
  %56 = tail call double @llvm.fmuladd.f64(double %48, double 1.250000e-01, double %55)
  %57 = add nuw nsw i64 %40, 1
  %58 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %31, i64 %36, i64 %57
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = tail call double @llvm.fmuladd.f64(double %44, double -2.000000e+00, double %59)
  %61 = add nsw i64 %40, -1
  %62 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %31, i64 %36, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = fadd double %60, %63
  %65 = tail call double @llvm.fmuladd.f64(double %64, double 1.250000e-01, double %56)
  %66 = fadd double %44, %65
  %67 = getelementptr inbounds [40 x [40 x double]], ptr %4, i64 %31, i64 %36, i64 %40
  store double %66, ptr %67, align 8, !tbaa !5
  %68 = icmp eq i64 %57, 39
  br i1 %68, label %69, label %39, !llvm.loop !14

69:                                               ; preds = %39
  %70 = icmp eq i64 %37, 39
  br i1 %70, label %71, label %35, !llvm.loop !15

71:                                               ; preds = %69
  %72 = add nuw nsw i64 %31, 1
  %73 = icmp eq i64 %72, 39
  br i1 %73, label %74, label %30, !llvm.loop !16

74:                                               ; preds = %71, %115
  %75 = phi i64 [ %116, %115 ], [ 1, %71 ]
  %76 = getelementptr inbounds [40 x [40 x double]], ptr %4, i64 %75
  %77 = getelementptr inbounds i8, ptr %76, i64 12800
  %78 = getelementptr i8, ptr %76, i64 -12800
  br label %79

79:                                               ; preds = %113, %74
  %80 = phi i64 [ 1, %74 ], [ %81, %113 ]
  %81 = add nuw nsw i64 %80, 1
  %82 = add nsw i64 %80, -1
  br label %83

83:                                               ; preds = %83, %79
  %84 = phi i64 [ 1, %79 ], [ %101, %83 ]
  %85 = getelementptr inbounds [40 x [40 x double]], ptr %77, i64 0, i64 %80, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds [40 x [40 x double]], ptr %4, i64 %75, i64 %80, i64 %84
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = tail call double @llvm.fmuladd.f64(double %88, double -2.000000e+00, double %86)
  %90 = getelementptr inbounds [40 x [40 x double]], ptr %78, i64 0, i64 %80, i64 %84
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = fadd double %89, %91
  %93 = getelementptr inbounds [40 x [40 x double]], ptr %4, i64 %75, i64 %81, i64 %84
  %94 = load double, ptr %93, align 8, !tbaa !5
  %95 = tail call double @llvm.fmuladd.f64(double %88, double -2.000000e+00, double %94)
  %96 = getelementptr inbounds [40 x [40 x double]], ptr %4, i64 %75, i64 %82, i64 %84
  %97 = load double, ptr %96, align 8, !tbaa !5
  %98 = fadd double %95, %97
  %99 = fmul double %98, 1.250000e-01
  %100 = tail call double @llvm.fmuladd.f64(double %92, double 1.250000e-01, double %99)
  %101 = add nuw nsw i64 %84, 1
  %102 = getelementptr inbounds [40 x [40 x double]], ptr %4, i64 %75, i64 %80, i64 %101
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = tail call double @llvm.fmuladd.f64(double %88, double -2.000000e+00, double %103)
  %105 = add nsw i64 %84, -1
  %106 = getelementptr inbounds [40 x [40 x double]], ptr %4, i64 %75, i64 %80, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = fadd double %104, %107
  %109 = tail call double @llvm.fmuladd.f64(double %108, double 1.250000e-01, double %100)
  %110 = fadd double %88, %109
  %111 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %75, i64 %80, i64 %84
  store double %110, ptr %111, align 8, !tbaa !5
  %112 = icmp eq i64 %101, 39
  br i1 %112, label %113, label %83, !llvm.loop !17

113:                                              ; preds = %83
  %114 = icmp eq i64 %81, 39
  br i1 %114, label %115, label %79, !llvm.loop !18

115:                                              ; preds = %113
  %116 = add nuw nsw i64 %75, 1
  %117 = icmp eq i64 %116, 39
  br i1 %117, label %118, label %74, !llvm.loop !19

118:                                              ; preds = %115
  %119 = add nuw nsw i32 %29, 1
  %120 = icmp eq i32 %119, 101
  br i1 %120, label %121, label %28, !llvm.loop !20

121:                                              ; preds = %118
  %122 = load ptr, ptr @stderr, align 8, !tbaa !21
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str) #4
  %124 = load ptr, ptr @stderr, align 8, !tbaa !21
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %126

126:                                              ; preds = %152, %121
  %127 = phi i64 [ 0, %121 ], [ %153, %152 ]
  %128 = mul nuw nsw i64 %127, 1600
  br label %129

129:                                              ; preds = %149, %126
  %130 = phi i64 [ 0, %126 ], [ %150, %149 ]
  %131 = mul nuw nsw i64 %130, 40
  %132 = add nuw nsw i64 %131, %128
  br label %133

133:                                              ; preds = %142, %129
  %134 = phi i64 [ 0, %129 ], [ %147, %142 ]
  %135 = add nuw nsw i64 %132, %134
  %136 = trunc nuw nsw i64 %135 to i32
  %137 = urem i32 %136, 20
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load ptr, ptr @stderr, align 8, !tbaa !21
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.3) #4
  br label %142

142:                                              ; preds = %139, %133
  %143 = load ptr, ptr @stderr, align 8, !tbaa !21
  %144 = getelementptr inbounds [40 x [40 x double]], ptr %3, i64 %127, i64 %130, i64 %134
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.4, double noundef %145) #4
  %147 = add nuw nsw i64 %134, 1
  %148 = icmp eq i64 %147, 40
  br i1 %148, label %149, label %133, !llvm.loop !23

149:                                              ; preds = %142
  %150 = add nuw nsw i64 %130, 1
  %151 = icmp eq i64 %150, 40
  br i1 %151, label %152, label %129, !llvm.loop !24

152:                                              ; preds = %149
  %153 = add nuw nsw i64 %127, 1
  %154 = icmp eq i64 %153, 40
  br i1 %154, label %155, label %126, !llvm.loop !25

155:                                              ; preds = %152
  %156 = load ptr, ptr @stderr, align 8, !tbaa !21
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %158 = load ptr, ptr @stderr, align 8, !tbaa !21
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.6) #4
  tail call void @free(ptr noundef nonnull %3) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
