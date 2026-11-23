; ModuleID = './polybench-output/wasm/no-phis/heat-3d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/heat-3d/heat-3d.c"
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
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem27 = alloca i32, align 4
  %.reg2mem29 = alloca i32, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem39 = alloca ptr, align 4
  %.reg2mem46 = alloca i32, align 4
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem58 = alloca i32, align 4
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem71 = alloca ptr, align 4
  %.reg2mem73 = alloca ptr, align 4
  %.reg2mem75 = alloca i32, align 4
  %.reg2mem84 = alloca i32, align 4
  %.reg2mem87 = alloca i32, align 4
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem93 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %.reg2mem106 = alloca ptr, align 4
  %.reg2mem108 = alloca ptr, align 4
  %.reg2mem110 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem121 = alloca i32, align 4
  %.reg2mem124 = alloca i32, align 4
  %.reg2mem127 = alloca i32, align 4
  %.reg2mem130 = alloca i32, align 4
  %.reg2mem132 = alloca i32, align 4
  %.reg2mem137 = alloca i32, align 4
  %.reg2mem139 = alloca i32, align 4
  %.reg2mem144 = alloca ptr, align 4
  %.reg2mem153 = alloca ptr, align 4
  %.reg2mem164 = alloca i32, align 4
  %.reg2mem166 = alloca i32, align 4
  %.reg2mem168 = alloca i32, align 4
  %.reg2mem170 = alloca i32, align 4
  %.reg2mem172 = alloca i32, align 4
  %.reg2mem174 = alloca i32, align 4
  %.reg2mem176 = alloca i32, align 4
  %.reg2mem178 = alloca i32, align 4
  %.reg2mem180 = alloca i32, align 4
  %.reg2mem182 = alloca i32, align 4
  %.reg2mem184 = alloca i32, align 4
  %.reg2mem186 = alloca i32, align 4
  %.reg2mem188 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 64000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem153, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 64000, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem144, align 4
  store i32 0, ptr %.reg2mem188, align 4
  br label %5

5:                                                ; preds = %._crit_edge3, %2
  %.reload189 = load i32, ptr %.reg2mem188, align 4
  store i32 %.reload189, ptr %.reg2mem139, align 4
  %.reload143 = load i32, ptr %.reg2mem139, align 4
  %6 = add nuw nsw i32 %.reload143, 40
  store i32 %6, ptr %.reg2mem137, align 4
  store i32 0, ptr %.reg2mem186, align 4
  br label %7

7:                                                ; preds = %._crit_edge1, %5
  %.reload187 = load i32, ptr %.reg2mem186, align 4
  store i32 %.reload187, ptr %.reg2mem132, align 4
  %.reload136 = load i32, ptr %.reg2mem132, align 4
  %.reload138 = load i32, ptr %.reg2mem137, align 4
  %8 = add nuw nsw i32 %.reload138, %.reload136
  store i32 %8, ptr %.reg2mem130, align 4
  store i32 0, ptr %.reg2mem184, align 4
  br label %9

9:                                                ; preds = %._crit_edge, %7
  %.reload185 = load i32, ptr %.reg2mem184, align 4
  %.reload131 = load i32, ptr %.reg2mem130, align 4
  %10 = sub nuw nsw i32 %.reload131, %.reload185
  %11 = uitofp nneg i32 %10 to double
  %12 = fmul double %11, 1.000000e+01
  %13 = fdiv double %12, 4.000000e+01
  %.reload135 = load i32, ptr %.reg2mem132, align 4
  %.reload142 = load i32, ptr %.reg2mem139, align 4
  %.reload152 = load ptr, ptr %.reg2mem144, align 4
  %14 = getelementptr inbounds [40 x [40 x double]], ptr %.reload152, i32 %.reload142, i32 %.reload135, i32 %.reload185
  store double %13, ptr %14, align 8, !tbaa !2
  %.reload134 = load i32, ptr %.reg2mem132, align 4
  %.reload141 = load i32, ptr %.reg2mem139, align 4
  %.reload162 = load ptr, ptr %.reg2mem153, align 4
  %15 = getelementptr inbounds [40 x [40 x double]], ptr %.reload162, i32 %.reload141, i32 %.reload134, i32 %.reload185
  store double %13, ptr %15, align 8, !tbaa !2
  %16 = add nuw nsw i32 %.reload185, 1
  store i32 %16, ptr %.reg2mem127, align 4
  %.reload129 = load i32, ptr %.reg2mem127, align 4
  %17 = icmp eq i32 %.reload129, 40
  br i1 %17, label %18, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %9
  %.reload128 = load i32, ptr %.reg2mem127, align 4
  store i32 %.reload128, ptr %.reg2mem184, align 4
  br label %9

