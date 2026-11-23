; ModuleID = './polybench-output/wasm/no-phis/3mm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/3mm/3mm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem27 = alloca i32, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem34 = alloca i32, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem40 = alloca ptr, align 4
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem56 = alloca double, align 8
  %.reg2mem59 = alloca ptr, align 4
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem66 = alloca i32, align 4
  %.reg2mem70 = alloca i32, align 4
  %.reg2mem73 = alloca i32, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem79 = alloca double, align 8
  %.reg2mem82 = alloca ptr, align 4
  %.reg2mem85 = alloca i32, align 4
  %.reg2mem89 = alloca i32, align 4
  %.reg2mem93 = alloca i32, align 4
  %.reg2mem96 = alloca i32, align 4
  %.reg2mem99 = alloca i32, align 4
  %.reg2mem102 = alloca double, align 8
  %.reg2mem105 = alloca ptr, align 4
  %.reg2mem108 = alloca i32, align 4
  %.reg2mem112 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem122 = alloca i32, align 4
  %.reg2mem126 = alloca i32, align 4
  %.reg2mem129 = alloca i32, align 4
  %.reg2mem132 = alloca i32, align 4
  %.reg2mem136 = alloca i32, align 4
  %.reg2mem139 = alloca i32, align 4
  %.reg2mem143 = alloca i32, align 4
  %.reg2mem147 = alloca i32, align 4
  %.reg2mem150 = alloca i32, align 4
  %.reg2mem153 = alloca i32, align 4
  %.reg2mem157 = alloca ptr, align 4
  %.reg2mem161 = alloca ptr, align 4
  %.reg2mem165 = alloca ptr, align 4
  %.reg2mem169 = alloca ptr, align 4
  %.reg2mem173 = alloca ptr, align 4
  %.reg2mem177 = alloca ptr, align 4
  %.reg2mem181 = alloca ptr, align 4
  %.reg2mem185 = alloca i32, align 4
  %.reg2mem187 = alloca i32, align 4
  %.reg2mem189 = alloca double, align 8
  %.reg2mem191 = alloca i32, align 4
  %.reg2mem193 = alloca i32, align 4
  %.reg2mem195 = alloca i32, align 4
  %.reg2mem197 = alloca double, align 8
  %.reg2mem199 = alloca i32, align 4
  %.reg2mem201 = alloca i32, align 4
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 34200, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem181, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 36000, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem177, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 38000, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem173, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 39900, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem169, align 4
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 41800, i32 noundef 8) #3
  store ptr %7, ptr %.reg2mem165, align 4
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 46200, i32 noundef 8) #3
  store ptr %8, ptr %.reg2mem161, align 4
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 37800, i32 noundef 8) #3
  store ptr %9, ptr %.reg2mem157, align 4
  store i32 0, ptr %.reg2mem227, align 4
  br label %10

10:                                               ; preds = %._crit_edge2, %2
  %.reload228 = load i32, ptr %.reg2mem227, align 4
  store i32 %.reload228, ptr %.reg2mem153, align 4
  store i32 0, ptr %.reg2mem225, align 4
  br label %11

11:                                               ; preds = %._crit_edge, %10
  %.reload226 = load i32, ptr %.reg2mem225, align 4
  %.reload156 = load i32, ptr %.reg2mem153, align 4
  %12 = mul nuw nsw i32 %.reload226, %.reload156
  %13 = add nuw nsw i32 %12, 1
  %14 = urem i32 %13, 180
  %15 = uitofp nneg i32 %14 to double
  %16 = fdiv double %15, 9.000000e+02
  %.reload155 = load i32, ptr %.reg2mem153, align 4
  %.reload179 = load ptr, ptr %.reg2mem177, align 4
  %17 = getelementptr inbounds [200 x double], ptr %.reload179, i32 %.reload155, i32 %.reload226
  store double %16, ptr %17, align 8, !tbaa !2
  %18 = add nuw nsw i32 %.reload226, 1
  store i32 %18, ptr %.reg2mem150, align 4
  %.reload152 = load i32, ptr %.reg2mem150, align 4
  %19 = icmp eq i32 %.reload152, 200
  br i1 %19, label %20, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %11
  %.reload151 = load i32, ptr %.reg2mem150, align 4
  store i32 %.reload151, ptr %.reg2mem225, align 4
  br label %11

