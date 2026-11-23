; ModuleID = './polybench-output/wasm/no-phis/deriche.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/medley/deriche/deriche.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem29 = alloca i32, align 4
  %.reg2mem31 = alloca i32, align 4
  %.reg2mem35 = alloca ptr, align 4
  %.reg2mem42 = alloca i32, align 4
  %.reg2mem45 = alloca i32, align 4
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem58 = alloca float, align 4
  %.reg2mem60 = alloca float, align 4
  %.reg2mem63 = alloca float, align 4
  %.reg2mem66 = alloca float, align 4
  %.reg2mem69 = alloca i32, align 4
  %.reg2mem73 = alloca i32, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem79 = alloca float, align 4
  %.reg2mem81 = alloca float, align 4
  %.reg2mem84 = alloca float, align 4
  %.reg2mem87 = alloca i32, align 4
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem94 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %.reg2mem102 = alloca i32, align 4
  %.reg2mem105 = alloca i32, align 4
  %.reg2mem107 = alloca float, align 4
  %.reg2mem109 = alloca float, align 4
  %.reg2mem112 = alloca float, align 4
  %.reg2mem115 = alloca float, align 4
  %.reg2mem118 = alloca i32, align 4
  %.reg2mem122 = alloca float, align 4
  %.reg2mem125 = alloca float, align 4
  %.reg2mem128 = alloca i32, align 4
  %.reg2mem131 = alloca i32, align 4
  %.reg2mem134 = alloca float, align 4
  %.reg2mem136 = alloca float, align 4
  %.reg2mem139 = alloca float, align 4
  %.reg2mem142 = alloca i32, align 4
  %.reg2mem146 = alloca float, align 4
  %.reg2mem151 = alloca float, align 4
  %.reg2mem156 = alloca float, align 4
  %.reg2mem158 = alloca float, align 4
  %.reg2mem160 = alloca float, align 4
  %.reg2mem163 = alloca float, align 4
  %.reg2mem169 = alloca i32, align 4
  %.reg2mem172 = alloca i32, align 4
  %.reg2mem175 = alloca i32, align 4
  %.reg2mem177 = alloca i32, align 4
  %.reg2mem181 = alloca ptr, align 4
  %.reg2mem187 = alloca ptr, align 4
  %.reg2mem193 = alloca ptr, align 4
  %.reg2mem200 = alloca ptr, align 4
  %.reg2mem205 = alloca i32, align 4
  %.reg2mem207 = alloca i32, align 4
  %.reg2mem209 = alloca i32, align 4
  %.reg2mem211 = alloca i32, align 4
  %.reg2mem213 = alloca float, align 4
  %.reg2mem215 = alloca float, align 4
  %.reg2mem217 = alloca float, align 4
  %.reg2mem219 = alloca float, align 4
  %.reg2mem221 = alloca i32, align 4
  %.reg2mem223 = alloca i32, align 4
  %.reg2mem225 = alloca float, align 4
  %.reg2mem227 = alloca float, align 4
  %.reg2mem229 = alloca float, align 4
  %.reg2mem231 = alloca i32, align 4
  %.reg2mem233 = alloca i32, align 4
  %.reg2mem235 = alloca i32, align 4
  %.reg2mem237 = alloca i32, align 4
  %.reg2mem239 = alloca float, align 4
  %.reg2mem241 = alloca float, align 4
  %.reg2mem243 = alloca float, align 4
  %.reg2mem245 = alloca float, align 4
  %.reg2mem247 = alloca i32, align 4
  %.reg2mem249 = alloca i32, align 4
  %.reg2mem251 = alloca float, align 4
  %.reg2mem253 = alloca float, align 4
  %.reg2mem255 = alloca float, align 4
  %.reg2mem257 = alloca i32, align 4
  %.reg2mem259 = alloca i32, align 4
  %.reg2mem261 = alloca i32, align 4
  %.reg2mem263 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 345600, i32 noundef 4) #3
  store ptr %3, ptr %.reg2mem200, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 345600, i32 noundef 4) #3
  store ptr %4, ptr %.reg2mem193, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 345600, i32 noundef 4) #3
  store ptr %5, ptr %.reg2mem187, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 345600, i32 noundef 4) #3
  store ptr %6, ptr %.reg2mem181, align 4
  store i32 0, ptr %.reg2mem263, align 4
  br label %7

