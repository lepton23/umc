; ModuleID = './polybench-output/wasm/no-phis/trmm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/trmm/trmm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem30 = alloca ptr, align 4
  %.reg2mem37 = alloca i32, align 4
  %.reg2mem40 = alloca i32, align 4
  %.reg2mem43 = alloca double, align 8
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem52 = alloca double, align 8
  %.reg2mem55 = alloca ptr, align 4
  %.reg2mem59 = alloca i32, align 4
  %.reg2mem63 = alloca i1, align 1
  %.reg2mem65 = alloca i32, align 4
  %.reg2mem71 = alloca i32, align 4
  %.reg2mem74 = alloca i32, align 4
  %.reg2mem77 = alloca i32, align 4
  %.reg2mem79 = alloca i32, align 4
  %.reg2mem82 = alloca i32, align 4
  %.reg2mem91 = alloca ptr, align 4
  %.reg2mem97 = alloca ptr, align 4
  %.reg2mem102 = alloca i32, align 4
  %.reg2mem104 = alloca i32, align 4
  %.reg2mem106 = alloca double, align 8
  %.reg2mem108 = alloca i32, align 4
  %.reg2mem110 = alloca double, align 8
  %.reg2mem112 = alloca i32, align 4
  %.reg2mem114 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem118 = alloca i32, align 4
  %.reg2mem120 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem97, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem91, align 4
  store i32 0, ptr %.reg2mem120, align 4
  br label %5

5:                                                ; preds = %._crit_edge6, %2
  %.reload121 = load i32, ptr %.reg2mem120, align 4
  store i32 %.reload121, ptr %.reg2mem82, align 4
  %.reload90 = load i32, ptr %.reg2mem82, align 4
  %6 = icmp eq i32 %.reload90, 0
  br i1 %6, label %._crit_edge, label %._crit_edge1

._crit_edge1:                                     ; preds = %5
  store i32 0, ptr %.reg2mem118, align 4
  br label %7

._crit_edge:                                      ; preds = %5
  br label %15

7:                                                ; preds = %._crit_edge3, %._crit_edge1
  %.reload119 = load i32, ptr %.reg2mem118, align 4
  %.reload89 = load i32, ptr %.reg2mem82, align 4
  %8 = add nuw nsw i32 %.reload119, %.reload89
  %9 = urem i32 %8, 200
  %10 = uitofp nneg i32 %9 to double
  %11 = fdiv double %10, 2.000000e+02
  %.reload88 = load i32, ptr %.reg2mem82, align 4
  %.reload100 = load ptr, ptr %.reg2mem97, align 4
  %12 = getelementptr inbounds [200 x double], ptr %.reload100, i32 %.reload88, i32 %.reload119
  store double %11, ptr %12, align 8, !tbaa !2
  %13 = add nuw nsw i32 %.reload119, 1
  store i32 %13, ptr %.reg2mem79, align 4
  %.reload81 = load i32, ptr %.reg2mem79, align 4
  %.reload87 = load i32, ptr %.reg2mem82, align 4
  %14 = icmp eq i32 %.reload81, %.reload87
  br i1 %14, label %._crit_edge2, label %._crit_edge3, !llvm.loop !6

._crit_edge3:                                     ; preds = %7
  %.reload80 = load i32, ptr %.reg2mem79, align 4
  store i32 %.reload80, ptr %.reg2mem118, align 4
  br label %7

._crit_edge2:                                     ; preds = %7
  br label %15

15:                                               ; preds = %._crit_edge2, %._crit_edge
  %.reload86 = load i32, ptr %.reg2mem82, align 4
  %.reload99 = load ptr, ptr %.reg2mem97, align 4
  %16 = getelementptr inbounds [200 x double], ptr %.reload99, i32 %.reload86, i32 %.reload86
  store double 1.000000e+00, ptr %16, align 8, !tbaa !2
  %.reload85 = load i32, ptr %.reg2mem82, align 4
  %17 = add nuw nsw i32 %.reload85, 240
  store i32 %17, ptr %.reg2mem77, align 4
  store i32 0, ptr %.reg2mem116, align 4
  br label %18

18:                                               ; preds = %._crit_edge4, %15
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  %.reload78 = load i32, ptr %.reg2mem77, align 4
  %19 = sub nuw nsw i32 %.reload78, %.reload117
  %20 = urem i32 %19, 240
  %21 = uitofp nneg i32 %20 to double
  %22 = fdiv double %21, 2.400000e+02
  %.reload84 = load i32, ptr %.reg2mem82, align 4
  %.reload95 = load ptr, ptr %.reg2mem91, align 4
  %23 = getelementptr inbounds [240 x double], ptr %.reload95, i32 %.reload84, i32 %.reload117
  store double %22, ptr %23, align 8, !tbaa !2
  %24 = add nuw nsw i32 %.reload117, 1
  store i32 %24, ptr %.reg2mem74, align 4
  %.reload76 = load i32, ptr %.reg2mem74, align 4
  %25 = icmp eq i32 %.reload76, 240
  br i1 %25, label %26, label %._crit_edge4, !llvm.loop !9