20:                                               ; preds = %11
  %.reload154 = load i32, ptr %.reg2mem153, align 4
  %21 = add nuw nsw i32 %.reload154, 1
  store i32 %21, ptr %.reg2mem147, align 4
  %.reload149 = load i32, ptr %.reg2mem147, align 4
  %22 = icmp eq i32 %.reload149, 180
  br i1 %22, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %20
  %.reload148 = load i32, ptr %.reg2mem147, align 4
  store i32 %.reload148, ptr %.reg2mem227, align 4
  br label %10

._crit_edge1:                                     ; preds = %20
  store i32 0, ptr %.reg2mem223, align 4
  br label %23

23:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload224 = load i32, ptr %.reg2mem223, align 4
  store i32 %.reload224, ptr %.reg2mem143, align 4
  store i32 0, ptr %.reg2mem221, align 4
  br label %24

24:                                               ; preds = %._crit_edge3, %23
  %.reload222 = load i32, ptr %.reg2mem221, align 4
  %25 = add nuw nsw i32 %.reload222, 1
  store i32 %25, ptr %.reg2mem139, align 4
  %.reload142 = load i32, ptr %.reg2mem139, align 4
  %.reload146 = load i32, ptr %.reg2mem143, align 4
  %26 = mul nuw nsw i32 %.reload142, %.reload146
  %27 = add nuw nsw i32 %26, 2
  %28 = urem i32 %27, 190
  %29 = uitofp nneg i32 %28 to double
  %30 = fdiv double %29, 9.500000e+02
  %.reload145 = load i32, ptr %.reg2mem143, align 4
  %.reload175 = load ptr, ptr %.reg2mem173, align 4
  %31 = getelementptr inbounds [190 x double], ptr %.reload175, i32 %.reload145, i32 %.reload222
  store double %30, ptr %31, align 8, !tbaa !2
  %.reload141 = load i32, ptr %.reg2mem139, align 4
  %32 = icmp eq i32 %.reload141, 190
  br i1 %32, label %33, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %24
  %.reload140 = load i32, ptr %.reg2mem139, align 4
  store i32 %.reload140, ptr %.reg2mem221, align 4
  br label %24

33:                                               ; preds = %24
  %.reload144 = load i32, ptr %.reg2mem143, align 4
  %34 = add nuw nsw i32 %.reload144, 1
  store i32 %34, ptr %.reg2mem136, align 4
  %.reload138 = load i32, ptr %.reg2mem136, align 4
  %35 = icmp eq i32 %.reload138, 200
  br i1 %35, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %33
  %.reload137 = load i32, ptr %.reg2mem136, align 4
  store i32 %.reload137, ptr %.reg2mem223, align 4
  br label %23

._crit_edge4:                                     ; preds = %33
  store i32 0, ptr %.reg2mem219, align 4
  br label %36

36:                                               ; preds = %._crit_edge8, %._crit_edge4
  %.reload220 = load i32, ptr %.reg2mem219, align 4
  store i32 %.reload220, ptr %.reg2mem132, align 4
  store i32 0, ptr %.reg2mem217, align 4
  br label %37

37:                                               ; preds = %._crit_edge6, %36
  %.reload218 = load i32, ptr %.reg2mem217, align 4
  %38 = add nuw nsw i32 %.reload218, 3
  %.reload135 = load i32, ptr %.reg2mem132, align 4
  %39 = mul nuw nsw i32 %38, %.reload135
  %40 = urem i32 %39, 210
  %41 = uitofp nneg i32 %40 to double
  %42 = fdiv double %41, 1.050000e+03
  %.reload134 = load i32, ptr %.reg2mem132, align 4
  %.reload167 = load ptr, ptr %.reg2mem165, align 4
  %43 = getelementptr inbounds [220 x double], ptr %.reload167, i32 %.reload134, i32 %.reload218
  store double %42, ptr %43, align 8, !tbaa !2
  %44 = add nuw nsw i32 %.reload218, 1
  store i32 %44, ptr %.reg2mem129, align 4
  %.reload131 = load i32, ptr %.reg2mem129, align 4
  %45 = icmp eq i32 %.reload131, 220
  br i1 %45, label %46, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %37
  %.reload130 = load i32, ptr %.reg2mem129, align 4
  store i32 %.reload130, ptr %.reg2mem217, align 4
  br label %37

