; ModuleID = './polybench-output/no-phis/seidel-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/seidel-2d/seidel-2d.c"
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
  %.reg2mem = alloca i64, align 8
  %.reg2mem10 = alloca i64, align 8
  %.reg2mem13 = alloca i64, align 8
  %.reg2mem17 = alloca i64, align 8
  %.reg2mem19 = alloca i64, align 8
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem26 = alloca i64, align 8
  %.reg2mem29 = alloca double, align 8
  %.reg2mem32 = alloca double, align 8
  %.reg2mem35 = alloca double, align 8
  %.reg2mem38 = alloca double, align 8
  %.reg2mem41 = alloca i64, align 8
  %.reg2mem47 = alloca double, align 8
  %.reg2mem50 = alloca double, align 8
  %.reg2mem53 = alloca double, align 8
  %.reg2mem55 = alloca double, align 8
  %.reg2mem57 = alloca double, align 8
  %.reg2mem59 = alloca double, align 8
  %.reg2mem61 = alloca double, align 8
  %.reg2mem63 = alloca double, align 8
  %.reg2mem65 = alloca ptr, align 8
  %.reg2mem68 = alloca ptr, align 8
  %.reg2mem71 = alloca i64, align 8
  %.reg2mem77 = alloca i32, align 4
  %.reg2mem79 = alloca i64, align 8
  %.reg2mem82 = alloca i64, align 8
  %.reg2mem85 = alloca double, align 8
  %.reg2mem87 = alloca i64, align 8
  %.reg2mem91 = alloca ptr, align 8
  %.reg2mem99 = alloca i64, align 8
  %.reg2mem101 = alloca i64, align 8
  %.reg2mem103 = alloca i64, align 8
  %.reg2mem105 = alloca double, align 8
  %.reg2mem107 = alloca double, align 8
  %.reg2mem109 = alloca double, align 8
  %.reg2mem111 = alloca double, align 8
  %.reg2mem113 = alloca double, align 8
  %.reg2mem115 = alloca double, align 8
  %.reg2mem117 = alloca i64, align 8
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem121 = alloca i64, align 8
  %.reg2mem123 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #4
  store ptr %3, ptr %.reg2mem91, align 8
  store i64 0, ptr %.reg2mem123, align 8
  br label %4

4:                                                ; preds = %._crit_edge2, %2
  %.reload124 = load i64, ptr %.reg2mem123, align 8
  store i64 %.reload124, ptr %.reg2mem87, align 8
  %.reload90 = load i64, ptr %.reg2mem87, align 8
  %5 = trunc nuw nsw i64 %.reload90 to i32
  %6 = uitofp nneg i32 %5 to double
  store double %6, ptr %.reg2mem85, align 8
  store i64 0, ptr %.reg2mem121, align 8
  br label %7

7:                                                ; preds = %._crit_edge, %4
  %.reload122 = load i64, ptr %.reg2mem121, align 8
  %8 = trunc i64 %.reload122 to i32
  %9 = add i32 %8, 2
  %10 = uitofp nneg i32 %9 to double
  %.reload86 = load double, ptr %.reg2mem85, align 8
  %11 = tail call double @llvm.fmuladd.f64(double %.reload86, double %10, double 2.000000e+00)
  %12 = fdiv double %11, 4.000000e+02
  %.reload89 = load i64, ptr %.reg2mem87, align 8
  %.reload97 = load ptr, ptr %.reg2mem91, align 8
  %13 = getelementptr inbounds [400 x double], ptr %.reload97, i64 %.reload89, i64 %.reload122
  store double %12, ptr %13, align 8, !tbaa !5
  %14 = add nuw nsw i64 %.reload122, 1
  store i64 %14, ptr %.reg2mem82, align 8
  %.reload84 = load i64, ptr %.reg2mem82, align 8
  %15 = icmp eq i64 %.reload84, 400
  br i1 %15, label %16, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %7
  %.reload83 = load i64, ptr %.reg2mem82, align 8
  store i64 %.reload83, ptr %.reg2mem121, align 8
  br label %7

