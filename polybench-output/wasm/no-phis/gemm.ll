; ModuleID = './polybench-output/wasm/no-phis/gemm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/gemm/gemm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"checksum %.17g\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem18 = alloca i32, align 4
  %.reg2mem21 = alloca double, align 8
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem29 = alloca double, align 8
  %.reg2mem31 = alloca i32, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem37 = alloca double, align 8
  %.reg2mem39 = alloca ptr, align 4
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem56 = alloca ptr, align 4
  %.reg2mem58 = alloca i32, align 4
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem65 = alloca i32, align 4
  %.reg2mem70 = alloca i32, align 4
  %.reg2mem73 = alloca i32, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem80 = alloca i32, align 4
  %.reg2mem83 = alloca i32, align 4
  %.reg2mem87 = alloca i32, align 4
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem94 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %.reg2mem101 = alloca ptr, align 4
  %.reg2mem105 = alloca ptr, align 4
  %.reg2mem109 = alloca ptr, align 4
  %.reg2mem115 = alloca i32, align 4
  %.reg2mem117 = alloca double, align 8
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem121 = alloca double, align 8
  %.reg2mem123 = alloca i32, align 4
  %.reg2mem125 = alloca i32, align 4
  %.reg2mem127 = alloca i32, align 4
  %.reg2mem129 = alloca i32, align 4
  %.reg2mem131 = alloca i32, align 4
  %.reg2mem133 = alloca i32, align 4
  %.reg2mem135 = alloca i32, align 4
  %.reg2mem137 = alloca i32, align 4
  %.reg2mem139 = alloca i32, align 4
  %.reg2mem141 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 44000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem109, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem105, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 52800, i32 noundef 8) #3
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
  %9 = add nuw nsw i32 %8, 1
  %10 = urem i32 %9, 200
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double %11, 2.000000e+02
  %.reload99 = load i32, ptr %.reg2mem97, align 4
  %.reload113 = load ptr, ptr %.reg2mem109, align 4
  %13 = getelementptr inbounds [220 x double], ptr %.reload113, i32 %.reload99, i32 %.reload140
  store double %12, ptr %13, align 8, !tbaa !2
  %14 = add nuw nsw i32 %.reload140, 1
  store i32 %14, ptr %.reg2mem94, align 4
  %.reload96 = load i32, ptr %.reg2mem94, align 4
  %15 = icmp eq i32 %.reload96, 220
  br i1 %15, label %16, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %7
  %.reload95 = load i32, ptr %.reg2mem94, align 4
  store i32 %.reload95, ptr %.reg2mem139, align 4
  br label %7

16:                                               ; preds = %7
  %.reload98 = load i32, ptr %.reg2mem97, align 4
  %17 = add nuw nsw i32 %.reload98, 1
  store i32 %17, ptr %.reg2mem91, align 4
  %.reload93 = load i32, ptr %.reg2mem91, align 4
  %18 = icmp eq i32 %.reload93, 200
  br i1 %18, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %16
  %.reload92 = load i32, ptr %.reg2mem91, align 4
  store i32 %.reload92, ptr %.reg2mem141, align 4
  br label %6

._crit_edge1:                                     ; preds = %16
  store i32 0, ptr %.reg2mem137, align 4
  br label %19

19:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload138 = load i32, ptr %.reg2mem137, align 4
  store i32 %.reload138, ptr %.reg2mem87, align 4
  store i32 0, ptr %.reg2mem135, align 4
  br label %20

20:                                               ; preds = %._crit_edge3, %19
  %.reload136 = load i32, ptr %.reg2mem135, align 4
  %21 = add nuw nsw i32 %.reload136, 1
  store i32 %21, ptr %.reg2mem83, align 4
  %.reload86 = load i32, ptr %.reg2mem83, align 4
  %.reload90 = load i32, ptr %.reg2mem87, align 4
  %22 = mul nuw nsw i32 %.reload86, %.reload90
  %23 = urem i32 %22, 240
  %24 = uitofp nneg i32 %23 to double
  %25 = fdiv double %24, 2.400000e+02
  %.reload89 = load i32, ptr %.reg2mem87, align 4
  %.reload107 = load ptr, ptr %.reg2mem105, align 4
  %26 = getelementptr inbounds [240 x double], ptr %.reload107, i32 %.reload89, i32 %.reload136
  store double %25, ptr %26, align 8, !tbaa !2
  %.reload85 = load i32, ptr %.reg2mem83, align 4
  %27 = icmp eq i32 %.reload85, 240
  br i1 %27, label %28, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %20
  %.reload84 = load i32, ptr %.reg2mem83, align 4
  store i32 %.reload84, ptr %.reg2mem135, align 4
  br label %20

