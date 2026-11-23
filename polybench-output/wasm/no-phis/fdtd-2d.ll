; ModuleID = './polybench-output/wasm/no-phis/fdtd-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/fdtd-2d/fdtd-2d.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem28 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem34 = alloca i32, align 4
  %.reg2mem38 = alloca i32, align 4
  %.reg2mem41 = alloca i32, align 4
  %.reg2mem44 = alloca i32, align 4
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem54 = alloca i32, align 4
  %.reg2mem57 = alloca i32, align 4
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem64 = alloca i32, align 4
  %.reg2mem66 = alloca i32, align 4
  %.reg2mem70 = alloca ptr, align 4
  %.reg2mem85 = alloca i32, align 4
  %.reg2mem88 = alloca i32, align 4
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem95 = alloca i32, align 4
  %.reg2mem102 = alloca i32, align 4
  %.reg2mem105 = alloca i32, align 4
  %.reg2mem108 = alloca i32, align 4
  %.reg2mem113 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem124 = alloca i32, align 4
  %.reg2mem127 = alloca double, align 8
  %.reg2mem129 = alloca i32, align 4
  %.reg2mem132 = alloca ptr, align 4
  %.reg2mem134 = alloca ptr, align 4
  %.reg2mem136 = alloca i32, align 4
  %.reg2mem139 = alloca i32, align 4
  %.reg2mem143 = alloca i32, align 4
  %.reg2mem151 = alloca i32, align 4
  %.reg2mem154 = alloca ptr, align 4
  %.reg2mem158 = alloca ptr, align 4
  %.reg2mem167 = alloca ptr, align 4
  %.reg2mem175 = alloca ptr, align 4
  %.reg2mem182 = alloca i32, align 4
  %.reg2mem184 = alloca i32, align 4
  %.reg2mem186 = alloca i32, align 4
  %.reg2mem188 = alloca i32, align 4
  %.reg2mem190 = alloca i32, align 4
  %.reg2mem192 = alloca i32, align 4
  %.reg2mem194 = alloca i32, align 4
  %.reg2mem196 = alloca i32, align 4
  %.reg2mem198 = alloca i32, align 4
  %.reg2mem200 = alloca i32, align 4
  %.reg2mem202 = alloca i32, align 4
  %.reg2mem204 = alloca i32, align 4
  %.reg2mem206 = alloca i32, align 4
  %.reg2mem208 = alloca i32, align 4
  %.reg2mem210 = alloca i32, align 4
  %.reg2mem212 = alloca i32, align 4
  %.reg2mem214 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem175, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem167, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem158, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 100, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem154, align 4
  store i32 0, ptr %.reg2mem214, align 4
  br label %7

7:                                                ; preds = %._crit_edge1, %2
  %.reload215 = load i32, ptr %.reg2mem214, align 4
  %8 = uitofp nneg i32 %.reload215 to double
  %.reload156 = load ptr, ptr %.reg2mem154, align 4
  %9 = getelementptr inbounds double, ptr %.reload156, i32 %.reload215
  store double %8, ptr %9, align 8, !tbaa !2
  %10 = add nuw nsw i32 %.reload215, 1
  store i32 %10, ptr %.reg2mem151, align 4
  %.reload153 = load i32, ptr %.reg2mem151, align 4
  %11 = icmp eq i32 %.reload153, 100
  br i1 %11, label %._crit_edge, label %._crit_edge1, !llvm.loop !6

._crit_edge1:                                     ; preds = %7
  %.reload152 = load i32, ptr %.reg2mem151, align 4
  store i32 %.reload152, ptr %.reg2mem214, align 4
  br label %7

._crit_edge:                                      ; preds = %7
  store i32 0, ptr %.reg2mem212, align 4
  br label %12

12:                                               ; preds = %._crit_edge3, %._crit_edge
  %.reload213 = load i32, ptr %.reg2mem212, align 4
  store i32 %.reload213, ptr %.reg2mem143, align 4
  store i32 0, ptr %.reg2mem210, align 4
  br label %13