46:                                               ; preds = %37
  %.reload133 = load i32, ptr %.reg2mem132, align 4
  %47 = add nuw nsw i32 %.reload133, 1
  store i32 %47, ptr %.reg2mem126, align 4
  %.reload128 = load i32, ptr %.reg2mem126, align 4
  %48 = icmp eq i32 %.reload128, 190
  br i1 %48, label %._crit_edge7, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %46
  %.reload127 = load i32, ptr %.reg2mem126, align 4
  store i32 %.reload127, ptr %.reg2mem219, align 4
  br label %36

._crit_edge7:                                     ; preds = %46
  store i32 0, ptr %.reg2mem215, align 4
  br label %49

49:                                               ; preds = %._crit_edge11, %._crit_edge7
  %.reload216 = load i32, ptr %.reg2mem215, align 4
  store i32 %.reload216, ptr %.reg2mem122, align 4
  store i32 0, ptr %.reg2mem213, align 4
  br label %50

50:                                               ; preds = %._crit_edge9, %49
  %.reload214 = load i32, ptr %.reg2mem213, align 4
  %51 = add nuw nsw i32 %.reload214, 2
  %.reload125 = load i32, ptr %.reg2mem122, align 4
  %52 = mul nuw nsw i32 %51, %.reload125
  %53 = add nuw nsw i32 %52, 2
  %54 = urem i32 %53, 200
  %55 = uitofp nneg i32 %54 to double
  %56 = fdiv double %55, 1.000000e+03
  %.reload124 = load i32, ptr %.reg2mem122, align 4
  %.reload163 = load ptr, ptr %.reg2mem161, align 4
  %57 = getelementptr inbounds [210 x double], ptr %.reload163, i32 %.reload124, i32 %.reload214
  store double %56, ptr %57, align 8, !tbaa !2
  %58 = add nuw nsw i32 %.reload214, 1
  store i32 %58, ptr %.reg2mem119, align 4
  %.reload121 = load i32, ptr %.reg2mem119, align 4
  %59 = icmp eq i32 %.reload121, 210
  br i1 %59, label %60, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %50
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  store i32 %.reload120, ptr %.reg2mem213, align 4
  br label %50

60:                                               ; preds = %50
  %.reload123 = load i32, ptr %.reg2mem122, align 4
  %61 = add nuw nsw i32 %.reload123, 1
  store i32 %61, ptr %.reg2mem116, align 4
  %.reload118 = load i32, ptr %.reg2mem116, align 4
  %62 = icmp eq i32 %.reload118, 220
  br i1 %62, label %._crit_edge10, label %._crit_edge11, !llvm.loop !15

._crit_edge11:                                    ; preds = %60
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  store i32 %.reload117, ptr %.reg2mem215, align 4
  br label %49

._crit_edge10:                                    ; preds = %60
  store i32 0, ptr %.reg2mem211, align 4
  br label %63

63:                                               ; preds = %._crit_edge15, %._crit_edge10
  %.reload212 = load i32, ptr %.reg2mem211, align 4
  store i32 %.reload212, ptr %.reg2mem112, align 4
  store i32 0, ptr %.reg2mem209, align 4
  br label %64