7:                                                ; preds = %._crit_edge1, %2
  %.reload264 = load i32, ptr %.reg2mem263, align 4
  store i32 %.reload264, ptr %.reg2mem177, align 4
  %.reload180 = load i32, ptr %.reg2mem177, align 4
  %8 = mul nuw nsw i32 %.reload180, 313
  store i32 %8, ptr %.reg2mem175, align 4
  store i32 0, ptr %.reg2mem261, align 4
  br label %9

9:                                                ; preds = %._crit_edge, %7
  %.reload262 = load i32, ptr %.reg2mem261, align 4
  %10 = mul nuw nsw i32 %.reload262, 991
  %.reload176 = load i32, ptr %.reg2mem175, align 4
  %11 = add nuw nsw i32 %10, %.reload176
  %12 = and i32 %11, 65535
  %13 = uitofp nneg i32 %12 to float
  %14 = fdiv float %13, 6.553500e+04
  %.reload179 = load i32, ptr %.reg2mem177, align 4
  %.reload203 = load ptr, ptr %.reg2mem200, align 4
  %15 = getelementptr inbounds [480 x float], ptr %.reload203, i32 %.reload179, i32 %.reload262
  store float %14, ptr %15, align 4, !tbaa !2
  %16 = add nuw nsw i32 %.reload262, 1
  store i32 %16, ptr %.reg2mem172, align 4
  %.reload174 = load i32, ptr %.reg2mem172, align 4
  %17 = icmp eq i32 %.reload174, 480
  br i1 %17, label %18, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %9
  %.reload173 = load i32, ptr %.reg2mem172, align 4
  store i32 %.reload173, ptr %.reg2mem261, align 4
  br label %9

18:                                               ; preds = %9
  %.reload178 = load i32, ptr %.reg2mem177, align 4
  %19 = add nuw nsw i32 %.reload178, 1
  store i32 %19, ptr %.reg2mem169, align 4
  %.reload171 = load i32, ptr %.reg2mem169, align 4
  %20 = icmp eq i32 %.reload171, 720
  br i1 %20, label %21, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %18
  %.reload170 = load i32, ptr %.reg2mem169, align 4
  store i32 %.reload170, ptr %.reg2mem263, align 4
  br label %7

21:                                               ; preds = %18
  %22 = tail call float @expf(float noundef -2.500000e-01) #3
  %23 = fsub float 1.000000e+00, %22
  %24 = tail call float @expf(float noundef -2.500000e-01) #3
  %25 = fsub float 1.000000e+00, %24
  %26 = fmul float %23, %25
  %27 = tail call float @expf(float noundef -2.500000e-01) #3
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 5.000000e-01, float 1.000000e+00)
  %29 = tail call float @expf(float noundef 5.000000e-01) #3
  %30 = fsub float %28, %29
  %31 = fdiv float %26, %30
  store float %31, ptr %.reg2mem163, align 4
  %32 = tail call float @expf(float noundef -2.500000e-01) #3
  %.reload168 = load float, ptr %.reg2mem163, align 4
  %33 = fmul float %32, %.reload168
  %34 = fmul float %33, -7.500000e-01
  store float %34, ptr %.reg2mem160, align 4
  %35 = tail call float @expf(float noundef -2.500000e-01) #3
  %.reload167 = load float, ptr %.reg2mem163, align 4
  %36 = fmul float %.reload167, %35
  store float %36, ptr %.reg2mem158, align 4
  %37 = tail call float @expf(float noundef -5.000000e-01) #3
  store float %37, ptr %.reg2mem156, align 4
  %38 = tail call float @powf(float noundef 2.000000e+00, float noundef -2.500000e-01) #3
  store float %38, ptr %.reg2mem151, align 4
  %39 = tail call float @expf(float noundef -5.000000e-01) #3
  %40 = fneg float %39
  store float %40, ptr %.reg2mem146, align 4
  store i32 0, ptr %.reg2mem259, align 4
  br label %41

41:                                               ; preds = %._crit_edge3, %21
  %.reload260 = load i32, ptr %.reg2mem259, align 4
  store i32 %.reload260, ptr %.reg2mem142, align 4
  store float 0.000000e+00, ptr %.reg2mem251, align 4
  store float 0.000000e+00, ptr %.reg2mem253, align 4
  store float 0.000000e+00, ptr %.reg2mem255, align 4
  store i32 0, ptr %.reg2mem257, align 4
  br label %42

