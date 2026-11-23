; ModuleID = './polybench-output/wasm/phis/2mm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/2mm/2mm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 34200, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 37800, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 39900, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 41800, i32 noundef 8) #3
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 39600, i32 noundef 8) #3
  br label %8

8:                                                ; preds = %20, %2
  %9 = phi i32 [ 0, %2 ], [ %21, %20 ]
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %18, %10 ]
  %12 = mul nuw nsw i32 %11, %9
  %13 = add nuw nsw i32 %12, 1
  %14 = urem i32 %13, 180
  %15 = uitofp nneg i32 %14 to double
  %16 = fdiv double %15, 1.800000e+02
  %17 = getelementptr inbounds [210 x double], ptr %4, i32 %9, i32 %11
  store double %16, ptr %17, align 8, !tbaa !2
  %18 = add nuw nsw i32 %11, 1
  %19 = icmp eq i32 %18, 210
  br i1 %19, label %20, label %10, !llvm.loop !6

20:                                               ; preds = %10
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp eq i32 %21, 180
  br i1 %22, label %23, label %8, !llvm.loop !9

23:                                               ; preds = %20, %34
  %24 = phi i32 [ %35, %34 ], [ 0, %20 ]
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ 0, %23 ], [ %27, %25 ]
  %27 = add nuw nsw i32 %26, 1
  %28 = mul nuw nsw i32 %27, %24
  %29 = urem i32 %28, 190
  %30 = uitofp nneg i32 %29 to double
  %31 = fdiv double %30, 1.900000e+02
  %32 = getelementptr inbounds [190 x double], ptr %5, i32 %24, i32 %26
  store double %31, ptr %32, align 8, !tbaa !2
  %33 = icmp eq i32 %27, 190
  br i1 %33, label %34, label %25, !llvm.loop !10

34:                                               ; preds = %25
  %35 = add nuw nsw i32 %24, 1
  %36 = icmp eq i32 %35, 210
  br i1 %36, label %37, label %23, !llvm.loop !11

37:                                               ; preds = %34, %50
  %38 = phi i32 [ %51, %50 ], [ 0, %34 ]
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ 0, %37 ], [ %48, %39 ]
  %41 = add nuw nsw i32 %40, 3
  %42 = mul nuw nsw i32 %41, %38
  %43 = add nuw nsw i32 %42, 1
  %44 = urem i32 %43, 220
  %45 = uitofp nneg i32 %44 to double
  %46 = fdiv double %45, 2.200000e+02
  %47 = getelementptr inbounds [220 x double], ptr %6, i32 %38, i32 %40
  store double %46, ptr %47, align 8, !tbaa !2
  %48 = add nuw nsw i32 %40, 1
  %49 = icmp eq i32 %48, 220
  br i1 %49, label %50, label %39, !llvm.loop !12

50:                                               ; preds = %39
  %51 = add nuw nsw i32 %38, 1
  %52 = icmp eq i32 %51, 190
  br i1 %52, label %53, label %37, !llvm.loop !13

53:                                               ; preds = %50, %65
  %54 = phi i32 [ %66, %65 ], [ 0, %50 ]
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ 0, %53 ], [ %63, %55 ]
  %57 = add nuw nsw i32 %56, 2
  %58 = mul nuw nsw i32 %57, %54
  %59 = urem i32 %58, 210
  %60 = uitofp nneg i32 %59 to double
  %61 = fdiv double %60, 2.100000e+02
  %62 = getelementptr inbounds [220 x double], ptr %7, i32 %54, i32 %56
  store double %61, ptr %62, align 8, !tbaa !2
  %63 = add nuw nsw i32 %56, 1
  %64 = icmp eq i32 %63, 220
  br i1 %64, label %65, label %55, !llvm.loop !14

65:                                               ; preds = %55
  %66 = add nuw nsw i32 %54, 1
  %67 = icmp eq i32 %66, 180
  br i1 %67, label %68, label %53, !llvm.loop !15

68:                                               ; preds = %65, %87
  %69 = phi i32 [ %88, %87 ], [ 0, %65 ]
  br label %70

