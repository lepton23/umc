; ModuleID = './polybench-output/wasm/no-phis/lu.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/lu/lu.c"
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
  %.reg2mem29 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem38 = alloca i32, align 4
  %.reg2mem42 = alloca ptr, align 4
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem55 = alloca i32, align 4
  %.reg2mem58 = alloca double, align 8
  %.reg2mem61 = alloca double, align 8
  %.reg2mem63 = alloca ptr, align 4
  %.reg2mem66 = alloca i32, align 4
  %.reg2mem70 = alloca i32, align 4
  %.reg2mem73 = alloca i32, align 4
  %.reg2mem76 = alloca double, align 8
  %.reg2mem80 = alloca double, align 8
  %.reg2mem82 = alloca ptr, align 4
  %.reg2mem85 = alloca double, align 8
  %.reg2mem87 = alloca i32, align 4
  %.reg2mem95 = alloca ptr, align 4
  %.reg2mem97 = alloca i1, align 1
  %.reg2mem100 = alloca i32, align 4
  %.reg2mem112 = alloca i32, align 4
  %.reg2mem115 = alloca i32, align 4
  %.reg2mem118 = alloca i32, align 4
  %.reg2mem122 = alloca i32, align 4
  %.reg2mem125 = alloca i32, align 4
  %.reg2mem128 = alloca i32, align 4
  %.reg2mem131 = alloca ptr, align 4
  %.reg2mem133 = alloca i32, align 4
  %.reg2mem137 = alloca i32, align 4
  %.reg2mem141 = alloca i32, align 4
  %.reg2mem144 = alloca i32, align 4
  %.reg2mem147 = alloca i32, align 4
  %.reg2mem150 = alloca ptr, align 4
  %.reg2mem155 = alloca i32, align 4
  %.reg2mem157 = alloca i32, align 4
  %.reg2mem160 = alloca i32, align 4
  %.reg2mem164 = alloca i32, align 4
  %.reg2mem167 = alloca i32, align 4
  %.reg2mem173 = alloca i32, align 4
  %.reg2mem176 = alloca ptr, align 4
  %.reg2mem194 = alloca i32, align 4
  %.reg2mem196 = alloca i32, align 4
  %.reg2mem198 = alloca i32, align 4
  %.reg2mem200 = alloca double, align 8
  %.reg2mem202 = alloca i32, align 4
  %.reg2mem204 = alloca double, align 8
  %.reg2mem206 = alloca i32, align 4
  %.reg2mem208 = alloca double, align 8
  %.reg2mem210 = alloca i32, align 4
  %.reg2mem212 = alloca i32, align 4
  %.reg2mem214 = alloca i32, align 4
  %.reg2mem216 = alloca i32, align 4
  %.reg2mem218 = alloca i32, align 4
  %.reg2mem220 = alloca i32, align 4
  %.reg2mem222 = alloca i32, align 4
  %.reg2mem224 = alloca i32, align 4
  %.reg2mem226 = alloca i32, align 4
  %.reg2mem228 = alloca i32, align 4
  %.reg2mem230 = alloca i32, align 4
  %.reg2mem232 = alloca i32, align 4
  %.reg2mem234 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem176, align 4
  store i32 0, ptr %.reg2mem232, align 4
  store i32 1, ptr %.reg2mem234, align 4
  br label %4

4:                                                ; preds = %._crit_edge5, %2
  %.reload235 = load i32, ptr %.reg2mem234, align 4
  %.reload233 = load i32, ptr %.reg2mem232, align 4
  store i32 %.reload235, ptr %.reg2mem173, align 4
  store i32 %.reload233, ptr %.reg2mem167, align 4
  store i32 0, ptr %.reg2mem230, align 4
  br label %5

5:                                                ; preds = %._crit_edge, %4
  %.reload231 = load i32, ptr %.reg2mem230, align 4
  %6 = sub nsw i32 0, %.reload231
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %7, 4.000000e+02
  %9 = fadd double %8, 1.000000e+00
  %.reload172 = load i32, ptr %.reg2mem167, align 4
  %.reload192 = load ptr, ptr %.reg2mem176, align 4
  %10 = getelementptr inbounds [400 x double], ptr %.reload192, i32 %.reload172, i32 %.reload231
  store double %9, ptr %10, align 8, !tbaa !2
  %11 = add nuw nsw i32 %.reload231, 1
  store i32 %11, ptr %.reg2mem164, align 4
  %.reload166 = load i32, ptr %.reg2mem164, align 4
  %.reload175 = load i32, ptr %.reg2mem173, align 4
  %12 = icmp eq i32 %.reload166, %.reload175
  br i1 %12, label %13, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %5
  %.reload165 = load i32, ptr %.reg2mem164, align 4
  store i32 %.reload165, ptr %.reg2mem230, align 4
  br label %5

