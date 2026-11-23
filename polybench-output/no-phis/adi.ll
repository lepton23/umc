; ModuleID = './polybench-output/no-phis/adi.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/adi/adi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i64, align 8
  %.reg2mem22 = alloca i64, align 8
  %.reg2mem25 = alloca i64, align 8
  %.reg2mem29 = alloca i64, align 8
  %.reg2mem31 = alloca i64, align 8
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem38 = alloca i64, align 8
  %.reg2mem40 = alloca i64, align 8
  %.reg2mem43 = alloca i64, align 8
  %.reg2mem45 = alloca double, align 8
  %.reg2mem48 = alloca i64, align 8
  %.reg2mem51 = alloca double, align 8
  %.reg2mem54 = alloca double, align 8
  %.reg2mem57 = alloca double, align 8
  %.reg2mem59 = alloca double, align 8
  %.reg2mem61 = alloca i64, align 8
  %.reg2mem64 = alloca ptr, align 8
  %.reg2mem67 = alloca ptr, align 8
  %.reg2mem70 = alloca ptr, align 8
  %.reg2mem74 = alloca i64, align 8
  %.reg2mem91 = alloca i64, align 8
  %.reg2mem95 = alloca i64, align 8
  %.reg2mem97 = alloca i64, align 8
  %.reg2mem99 = alloca ptr, align 8
  %.reg2mem101 = alloca i64, align 8
  %.reg2mem104 = alloca double, align 8
  %.reg2mem107 = alloca double, align 8
  %.reg2mem110 = alloca double, align 8
  %.reg2mem112 = alloca double, align 8
  %.reg2mem114 = alloca i64, align 8
  %.reg2mem117 = alloca i64, align 8
  %.reg2mem122 = alloca i64, align 8
  %.reg2mem125 = alloca i64, align 8
  %.reg2mem144 = alloca i64, align 8
  %.reg2mem148 = alloca i32, align 4
  %.reg2mem150 = alloca ptr, align 8
  %.reg2mem152 = alloca ptr, align 8
  %.reg2mem154 = alloca i64, align 8
  %.reg2mem157 = alloca i64, align 8
  %.reg2mem160 = alloca i64, align 8
  %.reg2mem162 = alloca i64, align 8
  %.reg2mem166 = alloca ptr, align 8
  %.reg2mem184 = alloca ptr, align 8
  %.reg2mem202 = alloca ptr, align 8
  %.reg2mem211 = alloca ptr, align 8
  %.reg2mem223 = alloca i64, align 8
  %.reg2mem225 = alloca i64, align 8
  %.reg2mem227 = alloca i64, align 8
  %.reg2mem229 = alloca double, align 8
  %.reg2mem231 = alloca i64, align 8
  %.reg2mem233 = alloca double, align 8
  %.reg2mem235 = alloca double, align 8
  %.reg2mem237 = alloca i64, align 8
  %.reg2mem239 = alloca i64, align 8
  %.reg2mem241 = alloca i64, align 8
  %.reg2mem243 = alloca i64, align 8
  %.reg2mem245 = alloca i64, align 8
  %.reg2mem247 = alloca double, align 8
  %.reg2mem249 = alloca double, align 8
  %.reg2mem251 = alloca i64, align 8
  %.reg2mem253 = alloca i64, align 8
  %.reg2mem255 = alloca i64, align 8
  %.reg2mem257 = alloca i32, align 4
  %.reg2mem259 = alloca i64, align 8
  %.reg2mem261 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #4
  store ptr %3, ptr %.reg2mem211, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #4
  store ptr %4, ptr %.reg2mem202, align 8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #4
  store ptr %5, ptr %.reg2mem184, align 8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #4
  store ptr %6, ptr %.reg2mem166, align 8
  store i64 0, ptr %.reg2mem261, align 8
  br label %7

7:                                                ; preds = %._crit_edge1, %2
  %.reload262 = load i64, ptr %.reg2mem261, align 8
  store i64 %.reload262, ptr %.reg2mem162, align 8
  %.reload165 = load i64, ptr %.reg2mem162, align 8
  %8 = add nuw nsw i64 %.reload165, 200
  store i64 %8, ptr %.reg2mem160, align 8
  store i64 0, ptr %.reg2mem259, align 8
  br label %9

9:                                                ; preds = %._crit_edge, %7
  %.reload260 = load i64, ptr %.reg2mem259, align 8
  %.reload161 = load i64, ptr %.reg2mem160, align 8
  %10 = sub nuw nsw i64 %.reload161, %.reload260
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = uitofp nneg i32 %11 to double
  %13 = fdiv double %12, 2.000000e+02
  %.reload164 = load i64, ptr %.reg2mem162, align 8
  %.reload221 = load ptr, ptr %.reg2mem211, align 8
  %14 = getelementptr inbounds [200 x double], ptr %.reload221, i64 %.reload164, i64 %.reload260
  store double %13, ptr %14, align 8, !tbaa !5
  %15 = add nuw nsw i64 %.reload260, 1
  store i64 %15, ptr %.reg2mem157, align 8
  %.reload159 = load i64, ptr %.reg2mem157, align 8
  %16 = icmp eq i64 %.reload159, 200
  br i1 %16, label %17, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %9
  %.reload158 = load i64, ptr %.reg2mem157, align 8
  store i64 %.reload158, ptr %.reg2mem259, align 8
  br label %9