13:                                               ; preds = %._crit_edge2, %12
  %.reload211 = load i32, ptr %.reg2mem210, align 4
  %14 = add nuw nsw i32 %.reload211, 1
  store i32 %14, ptr %.reg2mem139, align 4
  %.reload142 = load i32, ptr %.reg2mem139, align 4
  %.reload150 = load i32, ptr %.reg2mem143, align 4
  %15 = mul nuw nsw i32 %.reload142, %.reload150
  %16 = uitofp nneg i32 %15 to double
  %17 = fdiv double %16, 2.000000e+02
  %.reload149 = load i32, ptr %.reg2mem143, align 4
  %.reload180 = load ptr, ptr %.reg2mem175, align 4
  %18 = getelementptr inbounds [240 x double], ptr %.reload180, i32 %.reload149, i32 %.reload211
  store double %17, ptr %18, align 8, !tbaa !2
  %19 = add nuw nsw i32 %.reload211, 2
  %.reload148 = load i32, ptr %.reg2mem143, align 4
  %20 = mul nuw nsw i32 %19, %.reload148
  %21 = uitofp nneg i32 %20 to double
  %22 = fdiv double %21, 2.400000e+02
  %.reload147 = load i32, ptr %.reg2mem143, align 4
  %.reload173 = load ptr, ptr %.reg2mem167, align 4
  %23 = getelementptr inbounds [240 x double], ptr %.reload173, i32 %.reload147, i32 %.reload211
  store double %22, ptr %23, align 8, !tbaa !2
  %24 = add nuw nsw i32 %.reload211, 3
  %.reload146 = load i32, ptr %.reg2mem143, align 4
  %25 = mul nuw nsw i32 %24, %.reload146
  %26 = uitofp nneg i32 %25 to double
  %27 = fdiv double %26, 2.000000e+02
  %.reload145 = load i32, ptr %.reg2mem143, align 4
  %.reload165 = load ptr, ptr %.reg2mem158, align 4
  %28 = getelementptr inbounds [240 x double], ptr %.reload165, i32 %.reload145, i32 %.reload211
  store double %27, ptr %28, align 8, !tbaa !2
  %.reload141 = load i32, ptr %.reg2mem139, align 4
  %29 = icmp eq i32 %.reload141, 240
  br i1 %29, label %30, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %13
  %.reload140 = load i32, ptr %.reg2mem139, align 4
  store i32 %.reload140, ptr %.reg2mem210, align 4
  br label %13

30:                                               ; preds = %13
  %.reload144 = load i32, ptr %.reg2mem143, align 4
  %31 = add nuw nsw i32 %.reload144, 1
  store i32 %31, ptr %.reg2mem136, align 4
  %.reload138 = load i32, ptr %.reg2mem136, align 4
  %32 = icmp eq i32 %.reload138, 200
  br i1 %32, label %33, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %30
  %.reload137 = load i32, ptr %.reg2mem136, align 4
  store i32 %.reload137, ptr %.reg2mem212, align 4
  br label %12

33:                                               ; preds = %30
  %.reload164 = load ptr, ptr %.reg2mem158, align 4
  %34 = getelementptr i8, ptr %.reload164, i32 -1920
  store ptr %34, ptr %.reg2mem134, align 4
  %.reload172 = load ptr, ptr %.reg2mem167, align 4
  %35 = getelementptr inbounds i8, ptr %.reload172, i32 1920
  store ptr %35, ptr %.reg2mem132, align 4
  store i32 0, ptr %.reg2mem208, align 4
  br label %36

36:                                               ; preds = %._crit_edge14, %33
  %.reload209 = load i32, ptr %.reg2mem208, align 4
  store i32 %.reload209, ptr %.reg2mem129, align 4
  %.reload131 = load i32, ptr %.reg2mem129, align 4
  %.reload155 = load ptr, ptr %.reg2mem154, align 4
  %37 = getelementptr inbounds double, ptr %.reload155, i32 %.reload131
  %38 = load double, ptr %37, align 8, !tbaa !2
  store double %38, ptr %.reg2mem127, align 8
  store i32 0, ptr %.reg2mem206, align 4
  br label %39