13:                                               ; preds = %5
  %.reload171 = load i32, ptr %.reg2mem167, align 4
  %14 = add nuw nsw i32 %.reload171, 1
  store i32 %14, ptr %.reg2mem160, align 4
  %.reload170 = load i32, ptr %.reg2mem167, align 4
  %15 = icmp ult i32 %.reload170, 399
  br i1 %15, label %._crit_edge1, label %._crit_edge2

._crit_edge2:                                     ; preds = %13
  br label %20

._crit_edge1:                                     ; preds = %13
  %.reload161 = load i32, ptr %.reg2mem160, align 4
  store i32 %.reload161, ptr %.reg2mem228, align 4
  br label %16

16:                                               ; preds = %._crit_edge4, %._crit_edge1
  %.reload229 = load i32, ptr %.reg2mem228, align 4
  %.reload168 = load i32, ptr %.reg2mem167, align 4
  %.reload187 = load ptr, ptr %.reg2mem176, align 4
  %17 = getelementptr inbounds [400 x double], ptr %.reload187, i32 %.reload168, i32 %.reload229
  store double 0.000000e+00, ptr %17, align 8, !tbaa !2
  %18 = add nuw nsw i32 %.reload229, 1
  store i32 %18, ptr %.reg2mem157, align 4
  %.reload159 = load i32, ptr %.reg2mem157, align 4
  %19 = icmp eq i32 %.reload159, 400
  br i1 %19, label %._crit_edge3, label %._crit_edge4, !llvm.loop !9

._crit_edge4:                                     ; preds = %16
  %.reload158 = load i32, ptr %.reg2mem157, align 4
  store i32 %.reload158, ptr %.reg2mem228, align 4
  br label %16

._crit_edge3:                                     ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge3, %._crit_edge2
  %.reload169 = load i32, ptr %.reg2mem167, align 4
  %.reload191 = load ptr, ptr %.reg2mem176, align 4
  %21 = getelementptr inbounds [400 x double], ptr %.reload191, i32 %.reload169, i32 %.reload169
  store double 1.000000e+00, ptr %21, align 8, !tbaa !2
  %.reload174 = load i32, ptr %.reg2mem173, align 4
  %22 = add nuw nsw i32 %.reload174, 1
  store i32 %22, ptr %.reg2mem155, align 4
  %.reload163 = load i32, ptr %.reg2mem160, align 4
  %23 = icmp eq i32 %.reload163, 400
  br i1 %23, label %24, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %20
  %.reload156 = load i32, ptr %.reg2mem155, align 4
  %.reload162 = load i32, ptr %.reg2mem160, align 4
  store i32 %.reload162, ptr %.reg2mem232, align 4
  store i32 %.reload156, ptr %.reg2mem234, align 4
  br label %4

24:                                               ; preds = %20
  %25 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %25, ptr %.reg2mem150, align 4
  store i32 0, ptr %.reg2mem226, align 4
  br label %26

26:                                               ; preds = %._crit_edge8, %24
  %.reload227 = load i32, ptr %.reg2mem226, align 4
  store i32 %.reload227, ptr %.reg2mem147, align 4
  store i32 0, ptr %.reg2mem224, align 4
  br label %27

27:                                               ; preds = %._crit_edge6, %26
  %.reload225 = load i32, ptr %.reg2mem224, align 4
  %.reload149 = load i32, ptr %.reg2mem147, align 4
  %.reload154 = load ptr, ptr %.reg2mem150, align 4
  %28 = getelementptr inbounds [400 x [400 x double]], ptr %.reload154, i32 0, i32 %.reload149, i32 %.reload225
  store double 0.000000e+00, ptr %28, align 8, !tbaa !2
  %29 = add nuw nsw i32 %.reload225, 1
  store i32 %29, ptr %.reg2mem144, align 4
  %.reload146 = load i32, ptr %.reg2mem144, align 4
  %30 = icmp eq i32 %.reload146, 400
  br i1 %30, label %31, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %27
  %.reload145 = load i32, ptr %.reg2mem144, align 4
  store i32 %.reload145, ptr %.reg2mem224, align 4
  br label %27