16:                                               ; preds = %7
  %.reload88 = load i64, ptr %.reg2mem87, align 8
  %17 = add nuw nsw i64 %.reload88, 1
  store i64 %17, ptr %.reg2mem79, align 8
  %.reload81 = load i64, ptr %.reg2mem79, align 8
  %18 = icmp eq i64 %.reload81, 400
  br i1 %18, label %._crit_edge1, label %._crit_edge2, !llvm.loop !12

._crit_edge2:                                     ; preds = %16
  %.reload80 = load i64, ptr %.reg2mem79, align 8
  store i64 %.reload80, ptr %.reg2mem123, align 8
  br label %4

._crit_edge1:                                     ; preds = %16
  store i32 0, ptr %.reg2mem119, align 4
  br label %19

19:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  store i32 %.reload120, ptr %.reg2mem77, align 4
  store i64 1, ptr %.reg2mem117, align 8
  br label %20

20:                                               ; preds = %._crit_edge4, %19
  %.reload118 = load i64, ptr %.reg2mem117, align 8
  store i64 %.reload118, ptr %.reg2mem71, align 8
  %.reload76 = load i64, ptr %.reg2mem71, align 8
  %.reload96 = load ptr, ptr %.reg2mem91, align 8
  %21 = getelementptr [400 x double], ptr %.reload96, i64 %.reload76
  %22 = getelementptr i8, ptr %21, i64 -3200
  store ptr %22, ptr %.reg2mem68, align 8
  %23 = getelementptr inbounds i8, ptr %21, i64 3200
  store ptr %23, ptr %.reg2mem65, align 8
  %.reload70 = load ptr, ptr %.reg2mem68, align 8
  %24 = load double, ptr %.reload70, align 8, !tbaa !5
  store double %24, ptr %.reg2mem63, align 8
  %25 = getelementptr i8, ptr %21, i64 -3192
  %26 = load double, ptr %25, align 8, !tbaa !5
  store double %26, ptr %.reg2mem61, align 8
  %27 = load double, ptr %21, align 8, !tbaa !5
  store double %27, ptr %.reg2mem59, align 8
  %.reload75 = load i64, ptr %.reg2mem71, align 8
  %.reload95 = load ptr, ptr %.reg2mem91, align 8
  %28 = getelementptr inbounds [400 x double], ptr %.reload95, i64 %.reload75, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !5
  store double %29, ptr %.reg2mem57, align 8
  %.reload67 = load ptr, ptr %.reg2mem65, align 8
  %30 = load double, ptr %.reload67, align 8, !tbaa !5
  store double %30, ptr %.reg2mem55, align 8
  %31 = getelementptr inbounds i8, ptr %21, i64 3208
  %32 = load double, ptr %31, align 8, !tbaa !5
  store double %32, ptr %.reg2mem53, align 8
  %.reload54 = load double, ptr %.reg2mem53, align 8
  %.reload56 = load double, ptr %.reg2mem55, align 8
  %.reload58 = load double, ptr %.reg2mem57, align 8
  %.reload60 = load double, ptr %.reg2mem59, align 8
  %.reload62 = load double, ptr %.reg2mem61, align 8
  %.reload64 = load double, ptr %.reg2mem63, align 8
  store i64 1, ptr %.reg2mem103, align 8
  store double %.reload64, ptr %.reg2mem105, align 8
  store double %.reload62, ptr %.reg2mem107, align 8
  store double %.reload60, ptr %.reg2mem109, align 8
  store double %.reload58, ptr %.reg2mem111, align 8
  store double %.reload56, ptr %.reg2mem113, align 8
  store double %.reload54, ptr %.reg2mem115, align 8
  br label %33

