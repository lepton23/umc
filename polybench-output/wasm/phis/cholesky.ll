; ModuleID = './polybench-output/wasm/phis/cholesky.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/cholesky/cholesky.c"
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

4:                                                ; preds = %24, %2
  %5 = phi i32 [ 1, %2 ], [ %26, %24 ]
  %6 = phi i32 [ 0, %2 ], [ %17, %24 ]
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ 0, %4 ], [ %14, %7 ]
  %9 = sub nsw i32 0, %8
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 4.000000e+02
  %12 = fadd double %11, 1.000000e+00
  %13 = getelementptr inbounds [400 x double], ptr %3, i32 %6, i32 %8
  store double %12, ptr %13, align 8, !tbaa !2
  %14 = add nuw nsw i32 %8, 1
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %16, label %7, !llvm.loop !6

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %6, 1
  %18 = icmp ult i32 %6, 399
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %19
  %20 = phi i32 [ %22, %19 ], [ %17, %16 ]
  %21 = getelementptr inbounds [400 x double], ptr %3, i32 %6, i32 %20
  store double 0.000000e+00, ptr %21, align 8, !tbaa !2
  %22 = add nuw nsw i32 %20, 1
  %23 = icmp eq i32 %22, 400
  br i1 %23, label %24, label %19, !llvm.loop !9

24:                                               ; preds = %19, %16
  %25 = getelementptr inbounds [400 x double], ptr %3, i32 %6, i32 %6
  store double 1.000000e+00, ptr %25, align 8, !tbaa !2
  %26 = add nuw nsw i32 %5, 1
  %27 = icmp eq i32 %17, 400
  br i1 %27, label %28, label %4, !llvm.loop !10

28:                                               ; preds = %24
  %29 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  br label %30

30:                                               ; preds = %37, %28
  %31 = phi i32 [ 0, %28 ], [ %38, %37 ]
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i32 [ 0, %30 ], [ %35, %32 ]
  %34 = getelementptr inbounds [400 x [400 x double]], ptr %29, i32 0, i32 %31, i32 %33
  store double 0.000000e+00, ptr %34, align 8, !tbaa !2
  %35 = add nuw nsw i32 %33, 1
  %36 = icmp eq i32 %35, 400
  br i1 %36, label %37, label %32, !llvm.loop !11

37:                                               ; preds = %32
  %38 = add nuw nsw i32 %31, 1
  %39 = icmp eq i32 %38, 400
  br i1 %39, label %40, label %30, !llvm.loop !12

40:                                               ; preds = %37, %58
  %41 = phi i32 [ %59, %58 ], [ 0, %37 ]
  br label %42

42:                                               ; preds = %55, %40
  %43 = phi i32 [ 0, %40 ], [ %56, %55 ]
  %44 = getelementptr inbounds [400 x double], ptr %3, i32 %43, i32 %41
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi i32 [ 0, %42 ], [ %53, %45 ]
  %47 = load double, ptr %44, align 8, !tbaa !2
  %48 = getelementptr inbounds [400 x double], ptr %3, i32 %46, i32 %41
  %49 = load double, ptr %48, align 8, !tbaa !2
  %50 = getelementptr inbounds [400 x [400 x double]], ptr %29, i32 0, i32 %43, i32 %46
  %51 = load double, ptr %50, align 8, !tbaa !2
  %52 = tail call double @llvm.fmuladd.f64(double %47, double %49, double %51)
  store double %52, ptr %50, align 8, !tbaa !2
  %53 = add nuw nsw i32 %46, 1
  %54 = icmp eq i32 %53, 400
  br i1 %54, label %55, label %45, !llvm.loop !13

55:                                               ; preds = %45
  %56 = add nuw nsw i32 %43, 1
  %57 = icmp eq i32 %56, 400
  br i1 %57, label %58, label %42, !llvm.loop !14

58:                                               ; preds = %55
  %59 = add nuw nsw i32 %41, 1
  %60 = icmp eq i32 %59, 400
  br i1 %60, label %61, label %40, !llvm.loop !15

61:                                               ; preds = %58, %70
  %62 = phi i32 [ %71, %70 ], [ 0, %58 ]
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i32 [ 0, %61 ], [ %68, %63 ]
  %65 = getelementptr inbounds [400 x [400 x double]], ptr %29, i32 0, i32 %62, i32 %64
  %66 = load double, ptr %65, align 8, !tbaa !2
  %67 = getelementptr inbounds [400 x double], ptr %3, i32 %62, i32 %64
  store double %66, ptr %67, align 8, !tbaa !2
  %68 = add nuw nsw i32 %64, 1
  %69 = icmp eq i32 %68, 400
  br i1 %69, label %70, label %63, !llvm.loop !16

