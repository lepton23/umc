; ModuleID = '/home/lepton/PolyBenchC-4.2.1/medley/floyd-warshall/floyd-warshall.c'
source_filename = "/home/lepton/PolyBenchC-4.2.1/medley/floyd-warshall/floyd-warshall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 250000, i32 noundef 4) #4
  br label %4

4:                                                ; preds = %26, %2
  %5 = phi i64 [ 0, %2 ], [ %27, %26 ]
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %24, %6 ]
  %8 = mul nuw nsw i64 %7, %5
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = urem i32 %9, 7
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr inbounds [500 x i32], ptr %3, i64 %5, i64 %7
  %13 = add nuw nsw i64 %7, %5
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = urem i32 %14, 13
  %16 = icmp eq i32 %15, 0
  %17 = urem i32 %14, 7
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %16, %18
  %20 = urem i32 %14, 11
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %21, %19
  %23 = select i1 %22, i32 999, i32 %11
  store i32 %23, ptr %12, align 4, !tbaa !5
  %24 = add nuw nsw i64 %7, 1
  %25 = icmp eq i64 %24, 500
  br i1 %25, label %26, label %6, !llvm.loop !9

26:                                               ; preds = %6
  %27 = add nuw nsw i64 %5, 1
  %28 = icmp eq i64 %27, 500
  br i1 %28, label %29, label %4, !llvm.loop !12

29:                                               ; preds = %26, %48
  %30 = phi i64 [ %49, %48 ], [ 0, %26 ]
  br label %31

31:                                               ; preds = %45, %29
  %32 = phi i64 [ 0, %29 ], [ %46, %45 ]
  %33 = getelementptr inbounds [500 x i32], ptr %3, i64 %32, i64 %30
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i64 [ 0, %31 ], [ %43, %34 ]
  %36 = getelementptr inbounds [500 x i32], ptr %3, i64 %32, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = load i32, ptr %33, align 4, !tbaa !5
  %39 = getelementptr inbounds [500 x i32], ptr %3, i64 %30, i64 %35
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = add nsw i32 %40, %38
  %42 = tail call i32 @llvm.smin.i32(i32 %37, i32 %41)
  store i32 %42, ptr %36, align 4, !tbaa !5
  %43 = add nuw nsw i64 %35, 1
  %44 = icmp eq i64 %43, 500
  br i1 %44, label %45, label %34, !llvm.loop !13

45:                                               ; preds = %34
  %46 = add nuw nsw i64 %32, 1
  %47 = icmp eq i64 %46, 500
  br i1 %47, label %48, label %31, !llvm.loop !14

48:                                               ; preds = %45
  %49 = add nuw nsw i64 %30, 1
  %50 = icmp eq i64 %49, 500
  br i1 %50, label %51, label %29, !llvm.loop !15

51:                                               ; preds = %48
  %52 = load ptr, ptr @stderr, align 8, !tbaa !16
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str) #4
  %54 = load ptr, ptr @stderr, align 8, !tbaa !16
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %56

56:                                               ; preds = %75, %51
  %57 = phi i64 [ 0, %51 ], [ %76, %75 ]
  %58 = mul nuw nsw i64 %57, 500
  br label %59

59:                                               ; preds = %68, %56
  %60 = phi i64 [ 0, %56 ], [ %73, %68 ]
  %61 = add nuw nsw i64 %60, %58
  %62 = trunc nuw nsw i64 %61 to i32
  %63 = urem i32 %62, 20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load ptr, ptr @stderr, align 8, !tbaa !16
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.3) #4
  br label %68

68:                                               ; preds = %65, %59
  %69 = load ptr, ptr @stderr, align 8, !tbaa !16
  %70 = getelementptr inbounds [500 x i32], ptr %3, i64 %57, i64 %60
  %71 = load i32, ptr %70, align 4, !tbaa !5
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.4, i32 noundef %71) #4
  %73 = add nuw nsw i64 %60, 1
  %74 = icmp eq i64 %73, 500
  br i1 %74, label %75, label %59, !llvm.loop !18

75:                                               ; preds = %68
  %76 = add nuw nsw i64 %57, 1
  %77 = icmp eq i64 %76, 500
  br i1 %77, label %78, label %56, !llvm.loop !19

78:                                               ; preds = %75
  %79 = load ptr, ptr @stderr, align 8, !tbaa !16
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %81 = load ptr, ptr @stderr, align 8, !tbaa !16
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.6) #4
  tail call void @free(ptr noundef nonnull %3) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