33:                                               ; preds = %._crit_edge3, %20
  %.reload116 = load double, ptr %.reg2mem115, align 8
  %.reload114 = load double, ptr %.reg2mem113, align 8
  %.reload112 = load double, ptr %.reg2mem111, align 8
  %.reload110 = load double, ptr %.reg2mem109, align 8
  %.reload108 = load double, ptr %.reg2mem107, align 8
  %.reload106 = load double, ptr %.reg2mem105, align 8
  %.reload104 = load i64, ptr %.reg2mem103, align 8
  store double %.reload116, ptr %.reg2mem50, align 8
  store double %.reload108, ptr %.reg2mem47, align 8
  %.reload49 = load double, ptr %.reg2mem47, align 8
  %34 = fadd double %.reload49, %.reload106
  %35 = add nuw nsw i64 %.reload104, 1
  store i64 %35, ptr %.reg2mem41, align 8
  %.reload46 = load i64, ptr %.reg2mem41, align 8
  %.reload69 = load ptr, ptr %.reg2mem68, align 8
  %36 = getelementptr inbounds [400 x double], ptr %.reload69, i64 0, i64 %.reload46
  %37 = load double, ptr %36, align 8, !tbaa !5
  store double %37, ptr %.reg2mem38, align 8
  %.reload40 = load double, ptr %.reg2mem38, align 8
  %38 = fadd double %34, %.reload40
  %39 = fadd double %.reload110, %38
  %.reload74 = load i64, ptr %.reg2mem71, align 8
  %.reload94 = load ptr, ptr %.reg2mem91, align 8
  %40 = getelementptr inbounds [400 x double], ptr %.reload94, i64 %.reload74, i64 %.reload104
  %41 = fadd double %.reload112, %39
  %.reload45 = load i64, ptr %.reg2mem41, align 8
  %.reload73 = load i64, ptr %.reg2mem71, align 8
  %.reload93 = load ptr, ptr %.reg2mem91, align 8
  %42 = getelementptr inbounds [400 x double], ptr %.reload93, i64 %.reload73, i64 %.reload45
  %43 = load double, ptr %42, align 8, !tbaa !5
  store double %43, ptr %.reg2mem35, align 8
  %.reload37 = load double, ptr %.reg2mem35, align 8
  %44 = fadd double %.reload37, %41
  %45 = fadd double %.reload114, %44
  %.reload52 = load double, ptr %.reg2mem50, align 8
  %46 = fadd double %.reload52, %45
  %.reload44 = load i64, ptr %.reg2mem41, align 8
  %.reload66 = load ptr, ptr %.reg2mem65, align 8
  %47 = getelementptr inbounds [400 x double], ptr %.reload66, i64 0, i64 %.reload44
  %48 = load double, ptr %47, align 8, !tbaa !5
  store double %48, ptr %.reg2mem32, align 8
  %.reload34 = load double, ptr %.reg2mem32, align 8
  %49 = fadd double %.reload34, %46
  %50 = fdiv double %49, 9.000000e+00
  store double %50, ptr %.reg2mem29, align 8
  %.reload31 = load double, ptr %.reg2mem29, align 8
  store double %.reload31, ptr %40, align 8, !tbaa !5
  %.reload43 = load i64, ptr %.reg2mem41, align 8
  %51 = icmp eq i64 %.reload43, 399
  br i1 %51, label %52, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %33
  %.reload30 = load double, ptr %.reg2mem29, align 8
  %.reload33 = load double, ptr %.reg2mem32, align 8
  %.reload36 = load double, ptr %.reg2mem35, align 8
  %.reload39 = load double, ptr %.reg2mem38, align 8
  %.reload42 = load i64, ptr %.reg2mem41, align 8
  %.reload48 = load double, ptr %.reg2mem47, align 8
  %.reload51 = load double, ptr %.reg2mem50, align 8
  store i64 %.reload42, ptr %.reg2mem103, align 8
  store double %.reload48, ptr %.reg2mem105, align 8
  store double %.reload39, ptr %.reg2mem107, align 8
  store double %.reload30, ptr %.reg2mem109, align 8
  store double %.reload36, ptr %.reg2mem111, align 8
  store double %.reload51, ptr %.reg2mem113, align 8
  store double %.reload33, ptr %.reg2mem115, align 8
  br label %33

52:                                               ; preds = %33
  %.reload72 = load i64, ptr %.reg2mem71, align 8
  %53 = add nuw nsw i64 %.reload72, 1
  store i64 %53, ptr %.reg2mem26, align 8
  %.reload28 = load i64, ptr %.reg2mem26, align 8
  %54 = icmp eq i64 %.reload28, 399
  br i1 %54, label %55, label %._crit_edge4, !llvm.loop !14

