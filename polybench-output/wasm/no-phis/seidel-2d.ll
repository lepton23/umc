; ModuleID = './polybench-output/wasm/no-phis/seidel-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/seidel-2d/seidel-2d.c"
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
  %.reg2mem = alloca i32, align 4
  %.reg2mem10 = alloca i32, align 4
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem23 = alloca ptr, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem36 = alloca double, align 8
  %.reg2mem39 = alloca double, align 8
  %.reg2mem42 = alloca double, align 8
  %.reg2mem45 = alloca double, align 8
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem54 = alloca double, align 8
  %.reg2mem57 = alloca double, align 8
  %.reg2mem60 = alloca double, align 8
  %.reg2mem62 = alloca double, align 8
  %.reg2mem64 = alloca double, align 8
  %.reg2mem66 = alloca double, align 8
  %.reg2mem68 = alloca double, align 8
  %.reg2mem70 = alloca double, align 8
  %.reg2mem72 = alloca ptr, align 4
  %.reg2mem75 = alloca ptr, align 4
  %.reg2mem78 = alloca i32, align 4
  %.reg2mem84 = alloca i32, align 4
  %.reg2mem86 = alloca i32, align 4
  %.reg2mem89 = alloca i32, align 4
  %.reg2mem92 = alloca double, align 8
  %.reg2mem94 = alloca i32, align 4
  %.reg2mem98 = alloca ptr, align 4
  %.reg2mem106 = alloca i32, align 4
  %.reg2mem108 = alloca i32, align 4
  %.reg2mem110 = alloca i32, align 4
  %.reg2mem112 = alloca double, align 8
  %.reg2mem114 = alloca double, align 8
  %.reg2mem116 = alloca double, align 8
  %.reg2mem118 = alloca double, align 8
  %.reg2mem120 = alloca double, align 8
  %.reg2mem122 = alloca double, align 8
  %.reg2mem124 = alloca i32, align 4
  %.reg2mem126 = alloca i32, align 4
  %.reg2mem128 = alloca i32, align 4
  %.reg2mem130 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem98, align 4
  store i32 0, ptr %.reg2mem130, align 4
  br label %4

4:                                                ; preds = %._crit_edge2, %2
  %.reload131 = load i32, ptr %.reg2mem130, align 4
  store i32 %.reload131, ptr %.reg2mem94, align 4
  %.reload97 = load i32, ptr %.reg2mem94, align 4
  %5 = uitofp nneg i32 %.reload97 to double
  store double %5, ptr %.reg2mem92, align 8
  store i32 0, ptr %.reg2mem128, align 4
  br label %6

6:                                                ; preds = %._crit_edge, %4
  %.reload129 = load i32, ptr %.reg2mem128, align 4
  %7 = add nuw nsw i32 %.reload129, 2
  %8 = uitofp nneg i32 %7 to double
  %.reload93 = load double, ptr %.reg2mem92, align 8
  %9 = tail call double @llvm.fmuladd.f64(double %.reload93, double %8, double 2.000000e+00)
  %10 = fdiv double %9, 4.000000e+02
  %.reload96 = load i32, ptr %.reg2mem94, align 4
  %.reload104 = load ptr, ptr %.reg2mem98, align 4
  %11 = getelementptr inbounds [400 x double], ptr %.reload104, i32 %.reload96, i32 %.reload129
  store double %10, ptr %11, align 8, !tbaa !2
  %12 = add nuw nsw i32 %.reload129, 1
  store i32 %12, ptr %.reg2mem89, align 4
  %.reload91 = load i32, ptr %.reg2mem89, align 4
  %13 = icmp eq i32 %.reload91, 400
  br i1 %13, label %14, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %6
  %.reload90 = load i32, ptr %.reg2mem89, align 4
  store i32 %.reload90, ptr %.reg2mem128, align 4
  br label %6

14:                                               ; preds = %6
  %.reload95 = load i32, ptr %.reg2mem94, align 4
  %15 = add nuw nsw i32 %.reload95, 1
  store i32 %15, ptr %.reg2mem86, align 4
  %.reload88 = load i32, ptr %.reg2mem86, align 4
  %16 = icmp eq i32 %.reload88, 400
  br i1 %16, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %14
  %.reload87 = load i32, ptr %.reg2mem86, align 4
  store i32 %.reload87, ptr %.reg2mem130, align 4
  br label %4