42:                                               ; preds = %._crit_edge2, %41
  %.reload258 = load i32, ptr %.reg2mem257, align 4
  %.reload256 = load float, ptr %.reg2mem255, align 4
  %.reload254 = load float, ptr %.reg2mem253, align 4
  %.reload252 = load float, ptr %.reg2mem251, align 4
  store float %.reload254, ptr %.reg2mem139, align 4
  %.reload145 = load i32, ptr %.reg2mem142, align 4
  %.reload202 = load ptr, ptr %.reg2mem200, align 4
  %43 = getelementptr inbounds [480 x float], ptr %.reload202, i32 %.reload145, i32 %.reload258
  %44 = load float, ptr %43, align 4, !tbaa !2
  %.reload162 = load float, ptr %.reg2mem160, align 4
  %45 = fmul float %.reload162, %.reload256
  %.reload166 = load float, ptr %.reg2mem163, align 4
  %46 = tail call float @llvm.fmuladd.f32(float %.reload166, float %44, float %45)
  %.reload141 = load float, ptr %.reg2mem139, align 4
  %.reload155 = load float, ptr %.reg2mem151, align 4
  %47 = tail call float @llvm.fmuladd.f32(float %.reload155, float %.reload141, float %46)
  %.reload150 = load float, ptr %.reg2mem146, align 4
  %48 = tail call float @llvm.fmuladd.f32(float %.reload150, float %.reload252, float %47)
  store float %48, ptr %.reg2mem136, align 4
  %.reload144 = load i32, ptr %.reg2mem142, align 4
  %.reload191 = load ptr, ptr %.reg2mem187, align 4
  %49 = getelementptr inbounds [480 x float], ptr %.reload191, i32 %.reload144, i32 %.reload258
  %.reload138 = load float, ptr %.reg2mem136, align 4
  store float %.reload138, ptr %49, align 4, !tbaa !2
  %50 = load float, ptr %43, align 4, !tbaa !2
  store float %50, ptr %.reg2mem134, align 4
  %51 = add nuw nsw i32 %.reload258, 1
  store i32 %51, ptr %.reg2mem131, align 4
  %.reload133 = load i32, ptr %.reg2mem131, align 4
  %52 = icmp eq i32 %.reload133, 480
  br i1 %52, label %53, label %._crit_edge2, !llvm.loop !10

._crit_edge2:                                     ; preds = %42
  %.reload132 = load i32, ptr %.reg2mem131, align 4
  %.reload135 = load float, ptr %.reg2mem134, align 4
  %.reload137 = load float, ptr %.reg2mem136, align 4
  %.reload140 = load float, ptr %.reg2mem139, align 4
  store float %.reload140, ptr %.reg2mem251, align 4
  store float %.reload137, ptr %.reg2mem253, align 4
  store float %.reload135, ptr %.reg2mem255, align 4
  store i32 %.reload132, ptr %.reg2mem257, align 4
  br label %42

53:                                               ; preds = %42
  %.reload143 = load i32, ptr %.reg2mem142, align 4
  %54 = add nuw nsw i32 %.reload143, 1
  store i32 %54, ptr %.reg2mem128, align 4
  %.reload130 = load i32, ptr %.reg2mem128, align 4
  %55 = icmp eq i32 %.reload130, 720
  br i1 %55, label %56, label %._crit_edge3, !llvm.loop !11

._crit_edge3:                                     ; preds = %53
  %.reload129 = load i32, ptr %.reg2mem128, align 4
  store i32 %.reload129, ptr %.reg2mem259, align 4
  br label %41

56:                                               ; preds = %53
  %.reload159 = load float, ptr %.reg2mem158, align 4
  %57 = fmul float %.reload159, 1.250000e+00
  store float %57, ptr %.reg2mem125, align 4
  %.reload165 = load float, ptr %.reg2mem163, align 4
  %58 = fneg float %.reload165
  %.reload157 = load float, ptr %.reg2mem156, align 4
  %59 = fmul float %.reload157, %58
  store float %59, ptr %.reg2mem122, align 4
  store i32 0, ptr %.reg2mem249, align 4
  br label %60

