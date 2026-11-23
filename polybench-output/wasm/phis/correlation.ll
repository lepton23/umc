; ModuleID = './polybench-output/wasm/phis/correlation.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/datamining/correlation/correlation.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62400, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 240, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 240, i32 noundef 8) #3
  br label %7

7:                                                ; preds = %19, %2
  %8 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %9 = uitofp nneg i32 %8 to double
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 0, %7 ], [ %17, %10 ]
  %12 = mul nuw nsw i32 %11, %8
  %13 = uitofp nneg i32 %12 to double
  %14 = fdiv double %13, 2.400000e+02
  %15 = fadd double %14, %9
  %16 = getelementptr inbounds [240 x double], ptr %3, i32 %8, i32 %11
  store double %15, ptr %16, align 8, !tbaa !2
  %17 = add nuw nsw i32 %11, 1
  %18 = icmp eq i32 %17, 240
  br i1 %18, label %19, label %10, !llvm.loop !6

19:                                               ; preds = %10
  %20 = add nuw nsw i32 %8, 1
  %21 = icmp eq i32 %20, 260
  br i1 %21, label %22, label %7, !llvm.loop !9

22:                                               ; preds = %19, %33
  %23 = phi i32 [ %35, %33 ], [ 0, %19 ]
  %24 = getelementptr inbounds double, ptr %5, i32 %23
  store double 0.000000e+00, ptr %24, align 8, !tbaa !2
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i32 [ 0, %22 ], [ %31, %25 ]
  %27 = phi double [ 0.000000e+00, %22 ], [ %30, %25 ]
  %28 = getelementptr inbounds [240 x double], ptr %3, i32 %26, i32 %23
  %29 = load double, ptr %28, align 8, !tbaa !2
  %30 = fadd double %27, %29
  store double %30, ptr %24, align 8, !tbaa !2
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp eq i32 %31, 260
  br i1 %32, label %33, label %25, !llvm.loop !10

33:                                               ; preds = %25
  %34 = fdiv double %30, 2.600000e+02
  store double %34, ptr %24, align 8, !tbaa !2
  %35 = add nuw nsw i32 %23, 1
  %36 = icmp eq i32 %35, 240
  br i1 %36, label %37, label %22, !llvm.loop !11

37:                                               ; preds = %33, %51
  %38 = phi i32 [ %56, %51 ], [ 0, %33 ]
  %39 = getelementptr inbounds double, ptr %6, i32 %38
  store double 0.000000e+00, ptr %39, align 8, !tbaa !2
  %40 = getelementptr inbounds double, ptr %5, i32 %38
  br label %41

41:                                               ; preds = %41, %37
  %42 = phi double [ 0.000000e+00, %37 ], [ %48, %41 ]
  %43 = phi i32 [ 0, %37 ], [ %49, %41 ]
  %44 = getelementptr inbounds [240 x double], ptr %3, i32 %43, i32 %38
  %45 = load double, ptr %44, align 8, !tbaa !2
  %46 = load double, ptr %40, align 8, !tbaa !2
  %47 = fsub double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %47, double %47, double %42)
  store double %48, ptr %39, align 8, !tbaa !2
  %49 = add nuw nsw i32 %43, 1
  %50 = icmp eq i32 %49, 260
  br i1 %50, label %51, label %41, !llvm.loop !12

51:                                               ; preds = %41
  %52 = fdiv double %48, 2.600000e+02
  store double %52, ptr %39, align 8, !tbaa !2
  %53 = tail call double @sqrt(double noundef %52) #3
  %54 = fcmp ugt double %53, 1.000000e-01
  %55 = select i1 %54, double %53, double 1.000000e+00
  store double %55, ptr %39, align 8, !tbaa !2
  %56 = add nuw nsw i32 %38, 1
  %57 = icmp eq i32 %56, 240
  br i1 %57, label %58, label %37, !llvm.loop !13

