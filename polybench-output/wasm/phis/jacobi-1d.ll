; ModuleID = './polybench-output/wasm/phis/jacobi-1d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-1d/jacobi-1d.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #2
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #2
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %15, %5 ]
  %7 = add nuw nsw i32 %6, 2
  %8 = uitofp nneg i32 %7 to double
  %9 = fdiv double %8, 4.000000e+02
  %10 = getelementptr inbounds double, ptr %3, i32 %6
  store double %9, ptr %10, align 8, !tbaa !2
  %11 = add nuw nsw i32 %6, 3
  %12 = uitofp nneg i32 %11 to double
  %13 = fdiv double %12, 4.000000e+02
  %14 = getelementptr inbounds double, ptr %4, i32 %6
  store double %13, ptr %14, align 8, !tbaa !2
  %15 = add nuw nsw i32 %6, 1
  %16 = icmp eq i32 %15, 400
  br i1 %16, label %17, label %5, !llvm.loop !6

17:                                               ; preds = %5, %47
  %18 = phi i32 [ %48, %47 ], [ 0, %5 ]
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 1, %17 ], [ %26, %19 ]
  %21 = getelementptr double, ptr %3, i32 %20
  %22 = getelementptr i8, ptr %21, i32 -8
  %23 = load double, ptr %22, align 8, !tbaa !2
  %24 = load double, ptr %21, align 8, !tbaa !2
  %25 = fadd double %23, %24
  %26 = add nuw nsw i32 %20, 1
  %27 = getelementptr inbounds double, ptr %3, i32 %26
  %28 = load double, ptr %27, align 8, !tbaa !2
  %29 = fadd double %25, %28
  %30 = fmul double %29, 3.333300e-01
  %31 = getelementptr inbounds double, ptr %4, i32 %20
  store double %30, ptr %31, align 8, !tbaa !2
  %32 = icmp eq i32 %26, 399
  br i1 %32, label %33, label %19, !llvm.loop !9

33:                                               ; preds = %19, %33
  %34 = phi i32 [ %40, %33 ], [ 1, %19 ]
  %35 = getelementptr double, ptr %4, i32 %34
  %36 = getelementptr i8, ptr %35, i32 -8
  %37 = load double, ptr %36, align 8, !tbaa !2
  %38 = load double, ptr %35, align 8, !tbaa !2
  %39 = fadd double %37, %38
  %40 = add nuw nsw i32 %34, 1
  %41 = getelementptr inbounds double, ptr %4, i32 %40
  %42 = load double, ptr %41, align 8, !tbaa !2
  %43 = fadd double %39, %42
  %44 = fmul double %43, 3.333300e-01
  %45 = getelementptr inbounds double, ptr %3, i32 %34
  store double %44, ptr %45, align 8, !tbaa !2
  %46 = icmp eq i32 %40, 399
  br i1 %46, label %47, label %33, !llvm.loop !10

47:                                               ; preds = %33
  %48 = add nuw nsw i32 %18, 1
  %49 = icmp eq i32 %48, 100
  br i1 %49, label %50, label %17, !llvm.loop !11

50:                                               ; preds = %47
  %51 = load ptr, ptr @stderr, align 4, !tbaa !12
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str) #2
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #2
  br label %54

54:                                               ; preds = %61, %50
  %55 = phi i32 [ 0, %50 ], [ %65, %61 ]
  %56 = trunc nuw i32 %55 to i16
  %57 = urem i16 %56, 20
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.3) #2
  br label %61

61:                                               ; preds = %59, %54
  %62 = getelementptr inbounds double, ptr %3, i32 %55
  %63 = load double, ptr %62, align 8, !tbaa !2
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.4, double noundef %63) #2
  %65 = add nuw nsw i32 %55, 1
  %66 = icmp eq i32 %65, 400
  br i1 %66, label %67, label %54, !llvm.loop !14

67:                                               ; preds = %61
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #2
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.6) #2
  tail call void @free(ptr noundef nonnull %3) #2
  tail call void @free(ptr noundef %4) #2
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

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
