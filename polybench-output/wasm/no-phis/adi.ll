; ModuleID = './polybench-output/wasm/no-phis/adi.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/adi/adi.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
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
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem52 = alloca double, align 8
  %.reg2mem55 = alloca i32, align 4
  %.reg2mem58 = alloca double, align 8
  %.reg2mem61 = alloca double, align 8
  %.reg2mem64 = alloca double, align 8
  %.reg2mem66 = alloca double, align 8
  %.reg2mem68 = alloca i32, align 4
  %.reg2mem71 = alloca ptr, align 4
  %.reg2mem74 = alloca ptr, align 4
  %.reg2mem77 = alloca ptr, align 4
  %.reg2mem81 = alloca i32, align 4
  %.reg2mem98 = alloca i32, align 4
  %.reg2mem102 = alloca i32, align 4
  %.reg2mem104 = alloca i32, align 4
  %.reg2mem106 = alloca ptr, align 4
  %.reg2mem108 = alloca i32, align 4
  %.reg2mem111 = alloca double, align 8
  %.reg2mem114 = alloca double, align 8
  %.reg2mem117 = alloca double, align 8
  %.reg2mem119 = alloca double, align 8
  %.reg2mem121 = alloca i32, align 4
  %.reg2mem124 = alloca i32, align 4
  %.reg2mem129 = alloca i32, align 4
  %.reg2mem132 = alloca i32, align 4
  %.reg2mem151 = alloca i32, align 4
  %.reg2mem155 = alloca i32, align 4
  %.reg2mem157 = alloca ptr, align 4
  %.reg2mem159 = alloca ptr, align 4
  %.reg2mem161 = alloca i32, align 4
  %.reg2mem164 = alloca i32, align 4
  %.reg2mem167 = alloca i32, align 4
  %.reg2mem169 = alloca i32, align 4
  %.reg2mem173 = alloca ptr, align 4
  %.reg2mem191 = alloca ptr, align 4
  %.reg2mem209 = alloca ptr, align 4
  %.reg2mem218 = alloca ptr, align 4
  %.reg2mem230 = alloca i32, align 4
  %.reg2mem232 = alloca i32, align 4
  %.reg2mem234 = alloca i32, align 4
  %.reg2mem236 = alloca double, align 8
  %.reg2mem238 = alloca i32, align 4
  %.reg2mem240 = alloca double, align 8
  %.reg2mem242 = alloca double, align 8
  %.reg2mem244 = alloca i32, align 4
  %.reg2mem246 = alloca i32, align 4
  %.reg2mem248 = alloca i32, align 4
  %.reg2mem250 = alloca i32, align 4
  %.reg2mem252 = alloca i32, align 4
  %.reg2mem254 = alloca double, align 8
  %.reg2mem256 = alloca double, align 8
  %.reg2mem258 = alloca i32, align 4
  %.reg2mem260 = alloca i32, align 4
  %.reg2mem262 = alloca i32, align 4
  %.reg2mem264 = alloca i32, align 4
  %.reg2mem266 = alloca i32, align 4
  %.reg2mem268 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem218, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem209, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem191, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem173, align 4
  store i32 0, ptr %.reg2mem268, align 4
  br label %7

7:                                                ; preds = %._crit_edge1, %2
  %.reload269 = load i32, ptr %.reg2mem268, align 4
  store i32 %.reload269, ptr %.reg2mem169, align 4
  %.reload172 = load i32, ptr %.reg2mem169, align 4
  %8 = add nuw nsw i32 %.reload172, 200
  store i32 %8, ptr %.reg2mem167, align 4
  store i32 0, ptr %.reg2mem266, align 4
  br label %9

9:                                                ; preds = %._crit_edge, %7
  %.reload267 = load i32, ptr %.reg2mem266, align 4
  %.reload168 = load i32, ptr %.reg2mem167, align 4
  %10 = sub nuw nsw i32 %.reload168, %.reload267
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double %11, 2.000000e+02
  %.reload171 = load i32, ptr %.reg2mem169, align 4
  %.reload228 = load ptr, ptr %.reg2mem218, align 4
  %13 = getelementptr inbounds [200 x double], ptr %.reload228, i32 %.reload171, i32 %.reload267
  store double %12, ptr %13, align 8, !tbaa !2
  %14 = add nuw nsw i32 %.reload267, 1
  store i32 %14, ptr %.reg2mem164, align 4
  %.reload166 = load i32, ptr %.reg2mem164, align 4
  %15 = icmp eq i32 %.reload166, 200
  br i1 %15, label %16, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %9
  %.reload165 = load i32, ptr %.reg2mem164, align 4
  store i32 %.reload165, ptr %.reg2mem266, align 4
  br label %9

