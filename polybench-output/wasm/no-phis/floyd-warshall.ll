; ModuleID = './polybench-output/wasm/no-phis/floyd-warshall.bc'
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
  %.reg2mem = alloca i32, align 4
  %.reg2mem10 = alloca i32, align 4
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem23 = alloca ptr, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem39 = alloca ptr, align 4
  %.reg2mem41 = alloca i32, align 4
  %.reg2mem45 = alloca i32, align 4
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem55 = alloca i32, align 4
  %.reg2mem60 = alloca ptr, align 4
  %.reg2mem67 = alloca i32, align 4
  %.reg2mem69 = alloca i32, align 4
  %.reg2mem71 = alloca i32, align 4
  %.reg2mem73 = alloca i32, align 4
  %.reg2mem75 = alloca i32, align 4
  %.reg2mem77 = alloca i32, align 4
  %.reg2mem79 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 250000, i32 noundef 4) #3
  store ptr %3, ptr %.reg2mem60, align 4
  store i32 0, ptr %.reg2mem79, align 4
  br label %4

4:                                                ; preds = %._crit_edge2, %2
  %.reload80 = load i32, ptr %.reg2mem79, align 4
  store i32 %.reload80, ptr %.reg2mem55, align 4
  store i32 0, ptr %.reg2mem77, align 4
  br label %5

5:                                                ; preds = %._crit_edge, %4
  %.reload78 = load i32, ptr %.reg2mem77, align 4
  %.reload59 = load i32, ptr %.reg2mem55, align 4
  %6 = mul nuw nsw i32 %.reload78, %.reload59
  %7 = urem i32 %6, 7
  %8 = add nuw nsw i32 %7, 1
  %.reload58 = load i32, ptr %.reg2mem55, align 4
  %.reload65 = load ptr, ptr %.reg2mem60, align 4
  %9 = getelementptr inbounds [500 x i32], ptr %.reload65, i32 %.reload58, i32 %.reload78
  %.reload57 = load i32, ptr %.reg2mem55, align 4
  %10 = add nuw nsw i32 %.reload78, %.reload57
  %11 = urem i32 %10, 13
  %12 = icmp eq i32 %11, 0
  %13 = urem i32 %10, 7
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %12, %14
  %16 = urem i32 %10, 11
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %17, %15
  %19 = select i1 %18, i32 999, i32 %8
  store i32 %19, ptr %9, align 4, !tbaa !2
  %20 = add nuw nsw i32 %.reload78, 1
  store i32 %20, ptr %.reg2mem52, align 4
  %.reload54 = load i32, ptr %.reg2mem52, align 4
  %21 = icmp eq i32 %.reload54, 500
  br i1 %21, label %22, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %5
  %.reload53 = load i32, ptr %.reg2mem52, align 4
  store i32 %.reload53, ptr %.reg2mem77, align 4
  br label %5

22:                                               ; preds = %5
  %.reload56 = load i32, ptr %.reg2mem55, align 4
  %23 = add nuw nsw i32 %.reload56, 1
  store i32 %23, ptr %.reg2mem49, align 4
  %.reload51 = load i32, ptr %.reg2mem49, align 4
  %24 = icmp eq i32 %.reload51, 500
  br i1 %24, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %22
  %.reload50 = load i32, ptr %.reg2mem49, align 4
  store i32 %.reload50, ptr %.reg2mem79, align 4
  br label %4

._crit_edge1:                                     ; preds = %22
  store i32 0, ptr %.reg2mem75, align 4
  br label %25

25:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload76 = load i32, ptr %.reg2mem75, align 4
  store i32 %.reload76, ptr %.reg2mem45, align 4
  store i32 0, ptr %.reg2mem73, align 4
  br label %26

26:                                               ; preds = %._crit_edge4, %25
  %.reload74 = load i32, ptr %.reg2mem73, align 4
  store i32 %.reload74, ptr %.reg2mem41, align 4
  %.reload44 = load i32, ptr %.reg2mem41, align 4
  %.reload48 = load i32, ptr %.reg2mem45, align 4
  %.reload64 = load ptr, ptr %.reg2mem60, align 4
  %27 = getelementptr inbounds [500 x i32], ptr %.reload64, i32 %.reload44, i32 %.reload48
  store ptr %27, ptr %.reg2mem39, align 4
  store i32 0, ptr %.reg2mem71, align 4
  br label %28

28:                                               ; preds = %._crit_edge3, %26
  %.reload72 = load i32, ptr %.reg2mem71, align 4
  %.reload43 = load i32, ptr %.reg2mem41, align 4
  %.reload63 = load ptr, ptr %.reg2mem60, align 4
  %29 = getelementptr inbounds [500 x i32], ptr %.reload63, i32 %.reload43, i32 %.reload72
  %30 = load i32, ptr %29, align 4, !tbaa !2
  %.reload40 = load ptr, ptr %.reg2mem39, align 4
  %31 = load i32, ptr %.reload40, align 4, !tbaa !2
  %.reload47 = load i32, ptr %.reg2mem45, align 4
  %.reload62 = load ptr, ptr %.reg2mem60, align 4
  %32 = getelementptr inbounds [500 x i32], ptr %.reload62, i32 %.reload47, i32 %.reload72
  %33 = load i32, ptr %32, align 4, !tbaa !2
  %34 = add nsw i32 %33, %31
  %35 = tail call i32 @llvm.smin.i32(i32 %30, i32 %34)
  store i32 %35, ptr %29, align 4, !tbaa !2
  %36 = add nuw nsw i32 %.reload72, 1
  store i32 %36, ptr %.reg2mem36, align 4
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %37 = icmp eq i32 %.reload38, 500
  br i1 %37, label %38, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %28
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  store i32 %.reload37, ptr %.reg2mem71, align 4
  br label %28

