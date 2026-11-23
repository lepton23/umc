; ModuleID = './polybench-output/wasm/no-phis/covariance.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/datamining/covariance/covariance.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cov\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem16 = alloca i32, align 4
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem29 = alloca ptr, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem42 = alloca i32, align 4
  %.reg2mem45 = alloca double, align 8
  %.reg2mem49 = alloca ptr, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem58 = alloca i32, align 4
  %.reg2mem64 = alloca i32, align 4
  %.reg2mem67 = alloca i32, align 4
  %.reg2mem70 = alloca i32, align 4
  %.reg2mem73 = alloca i32, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem79 = alloca double, align 8
  %.reg2mem83 = alloca ptr, align 4
  %.reg2mem87 = alloca i32, align 4
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem94 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %.reg2mem101 = alloca ptr, align 4
  %.reg2mem105 = alloca ptr, align 4
  %.reg2mem110 = alloca ptr, align 4
  %.reg2mem117 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem121 = alloca double, align 8
  %.reg2mem123 = alloca i32, align 4
  %.reg2mem125 = alloca i32, align 4
  %.reg2mem127 = alloca i32, align 4
  %.reg2mem129 = alloca i32, align 4
  %.reg2mem131 = alloca i32, align 4
  %.reg2mem133 = alloca double, align 8
  %.reg2mem135 = alloca i32, align 4
  %.reg2mem137 = alloca i32, align 4
  %.reg2mem139 = alloca i32, align 4
  %.reg2mem141 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62400, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem110, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem105, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 240, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem101, align 4
  store i32 0, ptr %.reg2mem141, align 4
  br label %6

6:                                                ; preds = %._crit_edge2, %2
  %.reload142 = load i32, ptr %.reg2mem141, align 4
  store i32 %.reload142, ptr %.reg2mem97, align 4
  store i32 0, ptr %.reg2mem139, align 4
  br label %7

7:                                                ; preds = %._crit_edge, %6
  %.reload140 = load i32, ptr %.reg2mem139, align 4
  %.reload100 = load i32, ptr %.reg2mem97, align 4
  %8 = mul nuw nsw i32 %.reload140, %.reload100
  %9 = uitofp nneg i32 %8 to double
  %10 = fdiv double %9, 2.400000e+02
  %.reload99 = load i32, ptr %.reg2mem97, align 4
  %.reload115 = load ptr, ptr %.reg2mem110, align 4
  %11 = getelementptr inbounds [240 x double], ptr %.reload115, i32 %.reload99, i32 %.reload140
  store double %10, ptr %11, align 8, !tbaa !2
  %12 = add nuw nsw i32 %.reload140, 1
  store i32 %12, ptr %.reg2mem94, align 4
  %.reload96 = load i32, ptr %.reg2mem94, align 4
  %13 = icmp eq i32 %.reload96, 240
  br i1 %13, label %14, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %7
  %.reload95 = load i32, ptr %.reg2mem94, align 4
  store i32 %.reload95, ptr %.reg2mem139, align 4
  br label %7

14:                                               ; preds = %7
  %.reload98 = load i32, ptr %.reg2mem97, align 4
  %15 = add nuw nsw i32 %.reload98, 1
  store i32 %15, ptr %.reg2mem91, align 4
  %.reload93 = load i32, ptr %.reg2mem91, align 4
  %16 = icmp eq i32 %.reload93, 260
  br i1 %16, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %14
  %.reload92 = load i32, ptr %.reg2mem91, align 4
  store i32 %.reload92, ptr %.reg2mem141, align 4
  br label %6

._crit_edge1:                                     ; preds = %14
  store i32 0, ptr %.reg2mem137, align 4
  br label %17

17:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload138 = load i32, ptr %.reg2mem137, align 4
  store i32 %.reload138, ptr %.reg2mem87, align 4
  %.reload90 = load i32, ptr %.reg2mem87, align 4
  %.reload103 = load ptr, ptr %.reg2mem101, align 4
  %18 = getelementptr inbounds double, ptr %.reload103, i32 %.reload90
  store ptr %18, ptr %.reg2mem83, align 4
  %.reload86 = load ptr, ptr %.reg2mem83, align 4
  store double 0.000000e+00, ptr %.reload86, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem133, align 8
  store i32 0, ptr %.reg2mem135, align 4
  br label %19