16:                                               ; preds = %9
  %.reload170 = load i32, ptr %.reg2mem169, align 4
  %17 = add nuw nsw i32 %.reload170, 1
  store i32 %17, ptr %.reg2mem161, align 4
  %.reload163 = load i32, ptr %.reg2mem161, align 4
  %18 = icmp eq i32 %.reload163, 200
  br i1 %18, label %19, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %16
  %.reload162 = load i32, ptr %.reg2mem161, align 4
  store i32 %.reload162, ptr %.reg2mem268, align 4
  br label %7

19:                                               ; preds = %16
  %.reload216 = load ptr, ptr %.reg2mem209, align 4
  %20 = getelementptr inbounds i8, ptr %.reload216, i32 318400
  store ptr %20, ptr %.reg2mem159, align 4
  %.reload215 = load ptr, ptr %.reg2mem209, align 4
  %21 = getelementptr i8, ptr %.reload215, i32 1600
  store ptr %21, ptr %.reg2mem157, align 4
  store i32 1, ptr %.reg2mem264, align 4
  br label %22

22:                                               ; preds = %._crit_edge17, %19
  %.reload265 = load i32, ptr %.reg2mem264, align 4
  store i32 %.reload265, ptr %.reg2mem155, align 4
  store i32 1, ptr %.reg2mem260, align 4
  store i32 0, ptr %.reg2mem262, align 4
  br label %23

23:                                               ; preds = %._crit_edge9, %22
  %.reload263 = load i32, ptr %.reg2mem262, align 4
  %.reload261 = load i32, ptr %.reg2mem260, align 4
  store i32 %.reload263, ptr %.reg2mem151, align 4
  store i32 %.reload261, ptr %.reg2mem132, align 4
  %.reload153 = load i32, ptr %.reg2mem151, align 4
  %24 = mul nuw nsw i32 %.reload153, 1600
  %25 = add i32 %24, 1600
  %.reload201 = load ptr, ptr %.reg2mem191, align 4
  %26 = getelementptr i8, ptr %.reload201, i32 %25
  %27 = add i32 %24, 3192
  %.reload200 = load ptr, ptr %.reg2mem191, align 4
  %28 = getelementptr i8, ptr %.reload200, i32 %27
  %.reload183 = load ptr, ptr %.reg2mem173, align 4
  %29 = getelementptr i8, ptr %.reload183, i32 %25
  %.reload182 = load ptr, ptr %.reg2mem173, align 4
  %30 = getelementptr i8, ptr %.reload182, i32 %27
  %.reload150 = load i32, ptr %.reg2mem132, align 4
  %.reload214 = load ptr, ptr %.reg2mem209, align 4
  %31 = getelementptr inbounds [200 x double], ptr %.reload214, i32 0, i32 %.reload150
  store double 1.000000e+00, ptr %31, align 8, !tbaa !2
  %.reload149 = load i32, ptr %.reg2mem132, align 4
  %.reload207 = load ptr, ptr %.reg2mem191, align 4
  %32 = getelementptr inbounds [200 x double], ptr %.reload207, i32 %.reload149
  store double 0.000000e+00, ptr %32, align 8, !tbaa !2
  %33 = load double, ptr %31, align 8, !tbaa !2
  %.reload148 = load i32, ptr %.reg2mem132, align 4
  %.reload189 = load ptr, ptr %.reg2mem173, align 4
  %34 = getelementptr inbounds [200 x double], ptr %.reload189, i32 %.reload148
  store double %33, ptr %34, align 8, !tbaa !2
  %.reload147 = load i32, ptr %.reg2mem132, align 4
  %35 = add nsw i32 %.reload147, -1
  store i32 %35, ptr %.reg2mem129, align 4
  %.reload146 = load i32, ptr %.reg2mem132, align 4
  %36 = add nuw nsw i32 %.reload146, 1
  store i32 %36, ptr %.reg2mem124, align 4
  %37 = icmp ult ptr %26, %30
  %38 = icmp ult ptr %29, %28
  %39 = and i1 %37, %38
  br i1 %39, label %._crit_edge2, label %63

._crit_edge2:                                     ; preds = %23
  store i32 1, ptr %.reg2mem258, align 4
  br label %40

