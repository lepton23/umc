; ModuleID = './polybench-output/wasm/phis/floyd-warshall.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/medley/floyd-warshall/floyd-warshall.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 250000, i32 noundef 4) #3
  br label %4

4:                                                ; preds = %24, %2
  %5 = phi i32 [ 0, %2 ], [ %25, %24 ]
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ 0, %4 ], [ %22, %6 ]
  %8 = mul nuw nsw i32 %7, %5
  %9 = urem i32 %8, 7
  %10 = add nuw nsw i32 %9, 1
  %11 = getelementptr inbounds [500 x i32], ptr %3, i32 %5, i32 %7
  %12 = add nuw nsw i32 %7, %5
  %13 = urem i32 %12, 13
  %14 = icmp eq i32 %13, 0
  %15 = urem i32 %12, 7
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  %18 = urem i32 %12, 11
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %19, %17
  %21 = select i1 %20, i32 999, i32 %10
  store i32 %21, ptr %11, align 4, !tbaa !2
  %22 = add nuw nsw i32 %7, 1
  %23 = icmp eq i32 %22, 500
  br i1 %23, label %24, label %6, !llvm.loop !6

24:                                               ; preds = %6
  %25 = add nuw nsw i32 %5, 1
  %26 = icmp eq i32 %25, 500
  br i1 %26, label %27, label %4, !llvm.loop !9

27:                                               ; preds = %24, %46
  %28 = phi i32 [ %47, %46 ], [ 0, %24 ]
  br label %29

29:                                               ; preds = %43, %27
  %30 = phi i32 [ 0, %27 ], [ %44, %43 ]
  %31 = getelementptr inbounds [500 x i32], ptr %3, i32 %30, i32 %28
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ 0, %29 ], [ %41, %32 ]
  %34 = getelementptr inbounds [500 x i32], ptr %3, i32 %30, i32 %33
  %35 = load i32, ptr %34, align 4, !tbaa !2
  %36 = load i32, ptr %31, align 4, !tbaa !2
  %37 = getelementptr inbounds [500 x i32], ptr %3, i32 %28, i32 %33
  %38 = load i32, ptr %37, align 4, !tbaa !2
  %39 = add nsw i32 %38, %36
  %40 = tail call i32 @llvm.smin.i32(i32 %35, i32 %39)
  store i32 %40, ptr %34, align 4, !tbaa !2
  %41 = add nuw nsw i32 %33, 1
  %42 = icmp eq i32 %41, 500
  br i1 %42, label %43, label %32, !llvm.loop !10

43:                                               ; preds = %32
  %44 = add nuw nsw i32 %30, 1
  %45 = icmp eq i32 %44, 500
  br i1 %45, label %46, label %29, !llvm.loop !11

46:                                               ; preds = %43
  %47 = add nuw nsw i32 %28, 1
  %48 = icmp eq i32 %47, 500
  br i1 %48, label %49, label %27, !llvm.loop !12

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 4, !tbaa !13
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str) #3
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %53

53:                                               ; preds = %69, %49
  %54 = phi i32 [ 0, %49 ], [ %70, %69 ]
  %55 = mul nuw nsw i32 %54, 500
  br label %56

56:                                               ; preds = %63, %53
  %57 = phi i32 [ 0, %53 ], [ %67, %63 ]
  %58 = add nuw nsw i32 %57, %55
  %59 = urem i32 %58, 20
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.3) #3
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds [500 x i32], ptr %3, i32 %54, i32 %57
  %65 = load i32, ptr %64, align 4, !tbaa !2
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.4, i32 noundef %65) #3
  %67 = add nuw nsw i32 %57, 1
  %68 = icmp eq i32 %67, 500
  br i1 %68, label %69, label %56, !llvm.loop !15

69:                                               ; preds = %63
  %70 = add nuw nsw i32 %54, 1
  %71 = icmp eq i32 %70, 500
  br i1 %71, label %72, label %53, !llvm.loop !16

72:                                               ; preds = %69
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef nonnull %3) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
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
!16 = distinct !{!16, !7, !8}
