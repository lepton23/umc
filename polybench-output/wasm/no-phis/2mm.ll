; ModuleID = './polybench-output/wasm/no-phis/2mm.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/2mm/2mm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem36 = alloca ptr, align 4
  %.reg2mem43 = alloca i32, align 4
  %.reg2mem46 = alloca i32, align 4
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem52 = alloca double, align 8
  %.reg2mem55 = alloca double, align 8
  %.reg2mem58 = alloca ptr, align 4
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
  %.reg2mem103 = alloca i32, align 4
  %.reg2mem106 = alloca i32, align 4
  %.reg2mem109 = alloca i32, align 4
  %.reg2mem113 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem120 = alloca i32, align 4
  %.reg2mem124 = alloca i32, align 4
  %.reg2mem127 = alloca i32, align 4
  %.reg2mem130 = alloca i32, align 4
  %.reg2mem134 = alloca ptr, align 4
  %.reg2mem139 = alloca ptr, align 4
  %.reg2mem143 = alloca ptr, align 4
  %.reg2mem147 = alloca ptr, align 4
  %.reg2mem151 = alloca ptr, align 4
  %.reg2mem155 = alloca i32, align 4
  %.reg2mem157 = alloca i32, align 4
  %.reg2mem159 = alloca double, align 8
  %.reg2mem161 = alloca i32, align 4
  %.reg2mem163 = alloca i32, align 4
  %.reg2mem165 = alloca i32, align 4
  %.reg2mem167 = alloca double, align 8
  %.reg2mem169 = alloca i32, align 4
  %.reg2mem171 = alloca i32, align 4
  %.reg2mem173 = alloca i32, align 4
  %.reg2mem175 = alloca i32, align 4
  %.reg2mem177 = alloca i32, align 4
  %.reg2mem179 = alloca i32, align 4
  %.reg2mem181 = alloca i32, align 4
  %.reg2mem183 = alloca i32, align 4
  %.reg2mem185 = alloca i32, align 4
  %.reg2mem187 = alloca i32, align 4
  %.reg2mem189 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 34200, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem151, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 37800, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem147, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 39900, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem143, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 41800, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem139, align 4
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 39600, i32 noundef 8) #3
  store ptr %7, ptr %.reg2mem134, align 4
  store i32 0, ptr %.reg2mem189, align 4
  br label %8

8:                                                ; preds = %._crit_edge2, %2
  %.reload190 = load i32, ptr %.reg2mem189, align 4
  store i32 %.reload190, ptr %.reg2mem130, align 4
  store i32 0, ptr %.reg2mem187, align 4
  br label %9

9:                                                ; preds = %._crit_edge, %8
  %.reload188 = load i32, ptr %.reg2mem187, align 4
  %.reload133 = load i32, ptr %.reg2mem130, align 4
  %10 = mul nuw nsw i32 %.reload188, %.reload133
  %11 = add nuw nsw i32 %10, 1
  %12 = urem i32 %11, 180
  %13 = uitofp nneg i32 %12 to double
  %14 = fdiv double %13, 1.800000e+02
  %.reload132 = load i32, ptr %.reg2mem130, align 4
  %.reload149 = load ptr, ptr %.reg2mem147, align 4
  %15 = getelementptr inbounds [210 x double], ptr %.reload149, i32 %.reload132, i32 %.reload188
  store double %14, ptr %15, align 8, !tbaa !2
  %16 = add nuw nsw i32 %.reload188, 1
  store i32 %16, ptr %.reg2mem127, align 4
  %.reload129 = load i32, ptr %.reg2mem127, align 4
  %17 = icmp eq i32 %.reload129, 210
  br i1 %17, label %18, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %9
  %.reload128 = load i32, ptr %.reg2mem127, align 4
  store i32 %.reload128, ptr %.reg2mem187, align 4
  br label %9