40:                                               ; preds = %._crit_edge4, %._crit_edge2
  %.reload259 = load i32, ptr %.reg2mem258, align 4
  %41 = add nsw i32 %.reload259, -1
  %.reload137 = load i32, ptr %.reg2mem132, align 4
  %.reload199 = load ptr, ptr %.reg2mem191, align 4
  %42 = getelementptr inbounds [200 x double], ptr %.reload199, i32 %.reload137, i32 %41
  %43 = load double, ptr %42, align 8, !tbaa !2
  %44 = tail call double @llvm.fmuladd.f64(double %43, double -4.000000e+02, double 8.010000e+02)
  %45 = fdiv double 4.000000e+02, %44
  %.reload136 = load i32, ptr %.reg2mem132, align 4
  %.reload198 = load ptr, ptr %.reg2mem191, align 4
  %46 = getelementptr inbounds [200 x double], ptr %.reload198, i32 %.reload136, i32 %.reload259
  store double %45, ptr %46, align 8, !tbaa !2
  %.reload130 = load i32, ptr %.reg2mem129, align 4
  %.reload221 = load ptr, ptr %.reg2mem218, align 4
  %47 = getelementptr inbounds [200 x double], ptr %.reload221, i32 %.reload259, i32 %.reload130
  %48 = load double, ptr %47, align 8, !tbaa !2
  %.reload135 = load i32, ptr %.reg2mem132, align 4
  %.reload220 = load ptr, ptr %.reg2mem218, align 4
  %49 = getelementptr inbounds [200 x double], ptr %.reload220, i32 %.reload259, i32 %.reload135
  %50 = load double, ptr %49, align 8, !tbaa !2
  %51 = fmul double %50, -3.990000e+02
  %52 = tail call double @llvm.fmuladd.f64(double %48, double 2.000000e+02, double %51)
  %.reload126 = load i32, ptr %.reg2mem124, align 4
  %.reload219 = load ptr, ptr %.reg2mem218, align 4
  %53 = getelementptr inbounds [200 x double], ptr %.reload219, i32 %.reload259, i32 %.reload126
  %54 = load double, ptr %53, align 8, !tbaa !2
  %55 = tail call double @llvm.fmuladd.f64(double %54, double 2.000000e+02, double %52)
  %.reload134 = load i32, ptr %.reg2mem132, align 4
  %.reload181 = load ptr, ptr %.reg2mem173, align 4
  %56 = getelementptr inbounds [200 x double], ptr %.reload181, i32 %.reload134, i32 %41
  %57 = load double, ptr %56, align 8, !tbaa !2
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 4.000000e+02, double %55)
  %59 = fdiv double %58, %44
  %.reload133 = load i32, ptr %.reg2mem132, align 4
  %.reload180 = load ptr, ptr %.reg2mem173, align 4
  %60 = getelementptr inbounds [200 x double], ptr %.reload180, i32 %.reload133, i32 %.reload259
  store double %59, ptr %60, align 8, !tbaa !2
  %61 = add nuw nsw i32 %.reload259, 1
  store i32 %61, ptr %.reg2mem121, align 4
  %.reload123 = load i32, ptr %.reg2mem121, align 4
  %62 = icmp eq i32 %.reload123, 199
  br i1 %62, label %._crit_edge3, label %._crit_edge4, !llvm.loop !10

._crit_edge4:                                     ; preds = %40
  %.reload122 = load i32, ptr %.reg2mem121, align 4
  store i32 %.reload122, ptr %.reg2mem258, align 4
  br label %40

._crit_edge3:                                     ; preds = %40
  br label %88

63:                                               ; preds = %23
  %.reload152 = load i32, ptr %.reg2mem151, align 4
  %64 = mul nuw nsw i32 %.reload152, 1600
  %65 = add i32 %64, 1600
  %.reload179 = load ptr, ptr %.reg2mem173, align 4
  %66 = getelementptr i8, ptr %.reload179, i32 %65
  %.reload197 = load ptr, ptr %.reg2mem191, align 4
  %67 = getelementptr i8, ptr %.reload197, i32 %65
  %68 = load double, ptr %67, align 8
  store double %68, ptr %.reg2mem119, align 8
  %69 = load double, ptr %66, align 8
  store double %69, ptr %.reg2mem117, align 8
  %.reload118 = load double, ptr %.reg2mem117, align 8
  %.reload120 = load double, ptr %.reg2mem119, align 8
  store i32 1, ptr %.reg2mem252, align 4
  store double %.reload120, ptr %.reg2mem254, align 8
  store double %.reload118, ptr %.reg2mem256, align 8
  br label %70