._crit_edge1:                                     ; preds = %14
  store i32 0, ptr %.reg2mem126, align 4
  br label %17

17:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload127 = load i32, ptr %.reg2mem126, align 4
  store i32 %.reload127, ptr %.reg2mem84, align 4
  store i32 1, ptr %.reg2mem124, align 4
  br label %18

18:                                               ; preds = %._crit_edge4, %17
  %.reload125 = load i32, ptr %.reg2mem124, align 4
  store i32 %.reload125, ptr %.reg2mem78, align 4
  %.reload83 = load i32, ptr %.reg2mem78, align 4
  %.reload103 = load ptr, ptr %.reg2mem98, align 4
  %19 = getelementptr [400 x double], ptr %.reload103, i32 %.reload83
  %20 = getelementptr i8, ptr %19, i32 -3200
  store ptr %20, ptr %.reg2mem75, align 4
  %21 = getelementptr inbounds i8, ptr %19, i32 3200
  store ptr %21, ptr %.reg2mem72, align 4
  %.reload77 = load ptr, ptr %.reg2mem75, align 4
  %22 = load double, ptr %.reload77, align 8, !tbaa !2
  store double %22, ptr %.reg2mem70, align 8
  %23 = getelementptr i8, ptr %19, i32 -3192
  %24 = load double, ptr %23, align 8, !tbaa !2
  store double %24, ptr %.reg2mem68, align 8
  %25 = load double, ptr %19, align 8, !tbaa !2
  store double %25, ptr %.reg2mem66, align 8
  %.reload82 = load i32, ptr %.reg2mem78, align 4
  %.reload102 = load ptr, ptr %.reg2mem98, align 4
  %26 = getelementptr inbounds [400 x double], ptr %.reload102, i32 %.reload82, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !2
  store double %27, ptr %.reg2mem64, align 8
  %.reload74 = load ptr, ptr %.reg2mem72, align 4
  %28 = load double, ptr %.reload74, align 8, !tbaa !2
  store double %28, ptr %.reg2mem62, align 8
  %29 = getelementptr inbounds i8, ptr %19, i32 3208
  %30 = load double, ptr %29, align 8, !tbaa !2
  store double %30, ptr %.reg2mem60, align 8
  %.reload61 = load double, ptr %.reg2mem60, align 8
  %.reload63 = load double, ptr %.reg2mem62, align 8
  %.reload65 = load double, ptr %.reg2mem64, align 8
  %.reload67 = load double, ptr %.reg2mem66, align 8
  %.reload69 = load double, ptr %.reg2mem68, align 8
  %.reload71 = load double, ptr %.reg2mem70, align 8
  store i32 1, ptr %.reg2mem110, align 4
  store double %.reload71, ptr %.reg2mem112, align 8
  store double %.reload69, ptr %.reg2mem114, align 8
  store double %.reload67, ptr %.reg2mem116, align 8
  store double %.reload65, ptr %.reg2mem118, align 8
  store double %.reload63, ptr %.reg2mem120, align 8
  store double %.reload61, ptr %.reg2mem122, align 8
  br label %31