70:                                               ; preds = %63
  %71 = add nuw nsw i32 %62, 1
  %72 = icmp eq i32 %71, 400
  br i1 %72, label %73, label %61, !llvm.loop !17

73:                                               ; preds = %70
  tail call void @free(ptr noundef nonnull %29) #3
  br label %74

74:                                               ; preds = %120, %73
  %75 = phi i32 [ 0, %73 ], [ %124, %120 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 0
  br label %84

79:                                               ; preds = %74
  %80 = load double, ptr %3, align 8, !tbaa !2
  br label %120

81:                                               ; preds = %103
  %82 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %75
  %83 = load double, ptr %82, align 8, !tbaa !2
  br label %111

84:                                               ; preds = %103, %77
  %85 = phi i32 [ %109, %103 ], [ 0, %77 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load double, ptr %78, align 8, !tbaa !2
  br label %103

89:                                               ; preds = %84
  %90 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %85
  %91 = load double, ptr %90, align 8, !tbaa !2
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi double [ %91, %89 ], [ %100, %92 ]
  %94 = phi i32 [ 0, %89 ], [ %101, %92 ]
  %95 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %94
  %96 = load double, ptr %95, align 8, !tbaa !2
  %97 = getelementptr inbounds [400 x double], ptr %3, i32 %85, i32 %94
  %98 = load double, ptr %97, align 8, !tbaa !2
  %99 = fneg double %96
  %100 = tail call double @llvm.fmuladd.f64(double %99, double %98, double %93)
  store double %100, ptr %90, align 8, !tbaa !2
  %101 = add nuw nsw i32 %94, 1
  %102 = icmp eq i32 %101, %85
  br i1 %102, label %103, label %92, !llvm.loop !18

103:                                              ; preds = %92, %87
  %104 = phi double [ %88, %87 ], [ %100, %92 ]
  %105 = getelementptr inbounds [400 x double], ptr %3, i32 %85, i32 %85
  %106 = load double, ptr %105, align 8, !tbaa !2
  %107 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %85
  %108 = fdiv double %104, %106
  store double %108, ptr %107, align 8, !tbaa !2
  %109 = add nuw nsw i32 %85, 1
  %110 = icmp eq i32 %109, %75
  br i1 %110, label %81, label %84, !llvm.loop !19

111:                                              ; preds = %111, %81
  %112 = phi double [ %83, %81 ], [ %117, %111 ]
  %113 = phi i32 [ 0, %81 ], [ %118, %111 ]
  %114 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %113
  %115 = load double, ptr %114, align 8, !tbaa !2
  %116 = fneg double %115
  %117 = tail call double @llvm.fmuladd.f64(double %116, double %115, double %112)
  store double %117, ptr %82, align 8, !tbaa !2
  %118 = add nuw nsw i32 %113, 1
  %119 = icmp eq i32 %118, %75
  br i1 %119, label %120, label %111, !llvm.loop !20

120:                                              ; preds = %111, %79
  %121 = phi double [ %80, %79 ], [ %117, %111 ]
  %122 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %75
  %123 = tail call double @sqrt(double noundef %121) #3
  store double %123, ptr %122, align 8, !tbaa !2
  %124 = add nuw nsw i32 %75, 1
  %125 = icmp eq i32 %124, 400
  br i1 %125, label %126, label %74, !llvm.loop !21

126:                                              ; preds = %120
  %127 = load ptr, ptr @stderr, align 4, !tbaa !22
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str) #3
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %130

130:                                              ; preds = %147, %126
  %131 = phi i32 [ 1, %126 ], [ %149, %147 ]
  %132 = phi i32 [ 0, %126 ], [ %148, %147 ]
  %133 = mul nuw nsw i32 %132, 400
  br label %134

134:                                              ; preds = %141, %130
  %135 = phi i32 [ 0, %130 ], [ %145, %141 ]
  %136 = add nuw nsw i32 %135, %133
  %137 = urem i32 %136, 20
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.3) #3
  br label %141

141:                                              ; preds = %139, %134
  %142 = getelementptr inbounds [400 x double], ptr %3, i32 %132, i32 %135
  %143 = load double, ptr %142, align 8, !tbaa !2
  %144 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.4, double noundef %143) #3
  %145 = add nuw nsw i32 %135, 1
  %146 = icmp eq i32 %145, %131
  br i1 %146, label %147, label %134, !llvm.loop !24

147:                                              ; preds = %141
  %148 = add nuw nsw i32 %132, 1
  %149 = add nuw nsw i32 %131, 1
  %150 = icmp eq i32 %148, 400
  br i1 %150, label %151, label %130, !llvm.loop !25

151:                                              ; preds = %147
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef nonnull %3) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare double @sqrt(double noundef) local_unnamed_addr #1

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
