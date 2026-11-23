; ModuleID = './polybench-output/no-phis/floyd-warshall.bc'
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
  %.reg2mem = alloca i64, align 8
  %.reg2mem10 = alloca i64, align 8
  %.reg2mem13 = alloca i64, align 8
  %.reg2mem17 = alloca i64, align 8
  %.reg2mem19 = alloca i64, align 8
  %.reg2mem23 = alloca i64, align 8
  %.reg2mem26 = alloca i64, align 8
  %.reg2mem29 = alloca i64, align 8
  %.reg2mem32 = alloca ptr, align 8
  %.reg2mem34 = alloca i64, align 8
  %.reg2mem38 = alloca i64, align 8
  %.reg2mem42 = alloca i64, align 8
  %.reg2mem45 = alloca i64, align 8
  %.reg2mem48 = alloca i64, align 8
  %.reg2mem53 = alloca ptr, align 8
  %.reg2mem60 = alloca i64, align 8
  %.reg2mem62 = alloca i64, align 8
  %.reg2mem64 = alloca i64, align 8
  %.reg2mem66 = alloca i64, align 8
  %.reg2mem68 = alloca i64, align 8
  %.reg2mem70 = alloca i64, align 8
  %.reg2mem72 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 250000, i32 noundef 4) #4
  store ptr %3, ptr %.reg2mem53, align 8
  store i64 0, ptr %.reg2mem72, align 8
  br label %4

4:                                                ; preds = %._crit_edge2, %2
  %.reload73 = load i64, ptr %.reg2mem72, align 8
  store i64 %.reload73, ptr %.reg2mem48, align 8
  store i64 0, ptr %.reg2mem70, align 8
  br label %5

5:                                                ; preds = %._crit_edge, %4
  %.reload71 = load i64, ptr %.reg2mem70, align 8
  %.reload52 = load i64, ptr %.reg2mem48, align 8
  %6 = mul nuw nsw i64 %.reload71, %.reload52
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = urem i32 %7, 7
  %9 = add nuw nsw i32 %8, 1
  %.reload51 = load i64, ptr %.reg2mem48, align 8
  %.reload58 = load ptr, ptr %.reg2mem53, align 8
  %10 = getelementptr inbounds [500 x i32], ptr %.reload58, i64 %.reload51, i64 %.reload71
  %.reload50 = load i64, ptr %.reg2mem48, align 8
  %11 = add nuw nsw i64 %.reload71, %.reload50
  %12 = trunc nuw nsw i64 %11 to i32
  %13 = urem i32 %12, 13
  %14 = icmp eq i32 %13, 0
  %15 = urem i32 %12, 7
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  %18 = urem i32 %12, 11
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %19, %17
  %21 = select i1 %20, i32 999, i32 %9
  store i32 %21, ptr %10, align 4, !tbaa !5
  %22 = add nuw nsw i64 %.reload71, 1
  store i64 %22, ptr %.reg2mem45, align 8
  %.reload47 = load i64, ptr %.reg2mem45, align 8
  %23 = icmp eq i64 %.reload47, 500
  br i1 %23, label %24, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %5
  %.reload46 = load i64, ptr %.reg2mem45, align 8
  store i64 %.reload46, ptr %.reg2mem70, align 8
  br label %5

24:                                               ; preds = %5
  %.reload49 = load i64, ptr %.reg2mem48, align 8
  %25 = add nuw nsw i64 %.reload49, 1
  store i64 %25, ptr %.reg2mem42, align 8
  %.reload44 = load i64, ptr %.reg2mem42, align 8
  %26 = icmp eq i64 %.reload44, 500
  br i1 %26, label %._crit_edge1, label %._crit_edge2, !llvm.loop !12

._crit_edge2:                                     ; preds = %24
  %.reload43 = load i64, ptr %.reg2mem42, align 8
  store i64 %.reload43, ptr %.reg2mem72, align 8
  br label %4

._crit_edge1:                                     ; preds = %24
  store i64 0, ptr %.reg2mem68, align 8
  br label %27

27:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload69 = load i64, ptr %.reg2mem68, align 8
  store i64 %.reload69, ptr %.reg2mem38, align 8
  store i64 0, ptr %.reg2mem66, align 8
  br label %28

28:                                               ; preds = %._crit_edge4, %27
  %.reload67 = load i64, ptr %.reg2mem66, align 8
  store i64 %.reload67, ptr %.reg2mem34, align 8
  %.reload37 = load i64, ptr %.reg2mem34, align 8
  %.reload41 = load i64, ptr %.reg2mem38, align 8
  %.reload57 = load ptr, ptr %.reg2mem53, align 8
  %29 = getelementptr inbounds [500 x i32], ptr %.reload57, i64 %.reload37, i64 %.reload41
  store ptr %29, ptr %.reg2mem32, align 8
  store i64 0, ptr %.reg2mem64, align 8
  br label %30

