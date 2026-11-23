; ModuleID = './polybench-output/no-phis/heat-3d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/heat-3d/heat-3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i64, align 8
  %.reg2mem17 = alloca i64, align 8
  %.reg2mem20 = alloca i64, align 8
  %.reg2mem23 = alloca i64, align 8
  %.reg2mem27 = alloca i64, align 8
  %.reg2mem29 = alloca i64, align 8
  %.reg2mem33 = alloca i64, align 8
  %.reg2mem35 = alloca i64, align 8
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem42 = alloca i64, align 8
  %.reg2mem45 = alloca i64, align 8
  %.reg2mem49 = alloca i64, align 8
  %.reg2mem51 = alloca i64, align 8
  %.reg2mem55 = alloca i64, align 8
  %.reg2mem64 = alloca ptr, align 8
  %.reg2mem66 = alloca ptr, align 8
  %.reg2mem68 = alloca i64, align 8
  %.reg2mem77 = alloca i64, align 8
  %.reg2mem80 = alloca i64, align 8
  %.reg2mem84 = alloca i64, align 8
  %.reg2mem86 = alloca i64, align 8
  %.reg2mem90 = alloca i64, align 8
  %.reg2mem99 = alloca ptr, align 8
  %.reg2mem101 = alloca ptr, align 8
  %.reg2mem103 = alloca i64, align 8
  %.reg2mem112 = alloca i32, align 4
  %.reg2mem114 = alloca i64, align 8
  %.reg2mem117 = alloca i64, align 8
  %.reg2mem120 = alloca i64, align 8
  %.reg2mem123 = alloca i64, align 8
  %.reg2mem125 = alloca i64, align 8
  %.reg2mem130 = alloca i64, align 8
  %.reg2mem132 = alloca i64, align 8
  %.reg2mem137 = alloca ptr, align 8
  %.reg2mem146 = alloca ptr, align 8
  %.reg2mem157 = alloca i64, align 8
  %.reg2mem159 = alloca i64, align 8
  %.reg2mem161 = alloca i64, align 8
  %.reg2mem163 = alloca i64, align 8
  %.reg2mem165 = alloca i64, align 8
  %.reg2mem167 = alloca i64, align 8
  %.reg2mem169 = alloca i64, align 8
  %.reg2mem171 = alloca i64, align 8
  %.reg2mem173 = alloca i64, align 8
  %.reg2mem175 = alloca i32, align 4
  %.reg2mem177 = alloca i64, align 8
  %.reg2mem179 = alloca i64, align 8
  %.reg2mem181 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 64000, i32 noundef 8) #4
  store ptr %3, ptr %.reg2mem146, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 64000, i32 noundef 8) #4
  store ptr %4, ptr %.reg2mem137, align 8
  store i64 0, ptr %.reg2mem181, align 8
  br label %5

5:                                                ; preds = %._crit_edge3, %2
  %.reload182 = load i64, ptr %.reg2mem181, align 8
  store i64 %.reload182, ptr %.reg2mem132, align 8
  %.reload136 = load i64, ptr %.reg2mem132, align 8
  %6 = add nuw nsw i64 %.reload136, 40
  store i64 %6, ptr %.reg2mem130, align 8
  store i64 0, ptr %.reg2mem179, align 8
  br label %7

7:                                                ; preds = %._crit_edge1, %5
  %.reload180 = load i64, ptr %.reg2mem179, align 8
  store i64 %.reload180, ptr %.reg2mem125, align 8
  %.reload129 = load i64, ptr %.reg2mem125, align 8
  %.reload131 = load i64, ptr %.reg2mem130, align 8
  %8 = add nuw nsw i64 %.reload131, %.reload129
  store i64 %8, ptr %.reg2mem123, align 8
  store i64 0, ptr %.reg2mem177, align 8
  br label %9

