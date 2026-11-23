; ModuleID = './polybench-output/wasm/no-phis/mvt.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/mvt/mvt.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem24 = alloca ptr, align 4
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem38 = alloca i32, align 4
  %.reg2mem41 = alloca double, align 8
  %.reg2mem44 = alloca double, align 8
  %.reg2mem46 = alloca ptr, align 4
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem59 = alloca double, align 8
  %.reg2mem62 = alloca double, align 8
  %.reg2mem64 = alloca ptr, align 4
  %.reg2mem67 = alloca i32, align 4
  %.reg2mem71 = alloca i32, align 4
  %.reg2mem74 = alloca i1, align 1
  %.reg2mem77 = alloca i32, align 4
  %.reg2mem81 = alloca i32, align 4
  %.reg2mem94 = alloca ptr, align 4
  %.reg2mem98 = alloca ptr, align 4
  %.reg2mem102 = alloca ptr, align 4
  %.reg2mem107 = alloca ptr, align 4
  %.reg2mem112 = alloca ptr, align 4
  %.reg2mem117 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem121 = alloca double, align 8
  %.reg2mem123 = alloca i32, align 4
  %.reg2mem125 = alloca i32, align 4
  %.reg2mem127 = alloca double, align 8
  %.reg2mem129 = alloca i32, align 4
  %.reg2mem131 = alloca i32, align 4
  %.reg2mem133 = alloca i32, align 4
  %.reg2mem135 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem112, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem107, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem102, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem98, align 4
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %7, ptr %.reg2mem94, align 4
  store i32 0, ptr %.reg2mem135, align 4
  br label %9

8:                                                ; preds = %31
  %.reload75 = load i1, ptr %.reg2mem74, align 1
  br i1 %.reload75, label %._crit_edge, label %._crit_edge1, !llvm.loop !2

._crit_edge1:                                     ; preds = %8
  %.reload78 = load i32, ptr %.reg2mem77, align 4
  store i32 %.reload78, ptr %.reg2mem135, align 4
  br label %9

._crit_edge:                                      ; preds = %8
  store i32 0, ptr %.reg2mem131, align 4
  br label %39

9:                                                ; preds = %._crit_edge1, %2
  %.reload136 = load i32, ptr %.reg2mem135, align 4
  store i32 %.reload136, ptr %.reg2mem81, align 4
  %.reload93 = load i32, ptr %.reg2mem81, align 4
  %10 = uitofp nneg i32 %.reload93 to double
  %11 = fdiv double %10, 4.000000e+02
  %.reload92 = load i32, ptr %.reg2mem81, align 4
  %.reload110 = load ptr, ptr %.reg2mem107, align 4
  %12 = getelementptr inbounds double, ptr %.reload110, i32 %.reload92
  store double %11, ptr %12, align 8, !tbaa !5
  %.reload91 = load i32, ptr %.reg2mem81, align 4
  %13 = add nuw nsw i32 %.reload91, 1
  store i32 %13, ptr %.reg2mem77, align 4
  %.reload80 = load i32, ptr %.reg2mem77, align 4
  %14 = icmp eq i32 %.reload80, 400
  store i1 %14, ptr %.reg2mem74, align 1
  %.reload76 = load i1, ptr %.reg2mem74, align 1
  %.reload79 = load i32, ptr %.reg2mem77, align 4
  %15 = select i1 %.reload76, i32 0, i32 %.reload79
  %16 = uitofp nneg i32 %15 to double
  %17 = fdiv double %16, 4.000000e+02
  %.reload90 = load i32, ptr %.reg2mem81, align 4
  %.reload105 = load ptr, ptr %.reg2mem102, align 4
  %18 = getelementptr inbounds double, ptr %.reload105, i32 %.reload90
  store double %17, ptr %18, align 8, !tbaa !5
  %.reload89 = load i32, ptr %.reg2mem81, align 4
  %19 = icmp ult i32 %.reload89, 397
  %20 = select i1 %19, i32 3, i32 -397
  %.reload88 = load i32, ptr %.reg2mem81, align 4
  %21 = add nsw i32 %20, %.reload88
  %22 = uitofp nneg i32 %21 to double
  %23 = fdiv double %22, 4.000000e+02
  %.reload87 = load i32, ptr %.reg2mem81, align 4
  %.reload100 = load ptr, ptr %.reg2mem98, align 4
  %24 = getelementptr inbounds double, ptr %.reload100, i32 %.reload87
  store double %23, ptr %24, align 8, !tbaa !5
  %.reload86 = load i32, ptr %.reg2mem81, align 4
  %25 = icmp ult i32 %.reload86, 396
  %26 = select i1 %25, i32 4, i32 -396
  %.reload85 = load i32, ptr %.reg2mem81, align 4
  %27 = add nsw i32 %26, %.reload85
  %28 = uitofp nneg i32 %27 to double
  %29 = fdiv double %28, 4.000000e+02
  %.reload84 = load i32, ptr %.reg2mem81, align 4
  %.reload96 = load ptr, ptr %.reg2mem94, align 4
  %30 = getelementptr inbounds double, ptr %.reload96, i32 %.reload84
  store double %29, ptr %30, align 8, !tbaa !5
  store i32 0, ptr %.reg2mem133, align 4
  br label %31

