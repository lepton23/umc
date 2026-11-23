; ModuleID = './polybench-output/wasm/no-phis/cholesky.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/cholesky/cholesky.c"
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
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem27 = alloca i32, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem34 = alloca i32, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem40 = alloca i32, align 4
  %.reg2mem43 = alloca ptr, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem56 = alloca double, align 8
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem63 = alloca i32, align 4
  %.reg2mem66 = alloca double, align 8
  %.reg2mem70 = alloca double, align 8
  %.reg2mem72 = alloca ptr, align 4
  %.reg2mem75 = alloca double, align 8
  %.reg2mem77 = alloca i32, align 4
  %.reg2mem85 = alloca double, align 8
  %.reg2mem87 = alloca ptr, align 4
  %.reg2mem90 = alloca double, align 8
  %.reg2mem92 = alloca ptr, align 4
  %.reg2mem94 = alloca i32, align 4
  %.reg2mem106 = alloca i32, align 4
  %.reg2mem109 = alloca i32, align 4
  %.reg2mem112 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem122 = alloca i32, align 4
  %.reg2mem125 = alloca ptr, align 4
  %.reg2mem127 = alloca i32, align 4
  %.reg2mem131 = alloca i32, align 4
  %.reg2mem135 = alloca i32, align 4
  %.reg2mem138 = alloca i32, align 4
  %.reg2mem141 = alloca i32, align 4
  %.reg2mem144 = alloca ptr, align 4
  %.reg2mem149 = alloca i32, align 4
  %.reg2mem151 = alloca i32, align 4
  %.reg2mem154 = alloca i32, align 4
  %.reg2mem158 = alloca i32, align 4
  %.reg2mem161 = alloca i32, align 4
  %.reg2mem167 = alloca i32, align 4
  %.reg2mem170 = alloca ptr, align 4
  %.reg2mem189 = alloca i32, align 4
  %.reg2mem191 = alloca i32, align 4
  %.reg2mem193 = alloca i32, align 4
  %.reg2mem195 = alloca double, align 8
  %.reg2mem197 = alloca i32, align 4
  %.reg2mem199 = alloca double, align 8
  %.reg2mem201 = alloca double, align 8
  %.reg2mem203 = alloca i32, align 4
  %.reg2mem205 = alloca double, align 8
  %.reg2mem207 = alloca i32, align 4
  %.reg2mem209 = alloca i32, align 4
  %.reg2mem211 = alloca i32, align 4
  %.reg2mem213 = alloca i32, align 4
  %.reg2mem215 = alloca i32, align 4
  %.reg2mem217 = alloca i32, align 4
  %.reg2mem219 = alloca i32, align 4
  %.reg2mem221 = alloca i32, align 4
  %.reg2mem223 = alloca i32, align 4
  %.reg2mem225 = alloca i32, align 4
  %.reg2mem227 = alloca i32, align 4
  %.reg2mem229 = alloca i32, align 4
  %.reg2mem231 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem170, align 4
  store i32 0, ptr %.reg2mem229, align 4
  store i32 1, ptr %.reg2mem231, align 4
  br label %4

4:                                                ; preds = %._crit_edge5, %2
  %.reload232 = load i32, ptr %.reg2mem231, align 4
  %.reload230 = load i32, ptr %.reg2mem229, align 4
  store i32 %.reload232, ptr %.reg2mem167, align 4
  store i32 %.reload230, ptr %.reg2mem161, align 4
  store i32 0, ptr %.reg2mem227, align 4
  br label %5

5:                                                ; preds = %._crit_edge, %4
  %.reload228 = load i32, ptr %.reg2mem227, align 4
  %6 = sub nsw i32 0, %.reload228
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %7, 4.000000e+02
  %9 = fadd double %8, 1.000000e+00
  %.reload166 = load i32, ptr %.reg2mem161, align 4
  %.reload187 = load ptr, ptr %.reg2mem170, align 4
  %10 = getelementptr inbounds [400 x double], ptr %.reload187, i32 %.reload166, i32 %.reload228
  store double %9, ptr %10, align 8, !tbaa !2
  %11 = add nuw nsw i32 %.reload228, 1
  store i32 %11, ptr %.reg2mem158, align 4
  %.reload160 = load i32, ptr %.reg2mem158, align 4
  %.reload169 = load i32, ptr %.reg2mem167, align 4
  %12 = icmp eq i32 %.reload160, %.reload169
  br i1 %12, label %13, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %5
  %.reload159 = load i32, ptr %.reg2mem158, align 4
  store i32 %.reload159, ptr %.reg2mem227, align 4
  br label %5