9:                                                ; preds = %._crit_edge, %7
  %.reload178 = load i64, ptr %.reg2mem177, align 8
  %.reload124 = load i64, ptr %.reg2mem123, align 8
  %10 = sub nuw nsw i64 %.reload124, %.reload178
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = sitofp i32 %11 to double
  %13 = fmul double %12, 1.000000e+01
  %14 = fdiv double %13, 4.000000e+01
  %.reload128 = load i64, ptr %.reg2mem125, align 8
  %.reload135 = load i64, ptr %.reg2mem132, align 8
  %.reload145 = load ptr, ptr %.reg2mem137, align 8
  %15 = getelementptr inbounds [40 x [40 x double]], ptr %.reload145, i64 %.reload135, i64 %.reload128, i64 %.reload178
  store double %14, ptr %15, align 8, !tbaa !5
  %.reload127 = load i64, ptr %.reg2mem125, align 8
  %.reload134 = load i64, ptr %.reg2mem132, align 8
  %.reload155 = load ptr, ptr %.reg2mem146, align 8
  %16 = getelementptr inbounds [40 x [40 x double]], ptr %.reload155, i64 %.reload134, i64 %.reload127, i64 %.reload178
  store double %14, ptr %16, align 8, !tbaa !5
  %17 = add nuw nsw i64 %.reload178, 1
  store i64 %17, ptr %.reg2mem120, align 8
  %.reload122 = load i64, ptr %.reg2mem120, align 8
  %18 = icmp eq i64 %.reload122, 40
  br i1 %18, label %19, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %9
  %.reload121 = load i64, ptr %.reg2mem120, align 8
  store i64 %.reload121, ptr %.reg2mem177, align 8
  br label %9

19:                                               ; preds = %9
  %.reload126 = load i64, ptr %.reg2mem125, align 8
  %20 = add nuw nsw i64 %.reload126, 1
  store i64 %20, ptr %.reg2mem117, align 8
  %.reload119 = load i64, ptr %.reg2mem117, align 8
  %21 = icmp eq i64 %.reload119, 40
  br i1 %21, label %22, label %._crit_edge1, !llvm.loop !12

._crit_edge1:                                     ; preds = %19
  %.reload118 = load i64, ptr %.reg2mem117, align 8
  store i64 %.reload118, ptr %.reg2mem179, align 8
  br label %7

22:                                               ; preds = %19
  %.reload133 = load i64, ptr %.reg2mem132, align 8
  %23 = add nuw nsw i64 %.reload133, 1
  store i64 %23, ptr %.reg2mem114, align 8
  %.reload116 = load i64, ptr %.reg2mem114, align 8
  %24 = icmp eq i64 %.reload116, 40
  br i1 %24, label %._crit_edge2, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %22
  %.reload115 = load i64, ptr %.reg2mem114, align 8
  store i64 %.reload115, ptr %.reg2mem181, align 8
  br label %5

._crit_edge2:                                     ; preds = %22
  store i32 1, ptr %.reg2mem175, align 4
  br label %25

25:                                               ; preds = %._crit_edge11, %._crit_edge2
  %.reload176 = load i32, ptr %.reg2mem175, align 4
  store i32 %.reload176, ptr %.reg2mem112, align 4
  store i64 1, ptr %.reg2mem173, align 8
  br label %26

26:                                               ; preds = %._crit_edge7, %25
  %.reload174 = load i64, ptr %.reg2mem173, align 8
  store i64 %.reload174, ptr %.reg2mem103, align 8
  %.reload111 = load i64, ptr %.reg2mem103, align 8
  %.reload154 = load ptr, ptr %.reg2mem146, align 8
  %27 = getelementptr inbounds [40 x [40 x double]], ptr %.reload154, i64 %.reload111
  %28 = getelementptr inbounds i8, ptr %27, i64 12800
  store ptr %28, ptr %.reg2mem101, align 8
  %29 = getelementptr i8, ptr %27, i64 -12800
  store ptr %29, ptr %.reg2mem99, align 8
  store i64 1, ptr %.reg2mem171, align 8
  br label %30

30:                                               ; preds = %._crit_edge5, %26
  %.reload172 = load i64, ptr %.reg2mem171, align 8
  store i64 %.reload172, ptr %.reg2mem90, align 8
  %.reload98 = load i64, ptr %.reg2mem90, align 8
  %31 = add nuw nsw i64 %.reload98, 1
  store i64 %31, ptr %.reg2mem86, align 8
  %.reload97 = load i64, ptr %.reg2mem90, align 8
  %32 = add nsw i64 %.reload97, -1
  store i64 %32, ptr %.reg2mem84, align 8
  store i64 1, ptr %.reg2mem169, align 8
  br label %33