31:                                               ; preds = %._crit_edge2, %9
  %.reload134 = load i32, ptr %.reg2mem133, align 4
  %.reload83 = load i32, ptr %.reg2mem81, align 4
  %32 = mul nuw nsw i32 %.reload134, %.reload83
  %33 = urem i32 %32, 400
  %34 = uitofp nneg i32 %33 to double
  %35 = fdiv double %34, 4.000000e+02
  %.reload82 = load i32, ptr %.reg2mem81, align 4
  %.reload115 = load ptr, ptr %.reg2mem112, align 4
  %36 = getelementptr inbounds [400 x double], ptr %.reload115, i32 %.reload82, i32 %.reload134
  store double %35, ptr %36, align 8, !tbaa !5
  %37 = add nuw nsw i32 %.reload134, 1
  store i32 %37, ptr %.reg2mem71, align 4
  %.reload73 = load i32, ptr %.reg2mem71, align 4
  %38 = icmp eq i32 %.reload73, 400
  br i1 %38, label %8, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %31
  %.reload72 = load i32, ptr %.reg2mem71, align 4
  store i32 %.reload72, ptr %.reg2mem133, align 4
  br label %31

39:                                               ; preds = %._crit_edge5, %._crit_edge
  %.reload132 = load i32, ptr %.reg2mem131, align 4
  store i32 %.reload132, ptr %.reg2mem67, align 4
  %.reload70 = load i32, ptr %.reg2mem67, align 4
  %.reload109 = load ptr, ptr %.reg2mem107, align 4
  %40 = getelementptr inbounds double, ptr %.reload109, i32 %.reload70
  store ptr %40, ptr %.reg2mem64, align 4
  %.reload66 = load ptr, ptr %.reg2mem64, align 4
  %41 = load double, ptr %.reload66, align 8, !tbaa !5
  store double %41, ptr %.reg2mem62, align 8
  %.reload63 = load double, ptr %.reg2mem62, align 8
  store double %.reload63, ptr %.reg2mem127, align 8
  store i32 0, ptr %.reg2mem129, align 4
  br label %42

42:                                               ; preds = %._crit_edge3, %39
  %.reload130 = load i32, ptr %.reg2mem129, align 4
  %.reload128 = load double, ptr %.reg2mem127, align 8
  %.reload69 = load i32, ptr %.reg2mem67, align 4
  %.reload114 = load ptr, ptr %.reg2mem112, align 4
  %43 = getelementptr inbounds [400 x double], ptr %.reload114, i32 %.reload69, i32 %.reload130
  %44 = load double, ptr %43, align 8, !tbaa !5
  %.reload99 = load ptr, ptr %.reg2mem98, align 4
  %45 = getelementptr inbounds double, ptr %.reload99, i32 %.reload130
  %46 = load double, ptr %45, align 8, !tbaa !5
  %47 = tail call double @llvm.fmuladd.f64(double %44, double %46, double %.reload128)
  store double %47, ptr %.reg2mem59, align 8
  %.reload61 = load double, ptr %.reg2mem59, align 8
  %.reload65 = load ptr, ptr %.reg2mem64, align 4
  store double %.reload61, ptr %.reload65, align 8, !tbaa !5
  %48 = add nuw nsw i32 %.reload130, 1
  store i32 %48, ptr %.reg2mem56, align 4
  %.reload58 = load i32, ptr %.reg2mem56, align 4
  %49 = icmp eq i32 %.reload58, 400
  br i1 %49, label %50, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %42
  %.reload57 = load i32, ptr %.reg2mem56, align 4
  %.reload60 = load double, ptr %.reg2mem59, align 8
  store double %.reload60, ptr %.reg2mem127, align 8
  store i32 %.reload57, ptr %.reg2mem129, align 4
  br label %42