31:                                               ; preds = %27
  %.reload148 = load i32, ptr %.reg2mem147, align 4
  %32 = add nuw nsw i32 %.reload148, 1
  store i32 %32, ptr %.reg2mem141, align 4
  %.reload143 = load i32, ptr %.reg2mem141, align 4
  %33 = icmp eq i32 %.reload143, 400
  br i1 %33, label %._crit_edge7, label %._crit_edge8, !llvm.loop !12

._crit_edge8:                                     ; preds = %31
  %.reload142 = load i32, ptr %.reg2mem141, align 4
  store i32 %.reload142, ptr %.reg2mem226, align 4
  br label %26

._crit_edge7:                                     ; preds = %31
  store i32 0, ptr %.reg2mem222, align 4
  br label %34

34:                                               ; preds = %._crit_edge12, %._crit_edge7
  %.reload223 = load i32, ptr %.reg2mem222, align 4
  store i32 %.reload223, ptr %.reg2mem137, align 4
  store i32 0, ptr %.reg2mem220, align 4
  br label %35

35:                                               ; preds = %._crit_edge10, %34
  %.reload221 = load i32, ptr %.reg2mem220, align 4
  store i32 %.reload221, ptr %.reg2mem133, align 4
  %.reload136 = load i32, ptr %.reg2mem133, align 4
  %.reload140 = load i32, ptr %.reg2mem137, align 4
  %.reload190 = load ptr, ptr %.reg2mem176, align 4
  %36 = getelementptr inbounds [400 x double], ptr %.reload190, i32 %.reload136, i32 %.reload140
  store ptr %36, ptr %.reg2mem131, align 4
  store i32 0, ptr %.reg2mem218, align 4
  br label %37

37:                                               ; preds = %._crit_edge9, %35
  %.reload219 = load i32, ptr %.reg2mem218, align 4
  %.reload132 = load ptr, ptr %.reg2mem131, align 4
  %38 = load double, ptr %.reload132, align 8, !tbaa !2
  %.reload139 = load i32, ptr %.reg2mem137, align 4
  %.reload189 = load ptr, ptr %.reg2mem176, align 4
  %39 = getelementptr inbounds [400 x double], ptr %.reload189, i32 %.reload219, i32 %.reload139
  %40 = load double, ptr %39, align 8, !tbaa !2
  %.reload135 = load i32, ptr %.reg2mem133, align 4
  %.reload153 = load ptr, ptr %.reg2mem150, align 4
  %41 = getelementptr inbounds [400 x [400 x double]], ptr %.reload153, i32 0, i32 %.reload135, i32 %.reload219
  %42 = load double, ptr %41, align 8, !tbaa !2
  %43 = tail call double @llvm.fmuladd.f64(double %38, double %40, double %42)
  store double %43, ptr %41, align 8, !tbaa !2
  %44 = add nuw nsw i32 %.reload219, 1
  store i32 %44, ptr %.reg2mem128, align 4
  %.reload130 = load i32, ptr %.reg2mem128, align 4
  %45 = icmp eq i32 %.reload130, 400
  br i1 %45, label %46, label %._crit_edge9, !llvm.loop !13

._crit_edge9:                                     ; preds = %37
  %.reload129 = load i32, ptr %.reg2mem128, align 4
  store i32 %.reload129, ptr %.reg2mem218, align 4
  br label %37

46:                                               ; preds = %37
  %.reload134 = load i32, ptr %.reg2mem133, align 4
  %47 = add nuw nsw i32 %.reload134, 1
  store i32 %47, ptr %.reg2mem125, align 4
  %.reload127 = load i32, ptr %.reg2mem125, align 4
  %48 = icmp eq i32 %.reload127, 400
  br i1 %48, label %49, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %46
  %.reload126 = load i32, ptr %.reg2mem125, align 4
  store i32 %.reload126, ptr %.reg2mem220, align 4
  br label %35

49:                                               ; preds = %46
  %.reload138 = load i32, ptr %.reg2mem137, align 4
  %50 = add nuw nsw i32 %.reload138, 1
  store i32 %50, ptr %.reg2mem122, align 4
  %.reload124 = load i32, ptr %.reg2mem122, align 4
  %51 = icmp eq i32 %.reload124, 400
  br i1 %51, label %._crit_edge11, label %._crit_edge12, !llvm.loop !15