28:                                               ; preds = %20
  %.reload88 = load i32, ptr %.reg2mem87, align 4
  %29 = add nuw nsw i32 %.reload88, 1
  store i32 %29, ptr %.reg2mem80, align 4
  %.reload82 = load i32, ptr %.reg2mem80, align 4
  %30 = icmp eq i32 %.reload82, 200
  br i1 %30, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %28
  %.reload81 = load i32, ptr %.reg2mem80, align 4
  store i32 %.reload81, ptr %.reg2mem137, align 4
  br label %19

._crit_edge4:                                     ; preds = %28
  store i32 0, ptr %.reg2mem133, align 4
  br label %31

31:                                               ; preds = %._crit_edge8, %._crit_edge4
  %.reload134 = load i32, ptr %.reg2mem133, align 4
  store i32 %.reload134, ptr %.reg2mem76, align 4
  store i32 0, ptr %.reg2mem131, align 4
  br label %32

32:                                               ; preds = %._crit_edge6, %31
  %.reload132 = load i32, ptr %.reg2mem131, align 4
  %33 = add nuw nsw i32 %.reload132, 2
  %.reload79 = load i32, ptr %.reg2mem76, align 4
  %34 = mul nuw nsw i32 %33, %.reload79
  %35 = urem i32 %34, 220
  %36 = uitofp nneg i32 %35 to double
  %37 = fdiv double %36, 2.200000e+02
  %.reload78 = load i32, ptr %.reg2mem76, align 4
  %.reload103 = load ptr, ptr %.reg2mem101, align 4
  %38 = getelementptr inbounds [220 x double], ptr %.reload103, i32 %.reload78, i32 %.reload132
  store double %37, ptr %38, align 8, !tbaa !2
  %39 = add nuw nsw i32 %.reload132, 1
  store i32 %39, ptr %.reg2mem73, align 4
  %.reload75 = load i32, ptr %.reg2mem73, align 4
  %40 = icmp eq i32 %.reload75, 220
  br i1 %40, label %41, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %32
  %.reload74 = load i32, ptr %.reg2mem73, align 4
  store i32 %.reload74, ptr %.reg2mem131, align 4
  br label %32

41:                                               ; preds = %32
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  %42 = add nuw nsw i32 %.reload77, 1
  store i32 %42, ptr %.reg2mem70, align 4
  %.reload72 = load i32, ptr %.reg2mem70, align 4
  %43 = icmp eq i32 %.reload72, 240
  br i1 %43, label %._crit_edge7, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %41
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  store i32 %.reload71, ptr %.reg2mem133, align 4
  br label %31

._crit_edge7:                                     ; preds = %41
  store i32 0, ptr %.reg2mem129, align 4
  br label %44

44:                                               ; preds = %._crit_edge13, %._crit_edge7
  %.reload130 = load i32, ptr %.reg2mem129, align 4
  store i32 %.reload130, ptr %.reg2mem65, align 4
  store i32 0, ptr %.reg2mem127, align 4
  br label %45

45:                                               ; preds = %._crit_edge10, %44
  %.reload128 = load i32, ptr %.reg2mem127, align 4
  %.reload69 = load i32, ptr %.reg2mem65, align 4
  %.reload112 = load ptr, ptr %.reg2mem109, align 4
  %46 = getelementptr inbounds [220 x double], ptr %.reload112, i32 %.reload69, i32 %.reload128
  %47 = load double, ptr %46, align 8, !tbaa !2
  %48 = fmul double %47, 1.200000e+00
  store double %48, ptr %46, align 8, !tbaa !2
  %49 = add nuw nsw i32 %.reload128, 1
  store i32 %49, ptr %.reg2mem62, align 4
  %.reload64 = load i32, ptr %.reg2mem62, align 4
  %50 = icmp eq i32 %.reload64, 220
  br i1 %50, label %._crit_edge9, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %45
  %.reload63 = load i32, ptr %.reg2mem62, align 4
  store i32 %.reload63, ptr %.reg2mem127, align 4
  br label %45