50:                                               ; preds = %42
  %.reload68 = load i32, ptr %.reg2mem67, align 4
  %51 = add nuw nsw i32 %.reload68, 1
  store i32 %51, ptr %.reg2mem53, align 4
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %52 = icmp eq i32 %.reload55, 400
  br i1 %52, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %50
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  store i32 %.reload54, ptr %.reg2mem131, align 4
  br label %39

._crit_edge4:                                     ; preds = %50
  store i32 0, ptr %.reg2mem125, align 4
  br label %53

53:                                               ; preds = %._crit_edge7, %._crit_edge4
  %.reload126 = load i32, ptr %.reg2mem125, align 4
  store i32 %.reload126, ptr %.reg2mem49, align 4
  %.reload52 = load i32, ptr %.reg2mem49, align 4
  %.reload104 = load ptr, ptr %.reg2mem102, align 4
  %54 = getelementptr inbounds double, ptr %.reload104, i32 %.reload52
  store ptr %54, ptr %.reg2mem46, align 4
  %.reload48 = load ptr, ptr %.reg2mem46, align 4
  %55 = load double, ptr %.reload48, align 8, !tbaa !5
  store double %55, ptr %.reg2mem44, align 8
  %.reload45 = load double, ptr %.reg2mem44, align 8
  store double %.reload45, ptr %.reg2mem121, align 8
  store i32 0, ptr %.reg2mem123, align 4
  br label %56

56:                                               ; preds = %._crit_edge6, %53
  %.reload124 = load i32, ptr %.reg2mem123, align 4
  %.reload122 = load double, ptr %.reg2mem121, align 8
  %.reload51 = load i32, ptr %.reg2mem49, align 4
  %.reload113 = load ptr, ptr %.reg2mem112, align 4
  %57 = getelementptr inbounds [400 x double], ptr %.reload113, i32 %.reload124, i32 %.reload51
  %58 = load double, ptr %57, align 8, !tbaa !5
  %.reload95 = load ptr, ptr %.reg2mem94, align 4
  %59 = getelementptr inbounds double, ptr %.reload95, i32 %.reload124
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = tail call double @llvm.fmuladd.f64(double %58, double %60, double %.reload122)
  store double %61, ptr %.reg2mem41, align 8
  %.reload43 = load double, ptr %.reg2mem41, align 8
  %.reload47 = load ptr, ptr %.reg2mem46, align 4
  store double %.reload43, ptr %.reload47, align 8, !tbaa !5
  %62 = add nuw nsw i32 %.reload124, 1
  store i32 %62, ptr %.reg2mem38, align 4
  %.reload40 = load i32, ptr %.reg2mem38, align 4
  %63 = icmp eq i32 %.reload40, 400
  br i1 %63, label %64, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %56
  %.reload39 = load i32, ptr %.reg2mem38, align 4
  %.reload42 = load double, ptr %.reg2mem41, align 8
  store double %.reload42, ptr %.reg2mem121, align 8
  store i32 %.reload39, ptr %.reg2mem123, align 4
  br label %56

64:                                               ; preds = %56
  %.reload50 = load i32, ptr %.reg2mem49, align 4
  %65 = add nuw nsw i32 %.reload50, 1
  store i32 %65, ptr %.reg2mem35, align 4
  %.reload37 = load i32, ptr %.reg2mem35, align 4
  %66 = icmp eq i32 %.reload37, 400
  br i1 %66, label %67, label %._crit_edge7, !llvm.loop !13

._crit_edge7:                                     ; preds = %64
  %.reload36 = load i32, ptr %.reg2mem35, align 4
  store i32 %.reload36, ptr %.reg2mem125, align 4
  br label %53

67:                                               ; preds = %64
  %68 = load ptr, ptr @stderr, align 4, !tbaa !14
  store ptr %68, ptr %.reg2mem24, align 4
  %.reload34 = load ptr, ptr %.reg2mem24, align 4
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload34, ptr noundef nonnull @.str) #3
  %.reload33 = load ptr, ptr %.reg2mem24, align 4
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload33, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem119, align 4
  br label %71

71:                                               ; preds = %._crit_edge9, %67
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  store i32 %.reload120, ptr %.reg2mem20, align 4
  %.reload23 = load i32, ptr %.reg2mem20, align 4
  %72 = trunc nuw i32 %.reload23 to i16
  %73 = urem i16 %72, 20
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %._crit_edge8