18:                                               ; preds = %9
  %.reload131 = load i32, ptr %.reg2mem130, align 4
  %19 = add nuw nsw i32 %.reload131, 1
  store i32 %19, ptr %.reg2mem124, align 4
  %.reload126 = load i32, ptr %.reg2mem124, align 4
  %20 = icmp eq i32 %.reload126, 180
  br i1 %20, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %18
  %.reload125 = load i32, ptr %.reg2mem124, align 4
  store i32 %.reload125, ptr %.reg2mem189, align 4
  br label %8

._crit_edge1:                                     ; preds = %18
  store i32 0, ptr %.reg2mem185, align 4
  br label %21

21:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload186 = load i32, ptr %.reg2mem185, align 4
  store i32 %.reload186, ptr %.reg2mem120, align 4
  store i32 0, ptr %.reg2mem183, align 4
  br label %22

22:                                               ; preds = %._crit_edge3, %21
  %.reload184 = load i32, ptr %.reg2mem183, align 4
  %23 = add nuw nsw i32 %.reload184, 1
  store i32 %23, ptr %.reg2mem116, align 4
  %.reload119 = load i32, ptr %.reg2mem116, align 4
  %.reload123 = load i32, ptr %.reg2mem120, align 4
  %24 = mul nuw nsw i32 %.reload119, %.reload123
  %25 = urem i32 %24, 190
  %26 = uitofp nneg i32 %25 to double
  %27 = fdiv double %26, 1.900000e+02
  %.reload122 = load i32, ptr %.reg2mem120, align 4
  %.reload145 = load ptr, ptr %.reg2mem143, align 4
  %28 = getelementptr inbounds [190 x double], ptr %.reload145, i32 %.reload122, i32 %.reload184
  store double %27, ptr %28, align 8, !tbaa !2
  %.reload118 = load i32, ptr %.reg2mem116, align 4
  %29 = icmp eq i32 %.reload118, 190
  br i1 %29, label %30, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %22
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  store i32 %.reload117, ptr %.reg2mem183, align 4
  br label %22

30:                                               ; preds = %22
  %.reload121 = load i32, ptr %.reg2mem120, align 4
  %31 = add nuw nsw i32 %.reload121, 1
  store i32 %31, ptr %.reg2mem113, align 4
  %.reload115 = load i32, ptr %.reg2mem113, align 4
  %32 = icmp eq i32 %.reload115, 210
  br i1 %32, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %30
  %.reload114 = load i32, ptr %.reg2mem113, align 4
  store i32 %.reload114, ptr %.reg2mem185, align 4
  br label %21

._crit_edge4:                                     ; preds = %30
  store i32 0, ptr %.reg2mem181, align 4
  br label %33

33:                                               ; preds = %._crit_edge8, %._crit_edge4
  %.reload182 = load i32, ptr %.reg2mem181, align 4
  store i32 %.reload182, ptr %.reg2mem109, align 4
  store i32 0, ptr %.reg2mem179, align 4
  br label %34

34:                                               ; preds = %._crit_edge6, %33
  %.reload180 = load i32, ptr %.reg2mem179, align 4
  %35 = add nuw nsw i32 %.reload180, 3
  %.reload112 = load i32, ptr %.reg2mem109, align 4
  %36 = mul nuw nsw i32 %35, %.reload112
  %37 = add nuw nsw i32 %36, 1
  %38 = urem i32 %37, 220
  %39 = uitofp nneg i32 %38 to double
  %40 = fdiv double %39, 2.200000e+02
  %.reload111 = load i32, ptr %.reg2mem109, align 4
  %.reload141 = load ptr, ptr %.reg2mem139, align 4
  %41 = getelementptr inbounds [220 x double], ptr %.reload141, i32 %.reload111, i32 %.reload180
  store double %40, ptr %41, align 8, !tbaa !2
  %42 = add nuw nsw i32 %.reload180, 1
  store i32 %42, ptr %.reg2mem106, align 4
  %.reload108 = load i32, ptr %.reg2mem106, align 4
  %43 = icmp eq i32 %.reload108, 220
  br i1 %43, label %44, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %34
  %.reload107 = load i32, ptr %.reg2mem106, align 4
  store i32 %.reload107, ptr %.reg2mem179, align 4
  br label %34