70:                                               ; preds = %._crit_edge6, %63
  %.reload257 = load double, ptr %.reg2mem256, align 8
  %.reload255 = load double, ptr %.reg2mem254, align 8
  %.reload253 = load i32, ptr %.reg2mem252, align 4
  %71 = tail call double @llvm.fmuladd.f64(double %.reload255, double -4.000000e+02, double 8.010000e+02)
  %72 = fdiv double 4.000000e+02, %71
  store double %72, ptr %.reg2mem114, align 8
  %.reload145 = load i32, ptr %.reg2mem132, align 4
  %.reload206 = load ptr, ptr %.reg2mem191, align 4
  %73 = getelementptr inbounds [200 x double], ptr %.reload206, i32 %.reload145, i32 %.reload253
  %.reload116 = load double, ptr %.reg2mem114, align 8
  store double %.reload116, ptr %73, align 8, !tbaa !2
  %.reload131 = load i32, ptr %.reg2mem129, align 4
  %.reload227 = load ptr, ptr %.reg2mem218, align 4
  %74 = getelementptr inbounds [200 x double], ptr %.reload227, i32 %.reload253, i32 %.reload131
  %75 = load double, ptr %74, align 8, !tbaa !2
  %.reload144 = load i32, ptr %.reg2mem132, align 4
  %.reload226 = load ptr, ptr %.reg2mem218, align 4
  %76 = getelementptr inbounds [200 x double], ptr %.reload226, i32 %.reload253, i32 %.reload144
  %77 = load double, ptr %76, align 8, !tbaa !2
  %78 = fmul double %77, -3.990000e+02
  %79 = tail call double @llvm.fmuladd.f64(double %75, double 2.000000e+02, double %78)
  %.reload128 = load i32, ptr %.reg2mem124, align 4
  %.reload225 = load ptr, ptr %.reg2mem218, align 4
  %80 = getelementptr inbounds [200 x double], ptr %.reload225, i32 %.reload253, i32 %.reload128
  %81 = load double, ptr %80, align 8, !tbaa !2
  %82 = tail call double @llvm.fmuladd.f64(double %81, double 2.000000e+02, double %79)
  %83 = tail call double @llvm.fmuladd.f64(double %.reload257, double 4.000000e+02, double %82)
  %84 = fdiv double %83, %71
  store double %84, ptr %.reg2mem111, align 8
  %.reload143 = load i32, ptr %.reg2mem132, align 4
  %.reload188 = load ptr, ptr %.reg2mem173, align 4
  %85 = getelementptr inbounds [200 x double], ptr %.reload188, i32 %.reload143, i32 %.reload253
  %.reload113 = load double, ptr %.reg2mem111, align 8
  store double %.reload113, ptr %85, align 8, !tbaa !2
  %86 = add nuw nsw i32 %.reload253, 1
  store i32 %86, ptr %.reg2mem108, align 4
  %.reload110 = load i32, ptr %.reg2mem108, align 4
  %87 = icmp eq i32 %.reload110, 199
  br i1 %87, label %._crit_edge5, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %70
  %.reload109 = load i32, ptr %.reg2mem108, align 4
  %.reload112 = load double, ptr %.reg2mem111, align 8
  %.reload115 = load double, ptr %.reg2mem114, align 8
  store i32 %.reload109, ptr %.reg2mem252, align 4
  store double %.reload115, ptr %.reg2mem254, align 8
  store double %.reload112, ptr %.reg2mem256, align 8
  br label %70

._crit_edge5:                                     ; preds = %70
  br label %88

88:                                               ; preds = %._crit_edge5, %._crit_edge3
  %.reload142 = load i32, ptr %.reg2mem132, align 4
  %.reload160 = load ptr, ptr %.reg2mem159, align 4
  %89 = getelementptr inbounds [200 x double], ptr %.reload160, i32 0, i32 %.reload142
  store double 1.000000e+00, ptr %89, align 8, !tbaa !2
  %.reload141 = load i32, ptr %.reg2mem132, align 4
  %.reload158 = load ptr, ptr %.reg2mem157, align 4
  %90 = getelementptr [200 x double], ptr %.reload158, i32 0, i32 %.reload141
  store ptr %90, ptr %.reg2mem106, align 4
  store i32 198, ptr %.reg2mem250, align 4
  br label %91

91:                                               ; preds = %._crit_edge7, %88
  %.reload251 = load i32, ptr %.reg2mem250, align 4
  %.reload140 = load i32, ptr %.reg2mem132, align 4
  %.reload205 = load ptr, ptr %.reg2mem191, align 4
  %92 = getelementptr inbounds [200 x double], ptr %.reload205, i32 %.reload140, i32 %.reload251
  %93 = load double, ptr %92, align 8, !tbaa !2
  %.reload107 = load ptr, ptr %.reg2mem106, align 4
  %94 = getelementptr [200 x double], ptr %.reload107, i32 %.reload251
  %95 = load double, ptr %94, align 8, !tbaa !2
  %.reload139 = load i32, ptr %.reg2mem132, align 4
  %.reload187 = load ptr, ptr %.reg2mem173, align 4
  %96 = getelementptr inbounds [200 x double], ptr %.reload187, i32 %.reload139, i32 %.reload251
  %97 = load double, ptr %96, align 8, !tbaa !2
  %98 = tail call double @llvm.fmuladd.f64(double %93, double %95, double %97)
  %.reload138 = load i32, ptr %.reg2mem132, align 4
  %.reload213 = load ptr, ptr %.reg2mem209, align 4
  %99 = getelementptr inbounds [200 x double], ptr %.reload213, i32 %.reload251, i32 %.reload138
  store double %98, ptr %99, align 8, !tbaa !2
  %100 = add nsw i32 %.reload251, -1
  store i32 %100, ptr %.reg2mem104, align 4
  %101 = icmp ugt i32 %.reload251, 1
  br i1 %101, label %._crit_edge7, label %102, !llvm.loop !11

._crit_edge7:                                     ; preds = %91
  %.reload105 = load i32, ptr %.reg2mem104, align 4
  store i32 %.reload105, ptr %.reg2mem250, align 4
  br label %91

