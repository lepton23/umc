; ModuleID = './polybench-output/no-phis/fdtd-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/fdtd-2d/fdtd-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i64, align 8
  %.reg2mem25 = alloca i64, align 8
  %.reg2mem28 = alloca i64, align 8
  %.reg2mem32 = alloca i64, align 8
  %.reg2mem34 = alloca i64, align 8
  %.reg2mem38 = alloca i64, align 8
  %.reg2mem41 = alloca i64, align 8
  %.reg2mem44 = alloca i64, align 8
  %.reg2mem48 = alloca i64, align 8
  %.reg2mem50 = alloca i64, align 8
  %.reg2mem54 = alloca i64, align 8
  %.reg2mem57 = alloca i64, align 8
  %.reg2mem60 = alloca i64, align 8
  %.reg2mem64 = alloca i64, align 8
  %.reg2mem66 = alloca i64, align 8
  %.reg2mem70 = alloca i64, align 8
  %.reg2mem73 = alloca i64, align 8
  %.reg2mem76 = alloca i64, align 8
  %.reg2mem80 = alloca i64, align 8
  %.reg2mem87 = alloca i64, align 8
  %.reg2mem90 = alloca i64, align 8
  %.reg2mem93 = alloca i64, align 8
  %.reg2mem98 = alloca i64, align 8
  %.reg2mem101 = alloca i64, align 8
  %.reg2mem104 = alloca i64, align 8
  %.reg2mem109 = alloca i64, align 8
  %.reg2mem112 = alloca double, align 8
  %.reg2mem114 = alloca i64, align 8
  %.reg2mem117 = alloca ptr, align 8
  %.reg2mem119 = alloca ptr, align 8
  %.reg2mem121 = alloca i64, align 8
  %.reg2mem124 = alloca i64, align 8
  %.reg2mem128 = alloca i64, align 8
  %.reg2mem136 = alloca i64, align 8
  %.reg2mem139 = alloca ptr, align 8
  %.reg2mem143 = alloca ptr, align 8
  %.reg2mem152 = alloca ptr, align 8
  %.reg2mem160 = alloca ptr, align 8
  %.reg2mem167 = alloca i64, align 8
  %.reg2mem169 = alloca i64, align 8
  %.reg2mem171 = alloca i64, align 8
  %.reg2mem173 = alloca i64, align 8
  %.reg2mem175 = alloca i64, align 8
  %.reg2mem177 = alloca i64, align 8
  %.reg2mem179 = alloca i64, align 8
  %.reg2mem181 = alloca i64, align 8
  %.reg2mem183 = alloca i64, align 8
  %.reg2mem185 = alloca i64, align 8
  %.reg2mem187 = alloca i64, align 8
  %.reg2mem189 = alloca i64, align 8
  %.reg2mem191 = alloca i64, align 8
  %.reg2mem193 = alloca i64, align 8
  %.reg2mem195 = alloca i64, align 8
  %.reg2mem197 = alloca i64, align 8
  %.reg2mem199 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #4
  store ptr %3, ptr %.reg2mem160, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #4
  store ptr %4, ptr %.reg2mem152, align 8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #4
  store ptr %5, ptr %.reg2mem143, align 8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 100, i32 noundef 8) #4
  store ptr %6, ptr %.reg2mem139, align 8
  store i64 0, ptr %.reg2mem199, align 8
  br label %7

7:                                                ; preds = %._crit_edge1, %2
  %.reload200 = load i64, ptr %.reg2mem199, align 8
  %8 = trunc nuw nsw i64 %.reload200 to i32
  %9 = uitofp nneg i32 %8 to double
  %.reload141 = load ptr, ptr %.reg2mem139, align 8
  %10 = getelementptr inbounds double, ptr %.reload141, i64 %.reload200
  store double %9, ptr %10, align 8, !tbaa !5
  %11 = add nuw nsw i64 %.reload200, 1
  store i64 %11, ptr %.reg2mem136, align 8
  %.reload138 = load i64, ptr %.reg2mem136, align 8
  %12 = icmp eq i64 %.reload138, 100
  br i1 %12, label %._crit_edge, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %7
  %.reload137 = load i64, ptr %.reg2mem136, align 8
  store i64 %.reload137, ptr %.reg2mem199, align 8
  br label %7