18:                                               ; preds = %9
  %.reload133 = load i32, ptr %.reg2mem132, align 4
  %19 = add nuw nsw i32 %.reload133, 1
  store i32 %19, ptr %.reg2mem124, align 4
  %.reload126 = load i32, ptr %.reg2mem124, align 4
  %20 = icmp eq i32 %.reload126, 40
  br i1 %20, label %21, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %18
  %.reload125 = load i32, ptr %.reg2mem124, align 4
  store i32 %.reload125, ptr %.reg2mem186, align 4
  br label %7

21:                                               ; preds = %18
  %.reload140 = load i32, ptr %.reg2mem139, align 4
  %22 = add nuw nsw i32 %.reload140, 1
  store i32 %22, ptr %.reg2mem121, align 4
  %.reload123 = load i32, ptr %.reg2mem121, align 4
  %23 = icmp eq i32 %.reload123, 40
  br i1 %23, label %._crit_edge2, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %21
  %.reload122 = load i32, ptr %.reg2mem121, align 4
  store i32 %.reload122, ptr %.reg2mem188, align 4
  br label %5

._crit_edge2:                                     ; preds = %21
  store i32 1, ptr %.reg2mem182, align 4
  br label %24

24:                                               ; preds = %._crit_edge11, %._crit_edge2
  %.reload183 = load i32, ptr %.reg2mem182, align 4
  store i32 %.reload183, ptr %.reg2mem119, align 4
  store i32 1, ptr %.reg2mem180, align 4
  br label %25

25:                                               ; preds = %._crit_edge7, %24
  %.reload181 = load i32, ptr %.reg2mem180, align 4
  store i32 %.reload181, ptr %.reg2mem110, align 4
  %.reload118 = load i32, ptr %.reg2mem110, align 4
  %.reload161 = load ptr, ptr %.reg2mem153, align 4
  %26 = getelementptr inbounds [40 x [40 x double]], ptr %.reload161, i32 %.reload118
  %27 = getelementptr inbounds i8, ptr %26, i32 12800
  store ptr %27, ptr %.reg2mem108, align 4
  %28 = getelementptr i8, ptr %26, i32 -12800
  store ptr %28, ptr %.reg2mem106, align 4
  store i32 1, ptr %.reg2mem178, align 4
  br label %29

29:                                               ; preds = %._crit_edge5, %25
  %.reload179 = load i32, ptr %.reg2mem178, align 4
  store i32 %.reload179, ptr %.reg2mem97, align 4
  %.reload105 = load i32, ptr %.reg2mem97, align 4
  %30 = add nuw nsw i32 %.reload105, 1
  store i32 %30, ptr %.reg2mem93, align 4
  %.reload104 = load i32, ptr %.reg2mem97, align 4
  %31 = add nsw i32 %.reload104, -1
  store i32 %31, ptr %.reg2mem91, align 4
  store i32 1, ptr %.reg2mem176, align 4
  br label %32