39:                                               ; preds = %._crit_edge5, %36
  %.reload207 = load i32, ptr %.reg2mem206, align 4
  %.reload171 = load ptr, ptr %.reg2mem167, align 4
  %40 = getelementptr inbounds [240 x double], ptr %.reload171, i32 0, i32 %.reload207
  %.reload128 = load double, ptr %.reg2mem127, align 8
  store double %.reload128, ptr %40, align 8, !tbaa !2
  %41 = add nuw nsw i32 %.reload207, 1
  store i32 %41, ptr %.reg2mem124, align 4
  %.reload126 = load i32, ptr %.reg2mem124, align 4
  %42 = icmp eq i32 %.reload126, 240
  br i1 %42, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %39
  %.reload125 = load i32, ptr %.reg2mem124, align 4
  store i32 %.reload125, ptr %.reg2mem206, align 4
  br label %39

._crit_edge4:                                     ; preds = %39
  store i32 1, ptr %.reg2mem204, align 4
  br label %43

43:                                               ; preds = %._crit_edge8, %._crit_edge4
  %.reload205 = load i32, ptr %.reg2mem204, align 4
  store i32 %.reload205, ptr %.reg2mem119, align 4
  store i32 0, ptr %.reg2mem202, align 4
  br label %44

44:                                               ; preds = %._crit_edge6, %43
  %.reload203 = load i32, ptr %.reg2mem202, align 4
  %.reload123 = load i32, ptr %.reg2mem119, align 4
  %.reload170 = load ptr, ptr %.reg2mem167, align 4
  %45 = getelementptr inbounds [240 x double], ptr %.reload170, i32 %.reload123, i32 %.reload203
  %46 = load double, ptr %45, align 8, !tbaa !2
  %.reload122 = load i32, ptr %.reg2mem119, align 4
  %.reload163 = load ptr, ptr %.reg2mem158, align 4
  %47 = getelementptr inbounds [240 x double], ptr %.reload163, i32 %.reload122, i32 %.reload203
  %48 = load double, ptr %47, align 8, !tbaa !2
  %.reload121 = load i32, ptr %.reg2mem119, align 4
  %.reload135 = load ptr, ptr %.reg2mem134, align 4
  %49 = getelementptr nusw [240 x double], ptr %.reload135, i32 %.reload121, i32 %.reload203
  %50 = load double, ptr %49, align 8, !tbaa !2
  %51 = fsub double %48, %50
  %52 = tail call double @llvm.fmuladd.f64(double %51, double -5.000000e-01, double %46)
  store double %52, ptr %45, align 8, !tbaa !2
  %53 = add nuw nsw i32 %.reload203, 1
  store i32 %53, ptr %.reg2mem116, align 4
  %.reload118 = load i32, ptr %.reg2mem116, align 4
  %54 = icmp eq i32 %.reload118, 240
  br i1 %54, label %55, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %44
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  store i32 %.reload117, ptr %.reg2mem202, align 4
  br label %44

55:                                               ; preds = %44
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  %56 = add nuw nsw i32 %.reload120, 1
  store i32 %56, ptr %.reg2mem113, align 4
  %.reload115 = load i32, ptr %.reg2mem113, align 4
  %57 = icmp eq i32 %.reload115, 200
  br i1 %57, label %._crit_edge7, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %55
  %.reload114 = load i32, ptr %.reg2mem113, align 4
  store i32 %.reload114, ptr %.reg2mem204, align 4
  br label %43

._crit_edge7:                                     ; preds = %55
  store i32 0, ptr %.reg2mem200, align 4
  br label %58

58:                                               ; preds = %._crit_edge11, %._crit_edge7
  %.reload201 = load i32, ptr %.reg2mem200, align 4
  store i32 %.reload201, ptr %.reg2mem108, align 4
  store i32 1, ptr %.reg2mem198, align 4
  br label %59