60:                                               ; preds = %._crit_edge6, %56
  %.reload250 = load i32, ptr %.reg2mem249, align 4
  store i32 %.reload250, ptr %.reg2mem118, align 4
  store float 0.000000e+00, ptr %.reg2mem239, align 4
  store float 0.000000e+00, ptr %.reg2mem241, align 4
  store float 0.000000e+00, ptr %.reg2mem243, align 4
  store float 0.000000e+00, ptr %.reg2mem245, align 4
  store i32 479, ptr %.reg2mem247, align 4
  br label %61

61:                                               ; preds = %._crit_edge4, %60
  %.reload248 = load i32, ptr %.reg2mem247, align 4
  %.reload246 = load float, ptr %.reg2mem245, align 4
  %.reload244 = load float, ptr %.reg2mem243, align 4
  %.reload242 = load float, ptr %.reg2mem241, align 4
  %.reload240 = load float, ptr %.reg2mem239, align 4
  store float %.reload246, ptr %.reg2mem115, align 4
  store float %.reload242, ptr %.reg2mem112, align 4
  %.reload124 = load float, ptr %.reg2mem122, align 4
  %62 = fmul float %.reload124, %.reload244
  %.reload117 = load float, ptr %.reg2mem115, align 4
  %.reload127 = load float, ptr %.reg2mem125, align 4
  %63 = tail call float @llvm.fmuladd.f32(float %.reload127, float %.reload117, float %62)
  %.reload114 = load float, ptr %.reg2mem112, align 4
  %.reload154 = load float, ptr %.reg2mem151, align 4
  %64 = tail call float @llvm.fmuladd.f32(float %.reload154, float %.reload114, float %63)
  %.reload149 = load float, ptr %.reg2mem146, align 4
  %65 = tail call float @llvm.fmuladd.f32(float %.reload149, float %.reload240, float %64)
  store float %65, ptr %.reg2mem109, align 4
  %.reload121 = load i32, ptr %.reg2mem118, align 4
  %.reload185 = load ptr, ptr %.reg2mem181, align 4
  %66 = getelementptr inbounds [480 x float], ptr %.reload185, i32 %.reload121, i32 %.reload248
  %.reload111 = load float, ptr %.reg2mem109, align 4
  store float %.reload111, ptr %66, align 4, !tbaa !2
  %.reload120 = load i32, ptr %.reg2mem118, align 4
  %.reload201 = load ptr, ptr %.reg2mem200, align 4
  %67 = getelementptr inbounds [480 x float], ptr %.reload201, i32 %.reload120, i32 %.reload248
  %68 = load float, ptr %67, align 4, !tbaa !2
  store float %68, ptr %.reg2mem107, align 4
  %69 = add nsw i32 %.reload248, -1
  store i32 %69, ptr %.reg2mem105, align 4
  %70 = icmp eq i32 %.reload248, 0
  br i1 %70, label %71, label %._crit_edge4, !llvm.loop !12

._crit_edge4:                                     ; preds = %61
  %.reload106 = load i32, ptr %.reg2mem105, align 4
  %.reload108 = load float, ptr %.reg2mem107, align 4
  %.reload110 = load float, ptr %.reg2mem109, align 4
  %.reload113 = load float, ptr %.reg2mem112, align 4
  %.reload116 = load float, ptr %.reg2mem115, align 4
  store float %.reload113, ptr %.reg2mem239, align 4
  store float %.reload110, ptr %.reg2mem241, align 4
  store float %.reload116, ptr %.reg2mem243, align 4
  store float %.reload108, ptr %.reg2mem245, align 4
  store i32 %.reload106, ptr %.reg2mem247, align 4
  br label %61

71:                                               ; preds = %61
  %.reload119 = load i32, ptr %.reg2mem118, align 4
  %72 = add nuw nsw i32 %.reload119, 1
  store i32 %72, ptr %.reg2mem102, align 4
  %.reload104 = load i32, ptr %.reg2mem102, align 4
  %73 = icmp eq i32 %.reload104, 720
  br i1 %73, label %._crit_edge5, label %._crit_edge6, !llvm.loop !13

._crit_edge6:                                     ; preds = %71
  %.reload103 = load i32, ptr %.reg2mem102, align 4
  store i32 %.reload103, ptr %.reg2mem249, align 4
  br label %60

._crit_edge5:                                     ; preds = %71
  store i32 0, ptr %.reg2mem237, align 4
  br label %74

74:                                               ; preds = %._crit_edge9, %._crit_edge5
  %.reload238 = load i32, ptr %.reg2mem237, align 4
  store i32 %.reload238, ptr %.reg2mem97, align 4
  store i32 0, ptr %.reg2mem235, align 4
  br label %75