58:                                               ; preds = %51, %75
  %59 = phi i32 [ %76, %75 ], [ 0, %51 ]
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ 0, %58 ], [ %73, %60 ]
  %62 = getelementptr inbounds double, ptr %5, i32 %61
  %63 = load double, ptr %62, align 8, !tbaa !2
  %64 = getelementptr inbounds [240 x double], ptr %3, i32 %59, i32 %61
  %65 = load double, ptr %64, align 8, !tbaa !2
  %66 = fsub double %65, %63
  store double %66, ptr %64, align 8, !tbaa !2
  %67 = tail call double @sqrt(double noundef 2.600000e+02) #3
  %68 = getelementptr inbounds double, ptr %6, i32 %61
  %69 = load double, ptr %68, align 8, !tbaa !2
  %70 = fmul double %67, %69
  %71 = load double, ptr %64, align 8, !tbaa !2
  %72 = fdiv double %71, %70
  store double %72, ptr %64, align 8, !tbaa !2
  %73 = add nuw nsw i32 %61, 1
  %74 = icmp eq i32 %73, 240
  br i1 %74, label %75, label %60, !llvm.loop !14

75:                                               ; preds = %60
  %76 = add nuw nsw i32 %59, 1
  %77 = icmp eq i32 %76, 260
  br i1 %77, label %80, label %58, !llvm.loop !15

78:                                               ; preds = %97
  %79 = icmp eq i32 %83, 239
  br i1 %79, label %101, label %80, !llvm.loop !16

80:                                               ; preds = %75, %78
  %81 = phi i32 [ %83, %78 ], [ 0, %75 ]
  %82 = getelementptr inbounds [240 x double], ptr %4, i32 %81, i32 %81
  store double 1.000000e+00, ptr %82, align 8, !tbaa !2
  %83 = add nuw nsw i32 %81, 1
  br label %84

84:                                               ; preds = %97, %80
  %85 = phi i32 [ %99, %97 ], [ %83, %80 ]
  %86 = getelementptr inbounds [240 x double], ptr %4, i32 %81, i32 %85
  store double 0.000000e+00, ptr %86, align 8, !tbaa !2
  br label %87

87:                                               ; preds = %87, %84
  %88 = phi i32 [ 0, %84 ], [ %95, %87 ]
  %89 = phi double [ 0.000000e+00, %84 ], [ %94, %87 ]
  %90 = getelementptr inbounds [240 x double], ptr %3, i32 %88, i32 %81
  %91 = load double, ptr %90, align 8, !tbaa !2
  %92 = getelementptr inbounds [240 x double], ptr %3, i32 %88, i32 %85
  %93 = load double, ptr %92, align 8, !tbaa !2
  %94 = tail call double @llvm.fmuladd.f64(double %91, double %93, double %89)
  store double %94, ptr %86, align 8, !tbaa !2
  %95 = add nuw nsw i32 %88, 1
  %96 = icmp eq i32 %95, 260
  br i1 %96, label %97, label %87, !llvm.loop !17

97:                                               ; preds = %87
  %98 = getelementptr inbounds [240 x double], ptr %4, i32 %85, i32 %81
  store double %94, ptr %98, align 8, !tbaa !2
  %99 = add nuw nsw i32 %85, 1
  %100 = icmp eq i32 %99, 240
  br i1 %100, label %78, label %84, !llvm.loop !18

101:                                              ; preds = %78
  %102 = getelementptr inbounds i8, ptr %4, i32 460792
  store double 1.000000e+00, ptr %102, align 8, !tbaa !2
  %103 = load ptr, ptr @stderr, align 4, !tbaa !19
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str) #3
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %106

106:                                              ; preds = %122, %101
  %107 = phi i32 [ 0, %101 ], [ %123, %122 ]
  %108 = mul nuw nsw i32 %107, 240
  br label %109

109:                                              ; preds = %116, %106
  %110 = phi i32 [ 0, %106 ], [ %120, %116 ]
  %111 = add nuw nsw i32 %110, %108
  %112 = urem i32 %111, 20
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.3) #3
  br label %116

116:                                              ; preds = %114, %109
  %117 = getelementptr inbounds [240 x double], ptr %4, i32 %107, i32 %110
  %118 = load double, ptr %117, align 8, !tbaa !2
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.4, double noundef %118) #3
  %120 = add nuw nsw i32 %110, 1
  %121 = icmp eq i32 %120, 240
  br i1 %121, label %122, label %109, !llvm.loop !21

122:                                              ; preds = %116
  %123 = add nuw nsw i32 %107, 1
  %124 = icmp eq i32 %123, 240
  br i1 %124, label %125, label %106, !llvm.loop !22

125:                                              ; preds = %122
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef nonnull %4) #3
  tail call void @free(ptr noundef %5) #3
  tail call void @free(ptr noundef %6) #3
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
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !4, i64 0}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