17:                                               ; preds = %9
  %.reload163 = load i64, ptr %.reg2mem162, align 8
  %18 = add nuw nsw i64 %.reload163, 1
  store i64 %18, ptr %.reg2mem154, align 8
  %.reload156 = load i64, ptr %.reg2mem154, align 8
  %19 = icmp eq i64 %.reload156, 200
  br i1 %19, label %20, label %._crit_edge1, !llvm.loop !12

._crit_edge1:                                     ; preds = %17
  %.reload155 = load i64, ptr %.reg2mem154, align 8
  store i64 %.reload155, ptr %.reg2mem261, align 8
  br label %7

20:                                               ; preds = %17
  %.reload209 = load ptr, ptr %.reg2mem202, align 8
  %21 = getelementptr inbounds i8, ptr %.reload209, i64 318400
  store ptr %21, ptr %.reg2mem152, align 8
  %.reload208 = load ptr, ptr %.reg2mem202, align 8
  %22 = getelementptr inbounds i8, ptr %.reload208, i64 1600
  store ptr %22, ptr %.reg2mem150, align 8
  store i32 1, ptr %.reg2mem257, align 4
  br label %23

23:                                               ; preds = %._crit_edge17, %20
  %.reload258 = load i32, ptr %.reg2mem257, align 4
  store i32 %.reload258, ptr %.reg2mem148, align 4
  store i64 1, ptr %.reg2mem253, align 8
  store i64 0, ptr %.reg2mem255, align 8
  br label %24

24:                                               ; preds = %._crit_edge9, %23
  %.reload256 = load i64, ptr %.reg2mem255, align 8
  %.reload254 = load i64, ptr %.reg2mem253, align 8
  store i64 %.reload256, ptr %.reg2mem144, align 8
  store i64 %.reload254, ptr %.reg2mem125, align 8
  %.reload146 = load i64, ptr %.reg2mem144, align 8
  %25 = mul nuw nsw i64 %.reload146, 1600
  %26 = add i64 %25, 1600
  %.reload194 = load ptr, ptr %.reg2mem184, align 8
  %27 = getelementptr i8, ptr %.reload194, i64 %26
  %28 = add i64 %25, 3192
  %.reload193 = load ptr, ptr %.reg2mem184, align 8
  %29 = getelementptr i8, ptr %.reload193, i64 %28
  %.reload176 = load ptr, ptr %.reg2mem166, align 8
  %30 = getelementptr i8, ptr %.reload176, i64 %26
  %.reload175 = load ptr, ptr %.reg2mem166, align 8
  %31 = getelementptr i8, ptr %.reload175, i64 %28
  %.reload143 = load i64, ptr %.reg2mem125, align 8
  %.reload207 = load ptr, ptr %.reg2mem202, align 8
  %32 = getelementptr inbounds [200 x double], ptr %.reload207, i64 0, i64 %.reload143
  store double 1.000000e+00, ptr %32, align 8, !tbaa !5
  %.reload142 = load i64, ptr %.reg2mem125, align 8
  %.reload200 = load ptr, ptr %.reg2mem184, align 8
  %33 = getelementptr inbounds [200 x double], ptr %.reload200, i64 %.reload142
  store double 0.000000e+00, ptr %33, align 8, !tbaa !5
  %34 = load double, ptr %32, align 8, !tbaa !5
  %.reload141 = load i64, ptr %.reg2mem125, align 8
  %.reload182 = load ptr, ptr %.reg2mem166, align 8
  %35 = getelementptr inbounds [200 x double], ptr %.reload182, i64 %.reload141
  store double %34, ptr %35, align 8, !tbaa !5
  %.reload140 = load i64, ptr %.reg2mem125, align 8
  %36 = add nsw i64 %.reload140, -1
  store i64 %36, ptr %.reg2mem122, align 8
  %.reload139 = load i64, ptr %.reg2mem125, align 8
  %37 = add nuw nsw i64 %.reload139, 1
  store i64 %37, ptr %.reg2mem117, align 8
  %38 = icmp ult ptr %27, %31
  %39 = icmp ult ptr %30, %29
  %40 = and i1 %38, %39
  br i1 %40, label %._crit_edge2, label %64

._crit_edge2:                                     ; preds = %24
  store i64 1, ptr %.reg2mem251, align 8
  br label %41