33:                                               ; preds = %._crit_edge4, %30
  %.reload170 = load i64, ptr %.reg2mem169, align 8
  %.reload96 = load i64, ptr %.reg2mem90, align 8
  %.reload102 = load ptr, ptr %.reg2mem101, align 8
  %34 = getelementptr inbounds [40 x [40 x double]], ptr %.reload102, i64 0, i64 %.reload96, i64 %.reload170
  %35 = load double, ptr %34, align 8, !tbaa !5
  %.reload95 = load i64, ptr %.reg2mem90, align 8
  %.reload110 = load i64, ptr %.reg2mem103, align 8
  %.reload153 = load ptr, ptr %.reg2mem146, align 8
  %36 = getelementptr inbounds [40 x [40 x double]], ptr %.reload153, i64 %.reload110, i64 %.reload95, i64 %.reload170
  %37 = load double, ptr %36, align 8, !tbaa !5
  %38 = tail call double @llvm.fmuladd.f64(double %37, double -2.000000e+00, double %35)
  %.reload94 = load i64, ptr %.reg2mem90, align 8
  %.reload100 = load ptr, ptr %.reg2mem99, align 8
  %39 = getelementptr inbounds [40 x [40 x double]], ptr %.reload100, i64 0, i64 %.reload94, i64 %.reload170
  %40 = load double, ptr %39, align 8, !tbaa !5
  %41 = fadd double %38, %40
  %.reload89 = load i64, ptr %.reg2mem86, align 8
  %.reload109 = load i64, ptr %.reg2mem103, align 8
  %.reload152 = load ptr, ptr %.reg2mem146, align 8
  %42 = getelementptr inbounds [40 x [40 x double]], ptr %.reload152, i64 %.reload109, i64 %.reload89, i64 %.reload170
  %43 = load double, ptr %42, align 8, !tbaa !5
  %44 = tail call double @llvm.fmuladd.f64(double %37, double -2.000000e+00, double %43)
  %.reload85 = load i64, ptr %.reg2mem84, align 8
  %.reload108 = load i64, ptr %.reg2mem103, align 8
  %.reload151 = load ptr, ptr %.reg2mem146, align 8
  %45 = getelementptr inbounds [40 x [40 x double]], ptr %.reload151, i64 %.reload108, i64 %.reload85, i64 %.reload170
  %46 = load double, ptr %45, align 8, !tbaa !5
  %47 = fadd double %44, %46
  %48 = fmul double %47, 1.250000e-01
  %49 = tail call double @llvm.fmuladd.f64(double %41, double 1.250000e-01, double %48)
  %50 = add nuw nsw i64 %.reload170, 1
  store i64 %50, ptr %.reg2mem80, align 8
  %.reload83 = load i64, ptr %.reg2mem80, align 8
  %.reload93 = load i64, ptr %.reg2mem90, align 8
  %.reload107 = load i64, ptr %.reg2mem103, align 8
  %.reload150 = load ptr, ptr %.reg2mem146, align 8
  %51 = getelementptr inbounds [40 x [40 x double]], ptr %.reload150, i64 %.reload107, i64 %.reload93, i64 %.reload83
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = tail call double @llvm.fmuladd.f64(double %37, double -2.000000e+00, double %52)
  %54 = add nsw i64 %.reload170, -1
  %.reload92 = load i64, ptr %.reg2mem90, align 8
  %.reload106 = load i64, ptr %.reg2mem103, align 8
  %.reload149 = load ptr, ptr %.reg2mem146, align 8
  %55 = getelementptr inbounds [40 x [40 x double]], ptr %.reload149, i64 %.reload106, i64 %.reload92, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = fadd double %53, %56
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 1.250000e-01, double %49)
  %59 = fadd double %37, %58
  %.reload91 = load i64, ptr %.reg2mem90, align 8
  %.reload105 = load i64, ptr %.reg2mem103, align 8
  %.reload144 = load ptr, ptr %.reg2mem137, align 8
  %60 = getelementptr inbounds [40 x [40 x double]], ptr %.reload144, i64 %.reload105, i64 %.reload91, i64 %.reload170
  store double %59, ptr %60, align 8, !tbaa !5
  %.reload82 = load i64, ptr %.reg2mem80, align 8
  %61 = icmp eq i64 %.reload82, 39
  br i1 %61, label %62, label %._crit_edge4, !llvm.loop !14

._crit_edge4:                                     ; preds = %33
  %.reload81 = load i64, ptr %.reg2mem80, align 8
  store i64 %.reload81, ptr %.reg2mem169, align 8
  br label %33