64:                                               ; preds = %._crit_edge13, %63
  %.reload210 = load i32, ptr %.reg2mem209, align 4
  store i32 %.reload210, ptr %.reg2mem108, align 4
  %.reload111 = load i32, ptr %.reg2mem108, align 4
  %.reload115 = load i32, ptr %.reg2mem112, align 4
  %.reload183 = load ptr, ptr %.reg2mem181, align 4
  %65 = getelementptr inbounds [190 x double], ptr %.reload183, i32 %.reload115, i32 %.reload111
  store ptr %65, ptr %.reg2mem105, align 4
  %.reload107 = load ptr, ptr %.reg2mem105, align 4
  store double 0.000000e+00, ptr %.reload107, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem205, align 8
  store i32 0, ptr %.reg2mem207, align 4
  br label %66

66:                                               ; preds = %._crit_edge12, %64
  %.reload208 = load i32, ptr %.reg2mem207, align 4
  %.reload206 = load double, ptr %.reg2mem205, align 8
  %.reload114 = load i32, ptr %.reg2mem112, align 4
  %.reload178 = load ptr, ptr %.reg2mem177, align 4
  %67 = getelementptr inbounds [200 x double], ptr %.reload178, i32 %.reload114, i32 %.reload208
  %68 = load double, ptr %67, align 8, !tbaa !2
  %.reload110 = load i32, ptr %.reg2mem108, align 4
  %.reload174 = load ptr, ptr %.reg2mem173, align 4
  %69 = getelementptr inbounds [190 x double], ptr %.reload174, i32 %.reload208, i32 %.reload110
  %70 = load double, ptr %69, align 8, !tbaa !2
  %71 = tail call double @llvm.fmuladd.f64(double %68, double %70, double %.reload206)
  store double %71, ptr %.reg2mem102, align 8
  %.reload104 = load double, ptr %.reg2mem102, align 8
  %.reload106 = load ptr, ptr %.reg2mem105, align 4
  store double %.reload104, ptr %.reload106, align 8, !tbaa !2
  %72 = add nuw nsw i32 %.reload208, 1
  store i32 %72, ptr %.reg2mem99, align 4
  %.reload101 = load i32, ptr %.reg2mem99, align 4
  %73 = icmp eq i32 %.reload101, 200
  br i1 %73, label %74, label %._crit_edge12, !llvm.loop !16

._crit_edge12:                                    ; preds = %66
  %.reload100 = load i32, ptr %.reg2mem99, align 4
  %.reload103 = load double, ptr %.reg2mem102, align 8
  store double %.reload103, ptr %.reg2mem205, align 8
  store i32 %.reload100, ptr %.reg2mem207, align 4
  br label %66

74:                                               ; preds = %66
  %.reload109 = load i32, ptr %.reg2mem108, align 4
  %75 = add nuw nsw i32 %.reload109, 1
  store i32 %75, ptr %.reg2mem96, align 4
  %.reload98 = load i32, ptr %.reg2mem96, align 4
  %76 = icmp eq i32 %.reload98, 190
  br i1 %76, label %77, label %._crit_edge13, !llvm.loop !17

._crit_edge13:                                    ; preds = %74
  %.reload97 = load i32, ptr %.reg2mem96, align 4
  store i32 %.reload97, ptr %.reg2mem209, align 4
  br label %64

77:                                               ; preds = %74
  %.reload113 = load i32, ptr %.reg2mem112, align 4
  %78 = add nuw nsw i32 %.reload113, 1
  store i32 %78, ptr %.reg2mem93, align 4
  %.reload95 = load i32, ptr %.reg2mem93, align 4
  %79 = icmp eq i32 %.reload95, 180
  br i1 %79, label %._crit_edge14, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %77
  %.reload94 = load i32, ptr %.reg2mem93, align 4
  store i32 %.reload94, ptr %.reg2mem211, align 4
  br label %63

._crit_edge14:                                    ; preds = %77
  store i32 0, ptr %.reg2mem203, align 4
  br label %80

80:                                               ; preds = %._crit_edge19, %._crit_edge14
  %.reload204 = load i32, ptr %.reg2mem203, align 4
  store i32 %.reload204, ptr %.reg2mem89, align 4
  store i32 0, ptr %.reg2mem201, align 4
  br label %81