13:                                               ; preds = %5
  %.reload165 = load i32, ptr %.reg2mem161, align 4
  %14 = add nuw nsw i32 %.reload165, 1
  store i32 %14, ptr %.reg2mem154, align 4
  %.reload164 = load i32, ptr %.reg2mem161, align 4
  %15 = icmp ult i32 %.reload164, 399
  br i1 %15, label %._crit_edge1, label %._crit_edge2

._crit_edge2:                                     ; preds = %13
  br label %20

._crit_edge1:                                     ; preds = %13
  %.reload155 = load i32, ptr %.reg2mem154, align 4
  store i32 %.reload155, ptr %.reg2mem225, align 4
  br label %16

16:                                               ; preds = %._crit_edge4, %._crit_edge1
  %.reload226 = load i32, ptr %.reg2mem225, align 4
  %.reload162 = load i32, ptr %.reg2mem161, align 4
  %.reload182 = load ptr, ptr %.reg2mem170, align 4
  %17 = getelementptr inbounds [400 x double], ptr %.reload182, i32 %.reload162, i32 %.reload226
  store double 0.000000e+00, ptr %17, align 8, !tbaa !2
  %18 = add nuw nsw i32 %.reload226, 1
  store i32 %18, ptr %.reg2mem151, align 4
  %.reload153 = load i32, ptr %.reg2mem151, align 4
  %19 = icmp eq i32 %.reload153, 400
  br i1 %19, label %._crit_edge3, label %._crit_edge4, !llvm.loop !9

._crit_edge4:                                     ; preds = %16
  %.reload152 = load i32, ptr %.reg2mem151, align 4
  store i32 %.reload152, ptr %.reg2mem225, align 4
  br label %16

._crit_edge3:                                     ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge3, %._crit_edge2
  %.reload163 = load i32, ptr %.reg2mem161, align 4
  %.reload186 = load ptr, ptr %.reg2mem170, align 4
  %21 = getelementptr inbounds [400 x double], ptr %.reload186, i32 %.reload163, i32 %.reload163
  store double 1.000000e+00, ptr %21, align 8, !tbaa !2
  %.reload168 = load i32, ptr %.reg2mem167, align 4
  %22 = add nuw nsw i32 %.reload168, 1
  store i32 %22, ptr %.reg2mem149, align 4
  %.reload157 = load i32, ptr %.reg2mem154, align 4
  %23 = icmp eq i32 %.reload157, 400
  br i1 %23, label %24, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %20
  %.reload150 = load i32, ptr %.reg2mem149, align 4
  %.reload156 = load i32, ptr %.reg2mem154, align 4
  store i32 %.reload156, ptr %.reg2mem229, align 4
  store i32 %.reload150, ptr %.reg2mem231, align 4
  br label %4

24:                                               ; preds = %20
  %25 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %25, ptr %.reg2mem144, align 4
  store i32 0, ptr %.reg2mem223, align 4
  br label %26

26:                                               ; preds = %._crit_edge8, %24
  %.reload224 = load i32, ptr %.reg2mem223, align 4
  store i32 %.reload224, ptr %.reg2mem141, align 4
  store i32 0, ptr %.reg2mem221, align 4
  br label %27

27:                                               ; preds = %._crit_edge6, %26
  %.reload222 = load i32, ptr %.reg2mem221, align 4
  %.reload143 = load i32, ptr %.reg2mem141, align 4
  %.reload148 = load ptr, ptr %.reg2mem144, align 4
  %28 = getelementptr inbounds [400 x [400 x double]], ptr %.reload148, i32 0, i32 %.reload143, i32 %.reload222
  store double 0.000000e+00, ptr %28, align 8, !tbaa !2
  %29 = add nuw nsw i32 %.reload222, 1
  store i32 %29, ptr %.reg2mem138, align 4
  %.reload140 = load i32, ptr %.reg2mem138, align 4
  %30 = icmp eq i32 %.reload140, 400
  br i1 %30, label %31, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %27
  %.reload139 = load i32, ptr %.reg2mem138, align 4
  store i32 %.reload139, ptr %.reg2mem221, align 4
  br label %27

