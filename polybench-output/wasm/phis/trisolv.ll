; ModuleID = './polybench-output/wasm/phis/trisolv.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/trisolv/trisolv.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  br label %6

6:                                                ; preds = %22, %2
  %7 = phi i32 [ 1, %2 ], [ %24, %22 ]
  %8 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %9 = getelementptr inbounds double, ptr %4, i32 %8
  store double -9.990000e+02, ptr %9, align 8, !tbaa !2
  %10 = uitofp nneg i32 %8 to double
  %11 = getelementptr inbounds double, ptr %5, i32 %8
  store double %10, ptr %11, align 8, !tbaa !2
  %12 = add nuw nsw i32 %8, 401
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i32 [ 0, %6 ], [ %20, %13 ]
  %15 = sub nuw nsw i32 %12, %14
  %16 = shl nuw i32 %15, 1
  %17 = uitofp i32 %16 to double
  %18 = fdiv double %17, 4.000000e+02
  %19 = getelementptr inbounds [400 x double], ptr %3, i32 %8, i32 %14
  store double %18, ptr %19, align 8, !tbaa !2
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, %7
  br i1 %21, label %22, label %13, !llvm.loop !6

22:                                               ; preds = %13
  %23 = add nuw nsw i32 %8, 1
  %24 = add nuw nsw i32 %7, 1
  %25 = icmp eq i32 %23, 400
  br i1 %25, label %26, label %6, !llvm.loop !9

26:                                               ; preds = %22, %43
  %27 = phi i32 [ %48, %43 ], [ 0, %22 ]
  %28 = getelementptr inbounds double, ptr %5, i32 %27
  %29 = load double, ptr %28, align 8, !tbaa !2
  %30 = getelementptr inbounds double, ptr %4, i32 %27
  store double %29, ptr %30, align 8, !tbaa !2
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %26, %32
  %33 = phi double [ %40, %32 ], [ %29, %26 ]
  %34 = phi i32 [ %41, %32 ], [ 0, %26 ]
  %35 = getelementptr inbounds [400 x double], ptr %3, i32 %27, i32 %34
  %36 = load double, ptr %35, align 8, !tbaa !2
  %37 = getelementptr inbounds double, ptr %4, i32 %34
  %38 = load double, ptr %37, align 8, !tbaa !2
  %39 = fneg double %36
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %38, double %33)
  store double %40, ptr %30, align 8, !tbaa !2
  %41 = add nuw nsw i32 %34, 1
  %42 = icmp eq i32 %41, %27
  br i1 %42, label %43, label %32, !llvm.loop !10

43:                                               ; preds = %32, %26
  %44 = phi double [ %29, %26 ], [ %40, %32 ]
  %45 = getelementptr inbounds [400 x double], ptr %3, i32 %27, i32 %27
  %46 = load double, ptr %45, align 8, !tbaa !2
  %47 = fdiv double %44, %46
  store double %47, ptr %30, align 8, !tbaa !2
  %48 = add nuw nsw i32 %27, 1
  %49 = icmp eq i32 %48, 400
  br i1 %49, label %50, label %26, !llvm.loop !11

50:                                               ; preds = %43
  %51 = load ptr, ptr @stderr, align 4, !tbaa !12
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str) #3
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %54

54:                                               ; preds = %64, %50
  %55 = phi i32 [ 0, %50 ], [ %65, %64 ]
  %56 = getelementptr inbounds double, ptr %4, i32 %55
  %57 = load double, ptr %56, align 8, !tbaa !2
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.3, double noundef %57) #3
  %59 = trunc nuw i32 %55 to i16
  %60 = urem i16 %59, 20
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.4) #3
  br label %64

64:                                               ; preds = %62, %54
  %65 = add nuw nsw i32 %55, 1
  %66 = icmp eq i32 %65, 400
  br i1 %66, label %67, label %54, !llvm.loop !14

67:                                               ; preds = %64
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef nonnull %4) #3
  tail call void @free(ptr noundef %5) #3
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
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = distinct !{!14, !7, !8}
