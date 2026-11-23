; ModuleID = '/home/lepton/PolyBenchC-4.2.1/medley/nussinov/nussinov.c'
source_filename = "/home/lepton/PolyBenchC-4.2.1/medley/nussinov/nussinov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 1) #4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 250000, i32 noundef 4) #4
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %7, %5 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = trunc i64 %7 to i8
  %9 = and i8 %8, 3
  %10 = getelementptr inbounds i8, ptr %3, i64 %6
  store i8 %9, ptr %10, align 1, !tbaa !5
  %11 = icmp eq i64 %7, 500
  br i1 %11, label %12, label %5, !llvm.loop !8

12:                                               ; preds = %5, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %5 ]
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %17, %14 ]
  %16 = getelementptr inbounds [500 x i32], ptr %4, i64 %13, i64 %15
  store i32 0, ptr %16, align 4, !tbaa !11
  %17 = add nuw nsw i64 %15, 1
  %18 = icmp eq i64 %17, 500
  br i1 %18, label %19, label %14, !llvm.loop !13

19:                                               ; preds = %14
  %20 = add nuw nsw i64 %13, 1
  %21 = icmp eq i64 %20, 500
  br i1 %21, label %22, label %12, !llvm.loop !14

22:                                               ; preds = %19, %71
  %23 = phi i64 [ %72, %71 ], [ 499, %19 ]
  %24 = phi i64 [ %74, %71 ], [ 500, %19 ]
  %25 = add nuw nsw i64 %23, 1
  %26 = icmp ult i64 %23, 499
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, ptr %3, i64 %23
  br label %29

29:                                               ; preds = %68, %27
  %30 = phi i64 [ %24, %27 ], [ %69, %68 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds [500 x i32], ptr %4, i64 %23, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !11
  %34 = getelementptr inbounds [500 x i32], ptr %4, i64 %23, i64 %31
  %35 = load i32, ptr %34, align 4, !tbaa !11
  %36 = tail call i32 @llvm.smax.i32(i32 %33, i32 %35)
  %37 = getelementptr inbounds [500 x i32], ptr %4, i64 %25, i64 %30
  %38 = load i32, ptr %37, align 4, !tbaa !11
  %39 = tail call i32 @llvm.smax.i32(i32 %36, i32 %38)
  store i32 %39, ptr %32, align 4, !tbaa !11
  %40 = icmp ult i64 %23, %31
  %41 = getelementptr inbounds [500 x i32], ptr %4, i64 %25, i64 %31
  %42 = load i32, ptr %41, align 4, !tbaa !11
  br i1 %40, label %43, label %53

43:                                               ; preds = %29
  %44 = load i8, ptr %28, align 1, !tbaa !5
  %45 = sext i8 %44 to i32
  %46 = getelementptr inbounds i8, ptr %3, i64 %30
  %47 = load i8, ptr %46, align 1, !tbaa !5
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, %45
  %50 = icmp eq i32 %49, 3
  %51 = zext i1 %50 to i32
  %52 = add nsw i32 %42, %51
  br label %53

53:                                               ; preds = %43, %29
  %54 = phi i32 [ %52, %43 ], [ %42, %29 ]
  %55 = tail call i32 @llvm.smax.i32(i32 %39, i32 %54)
  store i32 %55, ptr %32, align 4, !tbaa !11
  %56 = icmp ult i64 %25, %30
  br i1 %56, label %57, label %68

57:                                               ; preds = %53, %57
  %58 = phi i64 [ %62, %57 ], [ %24, %53 ]
  %59 = phi i32 [ %66, %57 ], [ %55, %53 ]
  %60 = getelementptr inbounds [500 x i32], ptr %4, i64 %23, i64 %58
  %61 = load i32, ptr %60, align 4, !tbaa !11
  %62 = add nuw nsw i64 %58, 1
  %63 = getelementptr inbounds [500 x i32], ptr %4, i64 %62, i64 %30
  %64 = load i32, ptr %63, align 4, !tbaa !11
  %65 = add nsw i32 %64, %61
  %66 = tail call i32 @llvm.smax.i32(i32 %59, i32 %65)
  store i32 %66, ptr %32, align 4, !tbaa !11
  %67 = icmp eq i64 %62, %30
  br i1 %67, label %68, label %57, !llvm.loop !15

68:                                               ; preds = %57, %53
  %69 = add nuw nsw i64 %30, 1
  %70 = icmp eq i64 %69, 500
  br i1 %70, label %71, label %29, !llvm.loop !16

71:                                               ; preds = %68, %22
  %72 = add nsw i64 %23, -1
  %73 = icmp eq i64 %23, 0
  %74 = add nsw i64 %24, -1
  br i1 %73, label %75, label %22, !llvm.loop !17

75:                                               ; preds = %71
  %76 = load ptr, ptr @stderr, align 8, !tbaa !18
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str) #4
  %78 = load ptr, ptr @stderr, align 8, !tbaa !18
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %80

80:                                               ; preds = %100, %75
  %81 = phi i32 [ 500, %75 ], [ %103, %100 ]
  %82 = phi i64 [ 0, %75 ], [ %102, %100 ]
  %83 = phi i32 [ 0, %75 ], [ %101, %100 ]
  br label %84

84:                                               ; preds = %92, %80
  %85 = phi i64 [ %82, %80 ], [ %98, %92 ]
  %86 = phi i32 [ %83, %80 ], [ %97, %92 ]
  %87 = srem i32 %86, 20
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load ptr, ptr @stderr, align 8, !tbaa !18
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.3) #4
  br label %92

92:                                               ; preds = %89, %84
  %93 = load ptr, ptr @stderr, align 8, !tbaa !18
  %94 = getelementptr inbounds [500 x i32], ptr %4, i64 %82, i64 %85
  %95 = load i32, ptr %94, align 4, !tbaa !11
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.4, i32 noundef %95) #4
  %97 = add nsw i32 %86, 1
  %98 = add nuw nsw i64 %85, 1
  %99 = icmp eq i64 %98, 500
  br i1 %99, label %100, label %84, !llvm.loop !20

100:                                              ; preds = %92
  %101 = add i32 %83, %81
  %102 = add nuw nsw i64 %82, 1
  %103 = add nsw i32 %81, -1
  %104 = icmp eq i64 %102, 500
  br i1 %104, label %105, label %80, !llvm.loop !21

105:                                              ; preds = %100
  %106 = load ptr, ptr @stderr, align 8, !tbaa !18
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %108 = load ptr, ptr @stderr, align 8, !tbaa !18
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.6) #4
  tail call void @free(ptr noundef %3) #4
  tail call void @free(ptr noundef nonnull %4) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9, !10}
