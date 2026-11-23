; ModuleID = './polybench-output/wasm/no-phis/syr2k.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/syr2k/syr2k.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem15 = alloca i32, align 4
  %.reg2mem18 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem28 = alloca ptr, align 4
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem37 = alloca i32, align 4
  %.reg2mem40 = alloca i32, align 4
  %.reg2mem43 = alloca i32, align 4
  %.reg2mem46 = alloca ptr, align 4
  %.reg2mem48 = alloca ptr, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem59 = alloca i32, align 4
  %.reg2mem65 = alloca i32, align 4
  %.reg2mem69 = alloca i32, align 4
  %.reg2mem72 = alloca i32, align 4
  %.reg2mem75 = alloca i32, align 4
  %.reg2mem79 = alloca i32, align 4
  %.reg2mem82 = alloca i32, align 4
  %.reg2mem85 = alloca i32, align 4
  %.reg2mem90 = alloca ptr, align 4
  %.reg2mem95 = alloca ptr, align 4
  %.reg2mem100 = alloca ptr, align 4
  %.reg2mem106 = alloca i32, align 4
  %.reg2mem108 = alloca i32, align 4
  %.reg2mem110 = alloca i32, align 4
  %.reg2mem112 = alloca i32, align 4
  %.reg2mem114 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem118 = alloca i32, align 4
  %.reg2mem120 = alloca i32, align 4
  %.reg2mem122 = alloca i32, align 4
  %.reg2mem124 = alloca i32, align 4
  %.reg2mem126 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem100, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem95, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem90, align 4
  store i32 0, ptr %.reg2mem126, align 4
  br label %6

6:                                                ; preds = %._crit_edge2, %2
  %.reload127 = load i32, ptr %.reg2mem126, align 4
  store i32 %.reload127, ptr %.reg2mem85, align 4
  store i32 0, ptr %.reg2mem124, align 4
  br label %7

7:                                                ; preds = %._crit_edge, %6
  %.reload125 = load i32, ptr %.reg2mem124, align 4
  %.reload89 = load i32, ptr %.reg2mem85, align 4
  %8 = mul nuw nsw i32 %.reload125, %.reload89
  %9 = add nuw nsw i32 %8, 1
  %10 = urem i32 %9, 240
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double %11, 2.400000e+02
  %.reload88 = load i32, ptr %.reg2mem85, align 4
  %.reload98 = load ptr, ptr %.reg2mem95, align 4
  %13 = getelementptr inbounds [200 x double], ptr %.reload98, i32 %.reload88, i32 %.reload125
  store double %12, ptr %13, align 8, !tbaa !2
  %14 = add nuw nsw i32 %8, 2
  %15 = urem i32 %14, 200
  %16 = uitofp nneg i32 %15 to double
  %17 = fdiv double %16, 2.000000e+02
  %.reload87 = load i32, ptr %.reg2mem85, align 4
  %.reload93 = load ptr, ptr %.reg2mem90, align 4
  %18 = getelementptr inbounds [200 x double], ptr %.reload93, i32 %.reload87, i32 %.reload125
  store double %17, ptr %18, align 8, !tbaa !2
  %19 = add nuw nsw i32 %.reload125, 1
  store i32 %19, ptr %.reg2mem82, align 4
  %.reload84 = load i32, ptr %.reg2mem82, align 4
  %20 = icmp eq i32 %.reload84, 200
  br i1 %20, label %21, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %7
  %.reload83 = load i32, ptr %.reg2mem82, align 4
  store i32 %.reload83, ptr %.reg2mem124, align 4
  br label %7

21:                                               ; preds = %7
  %.reload86 = load i32, ptr %.reg2mem85, align 4
  %22 = add nuw nsw i32 %.reload86, 1
  store i32 %22, ptr %.reg2mem79, align 4
  %.reload81 = load i32, ptr %.reg2mem79, align 4
  %23 = icmp eq i32 %.reload81, 240
  br i1 %23, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %21
  %.reload80 = load i32, ptr %.reg2mem79, align 4
  store i32 %.reload80, ptr %.reg2mem126, align 4
  br label %6