62:                                               ; preds = %33
  %.reload88 = load i64, ptr %.reg2mem86, align 8
  %63 = icmp eq i64 %.reload88, 39
  br i1 %63, label %64, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %62
  %.reload87 = load i64, ptr %.reg2mem86, align 8
  store i64 %.reload87, ptr %.reg2mem171, align 8
  br label %30

64:                                               ; preds = %62
  %.reload104 = load i64, ptr %.reg2mem103, align 8
  %65 = add nuw nsw i64 %.reload104, 1
  store i64 %65, ptr %.reg2mem77, align 8
  %.reload79 = load i64, ptr %.reg2mem77, align 8
  %66 = icmp eq i64 %.reload79, 39
  br i1 %66, label %._crit_edge6, label %._crit_edge7, !llvm.loop !16

._crit_edge7:                                     ; preds = %64
  %.reload78 = load i64, ptr %.reg2mem77, align 8
  store i64 %.reload78, ptr %.reg2mem173, align 8
  br label %26

._crit_edge6:                                     ; preds = %64
  store i64 1, ptr %.reg2mem167, align 8
  br label %67

67:                                               ; preds = %._crit_edge10, %._crit_edge6
  %.reload168 = load i64, ptr %.reg2mem167, align 8
  store i64 %.reload168, ptr %.reg2mem68, align 8
  %.reload76 = load i64, ptr %.reg2mem68, align 8
  %.reload143 = load ptr, ptr %.reg2mem137, align 8
  %68 = getelementptr inbounds [40 x [40 x double]], ptr %.reload143, i64 %.reload76
  %69 = getelementptr inbounds i8, ptr %68, i64 12800
  store ptr %69, ptr %.reg2mem66, align 8
  %70 = getelementptr i8, ptr %68, i64 -12800
  store ptr %70, ptr %.reg2mem64, align 8
  store i64 1, ptr %.reg2mem165, align 8
  br label %71

71:                                               ; preds = %._crit_edge9, %67
  %.reload166 = load i64, ptr %.reg2mem165, align 8
  store i64 %.reload166, ptr %.reg2mem55, align 8
  %.reload63 = load i64, ptr %.reg2mem55, align 8
  %72 = add nuw nsw i64 %.reload63, 1
  store i64 %72, ptr %.reg2mem51, align 8
  %.reload62 = load i64, ptr %.reg2mem55, align 8
  %73 = add nsw i64 %.reload62, -1
  store i64 %73, ptr %.reg2mem49, align 8
  store i64 1, ptr %.reg2mem163, align 8
  br label %74