._crit_edge:                                      ; preds = %7
  store i64 0, ptr %.reg2mem197, align 8
  br label %13

13:                                               ; preds = %._crit_edge3, %._crit_edge
  %.reload198 = load i64, ptr %.reg2mem197, align 8
  store i64 %.reload198, ptr %.reg2mem128, align 8
  store i64 0, ptr %.reg2mem195, align 8
  br label %14

14:                                               ; preds = %._crit_edge2, %13
  %.reload196 = load i64, ptr %.reg2mem195, align 8
  %15 = add nuw nsw i64 %.reload196, 1
  store i64 %15, ptr %.reg2mem124, align 8
  %.reload127 = load i64, ptr %.reg2mem124, align 8
  %.reload135 = load i64, ptr %.reg2mem128, align 8
  %16 = mul nuw nsw i64 %.reload127, %.reload135
  %17 = trunc nuw nsw i64 %16 to i32
  %18 = uitofp nneg i32 %17 to double
  %19 = fdiv double %18, 2.000000e+02
  %.reload134 = load i64, ptr %.reg2mem128, align 8
  %.reload165 = load ptr, ptr %.reg2mem160, align 8
  %20 = getelementptr inbounds [240 x double], ptr %.reload165, i64 %.reload134, i64 %.reload196
  store double %19, ptr %20, align 8, !tbaa !5
  %21 = add nuw nsw i64 %.reload196, 2
  %.reload133 = load i64, ptr %.reg2mem128, align 8
  %22 = mul nuw nsw i64 %21, %.reload133
  %23 = trunc nuw nsw i64 %22 to i32
  %24 = uitofp nneg i32 %23 to double
  %25 = fdiv double %24, 2.400000e+02
  %.reload132 = load i64, ptr %.reg2mem128, align 8
  %.reload158 = load ptr, ptr %.reg2mem152, align 8
  %26 = getelementptr inbounds [240 x double], ptr %.reload158, i64 %.reload132, i64 %.reload196
  store double %25, ptr %26, align 8, !tbaa !5
  %27 = add nuw nsw i64 %.reload196, 3
  %.reload131 = load i64, ptr %.reg2mem128, align 8
  %28 = mul nuw nsw i64 %27, %.reload131
  %29 = trunc nuw nsw i64 %28 to i32
  %30 = uitofp nneg i32 %29 to double
  %31 = fdiv double %30, 2.000000e+02
  %.reload130 = load i64, ptr %.reg2mem128, align 8
  %.reload150 = load ptr, ptr %.reg2mem143, align 8
  %32 = getelementptr inbounds [240 x double], ptr %.reload150, i64 %.reload130, i64 %.reload196
  store double %31, ptr %32, align 8, !tbaa !5
  %.reload126 = load i64, ptr %.reg2mem124, align 8
  %33 = icmp eq i64 %.reload126, 240
  br i1 %33, label %34, label %._crit_edge2, !llvm.loop !12

._crit_edge2:                                     ; preds = %14
  %.reload125 = load i64, ptr %.reg2mem124, align 8
  store i64 %.reload125, ptr %.reg2mem195, align 8
  br label %14

34:                                               ; preds = %14
  %.reload129 = load i64, ptr %.reg2mem128, align 8
  %35 = add nuw nsw i64 %.reload129, 1
  store i64 %35, ptr %.reg2mem121, align 8
  %.reload123 = load i64, ptr %.reg2mem121, align 8
  %36 = icmp eq i64 %.reload123, 200
  br i1 %36, label %37, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %34
  %.reload122 = load i64, ptr %.reg2mem121, align 8
  store i64 %.reload122, ptr %.reg2mem197, align 8
  br label %13

37:                                               ; preds = %34
  %.reload149 = load ptr, ptr %.reg2mem143, align 8
  %38 = getelementptr i8, ptr %.reload149, i64 -1920
  store ptr %38, ptr %.reg2mem119, align 8
  %.reload157 = load ptr, ptr %.reg2mem152, align 8
  %39 = getelementptr inbounds i8, ptr %.reload157, i64 1920
  store ptr %39, ptr %.reg2mem117, align 8
  store i64 0, ptr %.reg2mem193, align 8
  br label %40

