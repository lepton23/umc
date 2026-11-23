; ModuleID = './polybench-output/wasm/phis/lu.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/lu/lu.c"
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

74:                                               ; preds = %126, %73
  %75 = phi i32 [ 0, %73 ], [ %127, %126 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %106, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 0
  br label %79

79:                                               ; preds = %98, %77
  %80 = phi i32 [ %104, %98 ], [ 0, %77 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load double, ptr %78, align 8, !tbaa !2
  br label %98

84:                                               ; preds = %79
  %85 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %80
  %86 = load double, ptr %85, align 8, !tbaa !2
  br label %87

87:                                               ; preds = %87, %84
  %88 = phi double [ %86, %84 ], [ %95, %87 ]
  %89 = phi i32 [ 0, %84 ], [ %96, %87 ]
  %90 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %89
  %91 = load double, ptr %90, align 8, !tbaa !2
  %92 = getelementptr inbounds [400 x double], ptr %3, i32 %89, i32 %80
  %93 = load double, ptr %92, align 8, !tbaa !2
  %94 = fneg double %91
  %95 = tail call double @llvm.fmuladd.f64(double %94, double %93, double %88)
  store double %95, ptr %85, align 8, !tbaa !2
  %96 = add nuw nsw i32 %89, 1
  %97 = icmp eq i32 %96, %80
  br i1 %97, label %98, label %87, !llvm.loop !18

98:                                               ; preds = %87, %82
  %99 = phi double [ %83, %82 ], [ %95, %87 ]
  %100 = getelementptr inbounds [400 x double], ptr %3, i32 %80, i32 %80
  %101 = load double, ptr %100, align 8, !tbaa !2
  %102 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %80
  %103 = fdiv double %99, %101
  store double %103, ptr %102, align 8, !tbaa !2
  %104 = add nuw nsw i32 %80, 1
  %105 = icmp eq i32 %104, %75
  br i1 %105, label %106, label %79, !llvm.loop !19

106:                                              ; preds = %98, %74
  br label %107

107:                                              ; preds = %106, %123
  %108 = phi i32 [ %124, %123 ], [ %75, %106 ]
  br i1 %76, label %123, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %108
  %111 = load double, ptr %110, align 8, !tbaa !2
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi double [ %111, %109 ], [ %120, %112 ]
  %114 = phi i32 [ 0, %109 ], [ %121, %112 ]
  %115 = getelementptr inbounds [400 x double], ptr %3, i32 %75, i32 %114
  %116 = load double, ptr %115, align 8, !tbaa !2
  %117 = getelementptr inbounds [400 x double], ptr %3, i32 %114, i32 %108
  %118 = load double, ptr %117, align 8, !tbaa !2
  %119 = fneg double %116
  %120 = tail call double @llvm.fmuladd.f64(double %119, double %118, double %113)
  store double %120, ptr %110, align 8, !tbaa !2
  %121 = add nuw nsw i32 %114, 1
  %122 = icmp eq i32 %121, %75
  br i1 %122, label %123, label %112, !llvm.loop !20

123:                                              ; preds = %112, %107
  %124 = add nuw nsw i32 %108, 1
  %125 = icmp eq i32 %124, 400
  br i1 %125, label %126, label %107, !llvm.loop !21

126:                                              ; preds = %123
  %127 = add nuw nsw i32 %75, 1
  %128 = icmp eq i32 %127, 400
  br i1 %128, label %129, label %74, !llvm.loop !22

129:                                              ; preds = %126
  %130 = load ptr, ptr @stderr, align 4, !tbaa !23
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str) #3
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %133

133:                                              ; preds = %149, %129
  %134 = phi i32 [ 0, %129 ], [ %150, %149 ]
  %135 = mul nuw nsw i32 %134, 400
  br label %136

136:                                              ; preds = %143, %133
  %137 = phi i32 [ 0, %133 ], [ %147, %143 ]
  %138 = add nuw nsw i32 %137, %135
  %139 = urem i32 %138, 20
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.3) #3
  br label %143

143:                                              ; preds = %141, %136
  %144 = getelementptr inbounds [400 x double], ptr %3, i32 %134, i32 %137
  %145 = load double, ptr %144, align 8, !tbaa !2
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.4, double noundef %145) #3
  %147 = add nuw nsw i32 %137, 1
  %148 = icmp eq i32 %147, 400
  br i1 %148, label %149, label %136, !llvm.loop !25

149:                                              ; preds = %143
  %150 = add nuw nsw i32 %134, 1
  %151 = icmp eq i32 %150, 400
  br i1 %151, label %152, label %133, !llvm.loop !26

152:                                              ; preds = %149
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %154 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.6) #3
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
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !4, i64 0}
!25 = distinct !{!25, !7, !8}
!26 = distinct !{!26, !7, !8}