41:                                               ; preds = %._crit_edge4, %._crit_edge2
  %.reload252 = load i64, ptr %.reg2mem251, align 8
  %42 = add nsw i64 %.reload252, -1
  %.reload130 = load i64, ptr %.reg2mem125, align 8
  %.reload192 = load ptr, ptr %.reg2mem184, align 8
  %43 = getelementptr inbounds [200 x double], ptr %.reload192, i64 %.reload130, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = tail call double @llvm.fmuladd.f64(double %44, double -4.000000e+02, double 8.010000e+02)
  %46 = fdiv double 4.000000e+02, %45
  %.reload129 = load i64, ptr %.reg2mem125, align 8
  %.reload191 = load ptr, ptr %.reg2mem184, align 8
  %47 = getelementptr inbounds [200 x double], ptr %.reload191, i64 %.reload129, i64 %.reload252
  store double %46, ptr %47, align 8, !tbaa !5
  %.reload123 = load i64, ptr %.reg2mem122, align 8
  %.reload214 = load ptr, ptr %.reg2mem211, align 8
  %48 = getelementptr inbounds [200 x double], ptr %.reload214, i64 %.reload252, i64 %.reload123
  %49 = load double, ptr %48, align 8, !tbaa !5
  %.reload128 = load i64, ptr %.reg2mem125, align 8
  %.reload213 = load ptr, ptr %.reg2mem211, align 8
  %50 = getelementptr inbounds [200 x double], ptr %.reload213, i64 %.reload252, i64 %.reload128
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = fmul double %51, -3.990000e+02
  %53 = tail call double @llvm.fmuladd.f64(double %49, double 2.000000e+02, double %52)
  %.reload119 = load i64, ptr %.reg2mem117, align 8
  %.reload212 = load ptr, ptr %.reg2mem211, align 8
  %54 = getelementptr inbounds [200 x double], ptr %.reload212, i64 %.reload252, i64 %.reload119
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = tail call double @llvm.fmuladd.f64(double %55, double 2.000000e+02, double %53)
  %.reload127 = load i64, ptr %.reg2mem125, align 8
  %.reload174 = load ptr, ptr %.reg2mem166, align 8
  %57 = getelementptr inbounds [200 x double], ptr %.reload174, i64 %.reload127, i64 %42
  %58 = load double, ptr %57, align 8, !tbaa !5
  %59 = tail call double @llvm.fmuladd.f64(double %58, double 4.000000e+02, double %56)
  %60 = fdiv double %59, %45
  %.reload126 = load i64, ptr %.reg2mem125, align 8
  %.reload173 = load ptr, ptr %.reg2mem166, align 8
  %61 = getelementptr inbounds [200 x double], ptr %.reload173, i64 %.reload126, i64 %.reload252
  store double %60, ptr %61, align 8, !tbaa !5
  %62 = add nuw nsw i64 %.reload252, 1
  store i64 %62, ptr %.reg2mem114, align 8
  %.reload116 = load i64, ptr %.reg2mem114, align 8
  %63 = icmp eq i64 %.reload116, 199
  br i1 %63, label %._crit_edge3, label %._crit_edge4, !llvm.loop !13

._crit_edge4:                                     ; preds = %41
  %.reload115 = load i64, ptr %.reg2mem114, align 8
  store i64 %.reload115, ptr %.reg2mem251, align 8
  br label %41

._crit_edge3:                                     ; preds = %41
  br label %89

64:                                               ; preds = %24
  %.reload145 = load i64, ptr %.reg2mem144, align 8
  %65 = mul nuw nsw i64 %.reload145, 1600
  %66 = add i64 %65, 1600
  %.reload172 = load ptr, ptr %.reg2mem166, align 8
  %67 = getelementptr i8, ptr %.reload172, i64 %66
  %.reload190 = load ptr, ptr %.reg2mem184, align 8
  %68 = getelementptr i8, ptr %.reload190, i64 %66
  %69 = load double, ptr %68, align 8
  store double %69, ptr %.reg2mem112, align 8
  %70 = load double, ptr %67, align 8
  store double %70, ptr %.reg2mem110, align 8
  %.reload111 = load double, ptr %.reg2mem110, align 8
  %.reload113 = load double, ptr %.reg2mem112, align 8
  store i64 1, ptr %.reg2mem245, align 8
  store double %.reload113, ptr %.reg2mem247, align 8
  store double %.reload111, ptr %.reg2mem249, align 8
  br label %71