40:                                               ; preds = %._crit_edge14, %37
  %.reload194 = load i64, ptr %.reg2mem193, align 8
  store i64 %.reload194, ptr %.reg2mem114, align 8
  %.reload116 = load i64, ptr %.reg2mem114, align 8
  %.reload140 = load ptr, ptr %.reg2mem139, align 8
  %41 = getelementptr inbounds double, ptr %.reload140, i64 %.reload116
  %42 = load double, ptr %41, align 8, !tbaa !5
  store double %42, ptr %.reg2mem112, align 8
  store i64 0, ptr %.reg2mem191, align 8
  br label %43

43:                                               ; preds = %._crit_edge5, %40
  %.reload192 = load i64, ptr %.reg2mem191, align 8
  %.reload156 = load ptr, ptr %.reg2mem152, align 8
  %44 = getelementptr inbounds [240 x double], ptr %.reload156, i64 0, i64 %.reload192
  %.reload113 = load double, ptr %.reg2mem112, align 8
  store double %.reload113, ptr %44, align 8, !tbaa !5
  %45 = add nuw nsw i64 %.reload192, 1
  store i64 %45, ptr %.reg2mem109, align 8
  %.reload111 = load i64, ptr %.reg2mem109, align 8
  %46 = icmp eq i64 %.reload111, 240
  br i1 %46, label %._crit_edge4, label %._crit_edge5, !llvm.loop !14

._crit_edge5:                                     ; preds = %43
  %.reload110 = load i64, ptr %.reg2mem109, align 8
  store i64 %.reload110, ptr %.reg2mem191, align 8
  br label %43

._crit_edge4:                                     ; preds = %43
  store i64 1, ptr %.reg2mem189, align 8
  br label %47

47:                                               ; preds = %._crit_edge8, %._crit_edge4
  %.reload190 = load i64, ptr %.reg2mem189, align 8
  store i64 %.reload190, ptr %.reg2mem104, align 8
  store i64 0, ptr %.reg2mem187, align 8
  br label %48

48:                                               ; preds = %._crit_edge6, %47
  %.reload188 = load i64, ptr %.reg2mem187, align 8
  %.reload108 = load i64, ptr %.reg2mem104, align 8
  %.reload155 = load ptr, ptr %.reg2mem152, align 8
  %49 = getelementptr inbounds [240 x double], ptr %.reload155, i64 %.reload108, i64 %.reload188
  %50 = load double, ptr %49, align 8, !tbaa !5
  %.reload107 = load i64, ptr %.reg2mem104, align 8
  %.reload148 = load ptr, ptr %.reg2mem143, align 8
  %51 = getelementptr inbounds [240 x double], ptr %.reload148, i64 %.reload107, i64 %.reload188
  %52 = load double, ptr %51, align 8, !tbaa !5
  %.reload106 = load i64, ptr %.reg2mem104, align 8
  %.reload120 = load ptr, ptr %.reg2mem119, align 8
  %53 = getelementptr nusw [240 x double], ptr %.reload120, i64 %.reload106, i64 %.reload188
  %54 = load double, ptr %53, align 8, !tbaa !5
  %55 = fsub double %52, %54
  %56 = tail call double @llvm.fmuladd.f64(double %55, double -5.000000e-01, double %50)
  store double %56, ptr %49, align 8, !tbaa !5
  %57 = add nuw nsw i64 %.reload188, 1
  store i64 %57, ptr %.reg2mem101, align 8
  %.reload103 = load i64, ptr %.reg2mem101, align 8
  %58 = icmp eq i64 %.reload103, 240
  br i1 %58, label %59, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %48
  %.reload102 = load i64, ptr %.reg2mem101, align 8
  store i64 %.reload102, ptr %.reg2mem187, align 8
  br label %48

59:                                               ; preds = %48
  %.reload105 = load i64, ptr %.reg2mem104, align 8
  %60 = add nuw nsw i64 %.reload105, 1
  store i64 %60, ptr %.reg2mem98, align 8
  %.reload100 = load i64, ptr %.reg2mem98, align 8
  %61 = icmp eq i64 %.reload100, 200
  br i1 %61, label %._crit_edge7, label %._crit_edge8, !llvm.loop !16

._crit_edge8:                                     ; preds = %59
  %.reload99 = load i64, ptr %.reg2mem98, align 8
  store i64 %.reload99, ptr %.reg2mem189, align 8
  br label %47