75:                                               ; preds = %._crit_edge7, %74
  %.reload236 = load i32, ptr %.reg2mem235, align 4
  %.reload101 = load i32, ptr %.reg2mem97, align 4
  %.reload190 = load ptr, ptr %.reg2mem187, align 4
  %76 = getelementptr inbounds [480 x float], ptr %.reload190, i32 %.reload101, i32 %.reload236
  %77 = load float, ptr %76, align 4, !tbaa !2
  %.reload100 = load i32, ptr %.reg2mem97, align 4
  %.reload184 = load ptr, ptr %.reg2mem181, align 4
  %78 = getelementptr inbounds [480 x float], ptr %.reload184, i32 %.reload100, i32 %.reload236
  %79 = load float, ptr %78, align 4, !tbaa !2
  %80 = fadd float %77, %79
  %.reload99 = load i32, ptr %.reg2mem97, align 4
  %.reload198 = load ptr, ptr %.reg2mem193, align 4
  %81 = getelementptr inbounds [480 x float], ptr %.reload198, i32 %.reload99, i32 %.reload236
  store float %80, ptr %81, align 4, !tbaa !2
  %82 = add nuw nsw i32 %.reload236, 1
  store i32 %82, ptr %.reg2mem94, align 4
  %.reload96 = load i32, ptr %.reg2mem94, align 4
  %83 = icmp eq i32 %.reload96, 480
  br i1 %83, label %84, label %._crit_edge7, !llvm.loop !14

._crit_edge7:                                     ; preds = %75
  %.reload95 = load i32, ptr %.reg2mem94, align 4
  store i32 %.reload95, ptr %.reg2mem235, align 4
  br label %75

84:                                               ; preds = %75
  %.reload98 = load i32, ptr %.reg2mem97, align 4
  %85 = add nuw nsw i32 %.reload98, 1
  store i32 %85, ptr %.reg2mem91, align 4
  %.reload93 = load i32, ptr %.reg2mem91, align 4
  %86 = icmp eq i32 %.reload93, 720
  br i1 %86, label %._crit_edge8, label %._crit_edge9, !llvm.loop !15

._crit_edge9:                                     ; preds = %84
  %.reload92 = load i32, ptr %.reg2mem91, align 4
  store i32 %.reload92, ptr %.reg2mem237, align 4
  br label %74

._crit_edge8:                                     ; preds = %84
  store i32 0, ptr %.reg2mem233, align 4
  br label %87

87:                                               ; preds = %._crit_edge12, %._crit_edge8
  %.reload234 = load i32, ptr %.reg2mem233, align 4
  store i32 %.reload234, ptr %.reg2mem87, align 4
  store float 0.000000e+00, ptr %.reg2mem225, align 4
  store float 0.000000e+00, ptr %.reg2mem227, align 4
  store float 0.000000e+00, ptr %.reg2mem229, align 4
  store i32 0, ptr %.reg2mem231, align 4
  br label %88

88:                                               ; preds = %._crit_edge10, %87
  %.reload232 = load i32, ptr %.reg2mem231, align 4
  %.reload230 = load float, ptr %.reg2mem229, align 4
  %.reload228 = load float, ptr %.reg2mem227, align 4
  %.reload226 = load float, ptr %.reg2mem225, align 4
  store float %.reload228, ptr %.reg2mem84, align 4
  %.reload90 = load i32, ptr %.reg2mem87, align 4
  %.reload197 = load ptr, ptr %.reg2mem193, align 4
  %89 = getelementptr inbounds [480 x float], ptr %.reload197, i32 %.reload232, i32 %.reload90
  %90 = load float, ptr %89, align 4, !tbaa !2
  %.reload161 = load float, ptr %.reg2mem160, align 4
  %91 = fmul float %.reload161, %.reload230
  %.reload164 = load float, ptr %.reg2mem163, align 4
  %92 = tail call float @llvm.fmuladd.f32(float %.reload164, float %90, float %91)
  %.reload86 = load float, ptr %.reg2mem84, align 4
  %.reload153 = load float, ptr %.reg2mem151, align 4
  %93 = tail call float @llvm.fmuladd.f32(float %.reload153, float %.reload86, float %92)
  %.reload148 = load float, ptr %.reg2mem146, align 4
  %94 = tail call float @llvm.fmuladd.f32(float %.reload148, float %.reload226, float %93)
  store float %94, ptr %.reg2mem81, align 4
  %.reload89 = load i32, ptr %.reg2mem87, align 4
  %.reload189 = load ptr, ptr %.reg2mem187, align 4
  %95 = getelementptr inbounds [480 x float], ptr %.reload189, i32 %.reload232, i32 %.reload89
  %.reload83 = load float, ptr %.reg2mem81, align 4
  store float %.reload83, ptr %95, align 4, !tbaa !2
  %96 = load float, ptr %89, align 4, !tbaa !2
  store float %96, ptr %.reg2mem79, align 4
  %97 = add nuw nsw i32 %.reload232, 1
  store i32 %97, ptr %.reg2mem76, align 4
  %.reload78 = load i32, ptr %.reg2mem76, align 4
  %98 = icmp eq i32 %.reload78, 720
  br i1 %98, label %99, label %._crit_edge10, !llvm.loop !16