74:                                               ; preds = %._crit_edge8, %71
  %.reload164 = load i64, ptr %.reg2mem163, align 8
  %.reload61 = load i64, ptr %.reg2mem55, align 8
  %.reload67 = load ptr, ptr %.reg2mem66, align 8
  %75 = getelementptr inbounds [40 x [40 x double]], ptr %.reload67, i64 0, i64 %.reload61, i64 %.reload164
  %76 = load double, ptr %75, align 8, !tbaa !5
  %.reload60 = load i64, ptr %.reg2mem55, align 8
  %.reload75 = load i64, ptr %.reg2mem68, align 8
  %.reload142 = load ptr, ptr %.reg2mem137, align 8
  %77 = getelementptr inbounds [40 x [40 x double]], ptr %.reload142, i64 %.reload75, i64 %.reload60, i64 %.reload164
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = tail call double @llvm.fmuladd.f64(double %78, double -2.000000e+00, double %76)
  %.reload59 = load i64, ptr %.reg2mem55, align 8
  %.reload65 = load ptr, ptr %.reg2mem64, align 8
  %80 = getelementptr inbounds [40 x [40 x double]], ptr %.reload65, i64 0, i64 %.reload59, i64 %.reload164
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = fadd double %79, %81
  %.reload54 = load i64, ptr %.reg2mem51, align 8
  %.reload74 = load i64, ptr %.reg2mem68, align 8
  %.reload141 = load ptr, ptr %.reg2mem137, align 8
  %83 = getelementptr inbounds [40 x [40 x double]], ptr %.reload141, i64 %.reload74, i64 %.reload54, i64 %.reload164
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = tail call double @llvm.fmuladd.f64(double %78, double -2.000000e+00, double %84)
  %.reload50 = load i64, ptr %.reg2mem49, align 8
  %.reload73 = load i64, ptr %.reg2mem68, align 8
  %.reload140 = load ptr, ptr %.reg2mem137, align 8
  %86 = getelementptr inbounds [40 x [40 x double]], ptr %.reload140, i64 %.reload73, i64 %.reload50, i64 %.reload164
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = fadd double %85, %87
  %89 = fmul double %88, 1.250000e-01
  %90 = tail call double @llvm.fmuladd.f64(double %82, double 1.250000e-01, double %89)
  %91 = add nuw nsw i64 %.reload164, 1
  store i64 %91, ptr %.reg2mem45, align 8
  %.reload48 = load i64, ptr %.reg2mem45, align 8
  %.reload58 = load i64, ptr %.reg2mem55, align 8
  %.reload72 = load i64, ptr %.reg2mem68, align 8
  %.reload139 = load ptr, ptr %.reg2mem137, align 8
  %92 = getelementptr inbounds [40 x [40 x double]], ptr %.reload139, i64 %.reload72, i64 %.reload58, i64 %.reload48
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = tail call double @llvm.fmuladd.f64(double %78, double -2.000000e+00, double %93)
  %95 = add nsw i64 %.reload164, -1
  %.reload57 = load i64, ptr %.reg2mem55, align 8
  %.reload71 = load i64, ptr %.reg2mem68, align 8
  %.reload138 = load ptr, ptr %.reg2mem137, align 8
  %96 = getelementptr inbounds [40 x [40 x double]], ptr %.reload138, i64 %.reload71, i64 %.reload57, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !5
  %98 = fadd double %94, %97
  %99 = tail call double @llvm.fmuladd.f64(double %98, double 1.250000e-01, double %90)
  %100 = fadd double %78, %99
  %.reload56 = load i64, ptr %.reg2mem55, align 8
  %.reload70 = load i64, ptr %.reg2mem68, align 8
  %.reload148 = load ptr, ptr %.reg2mem146, align 8
  %101 = getelementptr inbounds [40 x [40 x double]], ptr %.reload148, i64 %.reload70, i64 %.reload56, i64 %.reload164
  store double %100, ptr %101, align 8, !tbaa !5
  %.reload47 = load i64, ptr %.reg2mem45, align 8
  %102 = icmp eq i64 %.reload47, 39
  br i1 %102, label %103, label %._crit_edge8, !llvm.loop !17

._crit_edge8:                                     ; preds = %74
  %.reload46 = load i64, ptr %.reg2mem45, align 8
  store i64 %.reload46, ptr %.reg2mem163, align 8
  br label %74

103:                                              ; preds = %74
  %.reload53 = load i64, ptr %.reg2mem51, align 8
  %104 = icmp eq i64 %.reload53, 39
  br i1 %104, label %105, label %._crit_edge9, !llvm.loop !18

._crit_edge9:                                     ; preds = %103
  %.reload52 = load i64, ptr %.reg2mem51, align 8
  store i64 %.reload52, ptr %.reg2mem165, align 8
  br label %71

105:                                              ; preds = %103
  %.reload69 = load i64, ptr %.reg2mem68, align 8
  %106 = add nuw nsw i64 %.reload69, 1
  store i64 %106, ptr %.reg2mem42, align 8
  %.reload44 = load i64, ptr %.reg2mem42, align 8
  %107 = icmp eq i64 %.reload44, 39
  br i1 %107, label %108, label %._crit_edge10, !llvm.loop !19

._crit_edge10:                                    ; preds = %105
  %.reload43 = load i64, ptr %.reg2mem42, align 8
  store i64 %.reload43, ptr %.reg2mem167, align 8
  br label %67

108:                                              ; preds = %105
  %.reload113 = load i32, ptr %.reg2mem112, align 4
  %109 = add nuw nsw i32 %.reload113, 1
  store i32 %109, ptr %.reg2mem39, align 4
  %.reload41 = load i32, ptr %.reg2mem39, align 4
  %110 = icmp eq i32 %.reload41, 101
  br i1 %110, label %111, label %._crit_edge11, !llvm.loop !20

._crit_edge11:                                    ; preds = %108
  %.reload40 = load i32, ptr %.reg2mem39, align 4
  store i32 %.reload40, ptr %.reg2mem175, align 4
  br label %25

111:                                              ; preds = %108
  %112 = load ptr, ptr @stderr, align 8, !tbaa !21
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str) #4
  %114 = load ptr, ptr @stderr, align 8, !tbaa !21
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i64 0, ptr %.reg2mem161, align 8
  br label %116