32:                                               ; preds = %._crit_edge4, %29
  %.reload177 = load i32, ptr %.reg2mem176, align 4
  %.reload103 = load i32, ptr %.reg2mem97, align 4
  %.reload109 = load ptr, ptr %.reg2mem108, align 4
  %33 = getelementptr inbounds [40 x [40 x double]], ptr %.reload109, i32 0, i32 %.reload103, i32 %.reload177
  %34 = load double, ptr %33, align 8, !tbaa !2
  %.reload102 = load i32, ptr %.reg2mem97, align 4
  %.reload117 = load i32, ptr %.reg2mem110, align 4
  %.reload160 = load ptr, ptr %.reg2mem153, align 4
  %35 = getelementptr inbounds [40 x [40 x double]], ptr %.reload160, i32 %.reload117, i32 %.reload102, i32 %.reload177
  %36 = load double, ptr %35, align 8, !tbaa !2
  %37 = tail call double @llvm.fmuladd.f64(double %36, double -2.000000e+00, double %34)
  %.reload101 = load i32, ptr %.reg2mem97, align 4
  %.reload107 = load ptr, ptr %.reg2mem106, align 4
  %38 = getelementptr inbounds [40 x [40 x double]], ptr %.reload107, i32 0, i32 %.reload101, i32 %.reload177
  %39 = load double, ptr %38, align 8, !tbaa !2
  %40 = fadd double %37, %39
  %.reload96 = load i32, ptr %.reg2mem93, align 4
  %.reload116 = load i32, ptr %.reg2mem110, align 4
  %.reload159 = load ptr, ptr %.reg2mem153, align 4
  %41 = getelementptr inbounds [40 x [40 x double]], ptr %.reload159, i32 %.reload116, i32 %.reload96, i32 %.reload177
  %42 = load double, ptr %41, align 8, !tbaa !2
  %43 = tail call double @llvm.fmuladd.f64(double %36, double -2.000000e+00, double %42)
  %.reload92 = load i32, ptr %.reg2mem91, align 4
  %.reload115 = load i32, ptr %.reg2mem110, align 4
  %.reload158 = load ptr, ptr %.reg2mem153, align 4
  %44 = getelementptr inbounds [40 x [40 x double]], ptr %.reload158, i32 %.reload115, i32 %.reload92, i32 %.reload177
  %45 = load double, ptr %44, align 8, !tbaa !2
  %46 = fadd double %43, %45
  %47 = fmul double %46, 1.250000e-01
  %48 = tail call double @llvm.fmuladd.f64(double %40, double 1.250000e-01, double %47)
  %49 = add nuw nsw i32 %.reload177, 1
  store i32 %49, ptr %.reg2mem87, align 4
  %.reload90 = load i32, ptr %.reg2mem87, align 4
  %.reload100 = load i32, ptr %.reg2mem97, align 4
  %.reload114 = load i32, ptr %.reg2mem110, align 4
  %.reload157 = load ptr, ptr %.reg2mem153, align 4
  %50 = getelementptr inbounds [40 x [40 x double]], ptr %.reload157, i32 %.reload114, i32 %.reload100, i32 %.reload90
  %51 = load double, ptr %50, align 8, !tbaa !2
  %52 = tail call double @llvm.fmuladd.f64(double %36, double -2.000000e+00, double %51)
  %53 = add nsw i32 %.reload177, -1
  %.reload99 = load i32, ptr %.reg2mem97, align 4
  %.reload113 = load i32, ptr %.reg2mem110, align 4
  %.reload156 = load ptr, ptr %.reg2mem153, align 4
  %54 = getelementptr inbounds [40 x [40 x double]], ptr %.reload156, i32 %.reload113, i32 %.reload99, i32 %53
  %55 = load double, ptr %54, align 8, !tbaa !2
  %56 = fadd double %52, %55
  %57 = tail call double @llvm.fmuladd.f64(double %56, double 1.250000e-01, double %48)
  %58 = fadd double %36, %57
  %.reload98 = load i32, ptr %.reg2mem97, align 4
  %.reload112 = load i32, ptr %.reg2mem110, align 4
  %.reload151 = load ptr, ptr %.reg2mem144, align 4
  %59 = getelementptr inbounds [40 x [40 x double]], ptr %.reload151, i32 %.reload112, i32 %.reload98, i32 %.reload177
  store double %58, ptr %59, align 8, !tbaa !2
  %.reload89 = load i32, ptr %.reg2mem87, align 4
  %60 = icmp eq i32 %.reload89, 39
  br i1 %60, label %61, label %._crit_edge4, !llvm.loop !11

._crit_edge4:                                     ; preds = %32
  %.reload88 = load i32, ptr %.reg2mem87, align 4
  store i32 %.reload88, ptr %.reg2mem176, align 4
  br label %32

61:                                               ; preds = %32
  %.reload95 = load i32, ptr %.reg2mem93, align 4
  %62 = icmp eq i32 %.reload95, 39
  br i1 %62, label %63, label %._crit_edge5, !llvm.loop !12

._crit_edge5:                                     ; preds = %61
  %.reload94 = load i32, ptr %.reg2mem93, align 4
  store i32 %.reload94, ptr %.reg2mem178, align 4
  br label %29

63:                                               ; preds = %61
  %.reload111 = load i32, ptr %.reg2mem110, align 4
  %64 = add nuw nsw i32 %.reload111, 1
  store i32 %64, ptr %.reg2mem84, align 4
  %.reload86 = load i32, ptr %.reg2mem84, align 4
  %65 = icmp eq i32 %.reload86, 39
  br i1 %65, label %._crit_edge6, label %._crit_edge7, !llvm.loop !13