59:                                               ; preds = %._crit_edge9, %58
  %.reload199 = load i32, ptr %.reg2mem198, align 4
  %.reload112 = load i32, ptr %.reg2mem108, align 4
  %.reload179 = load ptr, ptr %.reg2mem175, align 4
  %60 = getelementptr inbounds [240 x double], ptr %.reload179, i32 %.reload112, i32 %.reload199
  %61 = load double, ptr %60, align 8, !tbaa !2
  %.reload111 = load i32, ptr %.reg2mem108, align 4
  %.reload162 = load ptr, ptr %.reg2mem158, align 4
  %62 = getelementptr inbounds [240 x double], ptr %.reload162, i32 %.reload111, i32 %.reload199
  %63 = load double, ptr %62, align 8, !tbaa !2
  %64 = add nsw i32 %.reload199, -1
  %.reload110 = load i32, ptr %.reg2mem108, align 4
  %.reload161 = load ptr, ptr %.reg2mem158, align 4
  %65 = getelementptr inbounds [240 x double], ptr %.reload161, i32 %.reload110, i32 %64
  %66 = load double, ptr %65, align 8, !tbaa !2
  %67 = fsub double %63, %66
  %68 = tail call double @llvm.fmuladd.f64(double %67, double -5.000000e-01, double %61)
  store double %68, ptr %60, align 8, !tbaa !2
  %69 = add nuw nsw i32 %.reload199, 1
  store i32 %69, ptr %.reg2mem105, align 4
  %.reload107 = load i32, ptr %.reg2mem105, align 4
  %70 = icmp eq i32 %.reload107, 240
  br i1 %70, label %71, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %59
  %.reload106 = load i32, ptr %.reg2mem105, align 4
  store i32 %.reload106, ptr %.reg2mem198, align 4
  br label %59

71:                                               ; preds = %59
  %.reload109 = load i32, ptr %.reg2mem108, align 4
  %72 = add nuw nsw i32 %.reload109, 1
  store i32 %72, ptr %.reg2mem102, align 4
  %.reload104 = load i32, ptr %.reg2mem102, align 4
  %73 = icmp eq i32 %.reload104, 200
  br i1 %73, label %._crit_edge10, label %._crit_edge11, !llvm.loop !15

._crit_edge11:                                    ; preds = %71
  %.reload103 = load i32, ptr %.reg2mem102, align 4
  store i32 %.reload103, ptr %.reg2mem200, align 4
  br label %58

._crit_edge10:                                    ; preds = %71
  store i32 0, ptr %.reg2mem196, align 4
  br label %74

74:                                               ; preds = %._crit_edge13, %._crit_edge10
  %.reload197 = load i32, ptr %.reg2mem196, align 4
  store i32 %.reload197, ptr %.reg2mem95, align 4
  store i32 0, ptr %.reg2mem194, align 4
  br label %75

75:                                               ; preds = %._crit_edge12, %74
  %.reload195 = load i32, ptr %.reg2mem194, align 4
  %.reload101 = load i32, ptr %.reg2mem95, align 4
  %.reload160 = load ptr, ptr %.reg2mem158, align 4
  %76 = getelementptr inbounds [240 x double], ptr %.reload160, i32 %.reload101, i32 %.reload195
  %77 = load double, ptr %76, align 8, !tbaa !2
  %78 = add nuw nsw i32 %.reload195, 1
  store i32 %78, ptr %.reg2mem91, align 4
  %.reload94 = load i32, ptr %.reg2mem91, align 4
  %.reload100 = load i32, ptr %.reg2mem95, align 4
  %.reload178 = load ptr, ptr %.reg2mem175, align 4
  %79 = getelementptr inbounds [240 x double], ptr %.reload178, i32 %.reload100, i32 %.reload94
  %80 = load double, ptr %79, align 8, !tbaa !2
  %.reload99 = load i32, ptr %.reg2mem95, align 4
  %.reload177 = load ptr, ptr %.reg2mem175, align 4
  %81 = getelementptr inbounds [240 x double], ptr %.reload177, i32 %.reload99, i32 %.reload195
  %82 = load double, ptr %81, align 8, !tbaa !2
  %83 = fsub double %80, %82
  %.reload98 = load i32, ptr %.reg2mem95, align 4
  %.reload133 = load ptr, ptr %.reg2mem132, align 4
  %84 = getelementptr inbounds [240 x double], ptr %.reload133, i32 %.reload98, i32 %.reload195
  %85 = load double, ptr %84, align 8, !tbaa !2
  %86 = fadd double %83, %85
  %.reload97 = load i32, ptr %.reg2mem95, align 4
  %.reload169 = load ptr, ptr %.reg2mem167, align 4
  %87 = getelementptr inbounds [240 x double], ptr %.reload169, i32 %.reload97, i32 %.reload195
  %88 = load double, ptr %87, align 8, !tbaa !2
  %89 = fsub double %86, %88
  %90 = tail call double @llvm.fmuladd.f64(double %89, double 0xBFE6666666666666, double %77)
  store double %90, ptr %76, align 8, !tbaa !2
  %.reload93 = load i32, ptr %.reg2mem91, align 4
  %91 = icmp eq i32 %.reload93, 239
  br i1 %91, label %92, label %._crit_edge12, !llvm.loop !16