19:                                               ; preds = %._crit_edge3, %17
  %.reload136 = load i32, ptr %.reg2mem135, align 4
  %.reload134 = load double, ptr %.reg2mem133, align 8
  %.reload89 = load i32, ptr %.reg2mem87, align 4
  %.reload114 = load ptr, ptr %.reg2mem110, align 4
  %20 = getelementptr inbounds [240 x double], ptr %.reload114, i32 %.reload136, i32 %.reload89
  %21 = load double, ptr %20, align 8, !tbaa !2
  %22 = fadd double %.reload134, %21
  store double %22, ptr %.reg2mem79, align 8
  %.reload82 = load double, ptr %.reg2mem79, align 8
  %.reload85 = load ptr, ptr %.reg2mem83, align 4
  store double %.reload82, ptr %.reload85, align 8, !tbaa !2
  %23 = add nuw nsw i32 %.reload136, 1
  store i32 %23, ptr %.reg2mem76, align 4
  %.reload78 = load i32, ptr %.reg2mem76, align 4
  %24 = icmp eq i32 %.reload78, 260
  br i1 %24, label %25, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %19
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  %.reload81 = load double, ptr %.reg2mem79, align 8
  store double %.reload81, ptr %.reg2mem133, align 8
  store i32 %.reload77, ptr %.reg2mem135, align 4
  br label %19

25:                                               ; preds = %19
  %.reload80 = load double, ptr %.reg2mem79, align 8
  %26 = fdiv double %.reload80, 2.600000e+02
  %.reload84 = load ptr, ptr %.reg2mem83, align 4
  store double %26, ptr %.reload84, align 8, !tbaa !2
  %.reload88 = load i32, ptr %.reg2mem87, align 4
  %27 = add nuw nsw i32 %.reload88, 1
  store i32 %27, ptr %.reg2mem73, align 4
  %.reload75 = load i32, ptr %.reg2mem73, align 4
  %28 = icmp eq i32 %.reload75, 240
  br i1 %28, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %25
  %.reload74 = load i32, ptr %.reg2mem73, align 4
  store i32 %.reload74, ptr %.reg2mem137, align 4
  br label %17

._crit_edge4:                                     ; preds = %25
  store i32 0, ptr %.reg2mem131, align 4
  br label %29

29:                                               ; preds = %._crit_edge8, %._crit_edge4
  %.reload132 = load i32, ptr %.reg2mem131, align 4
  store i32 %.reload132, ptr %.reg2mem70, align 4
  store i32 0, ptr %.reg2mem129, align 4
  br label %30

30:                                               ; preds = %._crit_edge6, %29
  %.reload130 = load i32, ptr %.reg2mem129, align 4
  %.reload102 = load ptr, ptr %.reg2mem101, align 4
  %31 = getelementptr inbounds double, ptr %.reload102, i32 %.reload130
  %32 = load double, ptr %31, align 8, !tbaa !2
  %.reload72 = load i32, ptr %.reg2mem70, align 4
  %.reload113 = load ptr, ptr %.reg2mem110, align 4
  %33 = getelementptr inbounds [240 x double], ptr %.reload113, i32 %.reload72, i32 %.reload130
  %34 = load double, ptr %33, align 8, !tbaa !2
  %35 = fsub double %34, %32
  store double %35, ptr %33, align 8, !tbaa !2
  %36 = add nuw nsw i32 %.reload130, 1
  store i32 %36, ptr %.reg2mem67, align 4
  %.reload69 = load i32, ptr %.reg2mem67, align 4
  %37 = icmp eq i32 %.reload69, 240
  br i1 %37, label %38, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %30
  %.reload68 = load i32, ptr %.reg2mem67, align 4
  store i32 %.reload68, ptr %.reg2mem129, align 4
  br label %30

38:                                               ; preds = %30
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  %39 = add nuw nsw i32 %.reload71, 1
  store i32 %39, ptr %.reg2mem64, align 4
  %.reload66 = load i32, ptr %.reg2mem64, align 4
  %40 = icmp eq i32 %.reload66, 260
  br i1 %40, label %._crit_edge7, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %38
  %.reload65 = load i32, ptr %.reg2mem64, align 4
  store i32 %.reload65, ptr %.reg2mem131, align 4
  br label %29

._crit_edge7:                                     ; preds = %38
  store i32 0, ptr %.reg2mem127, align 4
  br label %41