44:                                               ; preds = %34
  %.reload110 = load i32, ptr %.reg2mem109, align 4
  %45 = add nuw nsw i32 %.reload110, 1
  store i32 %45, ptr %.reg2mem103, align 4
  %.reload105 = load i32, ptr %.reg2mem103, align 4
  %46 = icmp eq i32 %.reload105, 190
  br i1 %46, label %._crit_edge7, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %44
  %.reload104 = load i32, ptr %.reg2mem103, align 4
  store i32 %.reload104, ptr %.reg2mem181, align 4
  br label %33

._crit_edge7:                                     ; preds = %44
  store i32 0, ptr %.reg2mem177, align 4
  br label %47

47:                                               ; preds = %._crit_edge11, %._crit_edge7
  %.reload178 = load i32, ptr %.reg2mem177, align 4
  store i32 %.reload178, ptr %.reg2mem99, align 4
  store i32 0, ptr %.reg2mem175, align 4
  br label %48

48:                                               ; preds = %._crit_edge9, %47
  %.reload176 = load i32, ptr %.reg2mem175, align 4
  %49 = add nuw nsw i32 %.reload176, 2
  %.reload102 = load i32, ptr %.reg2mem99, align 4
  %50 = mul nuw nsw i32 %49, %.reload102
  %51 = urem i32 %50, 210
  %52 = uitofp nneg i32 %51 to double
  %53 = fdiv double %52, 2.100000e+02
  %.reload101 = load i32, ptr %.reg2mem99, align 4
  %.reload137 = load ptr, ptr %.reg2mem134, align 4
  %54 = getelementptr inbounds [220 x double], ptr %.reload137, i32 %.reload101, i32 %.reload176
  store double %53, ptr %54, align 8, !tbaa !2
  %55 = add nuw nsw i32 %.reload176, 1
  store i32 %55, ptr %.reg2mem96, align 4
  %.reload98 = load i32, ptr %.reg2mem96, align 4
  %56 = icmp eq i32 %.reload98, 220
  br i1 %56, label %57, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %48
  %.reload97 = load i32, ptr %.reg2mem96, align 4
  store i32 %.reload97, ptr %.reg2mem175, align 4
  br label %48

57:                                               ; preds = %48
  %.reload100 = load i32, ptr %.reg2mem99, align 4
  %58 = add nuw nsw i32 %.reload100, 1
  store i32 %58, ptr %.reg2mem93, align 4
  %.reload95 = load i32, ptr %.reg2mem93, align 4
  %59 = icmp eq i32 %.reload95, 180
  br i1 %59, label %._crit_edge10, label %._crit_edge11, !llvm.loop !15

._crit_edge11:                                    ; preds = %57
  %.reload94 = load i32, ptr %.reg2mem93, align 4
  store i32 %.reload94, ptr %.reg2mem177, align 4
  br label %47

._crit_edge10:                                    ; preds = %57
  store i32 0, ptr %.reg2mem173, align 4
  br label %60

60:                                               ; preds = %._crit_edge15, %._crit_edge10
  %.reload174 = load i32, ptr %.reg2mem173, align 4
  store i32 %.reload174, ptr %.reg2mem89, align 4
  store i32 0, ptr %.reg2mem171, align 4
  br label %61

61:                                               ; preds = %._crit_edge13, %60
  %.reload172 = load i32, ptr %.reg2mem171, align 4
  store i32 %.reload172, ptr %.reg2mem85, align 4
  %.reload88 = load i32, ptr %.reg2mem85, align 4
  %.reload92 = load i32, ptr %.reg2mem89, align 4
  %.reload153 = load ptr, ptr %.reg2mem151, align 4
  %62 = getelementptr inbounds [190 x double], ptr %.reload153, i32 %.reload92, i32 %.reload88
  store ptr %62, ptr %.reg2mem82, align 4
  %.reload84 = load ptr, ptr %.reg2mem82, align 4
  store double 0.000000e+00, ptr %.reload84, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem167, align 8
  store i32 0, ptr %.reg2mem169, align 4
  br label %63