._crit_edge7:                                     ; preds = %63
  %.reload85 = load i32, ptr %.reg2mem84, align 4
  store i32 %.reload85, ptr %.reg2mem180, align 4
  br label %25

._crit_edge6:                                     ; preds = %63
  store i32 1, ptr %.reg2mem174, align 4
  br label %66

66:                                               ; preds = %._crit_edge10, %._crit_edge6
  %.reload175 = load i32, ptr %.reg2mem174, align 4
  store i32 %.reload175, ptr %.reg2mem75, align 4
  %.reload83 = load i32, ptr %.reg2mem75, align 4
  %.reload150 = load ptr, ptr %.reg2mem144, align 4
  %67 = getelementptr inbounds [40 x [40 x double]], ptr %.reload150, i32 %.reload83
  %68 = getelementptr inbounds i8, ptr %67, i32 12800
  store ptr %68, ptr %.reg2mem73, align 4
  %69 = getelementptr i8, ptr %67, i32 -12800
  store ptr %69, ptr %.reg2mem71, align 4
  store i32 1, ptr %.reg2mem172, align 4
  br label %70

70:                                               ; preds = %._crit_edge9, %66
  %.reload173 = load i32, ptr %.reg2mem172, align 4
  store i32 %.reload173, ptr %.reg2mem62, align 4
  %.reload70 = load i32, ptr %.reg2mem62, align 4
  %71 = add nuw nsw i32 %.reload70, 1
  store i32 %71, ptr %.reg2mem58, align 4
  %.reload69 = load i32, ptr %.reg2mem62, align 4
  %72 = add nsw i32 %.reload69, -1
  store i32 %72, ptr %.reg2mem56, align 4
  store i32 1, ptr %.reg2mem170, align 4
  br label %73

73:                                               ; preds = %._crit_edge8, %70
  %.reload171 = load i32, ptr %.reg2mem170, align 4
  %.reload68 = load i32, ptr %.reg2mem62, align 4
  %.reload74 = load ptr, ptr %.reg2mem73, align 4
  %74 = getelementptr inbounds [40 x [40 x double]], ptr %.reload74, i32 0, i32 %.reload68, i32 %.reload171
  %75 = load double, ptr %74, align 8, !tbaa !2
  %.reload67 = load i32, ptr %.reg2mem62, align 4
  %.reload82 = load i32, ptr %.reg2mem75, align 4
  %.reload149 = load ptr, ptr %.reg2mem144, align 4
  %76 = getelementptr inbounds [40 x [40 x double]], ptr %.reload149, i32 %.reload82, i32 %.reload67, i32 %.reload171
  %77 = load double, ptr %76, align 8, !tbaa !2
  %78 = tail call double @llvm.fmuladd.f64(double %77, double -2.000000e+00, double %75)
  %.reload66 = load i32, ptr %.reg2mem62, align 4
  %.reload72 = load ptr, ptr %.reg2mem71, align 4
  %79 = getelementptr inbounds [40 x [40 x double]], ptr %.reload72, i32 0, i32 %.reload66, i32 %.reload171
  %80 = load double, ptr %79, align 8, !tbaa !2
  %81 = fadd double %78, %80
  %.reload61 = load i32, ptr %.reg2mem58, align 4
  %.reload81 = load i32, ptr %.reg2mem75, align 4
  %.reload148 = load ptr, ptr %.reg2mem144, align 4
  %82 = getelementptr inbounds [40 x [40 x double]], ptr %.reload148, i32 %.reload81, i32 %.reload61, i32 %.reload171
  %83 = load double, ptr %82, align 8, !tbaa !2
  %84 = tail call double @llvm.fmuladd.f64(double %77, double -2.000000e+00, double %83)
  %.reload57 = load i32, ptr %.reg2mem56, align 4
  %.reload80 = load i32, ptr %.reg2mem75, align 4
  %.reload147 = load ptr, ptr %.reg2mem144, align 4
  %85 = getelementptr inbounds [40 x [40 x double]], ptr %.reload147, i32 %.reload80, i32 %.reload57, i32 %.reload171
  %86 = load double, ptr %85, align 8, !tbaa !2
  %87 = fadd double %84, %86
  %88 = fmul double %87, 1.250000e-01
  %89 = tail call double @llvm.fmuladd.f64(double %81, double 1.250000e-01, double %88)
  %90 = add nuw nsw i32 %.reload171, 1
  store i32 %90, ptr %.reg2mem52, align 4
  %.reload55 = load i32, ptr %.reg2mem52, align 4
  %.reload65 = load i32, ptr %.reg2mem62, align 4
  %.reload79 = load i32, ptr %.reg2mem75, align 4
  %.reload146 = load ptr, ptr %.reg2mem144, align 4
  %91 = getelementptr inbounds [40 x [40 x double]], ptr %.reload146, i32 %.reload79, i32 %.reload65, i32 %.reload55
  %92 = load double, ptr %91, align 8, !tbaa !2
  %93 = tail call double @llvm.fmuladd.f64(double %77, double -2.000000e+00, double %92)
  %94 = add nsw i32 %.reload171, -1
  %.reload64 = load i32, ptr %.reg2mem62, align 4
  %.reload78 = load i32, ptr %.reg2mem75, align 4
  %.reload145 = load ptr, ptr %.reg2mem144, align 4
  %95 = getelementptr inbounds [40 x [40 x double]], ptr %.reload145, i32 %.reload78, i32 %.reload64, i32 %94
  %96 = load double, ptr %95, align 8, !tbaa !2
  %97 = fadd double %93, %96
  %98 = tail call double @llvm.fmuladd.f64(double %97, double 1.250000e-01, double %89)
  %99 = fadd double %77, %98
  %.reload63 = load i32, ptr %.reg2mem62, align 4
  %.reload77 = load i32, ptr %.reg2mem75, align 4
  %.reload155 = load ptr, ptr %.reg2mem153, align 4
  %100 = getelementptr inbounds [40 x [40 x double]], ptr %.reload155, i32 %.reload77, i32 %.reload63, i32 %.reload171
  store double %99, ptr %100, align 8, !tbaa !2
  %.reload54 = load i32, ptr %.reg2mem52, align 4
  %101 = icmp eq i32 %.reload54, 39
  br i1 %101, label %102, label %._crit_edge8, !llvm.loop !14