71:                                               ; preds = %._crit_edge6, %64
  %.reload250 = load double, ptr %.reg2mem249, align 8
  %.reload248 = load double, ptr %.reg2mem247, align 8
  %.reload246 = load i64, ptr %.reg2mem245, align 8
  %72 = tail call double @llvm.fmuladd.f64(double %.reload248, double -4.000000e+02, double 8.010000e+02)
  %73 = fdiv double 4.000000e+02, %72
  store double %73, ptr %.reg2mem107, align 8
  %.reload138 = load i64, ptr %.reg2mem125, align 8
  %.reload199 = load ptr, ptr %.reg2mem184, align 8
  %74 = getelementptr inbounds [200 x double], ptr %.reload199, i64 %.reload138, i64 %.reload246
  %.reload109 = load double, ptr %.reg2mem107, align 8
  store double %.reload109, ptr %74, align 8, !tbaa !5
  %.reload124 = load i64, ptr %.reg2mem122, align 8
  %.reload220 = load ptr, ptr %.reg2mem211, align 8
  %75 = getelementptr inbounds [200 x double], ptr %.reload220, i64 %.reload246, i64 %.reload124
  %76 = load double, ptr %75, align 8, !tbaa !5
  %.reload137 = load i64, ptr %.reg2mem125, align 8
  %.reload219 = load ptr, ptr %.reg2mem211, align 8
  %77 = getelementptr inbounds [200 x double], ptr %.reload219, i64 %.reload246, i64 %.reload137
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = fmul double %78, -3.990000e+02
  %80 = tail call double @llvm.fmuladd.f64(double %76, double 2.000000e+02, double %79)
  %.reload121 = load i64, ptr %.reg2mem117, align 8
  %.reload218 = load ptr, ptr %.reg2mem211, align 8
  %81 = getelementptr inbounds [200 x double], ptr %.reload218, i64 %.reload246, i64 %.reload121
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = tail call double @llvm.fmuladd.f64(double %82, double 2.000000e+02, double %80)
  %84 = tail call double @llvm.fmuladd.f64(double %.reload250, double 4.000000e+02, double %83)
  %85 = fdiv double %84, %72
  store double %85, ptr %.reg2mem104, align 8
  %.reload136 = load i64, ptr %.reg2mem125, align 8
  %.reload181 = load ptr, ptr %.reg2mem166, align 8
  %86 = getelementptr inbounds [200 x double], ptr %.reload181, i64 %.reload136, i64 %.reload246
  %.reload106 = load double, ptr %.reg2mem104, align 8
  store double %.reload106, ptr %86, align 8, !tbaa !5
  %87 = add nuw nsw i64 %.reload246, 1
  store i64 %87, ptr %.reg2mem101, align 8
  %.reload103 = load i64, ptr %.reg2mem101, align 8
  %88 = icmp eq i64 %.reload103, 199
  br i1 %88, label %._crit_edge5, label %._crit_edge6, !llvm.loop !13

._crit_edge6:                                     ; preds = %71
  %.reload102 = load i64, ptr %.reg2mem101, align 8
  %.reload105 = load double, ptr %.reg2mem104, align 8
  %.reload108 = load double, ptr %.reg2mem107, align 8
  store i64 %.reload102, ptr %.reg2mem245, align 8
  store double %.reload108, ptr %.reg2mem247, align 8
  store double %.reload105, ptr %.reg2mem249, align 8
  br label %71

._crit_edge5:                                     ; preds = %71
  br label %89

89:                                               ; preds = %._crit_edge5, %._crit_edge3
  %.reload135 = load i64, ptr %.reg2mem125, align 8
  %.reload153 = load ptr, ptr %.reg2mem152, align 8
  %90 = getelementptr inbounds [200 x double], ptr %.reload153, i64 0, i64 %.reload135
  store double 1.000000e+00, ptr %90, align 8, !tbaa !5
  %.reload134 = load i64, ptr %.reg2mem125, align 8
  %.reload151 = load ptr, ptr %.reg2mem150, align 8
  %91 = getelementptr inbounds [200 x double], ptr %.reload151, i64 0, i64 %.reload134
  store ptr %91, ptr %.reg2mem99, align 8
  store i64 198, ptr %.reg2mem243, align 8
  br label %92

92:                                               ; preds = %._crit_edge7, %89
  %.reload244 = load i64, ptr %.reg2mem243, align 8
  %.reload133 = load i64, ptr %.reg2mem125, align 8
  %.reload198 = load ptr, ptr %.reg2mem184, align 8
  %93 = getelementptr inbounds [200 x double], ptr %.reload198, i64 %.reload133, i64 %.reload244
  %94 = load double, ptr %93, align 8, !tbaa !5
  %.reload100 = load ptr, ptr %.reg2mem99, align 8
  %95 = getelementptr inbounds [200 x double], ptr %.reload100, i64 %.reload244
  %96 = load double, ptr %95, align 8, !tbaa !5
  %.reload132 = load i64, ptr %.reg2mem125, align 8
  %.reload180 = load ptr, ptr %.reg2mem166, align 8
  %97 = getelementptr inbounds [200 x double], ptr %.reload180, i64 %.reload132, i64 %.reload244
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = tail call double @llvm.fmuladd.f64(double %94, double %96, double %98)
  %.reload131 = load i64, ptr %.reg2mem125, align 8
  %.reload206 = load ptr, ptr %.reg2mem202, align 8
  %100 = getelementptr inbounds [200 x double], ptr %.reload206, i64 %.reload244, i64 %.reload131
  store double %99, ptr %100, align 8, !tbaa !5
  %101 = add nsw i64 %.reload244, -1
  store i64 %101, ptr %.reg2mem97, align 8
  %102 = icmp ugt i64 %.reload244, 1
  br i1 %102, label %._crit_edge7, label %103, !llvm.loop !14