102:                                              ; preds = %91
  %.reload127 = load i32, ptr %.reg2mem124, align 4
  %103 = icmp eq i32 %.reload127, 199
  %.reload154 = load i32, ptr %.reg2mem151, align 4
  %104 = add i32 %.reload154, 1
  store i32 %104, ptr %.reg2mem102, align 4
  br i1 %103, label %._crit_edge8, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %102
  %.reload103 = load i32, ptr %.reg2mem102, align 4
  %.reload125 = load i32, ptr %.reg2mem124, align 4
  store i32 %.reload125, ptr %.reg2mem260, align 4
  store i32 %.reload103, ptr %.reg2mem262, align 4
  br label %23

._crit_edge8:                                     ; preds = %102
  store i32 1, ptr %.reg2mem246, align 4
  store i32 0, ptr %.reg2mem248, align 4
  br label %105

105:                                              ; preds = %._crit_edge16, %._crit_edge8
  %.reload249 = load i32, ptr %.reg2mem248, align 4
  %.reload247 = load i32, ptr %.reg2mem246, align 4
  store i32 %.reload249, ptr %.reg2mem98, align 4
  store i32 %.reload247, ptr %.reg2mem81, align 4
  %.reload100 = load i32, ptr %.reg2mem98, align 4
  %106 = mul nuw nsw i32 %.reload100, 1600
  %107 = add i32 %106, 1600
  %.reload196 = load ptr, ptr %.reg2mem191, align 4
  %108 = getelementptr i8, ptr %.reload196, i32 %107
  %109 = add i32 %106, 3192
  %.reload195 = load ptr, ptr %.reg2mem191, align 4
  %110 = getelementptr i8, ptr %.reload195, i32 %109
  %.reload178 = load ptr, ptr %.reg2mem173, align 4
  %111 = getelementptr i8, ptr %.reload178, i32 %107
  %.reload177 = load ptr, ptr %.reg2mem173, align 4
  %112 = getelementptr i8, ptr %.reload177, i32 %109
  %.reload97 = load i32, ptr %.reg2mem81, align 4
  %.reload224 = load ptr, ptr %.reg2mem218, align 4
  %113 = getelementptr inbounds [200 x double], ptr %.reload224, i32 %.reload97
  store ptr %113, ptr %.reg2mem77, align 4
  %.reload80 = load ptr, ptr %.reg2mem77, align 4
  store double 1.000000e+00, ptr %.reload80, align 8, !tbaa !2
  %.reload96 = load i32, ptr %.reg2mem81, align 4
  %.reload204 = load ptr, ptr %.reg2mem191, align 4
  %114 = getelementptr inbounds [200 x double], ptr %.reload204, i32 %.reload96
  store double 0.000000e+00, ptr %114, align 8, !tbaa !2
  %.reload79 = load ptr, ptr %.reg2mem77, align 4
  %115 = load double, ptr %.reload79, align 8, !tbaa !2
  %.reload95 = load i32, ptr %.reg2mem81, align 4
  %.reload186 = load ptr, ptr %.reg2mem173, align 4
  %116 = getelementptr inbounds [200 x double], ptr %.reload186, i32 %.reload95
  store double %115, ptr %116, align 8, !tbaa !2
  %.reload94 = load i32, ptr %.reg2mem81, align 4
  %.reload212 = load ptr, ptr %.reg2mem209, align 4
  %117 = getelementptr [200 x double], ptr %.reload212, i32 %.reload94
  %118 = getelementptr i8, ptr %117, i32 -1600
  store ptr %118, ptr %.reg2mem74, align 4
  %119 = getelementptr inbounds i8, ptr %117, i32 1600
  store ptr %119, ptr %.reg2mem71, align 4
  %120 = icmp ult ptr %108, %112
  %121 = icmp ult ptr %111, %110
  %122 = and i1 %120, %121
  br i1 %122, label %._crit_edge10, label %146

._crit_edge10:                                    ; preds = %105
  store i32 1, ptr %.reg2mem244, align 4
  br label %123

