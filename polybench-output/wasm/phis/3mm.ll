; ModuleID = './polybench-output/wasm/phis/3mm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/3mm/3mm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 34200, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 36000, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 38000, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 39900, i32 noundef 8) #3
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 41800, i32 noundef 8) #3
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 46200, i32 noundef 8) #3
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 37800, i32 noundef 8) #3
  br label %10

10:                                               ; preds = %22, %2
  %11 = phi i32 [ 0, %2 ], [ %23, %22 ]
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %20, %12 ]
  %14 = mul nuw nsw i32 %13, %11
  %15 = add nuw nsw i32 %14, 1
  %16 = urem i32 %15, 180
  %17 = uitofp nneg i32 %16 to double
  %18 = fdiv double %17, 9.000000e+02
  %19 = getelementptr inbounds [200 x double], ptr %4, i32 %11, i32 %13
  store double %18, ptr %19, align 8, !tbaa !2
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq i32 %20, 200
  br i1 %21, label %22, label %12, !llvm.loop !6

22:                                               ; preds = %12
  %23 = add nuw nsw i32 %11, 1
  %24 = icmp eq i32 %23, 180
  br i1 %24, label %25, label %10, !llvm.loop !9

25:                                               ; preds = %22, %37
  %26 = phi i32 [ %38, %37 ], [ 0, %22 ]
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ 0, %25 ], [ %29, %27 ]
  %29 = add nuw nsw i32 %28, 1
  %30 = mul nuw nsw i32 %29, %26
  %31 = add nuw nsw i32 %30, 2
  %32 = urem i32 %31, 190
  %33 = uitofp nneg i32 %32 to double
  %34 = fdiv double %33, 9.500000e+02
  %35 = getelementptr inbounds [190 x double], ptr %5, i32 %26, i32 %28
  store double %34, ptr %35, align 8, !tbaa !2
  %36 = icmp eq i32 %29, 190
  br i1 %36, label %37, label %27, !llvm.loop !10

37:                                               ; preds = %27
  %38 = add nuw nsw i32 %26, 1
  %39 = icmp eq i32 %38, 200
  br i1 %39, label %40, label %25, !llvm.loop !11

40:                                               ; preds = %37, %52
  %41 = phi i32 [ %53, %52 ], [ 0, %37 ]
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ 0, %40 ], [ %50, %42 ]
  %44 = add nuw nsw i32 %43, 3
  %45 = mul nuw nsw i32 %44, %41
  %46 = urem i32 %45, 210
  %47 = uitofp nneg i32 %46 to double
  %48 = fdiv double %47, 1.050000e+03
  %49 = getelementptr inbounds [220 x double], ptr %7, i32 %41, i32 %43
  store double %48, ptr %49, align 8, !tbaa !2
  %50 = add nuw nsw i32 %43, 1
  %51 = icmp eq i32 %50, 220
  br i1 %51, label %52, label %42, !llvm.loop !12

52:                                               ; preds = %42
  %53 = add nuw nsw i32 %41, 1
  %54 = icmp eq i32 %53, 190
  br i1 %54, label %55, label %40, !llvm.loop !13

55:                                               ; preds = %52, %68
  %56 = phi i32 [ %69, %68 ], [ 0, %52 ]
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ 0, %55 ], [ %66, %57 ]
  %59 = add nuw nsw i32 %58, 2
  %60 = mul nuw nsw i32 %59, %56
  %61 = add nuw nsw i32 %60, 2
  %62 = urem i32 %61, 200
  %63 = uitofp nneg i32 %62 to double
  %64 = fdiv double %63, 1.000000e+03
  %65 = getelementptr inbounds [210 x double], ptr %8, i32 %56, i32 %58
  store double %64, ptr %65, align 8, !tbaa !2
  %66 = add nuw nsw i32 %58, 1
  %67 = icmp eq i32 %66, 210
  br i1 %67, label %68, label %57, !llvm.loop !14

68:                                               ; preds = %57
  %69 = add nuw nsw i32 %56, 1
  %70 = icmp eq i32 %69, 220
  br i1 %70, label %71, label %55, !llvm.loop !15

71:                                               ; preds = %68, %89
  %72 = phi i32 [ %90, %89 ], [ 0, %68 ]
  br label %73

73:                                               ; preds = %86, %71
  %74 = phi i32 [ 0, %71 ], [ %87, %86 ]
  %75 = getelementptr inbounds [190 x double], ptr %3, i32 %72, i32 %74
  store double 0.000000e+00, ptr %75, align 8, !tbaa !2
  br label %76

76:                                               ; preds = %76, %73
  %77 = phi i32 [ 0, %73 ], [ %84, %76 ]
  %78 = phi double [ 0.000000e+00, %73 ], [ %83, %76 ]
  %79 = getelementptr inbounds [200 x double], ptr %4, i32 %72, i32 %77
  %80 = load double, ptr %79, align 8, !tbaa !2
  %81 = getelementptr inbounds [190 x double], ptr %5, i32 %77, i32 %74
  %82 = load double, ptr %81, align 8, !tbaa !2
  %83 = tail call double @llvm.fmuladd.f64(double %80, double %82, double %78)
  store double %83, ptr %75, align 8, !tbaa !2
  %84 = add nuw nsw i32 %77, 1
  %85 = icmp eq i32 %84, 200
  br i1 %85, label %86, label %76, !llvm.loop !16