._crit_edge1:                                     ; preds = %21
  store i32 0, ptr %.reg2mem122, align 4
  br label %24

24:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload123 = load i32, ptr %.reg2mem122, align 4
  store i32 %.reload123, ptr %.reg2mem75, align 4
  store i32 0, ptr %.reg2mem120, align 4
  br label %25

25:                                               ; preds = %._crit_edge3, %24
  %.reload121 = load i32, ptr %.reg2mem120, align 4
  %.reload78 = load i32, ptr %.reg2mem75, align 4
  %26 = mul nuw nsw i32 %.reload121, %.reload78
  %27 = add nuw nsw i32 %26, 3
  %28 = urem i32 %27, 240
  %29 = uitofp nneg i32 %28 to double
  %30 = fdiv double %29, 2.000000e+02
  %.reload77 = load i32, ptr %.reg2mem75, align 4
  %.reload104 = load ptr, ptr %.reg2mem100, align 4
  %31 = getelementptr inbounds [240 x double], ptr %.reload104, i32 %.reload77, i32 %.reload121
  store double %30, ptr %31, align 8, !tbaa !2
  %32 = add nuw nsw i32 %.reload121, 1
  store i32 %32, ptr %.reg2mem72, align 4
  %.reload74 = load i32, ptr %.reg2mem72, align 4
  %33 = icmp eq i32 %.reload74, 240
  br i1 %33, label %34, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %25
  %.reload73 = load i32, ptr %.reg2mem72, align 4
  store i32 %.reload73, ptr %.reg2mem120, align 4
  br label %25

34:                                               ; preds = %25
  %.reload76 = load i32, ptr %.reg2mem75, align 4
  %35 = add nuw nsw i32 %.reload76, 1
  store i32 %35, ptr %.reg2mem69, align 4
  %.reload71 = load i32, ptr %.reg2mem69, align 4
  %36 = icmp eq i32 %.reload71, 240
  br i1 %36, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %34
  %.reload70 = load i32, ptr %.reg2mem69, align 4
  store i32 %.reload70, ptr %.reg2mem122, align 4
  br label %24

._crit_edge4:                                     ; preds = %34
  store i32 0, ptr %.reg2mem116, align 4
  store i32 1, ptr %.reg2mem118, align 4
  br label %37

37:                                               ; preds = %._crit_edge10, %._crit_edge4
  %.reload119 = load i32, ptr %.reg2mem118, align 4
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  store i32 %.reload119, ptr %.reg2mem65, align 4
  store i32 %.reload117, ptr %.reg2mem59, align 4
  store i32 0, ptr %.reg2mem114, align 4
  br label %38

38:                                               ; preds = %._crit_edge7, %37
  %.reload115 = load i32, ptr %.reg2mem114, align 4
  %.reload64 = load i32, ptr %.reg2mem59, align 4
  %.reload103 = load ptr, ptr %.reg2mem100, align 4
  %39 = getelementptr inbounds [240 x double], ptr %.reload103, i32 %.reload64, i32 %.reload115
  %40 = load double, ptr %39, align 8, !tbaa !2
  %41 = fmul double %40, 1.200000e+00
  store double %41, ptr %39, align 8, !tbaa !2
  %42 = add nuw nsw i32 %.reload115, 1
  store i32 %42, ptr %.reg2mem56, align 4
  %.reload58 = load i32, ptr %.reg2mem56, align 4
  %.reload68 = load i32, ptr %.reg2mem65, align 4
  %43 = icmp eq i32 %.reload58, %.reload68
  br i1 %43, label %._crit_edge6, label %._crit_edge7, !llvm.loop !12

._crit_edge7:                                     ; preds = %38
  %.reload57 = load i32, ptr %.reg2mem56, align 4
  store i32 %.reload57, ptr %.reg2mem114, align 4
  br label %38

._crit_edge6:                                     ; preds = %38
  store i32 0, ptr %.reg2mem112, align 4
  br label %44