116:                                              ; preds = %._crit_edge15, %111
  %.reload162 = load i64, ptr %.reg2mem161, align 8
  store i64 %.reload162, ptr %.reg2mem35, align 8
  %.reload38 = load i64, ptr %.reg2mem35, align 8
  %117 = mul nuw nsw i64 %.reload38, 1600
  store i64 %117, ptr %.reg2mem33, align 8
  store i64 0, ptr %.reg2mem159, align 8
  br label %118

118:                                              ; preds = %._crit_edge14, %116
  %.reload160 = load i64, ptr %.reg2mem159, align 8
  store i64 %.reload160, ptr %.reg2mem29, align 8
  %.reload32 = load i64, ptr %.reg2mem29, align 8
  %119 = mul nuw nsw i64 %.reload32, 40
  %.reload34 = load i64, ptr %.reg2mem33, align 8
  %120 = add nuw nsw i64 %119, %.reload34
  store i64 %120, ptr %.reg2mem27, align 8
  store i64 0, ptr %.reg2mem157, align 8
  br label %121

121:                                              ; preds = %._crit_edge13, %118
  %.reload158 = load i64, ptr %.reg2mem157, align 8
  store i64 %.reload158, ptr %.reg2mem23, align 8
  %.reload26 = load i64, ptr %.reg2mem23, align 8
  %.reload28 = load i64, ptr %.reg2mem27, align 8
  %122 = add nuw nsw i64 %.reload28, %.reload26
  %123 = trunc nuw nsw i64 %122 to i32
  %124 = urem i32 %123, 20
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %._crit_edge12

._crit_edge12:                                    ; preds = %121
  br label %129

126:                                              ; preds = %121
  %127 = load ptr, ptr @stderr, align 8, !tbaa !21
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.3) #4
  br label %129

129:                                              ; preds = %._crit_edge12, %126
  %130 = load ptr, ptr @stderr, align 8, !tbaa !21
  %.reload25 = load i64, ptr %.reg2mem23, align 8
  %.reload31 = load i64, ptr %.reg2mem29, align 8
  %.reload37 = load i64, ptr %.reg2mem35, align 8
  %.reload147 = load ptr, ptr %.reg2mem146, align 8
  %131 = getelementptr inbounds [40 x [40 x double]], ptr %.reload147, i64 %.reload37, i64 %.reload31, i64 %.reload25
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.4, double noundef %132) #4
  %.reload24 = load i64, ptr %.reg2mem23, align 8
  %134 = add nuw nsw i64 %.reload24, 1
  store i64 %134, ptr %.reg2mem20, align 8
  %.reload22 = load i64, ptr %.reg2mem20, align 8
  %135 = icmp eq i64 %.reload22, 40
  br i1 %135, label %136, label %._crit_edge13, !llvm.loop !23

._crit_edge13:                                    ; preds = %129
  %.reload21 = load i64, ptr %.reg2mem20, align 8
  store i64 %.reload21, ptr %.reg2mem157, align 8
  br label %121

136:                                              ; preds = %129
  %.reload30 = load i64, ptr %.reg2mem29, align 8
  %137 = add nuw nsw i64 %.reload30, 1
  store i64 %137, ptr %.reg2mem17, align 8
  %.reload19 = load i64, ptr %.reg2mem17, align 8
  %138 = icmp eq i64 %.reload19, 40
  br i1 %138, label %139, label %._crit_edge14, !llvm.loop !24

._crit_edge14:                                    ; preds = %136
  %.reload18 = load i64, ptr %.reg2mem17, align 8
  store i64 %.reload18, ptr %.reg2mem159, align 8
  br label %118

139:                                              ; preds = %136
  %.reload36 = load i64, ptr %.reg2mem35, align 8
  %140 = add nuw nsw i64 %.reload36, 1
  store i64 %140, ptr %.reg2mem, align 8
  %.reload16 = load i64, ptr %.reg2mem, align 8
  %141 = icmp eq i64 %.reload16, 40
  br i1 %141, label %142, label %._crit_edge15, !llvm.loop !25

._crit_edge15:                                    ; preds = %139
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %.reg2mem161, align 8
  br label %116

142:                                              ; preds = %139
  %143 = load ptr, ptr @stderr, align 8, !tbaa !21
  %144 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %145 = load ptr, ptr @stderr, align 8, !tbaa !21
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.6) #4
  %.reload156 = load ptr, ptr %.reg2mem146, align 8
  tail call void @free(ptr noundef nonnull %.reload156) #4
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
!20 = distinct !{!20, !10, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