31:                                               ; preds = %._crit_edge3, %18
  %.reload123 = load double, ptr %.reg2mem122, align 8
  %.reload121 = load double, ptr %.reg2mem120, align 8
  %.reload119 = load double, ptr %.reg2mem118, align 8
  %.reload117 = load double, ptr %.reg2mem116, align 8
  %.reload115 = load double, ptr %.reg2mem114, align 8
  %.reload113 = load double, ptr %.reg2mem112, align 8
  %.reload111 = load i32, ptr %.reg2mem110, align 4
  store double %.reload123, ptr %.reg2mem57, align 8
  store double %.reload115, ptr %.reg2mem54, align 8
  %.reload56 = load double, ptr %.reg2mem54, align 8
  %32 = fadd double %.reload56, %.reload113
  %33 = add nuw nsw i32 %.reload111, 1
  store i32 %33, ptr %.reg2mem48, align 4
  %.reload53 = load i32, ptr %.reg2mem48, align 4
  %.reload76 = load ptr, ptr %.reg2mem75, align 4
  %34 = getelementptr inbounds [400 x double], ptr %.reload76, i32 0, i32 %.reload53
  %35 = load double, ptr %34, align 8, !tbaa !2
  store double %35, ptr %.reg2mem45, align 8
  %.reload47 = load double, ptr %.reg2mem45, align 8
  %36 = fadd double %32, %.reload47
  %37 = fadd double %.reload117, %36
  %.reload81 = load i32, ptr %.reg2mem78, align 4
  %.reload101 = load ptr, ptr %.reg2mem98, align 4
  %38 = getelementptr inbounds [400 x double], ptr %.reload101, i32 %.reload81, i32 %.reload111
  %39 = fadd double %.reload119, %37
  %.reload52 = load i32, ptr %.reg2mem48, align 4
  %.reload80 = load i32, ptr %.reg2mem78, align 4
  %.reload100 = load ptr, ptr %.reg2mem98, align 4
  %40 = getelementptr inbounds [400 x double], ptr %.reload100, i32 %.reload80, i32 %.reload52
  %41 = load double, ptr %40, align 8, !tbaa !2
  store double %41, ptr %.reg2mem42, align 8
  %.reload44 = load double, ptr %.reg2mem42, align 8
  %42 = fadd double %.reload44, %39
  %43 = fadd double %.reload121, %42
  %.reload59 = load double, ptr %.reg2mem57, align 8
  %44 = fadd double %.reload59, %43
  %.reload51 = load i32, ptr %.reg2mem48, align 4
  %.reload73 = load ptr, ptr %.reg2mem72, align 4
  %45 = getelementptr inbounds [400 x double], ptr %.reload73, i32 0, i32 %.reload51
  %46 = load double, ptr %45, align 8, !tbaa !2
  store double %46, ptr %.reg2mem39, align 8
  %.reload41 = load double, ptr %.reg2mem39, align 8
  %47 = fadd double %.reload41, %44
  %48 = fdiv double %47, 9.000000e+00
  store double %48, ptr %.reg2mem36, align 8
  %.reload38 = load double, ptr %.reg2mem36, align 8
  store double %.reload38, ptr %38, align 8, !tbaa !2
  %.reload50 = load i32, ptr %.reg2mem48, align 4
  %49 = icmp eq i32 %.reload50, 399
  br i1 %49, label %50, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %31
  %.reload37 = load double, ptr %.reg2mem36, align 8
  %.reload40 = load double, ptr %.reg2mem39, align 8
  %.reload43 = load double, ptr %.reg2mem42, align 8
  %.reload46 = load double, ptr %.reg2mem45, align 8
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  %.reload55 = load double, ptr %.reg2mem54, align 8
  %.reload58 = load double, ptr %.reg2mem57, align 8
  store i32 %.reload49, ptr %.reg2mem110, align 4
  store double %.reload55, ptr %.reg2mem112, align 8
  store double %.reload46, ptr %.reg2mem114, align 8
  store double %.reload37, ptr %.reg2mem116, align 8
  store double %.reload43, ptr %.reg2mem118, align 8
  store double %.reload58, ptr %.reg2mem120, align 8
  store double %.reload40, ptr %.reg2mem122, align 8
  br label %31

50:                                               ; preds = %31
  %.reload79 = load i32, ptr %.reg2mem78, align 4
  %51 = add nuw nsw i32 %.reload79, 1
  store i32 %51, ptr %.reg2mem33, align 4
  %.reload35 = load i32, ptr %.reg2mem33, align 4
  %52 = icmp eq i32 %.reload35, 399
  br i1 %52, label %53, label %._crit_edge4, !llvm.loop !11

._crit_edge4:                                     ; preds = %50
  %.reload34 = load i32, ptr %.reg2mem33, align 4
  store i32 %.reload34, ptr %.reg2mem124, align 4
  br label %18