._crit_edge7:                                     ; preds = %59
  store i64 0, ptr %.reg2mem185, align 8
  br label %62

62:                                               ; preds = %._crit_edge11, %._crit_edge7
  %.reload186 = load i64, ptr %.reg2mem185, align 8
  store i64 %.reload186, ptr %.reg2mem93, align 8
  store i64 1, ptr %.reg2mem183, align 8
  br label %63

63:                                               ; preds = %._crit_edge9, %62
  %.reload184 = load i64, ptr %.reg2mem183, align 8
  %.reload97 = load i64, ptr %.reg2mem93, align 8
  %.reload164 = load ptr, ptr %.reg2mem160, align 8
  %64 = getelementptr inbounds [240 x double], ptr %.reload164, i64 %.reload97, i64 %.reload184
  %65 = load double, ptr %64, align 8, !tbaa !5
  %.reload96 = load i64, ptr %.reg2mem93, align 8
  %.reload147 = load ptr, ptr %.reg2mem143, align 8
  %66 = getelementptr inbounds [240 x double], ptr %.reload147, i64 %.reload96, i64 %.reload184
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = add nsw i64 %.reload184, -1
  %.reload95 = load i64, ptr %.reg2mem93, align 8
  %.reload146 = load ptr, ptr %.reg2mem143, align 8
  %69 = getelementptr inbounds [240 x double], ptr %.reload146, i64 %.reload95, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = fsub double %67, %70
  %72 = tail call double @llvm.fmuladd.f64(double %71, double -5.000000e-01, double %65)
  store double %72, ptr %64, align 8, !tbaa !5
  %73 = add nuw nsw i64 %.reload184, 1
  store i64 %73, ptr %.reg2mem90, align 8
  %.reload92 = load i64, ptr %.reg2mem90, align 8
  %74 = icmp eq i64 %.reload92, 240
  br i1 %74, label %75, label %._crit_edge9, !llvm.loop !17

._crit_edge9:                                     ; preds = %63
  %.reload91 = load i64, ptr %.reg2mem90, align 8
  store i64 %.reload91, ptr %.reg2mem183, align 8
  br label %63

75:                                               ; preds = %63
  %.reload94 = load i64, ptr %.reg2mem93, align 8
  %76 = add nuw nsw i64 %.reload94, 1
  store i64 %76, ptr %.reg2mem87, align 8
  %.reload89 = load i64, ptr %.reg2mem87, align 8
  %77 = icmp eq i64 %.reload89, 200
  br i1 %77, label %._crit_edge10, label %._crit_edge11, !llvm.loop !18

._crit_edge11:                                    ; preds = %75
  %.reload88 = load i64, ptr %.reg2mem87, align 8
  store i64 %.reload88, ptr %.reg2mem185, align 8
  br label %62

._crit_edge10:                                    ; preds = %75
  store i64 0, ptr %.reg2mem181, align 8
  br label %78

78:                                               ; preds = %._crit_edge13, %._crit_edge10
  %.reload182 = load i64, ptr %.reg2mem181, align 8
  store i64 %.reload182, ptr %.reg2mem80, align 8
  store i64 0, ptr %.reg2mem179, align 8
  br label %79

79:                                               ; preds = %._crit_edge12, %78
  %.reload180 = load i64, ptr %.reg2mem179, align 8
  %.reload86 = load i64, ptr %.reg2mem80, align 8
  %.reload145 = load ptr, ptr %.reg2mem143, align 8
  %80 = getelementptr inbounds [240 x double], ptr %.reload145, i64 %.reload86, i64 %.reload180
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = add nuw nsw i64 %.reload180, 1
  store i64 %82, ptr %.reg2mem76, align 8
  %.reload79 = load i64, ptr %.reg2mem76, align 8
  %.reload85 = load i64, ptr %.reg2mem80, align 8
  %.reload163 = load ptr, ptr %.reg2mem160, align 8
  %83 = getelementptr inbounds [240 x double], ptr %.reload163, i64 %.reload85, i64 %.reload79
  %84 = load double, ptr %83, align 8, !tbaa !5
  %.reload84 = load i64, ptr %.reg2mem80, align 8
  %.reload162 = load ptr, ptr %.reg2mem160, align 8
  %85 = getelementptr inbounds [240 x double], ptr %.reload162, i64 %.reload84, i64 %.reload180
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = fsub double %84, %86
  %.reload83 = load i64, ptr %.reg2mem80, align 8
  %.reload118 = load ptr, ptr %.reg2mem117, align 8
  %88 = getelementptr inbounds [240 x double], ptr %.reload118, i64 %.reload83, i64 %.reload180
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = fadd double %87, %89
  %.reload82 = load i64, ptr %.reg2mem80, align 8
  %.reload154 = load ptr, ptr %.reg2mem152, align 8
  %91 = getelementptr inbounds [240 x double], ptr %.reload154, i64 %.reload82, i64 %.reload180
  %92 = load double, ptr %91, align 8, !tbaa !5
  %93 = fsub double %90, %92
  %94 = tail call double @llvm.fmuladd.f64(double %93, double 0xBFE6666666666666, double %81)
  store double %94, ptr %80, align 8, !tbaa !5
  %.reload78 = load i64, ptr %.reg2mem76, align 8
  %95 = icmp eq i64 %.reload78, 239
  br i1 %95, label %96, label %._crit_edge12, !llvm.loop !19