63:                                               ; preds = %._crit_edge12, %61
  %.reload170 = load i32, ptr %.reg2mem169, align 4
  %.reload168 = load double, ptr %.reg2mem167, align 8
  %.reload91 = load i32, ptr %.reg2mem89, align 4
  %.reload148 = load ptr, ptr %.reg2mem147, align 4
  %64 = getelementptr inbounds [210 x double], ptr %.reload148, i32 %.reload91, i32 %.reload170
  %65 = load double, ptr %64, align 8, !tbaa !2
  %66 = fmul double %65, 1.500000e+00
  %.reload87 = load i32, ptr %.reg2mem85, align 4
  %.reload144 = load ptr, ptr %.reg2mem143, align 4
  %67 = getelementptr inbounds [190 x double], ptr %.reload144, i32 %.reload170, i32 %.reload87
  %68 = load double, ptr %67, align 8, !tbaa !2
  %69 = tail call double @llvm.fmuladd.f64(double %66, double %68, double %.reload168)
  store double %69, ptr %.reg2mem79, align 8
  %.reload81 = load double, ptr %.reg2mem79, align 8
  %.reload83 = load ptr, ptr %.reg2mem82, align 4
  store double %.reload81, ptr %.reload83, align 8, !tbaa !2
  %70 = add nuw nsw i32 %.reload170, 1
  store i32 %70, ptr %.reg2mem76, align 4
  %.reload78 = load i32, ptr %.reg2mem76, align 4
  %71 = icmp eq i32 %.reload78, 210
  br i1 %71, label %72, label %._crit_edge12, !llvm.loop !16

._crit_edge12:                                    ; preds = %63
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  %.reload80 = load double, ptr %.reg2mem79, align 8
  store double %.reload80, ptr %.reg2mem167, align 8
  store i32 %.reload77, ptr %.reg2mem169, align 4
  br label %63

72:                                               ; preds = %63
  %.reload86 = load i32, ptr %.reg2mem85, align 4
  %73 = add nuw nsw i32 %.reload86, 1
  store i32 %73, ptr %.reg2mem73, align 4
  %.reload75 = load i32, ptr %.reg2mem73, align 4
  %74 = icmp eq i32 %.reload75, 190
  br i1 %74, label %75, label %._crit_edge13, !llvm.loop !17

._crit_edge13:                                    ; preds = %72
  %.reload74 = load i32, ptr %.reg2mem73, align 4
  store i32 %.reload74, ptr %.reg2mem171, align 4
  br label %61

75:                                               ; preds = %72
  %.reload90 = load i32, ptr %.reg2mem89, align 4
  %76 = add nuw nsw i32 %.reload90, 1
  store i32 %76, ptr %.reg2mem70, align 4
  %.reload72 = load i32, ptr %.reg2mem70, align 4
  %77 = icmp eq i32 %.reload72, 180
  br i1 %77, label %._crit_edge14, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %75
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  store i32 %.reload71, ptr %.reg2mem173, align 4
  br label %60

._crit_edge14:                                    ; preds = %75
  store i32 0, ptr %.reg2mem165, align 4
  br label %78

78:                                               ; preds = %._crit_edge18, %._crit_edge14
  %.reload166 = load i32, ptr %.reg2mem165, align 4
  store i32 %.reload166, ptr %.reg2mem66, align 4
  store i32 0, ptr %.reg2mem163, align 4
  br label %79