._crit_edge10:                                    ; preds = %88
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  %.reload80 = load float, ptr %.reg2mem79, align 4
  %.reload82 = load float, ptr %.reg2mem81, align 4
  %.reload85 = load float, ptr %.reg2mem84, align 4
  store float %.reload85, ptr %.reg2mem225, align 4
  store float %.reload82, ptr %.reg2mem227, align 4
  store float %.reload80, ptr %.reg2mem229, align 4
  store i32 %.reload77, ptr %.reg2mem231, align 4
  br label %88

99:                                               ; preds = %88
  %.reload88 = load i32, ptr %.reg2mem87, align 4
  %100 = add nuw nsw i32 %.reload88, 1
  store i32 %100, ptr %.reg2mem73, align 4
  %.reload75 = load i32, ptr %.reg2mem73, align 4
  %101 = icmp eq i32 %.reload75, 480
  br i1 %101, label %._crit_edge11, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %99
  %.reload74 = load i32, ptr %.reg2mem73, align 4
  store i32 %.reload74, ptr %.reg2mem233, align 4
  br label %87

._crit_edge11:                                    ; preds = %99
  store i32 0, ptr %.reg2mem223, align 4
  br label %102

102:                                              ; preds = %._crit_edge15, %._crit_edge11
  %.reload224 = load i32, ptr %.reg2mem223, align 4
  store i32 %.reload224, ptr %.reg2mem69, align 4
  store float 0.000000e+00, ptr %.reg2mem213, align 4
  store float 0.000000e+00, ptr %.reg2mem215, align 4
  store float 0.000000e+00, ptr %.reg2mem217, align 4
  store float 0.000000e+00, ptr %.reg2mem219, align 4
  store i32 719, ptr %.reg2mem221, align 4
  br label %103

103:                                              ; preds = %._crit_edge13, %102
  %.reload222 = load i32, ptr %.reg2mem221, align 4
  %.reload220 = load float, ptr %.reg2mem219, align 4
  %.reload218 = load float, ptr %.reg2mem217, align 4
  %.reload216 = load float, ptr %.reg2mem215, align 4
  %.reload214 = load float, ptr %.reg2mem213, align 4
  store float %.reload220, ptr %.reg2mem66, align 4
  store float %.reload216, ptr %.reg2mem63, align 4
  %.reload123 = load float, ptr %.reg2mem122, align 4
  %104 = fmul float %.reload123, %.reload218
  %.reload68 = load float, ptr %.reg2mem66, align 4
  %.reload126 = load float, ptr %.reg2mem125, align 4
  %105 = tail call float @llvm.fmuladd.f32(float %.reload126, float %.reload68, float %104)
  %.reload65 = load float, ptr %.reg2mem63, align 4
  %.reload152 = load float, ptr %.reg2mem151, align 4
  %106 = tail call float @llvm.fmuladd.f32(float %.reload152, float %.reload65, float %105)
  %.reload147 = load float, ptr %.reg2mem146, align 4
  %107 = tail call float @llvm.fmuladd.f32(float %.reload147, float %.reload214, float %106)
  store float %107, ptr %.reg2mem60, align 4
  %.reload72 = load i32, ptr %.reg2mem69, align 4
  %.reload183 = load ptr, ptr %.reg2mem181, align 4
  %108 = getelementptr inbounds [480 x float], ptr %.reload183, i32 %.reload222, i32 %.reload72
  %.reload62 = load float, ptr %.reg2mem60, align 4
  store float %.reload62, ptr %108, align 4, !tbaa !2
  %.reload71 = load i32, ptr %.reg2mem69, align 4
  %.reload196 = load ptr, ptr %.reg2mem193, align 4
  %109 = getelementptr inbounds [480 x float], ptr %.reload196, i32 %.reload222, i32 %.reload71
  %110 = load float, ptr %109, align 4, !tbaa !2
  store float %110, ptr %.reg2mem58, align 4
  %111 = add nsw i32 %.reload222, -1
  store i32 %111, ptr %.reg2mem56, align 4
  %112 = icmp eq i32 %.reload222, 0
  br i1 %112, label %113, label %._crit_edge13, !llvm.loop !18