._crit_edge4:                                     ; preds = %18
  %.reload75 = load i32, ptr %.reg2mem74, align 4
  store i32 %.reload75, ptr %.reg2mem116, align 4
  br label %18

26:                                               ; preds = %18
  %.reload83 = load i32, ptr %.reg2mem82, align 4
  %27 = add nuw nsw i32 %.reload83, 1
  store i32 %27, ptr %.reg2mem71, align 4
  %.reload73 = load i32, ptr %.reg2mem71, align 4
  %28 = icmp eq i32 %.reload73, 200
  br i1 %28, label %._crit_edge5, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %26
  %.reload72 = load i32, ptr %.reg2mem71, align 4
  store i32 %.reload72, ptr %.reg2mem120, align 4
  br label %5

._crit_edge5:                                     ; preds = %26
  store i32 0, ptr %.reg2mem114, align 4
  br label %29

29:                                               ; preds = %._crit_edge12, %._crit_edge5
  %.reload115 = load i32, ptr %.reg2mem114, align 4
  store i32 %.reload115, ptr %.reg2mem65, align 4
  %.reload70 = load i32, ptr %.reg2mem65, align 4
  %30 = icmp ult i32 %.reload70, 199
  store i1 %30, ptr %.reg2mem63, align 1
  store i32 0, ptr %.reg2mem112, align 4
  br label %31

31:                                               ; preds = %._crit_edge11, %29
  %.reload113 = load i32, ptr %.reg2mem112, align 4
  store i32 %.reload113, ptr %.reg2mem59, align 4
  %.reload62 = load i32, ptr %.reg2mem59, align 4
  %.reload69 = load i32, ptr %.reg2mem65, align 4
  %.reload94 = load ptr, ptr %.reg2mem91, align 4
  %32 = getelementptr inbounds [240 x double], ptr %.reload94, i32 %.reload69, i32 %.reload62
  store ptr %32, ptr %.reg2mem55, align 4
  %.reload58 = load ptr, ptr %.reg2mem55, align 4
  %33 = load double, ptr %.reload58, align 8, !tbaa !2
  store double %33, ptr %.reg2mem52, align 8
  %.reload64 = load i1, ptr %.reg2mem63, align 1
  br i1 %.reload64, label %._crit_edge7, label %._crit_edge8

._crit_edge8:                                     ; preds = %31
  %.reload54 = load double, ptr %.reg2mem52, align 8
  store double %.reload54, ptr %.reg2mem106, align 8
  br label %42

._crit_edge7:                                     ; preds = %31
  %.reload53 = load double, ptr %.reg2mem52, align 8
  %.reload66 = load i32, ptr %.reg2mem65, align 4
  store i32 %.reload66, ptr %.reg2mem108, align 4
  store double %.reload53, ptr %.reg2mem110, align 8
  br label %34

34:                                               ; preds = %._crit_edge10, %._crit_edge7
  %.reload111 = load double, ptr %.reg2mem110, align 8
  %.reload109 = load i32, ptr %.reg2mem108, align 4
  %35 = add nuw nsw i32 %.reload109, 1
  store i32 %35, ptr %.reg2mem47, align 4
  %.reload51 = load i32, ptr %.reg2mem47, align 4
  %.reload67 = load i32, ptr %.reg2mem65, align 4
  %.reload98 = load ptr, ptr %.reg2mem97, align 4
  %36 = getelementptr inbounds [200 x double], ptr %.reload98, i32 %.reload51, i32 %.reload67
  %37 = load double, ptr %36, align 8, !tbaa !2
  %.reload50 = load i32, ptr %.reg2mem47, align 4
  %.reload60 = load i32, ptr %.reg2mem59, align 4
  %.reload93 = load ptr, ptr %.reg2mem91, align 4
  %38 = getelementptr inbounds [240 x double], ptr %.reload93, i32 %.reload50, i32 %.reload60
  %39 = load double, ptr %38, align 8, !tbaa !2
  %40 = tail call double @llvm.fmuladd.f64(double %37, double %39, double %.reload111)
  store double %40, ptr %.reg2mem43, align 8
  %.reload46 = load double, ptr %.reg2mem43, align 8
  %.reload57 = load ptr, ptr %.reg2mem55, align 4
  store double %.reload46, ptr %.reload57, align 8, !tbaa !2
  %.reload49 = load i32, ptr %.reg2mem47, align 4
  %41 = icmp eq i32 %.reload49, 199
  br i1 %41, label %._crit_edge9, label %._crit_edge10, !llvm.loop !11

._crit_edge10:                                    ; preds = %34
  %.reload45 = load double, ptr %.reg2mem43, align 8
  %.reload48 = load i32, ptr %.reg2mem47, align 4
  store i32 %.reload48, ptr %.reg2mem108, align 4
  store double %.reload45, ptr %.reg2mem110, align 8
  br label %34

._crit_edge9:                                     ; preds = %34
  %.reload44 = load double, ptr %.reg2mem43, align 8
  store double %.reload44, ptr %.reg2mem106, align 8
  br label %42