._crit_edge12:                                    ; preds = %75
  %.reload92 = load i32, ptr %.reg2mem91, align 4
  store i32 %.reload92, ptr %.reg2mem194, align 4
  br label %75

92:                                               ; preds = %75
  %.reload96 = load i32, ptr %.reg2mem95, align 4
  %93 = add nuw nsw i32 %.reload96, 1
  store i32 %93, ptr %.reg2mem88, align 4
  %.reload90 = load i32, ptr %.reg2mem88, align 4
  %94 = icmp eq i32 %.reload90, 199
  br i1 %94, label %95, label %._crit_edge13, !llvm.loop !17

._crit_edge13:                                    ; preds = %92
  %.reload89 = load i32, ptr %.reg2mem88, align 4
  store i32 %.reload89, ptr %.reg2mem196, align 4
  br label %74

95:                                               ; preds = %92
  %.reload130 = load i32, ptr %.reg2mem129, align 4
  %96 = add nuw nsw i32 %.reload130, 1
  store i32 %96, ptr %.reg2mem85, align 4
  %.reload87 = load i32, ptr %.reg2mem85, align 4
  %97 = icmp eq i32 %.reload87, 100
  br i1 %97, label %98, label %._crit_edge14, !llvm.loop !18

._crit_edge14:                                    ; preds = %95
  %.reload86 = load i32, ptr %.reg2mem85, align 4
  store i32 %.reload86, ptr %.reg2mem208, align 4
  br label %36

98:                                               ; preds = %95
  %99 = load ptr, ptr @stderr, align 4, !tbaa !19
  store ptr %99, ptr %.reg2mem70, align 4
  %.reload84 = load ptr, ptr %.reg2mem70, align 4
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload84, ptr noundef nonnull @.str) #3
  %.reload83 = load ptr, ptr %.reg2mem70, align 4
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload83, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem192, align 4
  br label %102

102:                                              ; preds = %._crit_edge17, %98
  %.reload193 = load i32, ptr %.reg2mem192, align 4
  store i32 %.reload193, ptr %.reg2mem66, align 4
  %.reload69 = load i32, ptr %.reg2mem66, align 4
  %103 = mul nuw nsw i32 %.reload69, 200
  store i32 %103, ptr %.reg2mem64, align 4
  store i32 0, ptr %.reg2mem190, align 4
  br label %104

104:                                              ; preds = %._crit_edge16, %102
  %.reload191 = load i32, ptr %.reg2mem190, align 4
  store i32 %.reload191, ptr %.reg2mem60, align 4
  %.reload63 = load i32, ptr %.reg2mem60, align 4
  %.reload65 = load i32, ptr %.reg2mem64, align 4
  %105 = add nuw nsw i32 %.reload63, %.reload65
  %106 = urem i32 %105, 20
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %._crit_edge15

._crit_edge15:                                    ; preds = %104
  br label %110

108:                                              ; preds = %104
  %.reload71 = load ptr, ptr %.reg2mem70, align 4
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload71, ptr noundef nonnull @.str.3) #3
  br label %110

110:                                              ; preds = %._crit_edge15, %108
  %.reload62 = load i32, ptr %.reg2mem60, align 4
  %.reload68 = load i32, ptr %.reg2mem66, align 4
  %.reload176 = load ptr, ptr %.reg2mem175, align 4
  %111 = getelementptr inbounds [240 x double], ptr %.reload176, i32 %.reload68, i32 %.reload62
  %112 = load double, ptr %111, align 8, !tbaa !2
  %.reload82 = load ptr, ptr %.reg2mem70, align 4
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload82, ptr noundef nonnull @.str.4, double noundef %112) #3
  %.reload61 = load i32, ptr %.reg2mem60, align 4
  %114 = add nuw nsw i32 %.reload61, 1
  store i32 %114, ptr %.reg2mem57, align 4
  %.reload59 = load i32, ptr %.reg2mem57, align 4
  %115 = icmp eq i32 %.reload59, 240
  br i1 %115, label %116, label %._crit_edge16, !llvm.loop !21