31:                                               ; preds = %27
  %.reload142 = load i32, ptr %.reg2mem141, align 4
  %32 = add nuw nsw i32 %.reload142, 1
  store i32 %32, ptr %.reg2mem135, align 4
  %.reload137 = load i32, ptr %.reg2mem135, align 4
  %33 = icmp eq i32 %.reload137, 400
  br i1 %33, label %._crit_edge7, label %._crit_edge8, !llvm.loop !12

._crit_edge8:                                     ; preds = %31
  %.reload136 = load i32, ptr %.reg2mem135, align 4
  store i32 %.reload136, ptr %.reg2mem223, align 4
  br label %26

._crit_edge7:                                     ; preds = %31
  store i32 0, ptr %.reg2mem219, align 4
  br label %34

34:                                               ; preds = %._crit_edge12, %._crit_edge7
  %.reload220 = load i32, ptr %.reg2mem219, align 4
  store i32 %.reload220, ptr %.reg2mem131, align 4
  store i32 0, ptr %.reg2mem217, align 4
  br label %35

35:                                               ; preds = %._crit_edge10, %34
  %.reload218 = load i32, ptr %.reg2mem217, align 4
  store i32 %.reload218, ptr %.reg2mem127, align 4
  %.reload130 = load i32, ptr %.reg2mem127, align 4
  %.reload134 = load i32, ptr %.reg2mem131, align 4
  %.reload185 = load ptr, ptr %.reg2mem170, align 4
  %36 = getelementptr inbounds [400 x double], ptr %.reload185, i32 %.reload130, i32 %.reload134
  store ptr %36, ptr %.reg2mem125, align 4
  store i32 0, ptr %.reg2mem215, align 4
  br label %37

37:                                               ; preds = %._crit_edge9, %35
  %.reload216 = load i32, ptr %.reg2mem215, align 4
  %.reload126 = load ptr, ptr %.reg2mem125, align 4
  %38 = load double, ptr %.reload126, align 8, !tbaa !2
  %.reload133 = load i32, ptr %.reg2mem131, align 4
  %.reload184 = load ptr, ptr %.reg2mem170, align 4
  %39 = getelementptr inbounds [400 x double], ptr %.reload184, i32 %.reload216, i32 %.reload133
  %40 = load double, ptr %39, align 8, !tbaa !2
  %.reload129 = load i32, ptr %.reg2mem127, align 4
  %.reload147 = load ptr, ptr %.reg2mem144, align 4
  %41 = getelementptr inbounds [400 x [400 x double]], ptr %.reload147, i32 0, i32 %.reload129, i32 %.reload216
  %42 = load double, ptr %41, align 8, !tbaa !2
  %43 = tail call double @llvm.fmuladd.f64(double %38, double %40, double %42)
  store double %43, ptr %41, align 8, !tbaa !2
  %44 = add nuw nsw i32 %.reload216, 1
  store i32 %44, ptr %.reg2mem122, align 4
  %.reload124 = load i32, ptr %.reg2mem122, align 4
  %45 = icmp eq i32 %.reload124, 400
  br i1 %45, label %46, label %._crit_edge9, !llvm.loop !13

._crit_edge9:                                     ; preds = %37
  %.reload123 = load i32, ptr %.reg2mem122, align 4
  store i32 %.reload123, ptr %.reg2mem215, align 4
  br label %37

46:                                               ; preds = %37
  %.reload128 = load i32, ptr %.reg2mem127, align 4
  %47 = add nuw nsw i32 %.reload128, 1
  store i32 %47, ptr %.reg2mem119, align 4
  %.reload121 = load i32, ptr %.reg2mem119, align 4
  %48 = icmp eq i32 %.reload121, 400
  br i1 %48, label %49, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %46
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  store i32 %.reload120, ptr %.reg2mem217, align 4
  br label %35

49:                                               ; preds = %46
  %.reload132 = load i32, ptr %.reg2mem131, align 4
  %50 = add nuw nsw i32 %.reload132, 1
  store i32 %50, ptr %.reg2mem116, align 4
  %.reload118 = load i32, ptr %.reg2mem116, align 4
  %51 = icmp eq i32 %.reload118, 400
  br i1 %51, label %._crit_edge11, label %._crit_edge12, !llvm.loop !15