70:                                               ; preds = %84, %68
  %71 = phi i32 [ 0, %68 ], [ %85, %84 ]
  %72 = getelementptr inbounds [190 x double], ptr %3, i32 %69, i32 %71
  store double 0.000000e+00, ptr %72, align 8, !tbaa !2
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i32 [ 0, %70 ], [ %82, %73 ]
  %75 = phi double [ 0.000000e+00, %70 ], [ %81, %73 ]
  %76 = getelementptr inbounds [210 x double], ptr %4, i32 %69, i32 %74
  %77 = load double, ptr %76, align 8, !tbaa !2
  %78 = fmul double %77, 1.500000e+00
  %79 = getelementptr inbounds [190 x double], ptr %5, i32 %74, i32 %71
  %80 = load double, ptr %79, align 8, !tbaa !2
  %81 = tail call double @llvm.fmuladd.f64(double %78, double %80, double %75)
  store double %81, ptr %72, align 8, !tbaa !2
  %82 = add nuw nsw i32 %74, 1
  %83 = icmp eq i32 %82, 210
  br i1 %83, label %84, label %73, !llvm.loop !16

84:                                               ; preds = %73
  %85 = add nuw nsw i32 %71, 1
  %86 = icmp eq i32 %85, 190
  br i1 %86, label %87, label %70, !llvm.loop !17

87:                                               ; preds = %84
  %88 = add nuw nsw i32 %69, 1
  %89 = icmp eq i32 %88, 180
  br i1 %89, label %90, label %68, !llvm.loop !18

90:                                               ; preds = %87, %110
  %91 = phi i32 [ %111, %110 ], [ 0, %87 ]
  br label %92

92:                                               ; preds = %107, %90
  %93 = phi i32 [ 0, %90 ], [ %108, %107 ]
  %94 = getelementptr inbounds [220 x double], ptr %7, i32 %91, i32 %93
  %95 = load double, ptr %94, align 8, !tbaa !2
  %96 = fmul double %95, 1.200000e+00
  store double %96, ptr %94, align 8, !tbaa !2
  br label %97

97:                                               ; preds = %97, %92
  %98 = phi i32 [ 0, %92 ], [ %105, %97 ]
  %99 = phi double [ %96, %92 ], [ %104, %97 ]
  %100 = getelementptr inbounds [190 x double], ptr %3, i32 %91, i32 %98
  %101 = load double, ptr %100, align 8, !tbaa !2
  %102 = getelementptr inbounds [220 x double], ptr %6, i32 %98, i32 %93
  %103 = load double, ptr %102, align 8, !tbaa !2
  %104 = tail call double @llvm.fmuladd.f64(double %101, double %103, double %99)
  store double %104, ptr %94, align 8, !tbaa !2
  %105 = add nuw nsw i32 %98, 1
  %106 = icmp eq i32 %105, 190
  br i1 %106, label %107, label %97, !llvm.loop !19

107:                                              ; preds = %97
  %108 = add nuw nsw i32 %93, 1
  %109 = icmp eq i32 %108, 220
  br i1 %109, label %110, label %92, !llvm.loop !20

110:                                              ; preds = %107
  %111 = add nuw nsw i32 %91, 1
  %112 = icmp eq i32 %111, 180
  br i1 %112, label %113, label %90, !llvm.loop !21

113:                                              ; preds = %110
  %114 = load ptr, ptr @stderr, align 4, !tbaa !22
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str) #3
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %117

117:                                              ; preds = %133, %113
  %118 = phi i32 [ 0, %113 ], [ %134, %133 ]
  %119 = mul nuw nsw i32 %118, 180
  br label %120

120:                                              ; preds = %127, %117
  %121 = phi i32 [ 0, %117 ], [ %131, %127 ]
  %122 = add nuw nsw i32 %121, %119
  %123 = urem i32 %122, 20
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.3) #3
  br label %127

127:                                              ; preds = %125, %120
  %128 = getelementptr inbounds [220 x double], ptr %7, i32 %118, i32 %121
  %129 = load double, ptr %128, align 8, !tbaa !2
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.4, double noundef %129) #3
  %131 = add nuw nsw i32 %121, 1
  %132 = icmp eq i32 %131, 220
  br i1 %132, label %133, label %120, !llvm.loop !24

133:                                              ; preds = %127
  %134 = add nuw nsw i32 %118, 1
  %135 = icmp eq i32 %134, 180
  br i1 %135, label %136, label %117, !llvm.loop !25

136:                                              ; preds = %133
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %138 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.6) #3
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
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !4, i64 0}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !7, !8}