._crit_edge13:                                    ; preds = %103
  %.reload57 = load i32, ptr %.reg2mem56, align 4
  %.reload59 = load float, ptr %.reg2mem58, align 4
  %.reload61 = load float, ptr %.reg2mem60, align 4
  %.reload64 = load float, ptr %.reg2mem63, align 4
  %.reload67 = load float, ptr %.reg2mem66, align 4
  store float %.reload64, ptr %.reg2mem213, align 4
  store float %.reload61, ptr %.reg2mem215, align 4
  store float %.reload67, ptr %.reg2mem217, align 4
  store float %.reload59, ptr %.reg2mem219, align 4
  store i32 %.reload57, ptr %.reg2mem221, align 4
  br label %103

113:                                              ; preds = %103
  %.reload70 = load i32, ptr %.reg2mem69, align 4
  %114 = add nuw nsw i32 %.reload70, 1
  store i32 %114, ptr %.reg2mem53, align 4
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %115 = icmp eq i32 %.reload55, 480
  br i1 %115, label %._crit_edge14, label %._crit_edge15, !llvm.loop !19

._crit_edge15:                                    ; preds = %113
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  store i32 %.reload54, ptr %.reg2mem223, align 4
  br label %102

._crit_edge14:                                    ; preds = %113
  store i32 0, ptr %.reg2mem211, align 4
  br label %116

116:                                              ; preds = %._crit_edge17, %._crit_edge14
  %.reload212 = load i32, ptr %.reg2mem211, align 4
  store i32 %.reload212, ptr %.reg2mem48, align 4
  store i32 0, ptr %.reg2mem209, align 4
  br label %117

117:                                              ; preds = %._crit_edge16, %116
  %.reload210 = load i32, ptr %.reg2mem209, align 4
  %.reload52 = load i32, ptr %.reg2mem48, align 4
  %.reload188 = load ptr, ptr %.reg2mem187, align 4
  %118 = getelementptr inbounds [480 x float], ptr %.reload188, i32 %.reload52, i32 %.reload210
  %119 = load float, ptr %118, align 4, !tbaa !2
  %.reload51 = load i32, ptr %.reg2mem48, align 4
  %.reload182 = load ptr, ptr %.reg2mem181, align 4
  %120 = getelementptr inbounds [480 x float], ptr %.reload182, i32 %.reload51, i32 %.reload210
  %121 = load float, ptr %120, align 4, !tbaa !2
  %122 = fadd float %119, %121
  %.reload50 = load i32, ptr %.reg2mem48, align 4
  %.reload195 = load ptr, ptr %.reg2mem193, align 4
  %123 = getelementptr inbounds [480 x float], ptr %.reload195, i32 %.reload50, i32 %.reload210
  store float %122, ptr %123, align 4, !tbaa !2
  %124 = add nuw nsw i32 %.reload210, 1
  store i32 %124, ptr %.reg2mem45, align 4
  %.reload47 = load i32, ptr %.reg2mem45, align 4
  %125 = icmp eq i32 %.reload47, 480
  br i1 %125, label %126, label %._crit_edge16, !llvm.loop !20

._crit_edge16:                                    ; preds = %117
  %.reload46 = load i32, ptr %.reg2mem45, align 4
  store i32 %.reload46, ptr %.reg2mem209, align 4
  br label %117

126:                                              ; preds = %117
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  %127 = add nuw nsw i32 %.reload49, 1
  store i32 %127, ptr %.reg2mem42, align 4
  %.reload44 = load i32, ptr %.reg2mem42, align 4
  %128 = icmp eq i32 %.reload44, 720
  br i1 %128, label %129, label %._crit_edge17, !llvm.loop !21

