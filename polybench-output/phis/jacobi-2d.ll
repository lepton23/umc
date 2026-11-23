; ModuleID = '/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-2d/jacobi-2d.c'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-2d/jacobi-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #4
  br label %5

5:                                                ; preds = %24, %2
  %6 = phi i64 [ 0, %2 ], [ %25, %24 ]
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = uitofp nneg i32 %7 to double
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %22, %9 ]
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, 2
  %13 = uitofp nneg i32 %12 to double
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %13, double 2.000000e+00)
  %15 = fdiv double %14, 2.500000e+02
  %16 = getelementptr inbounds [250 x double], ptr %3, i64 %6, i64 %10
  store double %15, ptr %16, align 8, !tbaa !5
  %17 = add i32 %11, 3
  %18 = uitofp nneg i32 %17 to double
  %19 = tail call double @llvm.fmuladd.f64(double %8, double %18, double 3.000000e+00)
  %20 = fdiv double %19, 2.500000e+02
  %21 = getelementptr inbounds [250 x double], ptr %4, i64 %6, i64 %10
  store double %20, ptr %21, align 8, !tbaa !5
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, 250
  br i1 %23, label %24, label %9, !llvm.loop !9

24:                                               ; preds = %9
  %25 = add nuw nsw i64 %6, 1
  %26 = icmp eq i64 %25, 250
  br i1 %26, label %27, label %5, !llvm.loop !12

27:                                               ; preds = %24, %87
  %28 = phi i32 [ %88, %87 ], [ 0, %24 ]
  br label %29

29:                                               ; preds = %55, %27
  %30 = phi i64 [ 1, %27 ], [ %56, %55 ]
  %31 = getelementptr inbounds [250 x double], ptr %3, i64 %30
  %32 = getelementptr inbounds i8, ptr %31, i64 2000
  %33 = getelementptr i8, ptr %31, i64 -2000
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi i64 [ 1, %29 ], [ %42, %34 ]
  %36 = getelementptr inbounds [250 x double], ptr %3, i64 %30, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !5
  %38 = add nsw i64 %35, -1
  %39 = getelementptr inbounds [250 x double], ptr %3, i64 %30, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !5
  %41 = fadd double %37, %40
  %42 = add nuw nsw i64 %35, 1
  %43 = getelementptr inbounds [250 x double], ptr %3, i64 %30, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = fadd double %41, %44
  %46 = getelementptr inbounds [250 x double], ptr %32, i64 0, i64 %35
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = fadd double %45, %47
  %49 = getelementptr inbounds [250 x double], ptr %33, i64 0, i64 %35
  %50 = load double, ptr %49, align 8, !tbaa !5
  %51 = fadd double %48, %50
  %52 = fmul double %51, 2.000000e-01
  %53 = getelementptr inbounds [250 x double], ptr %4, i64 %30, i64 %35
  store double %52, ptr %53, align 8, !tbaa !5
  %54 = icmp eq i64 %42, 249
  br i1 %54, label %55, label %34, !llvm.loop !13

55:                                               ; preds = %34
  %56 = add nuw nsw i64 %30, 1
  %57 = icmp eq i64 %56, 249
  br i1 %57, label %58, label %29, !llvm.loop !14

58:                                               ; preds = %55, %84
  %59 = phi i64 [ %85, %84 ], [ 1, %55 ]
  %60 = getelementptr inbounds [250 x double], ptr %4, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 2000
  %62 = getelementptr i8, ptr %60, i64 -2000
  br label %63

63:                                               ; preds = %63, %58
  %64 = phi i64 [ 1, %58 ], [ %71, %63 ]
  %65 = getelementptr inbounds [250 x double], ptr %4, i64 %59, i64 %64
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = add nsw i64 %64, -1
  %68 = getelementptr inbounds [250 x double], ptr %4, i64 %59, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = fadd double %66, %69
  %71 = add nuw nsw i64 %64, 1
  %72 = getelementptr inbounds [250 x double], ptr %4, i64 %59, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = fadd double %70, %73
  %75 = getelementptr inbounds [250 x double], ptr %61, i64 0, i64 %64
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = fadd double %74, %76
  %78 = getelementptr inbounds [250 x double], ptr %62, i64 0, i64 %64
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = fadd double %77, %79
  %81 = fmul double %80, 2.000000e-01
  %82 = getelementptr inbounds [250 x double], ptr %3, i64 %59, i64 %64
  store double %81, ptr %82, align 8, !tbaa !5
  %83 = icmp eq i64 %71, 249
  br i1 %83, label %84, label %63, !llvm.loop !15

84:                                               ; preds = %63
  %85 = add nuw nsw i64 %59, 1
  %86 = icmp eq i64 %85, 249
  br i1 %86, label %87, label %58, !llvm.loop !16

87:                                               ; preds = %84
  %88 = add nuw nsw i32 %28, 1
  %89 = icmp eq i32 %88, 100
  br i1 %89, label %90, label %27, !llvm.loop !17

90:                                               ; preds = %87
  %91 = load ptr, ptr @stderr, align 8, !tbaa !18
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str) #4
  %93 = load ptr, ptr @stderr, align 8, !tbaa !18
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %95

95:                                               ; preds = %114, %90
  %96 = phi i64 [ 0, %90 ], [ %115, %114 ]
  %97 = mul nuw nsw i64 %96, 250
  br label %98

98:                                               ; preds = %107, %95
  %99 = phi i64 [ 0, %95 ], [ %112, %107 ]
  %100 = add nuw nsw i64 %99, %97
  %101 = trunc nuw nsw i64 %100 to i32
  %102 = urem i32 %101, 20
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load ptr, ptr @stderr, align 8, !tbaa !18
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.3) #4
  br label %107

107:                                              ; preds = %104, %98
  %108 = load ptr, ptr @stderr, align 8, !tbaa !18
  %109 = getelementptr inbounds [250 x double], ptr %3, i64 %96, i64 %99
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.4, double noundef %110) #4
  %112 = add nuw nsw i64 %99, 1
  %113 = icmp eq i64 %112, 250
  br i1 %113, label %114, label %98, !llvm.loop !20

114:                                              ; preds = %107
  %115 = add nuw nsw i64 %96, 1
  %116 = icmp eq i64 %115, 250
  br i1 %116, label %117, label %95, !llvm.loop !21

117:                                              ; preds = %114
  %118 = load ptr, ptr @stderr, align 8, !tbaa !18
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %120 = load ptr, ptr @stderr, align 8, !tbaa !18
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.6) #4
  tail call void @free(ptr noundef nonnull %3) #4
  tail call void @free(ptr noundef %4) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