41:                                               ; preds = %._crit_edge11, %._crit_edge7
  %.reload128 = load i32, ptr %.reg2mem127, align 4
  store i32 %.reload128, ptr %.reg2mem58, align 4
  %.reload59 = load i32, ptr %.reg2mem58, align 4
  store i32 %.reload59, ptr %.reg2mem125, align 4
  br label %42

42:                                               ; preds = %._crit_edge10, %41
  %.reload126 = load i32, ptr %.reg2mem125, align 4
  store i32 %.reload126, ptr %.reg2mem53, align 4
  %.reload57 = load i32, ptr %.reg2mem53, align 4
  %.reload63 = load i32, ptr %.reg2mem58, align 4
  %.reload108 = load ptr, ptr %.reg2mem105, align 4
  %43 = getelementptr inbounds [240 x double], ptr %.reload108, i32 %.reload63, i32 %.reload57
  store ptr %43, ptr %.reg2mem49, align 4
  %.reload52 = load ptr, ptr %.reg2mem49, align 4
  store double 0.000000e+00, ptr %.reload52, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem121, align 8
  store i32 0, ptr %.reg2mem123, align 4
  br label %44

44:                                               ; preds = %._crit_edge9, %42
  %.reload124 = load i32, ptr %.reg2mem123, align 4
  %.reload122 = load double, ptr %.reg2mem121, align 8
  %.reload62 = load i32, ptr %.reg2mem58, align 4
  %.reload112 = load ptr, ptr %.reg2mem110, align 4
  %45 = getelementptr inbounds [240 x double], ptr %.reload112, i32 %.reload124, i32 %.reload62
  %46 = load double, ptr %45, align 8, !tbaa !2
  %.reload56 = load i32, ptr %.reg2mem53, align 4
  %.reload111 = load ptr, ptr %.reg2mem110, align 4
  %47 = getelementptr inbounds [240 x double], ptr %.reload111, i32 %.reload124, i32 %.reload56
  %48 = load double, ptr %47, align 8, !tbaa !2
  %49 = tail call double @llvm.fmuladd.f64(double %46, double %48, double %.reload122)
  store double %49, ptr %.reg2mem45, align 8
  %.reload48 = load double, ptr %.reg2mem45, align 8
  %.reload51 = load ptr, ptr %.reg2mem49, align 4
  store double %.reload48, ptr %.reload51, align 8, !tbaa !2
  %50 = add nuw nsw i32 %.reload124, 1
  store i32 %50, ptr %.reg2mem42, align 4
  %.reload44 = load i32, ptr %.reg2mem42, align 4
  %51 = icmp eq i32 %.reload44, 260
  br i1 %51, label %52, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %44
  %.reload43 = load i32, ptr %.reg2mem42, align 4
  %.reload47 = load double, ptr %.reg2mem45, align 8
  store double %.reload47, ptr %.reg2mem121, align 8
  store i32 %.reload43, ptr %.reg2mem123, align 4
  br label %44

52:                                               ; preds = %44
  %.reload46 = load double, ptr %.reg2mem45, align 8
  %53 = fdiv double %.reload46, 2.590000e+02
  %.reload50 = load ptr, ptr %.reg2mem49, align 4
  store double %53, ptr %.reload50, align 8, !tbaa !2
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %.reload61 = load i32, ptr %.reg2mem58, align 4
  %.reload107 = load ptr, ptr %.reg2mem105, align 4
  %54 = getelementptr inbounds [240 x double], ptr %.reload107, i32 %.reload55, i32 %.reload61
  store double %53, ptr %54, align 8, !tbaa !2
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  %55 = add nuw nsw i32 %.reload54, 1
  store i32 %55, ptr %.reg2mem39, align 4
  %.reload41 = load i32, ptr %.reg2mem39, align 4
  %56 = icmp eq i32 %.reload41, 240
  br i1 %56, label %57, label %._crit_edge10, !llvm.loop !15

._crit_edge10:                                    ; preds = %52
  %.reload40 = load i32, ptr %.reg2mem39, align 4
  store i32 %.reload40, ptr %.reg2mem125, align 4
  br label %42