._crit_edge12:                                    ; preds = %49
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  store i32 %.reload117, ptr %.reg2mem219, align 4
  br label %34

._crit_edge11:                                    ; preds = %49
  store i32 0, ptr %.reg2mem213, align 4
  br label %52

52:                                               ; preds = %._crit_edge14, %._crit_edge11
  %.reload214 = load i32, ptr %.reg2mem213, align 4
  store i32 %.reload214, ptr %.reg2mem112, align 4
  store i32 0, ptr %.reg2mem211, align 4
  br label %53

53:                                               ; preds = %._crit_edge13, %52
  %.reload212 = load i32, ptr %.reg2mem211, align 4
  %.reload115 = load i32, ptr %.reg2mem112, align 4
  %.reload146 = load ptr, ptr %.reg2mem144, align 4
  %54 = getelementptr inbounds [400 x [400 x double]], ptr %.reload146, i32 0, i32 %.reload115, i32 %.reload212
  %55 = load double, ptr %54, align 8, !tbaa !2
  %.reload114 = load i32, ptr %.reg2mem112, align 4
  %.reload183 = load ptr, ptr %.reg2mem170, align 4
  %56 = getelementptr inbounds [400 x double], ptr %.reload183, i32 %.reload114, i32 %.reload212
  store double %55, ptr %56, align 8, !tbaa !2
  %57 = add nuw nsw i32 %.reload212, 1
  store i32 %57, ptr %.reg2mem109, align 4
  %.reload111 = load i32, ptr %.reg2mem109, align 4
  %58 = icmp eq i32 %.reload111, 400
  br i1 %58, label %59, label %._crit_edge13, !llvm.loop !16

._crit_edge13:                                    ; preds = %53
  %.reload110 = load i32, ptr %.reg2mem109, align 4
  store i32 %.reload110, ptr %.reg2mem211, align 4
  br label %53

59:                                               ; preds = %53
  %.reload113 = load i32, ptr %.reg2mem112, align 4
  %60 = add nuw nsw i32 %.reload113, 1
  store i32 %60, ptr %.reg2mem106, align 4
  %.reload108 = load i32, ptr %.reg2mem106, align 4
  %61 = icmp eq i32 %.reload108, 400
  br i1 %61, label %62, label %._crit_edge14, !llvm.loop !17

._crit_edge14:                                    ; preds = %59
  %.reload107 = load i32, ptr %.reg2mem106, align 4
  store i32 %.reload107, ptr %.reg2mem213, align 4
  br label %52

62:                                               ; preds = %59
  %.reload145 = load ptr, ptr %.reg2mem144, align 4
  tail call void @free(ptr noundef nonnull %.reload145) #3
  store i32 0, ptr %.reg2mem209, align 4
  br label %63

63:                                               ; preds = %._crit_edge20, %62
  %.reload210 = load i32, ptr %.reg2mem209, align 4
  store i32 %.reload210, ptr %.reg2mem94, align 4
  %.reload105 = load i32, ptr %.reg2mem94, align 4
  %64 = icmp eq i32 %.reload105, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %.reload104 = load i32, ptr %.reg2mem94, align 4
  %.reload181 = load ptr, ptr %.reg2mem170, align 4
  %66 = getelementptr inbounds [400 x double], ptr %.reload181, i32 %.reload104, i32 0
  store ptr %66, ptr %.reg2mem92, align 4
  store i32 0, ptr %.reg2mem207, align 4
  br label %72

67:                                               ; preds = %63
  %.reload172 = load ptr, ptr %.reg2mem170, align 4
  %68 = load double, ptr %.reload172, align 8, !tbaa !2
  store double %68, ptr %.reg2mem90, align 8
  %.reload91 = load double, ptr %.reg2mem90, align 8
  store double %.reload91, ptr %.reg2mem195, align 8
  br label %102