38:                                               ; preds = %28
  %.reload42 = load i32, ptr %.reg2mem41, align 4
  %39 = add nuw nsw i32 %.reload42, 1
  store i32 %39, ptr %.reg2mem33, align 4
  %.reload35 = load i32, ptr %.reg2mem33, align 4
  %40 = icmp eq i32 %.reload35, 500
  br i1 %40, label %41, label %._crit_edge4, !llvm.loop !11

._crit_edge4:                                     ; preds = %38
  %.reload34 = load i32, ptr %.reg2mem33, align 4
  store i32 %.reload34, ptr %.reg2mem73, align 4
  br label %26

41:                                               ; preds = %38
  %.reload46 = load i32, ptr %.reg2mem45, align 4
  %42 = add nuw nsw i32 %.reload46, 1
  store i32 %42, ptr %.reg2mem30, align 4
  %.reload32 = load i32, ptr %.reg2mem30, align 4
  %43 = icmp eq i32 %.reload32, 500
  br i1 %43, label %44, label %._crit_edge5, !llvm.loop !12

._crit_edge5:                                     ; preds = %41
  %.reload31 = load i32, ptr %.reg2mem30, align 4
  store i32 %.reload31, ptr %.reg2mem75, align 4
  br label %25

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 4, !tbaa !13
  store ptr %45, ptr %.reg2mem23, align 4
  %.reload29 = load ptr, ptr %.reg2mem23, align 4
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload29, ptr noundef nonnull @.str) #3
  %.reload28 = load ptr, ptr %.reg2mem23, align 4
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload28, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem69, align 4
  br label %48

48:                                               ; preds = %._crit_edge8, %44
  %.reload70 = load i32, ptr %.reg2mem69, align 4
  store i32 %.reload70, ptr %.reg2mem19, align 4
  %.reload22 = load i32, ptr %.reg2mem19, align 4
  %49 = mul nuw nsw i32 %.reload22, 500
  store i32 %49, ptr %.reg2mem17, align 4
  store i32 0, ptr %.reg2mem67, align 4
  br label %50

50:                                               ; preds = %._crit_edge7, %48
  %.reload68 = load i32, ptr %.reg2mem67, align 4
  store i32 %.reload68, ptr %.reg2mem13, align 4
  %.reload16 = load i32, ptr %.reg2mem13, align 4
  %.reload18 = load i32, ptr %.reg2mem17, align 4
  %51 = add nuw nsw i32 %.reload16, %.reload18
  %52 = urem i32 %51, 20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %._crit_edge6

._crit_edge6:                                     ; preds = %50
  br label %56

54:                                               ; preds = %50
  %.reload24 = load ptr, ptr %.reg2mem23, align 4
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload24, ptr noundef nonnull @.str.3) #3
  br label %56

56:                                               ; preds = %._crit_edge6, %54
  %.reload15 = load i32, ptr %.reg2mem13, align 4
  %.reload21 = load i32, ptr %.reg2mem19, align 4
  %.reload61 = load ptr, ptr %.reg2mem60, align 4
  %57 = getelementptr inbounds [500 x i32], ptr %.reload61, i32 %.reload21, i32 %.reload15
  %58 = load i32, ptr %57, align 4, !tbaa !2
  %.reload27 = load ptr, ptr %.reg2mem23, align 4
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload27, ptr noundef nonnull @.str.4, i32 noundef %58) #3
  %.reload14 = load i32, ptr %.reg2mem13, align 4
  %60 = add nuw nsw i32 %.reload14, 1
  store i32 %60, ptr %.reg2mem10, align 4
  %.reload12 = load i32, ptr %.reg2mem10, align 4
  %61 = icmp eq i32 %.reload12, 500
  br i1 %61, label %62, label %._crit_edge7, !llvm.loop !15

._crit_edge7:                                     ; preds = %56
  %.reload11 = load i32, ptr %.reg2mem10, align 4
  store i32 %.reload11, ptr %.reg2mem67, align 4
  br label %50

62:                                               ; preds = %56
  %.reload20 = load i32, ptr %.reg2mem19, align 4
  %63 = add nuw nsw i32 %.reload20, 1
  store i32 %63, ptr %.reg2mem, align 4
  %.reload9 = load i32, ptr %.reg2mem, align 4
  %64 = icmp eq i32 %.reload9, 500
  br i1 %64, label %65, label %._crit_edge8, !llvm.loop !16

._crit_edge8:                                     ; preds = %62
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem69, align 4
  br label %48

65:                                               ; preds = %62
  %.reload26 = load ptr, ptr %.reg2mem23, align 4
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload26, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload25 = load ptr, ptr %.reg2mem23, align 4
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload25, ptr noundef nonnull @.str.6) #3
  %.reload66 = load ptr, ptr %.reg2mem60, align 4
  tail call void @free(ptr noundef nonnull %.reload66) #3
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