._crit_edge8:                                     ; preds = %73
  %.reload53 = load i32, ptr %.reg2mem52, align 4
  store i32 %.reload53, ptr %.reg2mem170, align 4
  br label %73

102:                                              ; preds = %73
  %.reload60 = load i32, ptr %.reg2mem58, align 4
  %103 = icmp eq i32 %.reload60, 39
  br i1 %103, label %104, label %._crit_edge9, !llvm.loop !15

._crit_edge9:                                     ; preds = %102
  %.reload59 = load i32, ptr %.reg2mem58, align 4
  store i32 %.reload59, ptr %.reg2mem172, align 4
  br label %70

104:                                              ; preds = %102
  %.reload76 = load i32, ptr %.reg2mem75, align 4
  %105 = add nuw nsw i32 %.reload76, 1
  store i32 %105, ptr %.reg2mem49, align 4
  %.reload51 = load i32, ptr %.reg2mem49, align 4
  %106 = icmp eq i32 %.reload51, 39
  br i1 %106, label %107, label %._crit_edge10, !llvm.loop !16

._crit_edge10:                                    ; preds = %104
  %.reload50 = load i32, ptr %.reg2mem49, align 4
  store i32 %.reload50, ptr %.reg2mem174, align 4
  br label %66

107:                                              ; preds = %104
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  %108 = add nuw nsw i32 %.reload120, 1
  store i32 %108, ptr %.reg2mem46, align 4
  %.reload48 = load i32, ptr %.reg2mem46, align 4
  %109 = icmp eq i32 %.reload48, 101
  br i1 %109, label %110, label %._crit_edge11, !llvm.loop !17

._crit_edge11:                                    ; preds = %107
  %.reload47 = load i32, ptr %.reg2mem46, align 4
  store i32 %.reload47, ptr %.reg2mem182, align 4
  br label %24

110:                                              ; preds = %107
  %111 = load ptr, ptr @stderr, align 4, !tbaa !18
  store ptr %111, ptr %.reg2mem39, align 4
  %.reload45 = load ptr, ptr %.reg2mem39, align 4
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload45, ptr noundef nonnull @.str) #3
  %.reload44 = load ptr, ptr %.reg2mem39, align 4
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload44, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem168, align 4
  br label %114

