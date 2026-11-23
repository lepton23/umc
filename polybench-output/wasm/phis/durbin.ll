; ModuleID = './polybench-output/wasm/phis/durbin.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/durbin/durbin.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [400 x double], align 16
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #4
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %8 = sub nuw nsw i32 401, %7
  %9 = uitofp nneg i32 %8 to double
  %10 = getelementptr inbounds double, ptr %4, i32 %7
  store double %9, ptr %10, align 8, !tbaa !2
  %11 = add nuw nsw i32 %7, 1
  %12 = icmp eq i32 %11, 400
  br i1 %12, label %13, label %6, !llvm.loop !6

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 3200, ptr nonnull %3) #5
  %14 = load double, ptr %4, align 8, !tbaa !2
  %15 = fneg double %14
  store double %15, ptr %5, align 8, !tbaa !2
  %16 = load double, ptr %4, align 8, !tbaa !2
  %17 = fneg double %16
  br label %18

18:                                               ; preds = %61, %13
  %19 = phi i32 [ 1, %13 ], [ %62, %61 ]
  %20 = phi double [ 1.000000e+00, %13 ], [ %37, %61 ]
  %21 = phi double [ %17, %13 ], [ %41, %61 ]
  %22 = fneg double %21
  %23 = getelementptr double, ptr %4, i32 %19
  br label %24

24:                                               ; preds = %24, %18
  %25 = phi i32 [ 0, %18 ], [ %33, %24 ]
  %26 = phi double [ 0.000000e+00, %18 ], [ %32, %24 ]
  %27 = xor i32 %25, -1
  %28 = getelementptr double, ptr %23, i32 %27
  %29 = load double, ptr %28, align 8, !tbaa !2
  %30 = getelementptr inbounds double, ptr %5, i32 %25
  %31 = load double, ptr %30, align 8, !tbaa !2
  %32 = tail call double @llvm.fmuladd.f64(double %29, double %31, double %26)
  %33 = add nuw nsw i32 %25, 1
  %34 = icmp eq i32 %33, %19
  br i1 %34, label %35, label %24, !llvm.loop !9

35:                                               ; preds = %24
  %36 = tail call double @llvm.fmuladd.f64(double %22, double %21, double 1.000000e+00)
  %37 = fmul double %20, %36
  %38 = load double, ptr %23, align 8, !tbaa !2
  %39 = fadd double %32, %38
  %40 = fneg double %39
  %41 = fdiv double %40, %37
  %42 = getelementptr double, ptr %5, i32 %19
  br label %43

43:                                               ; preds = %43, %35
  %44 = phi i32 [ 0, %35 ], [ %52, %43 ]
  %45 = getelementptr inbounds double, ptr %5, i32 %44
  %46 = load double, ptr %45, align 8, !tbaa !2
  %47 = xor i32 %44, -1
  %48 = getelementptr double, ptr %42, i32 %47
  %49 = load double, ptr %48, align 8, !tbaa !2
  %50 = tail call double @llvm.fmuladd.f64(double %41, double %49, double %46)
  %51 = getelementptr inbounds [400 x double], ptr %3, i32 0, i32 %44
  store double %50, ptr %51, align 8, !tbaa !2
  %52 = add nuw nsw i32 %44, 1
  %53 = icmp eq i32 %52, %19
  br i1 %53, label %54, label %43, !llvm.loop !10

54:                                               ; preds = %43, %54
  %55 = phi i32 [ %59, %54 ], [ 0, %43 ]
  %56 = getelementptr inbounds [400 x double], ptr %3, i32 0, i32 %55
  %57 = load double, ptr %56, align 8, !tbaa !2
  %58 = getelementptr inbounds double, ptr %5, i32 %55
  store double %57, ptr %58, align 8, !tbaa !2
  %59 = add nuw nsw i32 %55, 1
  %60 = icmp eq i32 %59, %19
  br i1 %60, label %61, label %54, !llvm.loop !11

61:                                               ; preds = %54
  store double %41, ptr %42, align 8, !tbaa !2
  %62 = add nuw nsw i32 %19, 1
  %63 = icmp eq i32 %62, 400
  br i1 %63, label %64, label %18, !llvm.loop !12

64:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 3200, ptr nonnull %3) #5
  %65 = load ptr, ptr @stderr, align 4, !tbaa !13
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str) #4
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %68

68:                                               ; preds = %75, %64
  %69 = phi i32 [ 0, %64 ], [ %79, %75 ]
  %70 = trunc nuw i32 %69 to i16
  %71 = urem i16 %70, 20
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.3) #4
  br label %75

75:                                               ; preds = %73, %68
  %76 = getelementptr inbounds double, ptr %5, i32 %69
  %77 = load double, ptr %76, align 8, !tbaa !2
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.4, double noundef %77) #4
  %79 = add nuw nsw i32 %69, 1
  %80 = icmp eq i32 %79, 400
  br i1 %80, label %81, label %68, !llvm.loop !15

81:                                               ; preds = %75
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.6) #4
  tail call void @free(ptr noundef nonnull %4) #4
  tail call void @free(ptr noundef nonnull %5) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = distinct !{!15, !7, !8}