57:                                               ; preds = %52
  %.reload60 = load i32, ptr %.reg2mem58, align 4
  %58 = add nuw nsw i32 %.reload60, 1
  store i32 %58, ptr %.reg2mem36, align 4
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %59 = icmp eq i32 %.reload38, 240
  br i1 %59, label %60, label %._crit_edge11, !llvm.loop !16

._crit_edge11:                                    ; preds = %57
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  store i32 %.reload37, ptr %.reg2mem127, align 4
  br label %41

60:                                               ; preds = %57
  %61 = load ptr, ptr @stderr, align 4, !tbaa !17
  store ptr %61, ptr %.reg2mem29, align 4
  %.reload35 = load ptr, ptr %.reg2mem29, align 4
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload35, ptr noundef nonnull @.str) #3
  %.reload34 = load ptr, ptr %.reg2mem29, align 4
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload34, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem119, align 4
  br label %64

64:                                               ; preds = %._crit_edge14, %60
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  store i32 %.reload120, ptr %.reg2mem25, align 4
  %.reload28 = load i32, ptr %.reg2mem25, align 4
  %65 = mul nuw nsw i32 %.reload28, 240
  store i32 %65, ptr %.reg2mem23, align 4
  store i32 0, ptr %.reg2mem117, align 4
  br label %66

66:                                               ; preds = %._crit_edge13, %64
  %.reload118 = load i32, ptr %.reg2mem117, align 4
  store i32 %.reload118, ptr %.reg2mem19, align 4
  %.reload22 = load i32, ptr %.reg2mem19, align 4
  %.reload24 = load i32, ptr %.reg2mem23, align 4
  %67 = add nuw nsw i32 %.reload22, %.reload24
  %68 = urem i32 %67, 20
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %._crit_edge12

._crit_edge12:                                    ; preds = %66
  br label %72

70:                                               ; preds = %66
  %.reload30 = load ptr, ptr %.reg2mem29, align 4
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload30, ptr noundef nonnull @.str.3) #3
  br label %72

72:                                               ; preds = %._crit_edge12, %70
  %.reload21 = load i32, ptr %.reg2mem19, align 4
  %.reload27 = load i32, ptr %.reg2mem25, align 4
  %.reload106 = load ptr, ptr %.reg2mem105, align 4
  %73 = getelementptr inbounds [240 x double], ptr %.reload106, i32 %.reload27, i32 %.reload21
  %74 = load double, ptr %73, align 8, !tbaa !2
  %.reload33 = load ptr, ptr %.reg2mem29, align 4
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload33, ptr noundef nonnull @.str.4, double noundef %74) #3
  %.reload20 = load i32, ptr %.reg2mem19, align 4
  %76 = add nuw nsw i32 %.reload20, 1
  store i32 %76, ptr %.reg2mem16, align 4
  %.reload18 = load i32, ptr %.reg2mem16, align 4
  %77 = icmp eq i32 %.reload18, 240
  br i1 %77, label %78, label %._crit_edge13, !llvm.loop !19

._crit_edge13:                                    ; preds = %72
  %.reload17 = load i32, ptr %.reg2mem16, align 4
  store i32 %.reload17, ptr %.reg2mem117, align 4
  br label %66

78:                                               ; preds = %72
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  %79 = add nuw nsw i32 %.reload26, 1
  store i32 %79, ptr %.reg2mem, align 4
  %.reload15 = load i32, ptr %.reg2mem, align 4
  %80 = icmp eq i32 %.reload15, 240
  br i1 %80, label %81, label %._crit_edge14, !llvm.loop !20

._crit_edge14:                                    ; preds = %78
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem119, align 4
  br label %64

81:                                               ; preds = %78
  %.reload32 = load ptr, ptr %.reg2mem29, align 4
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload31 = load ptr, ptr %.reg2mem29, align 4
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload31, ptr noundef nonnull @.str.6) #3
  %.reload116 = load ptr, ptr %.reg2mem110, align 4
  tail call void @free(ptr noundef %.reload116) #3
  %.reload109 = load ptr, ptr %.reg2mem105, align 4
  tail call void @free(ptr noundef nonnull %.reload109) #3
  %.reload104 = load ptr, ptr %.reg2mem101, align 4
  tail call void @free(ptr noundef %.reload104) #3
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
!13 = distinct !{!13, !7, !8}
!14 = distinct !{!14, !7, !8}
!15 = distinct !{!15, !7, !8}
!16 = distinct !{!16, !7, !8}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !4, i64 0}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
