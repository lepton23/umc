; ModuleID = './polybench-output/wasm/phis/gramschmidt.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/gramschmidt/gramschmidt.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  br label %6

6:                                                ; preds = %19, %2
  %7 = phi i32 [ 0, %2 ], [ %20, %19 ]
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %17, %8 ]
  %10 = mul nuw nsw i32 %9, %7
  %11 = urem i32 %10, 200
  %12 = uitofp nneg i32 %11 to double
  %13 = fdiv double %12, 2.000000e+02
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 1.000000e+02, double 1.000000e+01)
  %15 = getelementptr inbounds [240 x double], ptr %3, i32 %7, i32 %9
  store double %14, ptr %15, align 8, !tbaa !2
  %16 = getelementptr inbounds [240 x double], ptr %5, i32 %7, i32 %9
  store double 0.000000e+00, ptr %16, align 8, !tbaa !2
  %17 = add nuw nsw i32 %9, 1
  %18 = icmp eq i32 %17, 240
  br i1 %18, label %19, label %8, !llvm.loop !6

19:                                               ; preds = %8
  %20 = add nuw nsw i32 %7, 1
  %21 = icmp eq i32 %20, 200
  br i1 %21, label %22, label %6, !llvm.loop !9

22:                                               ; preds = %19, %29
  %23 = phi i32 [ %30, %29 ], [ 0, %19 ]
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ 0, %22 ], [ %27, %24 ]
  %26 = getelementptr inbounds [240 x double], ptr %4, i32 %23, i32 %25
  store double 0.000000e+00, ptr %26, align 8, !tbaa !2
  %27 = add nuw nsw i32 %25, 1
  %28 = icmp eq i32 %27, 240
  br i1 %28, label %29, label %24, !llvm.loop !10

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, 240
  br i1 %31, label %34, label %22, !llvm.loop !11

32:                                               ; preds = %83, %56
  %33 = icmp eq i32 %57, 240
  br i1 %33, label %86, label %34, !llvm.loop !12

34:                                               ; preds = %29, %32
  %35 = phi i32 [ %57, %32 ], [ 0, %29 ]
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi double [ 0.000000e+00, %34 ], [ %41, %36 ]
  %38 = phi i32 [ 0, %34 ], [ %42, %36 ]
  %39 = getelementptr inbounds [240 x double], ptr %3, i32 %38, i32 %35
  %40 = load double, ptr %39, align 8, !tbaa !2
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %40, double %37)
  %42 = add nuw nsw i32 %38, 1
  %43 = icmp eq i32 %42, 200
  br i1 %43, label %44, label %36, !llvm.loop !13

44:                                               ; preds = %36
  %45 = tail call double @sqrt(double noundef %41) #3
  %46 = getelementptr inbounds [240 x double], ptr %4, i32 %35, i32 %35
  store double %45, ptr %46, align 8, !tbaa !2
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi i32 [ 0, %44 ], [ %54, %47 ]
  %49 = getelementptr inbounds [240 x double], ptr %3, i32 %48, i32 %35
  %50 = load double, ptr %49, align 8, !tbaa !2
  %51 = load double, ptr %46, align 8, !tbaa !2
  %52 = fdiv double %50, %51
  %53 = getelementptr inbounds [240 x double], ptr %5, i32 %48, i32 %35
  store double %52, ptr %53, align 8, !tbaa !2
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq i32 %54, 200
  br i1 %55, label %56, label %47, !llvm.loop !14

56:                                               ; preds = %47
  %57 = add nuw nsw i32 %35, 1
  %58 = icmp ult i32 %35, 239
  br i1 %58, label %59, label %32

59:                                               ; preds = %56, %83
  %60 = phi i32 [ %84, %83 ], [ %57, %56 ]
  %61 = getelementptr inbounds [240 x double], ptr %4, i32 %35, i32 %60
  store double 0.000000e+00, ptr %61, align 8, !tbaa !2
  br label %62