42:                                               ; preds = %._crit_edge9, %._crit_edge8
  %.reload107 = load double, ptr %.reg2mem106, align 8
  %43 = fmul double %.reload107, 1.500000e+00
  %.reload56 = load ptr, ptr %.reg2mem55, align 4
  store double %43, ptr %.reload56, align 8, !tbaa !2
  %.reload61 = load i32, ptr %.reg2mem59, align 4
  %44 = add nuw nsw i32 %.reload61, 1
  store i32 %44, ptr %.reg2mem40, align 4
  %.reload42 = load i32, ptr %.reg2mem40, align 4
  %45 = icmp eq i32 %.reload42, 240
  br i1 %45, label %46, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %42
  %.reload41 = load i32, ptr %.reg2mem40, align 4
  store i32 %.reload41, ptr %.reg2mem112, align 4
  br label %31

46:                                               ; preds = %42
  %.reload68 = load i32, ptr %.reg2mem65, align 4
  %47 = add nuw nsw i32 %.reload68, 1
  store i32 %47, ptr %.reg2mem37, align 4
  %.reload39 = load i32, ptr %.reg2mem37, align 4
  %48 = icmp eq i32 %.reload39, 200
  br i1 %48, label %49, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %46
  %.reload38 = load i32, ptr %.reg2mem37, align 4
  store i32 %.reload38, ptr %.reg2mem114, align 4
  br label %29

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 4, !tbaa !14
  store ptr %50, ptr %.reg2mem30, align 4
  %.reload36 = load ptr, ptr %.reg2mem30, align 4
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload36, ptr noundef nonnull @.str) #3
  %.reload35 = load ptr, ptr %.reg2mem30, align 4
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload35, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem104, align 4
  br label %53

53:                                               ; preds = %._crit_edge15, %49
  %.reload105 = load i32, ptr %.reg2mem104, align 4
  store i32 %.reload105, ptr %.reg2mem26, align 4
  %.reload29 = load i32, ptr %.reg2mem26, align 4
  %54 = mul nuw nsw i32 %.reload29, 200
  store i32 %54, ptr %.reg2mem24, align 4
  store i32 0, ptr %.reg2mem102, align 4
  br label %55

55:                                               ; preds = %._crit_edge14, %53
  %.reload103 = load i32, ptr %.reg2mem102, align 4
  store i32 %.reload103, ptr %.reg2mem20, align 4
  %.reload23 = load i32, ptr %.reg2mem20, align 4
  %.reload25 = load i32, ptr %.reg2mem24, align 4
  %56 = add nuw nsw i32 %.reload23, %.reload25
  %57 = urem i32 %56, 20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %._crit_edge13

._crit_edge13:                                    ; preds = %55
  br label %61

59:                                               ; preds = %55
  %.reload31 = load ptr, ptr %.reg2mem30, align 4
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload31, ptr noundef nonnull @.str.3) #3
  br label %61

61:                                               ; preds = %._crit_edge13, %59
  %.reload22 = load i32, ptr %.reg2mem20, align 4
  %.reload28 = load i32, ptr %.reg2mem26, align 4
  %.reload92 = load ptr, ptr %.reg2mem91, align 4
  %62 = getelementptr inbounds [240 x double], ptr %.reload92, i32 %.reload28, i32 %.reload22
  %63 = load double, ptr %62, align 8, !tbaa !2
  %.reload34 = load ptr, ptr %.reg2mem30, align 4
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload34, ptr noundef nonnull @.str.4, double noundef %63) #3
  %.reload21 = load i32, ptr %.reg2mem20, align 4
  %65 = add nuw nsw i32 %.reload21, 1
  store i32 %65, ptr %.reg2mem17, align 4
  %.reload19 = load i32, ptr %.reg2mem17, align 4
  %66 = icmp eq i32 %.reload19, 240
  br i1 %66, label %67, label %._crit_edge14, !llvm.loop !16

._crit_edge14:                                    ; preds = %61
  %.reload18 = load i32, ptr %.reg2mem17, align 4
  store i32 %.reload18, ptr %.reg2mem102, align 4
  br label %55

67:                                               ; preds = %61
  %.reload27 = load i32, ptr %.reg2mem26, align 4
  %68 = add nuw nsw i32 %.reload27, 1
  store i32 %68, ptr %.reg2mem, align 4
  %.reload16 = load i32, ptr %.reg2mem, align 4
  %69 = icmp eq i32 %.reload16, 200
  br i1 %69, label %70, label %._crit_edge15, !llvm.loop !17

._crit_edge15:                                    ; preds = %67
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem104, align 4
  br label %53

70:                                               ; preds = %67
  %.reload33 = load ptr, ptr %.reg2mem30, align 4
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload33, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload32 = load ptr, ptr %.reg2mem30, align 4
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload32, ptr noundef nonnull @.str.6) #3
  %.reload101 = load ptr, ptr %.reg2mem97, align 4
  tail call void @free(ptr noundef %.reload101) #3
  %.reload96 = load ptr, ptr %.reg2mem91, align 4
  tail call void @free(ptr noundef nonnull %.reload96) #3
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
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = distinct !{!16, !7, !8}
!17 = distinct !{!17, !7, !8}