._crit_edge7:                                     ; preds = %92
  %.reload98 = load i64, ptr %.reg2mem97, align 8
  store i64 %.reload98, ptr %.reg2mem243, align 8
  br label %92

103:                                              ; preds = %92
  %.reload120 = load i64, ptr %.reg2mem117, align 8
  %104 = icmp eq i64 %.reload120, 199
  %.reload147 = load i64, ptr %.reg2mem144, align 8
  %105 = add i64 %.reload147, 1
  store i64 %105, ptr %.reg2mem95, align 8
  br i1 %104, label %._crit_edge8, label %._crit_edge9, !llvm.loop !15

._crit_edge9:                                     ; preds = %103
  %.reload96 = load i64, ptr %.reg2mem95, align 8
  %.reload118 = load i64, ptr %.reg2mem117, align 8
  store i64 %.reload118, ptr %.reg2mem253, align 8
  store i64 %.reload96, ptr %.reg2mem255, align 8
  br label %24

._crit_edge8:                                     ; preds = %103
  store i64 1, ptr %.reg2mem239, align 8
  store i64 0, ptr %.reg2mem241, align 8
  br label %106

106:                                              ; preds = %._crit_edge16, %._crit_edge8
  %.reload242 = load i64, ptr %.reg2mem241, align 8
  %.reload240 = load i64, ptr %.reg2mem239, align 8
  store i64 %.reload242, ptr %.reg2mem91, align 8
  store i64 %.reload240, ptr %.reg2mem74, align 8
  %.reload93 = load i64, ptr %.reg2mem91, align 8
  %107 = mul nuw nsw i64 %.reload93, 1600
  %108 = add i64 %107, 1600
  %.reload189 = load ptr, ptr %.reg2mem184, align 8
  %109 = getelementptr i8, ptr %.reload189, i64 %108
  %110 = add i64 %107, 3192
  %.reload188 = load ptr, ptr %.reg2mem184, align 8
  %111 = getelementptr i8, ptr %.reload188, i64 %110
  %.reload171 = load ptr, ptr %.reg2mem166, align 8
  %112 = getelementptr i8, ptr %.reload171, i64 %108
  %.reload170 = load ptr, ptr %.reg2mem166, align 8
  %113 = getelementptr i8, ptr %.reload170, i64 %110
  %.reload90 = load i64, ptr %.reg2mem74, align 8
  %.reload217 = load ptr, ptr %.reg2mem211, align 8
  %114 = getelementptr inbounds [200 x double], ptr %.reload217, i64 %.reload90
  store ptr %114, ptr %.reg2mem70, align 8
  %.reload73 = load ptr, ptr %.reg2mem70, align 8
  store double 1.000000e+00, ptr %.reload73, align 8, !tbaa !5
  %.reload89 = load i64, ptr %.reg2mem74, align 8
  %.reload197 = load ptr, ptr %.reg2mem184, align 8
  %115 = getelementptr inbounds [200 x double], ptr %.reload197, i64 %.reload89
  store double 0.000000e+00, ptr %115, align 8, !tbaa !5
  %.reload72 = load ptr, ptr %.reg2mem70, align 8
  %116 = load double, ptr %.reload72, align 8, !tbaa !5
  %.reload88 = load i64, ptr %.reg2mem74, align 8
  %.reload179 = load ptr, ptr %.reg2mem166, align 8
  %117 = getelementptr inbounds [200 x double], ptr %.reload179, i64 %.reload88
  store double %116, ptr %117, align 8, !tbaa !5
  %.reload87 = load i64, ptr %.reg2mem74, align 8
  %.reload205 = load ptr, ptr %.reg2mem202, align 8
  %118 = getelementptr [200 x double], ptr %.reload205, i64 %.reload87
  %119 = getelementptr i8, ptr %118, i64 -1600
  store ptr %119, ptr %.reg2mem67, align 8
  %120 = getelementptr inbounds i8, ptr %118, i64 1600
  store ptr %120, ptr %.reg2mem64, align 8
  %121 = icmp ult ptr %109, %113
  %122 = icmp ult ptr %112, %111
  %123 = and i1 %121, %122
  br i1 %123, label %._crit_edge10, label %147

._crit_edge10:                                    ; preds = %106
  store i64 1, ptr %.reg2mem237, align 8
  br label %124