._crit_edge12:                                    ; preds = %79
  %.reload77 = load i64, ptr %.reg2mem76, align 8
  store i64 %.reload77, ptr %.reg2mem179, align 8
  br label %79

96:                                               ; preds = %79
  %.reload81 = load i64, ptr %.reg2mem80, align 8
  %97 = add nuw nsw i64 %.reload81, 1
  store i64 %97, ptr %.reg2mem73, align 8
  %.reload75 = load i64, ptr %.reg2mem73, align 8
  %98 = icmp eq i64 %.reload75, 199
  br i1 %98, label %99, label %._crit_edge13, !llvm.loop !20

._crit_edge13:                                    ; preds = %96
  %.reload74 = load i64, ptr %.reg2mem73, align 8
  store i64 %.reload74, ptr %.reg2mem181, align 8
  br label %78

99:                                               ; preds = %96
  %.reload115 = load i64, ptr %.reg2mem114, align 8
  %100 = add nuw nsw i64 %.reload115, 1
  store i64 %100, ptr %.reg2mem70, align 8
  %.reload72 = load i64, ptr %.reg2mem70, align 8
  %101 = icmp eq i64 %.reload72, 100
  br i1 %101, label %102, label %._crit_edge14, !llvm.loop !21

._crit_edge14:                                    ; preds = %99
  %.reload71 = load i64, ptr %.reg2mem70, align 8
  store i64 %.reload71, ptr %.reg2mem193, align 8
  br label %40

102:                                              ; preds = %99
  %103 = load ptr, ptr @stderr, align 8, !tbaa !22
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str) #4
  %105 = load ptr, ptr @stderr, align 8, !tbaa !22
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i64 0, ptr %.reg2mem177, align 8
  br label %107

107:                                              ; preds = %._crit_edge17, %102
  %.reload178 = load i64, ptr %.reg2mem177, align 8
  store i64 %.reload178, ptr %.reg2mem66, align 8
  %.reload69 = load i64, ptr %.reg2mem66, align 8
  %108 = mul nuw nsw i64 %.reload69, 200
  store i64 %108, ptr %.reg2mem64, align 8
  store i64 0, ptr %.reg2mem175, align 8
  br label %109

109:                                              ; preds = %._crit_edge16, %107
  %.reload176 = load i64, ptr %.reg2mem175, align 8
  store i64 %.reload176, ptr %.reg2mem60, align 8
  %.reload63 = load i64, ptr %.reg2mem60, align 8
  %.reload65 = load i64, ptr %.reg2mem64, align 8
  %110 = add nuw nsw i64 %.reload63, %.reload65
  %111 = trunc nuw nsw i64 %110 to i32
  %112 = urem i32 %111, 20
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %._crit_edge15

._crit_edge15:                                    ; preds = %109
  br label %117

114:                                              ; preds = %109
  %115 = load ptr, ptr @stderr, align 8, !tbaa !22
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.3) #4
  br label %117