81:                                               ; preds = %._crit_edge17, %80
  %.reload202 = load i32, ptr %.reg2mem201, align 4
  store i32 %.reload202, ptr %.reg2mem85, align 4
  %.reload88 = load i32, ptr %.reg2mem85, align 4
  %.reload92 = load i32, ptr %.reg2mem89, align 4
  %.reload171 = load ptr, ptr %.reg2mem169, align 4
  %82 = getelementptr inbounds [210 x double], ptr %.reload171, i32 %.reload92, i32 %.reload88
  store ptr %82, ptr %.reg2mem82, align 4
  %.reload84 = load ptr, ptr %.reg2mem82, align 4
  store double 0.000000e+00, ptr %.reload84, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem197, align 8
  store i32 0, ptr %.reg2mem199, align 4
  br label %83

83:                                               ; preds = %._crit_edge16, %81
  %.reload200 = load i32, ptr %.reg2mem199, align 4
  %.reload198 = load double, ptr %.reg2mem197, align 8
  %.reload91 = load i32, ptr %.reg2mem89, align 4
  %.reload166 = load ptr, ptr %.reg2mem165, align 4
  %84 = getelementptr inbounds [220 x double], ptr %.reload166, i32 %.reload91, i32 %.reload200
  %85 = load double, ptr %84, align 8, !tbaa !2
  %.reload87 = load i32, ptr %.reg2mem85, align 4
  %.reload162 = load ptr, ptr %.reg2mem161, align 4
  %86 = getelementptr inbounds [210 x double], ptr %.reload162, i32 %.reload200, i32 %.reload87
  %87 = load double, ptr %86, align 8, !tbaa !2
  %88 = tail call double @llvm.fmuladd.f64(double %85, double %87, double %.reload198)
  store double %88, ptr %.reg2mem79, align 8
  %.reload81 = load double, ptr %.reg2mem79, align 8
  %.reload83 = load ptr, ptr %.reg2mem82, align 4
  store double %.reload81, ptr %.reload83, align 8, !tbaa !2
  %89 = add nuw nsw i32 %.reload200, 1
  store i32 %89, ptr %.reg2mem76, align 4
  %.reload78 = load i32, ptr %.reg2mem76, align 4
  %90 = icmp eq i32 %.reload78, 220
  br i1 %90, label %91, label %._crit_edge16, !llvm.loop !19

._crit_edge16:                                    ; preds = %83
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  %.reload80 = load double, ptr %.reg2mem79, align 8
  store double %.reload80, ptr %.reg2mem197, align 8
  store i32 %.reload77, ptr %.reg2mem199, align 4
  br label %83

91:                                               ; preds = %83
  %.reload86 = load i32, ptr %.reg2mem85, align 4
  %92 = add nuw nsw i32 %.reload86, 1
  store i32 %92, ptr %.reg2mem73, align 4
  %.reload75 = load i32, ptr %.reg2mem73, align 4
  %93 = icmp eq i32 %.reload75, 210
  br i1 %93, label %94, label %._crit_edge17, !llvm.loop !20

._crit_edge17:                                    ; preds = %91
  %.reload74 = load i32, ptr %.reg2mem73, align 4
  store i32 %.reload74, ptr %.reg2mem201, align 4
  br label %81

94:                                               ; preds = %91
  %.reload90 = load i32, ptr %.reg2mem89, align 4
  %95 = add nuw nsw i32 %.reload90, 1
  store i32 %95, ptr %.reg2mem70, align 4
  %.reload72 = load i32, ptr %.reg2mem70, align 4
  %96 = icmp eq i32 %.reload72, 190
  br i1 %96, label %._crit_edge18, label %._crit_edge19, !llvm.loop !21

._crit_edge19:                                    ; preds = %94
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  store i32 %.reload71, ptr %.reg2mem203, align 4
  br label %80

._crit_edge18:                                    ; preds = %94
  store i32 0, ptr %.reg2mem195, align 4
  br label %97

97:                                               ; preds = %._crit_edge22, %._crit_edge18
  %.reload196 = load i32, ptr %.reg2mem195, align 4
  store i32 %.reload196, ptr %.reg2mem66, align 4
  store i32 0, ptr %.reg2mem193, align 4
  br label %98