._crit_edge4:                                     ; preds = %52
  %.reload27 = load i64, ptr %.reg2mem26, align 8
  store i64 %.reload27, ptr %.reg2mem117, align 8
  br label %20

55:                                               ; preds = %52
  %.reload78 = load i32, ptr %.reg2mem77, align 4
  %56 = add nuw nsw i32 %.reload78, 1
  store i32 %56, ptr %.reg2mem23, align 4
  %.reload25 = load i32, ptr %.reg2mem23, align 4
  %57 = icmp eq i32 %.reload25, 100
  br i1 %57, label %58, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %55
  %.reload24 = load i32, ptr %.reg2mem23, align 4
  store i32 %.reload24, ptr %.reg2mem119, align 4
  br label %19

58:                                               ; preds = %55
  %59 = load ptr, ptr @stderr, align 8, !tbaa !16
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str) #4
  %61 = load ptr, ptr @stderr, align 8, !tbaa !16
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i64 0, ptr %.reg2mem101, align 8
  br label %63

63:                                               ; preds = %._crit_edge8, %58
  %.reload102 = load i64, ptr %.reg2mem101, align 8
  store i64 %.reload102, ptr %.reg2mem19, align 8
  %.reload22 = load i64, ptr %.reg2mem19, align 8
  %64 = mul nuw nsw i64 %.reload22, 400
  store i64 %64, ptr %.reg2mem17, align 8
  store i64 0, ptr %.reg2mem99, align 8
  br label %65

65:                                               ; preds = %._crit_edge7, %63
  %.reload100 = load i64, ptr %.reg2mem99, align 8
  store i64 %.reload100, ptr %.reg2mem13, align 8
  %.reload16 = load i64, ptr %.reg2mem13, align 8
  %.reload18 = load i64, ptr %.reg2mem17, align 8
  %66 = add nuw nsw i64 %.reload16, %.reload18
  %67 = trunc nuw nsw i64 %66 to i32
  %68 = urem i32 %67, 20
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %._crit_edge6

._crit_edge6:                                     ; preds = %65
  br label %73

70:                                               ; preds = %65
  %71 = load ptr, ptr @stderr, align 8, !tbaa !16
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.3) #4
  br label %73

73:                                               ; preds = %._crit_edge6, %70
  %74 = load ptr, ptr @stderr, align 8, !tbaa !16
  %.reload15 = load i64, ptr %.reg2mem13, align 8
  %.reload21 = load i64, ptr %.reg2mem19, align 8
  %.reload92 = load ptr, ptr %.reg2mem91, align 8
  %75 = getelementptr inbounds [400 x double], ptr %.reload92, i64 %.reload21, i64 %.reload15
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.4, double noundef %76) #4
  %.reload14 = load i64, ptr %.reg2mem13, align 8
  %78 = add nuw nsw i64 %.reload14, 1
  store i64 %78, ptr %.reg2mem10, align 8
  %.reload12 = load i64, ptr %.reg2mem10, align 8
  %79 = icmp eq i64 %.reload12, 400
  br i1 %79, label %80, label %._crit_edge7, !llvm.loop !18

._crit_edge7:                                     ; preds = %73
  %.reload11 = load i64, ptr %.reg2mem10, align 8
  store i64 %.reload11, ptr %.reg2mem99, align 8
  br label %65

80:                                               ; preds = %73
  %.reload20 = load i64, ptr %.reg2mem19, align 8
  %81 = add nuw nsw i64 %.reload20, 1
  store i64 %81, ptr %.reg2mem, align 8
  %.reload9 = load i64, ptr %.reg2mem, align 8
  %82 = icmp eq i64 %.reload9, 400
  br i1 %82, label %83, label %._crit_edge8, !llvm.loop !19

._crit_edge8:                                     ; preds = %80
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %.reg2mem101, align 8
  br label %63

83:                                               ; preds = %80
  %84 = load ptr, ptr @stderr, align 8, !tbaa !16
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %86 = load ptr, ptr @stderr, align 8, !tbaa !16
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.6) #4
  %.reload98 = load ptr, ptr %.reg2mem91, align 8
  tail call void @free(ptr noundef nonnull %.reload98) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