._crit_edge12:                                    ; preds = %49
  %.reload123 = load i32, ptr %.reg2mem122, align 4
  store i32 %.reload123, ptr %.reg2mem222, align 4
  br label %34

._crit_edge11:                                    ; preds = %49
  store i32 0, ptr %.reg2mem216, align 4
  br label %52

52:                                               ; preds = %._crit_edge14, %._crit_edge11
  %.reload217 = load i32, ptr %.reg2mem216, align 4
  store i32 %.reload217, ptr %.reg2mem118, align 4
  store i32 0, ptr %.reg2mem214, align 4
  br label %53

53:                                               ; preds = %._crit_edge13, %52
  %.reload215 = load i32, ptr %.reg2mem214, align 4
  %.reload121 = load i32, ptr %.reg2mem118, align 4
  %.reload152 = load ptr, ptr %.reg2mem150, align 4
  %54 = getelementptr inbounds [400 x [400 x double]], ptr %.reload152, i32 0, i32 %.reload121, i32 %.reload215
  %55 = load double, ptr %54, align 8, !tbaa !2
  %.reload120 = load i32, ptr %.reg2mem118, align 4
  %.reload188 = load ptr, ptr %.reg2mem176, align 4
  %56 = getelementptr inbounds [400 x double], ptr %.reload188, i32 %.reload120, i32 %.reload215
  store double %55, ptr %56, align 8, !tbaa !2
  %57 = add nuw nsw i32 %.reload215, 1
  store i32 %57, ptr %.reg2mem115, align 4
  %.reload117 = load i32, ptr %.reg2mem115, align 4
  %58 = icmp eq i32 %.reload117, 400
  br i1 %58, label %59, label %._crit_edge13, !llvm.loop !16

._crit_edge13:                                    ; preds = %53
  %.reload116 = load i32, ptr %.reg2mem115, align 4
  store i32 %.reload116, ptr %.reg2mem214, align 4
  br label %53

59:                                               ; preds = %53
  %.reload119 = load i32, ptr %.reg2mem118, align 4
  %60 = add nuw nsw i32 %.reload119, 1
  store i32 %60, ptr %.reg2mem112, align 4
  %.reload114 = load i32, ptr %.reg2mem112, align 4
  %61 = icmp eq i32 %.reload114, 400
  br i1 %61, label %62, label %._crit_edge14, !llvm.loop !17

._crit_edge14:                                    ; preds = %59
  %.reload113 = load i32, ptr %.reg2mem112, align 4
  store i32 %.reload113, ptr %.reg2mem216, align 4
  br label %52

62:                                               ; preds = %59
  %.reload151 = load ptr, ptr %.reg2mem150, align 4
  tail call void @free(ptr noundef nonnull %.reload151) #3
  store i32 0, ptr %.reg2mem212, align 4
  br label %63

63:                                               ; preds = %._crit_edge24, %62
  %.reload213 = load i32, ptr %.reg2mem212, align 4
  store i32 %.reload213, ptr %.reg2mem100, align 4
  %.reload111 = load i32, ptr %.reg2mem100, align 4
  %64 = icmp eq i32 %.reload111, 0
  store i1 %64, ptr %.reg2mem97, align 1
  %.reload99 = load i1, ptr %.reg2mem97, align 1
  br i1 %.reload99, label %._crit_edge15, label %65

._crit_edge15:                                    ; preds = %63
  br label %90

65:                                               ; preds = %63
  %.reload110 = load i32, ptr %.reg2mem100, align 4
  %.reload186 = load ptr, ptr %.reg2mem176, align 4
  %66 = getelementptr inbounds [400 x double], ptr %.reload186, i32 %.reload110, i32 0
  store ptr %66, ptr %.reg2mem95, align 4
  store i32 0, ptr %.reg2mem210, align 4
  br label %67

67:                                               ; preds = %._crit_edge19, %65
  %.reload211 = load i32, ptr %.reg2mem210, align 4
  store i32 %.reload211, ptr %.reg2mem87, align 4
  %.reload94 = load i32, ptr %.reg2mem87, align 4
  %68 = icmp eq i32 %.reload94, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %.reload96 = load ptr, ptr %.reg2mem95, align 4
  %70 = load double, ptr %.reload96, align 8, !tbaa !2
  store double %70, ptr %.reg2mem85, align 8
  %.reload86 = load double, ptr %.reg2mem85, align 8
  store double %.reload86, ptr %.reg2mem204, align 8
  br label %83