69:                                               ; preds = %88
  %.reload99 = load i32, ptr %.reg2mem94, align 4
  %.reload175 = load ptr, ptr %.reg2mem170, align 4
  %70 = getelementptr inbounds [400 x double], ptr %.reload175, i32 %.reload99, i32 %.reload99
  store ptr %70, ptr %.reg2mem87, align 4
  %.reload89 = load ptr, ptr %.reg2mem87, align 4
  %71 = load double, ptr %.reload89, align 8, !tbaa !2
  store double %71, ptr %.reg2mem85, align 8
  %.reload86 = load double, ptr %.reg2mem85, align 8
  store i32 0, ptr %.reg2mem197, align 4
  store double %.reload86, ptr %.reg2mem199, align 8
  br label %95

72:                                               ; preds = %._crit_edge17, %65
  %.reload208 = load i32, ptr %.reg2mem207, align 4
  store i32 %.reload208, ptr %.reg2mem77, align 4
  %.reload84 = load i32, ptr %.reg2mem77, align 4
  %73 = icmp eq i32 %.reload84, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %.reload93 = load ptr, ptr %.reg2mem92, align 4
  %75 = load double, ptr %.reload93, align 8, !tbaa !2
  store double %75, ptr %.reg2mem75, align 8
  %.reload76 = load double, ptr %.reg2mem75, align 8
  store double %.reload76, ptr %.reg2mem201, align 8
  br label %88

76:                                               ; preds = %72
  %.reload83 = load i32, ptr %.reg2mem77, align 4
  %.reload103 = load i32, ptr %.reg2mem94, align 4
  %.reload180 = load ptr, ptr %.reg2mem170, align 4
  %77 = getelementptr inbounds [400 x double], ptr %.reload180, i32 %.reload103, i32 %.reload83
  store ptr %77, ptr %.reg2mem72, align 4
  %.reload74 = load ptr, ptr %.reg2mem72, align 4
  %78 = load double, ptr %.reload74, align 8, !tbaa !2
  store double %78, ptr %.reg2mem70, align 8
  %.reload71 = load double, ptr %.reg2mem70, align 8
  store i32 0, ptr %.reg2mem203, align 4
  store double %.reload71, ptr %.reg2mem205, align 8
  br label %79

79:                                               ; preds = %._crit_edge16, %76
  %.reload206 = load double, ptr %.reg2mem205, align 8
  %.reload204 = load i32, ptr %.reg2mem203, align 4
  %.reload102 = load i32, ptr %.reg2mem94, align 4
  %.reload179 = load ptr, ptr %.reg2mem170, align 4
  %80 = getelementptr inbounds [400 x double], ptr %.reload179, i32 %.reload102, i32 %.reload204
  %81 = load double, ptr %80, align 8, !tbaa !2
  %.reload82 = load i32, ptr %.reg2mem77, align 4
  %.reload178 = load ptr, ptr %.reg2mem170, align 4
  %82 = getelementptr inbounds [400 x double], ptr %.reload178, i32 %.reload82, i32 %.reload204
  %83 = load double, ptr %82, align 8, !tbaa !2
  %84 = fneg double %81
  %85 = tail call double @llvm.fmuladd.f64(double %84, double %83, double %.reload206)
  store double %85, ptr %.reg2mem66, align 8
  %.reload69 = load double, ptr %.reg2mem66, align 8
  %.reload73 = load ptr, ptr %.reg2mem72, align 4
  store double %.reload69, ptr %.reload73, align 8, !tbaa !2
  %86 = add nuw nsw i32 %.reload204, 1
  store i32 %86, ptr %.reg2mem63, align 4
  %.reload65 = load i32, ptr %.reg2mem63, align 4
  %.reload81 = load i32, ptr %.reg2mem77, align 4
  %87 = icmp eq i32 %.reload65, %.reload81
  br i1 %87, label %._crit_edge15, label %._crit_edge16, !llvm.loop !18

._crit_edge16:                                    ; preds = %79
  %.reload64 = load i32, ptr %.reg2mem63, align 4
  %.reload68 = load double, ptr %.reg2mem66, align 8
  store i32 %.reload64, ptr %.reg2mem203, align 4
  store double %.reload68, ptr %.reg2mem205, align 8
  br label %79

._crit_edge15:                                    ; preds = %79
  %.reload67 = load double, ptr %.reg2mem66, align 8
  store double %.reload67, ptr %.reg2mem201, align 8
  br label %88