._crit_edge16:                                    ; preds = %110
  %.reload58 = load i32, ptr %.reg2mem57, align 4
  store i32 %.reload58, ptr %.reg2mem190, align 4
  br label %104

116:                                              ; preds = %110
  %.reload67 = load i32, ptr %.reg2mem66, align 4
  %117 = add nuw nsw i32 %.reload67, 1
  store i32 %117, ptr %.reg2mem54, align 4
  %.reload56 = load i32, ptr %.reg2mem54, align 4
  %118 = icmp eq i32 %.reload56, 200
  br i1 %118, label %119, label %._crit_edge17, !llvm.loop !22

._crit_edge17:                                    ; preds = %116
  %.reload55 = load i32, ptr %.reg2mem54, align 4
  store i32 %.reload55, ptr %.reg2mem192, align 4
  br label %102

119:                                              ; preds = %116
  %.reload81 = load ptr, ptr %.reg2mem70, align 4
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload81, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload80 = load ptr, ptr %.reg2mem70, align 4
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload80, ptr noundef nonnull @.str.6) #3
  %.reload79 = load ptr, ptr %.reg2mem70, align 4
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload79, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #3
  store i32 0, ptr %.reg2mem188, align 4
  br label %123

123:                                              ; preds = %._crit_edge20, %119
  %.reload189 = load i32, ptr %.reg2mem188, align 4
  store i32 %.reload189, ptr %.reg2mem50, align 4
  %.reload53 = load i32, ptr %.reg2mem50, align 4
  %124 = mul nuw nsw i32 %.reload53, 200
  store i32 %124, ptr %.reg2mem48, align 4
  store i32 0, ptr %.reg2mem186, align 4
  br label %125

125:                                              ; preds = %._crit_edge19, %123
  %.reload187 = load i32, ptr %.reg2mem186, align 4
  store i32 %.reload187, ptr %.reg2mem44, align 4
  %.reload47 = load i32, ptr %.reg2mem44, align 4
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  %126 = add nuw nsw i32 %.reload47, %.reload49
  %127 = urem i32 %126, 20
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %._crit_edge18

._crit_edge18:                                    ; preds = %125
  br label %131

129:                                              ; preds = %125
  %.reload72 = load ptr, ptr %.reg2mem70, align 4
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload72, ptr noundef nonnull @.str.3) #3
  br label %131

131:                                              ; preds = %._crit_edge18, %129
  %.reload46 = load i32, ptr %.reg2mem44, align 4
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %.reload168 = load ptr, ptr %.reg2mem167, align 4
  %132 = getelementptr inbounds [240 x double], ptr %.reload168, i32 %.reload52, i32 %.reload46
  %133 = load double, ptr %132, align 8, !tbaa !2
  %.reload78 = load ptr, ptr %.reg2mem70, align 4
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload78, ptr noundef nonnull @.str.4, double noundef %133) #3
  %.reload45 = load i32, ptr %.reg2mem44, align 4
  %135 = add nuw nsw i32 %.reload45, 1
  store i32 %135, ptr %.reg2mem41, align 4
  %.reload43 = load i32, ptr %.reg2mem41, align 4
  %136 = icmp eq i32 %.reload43, 240
  br i1 %136, label %137, label %._crit_edge19, !llvm.loop !23

._crit_edge19:                                    ; preds = %131
  %.reload42 = load i32, ptr %.reg2mem41, align 4
  store i32 %.reload42, ptr %.reg2mem186, align 4
  br label %125

137:                                              ; preds = %131
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  %138 = add nuw nsw i32 %.reload51, 1
  store i32 %138, ptr %.reg2mem38, align 4
  %.reload40 = load i32, ptr %.reg2mem38, align 4
  %139 = icmp eq i32 %.reload40, 200
  br i1 %139, label %140, label %._crit_edge20, !llvm.loop !24