71:                                               ; preds = %67
  %.reload93 = load i32, ptr %.reg2mem87, align 4
  %.reload109 = load i32, ptr %.reg2mem100, align 4
  %.reload185 = load ptr, ptr %.reg2mem176, align 4
  %72 = getelementptr inbounds [400 x double], ptr %.reload185, i32 %.reload109, i32 %.reload93
  store ptr %72, ptr %.reg2mem82, align 4
  %.reload84 = load ptr, ptr %.reg2mem82, align 4
  %73 = load double, ptr %.reload84, align 8, !tbaa !2
  store double %73, ptr %.reg2mem80, align 8
  %.reload81 = load double, ptr %.reg2mem80, align 8
  store i32 0, ptr %.reg2mem206, align 4
  store double %.reload81, ptr %.reg2mem208, align 8
  br label %74

74:                                               ; preds = %._crit_edge17, %71
  %.reload209 = load double, ptr %.reg2mem208, align 8
  %.reload207 = load i32, ptr %.reg2mem206, align 4
  %.reload108 = load i32, ptr %.reg2mem100, align 4
  %.reload184 = load ptr, ptr %.reg2mem176, align 4
  %75 = getelementptr inbounds [400 x double], ptr %.reload184, i32 %.reload108, i32 %.reload207
  %76 = load double, ptr %75, align 8, !tbaa !2
  %.reload92 = load i32, ptr %.reg2mem87, align 4
  %.reload183 = load ptr, ptr %.reg2mem176, align 4
  %77 = getelementptr inbounds [400 x double], ptr %.reload183, i32 %.reload207, i32 %.reload92
  %78 = load double, ptr %77, align 8, !tbaa !2
  %79 = fneg double %76
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %78, double %.reload209)
  store double %80, ptr %.reg2mem76, align 8
  %.reload79 = load double, ptr %.reg2mem76, align 8
  %.reload83 = load ptr, ptr %.reg2mem82, align 4
  store double %.reload79, ptr %.reload83, align 8, !tbaa !2
  %81 = add nuw nsw i32 %.reload207, 1
  store i32 %81, ptr %.reg2mem73, align 4
  %.reload75 = load i32, ptr %.reg2mem73, align 4
  %.reload91 = load i32, ptr %.reg2mem87, align 4
  %82 = icmp eq i32 %.reload75, %.reload91
  br i1 %82, label %._crit_edge16, label %._crit_edge17, !llvm.loop !18

._crit_edge17:                                    ; preds = %74
  %.reload74 = load i32, ptr %.reg2mem73, align 4
  %.reload78 = load double, ptr %.reg2mem76, align 8
  store i32 %.reload74, ptr %.reg2mem206, align 4
  store double %.reload78, ptr %.reg2mem208, align 8
  br label %74

._crit_edge16:                                    ; preds = %74
  %.reload77 = load double, ptr %.reg2mem76, align 8
  store double %.reload77, ptr %.reg2mem204, align 8
  br label %83

83:                                               ; preds = %._crit_edge16, %69
  %.reload205 = load double, ptr %.reg2mem204, align 8
  %.reload90 = load i32, ptr %.reg2mem87, align 4
  %.reload182 = load ptr, ptr %.reg2mem176, align 4
  %84 = getelementptr inbounds [400 x double], ptr %.reload182, i32 %.reload90, i32 %.reload90
  %85 = load double, ptr %84, align 8, !tbaa !2
  %.reload89 = load i32, ptr %.reg2mem87, align 4
  %.reload107 = load i32, ptr %.reg2mem100, align 4
  %.reload181 = load ptr, ptr %.reg2mem176, align 4
  %86 = getelementptr inbounds [400 x double], ptr %.reload181, i32 %.reload107, i32 %.reload89
  %87 = fdiv double %.reload205, %85
  store double %87, ptr %86, align 8, !tbaa !2
  %.reload88 = load i32, ptr %.reg2mem87, align 4
  %88 = add nuw nsw i32 %.reload88, 1
  store i32 %88, ptr %.reg2mem70, align 4
  %.reload72 = load i32, ptr %.reg2mem70, align 4
  %.reload106 = load i32, ptr %.reg2mem100, align 4
  %89 = icmp eq i32 %.reload72, %.reload106
  br i1 %89, label %._crit_edge18, label %._crit_edge19, !llvm.loop !19