123:                                              ; preds = %._crit_edge12, %._crit_edge10
  %.reload245 = load i32, ptr %.reg2mem244, align 4
  %124 = add nsw i32 %.reload245, -1
  %.reload86 = load i32, ptr %.reg2mem81, align 4
  %.reload194 = load ptr, ptr %.reg2mem191, align 4
  %125 = getelementptr inbounds [200 x double], ptr %.reload194, i32 %.reload86, i32 %124
  %126 = load double, ptr %125, align 8, !tbaa !2
  %127 = tail call double @llvm.fmuladd.f64(double %126, double -2.000000e+02, double 4.010000e+02)
  %128 = fdiv double 2.000000e+02, %127
  %.reload85 = load i32, ptr %.reg2mem81, align 4
  %.reload193 = load ptr, ptr %.reg2mem191, align 4
  %129 = getelementptr inbounds [200 x double], ptr %.reload193, i32 %.reload85, i32 %.reload245
  store double %128, ptr %129, align 8, !tbaa !2
  %.reload75 = load ptr, ptr %.reg2mem74, align 4
  %130 = getelementptr inbounds [200 x double], ptr %.reload75, i32 0, i32 %.reload245
  %131 = load double, ptr %130, align 8, !tbaa !2
  %.reload84 = load i32, ptr %.reg2mem81, align 4
  %.reload210 = load ptr, ptr %.reg2mem209, align 4
  %132 = getelementptr inbounds [200 x double], ptr %.reload210, i32 %.reload84, i32 %.reload245
  %133 = load double, ptr %132, align 8, !tbaa !2
  %134 = fmul double %133, -7.990000e+02
  %135 = tail call double @llvm.fmuladd.f64(double %131, double 4.000000e+02, double %134)
  %.reload72 = load ptr, ptr %.reg2mem71, align 4
  %136 = getelementptr inbounds [200 x double], ptr %.reload72, i32 0, i32 %.reload245
  %137 = load double, ptr %136, align 8, !tbaa !2
  %138 = tail call double @llvm.fmuladd.f64(double %137, double 4.000000e+02, double %135)
  %.reload83 = load i32, ptr %.reg2mem81, align 4
  %.reload176 = load ptr, ptr %.reg2mem173, align 4
  %139 = getelementptr inbounds [200 x double], ptr %.reload176, i32 %.reload83, i32 %124
  %140 = load double, ptr %139, align 8, !tbaa !2
  %141 = tail call double @llvm.fmuladd.f64(double %140, double 2.000000e+02, double %138)
  %142 = fdiv double %141, %127
  %.reload82 = load i32, ptr %.reg2mem81, align 4
  %.reload175 = load ptr, ptr %.reg2mem173, align 4
  %143 = getelementptr inbounds [200 x double], ptr %.reload175, i32 %.reload82, i32 %.reload245
  store double %142, ptr %143, align 8, !tbaa !2
  %144 = add nuw nsw i32 %.reload245, 1
  store i32 %144, ptr %.reg2mem68, align 4
  %.reload70 = load i32, ptr %.reg2mem68, align 4
  %145 = icmp eq i32 %.reload70, 199
  br i1 %145, label %._crit_edge11, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %123
  %.reload69 = load i32, ptr %.reg2mem68, align 4
  store i32 %.reload69, ptr %.reg2mem244, align 4
  br label %123

._crit_edge11:                                    ; preds = %123
  br label %171

146:                                              ; preds = %105
  %.reload99 = load i32, ptr %.reg2mem98, align 4
  %147 = mul nuw nsw i32 %.reload99, 1600
  %148 = add i32 %147, 1600
  %.reload174 = load ptr, ptr %.reg2mem173, align 4
  %149 = getelementptr i8, ptr %.reload174, i32 %148
  %.reload192 = load ptr, ptr %.reg2mem191, align 4
  %150 = getelementptr i8, ptr %.reload192, i32 %148
  %151 = load double, ptr %150, align 8
  store double %151, ptr %.reg2mem66, align 8
  %152 = load double, ptr %149, align 8
  store double %152, ptr %.reg2mem64, align 8
  %.reload65 = load double, ptr %.reg2mem64, align 8
  %.reload67 = load double, ptr %.reg2mem66, align 8
  store i32 1, ptr %.reg2mem238, align 4
  store double %.reload67, ptr %.reg2mem240, align 8
  store double %.reload65, ptr %.reg2mem242, align 8
  br label %153