117:                                              ; preds = %._crit_edge15, %114
  %118 = load ptr, ptr @stderr, align 8, !tbaa !22
  %.reload62 = load i64, ptr %.reg2mem60, align 8
  %.reload68 = load i64, ptr %.reg2mem66, align 8
  %.reload161 = load ptr, ptr %.reg2mem160, align 8
  %119 = getelementptr inbounds [240 x double], ptr %.reload161, i64 %.reload68, i64 %.reload62
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.4, double noundef %120) #4
  %.reload61 = load i64, ptr %.reg2mem60, align 8
  %122 = add nuw nsw i64 %.reload61, 1
  store i64 %122, ptr %.reg2mem57, align 8
  %.reload59 = load i64, ptr %.reg2mem57, align 8
  %123 = icmp eq i64 %.reload59, 240
  br i1 %123, label %124, label %._crit_edge16, !llvm.loop !24

._crit_edge16:                                    ; preds = %117
  %.reload58 = load i64, ptr %.reg2mem57, align 8
  store i64 %.reload58, ptr %.reg2mem175, align 8
  br label %109

124:                                              ; preds = %117
  %.reload67 = load i64, ptr %.reg2mem66, align 8
  %125 = add nuw nsw i64 %.reload67, 1
  store i64 %125, ptr %.reg2mem54, align 8
  %.reload56 = load i64, ptr %.reg2mem54, align 8
  %126 = icmp eq i64 %.reload56, 200
  br i1 %126, label %127, label %._crit_edge17, !llvm.loop !25

._crit_edge17:                                    ; preds = %124
  %.reload55 = load i64, ptr %.reg2mem54, align 8
  store i64 %.reload55, ptr %.reg2mem177, align 8
  br label %107

127:                                              ; preds = %124
  %128 = load ptr, ptr @stderr, align 8, !tbaa !22
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %130 = load ptr, ptr @stderr, align 8, !tbaa !22
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.6) #4
  %132 = load ptr, ptr @stderr, align 8, !tbaa !22
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #4
  store i64 0, ptr %.reg2mem173, align 8
  br label %134

134:                                              ; preds = %._crit_edge20, %127
  %.reload174 = load i64, ptr %.reg2mem173, align 8
  store i64 %.reload174, ptr %.reg2mem50, align 8
  %.reload53 = load i64, ptr %.reg2mem50, align 8
  %135 = mul nuw nsw i64 %.reload53, 200
  store i64 %135, ptr %.reg2mem48, align 8
  store i64 0, ptr %.reg2mem171, align 8
  br label %136

136:                                              ; preds = %._crit_edge19, %134
  %.reload172 = load i64, ptr %.reg2mem171, align 8
  store i64 %.reload172, ptr %.reg2mem44, align 8
  %.reload47 = load i64, ptr %.reg2mem44, align 8
  %.reload49 = load i64, ptr %.reg2mem48, align 8
  %137 = add nuw nsw i64 %.reload47, %.reload49
  %138 = trunc nuw nsw i64 %137 to i32
  %139 = urem i32 %138, 20
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %._crit_edge18

._crit_edge18:                                    ; preds = %136
  br label %144

141:                                              ; preds = %136
  %142 = load ptr, ptr @stderr, align 8, !tbaa !22
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef nonnull @.str.3) #4
  br label %144

144:                                              ; preds = %._crit_edge18, %141
  %145 = load ptr, ptr @stderr, align 8, !tbaa !22
  %.reload46 = load i64, ptr %.reg2mem44, align 8
  %.reload52 = load i64, ptr %.reg2mem50, align 8
  %.reload153 = load ptr, ptr %.reg2mem152, align 8
  %146 = getelementptr inbounds [240 x double], ptr %.reload153, i64 %.reload52, i64 %.reload46
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.4, double noundef %147) #4
  %.reload45 = load i64, ptr %.reg2mem44, align 8
  %149 = add nuw nsw i64 %.reload45, 1
  store i64 %149, ptr %.reg2mem41, align 8
  %.reload43 = load i64, ptr %.reg2mem41, align 8
  %150 = icmp eq i64 %.reload43, 240
  br i1 %150, label %151, label %._crit_edge19, !llvm.loop !26

._crit_edge19:                                    ; preds = %144
  %.reload42 = load i64, ptr %.reg2mem41, align 8
  store i64 %.reload42, ptr %.reg2mem171, align 8
  br label %136