79:                                               ; preds = %._crit_edge17, %78
  %.reload164 = load i32, ptr %.reg2mem163, align 4
  store i32 %.reload164, ptr %.reg2mem62, align 4
  %.reload65 = load i32, ptr %.reg2mem62, align 4
  %.reload69 = load i32, ptr %.reg2mem66, align 4
  %.reload136 = load ptr, ptr %.reg2mem134, align 4
  %80 = getelementptr inbounds [220 x double], ptr %.reload136, i32 %.reload69, i32 %.reload65
  store ptr %80, ptr %.reg2mem58, align 4
  %.reload61 = load ptr, ptr %.reg2mem58, align 4
  %81 = load double, ptr %.reload61, align 8, !tbaa !2
  %82 = fmul double %81, 1.200000e+00
  store double %82, ptr %.reg2mem55, align 8
  %.reload57 = load double, ptr %.reg2mem55, align 8
  %.reload60 = load ptr, ptr %.reg2mem58, align 4
  store double %.reload57, ptr %.reload60, align 8, !tbaa !2
  %.reload56 = load double, ptr %.reg2mem55, align 8
  store double %.reload56, ptr %.reg2mem159, align 8
  store i32 0, ptr %.reg2mem161, align 4
  br label %83

83:                                               ; preds = %._crit_edge16, %79
  %.reload162 = load i32, ptr %.reg2mem161, align 4
  %.reload160 = load double, ptr %.reg2mem159, align 8
  %.reload68 = load i32, ptr %.reg2mem66, align 4
  %.reload152 = load ptr, ptr %.reg2mem151, align 4
  %84 = getelementptr inbounds [190 x double], ptr %.reload152, i32 %.reload68, i32 %.reload162
  %85 = load double, ptr %84, align 8, !tbaa !2
  %.reload64 = load i32, ptr %.reg2mem62, align 4
  %.reload140 = load ptr, ptr %.reg2mem139, align 4
  %86 = getelementptr inbounds [220 x double], ptr %.reload140, i32 %.reload162, i32 %.reload64
  %87 = load double, ptr %86, align 8, !tbaa !2
  %88 = tail call double @llvm.fmuladd.f64(double %85, double %87, double %.reload160)
  store double %88, ptr %.reg2mem52, align 8
  %.reload54 = load double, ptr %.reg2mem52, align 8
  %.reload59 = load ptr, ptr %.reg2mem58, align 4
  store double %.reload54, ptr %.reload59, align 8, !tbaa !2
  %89 = add nuw nsw i32 %.reload162, 1
  store i32 %89, ptr %.reg2mem49, align 4
  %.reload51 = load i32, ptr %.reg2mem49, align 4
  %90 = icmp eq i32 %.reload51, 190
  br i1 %90, label %91, label %._crit_edge16, !llvm.loop !19

._crit_edge16:                                    ; preds = %83
  %.reload50 = load i32, ptr %.reg2mem49, align 4
  %.reload53 = load double, ptr %.reg2mem52, align 8
  store double %.reload53, ptr %.reg2mem159, align 8
  store i32 %.reload50, ptr %.reg2mem161, align 4
  br label %83

91:                                               ; preds = %83
  %.reload63 = load i32, ptr %.reg2mem62, align 4
  %92 = add nuw nsw i32 %.reload63, 1
  store i32 %92, ptr %.reg2mem46, align 4
  %.reload48 = load i32, ptr %.reg2mem46, align 4
  %93 = icmp eq i32 %.reload48, 220
  br i1 %93, label %94, label %._crit_edge17, !llvm.loop !20

._crit_edge17:                                    ; preds = %91
  %.reload47 = load i32, ptr %.reg2mem46, align 4
  store i32 %.reload47, ptr %.reg2mem163, align 4
  br label %79

94:                                               ; preds = %91
  %.reload67 = load i32, ptr %.reg2mem66, align 4
  %95 = add nuw nsw i32 %.reload67, 1
  store i32 %95, ptr %.reg2mem43, align 4
  %.reload45 = load i32, ptr %.reg2mem43, align 4
  %96 = icmp eq i32 %.reload45, 180
  br i1 %96, label %97, label %._crit_edge18, !llvm.loop !21

._crit_edge18:                                    ; preds = %94
  %.reload44 = load i32, ptr %.reg2mem43, align 4
  store i32 %.reload44, ptr %.reg2mem165, align 4
  br label %78

97:                                               ; preds = %94
  %98 = load ptr, ptr @stderr, align 4, !tbaa !22
  store ptr %98, ptr %.reg2mem36, align 4
  %.reload42 = load ptr, ptr %.reg2mem36, align 4
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload42, ptr noundef nonnull @.str) #3
  %.reload41 = load ptr, ptr %.reg2mem36, align 4
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload41, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem157, align 4
  br label %101