153:                                              ; preds = %._crit_edge14, %146
  %.reload243 = load double, ptr %.reg2mem242, align 8
  %.reload241 = load double, ptr %.reg2mem240, align 8
  %.reload239 = load i32, ptr %.reg2mem238, align 4
  %154 = tail call double @llvm.fmuladd.f64(double %.reload241, double -2.000000e+02, double 4.010000e+02)
  %155 = fdiv double 2.000000e+02, %154
  store double %155, ptr %.reg2mem61, align 8
  %.reload93 = load i32, ptr %.reg2mem81, align 4
  %.reload203 = load ptr, ptr %.reg2mem191, align 4
  %156 = getelementptr inbounds [200 x double], ptr %.reload203, i32 %.reload93, i32 %.reload239
  %.reload63 = load double, ptr %.reg2mem61, align 8
  store double %.reload63, ptr %156, align 8, !tbaa !2
  %.reload76 = load ptr, ptr %.reg2mem74, align 4
  %157 = getelementptr inbounds [200 x double], ptr %.reload76, i32 0, i32 %.reload239
  %158 = load double, ptr %157, align 8, !tbaa !2
  %.reload92 = load i32, ptr %.reg2mem81, align 4
  %.reload211 = load ptr, ptr %.reg2mem209, align 4
  %159 = getelementptr inbounds [200 x double], ptr %.reload211, i32 %.reload92, i32 %.reload239
  %160 = load double, ptr %159, align 8, !tbaa !2
  %161 = fmul double %160, -7.990000e+02
  %162 = tail call double @llvm.fmuladd.f64(double %158, double 4.000000e+02, double %161)
  %.reload73 = load ptr, ptr %.reg2mem71, align 4
  %163 = getelementptr inbounds [200 x double], ptr %.reload73, i32 0, i32 %.reload239
  %164 = load double, ptr %163, align 8, !tbaa !2
  %165 = tail call double @llvm.fmuladd.f64(double %164, double 4.000000e+02, double %162)
  %166 = tail call double @llvm.fmuladd.f64(double %.reload243, double 2.000000e+02, double %165)
  %167 = fdiv double %166, %154
  store double %167, ptr %.reg2mem58, align 8
  %.reload91 = load i32, ptr %.reg2mem81, align 4
  %.reload185 = load ptr, ptr %.reg2mem173, align 4
  %168 = getelementptr inbounds [200 x double], ptr %.reload185, i32 %.reload91, i32 %.reload239
  %.reload60 = load double, ptr %.reg2mem58, align 8
  store double %.reload60, ptr %168, align 8, !tbaa !2
  %169 = add nuw nsw i32 %.reload239, 1
  store i32 %169, ptr %.reg2mem55, align 4
  %.reload57 = load i32, ptr %.reg2mem55, align 4
  %170 = icmp eq i32 %.reload57, 199
  br i1 %170, label %._crit_edge13, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %153
  %.reload56 = load i32, ptr %.reg2mem55, align 4
  %.reload59 = load double, ptr %.reg2mem58, align 8
  %.reload62 = load double, ptr %.reg2mem61, align 8
  store i32 %.reload56, ptr %.reg2mem238, align 4
  store double %.reload62, ptr %.reg2mem240, align 8
  store double %.reload59, ptr %.reg2mem242, align 8
  br label %153

._crit_edge13:                                    ; preds = %153
  br label %171

171:                                              ; preds = %._crit_edge13, %._crit_edge11
  %.reload78 = load ptr, ptr %.reg2mem77, align 4
  %172 = getelementptr inbounds i8, ptr %.reload78, i32 1592
  store double 1.000000e+00, ptr %172, align 8, !tbaa !2
  store i32 198, ptr %.reg2mem234, align 4
  store double 1.000000e+00, ptr %.reg2mem236, align 8
  br label %173

173:                                              ; preds = %._crit_edge15, %171
  %.reload237 = load double, ptr %.reg2mem236, align 8
  %.reload235 = load i32, ptr %.reg2mem234, align 4
  %.reload90 = load i32, ptr %.reg2mem81, align 4
  %.reload202 = load ptr, ptr %.reg2mem191, align 4
  %174 = getelementptr inbounds [200 x double], ptr %.reload202, i32 %.reload90, i32 %.reload235
  %175 = load double, ptr %174, align 8, !tbaa !2
  %.reload89 = load i32, ptr %.reg2mem81, align 4
  %.reload184 = load ptr, ptr %.reg2mem173, align 4
  %176 = getelementptr inbounds [200 x double], ptr %.reload184, i32 %.reload89, i32 %.reload235
  %177 = load double, ptr %176, align 8, !tbaa !2
  %178 = tail call double @llvm.fmuladd.f64(double %175, double %.reload237, double %177)
  store double %178, ptr %.reg2mem52, align 8
  %.reload88 = load i32, ptr %.reg2mem81, align 4
  %.reload223 = load ptr, ptr %.reg2mem218, align 4
  %179 = getelementptr inbounds [200 x double], ptr %.reload223, i32 %.reload88, i32 %.reload235
  %.reload54 = load double, ptr %.reg2mem52, align 8
  store double %.reload54, ptr %179, align 8, !tbaa !2
  %180 = add nsw i32 %.reload235, -1
  store i32 %180, ptr %.reg2mem50, align 4
  %181 = icmp ugt i32 %.reload235, 1
  br i1 %181, label %._crit_edge15, label %182, !llvm.loop !14

._crit_edge15:                                    ; preds = %173
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  %.reload53 = load double, ptr %.reg2mem52, align 8
  store i32 %.reload51, ptr %.reg2mem234, align 4
  store double %.reload53, ptr %.reg2mem236, align 8
  br label %173

182:                                              ; preds = %173
  %.reload87 = load i32, ptr %.reg2mem81, align 4
  %183 = add nuw nsw i32 %.reload87, 1
  store i32 %183, ptr %.reg2mem47, align 4
  %.reload49 = load i32, ptr %.reg2mem47, align 4
  %184 = icmp eq i32 %.reload49, 199
  %.reload101 = load i32, ptr %.reg2mem98, align 4
  %185 = add i32 %.reload101, 1
  store i32 %185, ptr %.reg2mem45, align 4
  br i1 %184, label %186, label %._crit_edge16, !llvm.loop !15