98:                                               ; preds = %._crit_edge21, %97
  %.reload194 = load i32, ptr %.reg2mem193, align 4
  store i32 %.reload194, ptr %.reg2mem62, align 4
  %.reload65 = load i32, ptr %.reg2mem62, align 4
  %.reload69 = load i32, ptr %.reg2mem66, align 4
  %.reload159 = load ptr, ptr %.reg2mem157, align 4
  %99 = getelementptr inbounds [210 x double], ptr %.reload159, i32 %.reload69, i32 %.reload65
  store ptr %99, ptr %.reg2mem59, align 4
  %.reload61 = load ptr, ptr %.reg2mem59, align 4
  store double 0.000000e+00, ptr %.reload61, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem189, align 8
  store i32 0, ptr %.reg2mem191, align 4
  br label %100

100:                                              ; preds = %._crit_edge20, %98
  %.reload192 = load i32, ptr %.reg2mem191, align 4
  %.reload190 = load double, ptr %.reg2mem189, align 8
  %.reload68 = load i32, ptr %.reg2mem66, align 4
  %.reload182 = load ptr, ptr %.reg2mem181, align 4
  %101 = getelementptr inbounds [190 x double], ptr %.reload182, i32 %.reload68, i32 %.reload192
  %102 = load double, ptr %101, align 8, !tbaa !2
  %.reload64 = load i32, ptr %.reg2mem62, align 4
  %.reload170 = load ptr, ptr %.reg2mem169, align 4
  %103 = getelementptr inbounds [210 x double], ptr %.reload170, i32 %.reload192, i32 %.reload64
  %104 = load double, ptr %103, align 8, !tbaa !2
  %105 = tail call double @llvm.fmuladd.f64(double %102, double %104, double %.reload190)
  store double %105, ptr %.reg2mem56, align 8
  %.reload58 = load double, ptr %.reg2mem56, align 8
  %.reload60 = load ptr, ptr %.reg2mem59, align 4
  store double %.reload58, ptr %.reload60, align 8, !tbaa !2
  %106 = add nuw nsw i32 %.reload192, 1
  store i32 %106, ptr %.reg2mem53, align 4
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %107 = icmp eq i32 %.reload55, 190
  br i1 %107, label %108, label %._crit_edge20, !llvm.loop !22

._crit_edge20:                                    ; preds = %100
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  %.reload57 = load double, ptr %.reg2mem56, align 8
  store double %.reload57, ptr %.reg2mem189, align 8
  store i32 %.reload54, ptr %.reg2mem191, align 4
  br label %100

108:                                              ; preds = %100
  %.reload63 = load i32, ptr %.reg2mem62, align 4
  %109 = add nuw nsw i32 %.reload63, 1
  store i32 %109, ptr %.reg2mem50, align 4
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %110 = icmp eq i32 %.reload52, 210
  br i1 %110, label %111, label %._crit_edge21, !llvm.loop !23

._crit_edge21:                                    ; preds = %108
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  store i32 %.reload51, ptr %.reg2mem193, align 4
  br label %98

111:                                              ; preds = %108
  %.reload67 = load i32, ptr %.reg2mem66, align 4
  %112 = add nuw nsw i32 %.reload67, 1
  store i32 %112, ptr %.reg2mem47, align 4
  %.reload49 = load i32, ptr %.reg2mem47, align 4
  %113 = icmp eq i32 %.reload49, 180
  br i1 %113, label %114, label %._crit_edge22, !llvm.loop !24

._crit_edge22:                                    ; preds = %111
  %.reload48 = load i32, ptr %.reg2mem47, align 4
  store i32 %.reload48, ptr %.reg2mem195, align 4
  br label %97

114:                                              ; preds = %111
  %115 = load ptr, ptr @stderr, align 4, !tbaa !25
  store ptr %115, ptr %.reg2mem40, align 4
  %.reload46 = load ptr, ptr %.reg2mem40, align 4
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload46, ptr noundef nonnull @.str) #3
  %.reload45 = load ptr, ptr %.reg2mem40, align 4
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload45, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem187, align 4
  br label %118