124:                                              ; preds = %._crit_edge12, %._crit_edge10
  %.reload238 = load i64, ptr %.reg2mem237, align 8
  %125 = add nsw i64 %.reload238, -1
  %.reload79 = load i64, ptr %.reg2mem74, align 8
  %.reload187 = load ptr, ptr %.reg2mem184, align 8
  %126 = getelementptr inbounds [200 x double], ptr %.reload187, i64 %.reload79, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = tail call double @llvm.fmuladd.f64(double %127, double -2.000000e+02, double 4.010000e+02)
  %129 = fdiv double 2.000000e+02, %128
  %.reload78 = load i64, ptr %.reg2mem74, align 8
  %.reload186 = load ptr, ptr %.reg2mem184, align 8
  %130 = getelementptr inbounds [200 x double], ptr %.reload186, i64 %.reload78, i64 %.reload238
  store double %129, ptr %130, align 8, !tbaa !5
  %.reload68 = load ptr, ptr %.reg2mem67, align 8
  %131 = getelementptr inbounds [200 x double], ptr %.reload68, i64 0, i64 %.reload238
  %132 = load double, ptr %131, align 8, !tbaa !5
  %.reload77 = load i64, ptr %.reg2mem74, align 8
  %.reload203 = load ptr, ptr %.reg2mem202, align 8
  %133 = getelementptr inbounds [200 x double], ptr %.reload203, i64 %.reload77, i64 %.reload238
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = fmul double %134, -7.990000e+02
  %136 = tail call double @llvm.fmuladd.f64(double %132, double 4.000000e+02, double %135)
  %.reload65 = load ptr, ptr %.reg2mem64, align 8
  %137 = getelementptr inbounds [200 x double], ptr %.reload65, i64 0, i64 %.reload238
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = tail call double @llvm.fmuladd.f64(double %138, double 4.000000e+02, double %136)
  %.reload76 = load i64, ptr %.reg2mem74, align 8
  %.reload169 = load ptr, ptr %.reg2mem166, align 8
  %140 = getelementptr inbounds [200 x double], ptr %.reload169, i64 %.reload76, i64 %125
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %141, double 2.000000e+02, double %139)
  %143 = fdiv double %142, %128
  %.reload75 = load i64, ptr %.reg2mem74, align 8
  %.reload168 = load ptr, ptr %.reg2mem166, align 8
  %144 = getelementptr inbounds [200 x double], ptr %.reload168, i64 %.reload75, i64 %.reload238
  store double %143, ptr %144, align 8, !tbaa !5
  %145 = add nuw nsw i64 %.reload238, 1
  store i64 %145, ptr %.reg2mem61, align 8
  %.reload63 = load i64, ptr %.reg2mem61, align 8
  %146 = icmp eq i64 %.reload63, 199
  br i1 %146, label %._crit_edge11, label %._crit_edge12, !llvm.loop !16

._crit_edge12:                                    ; preds = %124
  %.reload62 = load i64, ptr %.reg2mem61, align 8
  store i64 %.reload62, ptr %.reg2mem237, align 8
  br label %124

._crit_edge11:                                    ; preds = %124
  br label %172

147:                                              ; preds = %106
  %.reload92 = load i64, ptr %.reg2mem91, align 8
  %148 = mul nuw nsw i64 %.reload92, 1600
  %149 = add i64 %148, 1600
  %.reload167 = load ptr, ptr %.reg2mem166, align 8
  %150 = getelementptr i8, ptr %.reload167, i64 %149
  %.reload185 = load ptr, ptr %.reg2mem184, align 8
  %151 = getelementptr i8, ptr %.reload185, i64 %149
  %152 = load double, ptr %151, align 8
  store double %152, ptr %.reg2mem59, align 8
  %153 = load double, ptr %150, align 8
  store double %153, ptr %.reg2mem57, align 8
  %.reload58 = load double, ptr %.reg2mem57, align 8
  %.reload60 = load double, ptr %.reg2mem59, align 8
  store i64 1, ptr %.reg2mem231, align 8
  store double %.reload60, ptr %.reg2mem233, align 8
  store double %.reload58, ptr %.reg2mem235, align 8
  br label %154