._crit_edge8:                                     ; preds = %71
  br label %77

75:                                               ; preds = %71
  %.reload25 = load ptr, ptr %.reg2mem24, align 4
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload25, ptr noundef nonnull @.str.3) #3
  br label %77

77:                                               ; preds = %._crit_edge8, %75
  %.reload22 = load i32, ptr %.reg2mem20, align 4
  %.reload108 = load ptr, ptr %.reg2mem107, align 4
  %78 = getelementptr inbounds double, ptr %.reload108, i32 %.reload22
  %79 = load double, ptr %78, align 8, !tbaa !5
  %.reload32 = load ptr, ptr %.reg2mem24, align 4
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload32, ptr noundef nonnull @.str.4, double noundef %79) #3
  %.reload21 = load i32, ptr %.reg2mem20, align 4
  %81 = add nuw nsw i32 %.reload21, 1
  store i32 %81, ptr %.reg2mem17, align 4
  %.reload19 = load i32, ptr %.reg2mem17, align 4
  %82 = icmp eq i32 %.reload19, 400
  br i1 %82, label %83, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %77
  %.reload18 = load i32, ptr %.reg2mem17, align 4
  store i32 %.reload18, ptr %.reg2mem119, align 4
  br label %71

83:                                               ; preds = %77
  %.reload31 = load ptr, ptr %.reg2mem24, align 4
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload30 = load ptr, ptr %.reg2mem24, align 4
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload30, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #3
  store i32 0, ptr %.reg2mem117, align 4
  br label %86

86:                                               ; preds = %._crit_edge11, %83
  %.reload118 = load i32, ptr %.reg2mem117, align 4
  store i32 %.reload118, ptr %.reg2mem13, align 4
  %.reload16 = load i32, ptr %.reg2mem13, align 4
  %87 = trunc nuw i32 %.reload16 to i16
  %88 = urem i16 %87, 20
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %._crit_edge10

._crit_edge10:                                    ; preds = %86
  br label %92

90:                                               ; preds = %86
  %.reload26 = load ptr, ptr %.reg2mem24, align 4
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload26, ptr noundef nonnull @.str.3) #3
  br label %92

92:                                               ; preds = %._crit_edge10, %90
  %.reload15 = load i32, ptr %.reg2mem13, align 4
  %.reload103 = load ptr, ptr %.reg2mem102, align 4
  %93 = getelementptr inbounds double, ptr %.reload103, i32 %.reload15
  %94 = load double, ptr %93, align 8, !tbaa !5
  %.reload29 = load ptr, ptr %.reg2mem24, align 4
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload29, ptr noundef nonnull @.str.4, double noundef %94) #3
  %.reload14 = load i32, ptr %.reg2mem13, align 4
  %96 = add nuw nsw i32 %.reload14, 1
  store i32 %96, ptr %.reg2mem, align 4
  %.reload12 = load i32, ptr %.reg2mem, align 4
  %97 = icmp eq i32 %.reload12, 400
  br i1 %97, label %98, label %._crit_edge11, !llvm.loop !17

._crit_edge11:                                    ; preds = %92
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem117, align 4
  br label %86

98:                                               ; preds = %92
  %.reload28 = load ptr, ptr %.reg2mem24, align 4
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload28, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %.reload27 = load ptr, ptr %.reg2mem24, align 4
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload27, ptr noundef nonnull @.str.7) #3
  %.reload116 = load ptr, ptr %.reg2mem112, align 4
  tail call void @free(ptr noundef %.reload116) #3
  %.reload111 = load ptr, ptr %.reg2mem107, align 4
  tail call void @free(ptr noundef %.reload111) #3
  %.reload106 = load ptr, ptr %.reg2mem102, align 4
  tail call void @free(ptr noundef nonnull %.reload106) #3
  %.reload101 = load ptr, ptr %.reg2mem98, align 4
  tail call void @free(ptr noundef %.reload101) #3
  %.reload97 = load ptr, ptr %.reg2mem94, align 4
  tail call void @free(ptr noundef %.reload97) #3
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
!2 = distinct !{!2, !3, !4}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.unroll.disable"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !3, !4}
!10 = distinct !{!10, !3, !4}
!11 = distinct !{!11, !3, !4}
!12 = distinct !{!12, !3, !4}
!13 = distinct !{!13, !3, !4}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = distinct !{!16, !3, !4}
!17 = distinct !{!17, !3, !4}