151:                                              ; preds = %144
  %.reload51 = load i64, ptr %.reg2mem50, align 8
  %152 = add nuw nsw i64 %.reload51, 1
  store i64 %152, ptr %.reg2mem38, align 8
  %.reload40 = load i64, ptr %.reg2mem38, align 8
  %153 = icmp eq i64 %.reload40, 200
  br i1 %153, label %154, label %._crit_edge20, !llvm.loop !27

._crit_edge20:                                    ; preds = %151
  %.reload39 = load i64, ptr %.reg2mem38, align 8
  store i64 %.reload39, ptr %.reg2mem173, align 8
  br label %134

154:                                              ; preds = %151
  %155 = load ptr, ptr @stderr, align 8, !tbaa !22
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #4
  %157 = load ptr, ptr @stderr, align 8, !tbaa !22
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #4
  store i64 0, ptr %.reg2mem169, align 8
  br label %159

159:                                              ; preds = %._crit_edge23, %154
  %.reload170 = load i64, ptr %.reg2mem169, align 8
  store i64 %.reload170, ptr %.reg2mem34, align 8
  %.reload37 = load i64, ptr %.reg2mem34, align 8
  %160 = mul nuw nsw i64 %.reload37, 200
  store i64 %160, ptr %.reg2mem32, align 8
  store i64 0, ptr %.reg2mem167, align 8
  br label %161

161:                                              ; preds = %._crit_edge22, %159
  %.reload168 = load i64, ptr %.reg2mem167, align 8
  store i64 %.reload168, ptr %.reg2mem28, align 8
  %.reload31 = load i64, ptr %.reg2mem28, align 8
  %.reload33 = load i64, ptr %.reg2mem32, align 8
  %162 = add nuw nsw i64 %.reload31, %.reload33
  %163 = trunc nuw nsw i64 %162 to i32
  %164 = urem i32 %163, 20
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %._crit_edge21

._crit_edge21:                                    ; preds = %161
  br label %169

166:                                              ; preds = %161
  %167 = load ptr, ptr @stderr, align 8, !tbaa !22
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.3) #4
  br label %169

169:                                              ; preds = %._crit_edge21, %166
  %170 = load ptr, ptr @stderr, align 8, !tbaa !22
  %.reload30 = load i64, ptr %.reg2mem28, align 8
  %.reload36 = load i64, ptr %.reg2mem34, align 8
  %.reload144 = load ptr, ptr %.reg2mem143, align 8
  %171 = getelementptr inbounds [240 x double], ptr %.reload144, i64 %.reload36, i64 %.reload30
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.4, double noundef %172) #4
  %.reload29 = load i64, ptr %.reg2mem28, align 8
  %174 = add nuw nsw i64 %.reload29, 1
  store i64 %174, ptr %.reg2mem25, align 8
  %.reload27 = load i64, ptr %.reg2mem25, align 8
  %175 = icmp eq i64 %.reload27, 240
  br i1 %175, label %176, label %._crit_edge22, !llvm.loop !28

._crit_edge22:                                    ; preds = %169
  %.reload26 = load i64, ptr %.reg2mem25, align 8
  store i64 %.reload26, ptr %.reg2mem167, align 8
  br label %161

176:                                              ; preds = %169
  %.reload35 = load i64, ptr %.reg2mem34, align 8
  %177 = add nuw nsw i64 %.reload35, 1
  store i64 %177, ptr %.reg2mem, align 8
  %.reload24 = load i64, ptr %.reg2mem, align 8
  %178 = icmp eq i64 %.reload24, 200
  br i1 %178, label %179, label %._crit_edge23, !llvm.loop !29

._crit_edge23:                                    ; preds = %176
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %.reg2mem169, align 8
  br label %159

179:                                              ; preds = %176
  %180 = load ptr, ptr @stderr, align 8, !tbaa !22
  %181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #4
  %.reload166 = load ptr, ptr %.reg2mem160, align 8
  tail call void @free(ptr noundef %.reload166) #4
  %.reload159 = load ptr, ptr %.reg2mem152, align 8
  tail call void @free(ptr noundef %.reload159) #4
  %.reload151 = load ptr, ptr %.reg2mem143, align 8
  tail call void @free(ptr noundef nonnull %.reload151) #4
  %.reload142 = load ptr, ptr %.reg2mem139, align 8
  tail call void @free(ptr noundef %.reload142) #4
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
!21 = distinct !{!21, !10, !11}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