86:                                               ; preds = %76
  %87 = add nuw nsw i32 %74, 1
  %88 = icmp eq i32 %87, 190
  br i1 %88, label %89, label %73, !llvm.loop !17

89:                                               ; preds = %86
  %90 = add nuw nsw i32 %72, 1
  %91 = icmp eq i32 %90, 180
  br i1 %91, label %92, label %71, !llvm.loop !18

92:                                               ; preds = %89, %110
  %93 = phi i32 [ %111, %110 ], [ 0, %89 ]
  br label %94

94:                                               ; preds = %107, %92
  %95 = phi i32 [ 0, %92 ], [ %108, %107 ]
  %96 = getelementptr inbounds [210 x double], ptr %6, i32 %93, i32 %95
  store double 0.000000e+00, ptr %96, align 8, !tbaa !2
  br label %97

97:                                               ; preds = %97, %94
  %98 = phi i32 [ 0, %94 ], [ %105, %97 ]
  %99 = phi double [ 0.000000e+00, %94 ], [ %104, %97 ]
  %100 = getelementptr inbounds [220 x double], ptr %7, i32 %93, i32 %98
  %101 = load double, ptr %100, align 8, !tbaa !2
  %102 = getelementptr inbounds [210 x double], ptr %8, i32 %98, i32 %95
  %103 = load double, ptr %102, align 8, !tbaa !2
  %104 = tail call double @llvm.fmuladd.f64(double %101, double %103, double %99)
  store double %104, ptr %96, align 8, !tbaa !2
  %105 = add nuw nsw i32 %98, 1
  %106 = icmp eq i32 %105, 220
  br i1 %106, label %107, label %97, !llvm.loop !19

107:                                              ; preds = %97
  %108 = add nuw nsw i32 %95, 1
  %109 = icmp eq i32 %108, 210
  br i1 %109, label %110, label %94, !llvm.loop !20

110:                                              ; preds = %107
  %111 = add nuw nsw i32 %93, 1
  %112 = icmp eq i32 %111, 190
  br i1 %112, label %113, label %92, !llvm.loop !21

113:                                              ; preds = %110, %131
  %114 = phi i32 [ %132, %131 ], [ 0, %110 ]
  br label %115

115:                                              ; preds = %128, %113
  %116 = phi i32 [ 0, %113 ], [ %129, %128 ]
  %117 = getelementptr inbounds [210 x double], ptr %9, i32 %114, i32 %116
  store double 0.000000e+00, ptr %117, align 8, !tbaa !2
  br label %118

118:                                              ; preds = %118, %115
  %119 = phi i32 [ 0, %115 ], [ %126, %118 ]
  %120 = phi double [ 0.000000e+00, %115 ], [ %125, %118 ]
  %121 = getelementptr inbounds [190 x double], ptr %3, i32 %114, i32 %119
  %122 = load double, ptr %121, align 8, !tbaa !2
  %123 = getelementptr inbounds [210 x double], ptr %6, i32 %119, i32 %116
  %124 = load double, ptr %123, align 8, !tbaa !2
  %125 = tail call double @llvm.fmuladd.f64(double %122, double %124, double %120)
  store double %125, ptr %117, align 8, !tbaa !2
  %126 = add nuw nsw i32 %119, 1
  %127 = icmp eq i32 %126, 190
  br i1 %127, label %128, label %118, !llvm.loop !22

128:                                              ; preds = %118
  %129 = add nuw nsw i32 %116, 1
  %130 = icmp eq i32 %129, 210
  br i1 %130, label %131, label %115, !llvm.loop !23

131:                                              ; preds = %128
  %132 = add nuw nsw i32 %114, 1
  %133 = icmp eq i32 %132, 180
  br i1 %133, label %134, label %113, !llvm.loop !24

134:                                              ; preds = %131
  %135 = load ptr, ptr @stderr, align 4, !tbaa !25
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str) #3
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %138

138:                                              ; preds = %154, %134
  %139 = phi i32 [ 0, %134 ], [ %155, %154 ]
  %140 = mul nuw nsw i32 %139, 180
  br label %141

141:                                              ; preds = %148, %138
  %142 = phi i32 [ 0, %138 ], [ %152, %148 ]
  %143 = add nuw nsw i32 %142, %140
  %144 = urem i32 %143, 20
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.3) #3
  br label %148

148:                                              ; preds = %146, %141
  %149 = getelementptr inbounds [210 x double], ptr %9, i32 %139, i32 %142
  %150 = load double, ptr %149, align 8, !tbaa !2
  %151 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.4, double noundef %150) #3
  %152 = add nuw nsw i32 %142, 1
  %153 = icmp eq i32 %152, 210
  br i1 %153, label %154, label %141, !llvm.loop !27

154:                                              ; preds = %148
  %155 = add nuw nsw i32 %139, 1
  %156 = icmp eq i32 %155, 180
  br i1 %156, label %157, label %138, !llvm.loop !28

157:                                              ; preds = %154
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef %5) #3
  tail call void @free(ptr noundef %6) #3
  tail call void @free(ptr noundef %7) #3
  tail call void @free(ptr noundef %8) #3
  tail call void @free(ptr noundef nonnull %9) #3
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
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7, !8}
!24 = distinct !{!24, !7, !8}
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !4, i64 0}
!27 = distinct !{!27, !7, !8}
!28 = distinct !{!28, !7, !8}