._crit_edge20:                                    ; preds = %137
  %.reload39 = load i32, ptr %.reg2mem38, align 4
  store i32 %.reload39, ptr %.reg2mem188, align 4
  br label %123

140:                                              ; preds = %137
  %.reload77 = load ptr, ptr %.reg2mem70, align 4
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload77, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #3
  %.reload76 = load ptr, ptr %.reg2mem70, align 4
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #3
  store i32 0, ptr %.reg2mem184, align 4
  br label %143

143:                                              ; preds = %._crit_edge23, %140
  %.reload185 = load i32, ptr %.reg2mem184, align 4
  store i32 %.reload185, ptr %.reg2mem34, align 4
  %.reload37 = load i32, ptr %.reg2mem34, align 4
  %144 = mul nuw nsw i32 %.reload37, 200
  store i32 %144, ptr %.reg2mem32, align 4
  store i32 0, ptr %.reg2mem182, align 4
  br label %145

145:                                              ; preds = %._crit_edge22, %143
  %.reload183 = load i32, ptr %.reg2mem182, align 4
  store i32 %.reload183, ptr %.reg2mem28, align 4
  %.reload31 = load i32, ptr %.reg2mem28, align 4
  %.reload33 = load i32, ptr %.reg2mem32, align 4
  %146 = add nuw nsw i32 %.reload31, %.reload33
  %147 = urem i32 %146, 20
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %._crit_edge21

._crit_edge21:                                    ; preds = %145
  br label %151

149:                                              ; preds = %145
  %.reload73 = load ptr, ptr %.reg2mem70, align 4
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload73, ptr noundef nonnull @.str.3) #3
  br label %151

151:                                              ; preds = %._crit_edge21, %149
  %.reload30 = load i32, ptr %.reg2mem28, align 4
  %.reload36 = load i32, ptr %.reg2mem34, align 4
  %.reload159 = load ptr, ptr %.reg2mem158, align 4
  %152 = getelementptr inbounds [240 x double], ptr %.reload159, i32 %.reload36, i32 %.reload30
  %153 = load double, ptr %152, align 8, !tbaa !2
  %.reload75 = load ptr, ptr %.reg2mem70, align 4
  %154 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload75, ptr noundef nonnull @.str.4, double noundef %153) #3
  %.reload29 = load i32, ptr %.reg2mem28, align 4
  %155 = add nuw nsw i32 %.reload29, 1
  store i32 %155, ptr %.reg2mem25, align 4
  %.reload27 = load i32, ptr %.reg2mem25, align 4
  %156 = icmp eq i32 %.reload27, 240
  br i1 %156, label %157, label %._crit_edge22, !llvm.loop !25

._crit_edge22:                                    ; preds = %151
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  store i32 %.reload26, ptr %.reg2mem182, align 4
  br label %145

157:                                              ; preds = %151
  %.reload35 = load i32, ptr %.reg2mem34, align 4
  %158 = add nuw nsw i32 %.reload35, 1
  store i32 %158, ptr %.reg2mem, align 4
  %.reload24 = load i32, ptr %.reg2mem, align 4
  %159 = icmp eq i32 %.reload24, 200
  br i1 %159, label %160, label %._crit_edge23, !llvm.loop !26

._crit_edge23:                                    ; preds = %157
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem184, align 4
  br label %143

160:                                              ; preds = %157
  %.reload74 = load ptr, ptr %.reg2mem70, align 4
  %161 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload74, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #3
  %.reload181 = load ptr, ptr %.reg2mem175, align 4
  tail call void @free(ptr noundef %.reload181) #3
  %.reload174 = load ptr, ptr %.reg2mem167, align 4
  tail call void @free(ptr noundef %.reload174) #3
  %.reload166 = load ptr, ptr %.reg2mem158, align 4
  tail call void @free(ptr noundef nonnull %.reload166) #3
  %.reload157 = load ptr, ptr %.reg2mem154, align 4
  tail call void @free(ptr noundef %.reload157) #3
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
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !4, i64 0}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7, !8}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !7, !8}
!26 = distinct !{!26, !7, !8}