154:                                              ; preds = %._crit_edge14, %147
  %.reload236 = load double, ptr %.reg2mem235, align 8
  %.reload234 = load double, ptr %.reg2mem233, align 8
  %.reload232 = load i64, ptr %.reg2mem231, align 8
  %155 = tail call double @llvm.fmuladd.f64(double %.reload234, double -2.000000e+02, double 4.010000e+02)
  %156 = fdiv double 2.000000e+02, %155
  store double %156, ptr %.reg2mem54, align 8
  %.reload86 = load i64, ptr %.reg2mem74, align 8
  %.reload196 = load ptr, ptr %.reg2mem184, align 8
  %157 = getelementptr inbounds [200 x double], ptr %.reload196, i64 %.reload86, i64 %.reload232
  %.reload56 = load double, ptr %.reg2mem54, align 8
  store double %.reload56, ptr %157, align 8, !tbaa !5
  %.reload69 = load ptr, ptr %.reg2mem67, align 8
  %158 = getelementptr inbounds [200 x double], ptr %.reload69, i64 0, i64 %.reload232
  %159 = load double, ptr %158, align 8, !tbaa !5
  %.reload85 = load i64, ptr %.reg2mem74, align 8
  %.reload204 = load ptr, ptr %.reg2mem202, align 8
  %160 = getelementptr inbounds [200 x double], ptr %.reload204, i64 %.reload85, i64 %.reload232
  %161 = load double, ptr %160, align 8, !tbaa !5
  %162 = fmul double %161, -7.990000e+02
  %163 = tail call double @llvm.fmuladd.f64(double %159, double 4.000000e+02, double %162)
  %.reload66 = load ptr, ptr %.reg2mem64, align 8
  %164 = getelementptr inbounds [200 x double], ptr %.reload66, i64 0, i64 %.reload232
  %165 = load double, ptr %164, align 8, !tbaa !5
  %166 = tail call double @llvm.fmuladd.f64(double %165, double 4.000000e+02, double %163)
  %167 = tail call double @llvm.fmuladd.f64(double %.reload236, double 2.000000e+02, double %166)
  %168 = fdiv double %167, %155
  store double %168, ptr %.reg2mem51, align 8
  %.reload84 = load i64, ptr %.reg2mem74, align 8
  %.reload178 = load ptr, ptr %.reg2mem166, align 8
  %169 = getelementptr inbounds [200 x double], ptr %.reload178, i64 %.reload84, i64 %.reload232
  %.reload53 = load double, ptr %.reg2mem51, align 8
  store double %.reload53, ptr %169, align 8, !tbaa !5
  %170 = add nuw nsw i64 %.reload232, 1
  store i64 %170, ptr %.reg2mem48, align 8
  %.reload50 = load i64, ptr %.reg2mem48, align 8
  %171 = icmp eq i64 %.reload50, 199
  br i1 %171, label %._crit_edge13, label %._crit_edge14, !llvm.loop !16

._crit_edge14:                                    ; preds = %154
  %.reload49 = load i64, ptr %.reg2mem48, align 8
  %.reload52 = load double, ptr %.reg2mem51, align 8
  %.reload55 = load double, ptr %.reg2mem54, align 8
  store i64 %.reload49, ptr %.reg2mem231, align 8
  store double %.reload55, ptr %.reg2mem233, align 8
  store double %.reload52, ptr %.reg2mem235, align 8
  br label %154

._crit_edge13:                                    ; preds = %154
  br label %172

172:                                              ; preds = %._crit_edge13, %._crit_edge11
  %.reload71 = load ptr, ptr %.reg2mem70, align 8
  %173 = getelementptr inbounds i8, ptr %.reload71, i64 1592
  store double 1.000000e+00, ptr %173, align 8, !tbaa !5
  store i64 198, ptr %.reg2mem227, align 8
  store double 1.000000e+00, ptr %.reg2mem229, align 8
  br label %174

174:                                              ; preds = %._crit_edge15, %172
  %.reload230 = load double, ptr %.reg2mem229, align 8
  %.reload228 = load i64, ptr %.reg2mem227, align 8
  %.reload83 = load i64, ptr %.reg2mem74, align 8
  %.reload195 = load ptr, ptr %.reg2mem184, align 8
  %175 = getelementptr inbounds [200 x double], ptr %.reload195, i64 %.reload83, i64 %.reload228
  %176 = load double, ptr %175, align 8, !tbaa !5
  %.reload82 = load i64, ptr %.reg2mem74, align 8
  %.reload177 = load ptr, ptr %.reg2mem166, align 8
  %177 = getelementptr inbounds [200 x double], ptr %.reload177, i64 %.reload82, i64 %.reload228
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = tail call double @llvm.fmuladd.f64(double %176, double %.reload230, double %178)
  store double %179, ptr %.reg2mem45, align 8
  %.reload81 = load i64, ptr %.reg2mem74, align 8
  %.reload216 = load ptr, ptr %.reg2mem211, align 8
  %180 = getelementptr inbounds [200 x double], ptr %.reload216, i64 %.reload81, i64 %.reload228
  %.reload47 = load double, ptr %.reg2mem45, align 8
  store double %.reload47, ptr %180, align 8, !tbaa !5
  %181 = add nsw i64 %.reload228, -1
  store i64 %181, ptr %.reg2mem43, align 8
  %182 = icmp ugt i64 %.reload228, 1
  br i1 %182, label %._crit_edge15, label %183, !llvm.loop !17

._crit_edge15:                                    ; preds = %174
  %.reload44 = load i64, ptr %.reg2mem43, align 8
  %.reload46 = load double, ptr %.reg2mem45, align 8
  store i64 %.reload44, ptr %.reg2mem227, align 8
  store double %.reload46, ptr %.reg2mem229, align 8
  br label %174

183:                                              ; preds = %174
  %.reload80 = load i64, ptr %.reg2mem74, align 8
  %184 = add nuw nsw i64 %.reload80, 1
  store i64 %184, ptr %.reg2mem40, align 8
  %.reload42 = load i64, ptr %.reg2mem40, align 8
  %185 = icmp eq i64 %.reload42, 199
  %.reload94 = load i64, ptr %.reg2mem91, align 8
  %186 = add i64 %.reload94, 1
  store i64 %186, ptr %.reg2mem38, align 8
  br i1 %185, label %187, label %._crit_edge16, !llvm.loop !18