._crit_edge9:                                     ; preds = %45
  store i32 0, ptr %.reg2mem125, align 4
  br label %51

51:                                               ; preds = %._crit_edge12, %._crit_edge9
  %.reload126 = load i32, ptr %.reg2mem125, align 4
  store i32 %.reload126, ptr %.reg2mem58, align 4
  %.reload61 = load i32, ptr %.reg2mem58, align 4
  %.reload68 = load i32, ptr %.reg2mem65, align 4
  %.reload106 = load ptr, ptr %.reg2mem105, align 4
  %52 = getelementptr inbounds [240 x double], ptr %.reload106, i32 %.reload68, i32 %.reload61
  store ptr %52, ptr %.reg2mem56, align 4
  store i32 0, ptr %.reg2mem123, align 4
  br label %53

53:                                               ; preds = %._crit_edge11, %51
  %.reload124 = load i32, ptr %.reg2mem123, align 4
  %.reload57 = load ptr, ptr %.reg2mem56, align 4
  %54 = load double, ptr %.reload57, align 8, !tbaa !2
  %55 = fmul double %54, 1.500000e+00
  %.reload60 = load i32, ptr %.reg2mem58, align 4
  %.reload102 = load ptr, ptr %.reg2mem101, align 4
  %56 = getelementptr inbounds [220 x double], ptr %.reload102, i32 %.reload60, i32 %.reload124
  %57 = load double, ptr %56, align 8, !tbaa !2
  %.reload67 = load i32, ptr %.reg2mem65, align 4
  %.reload111 = load ptr, ptr %.reg2mem109, align 4
  %58 = getelementptr inbounds [220 x double], ptr %.reload111, i32 %.reload67, i32 %.reload124
  %59 = load double, ptr %58, align 8, !tbaa !2
  %60 = tail call double @llvm.fmuladd.f64(double %55, double %57, double %59)
  store double %60, ptr %58, align 8, !tbaa !2
  %61 = add nuw nsw i32 %.reload124, 1
  store i32 %61, ptr %.reg2mem53, align 4
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %62 = icmp eq i32 %.reload55, 220
  br i1 %62, label %63, label %._crit_edge11, !llvm.loop !15

._crit_edge11:                                    ; preds = %53
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  store i32 %.reload54, ptr %.reg2mem123, align 4
  br label %53

63:                                               ; preds = %53
  %.reload59 = load i32, ptr %.reg2mem58, align 4
  %64 = add nuw nsw i32 %.reload59, 1
  store i32 %64, ptr %.reg2mem50, align 4
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %65 = icmp eq i32 %.reload52, 240
  br i1 %65, label %66, label %._crit_edge12, !llvm.loop !16

._crit_edge12:                                    ; preds = %63
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  store i32 %.reload51, ptr %.reg2mem125, align 4
  br label %51

66:                                               ; preds = %63
  %.reload66 = load i32, ptr %.reg2mem65, align 4
  %67 = add nuw nsw i32 %.reload66, 1
  store i32 %67, ptr %.reg2mem47, align 4
  %.reload49 = load i32, ptr %.reg2mem47, align 4
  %68 = icmp eq i32 %.reload49, 200
  br i1 %68, label %69, label %._crit_edge13, !llvm.loop !17

._crit_edge13:                                    ; preds = %66
  %.reload48 = load i32, ptr %.reg2mem47, align 4
  store i32 %.reload48, ptr %.reg2mem129, align 4
  br label %44

69:                                               ; preds = %66
  %70 = load ptr, ptr @stderr, align 4, !tbaa !18
  store ptr %70, ptr %.reg2mem39, align 4
  %.reload46 = load ptr, ptr %.reg2mem39, align 4
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload46, ptr noundef nonnull @.str) #3
  %.reload45 = load ptr, ptr %.reg2mem39, align 4
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload45, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem119, align 4
  store double 0.000000e+00, ptr %.reg2mem121, align 8
  br label %73