44:                                               ; preds = %._crit_edge9, %._crit_edge6
  %.reload113 = load i32, ptr %.reg2mem112, align 4
  store i32 %.reload113, ptr %.reg2mem50, align 4
  %.reload55 = load i32, ptr %.reg2mem50, align 4
  %.reload63 = load i32, ptr %.reg2mem59, align 4
  %.reload92 = load ptr, ptr %.reg2mem90, align 4
  %45 = getelementptr inbounds [200 x double], ptr %.reload92, i32 %.reload63, i32 %.reload55
  store ptr %45, ptr %.reg2mem48, align 4
  %.reload54 = load i32, ptr %.reg2mem50, align 4
  %.reload62 = load i32, ptr %.reg2mem59, align 4
  %.reload97 = load ptr, ptr %.reg2mem95, align 4
  %46 = getelementptr inbounds [200 x double], ptr %.reload97, i32 %.reload62, i32 %.reload54
  store ptr %46, ptr %.reg2mem46, align 4
  store i32 0, ptr %.reg2mem110, align 4
  br label %47

47:                                               ; preds = %._crit_edge8, %44
  %.reload111 = load i32, ptr %.reg2mem110, align 4
  %.reload53 = load i32, ptr %.reg2mem50, align 4
  %.reload96 = load ptr, ptr %.reg2mem95, align 4
  %48 = getelementptr inbounds [200 x double], ptr %.reload96, i32 %.reload111, i32 %.reload53
  %49 = load double, ptr %48, align 8, !tbaa !2
  %50 = fmul double %49, 1.500000e+00
  %.reload49 = load ptr, ptr %.reg2mem48, align 4
  %51 = load double, ptr %.reload49, align 8, !tbaa !2
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %.reload91 = load ptr, ptr %.reg2mem90, align 4
  %52 = getelementptr inbounds [200 x double], ptr %.reload91, i32 %.reload111, i32 %.reload52
  %53 = load double, ptr %52, align 8, !tbaa !2
  %54 = fmul double %53, 1.500000e+00
  %.reload47 = load ptr, ptr %.reg2mem46, align 4
  %55 = load double, ptr %.reload47, align 8, !tbaa !2
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %50, double %51, double %56)
  %.reload61 = load i32, ptr %.reg2mem59, align 4
  %.reload102 = load ptr, ptr %.reg2mem100, align 4
  %58 = getelementptr inbounds [240 x double], ptr %.reload102, i32 %.reload61, i32 %.reload111
  %59 = load double, ptr %58, align 8, !tbaa !2
  %60 = fadd double %59, %57
  store double %60, ptr %58, align 8, !tbaa !2
  %61 = add nuw nsw i32 %.reload111, 1
  store i32 %61, ptr %.reg2mem43, align 4
  %.reload45 = load i32, ptr %.reg2mem43, align 4
  %.reload67 = load i32, ptr %.reg2mem65, align 4
  %62 = icmp eq i32 %.reload45, %.reload67
  br i1 %62, label %63, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %47
  %.reload44 = load i32, ptr %.reg2mem43, align 4
  store i32 %.reload44, ptr %.reg2mem110, align 4
  br label %47

63:                                               ; preds = %47
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  %64 = add nuw nsw i32 %.reload51, 1
  store i32 %64, ptr %.reg2mem40, align 4
  %.reload42 = load i32, ptr %.reg2mem40, align 4
  %65 = icmp eq i32 %.reload42, 200
  br i1 %65, label %66, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %63
  %.reload41 = load i32, ptr %.reg2mem40, align 4
  store i32 %.reload41, ptr %.reg2mem112, align 4
  br label %44

66:                                               ; preds = %63
  %.reload60 = load i32, ptr %.reg2mem59, align 4
  %67 = add nuw nsw i32 %.reload60, 1
  store i32 %67, ptr %.reg2mem37, align 4
  %.reload66 = load i32, ptr %.reg2mem65, align 4
  %68 = add nuw nsw i32 %.reload66, 1
  store i32 %68, ptr %.reg2mem35, align 4
  %.reload39 = load i32, ptr %.reg2mem37, align 4
  %69 = icmp eq i32 %.reload39, 240
  br i1 %69, label %70, label %._crit_edge10, !llvm.loop !15