62:                                               ; preds = %62, %59
  %63 = phi i32 [ 0, %59 ], [ %70, %62 ]
  %64 = phi double [ 0.000000e+00, %59 ], [ %69, %62 ]
  %65 = getelementptr inbounds [240 x double], ptr %5, i32 %63, i32 %35
  %66 = load double, ptr %65, align 8, !tbaa !2
  %67 = getelementptr inbounds [240 x double], ptr %3, i32 %63, i32 %60
  %68 = load double, ptr %67, align 8, !tbaa !2
  %69 = tail call double @llvm.fmuladd.f64(double %66, double %68, double %64)
  store double %69, ptr %61, align 8, !tbaa !2
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, 200
  br i1 %71, label %72, label %62, !llvm.loop !15

72:                                               ; preds = %62, %72
  %73 = phi i32 [ %81, %72 ], [ 0, %62 ]
  %74 = getelementptr inbounds [240 x double], ptr %3, i32 %73, i32 %60
  %75 = load double, ptr %74, align 8, !tbaa !2
  %76 = getelementptr inbounds [240 x double], ptr %5, i32 %73, i32 %35
  %77 = load double, ptr %76, align 8, !tbaa !2
  %78 = load double, ptr %61, align 8, !tbaa !2
  %79 = fneg double %77
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %78, double %75)
  store double %80, ptr %74, align 8, !tbaa !2
  %81 = add nuw nsw i32 %73, 1
  %82 = icmp eq i32 %81, 200
  br i1 %82, label %83, label %72, !llvm.loop !16

83:                                               ; preds = %72
  %84 = add nuw nsw i32 %60, 1
  %85 = icmp eq i32 %84, 240
  br i1 %85, label %32, label %59, !llvm.loop !17

86:                                               ; preds = %32
  %87 = load ptr, ptr @stderr, align 4, !tbaa !18
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str) #3
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %90

90:                                               ; preds = %106, %86
  %91 = phi i32 [ 0, %86 ], [ %107, %106 ]
  %92 = mul nuw nsw i32 %91, 240
  br label %93

93:                                               ; preds = %100, %90
  %94 = phi i32 [ 0, %90 ], [ %104, %100 ]
  %95 = add nuw nsw i32 %94, %92
  %96 = urem i32 %95, 20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.3) #3
  br label %100

100:                                              ; preds = %98, %93
  %101 = getelementptr inbounds [240 x double], ptr %4, i32 %91, i32 %94
  %102 = load double, ptr %101, align 8, !tbaa !2
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.4, double noundef %102) #3
  %104 = add nuw nsw i32 %94, 1
  %105 = icmp eq i32 %104, 240
  br i1 %105, label %106, label %93, !llvm.loop !20

106:                                              ; preds = %100
  %107 = add nuw nsw i32 %91, 1
  %108 = icmp eq i32 %107, 240
  br i1 %108, label %109, label %90, !llvm.loop !21

109:                                              ; preds = %106
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #3
  br label %112

112:                                              ; preds = %128, %109
  %113 = phi i32 [ 0, %109 ], [ %129, %128 ]
  %114 = mul nuw nsw i32 %113, 240
  br label %115

115:                                              ; preds = %122, %112
  %116 = phi i32 [ 0, %112 ], [ %126, %122 ]
  %117 = add nuw nsw i32 %116, %114
  %118 = urem i32 %117, 20
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.3) #3
  br label %122

122:                                              ; preds = %120, %115
  %123 = getelementptr inbounds [240 x double], ptr %5, i32 %113, i32 %116
  %124 = load double, ptr %123, align 8, !tbaa !2
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.4, double noundef %124) #3
  %126 = add nuw nsw i32 %116, 1
  %127 = icmp eq i32 %126, 240
  br i1 %127, label %128, label %115, !llvm.loop !22

128:                                              ; preds = %122
  %129 = add nuw nsw i32 %113, 1
  %130 = icmp eq i32 %129, 200
  br i1 %130, label %131, label %112, !llvm.loop !23

131:                                              ; preds = %128
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.7) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef nonnull %5) #3
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
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7, !8}
