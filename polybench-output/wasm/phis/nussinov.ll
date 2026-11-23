; ModuleID = './polybench-output/wasm/phis/nussinov.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/medley/nussinov/nussinov.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 1) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 250000, i32 noundef 4) #3
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  %7 = add nuw nsw i32 %6, 1
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 3
  %10 = getelementptr inbounds i8, ptr %3, i32 %6
  store i8 %9, ptr %10, align 1, !tbaa !2
  %11 = icmp eq i32 %7, 500
  br i1 %11, label %12, label %5, !llvm.loop !5

12:                                               ; preds = %5, %19
  %13 = phi i32 [ %20, %19 ], [ 0, %5 ]
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %17, %14 ]
  %16 = getelementptr inbounds [500 x i32], ptr %4, i32 %13, i32 %15
  store i32 0, ptr %16, align 4, !tbaa !8
  %17 = add nuw nsw i32 %15, 1
  %18 = icmp eq i32 %17, 500
  br i1 %18, label %19, label %14, !llvm.loop !10

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq i32 %20, 500
  br i1 %21, label %22, label %12, !llvm.loop !11

22:                                               ; preds = %19, %73
  %23 = phi i32 [ %74, %73 ], [ 499, %19 ]
  %24 = add nuw nsw i32 %23, 1
  %25 = icmp ult i32 %23, 499
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %3, i32 %23
  %28 = getelementptr inbounds [500 x i32], ptr %4, i32 %23, i32 %23
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %30 = getelementptr inbounds [500 x i32], ptr %4, i32 %24, i32 %23
  %31 = load i32, ptr %30, align 4, !tbaa !8
  br label %32

32:                                               ; preds = %69, %26
  %33 = phi i32 [ %31, %26 ], [ %41, %69 ]
  %34 = phi i32 [ %29, %26 ], [ %70, %69 ]
  %35 = phi i32 [ %24, %26 ], [ %71, %69 ]
  %36 = add nsw i32 %35, -1
  %37 = getelementptr inbounds [500 x i32], ptr %4, i32 %23, i32 %35
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 %34)
  %40 = getelementptr inbounds [500 x i32], ptr %4, i32 %24, i32 %35
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %42 = tail call i32 @llvm.smax.i32(i32 %39, i32 %41)
  store i32 %42, ptr %37, align 4, !tbaa !8
  %43 = icmp ult i32 %23, %36
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load i8, ptr %27, align 1, !tbaa !2
  %46 = sext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %3, i32 %35
  %48 = load i8, ptr %47, align 1, !tbaa !2
  %49 = sext i8 %48 to i32
  %50 = add nsw i32 %49, %46
  %51 = icmp eq i32 %50, 3
  %52 = zext i1 %51 to i32
  %53 = add nsw i32 %33, %52
  br label %54

54:                                               ; preds = %44, %32
  %55 = phi i32 [ %53, %44 ], [ %33, %32 ]
  %56 = tail call i32 @llvm.smax.i32(i32 %42, i32 %55)
  store i32 %56, ptr %37, align 4, !tbaa !8
  %57 = icmp ult i32 %24, %35
  br i1 %57, label %58, label %69

58:                                               ; preds = %54, %58
  %59 = phi i32 [ %67, %58 ], [ %56, %54 ]
  %60 = phi i32 [ %63, %58 ], [ %24, %54 ]
  %61 = getelementptr inbounds [500 x i32], ptr %4, i32 %23, i32 %60
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %63 = add nuw nsw i32 %60, 1
  %64 = getelementptr inbounds [500 x i32], ptr %4, i32 %63, i32 %35
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %66 = add nsw i32 %65, %62
  %67 = tail call i32 @llvm.smax.i32(i32 %59, i32 %66)
  store i32 %67, ptr %37, align 4, !tbaa !8
  %68 = icmp eq i32 %63, %35
  br i1 %68, label %69, label %58, !llvm.loop !12

69:                                               ; preds = %58, %54
  %70 = phi i32 [ %56, %54 ], [ %67, %58 ]
  %71 = add nuw nsw i32 %35, 1
  %72 = icmp eq i32 %71, 500
  br i1 %72, label %73, label %32, !llvm.loop !13

73:                                               ; preds = %69, %22
  %74 = add nsw i32 %23, -1
  %75 = icmp eq i32 %23, 0
  br i1 %75, label %76, label %22, !llvm.loop !14

76:                                               ; preds = %73
  %77 = load ptr, ptr @stderr, align 4, !tbaa !15
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str) #3
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %80

80:                                               ; preds = %100, %76
  %81 = phi i32 [ 500, %76 ], [ %105, %100 ]
  %82 = phi i32 [ 499, %76 ], [ %104, %100 ]
  %83 = phi i32 [ 500, %76 ], [ %103, %100 ]
  %84 = phi i32 [ 0, %76 ], [ %101, %100 ]
  %85 = phi i32 [ 0, %76 ], [ %102, %100 ]
  br label %86

86:                                               ; preds = %93, %80
  %87 = phi i32 [ %84, %80 ], [ %97, %93 ]
  %88 = phi i32 [ %85, %80 ], [ %98, %93 ]
  %89 = srem i32 %87, 20
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.3) #3
  br label %93

93:                                               ; preds = %91, %86
  %94 = getelementptr inbounds [500 x i32], ptr %4, i32 %85, i32 %88
  %95 = load i32, ptr %94, align 4, !tbaa !8
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.4, i32 noundef %95) #3
  %97 = add i32 %87, 1
  %98 = add nuw nsw i32 %88, 1
  %99 = icmp eq i32 %97, %81
  br i1 %99, label %100, label %86, !llvm.loop !17

100:                                              ; preds = %93
  %101 = add i32 %84, %83
  %102 = add nuw nsw i32 %85, 1
  %103 = add nsw i32 %83, -1
  %104 = add nsw i32 %82, -1
  %105 = add i32 %82, %81
  %106 = icmp eq i32 %102, 500
  br i1 %106, label %107, label %80, !llvm.loop !18

107:                                              ; preds = %100
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef nonnull %4) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !3, i64 0}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