._crit_edge10:                                    ; preds = %66
  %.reload36 = load i32, ptr %.reg2mem35, align 4
  %.reload38 = load i32, ptr %.reg2mem37, align 4
  store i32 %.reload38, ptr %.reg2mem116, align 4
  store i32 %.reload36, ptr %.reg2mem118, align 4
  br label %37

70:                                               ; preds = %66
  %71 = load ptr, ptr @stderr, align 4, !tbaa !16
  store ptr %71, ptr %.reg2mem28, align 4
  %.reload34 = load ptr, ptr %.reg2mem28, align 4
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload34, ptr noundef nonnull @.str) #3
  %.reload33 = load ptr, ptr %.reg2mem28, align 4
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload33, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem108, align 4
  br label %74

74:                                               ; preds = %._crit_edge13, %70
  %.reload109 = load i32, ptr %.reg2mem108, align 4
  store i32 %.reload109, ptr %.reg2mem24, align 4
  %.reload27 = load i32, ptr %.reg2mem24, align 4
  %75 = mul nuw nsw i32 %.reload27, 240
  store i32 %75, ptr %.reg2mem22, align 4
  store i32 0, ptr %.reg2mem106, align 4
  br label %76

76:                                               ; preds = %._crit_edge12, %74
  %.reload107 = load i32, ptr %.reg2mem106, align 4
  store i32 %.reload107, ptr %.reg2mem18, align 4
  %.reload21 = load i32, ptr %.reg2mem18, align 4
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  %77 = add nuw nsw i32 %.reload21, %.reload23
  %78 = urem i32 %77, 20
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %._crit_edge11

._crit_edge11:                                    ; preds = %76
  br label %82

80:                                               ; preds = %76
  %.reload29 = load ptr, ptr %.reg2mem28, align 4
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload29, ptr noundef nonnull @.str.3) #3
  br label %82

82:                                               ; preds = %._crit_edge11, %80
  %.reload20 = load i32, ptr %.reg2mem18, align 4
  %.reload26 = load i32, ptr %.reg2mem24, align 4
  %.reload101 = load ptr, ptr %.reg2mem100, align 4
  %83 = getelementptr inbounds [240 x double], ptr %.reload101, i32 %.reload26, i32 %.reload20
  %84 = load double, ptr %83, align 8, !tbaa !2
  %.reload32 = load ptr, ptr %.reg2mem28, align 4
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload32, ptr noundef nonnull @.str.4, double noundef %84) #3
  %.reload19 = load i32, ptr %.reg2mem18, align 4
  %86 = add nuw nsw i32 %.reload19, 1
  store i32 %86, ptr %.reg2mem15, align 4
  %.reload17 = load i32, ptr %.reg2mem15, align 4
  %87 = icmp eq i32 %.reload17, 240
  br i1 %87, label %88, label %._crit_edge12, !llvm.loop !18

._crit_edge12:                                    ; preds = %82
  %.reload16 = load i32, ptr %.reg2mem15, align 4
  store i32 %.reload16, ptr %.reg2mem106, align 4
  br label %76

88:                                               ; preds = %82
  %.reload25 = load i32, ptr %.reg2mem24, align 4
  %89 = add nuw nsw i32 %.reload25, 1
  store i32 %89, ptr %.reg2mem, align 4
  %.reload14 = load i32, ptr %.reg2mem, align 4
  %90 = icmp eq i32 %.reload14, 240
  br i1 %90, label %91, label %._crit_edge13, !llvm.loop !19

._crit_edge13:                                    ; preds = %88
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem108, align 4
  br label %74

91:                                               ; preds = %88
  %.reload31 = load ptr, ptr %.reg2mem28, align 4
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload30 = load ptr, ptr %.reg2mem28, align 4
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload30, ptr noundef nonnull @.str.6) #3
  %.reload105 = load ptr, ptr %.reg2mem100, align 4
  tail call void @free(ptr noundef nonnull %.reload105) #3
  %.reload99 = load ptr, ptr %.reg2mem95, align 4
  tail call void @free(ptr noundef %.reload99) #3
  %.reload94 = load ptr, ptr %.reg2mem90, align 4
  tail call void @free(ptr noundef %.reload94) #3
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
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !7, !8}