88:                                               ; preds = %._crit_edge15, %74
  %.reload202 = load double, ptr %.reg2mem201, align 8
  %.reload80 = load i32, ptr %.reg2mem77, align 4
  %.reload177 = load ptr, ptr %.reg2mem170, align 4
  %89 = getelementptr inbounds [400 x double], ptr %.reload177, i32 %.reload80, i32 %.reload80
  %90 = load double, ptr %89, align 8, !tbaa !2
  %.reload79 = load i32, ptr %.reg2mem77, align 4
  %.reload101 = load i32, ptr %.reg2mem94, align 4
  %.reload176 = load ptr, ptr %.reg2mem170, align 4
  %91 = getelementptr inbounds [400 x double], ptr %.reload176, i32 %.reload101, i32 %.reload79
  %92 = fdiv double %.reload202, %90
  store double %92, ptr %91, align 8, !tbaa !2
  %.reload78 = load i32, ptr %.reg2mem77, align 4
  %93 = add nuw nsw i32 %.reload78, 1
  store i32 %93, ptr %.reg2mem60, align 4
  %.reload62 = load i32, ptr %.reg2mem60, align 4
  %.reload100 = load i32, ptr %.reg2mem94, align 4
  %94 = icmp eq i32 %.reload62, %.reload100
  br i1 %94, label %69, label %._crit_edge17, !llvm.loop !19

._crit_edge17:                                    ; preds = %88
  %.reload61 = load i32, ptr %.reg2mem60, align 4
  store i32 %.reload61, ptr %.reg2mem207, align 4
  br label %72

95:                                               ; preds = %._crit_edge19, %69
  %.reload200 = load double, ptr %.reg2mem199, align 8
  %.reload198 = load i32, ptr %.reg2mem197, align 4
  %.reload98 = load i32, ptr %.reg2mem94, align 4
  %.reload174 = load ptr, ptr %.reg2mem170, align 4
  %96 = getelementptr inbounds [400 x double], ptr %.reload174, i32 %.reload98, i32 %.reload198
  %97 = load double, ptr %96, align 8, !tbaa !2
  %98 = fneg double %97
  %99 = tail call double @llvm.fmuladd.f64(double %98, double %97, double %.reload200)
  store double %99, ptr %.reg2mem56, align 8
  %.reload59 = load double, ptr %.reg2mem56, align 8
  %.reload88 = load ptr, ptr %.reg2mem87, align 4
  store double %.reload59, ptr %.reload88, align 8, !tbaa !2
  %100 = add nuw nsw i32 %.reload198, 1
  store i32 %100, ptr %.reg2mem53, align 4
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %.reload97 = load i32, ptr %.reg2mem94, align 4
  %101 = icmp eq i32 %.reload55, %.reload97
  br i1 %101, label %._crit_edge18, label %._crit_edge19, !llvm.loop !20

._crit_edge19:                                    ; preds = %95
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  %.reload58 = load double, ptr %.reg2mem56, align 8
  store i32 %.reload54, ptr %.reg2mem197, align 4
  store double %.reload58, ptr %.reg2mem199, align 8
  br label %95

._crit_edge18:                                    ; preds = %95
  %.reload57 = load double, ptr %.reg2mem56, align 8
  store double %.reload57, ptr %.reg2mem195, align 8
  br label %102

102:                                              ; preds = %._crit_edge18, %67
  %.reload196 = load double, ptr %.reg2mem195, align 8
  %.reload96 = load i32, ptr %.reg2mem94, align 4
  %.reload173 = load ptr, ptr %.reg2mem170, align 4
  %103 = getelementptr inbounds [400 x double], ptr %.reload173, i32 %.reload96, i32 %.reload96
  %104 = tail call double @sqrt(double noundef %.reload196) #3
  store double %104, ptr %103, align 8, !tbaa !2
  %.reload95 = load i32, ptr %.reg2mem94, align 4
  %105 = add nuw nsw i32 %.reload95, 1
  store i32 %105, ptr %.reg2mem50, align 4
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %106 = icmp eq i32 %.reload52, 400
  br i1 %106, label %107, label %._crit_edge20, !llvm.loop !21

._crit_edge20:                                    ; preds = %102
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  store i32 %.reload51, ptr %.reg2mem209, align 4
  br label %63