53:                                               ; preds = %50
  %.reload85 = load i32, ptr %.reg2mem84, align 4
  %54 = add nuw nsw i32 %.reload85, 1
  store i32 %54, ptr %.reg2mem30, align 4
  %.reload32 = load i32, ptr %.reg2mem30, align 4
  %55 = icmp eq i32 %.reload32, 100
  br i1 %55, label %56, label %._crit_edge5, !llvm.loop !12

._crit_edge5:                                     ; preds = %53
  %.reload31 = load i32, ptr %.reg2mem30, align 4
  store i32 %.reload31, ptr %.reg2mem126, align 4
  br label %17

56:                                               ; preds = %53
  %57 = load ptr, ptr @stderr, align 4, !tbaa !13
  store ptr %57, ptr %.reg2mem23, align 4
  %.reload29 = load ptr, ptr %.reg2mem23, align 4
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload29, ptr noundef nonnull @.str) #3
  %.reload28 = load ptr, ptr %.reg2mem23, align 4
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload28, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem108, align 4
  br label %60

60:                                               ; preds = %._crit_edge8, %56
  %.reload109 = load i32, ptr %.reg2mem108, align 4
  store i32 %.reload109, ptr %.reg2mem19, align 4
  %.reload22 = load i32, ptr %.reg2mem19, align 4
  %61 = mul nuw nsw i32 %.reload22, 400
  store i32 %61, ptr %.reg2mem17, align 4
  store i32 0, ptr %.reg2mem106, align 4
  br label %62

62:                                               ; preds = %._crit_edge7, %60
  %.reload107 = load i32, ptr %.reg2mem106, align 4
  store i32 %.reload107, ptr %.reg2mem13, align 4
  %.reload16 = load i32, ptr %.reg2mem13, align 4
  %.reload18 = load i32, ptr %.reg2mem17, align 4
  %63 = add nuw nsw i32 %.reload16, %.reload18
  %64 = urem i32 %63, 20
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %._crit_edge6

._crit_edge6:                                     ; preds = %62
  br label %68

66:                                               ; preds = %62
  %.reload24 = load ptr, ptr %.reg2mem23, align 4
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload24, ptr noundef nonnull @.str.3) #3
  br label %68

68:                                               ; preds = %._crit_edge6, %66
  %.reload15 = load i32, ptr %.reg2mem13, align 4
  %.reload21 = load i32, ptr %.reg2mem19, align 4
  %.reload99 = load ptr, ptr %.reg2mem98, align 4
  %69 = getelementptr inbounds [400 x double], ptr %.reload99, i32 %.reload21, i32 %.reload15
  %70 = load double, ptr %69, align 8, !tbaa !2
  %.reload27 = load ptr, ptr %.reg2mem23, align 4
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload27, ptr noundef nonnull @.str.4, double noundef %70) #3
  %.reload14 = load i32, ptr %.reg2mem13, align 4
  %72 = add nuw nsw i32 %.reload14, 1
  store i32 %72, ptr %.reg2mem10, align 4
  %.reload12 = load i32, ptr %.reg2mem10, align 4
  %73 = icmp eq i32 %.reload12, 400
  br i1 %73, label %74, label %._crit_edge7, !llvm.loop !15

._crit_edge7:                                     ; preds = %68
  %.reload11 = load i32, ptr %.reg2mem10, align 4
  store i32 %.reload11, ptr %.reg2mem106, align 4
  br label %62

74:                                               ; preds = %68
  %.reload20 = load i32, ptr %.reg2mem19, align 4
  %75 = add nuw nsw i32 %.reload20, 1
  store i32 %75, ptr %.reg2mem, align 4
  %.reload9 = load i32, ptr %.reg2mem, align 4
  %76 = icmp eq i32 %.reload9, 400
  br i1 %76, label %77, label %._crit_edge8, !llvm.loop !16

._crit_edge8:                                     ; preds = %74
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem108, align 4
  br label %60

77:                                               ; preds = %74
  %.reload26 = load ptr, ptr %.reg2mem23, align 4
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload26, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload25 = load ptr, ptr %.reg2mem23, align 4
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload25, ptr noundef nonnull @.str.6) #3
  %.reload105 = load ptr, ptr %.reg2mem98, align 4
  tail call void @free(ptr noundef nonnull %.reload105) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

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
!16 = distinct !{!16, !7, !8}