30:                                               ; preds = %._crit_edge3, %28
  %.reload65 = load i64, ptr %.reg2mem64, align 8
  %.reload36 = load i64, ptr %.reg2mem34, align 8
  %.reload56 = load ptr, ptr %.reg2mem53, align 8
  %31 = getelementptr inbounds [500 x i32], ptr %.reload56, i64 %.reload36, i64 %.reload65
  %32 = load i32, ptr %31, align 4, !tbaa !5
  %.reload33 = load ptr, ptr %.reg2mem32, align 8
  %33 = load i32, ptr %.reload33, align 4, !tbaa !5
  %.reload40 = load i64, ptr %.reg2mem38, align 8
  %.reload55 = load ptr, ptr %.reg2mem53, align 8
  %34 = getelementptr inbounds [500 x i32], ptr %.reload55, i64 %.reload40, i64 %.reload65
  %35 = load i32, ptr %34, align 4, !tbaa !5
  %36 = add nsw i32 %35, %33
  %37 = tail call i32 @llvm.smin.i32(i32 %32, i32 %36)
  store i32 %37, ptr %31, align 4, !tbaa !5
  %38 = add nuw nsw i64 %.reload65, 1
  store i64 %38, ptr %.reg2mem29, align 8
  %.reload31 = load i64, ptr %.reg2mem29, align 8
  %39 = icmp eq i64 %.reload31, 500
  br i1 %39, label %40, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %30
  %.reload30 = load i64, ptr %.reg2mem29, align 8
  store i64 %.reload30, ptr %.reg2mem64, align 8
  br label %30

40:                                               ; preds = %30
  %.reload35 = load i64, ptr %.reg2mem34, align 8
  %41 = add nuw nsw i64 %.reload35, 1
  store i64 %41, ptr %.reg2mem26, align 8
  %.reload28 = load i64, ptr %.reg2mem26, align 8
  %42 = icmp eq i64 %.reload28, 500
  br i1 %42, label %43, label %._crit_edge4, !llvm.loop !14

._crit_edge4:                                     ; preds = %40
  %.reload27 = load i64, ptr %.reg2mem26, align 8
  store i64 %.reload27, ptr %.reg2mem66, align 8
  br label %28

43:                                               ; preds = %40
  %.reload39 = load i64, ptr %.reg2mem38, align 8
  %44 = add nuw nsw i64 %.reload39, 1
  store i64 %44, ptr %.reg2mem23, align 8
  %.reload25 = load i64, ptr %.reg2mem23, align 8
  %45 = icmp eq i64 %.reload25, 500
  br i1 %45, label %46, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %43
  %.reload24 = load i64, ptr %.reg2mem23, align 8
  store i64 %.reload24, ptr %.reg2mem68, align 8
  br label %27

46:                                               ; preds = %43
  %47 = load ptr, ptr @stderr, align 8, !tbaa !16
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str) #4
  %49 = load ptr, ptr @stderr, align 8, !tbaa !16
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i64 0, ptr %.reg2mem62, align 8
  br label %51

51:                                               ; preds = %._crit_edge8, %46
  %.reload63 = load i64, ptr %.reg2mem62, align 8
  store i64 %.reload63, ptr %.reg2mem19, align 8
  %.reload22 = load i64, ptr %.reg2mem19, align 8
  %52 = mul nuw nsw i64 %.reload22, 500
  store i64 %52, ptr %.reg2mem17, align 8
  store i64 0, ptr %.reg2mem60, align 8
  br label %53

53:                                               ; preds = %._crit_edge7, %51
  %.reload61 = load i64, ptr %.reg2mem60, align 8
  store i64 %.reload61, ptr %.reg2mem13, align 8
  %.reload16 = load i64, ptr %.reg2mem13, align 8
  %.reload18 = load i64, ptr %.reg2mem17, align 8
  %54 = add nuw nsw i64 %.reload16, %.reload18
  %55 = trunc nuw nsw i64 %54 to i32
  %56 = urem i32 %55, 20
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %._crit_edge6

._crit_edge6:                                     ; preds = %53
  br label %61

58:                                               ; preds = %53
  %59 = load ptr, ptr @stderr, align 8, !tbaa !16
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.3) #4
  br label %61

61:                                               ; preds = %._crit_edge6, %58
  %62 = load ptr, ptr @stderr, align 8, !tbaa !16
  %.reload15 = load i64, ptr %.reg2mem13, align 8
  %.reload21 = load i64, ptr %.reg2mem19, align 8
  %.reload54 = load ptr, ptr %.reg2mem53, align 8
  %63 = getelementptr inbounds [500 x i32], ptr %.reload54, i64 %.reload21, i64 %.reload15
  %64 = load i32, ptr %63, align 4, !tbaa !5
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.4, i32 noundef %64) #4
  %.reload14 = load i64, ptr %.reg2mem13, align 8
  %66 = add nuw nsw i64 %.reload14, 1
  store i64 %66, ptr %.reg2mem10, align 8
  %.reload12 = load i64, ptr %.reg2mem10, align 8
  %67 = icmp eq i64 %.reload12, 500
  br i1 %67, label %68, label %._crit_edge7, !llvm.loop !18

._crit_edge7:                                     ; preds = %61
  %.reload11 = load i64, ptr %.reg2mem10, align 8
  store i64 %.reload11, ptr %.reg2mem60, align 8
  br label %53

68:                                               ; preds = %61
  %.reload20 = load i64, ptr %.reg2mem19, align 8
  %69 = add nuw nsw i64 %.reload20, 1
  store i64 %69, ptr %.reg2mem, align 8
  %.reload9 = load i64, ptr %.reg2mem, align 8
  %70 = icmp eq i64 %.reload9, 500
  br i1 %70, label %71, label %._crit_edge8, !llvm.loop !19

._crit_edge8:                                     ; preds = %68
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %.reg2mem62, align 8
  br label %51

71:                                               ; preds = %68
  %72 = load ptr, ptr @stderr, align 8, !tbaa !16
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %74 = load ptr, ptr @stderr, align 8, !tbaa !16
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.6) #4
  %.reload59 = load ptr, ptr %.reg2mem53, align 8
  tail call void @free(ptr noundef nonnull %.reload59) #4
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