._crit_edge16:                                    ; preds = %183
  %.reload39 = load i64, ptr %.reg2mem38, align 8
  %.reload41 = load i64, ptr %.reg2mem40, align 8
  store i64 %.reload41, ptr %.reg2mem239, align 8
  store i64 %.reload39, ptr %.reg2mem241, align 8
  br label %106

187:                                              ; preds = %183
  %.reload149 = load i32, ptr %.reg2mem148, align 4
  %188 = add nuw nsw i32 %.reload149, 1
  store i32 %188, ptr %.reg2mem35, align 4
  %.reload37 = load i32, ptr %.reg2mem35, align 4
  %189 = icmp eq i32 %.reload37, 101
  br i1 %189, label %190, label %._crit_edge17, !llvm.loop !19

._crit_edge17:                                    ; preds = %187
  %.reload36 = load i32, ptr %.reg2mem35, align 4
  store i32 %.reload36, ptr %.reg2mem257, align 4
  br label %23

190:                                              ; preds = %187
  %191 = load ptr, ptr @stderr, align 8, !tbaa !20
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str) #4
  %193 = load ptr, ptr @stderr, align 8, !tbaa !20
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %193, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i64 0, ptr %.reg2mem225, align 8
  br label %195

195:                                              ; preds = %._crit_edge20, %190
  %.reload226 = load i64, ptr %.reg2mem225, align 8
  store i64 %.reload226, ptr %.reg2mem31, align 8
  %.reload34 = load i64, ptr %.reg2mem31, align 8
  %196 = mul nuw nsw i64 %.reload34, 200
  store i64 %196, ptr %.reg2mem29, align 8
  store i64 0, ptr %.reg2mem223, align 8
  br label %197

197:                                              ; preds = %._crit_edge19, %195
  %.reload224 = load i64, ptr %.reg2mem223, align 8
  store i64 %.reload224, ptr %.reg2mem25, align 8
  %.reload28 = load i64, ptr %.reg2mem25, align 8
  %.reload30 = load i64, ptr %.reg2mem29, align 8
  %198 = add nuw nsw i64 %.reload28, %.reload30
  %199 = trunc nuw nsw i64 %198 to i32
  %200 = urem i32 %199, 20
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %._crit_edge18

._crit_edge18:                                    ; preds = %197
  br label %205

202:                                              ; preds = %197
  %203 = load ptr, ptr @stderr, align 8, !tbaa !20
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.3) #4
  br label %205

205:                                              ; preds = %._crit_edge18, %202
  %206 = load ptr, ptr @stderr, align 8, !tbaa !20
  %.reload27 = load i64, ptr %.reg2mem25, align 8
  %.reload33 = load i64, ptr %.reg2mem31, align 8
  %.reload215 = load ptr, ptr %.reg2mem211, align 8
  %207 = getelementptr inbounds [200 x double], ptr %.reload215, i64 %.reload33, i64 %.reload27
  %208 = load double, ptr %207, align 8, !tbaa !5
  %209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef nonnull @.str.4, double noundef %208) #4
  %.reload26 = load i64, ptr %.reg2mem25, align 8
  %210 = add nuw nsw i64 %.reload26, 1
  store i64 %210, ptr %.reg2mem22, align 8
  %.reload24 = load i64, ptr %.reg2mem22, align 8
  %211 = icmp eq i64 %.reload24, 200
  br i1 %211, label %212, label %._crit_edge19, !llvm.loop !22

._crit_edge19:                                    ; preds = %205
  %.reload23 = load i64, ptr %.reg2mem22, align 8
  store i64 %.reload23, ptr %.reg2mem223, align 8
  br label %197

212:                                              ; preds = %205
  %.reload32 = load i64, ptr %.reg2mem31, align 8
  %213 = add nuw nsw i64 %.reload32, 1
  store i64 %213, ptr %.reg2mem, align 8
  %.reload21 = load i64, ptr %.reg2mem, align 8
  %214 = icmp eq i64 %.reload21, 200
  br i1 %214, label %215, label %._crit_edge20, !llvm.loop !23

._crit_edge20:                                    ; preds = %212
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %.reg2mem225, align 8
  br label %195

215:                                              ; preds = %212
  %216 = load ptr, ptr @stderr, align 8, !tbaa !20
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %218 = load ptr, ptr @stderr, align 8, !tbaa !20
  %219 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef nonnull @.str.6) #4
  %.reload222 = load ptr, ptr %.reg2mem211, align 8
  tail call void @free(ptr noundef nonnull %.reload222) #4
  %.reload210 = load ptr, ptr %.reg2mem202, align 8
  tail call void @free(ptr noundef %.reload210) #4
  %.reload201 = load ptr, ptr %.reg2mem184, align 8
  tail call void @free(ptr noundef %.reload201) #4
  %.reload183 = load ptr, ptr %.reg2mem166, align 8
  tail call void @free(ptr noundef %.reload183) #4
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