118:                                              ; preds = %._crit_edge25, %114
  %.reload188 = load i32, ptr %.reg2mem187, align 4
  store i32 %.reload188, ptr %.reg2mem36, align 4
  %.reload39 = load i32, ptr %.reg2mem36, align 4
  %119 = mul nuw nsw i32 %.reload39, 180
  store i32 %119, ptr %.reg2mem34, align 4
  store i32 0, ptr %.reg2mem185, align 4
  br label %120

120:                                              ; preds = %._crit_edge24, %118
  %.reload186 = load i32, ptr %.reg2mem185, align 4
  store i32 %.reload186, ptr %.reg2mem30, align 4
  %.reload33 = load i32, ptr %.reg2mem30, align 4
  %.reload35 = load i32, ptr %.reg2mem34, align 4
  %121 = add nuw nsw i32 %.reload33, %.reload35
  %122 = urem i32 %121, 20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %._crit_edge23

._crit_edge23:                                    ; preds = %120
  br label %126

124:                                              ; preds = %120
  %.reload41 = load ptr, ptr %.reg2mem40, align 4
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload41, ptr noundef nonnull @.str.3) #3
  br label %126

126:                                              ; preds = %._crit_edge23, %124
  %.reload32 = load i32, ptr %.reg2mem30, align 4
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %.reload158 = load ptr, ptr %.reg2mem157, align 4
  %127 = getelementptr inbounds [210 x double], ptr %.reload158, i32 %.reload38, i32 %.reload32
  %128 = load double, ptr %127, align 8, !tbaa !2
  %.reload44 = load ptr, ptr %.reg2mem40, align 4
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload44, ptr noundef nonnull @.str.4, double noundef %128) #3
  %.reload31 = load i32, ptr %.reg2mem30, align 4
  %130 = add nuw nsw i32 %.reload31, 1
  store i32 %130, ptr %.reg2mem27, align 4
  %.reload29 = load i32, ptr %.reg2mem27, align 4
  %131 = icmp eq i32 %.reload29, 210
  br i1 %131, label %132, label %._crit_edge24, !llvm.loop !27

._crit_edge24:                                    ; preds = %126
  %.reload28 = load i32, ptr %.reg2mem27, align 4
  store i32 %.reload28, ptr %.reg2mem185, align 4
  br label %120

132:                                              ; preds = %126
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  %133 = add nuw nsw i32 %.reload37, 1
  store i32 %133, ptr %.reg2mem, align 4
  %.reload26 = load i32, ptr %.reg2mem, align 4
  %134 = icmp eq i32 %.reload26, 180
  br i1 %134, label %135, label %._crit_edge25, !llvm.loop !28

._crit_edge25:                                    ; preds = %132
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem187, align 4
  br label %118

135:                                              ; preds = %132
  %.reload43 = load ptr, ptr %.reg2mem40, align 4
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload43, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload42 = load ptr, ptr %.reg2mem40, align 4
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload42, ptr noundef nonnull @.str.6) #3
  %.reload184 = load ptr, ptr %.reg2mem181, align 4
  tail call void @free(ptr noundef %.reload184) #3
  %.reload180 = load ptr, ptr %.reg2mem177, align 4
  tail call void @free(ptr noundef %.reload180) #3
  %.reload176 = load ptr, ptr %.reg2mem173, align 4
  tail call void @free(ptr noundef %.reload176) #3
  %.reload172 = load ptr, ptr %.reg2mem169, align 4
  tail call void @free(ptr noundef %.reload172) #3
  %.reload168 = load ptr, ptr %.reg2mem165, align 4
  tail call void @free(ptr noundef %.reload168) #3
  %.reload164 = load ptr, ptr %.reg2mem161, align 4
  tail call void @free(ptr noundef %.reload164) #3
  %.reload160 = load ptr, ptr %.reg2mem157, align 4
  tail call void @free(ptr noundef nonnull %.reload160) #3
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
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7, !8}
!24 = distinct !{!24, !7, !8}
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !4, i64 0}
!27 = distinct !{!27, !7, !8}
!28 = distinct !{!28, !7, !8}