107:                                              ; preds = %102
  %108 = load ptr, ptr @stderr, align 4, !tbaa !22
  store ptr %108, ptr %.reg2mem43, align 4
  %.reload49 = load ptr, ptr %.reg2mem43, align 4
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload49, ptr noundef nonnull @.str) #3
  %.reload48 = load ptr, ptr %.reg2mem43, align 4
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload48, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem191, align 4
  store i32 1, ptr %.reg2mem193, align 4
  br label %111

111:                                              ; preds = %._crit_edge23, %107
  %.reload194 = load i32, ptr %.reg2mem193, align 4
  %.reload192 = load i32, ptr %.reg2mem191, align 4
  store i32 %.reload194, ptr %.reg2mem40, align 4
  store i32 %.reload192, ptr %.reg2mem36, align 4
  %.reload39 = load i32, ptr %.reg2mem36, align 4
  %112 = mul nuw nsw i32 %.reload39, 400
  store i32 %112, ptr %.reg2mem34, align 4
  store i32 0, ptr %.reg2mem189, align 4
  br label %113

113:                                              ; preds = %._crit_edge22, %111
  %.reload190 = load i32, ptr %.reg2mem189, align 4
  store i32 %.reload190, ptr %.reg2mem30, align 4
  %.reload33 = load i32, ptr %.reg2mem30, align 4
  %.reload35 = load i32, ptr %.reg2mem34, align 4
  %114 = add nuw nsw i32 %.reload33, %.reload35
  %115 = urem i32 %114, 20
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %._crit_edge21

._crit_edge21:                                    ; preds = %113
  br label %119

117:                                              ; preds = %113
  %.reload44 = load ptr, ptr %.reg2mem43, align 4
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload44, ptr noundef nonnull @.str.3) #3
  br label %119

119:                                              ; preds = %._crit_edge21, %117
  %.reload32 = load i32, ptr %.reg2mem30, align 4
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %.reload171 = load ptr, ptr %.reg2mem170, align 4
  %120 = getelementptr inbounds [400 x double], ptr %.reload171, i32 %.reload38, i32 %.reload32
  %121 = load double, ptr %120, align 8, !tbaa !2
  %.reload47 = load ptr, ptr %.reg2mem43, align 4
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload47, ptr noundef nonnull @.str.4, double noundef %121) #3
  %.reload31 = load i32, ptr %.reg2mem30, align 4
  %123 = add nuw nsw i32 %.reload31, 1
  store i32 %123, ptr %.reg2mem27, align 4
  %.reload29 = load i32, ptr %.reg2mem27, align 4
  %.reload42 = load i32, ptr %.reg2mem40, align 4
  %124 = icmp eq i32 %.reload29, %.reload42
  br i1 %124, label %125, label %._crit_edge22, !llvm.loop !24

._crit_edge22:                                    ; preds = %119
  %.reload28 = load i32, ptr %.reg2mem27, align 4
  store i32 %.reload28, ptr %.reg2mem189, align 4
  br label %113

125:                                              ; preds = %119
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  %126 = add nuw nsw i32 %.reload37, 1
  store i32 %126, ptr %.reg2mem24, align 4
  %.reload41 = load i32, ptr %.reg2mem40, align 4
  %127 = add nuw nsw i32 %.reload41, 1
  store i32 %127, ptr %.reg2mem, align 4
  %.reload26 = load i32, ptr %.reg2mem24, align 4
  %128 = icmp eq i32 %.reload26, 400
  br i1 %128, label %129, label %._crit_edge23, !llvm.loop !25

._crit_edge23:                                    ; preds = %125
  %.reload = load i32, ptr %.reg2mem, align 4
  %.reload25 = load i32, ptr %.reg2mem24, align 4
  store i32 %.reload25, ptr %.reg2mem191, align 4
  store i32 %.reload, ptr %.reg2mem193, align 4
  br label %111

129:                                              ; preds = %125
  %.reload46 = load ptr, ptr %.reg2mem43, align 4
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload46, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload45 = load ptr, ptr %.reg2mem43, align 4
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload45, ptr noundef nonnull @.str.6) #3
  %.reload188 = load ptr, ptr %.reg2mem170, align 4
  tail call void @free(ptr noundef nonnull %.reload188) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare double @sqrt(double noundef) local_unnamed_addr #1

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
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !4, i64 0}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !7, !8}