73:                                               ; preds = %._crit_edge16, %69
  %.reload122 = load double, ptr %.reg2mem121, align 8
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  store double %.reload122, ptr %.reg2mem37, align 8
  store i32 %.reload120, ptr %.reg2mem33, align 4
  %.reload36 = load i32, ptr %.reg2mem33, align 4
  %74 = mul nuw nsw i32 %.reload36, 200
  store i32 %74, ptr %.reg2mem31, align 4
  %.reload38 = load double, ptr %.reg2mem37, align 8
  store i32 0, ptr %.reg2mem115, align 4
  store double %.reload38, ptr %.reg2mem117, align 8
  br label %75

75:                                               ; preds = %._crit_edge15, %73
  %.reload118 = load double, ptr %.reg2mem117, align 8
  %.reload116 = load i32, ptr %.reg2mem115, align 4
  store double %.reload118, ptr %.reg2mem29, align 8
  store i32 %.reload116, ptr %.reg2mem25, align 4
  %.reload28 = load i32, ptr %.reg2mem25, align 4
  %.reload32 = load i32, ptr %.reg2mem31, align 4
  %76 = add nuw nsw i32 %.reload28, %.reload32
  %77 = urem i32 %76, 20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %._crit_edge14

._crit_edge14:                                    ; preds = %75
  br label %81

79:                                               ; preds = %75
  %.reload40 = load ptr, ptr %.reg2mem39, align 4
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload40, ptr noundef nonnull @.str.3) #3
  br label %81

81:                                               ; preds = %._crit_edge14, %79
  %.reload27 = load i32, ptr %.reg2mem25, align 4
  %.reload35 = load i32, ptr %.reg2mem33, align 4
  %.reload110 = load ptr, ptr %.reg2mem109, align 4
  %82 = getelementptr inbounds [220 x double], ptr %.reload110, i32 %.reload35, i32 %.reload27
  %83 = load double, ptr %82, align 8, !tbaa !2
  %.reload44 = load ptr, ptr %.reg2mem39, align 4
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload44, ptr noundef nonnull @.str.4, double noundef %83) #3
  %85 = load double, ptr %82, align 8, !tbaa !2
  %.reload30 = load double, ptr %.reg2mem29, align 8
  %86 = fadd double %.reload30, %85
  store double %86, ptr %.reg2mem21, align 8
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  %87 = add nuw nsw i32 %.reload26, 1
  store i32 %87, ptr %.reg2mem18, align 4
  %.reload20 = load i32, ptr %.reg2mem18, align 4
  %88 = icmp eq i32 %.reload20, 220
  br i1 %88, label %89, label %._crit_edge15, !llvm.loop !20

._crit_edge15:                                    ; preds = %81
  %.reload19 = load i32, ptr %.reg2mem18, align 4
  %.reload24 = load double, ptr %.reg2mem21, align 8
  store i32 %.reload19, ptr %.reg2mem115, align 4
  store double %.reload24, ptr %.reg2mem117, align 8
  br label %75

89:                                               ; preds = %81
  %.reload34 = load i32, ptr %.reg2mem33, align 4
  %90 = add nuw nsw i32 %.reload34, 1
  store i32 %90, ptr %.reg2mem, align 4
  %.reload17 = load i32, ptr %.reg2mem, align 4
  %91 = icmp eq i32 %.reload17, 200
  br i1 %91, label %92, label %._crit_edge16, !llvm.loop !21

._crit_edge16:                                    ; preds = %89
  %.reload = load i32, ptr %.reg2mem, align 4
  %.reload23 = load double, ptr %.reg2mem21, align 8
  store i32 %.reload, ptr %.reg2mem119, align 4
  store double %.reload23, ptr %.reg2mem121, align 8
  br label %73

92:                                               ; preds = %89
  %.reload22 = load double, ptr %.reg2mem21, align 8
  %.reload43 = load ptr, ptr %.reg2mem39, align 4
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload43, ptr noundef nonnull @.str.5, double noundef %.reload22) #3
  %.reload42 = load ptr, ptr %.reg2mem39, align 4
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload42, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #3
  %.reload41 = load ptr, ptr %.reg2mem39, align 4
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload41, ptr noundef nonnull @.str.7) #3
  %.reload114 = load ptr, ptr %.reg2mem109, align 4
  tail call void @free(ptr noundef nonnull %.reload114) #3
  %.reload108 = load ptr, ptr %.reg2mem105, align 4
  tail call void @free(ptr noundef %.reload108) #3
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
!17 = distinct !{!17, !7, !8}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