._crit_edge19:                                    ; preds = %83
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  store i32 %.reload71, ptr %.reg2mem210, align 4
  br label %67

._crit_edge18:                                    ; preds = %83
  br label %90

90:                                               ; preds = %._crit_edge18, %._crit_edge15
  %.reload101 = load i32, ptr %.reg2mem100, align 4
  store i32 %.reload101, ptr %.reg2mem202, align 4
  br label %91

91:                                               ; preds = %._crit_edge23, %90
  %.reload203 = load i32, ptr %.reg2mem202, align 4
  store i32 %.reload203, ptr %.reg2mem66, align 4
  %.reload98 = load i1, ptr %.reg2mem97, align 1
  br i1 %.reload98, label %._crit_edge20, label %92

._crit_edge20:                                    ; preds = %91
  br label %104

92:                                               ; preds = %91
  %.reload69 = load i32, ptr %.reg2mem66, align 4
  %.reload105 = load i32, ptr %.reg2mem100, align 4
  %.reload180 = load ptr, ptr %.reg2mem176, align 4
  %93 = getelementptr inbounds [400 x double], ptr %.reload180, i32 %.reload105, i32 %.reload69
  store ptr %93, ptr %.reg2mem63, align 4
  %.reload65 = load ptr, ptr %.reg2mem63, align 4
  %94 = load double, ptr %.reload65, align 8, !tbaa !2
  store double %94, ptr %.reg2mem61, align 8
  %.reload62 = load double, ptr %.reg2mem61, align 8
  store i32 0, ptr %.reg2mem198, align 4
  store double %.reload62, ptr %.reg2mem200, align 8
  br label %95

95:                                               ; preds = %._crit_edge22, %92
  %.reload201 = load double, ptr %.reg2mem200, align 8
  %.reload199 = load i32, ptr %.reg2mem198, align 4
  %.reload104 = load i32, ptr %.reg2mem100, align 4
  %.reload179 = load ptr, ptr %.reg2mem176, align 4
  %96 = getelementptr inbounds [400 x double], ptr %.reload179, i32 %.reload104, i32 %.reload199
  %97 = load double, ptr %96, align 8, !tbaa !2
  %.reload68 = load i32, ptr %.reg2mem66, align 4
  %.reload178 = load ptr, ptr %.reg2mem176, align 4
  %98 = getelementptr inbounds [400 x double], ptr %.reload178, i32 %.reload199, i32 %.reload68
  %99 = load double, ptr %98, align 8, !tbaa !2
  %100 = fneg double %97
  %101 = tail call double @llvm.fmuladd.f64(double %100, double %99, double %.reload201)
  store double %101, ptr %.reg2mem58, align 8
  %.reload60 = load double, ptr %.reg2mem58, align 8
  %.reload64 = load ptr, ptr %.reg2mem63, align 4
  store double %.reload60, ptr %.reload64, align 8, !tbaa !2
  %102 = add nuw nsw i32 %.reload199, 1
  store i32 %102, ptr %.reg2mem55, align 4
  %.reload57 = load i32, ptr %.reg2mem55, align 4
  %.reload103 = load i32, ptr %.reg2mem100, align 4
  %103 = icmp eq i32 %.reload57, %.reload103
  br i1 %103, label %._crit_edge21, label %._crit_edge22, !llvm.loop !20

._crit_edge22:                                    ; preds = %95
  %.reload56 = load i32, ptr %.reg2mem55, align 4
  %.reload59 = load double, ptr %.reg2mem58, align 8
  store i32 %.reload56, ptr %.reg2mem198, align 4
  store double %.reload59, ptr %.reg2mem200, align 8
  br label %95

._crit_edge21:                                    ; preds = %95
  br label %104

104:                                              ; preds = %._crit_edge21, %._crit_edge20
  %.reload67 = load i32, ptr %.reg2mem66, align 4
  %105 = add nuw nsw i32 %.reload67, 1
  store i32 %105, ptr %.reg2mem52, align 4
  %.reload54 = load i32, ptr %.reg2mem52, align 4
  %106 = icmp eq i32 %.reload54, 400
  br i1 %106, label %107, label %._crit_edge23, !llvm.loop !21

._crit_edge23:                                    ; preds = %104
  %.reload53 = load i32, ptr %.reg2mem52, align 4
  store i32 %.reload53, ptr %.reg2mem202, align 4
  br label %91