._crit_edge17:                                    ; preds = %126
  %.reload43 = load i32, ptr %.reg2mem42, align 4
  store i32 %.reload43, ptr %.reg2mem211, align 4
  br label %116

129:                                              ; preds = %126
  %130 = load ptr, ptr @stderr, align 4, !tbaa !22
  store ptr %130, ptr %.reg2mem35, align 4
  %.reload41 = load ptr, ptr %.reg2mem35, align 4
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload41, ptr noundef nonnull @.str) #3
  %.reload40 = load ptr, ptr %.reg2mem35, align 4
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload40, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem207, align 4
  br label %133

133:                                              ; preds = %._crit_edge20, %129
  %.reload208 = load i32, ptr %.reg2mem207, align 4
  store i32 %.reload208, ptr %.reg2mem31, align 4
  %.reload34 = load i32, ptr %.reg2mem31, align 4
  %134 = mul nuw nsw i32 %.reload34, 480
  store i32 %134, ptr %.reg2mem29, align 4
  store i32 0, ptr %.reg2mem205, align 4
  br label %135

135:                                              ; preds = %._crit_edge19, %133
  %.reload206 = load i32, ptr %.reg2mem205, align 4
  store i32 %.reload206, ptr %.reg2mem25, align 4
  %.reload28 = load i32, ptr %.reg2mem25, align 4
  %.reload30 = load i32, ptr %.reg2mem29, align 4
  %136 = add nuw nsw i32 %.reload28, %.reload30
  %137 = urem i32 %136, 20
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %._crit_edge18

._crit_edge18:                                    ; preds = %135
  br label %141

139:                                              ; preds = %135
  %.reload36 = load ptr, ptr %.reg2mem35, align 4
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload36, ptr noundef nonnull @.str.3) #3
  br label %141

141:                                              ; preds = %._crit_edge18, %139
  %.reload27 = load i32, ptr %.reg2mem25, align 4
  %.reload33 = load i32, ptr %.reg2mem31, align 4
  %.reload194 = load ptr, ptr %.reg2mem193, align 4
  %142 = getelementptr inbounds [480 x float], ptr %.reload194, i32 %.reload33, i32 %.reload27
  %143 = load float, ptr %142, align 4, !tbaa !2
  %144 = fpext float %143 to double
  %.reload39 = load ptr, ptr %.reg2mem35, align 4
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload39, ptr noundef nonnull @.str.4, double noundef %144) #3
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  %146 = add nuw nsw i32 %.reload26, 1
  store i32 %146, ptr %.reg2mem22, align 4
  %.reload24 = load i32, ptr %.reg2mem22, align 4
  %147 = icmp eq i32 %.reload24, 480
  br i1 %147, label %148, label %._crit_edge19, !llvm.loop !24

._crit_edge19:                                    ; preds = %141
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  store i32 %.reload23, ptr %.reg2mem205, align 4
  br label %135

148:                                              ; preds = %141
  %.reload32 = load i32, ptr %.reg2mem31, align 4
  %149 = add nuw nsw i32 %.reload32, 1
  store i32 %149, ptr %.reg2mem, align 4
  %.reload21 = load i32, ptr %.reg2mem, align 4
  %150 = icmp eq i32 %.reload21, 720
  br i1 %150, label %151, label %._crit_edge20, !llvm.loop !25

._crit_edge20:                                    ; preds = %148
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem207, align 4
  br label %133

151:                                              ; preds = %148
  %.reload38 = load ptr, ptr %.reg2mem35, align 4
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload38, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload37 = load ptr, ptr %.reg2mem35, align 4
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload37, ptr noundef nonnull @.str.6) #3
  %.reload204 = load ptr, ptr %.reg2mem200, align 4
  tail call void @free(ptr noundef %.reload204) #3
  %.reload199 = load ptr, ptr %.reg2mem193, align 4
  tail call void @free(ptr noundef nonnull %.reload199) #3
  %.reload192 = load ptr, ptr %.reg2mem187, align 4
  tail call void @free(ptr noundef %.reload192) #3
  %.reload186 = load ptr, ptr %.reg2mem181, align 4
  tail call void @free(ptr noundef %.reload186) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

declare float @expf(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare float @powf(float noundef, float noundef) local_unnamed_addr #1

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
!3 = !{!"float", !4, i64 0}
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