101:                                              ; preds = %._crit_edge21, %97
  %.reload158 = load i32, ptr %.reg2mem157, align 4
  store i32 %.reload158, ptr %.reg2mem32, align 4
  %.reload35 = load i32, ptr %.reg2mem32, align 4
  %102 = mul nuw nsw i32 %.reload35, 180
  store i32 %102, ptr %.reg2mem30, align 4
  store i32 0, ptr %.reg2mem155, align 4
  br label %103

103:                                              ; preds = %._crit_edge20, %101
  %.reload156 = load i32, ptr %.reg2mem155, align 4
  store i32 %.reload156, ptr %.reg2mem26, align 4
  %.reload29 = load i32, ptr %.reg2mem26, align 4
  %.reload31 = load i32, ptr %.reg2mem30, align 4
  %104 = add nuw nsw i32 %.reload29, %.reload31
  %105 = urem i32 %104, 20
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %._crit_edge19

._crit_edge19:                                    ; preds = %103
  br label %109

107:                                              ; preds = %103
  %.reload37 = load ptr, ptr %.reg2mem36, align 4
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload37, ptr noundef nonnull @.str.3) #3
  br label %109

109:                                              ; preds = %._crit_edge19, %107
  %.reload28 = load i32, ptr %.reg2mem26, align 4
  %.reload34 = load i32, ptr %.reg2mem32, align 4
  %.reload135 = load ptr, ptr %.reg2mem134, align 4
  %110 = getelementptr inbounds [220 x double], ptr %.reload135, i32 %.reload34, i32 %.reload28
  %111 = load double, ptr %110, align 8, !tbaa !2
  %.reload40 = load ptr, ptr %.reg2mem36, align 4
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload40, ptr noundef nonnull @.str.4, double noundef %111) #3
  %.reload27 = load i32, ptr %.reg2mem26, align 4
  %113 = add nuw nsw i32 %.reload27, 1
  store i32 %113, ptr %.reg2mem23, align 4
  %.reload25 = load i32, ptr %.reg2mem23, align 4
  %114 = icmp eq i32 %.reload25, 220
  br i1 %114, label %115, label %._crit_edge20, !llvm.loop !24

._crit_edge20:                                    ; preds = %109
  %.reload24 = load i32, ptr %.reg2mem23, align 4
  store i32 %.reload24, ptr %.reg2mem155, align 4
  br label %103

115:                                              ; preds = %109
  %.reload33 = load i32, ptr %.reg2mem32, align 4
  %116 = add nuw nsw i32 %.reload33, 1
  store i32 %116, ptr %.reg2mem, align 4
  %.reload22 = load i32, ptr %.reg2mem, align 4
  %117 = icmp eq i32 %.reload22, 180
  br i1 %117, label %118, label %._crit_edge21, !llvm.loop !25

._crit_edge21:                                    ; preds = %115
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem157, align 4
  br label %101

118:                                              ; preds = %115
  %.reload39 = load ptr, ptr %.reg2mem36, align 4
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload39, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload38 = load ptr, ptr %.reg2mem36, align 4
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload38, ptr noundef nonnull @.str.6) #3
  %.reload154 = load ptr, ptr %.reg2mem151, align 4
  tail call void @free(ptr noundef %.reload154) #3
  %.reload150 = load ptr, ptr %.reg2mem147, align 4
  tail call void @free(ptr noundef %.reload150) #3
  %.reload146 = load ptr, ptr %.reg2mem143, align 4
  tail call void @free(ptr noundef %.reload146) #3
  %.reload142 = load ptr, ptr %.reg2mem139, align 4
  tail call void @free(ptr noundef %.reload142) #3
  %.reload138 = load ptr, ptr %.reg2mem134, align 4
  tail call void @free(ptr noundef nonnull %.reload138) #3
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
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !4, i64 0}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !7, !8}