107:                                              ; preds = %104
  %.reload102 = load i32, ptr %.reg2mem100, align 4
  %108 = add nuw nsw i32 %.reload102, 1
  store i32 %108, ptr %.reg2mem49, align 4
  %.reload51 = load i32, ptr %.reg2mem49, align 4
  %109 = icmp eq i32 %.reload51, 400
  br i1 %109, label %110, label %._crit_edge24, !llvm.loop !22

._crit_edge24:                                    ; preds = %107
  %.reload50 = load i32, ptr %.reg2mem49, align 4
  store i32 %.reload50, ptr %.reg2mem212, align 4
  br label %63

110:                                              ; preds = %107
  %111 = load ptr, ptr @stderr, align 4, !tbaa !23
  store ptr %111, ptr %.reg2mem42, align 4
  %.reload48 = load ptr, ptr %.reg2mem42, align 4
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload48, ptr noundef nonnull @.str) #3
  %.reload47 = load ptr, ptr %.reg2mem42, align 4
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload47, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem196, align 4
  br label %114

114:                                              ; preds = %._crit_edge27, %110
  %.reload197 = load i32, ptr %.reg2mem196, align 4
  store i32 %.reload197, ptr %.reg2mem38, align 4
  %.reload41 = load i32, ptr %.reg2mem38, align 4
  %115 = mul nuw nsw i32 %.reload41, 400
  store i32 %115, ptr %.reg2mem36, align 4
  store i32 0, ptr %.reg2mem194, align 4
  br label %116

116:                                              ; preds = %._crit_edge26, %114
  %.reload195 = load i32, ptr %.reg2mem194, align 4
  store i32 %.reload195, ptr %.reg2mem32, align 4
  %.reload35 = load i32, ptr %.reg2mem32, align 4
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  %117 = add nuw nsw i32 %.reload35, %.reload37
  %118 = urem i32 %117, 20
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %._crit_edge25

._crit_edge25:                                    ; preds = %116
  br label %122

120:                                              ; preds = %116
  %.reload43 = load ptr, ptr %.reg2mem42, align 4
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload43, ptr noundef nonnull @.str.3) #3
  br label %122

122:                                              ; preds = %._crit_edge25, %120
  %.reload34 = load i32, ptr %.reg2mem32, align 4
  %.reload40 = load i32, ptr %.reg2mem38, align 4
  %.reload177 = load ptr, ptr %.reg2mem176, align 4
  %123 = getelementptr inbounds [400 x double], ptr %.reload177, i32 %.reload40, i32 %.reload34
  %124 = load double, ptr %123, align 8, !tbaa !2
  %.reload46 = load ptr, ptr %.reg2mem42, align 4
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload46, ptr noundef nonnull @.str.4, double noundef %124) #3
  %.reload33 = load i32, ptr %.reg2mem32, align 4
  %126 = add nuw nsw i32 %.reload33, 1
  store i32 %126, ptr %.reg2mem29, align 4
  %.reload31 = load i32, ptr %.reg2mem29, align 4
  %127 = icmp eq i32 %.reload31, 400
  br i1 %127, label %128, label %._crit_edge26, !llvm.loop !25

._crit_edge26:                                    ; preds = %122
  %.reload30 = load i32, ptr %.reg2mem29, align 4
  store i32 %.reload30, ptr %.reg2mem194, align 4
  br label %116

128:                                              ; preds = %122
  %.reload39 = load i32, ptr %.reg2mem38, align 4
  %129 = add nuw nsw i32 %.reload39, 1
  store i32 %129, ptr %.reg2mem, align 4
  %.reload28 = load i32, ptr %.reg2mem, align 4
  %130 = icmp eq i32 %.reload28, 400
  br i1 %130, label %131, label %._crit_edge27, !llvm.loop !26

._crit_edge27:                                    ; preds = %128
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem196, align 4
  br label %114

131:                                              ; preds = %128
  %.reload45 = load ptr, ptr %.reg2mem42, align 4
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload45, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload44 = load ptr, ptr %.reg2mem42, align 4
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload44, ptr noundef nonnull @.str.6) #3
  %.reload193 = load ptr, ptr %.reg2mem176, align 4
  tail call void @free(ptr noundef nonnull %.reload193) #3
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
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !4, i64 0}
!25 = distinct !{!25, !7, !8}
!26 = distinct !{!26, !7, !8}