._crit_edge16:                                    ; preds = %182
  %.reload46 = load i32, ptr %.reg2mem45, align 4
  %.reload48 = load i32, ptr %.reg2mem47, align 4
  store i32 %.reload48, ptr %.reg2mem246, align 4
  store i32 %.reload46, ptr %.reg2mem248, align 4
  br label %105

186:                                              ; preds = %182
  %.reload156 = load i32, ptr %.reg2mem155, align 4
  %187 = add nuw nsw i32 %.reload156, 1
  store i32 %187, ptr %.reg2mem42, align 4
  %.reload44 = load i32, ptr %.reg2mem42, align 4
  %188 = icmp eq i32 %.reload44, 101
  br i1 %188, label %189, label %._crit_edge17, !llvm.loop !16

._crit_edge17:                                    ; preds = %186
  %.reload43 = load i32, ptr %.reg2mem42, align 4
  store i32 %.reload43, ptr %.reg2mem264, align 4
  br label %22

189:                                              ; preds = %186
  %190 = load ptr, ptr @stderr, align 4, !tbaa !17
  store ptr %190, ptr %.reg2mem35, align 4
  %.reload41 = load ptr, ptr %.reg2mem35, align 4
  %191 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload41, ptr noundef nonnull @.str) #3
  %.reload40 = load ptr, ptr %.reg2mem35, align 4
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload40, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem232, align 4
  br label %193

193:                                              ; preds = %._crit_edge20, %189
  %.reload233 = load i32, ptr %.reg2mem232, align 4
  store i32 %.reload233, ptr %.reg2mem31, align 4
  %.reload34 = load i32, ptr %.reg2mem31, align 4
  %194 = mul nuw nsw i32 %.reload34, 200
  store i32 %194, ptr %.reg2mem29, align 4
  store i32 0, ptr %.reg2mem230, align 4
  br label %195

195:                                              ; preds = %._crit_edge19, %193
  %.reload231 = load i32, ptr %.reg2mem230, align 4
  store i32 %.reload231, ptr %.reg2mem25, align 4
  %.reload28 = load i32, ptr %.reg2mem25, align 4
  %.reload30 = load i32, ptr %.reg2mem29, align 4
  %196 = add nuw nsw i32 %.reload28, %.reload30
  %197 = urem i32 %196, 20
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %._crit_edge18

._crit_edge18:                                    ; preds = %195
  br label %201

199:                                              ; preds = %195
  %.reload36 = load ptr, ptr %.reg2mem35, align 4
  %200 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload36, ptr noundef nonnull @.str.3) #3
  br label %201

201:                                              ; preds = %._crit_edge18, %199
  %.reload27 = load i32, ptr %.reg2mem25, align 4
  %.reload33 = load i32, ptr %.reg2mem31, align 4
  %.reload222 = load ptr, ptr %.reg2mem218, align 4
  %202 = getelementptr inbounds [200 x double], ptr %.reload222, i32 %.reload33, i32 %.reload27
  %203 = load double, ptr %202, align 8, !tbaa !2
  %.reload39 = load ptr, ptr %.reg2mem35, align 4
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload39, ptr noundef nonnull @.str.4, double noundef %203) #3
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  %205 = add nuw nsw i32 %.reload26, 1
  store i32 %205, ptr %.reg2mem22, align 4
  %.reload24 = load i32, ptr %.reg2mem22, align 4
  %206 = icmp eq i32 %.reload24, 200
  br i1 %206, label %207, label %._crit_edge19, !llvm.loop !19

._crit_edge19:                                    ; preds = %201
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  store i32 %.reload23, ptr %.reg2mem230, align 4
  br label %195

207:                                              ; preds = %201
  %.reload32 = load i32, ptr %.reg2mem31, align 4
  %208 = add nuw nsw i32 %.reload32, 1
  store i32 %208, ptr %.reg2mem, align 4
  %.reload21 = load i32, ptr %.reg2mem, align 4
  %209 = icmp eq i32 %.reload21, 200
  br i1 %209, label %210, label %._crit_edge20, !llvm.loop !20

._crit_edge20:                                    ; preds = %207
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem232, align 4
  br label %193

210:                                              ; preds = %207
  %.reload38 = load ptr, ptr %.reg2mem35, align 4
  %211 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload38, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload37 = load ptr, ptr %.reg2mem35, align 4
  %212 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload37, ptr noundef nonnull @.str.6) #3
  %.reload229 = load ptr, ptr %.reg2mem218, align 4
  tail call void @free(ptr noundef nonnull %.reload229) #3
  %.reload217 = load ptr, ptr %.reg2mem209, align 4
  tail call void @free(ptr noundef %.reload217) #3
  %.reload208 = load ptr, ptr %.reg2mem191, align 4
  tail call void @free(ptr noundef %.reload208) #3
  %.reload190 = load ptr, ptr %.reg2mem173, align 4
  tail call void @free(ptr noundef %.reload190) #3
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