114:                                              ; preds = %._crit_edge15, %110
  %.reload169 = load i32, ptr %.reg2mem168, align 4
  store i32 %.reload169, ptr %.reg2mem35, align 4
  %.reload38 = load i32, ptr %.reg2mem35, align 4
  %115 = mul nuw nsw i32 %.reload38, 1600
  store i32 %115, ptr %.reg2mem33, align 4
  store i32 0, ptr %.reg2mem166, align 4
  br label %116

116:                                              ; preds = %._crit_edge14, %114
  %.reload167 = load i32, ptr %.reg2mem166, align 4
  store i32 %.reload167, ptr %.reg2mem29, align 4
  %.reload32 = load i32, ptr %.reg2mem29, align 4
  %117 = mul nuw nsw i32 %.reload32, 40
  %.reload34 = load i32, ptr %.reg2mem33, align 4
  %118 = add nuw nsw i32 %117, %.reload34
  store i32 %118, ptr %.reg2mem27, align 4
  store i32 0, ptr %.reg2mem164, align 4
  br label %119

119:                                              ; preds = %._crit_edge13, %116
  %.reload165 = load i32, ptr %.reg2mem164, align 4
  store i32 %.reload165, ptr %.reg2mem23, align 4
  %.reload26 = load i32, ptr %.reg2mem23, align 4
  %.reload28 = load i32, ptr %.reg2mem27, align 4
  %120 = add nuw nsw i32 %.reload28, %.reload26
  %121 = urem i32 %120, 20
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %._crit_edge12

._crit_edge12:                                    ; preds = %119
  br label %125

123:                                              ; preds = %119
  %.reload40 = load ptr, ptr %.reg2mem39, align 4
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload40, ptr noundef nonnull @.str.3) #3
  br label %125

125:                                              ; preds = %._crit_edge12, %123
  %.reload25 = load i32, ptr %.reg2mem23, align 4
  %.reload31 = load i32, ptr %.reg2mem29, align 4
  %.reload37 = load i32, ptr %.reg2mem35, align 4
  %.reload154 = load ptr, ptr %.reg2mem153, align 4
  %126 = getelementptr inbounds [40 x [40 x double]], ptr %.reload154, i32 %.reload37, i32 %.reload31, i32 %.reload25
  %127 = load double, ptr %126, align 8, !tbaa !2
  %.reload43 = load ptr, ptr %.reg2mem39, align 4
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload43, ptr noundef nonnull @.str.4, double noundef %127) #3
  %.reload24 = load i32, ptr %.reg2mem23, align 4
  %129 = add nuw nsw i32 %.reload24, 1
  store i32 %129, ptr %.reg2mem20, align 4
  %.reload22 = load i32, ptr %.reg2mem20, align 4
  %130 = icmp eq i32 %.reload22, 40
  br i1 %130, label %131, label %._crit_edge13, !llvm.loop !20

._crit_edge13:                                    ; preds = %125
  %.reload21 = load i32, ptr %.reg2mem20, align 4
  store i32 %.reload21, ptr %.reg2mem164, align 4
  br label %119

131:                                              ; preds = %125
  %.reload30 = load i32, ptr %.reg2mem29, align 4
  %132 = add nuw nsw i32 %.reload30, 1
  store i32 %132, ptr %.reg2mem17, align 4
  %.reload19 = load i32, ptr %.reg2mem17, align 4
  %133 = icmp eq i32 %.reload19, 40
  br i1 %133, label %134, label %._crit_edge14, !llvm.loop !21

._crit_edge14:                                    ; preds = %131
  %.reload18 = load i32, ptr %.reg2mem17, align 4
  store i32 %.reload18, ptr %.reg2mem166, align 4
  br label %116

134:                                              ; preds = %131
  %.reload36 = load i32, ptr %.reg2mem35, align 4
  %135 = add nuw nsw i32 %.reload36, 1
  store i32 %135, ptr %.reg2mem, align 4
  %.reload16 = load i32, ptr %.reg2mem, align 4
  %136 = icmp eq i32 %.reload16, 40
  br i1 %136, label %137, label %._crit_edge15, !llvm.loop !22

._crit_edge15:                                    ; preds = %134
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem168, align 4
  br label %114

137:                                              ; preds = %134
  %.reload42 = load ptr, ptr %.reg2mem39, align 4
  %138 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload42, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload41 = load ptr, ptr %.reg2mem39, align 4
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload41, ptr noundef nonnull @.str.6) #3
  %.reload163 = load ptr, ptr %.reg2mem153, align 4
  tail call void @free(ptr noundef nonnull %.reload163) #3
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
!22 = distinct !{!22, !7, !8}
