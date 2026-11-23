; ModuleID = './polybench-output/wasm/no-phis/ludcmp.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/ludcmp/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem46 = alloca i32, align 4
  %.reg2mem50 = alloca ptr, align 4
  %.reg2mem57 = alloca i32, align 4
  %.reg2mem59 = alloca double, align 8
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem67 = alloca double, align 8
  %.reg2mem70 = alloca i32, align 4
  %.reg2mem79 = alloca i32, align 4
  %.reg2mem82 = alloca i32, align 4
  %.reg2mem85 = alloca double, align 8
  %.reg2mem88 = alloca double, align 8
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem98 = alloca i32, align 4
  %.reg2mem101 = alloca i32, align 4
  %.reg2mem104 = alloca i32, align 4
  %.reg2mem107 = alloca double, align 8
  %.reg2mem110 = alloca double, align 8
  %.reg2mem113 = alloca ptr, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem120 = alloca i32, align 4
  %.reg2mem123 = alloca i32, align 4
  %.reg2mem126 = alloca double, align 8
  %.reg2mem129 = alloca double, align 8
  %.reg2mem132 = alloca ptr, align 4
  %.reg2mem135 = alloca i32, align 4
  %.reg2mem142 = alloca i1, align 1
  %.reg2mem145 = alloca i32, align 4
  %.reg2mem155 = alloca i32, align 4
  %.reg2mem158 = alloca i32, align 4
  %.reg2mem161 = alloca i32, align 4
  %.reg2mem165 = alloca i32, align 4
  %.reg2mem168 = alloca i32, align 4
  %.reg2mem171 = alloca i32, align 4
  %.reg2mem174 = alloca ptr, align 4
  %.reg2mem176 = alloca i32, align 4
  %.reg2mem180 = alloca i32, align 4
  %.reg2mem184 = alloca i32, align 4
  %.reg2mem187 = alloca i32, align 4
  %.reg2mem190 = alloca i32, align 4
  %.reg2mem193 = alloca ptr, align 4
  %.reg2mem198 = alloca i32, align 4
  %.reg2mem200 = alloca i32, align 4
  %.reg2mem203 = alloca i32, align 4
  %.reg2mem207 = alloca i32, align 4
  %.reg2mem210 = alloca i32, align 4
  %.reg2mem216 = alloca i32, align 4
  %.reg2mem219 = alloca i32, align 4
  %.reg2mem223 = alloca ptr, align 4
  %.reg2mem229 = alloca ptr, align 4
  %.reg2mem235 = alloca ptr, align 4
  %.reg2mem239 = alloca ptr, align 4
  %.reg2mem257 = alloca i32, align 4
  %.reg2mem259 = alloca double, align 8
  %.reg2mem261 = alloca i32, align 4
  %.reg2mem263 = alloca double, align 8
  %.reg2mem265 = alloca i32, align 4
  %.reg2mem267 = alloca double, align 8
  %.reg2mem269 = alloca i32, align 4
  %.reg2mem271 = alloca double, align 8
  %.reg2mem273 = alloca i32, align 4
  %.reg2mem275 = alloca double, align 8
  %.reg2mem277 = alloca i32, align 4
  %.reg2mem279 = alloca double, align 8
  %.reg2mem281 = alloca i32, align 4
  %.reg2mem283 = alloca double, align 8
  %.reg2mem285 = alloca i32, align 4
  %.reg2mem287 = alloca double, align 8
  %.reg2mem289 = alloca i32, align 4
  %.reg2mem291 = alloca i32, align 4
  %.reg2mem293 = alloca i32, align 4
  %.reg2mem295 = alloca i32, align 4
  %.reg2mem297 = alloca i32, align 4
  %.reg2mem299 = alloca i32, align 4
  %.reg2mem301 = alloca i32, align 4
  %.reg2mem303 = alloca i32, align 4
  %.reg2mem305 = alloca i32, align 4
  %.reg2mem307 = alloca i32, align 4
  %.reg2mem309 = alloca i32, align 4
  %.reg2mem311 = alloca i32, align 4
  %.reg2mem313 = alloca i32, align 4
  %.reg2mem315 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem239, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem235, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem229, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem223, align 4
  store i32 0, ptr %.reg2mem315, align 4
  br label %7

7:                                                ; preds = %._crit_edge1, %2
  %.reload316 = load i32, ptr %.reg2mem315, align 4
  %.reload233 = load ptr, ptr %.reg2mem229, align 4
  %8 = getelementptr inbounds double, ptr %.reload233, i32 %.reload316
  store double 0.000000e+00, ptr %8, align 8, !tbaa !2
  %.reload227 = load ptr, ptr %.reg2mem223, align 4
  %9 = getelementptr inbounds double, ptr %.reload227, i32 %.reload316
  store double 0.000000e+00, ptr %9, align 8, !tbaa !2
  %10 = add nuw nsw i32 %.reload316, 1
  store i32 %10, ptr %.reg2mem219, align 4
  %.reload222 = load i32, ptr %.reg2mem219, align 4
  %11 = uitofp nneg i32 %.reload222 to double
  %12 = fdiv double %11, 4.000000e+02
  %13 = fmul double %12, 5.000000e-01
  %14 = fadd double %13, 4.000000e+00
  %.reload237 = load ptr, ptr %.reg2mem235, align 4
  %15 = getelementptr inbounds double, ptr %.reload237, i32 %.reload316
  store double %14, ptr %15, align 8, !tbaa !2
  %.reload221 = load i32, ptr %.reg2mem219, align 4
  %16 = icmp eq i32 %.reload221, 400
  br i1 %16, label %._crit_edge, label %._crit_edge1, !llvm.loop !6

._crit_edge1:                                     ; preds = %7
  %.reload220 = load i32, ptr %.reg2mem219, align 4
  store i32 %.reload220, ptr %.reg2mem315, align 4
  br label %7

._crit_edge:                                      ; preds = %7
  store i32 0, ptr %.reg2mem311, align 4
  store i32 1, ptr %.reg2mem313, align 4
  br label %17

17:                                               ; preds = %._crit_edge7, %._crit_edge
  %.reload314 = load i32, ptr %.reg2mem313, align 4
  %.reload312 = load i32, ptr %.reg2mem311, align 4
  store i32 %.reload314, ptr %.reg2mem216, align 4
  store i32 %.reload312, ptr %.reg2mem210, align 4
  store i32 0, ptr %.reg2mem309, align 4
  br label %18

18:                                               ; preds = %._crit_edge2, %17
  %.reload310 = load i32, ptr %.reg2mem309, align 4
  %19 = sub nsw i32 0, %.reload310
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 4.000000e+02
  %22 = fadd double %21, 1.000000e+00
  %.reload215 = load i32, ptr %.reg2mem210, align 4
  %.reload255 = load ptr, ptr %.reg2mem239, align 4
  %23 = getelementptr inbounds [400 x double], ptr %.reload255, i32 %.reload215, i32 %.reload310
  store double %22, ptr %23, align 8, !tbaa !2
  %24 = add nuw nsw i32 %.reload310, 1
  store i32 %24, ptr %.reg2mem207, align 4
  %.reload209 = load i32, ptr %.reg2mem207, align 4
  %.reload218 = load i32, ptr %.reg2mem216, align 4
  %25 = icmp eq i32 %.reload209, %.reload218
  br i1 %25, label %26, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %18
  %.reload208 = load i32, ptr %.reg2mem207, align 4
  store i32 %.reload208, ptr %.reg2mem309, align 4
  br label %18

26:                                               ; preds = %18
  %.reload214 = load i32, ptr %.reg2mem210, align 4
  %27 = add nuw nsw i32 %.reload214, 1
  store i32 %27, ptr %.reg2mem203, align 4
  %.reload213 = load i32, ptr %.reg2mem210, align 4
  %28 = icmp ult i32 %.reload213, 399
  br i1 %28, label %._crit_edge3, label %._crit_edge4

._crit_edge4:                                     ; preds = %26
  br label %33

._crit_edge3:                                     ; preds = %26
  %.reload204 = load i32, ptr %.reg2mem203, align 4
  store i32 %.reload204, ptr %.reg2mem307, align 4
  br label %29

29:                                               ; preds = %._crit_edge6, %._crit_edge3
  %.reload308 = load i32, ptr %.reg2mem307, align 4
  %.reload211 = load i32, ptr %.reg2mem210, align 4
  %.reload250 = load ptr, ptr %.reg2mem239, align 4
  %30 = getelementptr inbounds [400 x double], ptr %.reload250, i32 %.reload211, i32 %.reload308
  store double 0.000000e+00, ptr %30, align 8, !tbaa !2
  %31 = add nuw nsw i32 %.reload308, 1
  store i32 %31, ptr %.reg2mem200, align 4
  %.reload202 = load i32, ptr %.reg2mem200, align 4
  %32 = icmp eq i32 %.reload202, 400
  br i1 %32, label %._crit_edge5, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %29
  %.reload201 = load i32, ptr %.reg2mem200, align 4
  store i32 %.reload201, ptr %.reg2mem307, align 4
  br label %29

._crit_edge5:                                     ; preds = %29
  br label %33

33:                                               ; preds = %._crit_edge5, %._crit_edge4
  %.reload212 = load i32, ptr %.reg2mem210, align 4
  %.reload254 = load ptr, ptr %.reg2mem239, align 4
  %34 = getelementptr inbounds [400 x double], ptr %.reload254, i32 %.reload212, i32 %.reload212
  store double 1.000000e+00, ptr %34, align 8, !tbaa !2
  %.reload217 = load i32, ptr %.reg2mem216, align 4
  %35 = add nuw nsw i32 %.reload217, 1
  store i32 %35, ptr %.reg2mem198, align 4
  %.reload206 = load i32, ptr %.reg2mem203, align 4
  %36 = icmp eq i32 %.reload206, 400
  br i1 %36, label %37, label %._crit_edge7, !llvm.loop !11

._crit_edge7:                                     ; preds = %33
  %.reload199 = load i32, ptr %.reg2mem198, align 4
  %.reload205 = load i32, ptr %.reg2mem203, align 4
  store i32 %.reload205, ptr %.reg2mem311, align 4
  store i32 %.reload199, ptr %.reg2mem313, align 4
  br label %17

37:                                               ; preds = %33
  %38 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %38, ptr %.reg2mem193, align 4
  store i32 0, ptr %.reg2mem305, align 4
  br label %39

39:                                               ; preds = %._crit_edge10, %37
  %.reload306 = load i32, ptr %.reg2mem305, align 4
  store i32 %.reload306, ptr %.reg2mem190, align 4
  store i32 0, ptr %.reg2mem303, align 4
  br label %40

40:                                               ; preds = %._crit_edge8, %39
  %.reload304 = load i32, ptr %.reg2mem303, align 4
  %.reload192 = load i32, ptr %.reg2mem190, align 4
  %.reload197 = load ptr, ptr %.reg2mem193, align 4
  %41 = getelementptr inbounds [400 x [400 x double]], ptr %.reload197, i32 0, i32 %.reload192, i32 %.reload304
  store double 0.000000e+00, ptr %41, align 8, !tbaa !2
  %42 = add nuw nsw i32 %.reload304, 1
  store i32 %42, ptr %.reg2mem187, align 4
  %.reload189 = load i32, ptr %.reg2mem187, align 4
  %43 = icmp eq i32 %.reload189, 400
  br i1 %43, label %44, label %._crit_edge8, !llvm.loop !12

._crit_edge8:                                     ; preds = %40
  %.reload188 = load i32, ptr %.reg2mem187, align 4
  store i32 %.reload188, ptr %.reg2mem303, align 4
  br label %40

44:                                               ; preds = %40
  %.reload191 = load i32, ptr %.reg2mem190, align 4
  %45 = add nuw nsw i32 %.reload191, 1
  store i32 %45, ptr %.reg2mem184, align 4
  %.reload186 = load i32, ptr %.reg2mem184, align 4
  %46 = icmp eq i32 %.reload186, 400
  br i1 %46, label %._crit_edge9, label %._crit_edge10, !llvm.loop !13

._crit_edge10:                                    ; preds = %44
  %.reload185 = load i32, ptr %.reg2mem184, align 4
  store i32 %.reload185, ptr %.reg2mem305, align 4
  br label %39

._crit_edge9:                                     ; preds = %44
  store i32 0, ptr %.reg2mem301, align 4
  br label %47

47:                                               ; preds = %._crit_edge14, %._crit_edge9
  %.reload302 = load i32, ptr %.reg2mem301, align 4
  store i32 %.reload302, ptr %.reg2mem180, align 4
  store i32 0, ptr %.reg2mem299, align 4
  br label %48

48:                                               ; preds = %._crit_edge12, %47
  %.reload300 = load i32, ptr %.reg2mem299, align 4
  store i32 %.reload300, ptr %.reg2mem176, align 4
  %.reload179 = load i32, ptr %.reg2mem176, align 4
  %.reload183 = load i32, ptr %.reg2mem180, align 4
  %.reload253 = load ptr, ptr %.reg2mem239, align 4
  %49 = getelementptr inbounds [400 x double], ptr %.reload253, i32 %.reload179, i32 %.reload183
  store ptr %49, ptr %.reg2mem174, align 4
  store i32 0, ptr %.reg2mem297, align 4
  br label %50

50:                                               ; preds = %._crit_edge11, %48
  %.reload298 = load i32, ptr %.reg2mem297, align 4
  %.reload175 = load ptr, ptr %.reg2mem174, align 4
  %51 = load double, ptr %.reload175, align 8, !tbaa !2
  %.reload182 = load i32, ptr %.reg2mem180, align 4
  %.reload252 = load ptr, ptr %.reg2mem239, align 4
  %52 = getelementptr inbounds [400 x double], ptr %.reload252, i32 %.reload298, i32 %.reload182
  %53 = load double, ptr %52, align 8, !tbaa !2
  %.reload178 = load i32, ptr %.reg2mem176, align 4
  %.reload196 = load ptr, ptr %.reg2mem193, align 4
  %54 = getelementptr inbounds [400 x [400 x double]], ptr %.reload196, i32 0, i32 %.reload178, i32 %.reload298
  %55 = load double, ptr %54, align 8, !tbaa !2
  %56 = tail call double @llvm.fmuladd.f64(double %51, double %53, double %55)
  store double %56, ptr %54, align 8, !tbaa !2
  %57 = add nuw nsw i32 %.reload298, 1
  store i32 %57, ptr %.reg2mem171, align 4
  %.reload173 = load i32, ptr %.reg2mem171, align 4
  %58 = icmp eq i32 %.reload173, 400
  br i1 %58, label %59, label %._crit_edge11, !llvm.loop !14

._crit_edge11:                                    ; preds = %50
  %.reload172 = load i32, ptr %.reg2mem171, align 4
  store i32 %.reload172, ptr %.reg2mem297, align 4
  br label %50

59:                                               ; preds = %50
  %.reload177 = load i32, ptr %.reg2mem176, align 4
  %60 = add nuw nsw i32 %.reload177, 1
  store i32 %60, ptr %.reg2mem168, align 4
  %.reload170 = load i32, ptr %.reg2mem168, align 4
  %61 = icmp eq i32 %.reload170, 400
  br i1 %61, label %62, label %._crit_edge12, !llvm.loop !15

._crit_edge12:                                    ; preds = %59
  %.reload169 = load i32, ptr %.reg2mem168, align 4
  store i32 %.reload169, ptr %.reg2mem299, align 4
  br label %48

62:                                               ; preds = %59
  %.reload181 = load i32, ptr %.reg2mem180, align 4
  %63 = add nuw nsw i32 %.reload181, 1
  store i32 %63, ptr %.reg2mem165, align 4
  %.reload167 = load i32, ptr %.reg2mem165, align 4
  %64 = icmp eq i32 %.reload167, 400
  br i1 %64, label %._crit_edge13, label %._crit_edge14, !llvm.loop !16

._crit_edge14:                                    ; preds = %62
  %.reload166 = load i32, ptr %.reg2mem165, align 4
  store i32 %.reload166, ptr %.reg2mem301, align 4
  br label %47

._crit_edge13:                                    ; preds = %62
  store i32 0, ptr %.reg2mem295, align 4
  br label %65

65:                                               ; preds = %._crit_edge16, %._crit_edge13
  %.reload296 = load i32, ptr %.reg2mem295, align 4
  store i32 %.reload296, ptr %.reg2mem161, align 4
  store i32 0, ptr %.reg2mem293, align 4
  br label %66

66:                                               ; preds = %._crit_edge15, %65
  %.reload294 = load i32, ptr %.reg2mem293, align 4
  %.reload164 = load i32, ptr %.reg2mem161, align 4
  %.reload195 = load ptr, ptr %.reg2mem193, align 4
  %67 = getelementptr inbounds [400 x [400 x double]], ptr %.reload195, i32 0, i32 %.reload164, i32 %.reload294
  %68 = load double, ptr %67, align 8, !tbaa !2
  %.reload163 = load i32, ptr %.reg2mem161, align 4
  %.reload251 = load ptr, ptr %.reg2mem239, align 4
  %69 = getelementptr inbounds [400 x double], ptr %.reload251, i32 %.reload163, i32 %.reload294
  store double %68, ptr %69, align 8, !tbaa !2
  %70 = add nuw nsw i32 %.reload294, 1
  store i32 %70, ptr %.reg2mem158, align 4
  %.reload160 = load i32, ptr %.reg2mem158, align 4
  %71 = icmp eq i32 %.reload160, 400
  br i1 %71, label %72, label %._crit_edge15, !llvm.loop !17

._crit_edge15:                                    ; preds = %66
  %.reload159 = load i32, ptr %.reg2mem158, align 4
  store i32 %.reload159, ptr %.reg2mem293, align 4
  br label %66

72:                                               ; preds = %66
  %.reload162 = load i32, ptr %.reg2mem161, align 4
  %73 = add nuw nsw i32 %.reload162, 1
  store i32 %73, ptr %.reg2mem155, align 4
  %.reload157 = load i32, ptr %.reg2mem155, align 4
  %74 = icmp eq i32 %.reload157, 400
  br i1 %74, label %75, label %._crit_edge16, !llvm.loop !18

._crit_edge16:                                    ; preds = %72
  %.reload156 = load i32, ptr %.reg2mem155, align 4
  store i32 %.reload156, ptr %.reg2mem295, align 4
  br label %65

75:                                               ; preds = %72
  %.reload194 = load ptr, ptr %.reg2mem193, align 4
  tail call void @free(ptr noundef nonnull %.reload194) #3
  store i32 0, ptr %.reg2mem291, align 4
  br label %76

76:                                               ; preds = %._crit_edge31, %75
  %.reload292 = load i32, ptr %.reg2mem291, align 4
  store i32 %.reload292, ptr %.reg2mem145, align 4
  %.reload154 = load i32, ptr %.reg2mem145, align 4
  %77 = icmp eq i32 %.reload154, 0
  store i1 %77, ptr %.reg2mem142, align 1
  %.reload144 = load i1, ptr %.reg2mem142, align 1
  br i1 %.reload144, label %._crit_edge17, label %._crit_edge18

._crit_edge18:                                    ; preds = %76
  store i32 0, ptr %.reg2mem289, align 4
  br label %78

._crit_edge17:                                    ; preds = %76
  br label %97

78:                                               ; preds = %._crit_edge24, %._crit_edge18
  %.reload290 = load i32, ptr %.reg2mem289, align 4
  store i32 %.reload290, ptr %.reg2mem135, align 4
  %.reload141 = load i32, ptr %.reg2mem135, align 4
  %.reload153 = load i32, ptr %.reg2mem145, align 4
  %.reload249 = load ptr, ptr %.reg2mem239, align 4
  %79 = getelementptr inbounds [400 x double], ptr %.reload249, i32 %.reload153, i32 %.reload141
  store ptr %79, ptr %.reg2mem132, align 4
  %.reload134 = load ptr, ptr %.reg2mem132, align 4
  %80 = load double, ptr %.reload134, align 8, !tbaa !2
  store double %80, ptr %.reg2mem129, align 8
  %.reload140 = load i32, ptr %.reg2mem135, align 4
  %81 = icmp eq i32 %.reload140, 0
  br i1 %81, label %._crit_edge19, label %._crit_edge20

._crit_edge20:                                    ; preds = %78
  %.reload130 = load double, ptr %.reg2mem129, align 8
  store i32 0, ptr %.reg2mem285, align 4
  store double %.reload130, ptr %.reg2mem287, align 8
  br label %82

._crit_edge19:                                    ; preds = %78
  %.reload131 = load double, ptr %.reg2mem129, align 8
  store double %.reload131, ptr %.reg2mem283, align 8
  br label %91

82:                                               ; preds = %._crit_edge22, %._crit_edge20
  %.reload288 = load double, ptr %.reg2mem287, align 8
  %.reload286 = load i32, ptr %.reg2mem285, align 4
  %.reload152 = load i32, ptr %.reg2mem145, align 4
  %.reload248 = load ptr, ptr %.reg2mem239, align 4
  %83 = getelementptr inbounds [400 x double], ptr %.reload248, i32 %.reload152, i32 %.reload286
  %84 = load double, ptr %83, align 8, !tbaa !2
  %.reload139 = load i32, ptr %.reg2mem135, align 4
  %.reload247 = load ptr, ptr %.reg2mem239, align 4
  %85 = getelementptr inbounds [400 x double], ptr %.reload247, i32 %.reload286, i32 %.reload139
  %86 = load double, ptr %85, align 8, !tbaa !2
  %87 = fneg double %84
  %88 = tail call double @llvm.fmuladd.f64(double %87, double %86, double %.reload288)
  store double %88, ptr %.reg2mem126, align 8
  %89 = add nuw nsw i32 %.reload286, 1
  store i32 %89, ptr %.reg2mem123, align 4
  %.reload125 = load i32, ptr %.reg2mem123, align 4
  %.reload138 = load i32, ptr %.reg2mem135, align 4
  %90 = icmp eq i32 %.reload125, %.reload138
  br i1 %90, label %._crit_edge21, label %._crit_edge22, !llvm.loop !19

._crit_edge22:                                    ; preds = %82
  %.reload124 = load i32, ptr %.reg2mem123, align 4
  %.reload128 = load double, ptr %.reg2mem126, align 8
  store i32 %.reload124, ptr %.reg2mem285, align 4
  store double %.reload128, ptr %.reg2mem287, align 8
  br label %82

._crit_edge21:                                    ; preds = %82
  %.reload127 = load double, ptr %.reg2mem126, align 8
  store double %.reload127, ptr %.reg2mem283, align 8
  br label %91

91:                                               ; preds = %._crit_edge21, %._crit_edge19
  %.reload284 = load double, ptr %.reg2mem283, align 8
  %.reload137 = load i32, ptr %.reg2mem135, align 4
  %.reload246 = load ptr, ptr %.reg2mem239, align 4
  %92 = getelementptr inbounds [400 x double], ptr %.reload246, i32 %.reload137, i32 %.reload137
  %93 = load double, ptr %92, align 8, !tbaa !2
  %94 = fdiv double %.reload284, %93
  %.reload133 = load ptr, ptr %.reg2mem132, align 4
  store double %94, ptr %.reload133, align 8, !tbaa !2
  %.reload136 = load i32, ptr %.reg2mem135, align 4
  %95 = add nuw nsw i32 %.reload136, 1
  store i32 %95, ptr %.reg2mem120, align 4
  %.reload122 = load i32, ptr %.reg2mem120, align 4
  %.reload151 = load i32, ptr %.reg2mem145, align 4
  %96 = icmp eq i32 %.reload122, %.reload151
  br i1 %96, label %._crit_edge23, label %._crit_edge24, !llvm.loop !20

._crit_edge24:                                    ; preds = %91
  %.reload121 = load i32, ptr %.reg2mem120, align 4
  store i32 %.reload121, ptr %.reg2mem289, align 4
  br label %78

._crit_edge23:                                    ; preds = %91
  br label %97

97:                                               ; preds = %._crit_edge23, %._crit_edge17
  %.reload146 = load i32, ptr %.reg2mem145, align 4
  store i32 %.reload146, ptr %.reg2mem281, align 4
  br label %98

98:                                               ; preds = %._crit_edge29, %97
  %.reload282 = load i32, ptr %.reg2mem281, align 4
  store i32 %.reload282, ptr %.reg2mem116, align 4
  %.reload119 = load i32, ptr %.reg2mem116, align 4
  %.reload150 = load i32, ptr %.reg2mem145, align 4
  %.reload245 = load ptr, ptr %.reg2mem239, align 4
  %99 = getelementptr inbounds [400 x double], ptr %.reload245, i32 %.reload150, i32 %.reload119
  store ptr %99, ptr %.reg2mem113, align 4
  %.reload115 = load ptr, ptr %.reg2mem113, align 4
  %100 = load double, ptr %.reload115, align 8, !tbaa !2
  store double %100, ptr %.reg2mem110, align 8
  %.reload143 = load i1, ptr %.reg2mem142, align 1
  br i1 %.reload143, label %._crit_edge25, label %._crit_edge26

._crit_edge26:                                    ; preds = %98
  %.reload111 = load double, ptr %.reg2mem110, align 8
  store i32 0, ptr %.reg2mem277, align 4
  store double %.reload111, ptr %.reg2mem279, align 8
  br label %101

._crit_edge25:                                    ; preds = %98
  %.reload112 = load double, ptr %.reg2mem110, align 8
  store double %.reload112, ptr %.reg2mem275, align 8
  br label %110

101:                                              ; preds = %._crit_edge28, %._crit_edge26
  %.reload280 = load double, ptr %.reg2mem279, align 8
  %.reload278 = load i32, ptr %.reg2mem277, align 4
  %.reload149 = load i32, ptr %.reg2mem145, align 4
  %.reload244 = load ptr, ptr %.reg2mem239, align 4
  %102 = getelementptr inbounds [400 x double], ptr %.reload244, i32 %.reload149, i32 %.reload278
  %103 = load double, ptr %102, align 8, !tbaa !2
  %.reload118 = load i32, ptr %.reg2mem116, align 4
  %.reload243 = load ptr, ptr %.reg2mem239, align 4
  %104 = getelementptr inbounds [400 x double], ptr %.reload243, i32 %.reload278, i32 %.reload118
  %105 = load double, ptr %104, align 8, !tbaa !2
  %106 = fneg double %103
  %107 = tail call double @llvm.fmuladd.f64(double %106, double %105, double %.reload280)
  store double %107, ptr %.reg2mem107, align 8
  %108 = add nuw nsw i32 %.reload278, 1
  store i32 %108, ptr %.reg2mem104, align 4
  %.reload106 = load i32, ptr %.reg2mem104, align 4
  %.reload148 = load i32, ptr %.reg2mem145, align 4
  %109 = icmp eq i32 %.reload106, %.reload148
  br i1 %109, label %._crit_edge27, label %._crit_edge28, !llvm.loop !21

._crit_edge28:                                    ; preds = %101
  %.reload105 = load i32, ptr %.reg2mem104, align 4
  %.reload109 = load double, ptr %.reg2mem107, align 8
  store i32 %.reload105, ptr %.reg2mem277, align 4
  store double %.reload109, ptr %.reg2mem279, align 8
  br label %101

._crit_edge27:                                    ; preds = %101
  %.reload108 = load double, ptr %.reg2mem107, align 8
  store double %.reload108, ptr %.reg2mem275, align 8
  br label %110

110:                                              ; preds = %._crit_edge27, %._crit_edge25
  %.reload276 = load double, ptr %.reg2mem275, align 8
  %.reload114 = load ptr, ptr %.reg2mem113, align 4
  store double %.reload276, ptr %.reload114, align 8, !tbaa !2
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  %111 = add nuw nsw i32 %.reload117, 1
  store i32 %111, ptr %.reg2mem101, align 4
  %.reload103 = load i32, ptr %.reg2mem101, align 4
  %112 = icmp eq i32 %.reload103, 400
  br i1 %112, label %113, label %._crit_edge29, !llvm.loop !22

._crit_edge29:                                    ; preds = %110
  %.reload102 = load i32, ptr %.reg2mem101, align 4
  store i32 %.reload102, ptr %.reg2mem281, align 4
  br label %98

113:                                              ; preds = %110
  %.reload147 = load i32, ptr %.reg2mem145, align 4
  %114 = add nuw nsw i32 %.reload147, 1
  store i32 %114, ptr %.reg2mem98, align 4
  %.reload100 = load i32, ptr %.reg2mem98, align 4
  %115 = icmp eq i32 %.reload100, 400
  br i1 %115, label %._crit_edge30, label %._crit_edge31, !llvm.loop !23

._crit_edge31:                                    ; preds = %113
  %.reload99 = load i32, ptr %.reg2mem98, align 4
  store i32 %.reload99, ptr %.reg2mem291, align 4
  br label %76

._crit_edge30:                                    ; preds = %113
  store i32 0, ptr %.reg2mem273, align 4
  br label %116

116:                                              ; preds = %._crit_edge37, %._crit_edge30
  %.reload274 = load i32, ptr %.reg2mem273, align 4
  store i32 %.reload274, ptr %.reg2mem91, align 4
  %.reload97 = load i32, ptr %.reg2mem91, align 4
  %.reload236 = load ptr, ptr %.reg2mem235, align 4
  %117 = getelementptr inbounds double, ptr %.reload236, i32 %.reload97
  %118 = load double, ptr %117, align 8, !tbaa !2
  store double %118, ptr %.reg2mem88, align 8
  %.reload96 = load i32, ptr %.reg2mem91, align 4
  %119 = icmp eq i32 %.reload96, 0
  br i1 %119, label %._crit_edge32, label %._crit_edge33

._crit_edge33:                                    ; preds = %116
  %.reload89 = load double, ptr %.reg2mem88, align 8
  store i32 0, ptr %.reg2mem269, align 4
  store double %.reload89, ptr %.reg2mem271, align 8
  br label %120

._crit_edge32:                                    ; preds = %116
  %.reload90 = load double, ptr %.reg2mem88, align 8
  store double %.reload90, ptr %.reg2mem267, align 8
  br label %129

120:                                              ; preds = %._crit_edge35, %._crit_edge33
  %.reload272 = load double, ptr %.reg2mem271, align 8
  %.reload270 = load i32, ptr %.reg2mem269, align 4
  %.reload95 = load i32, ptr %.reg2mem91, align 4
  %.reload242 = load ptr, ptr %.reg2mem239, align 4
  %121 = getelementptr inbounds [400 x double], ptr %.reload242, i32 %.reload95, i32 %.reload270
  %122 = load double, ptr %121, align 8, !tbaa !2
  %.reload226 = load ptr, ptr %.reg2mem223, align 4
  %123 = getelementptr inbounds double, ptr %.reload226, i32 %.reload270
  %124 = load double, ptr %123, align 8, !tbaa !2
  %125 = fneg double %122
  %126 = tail call double @llvm.fmuladd.f64(double %125, double %124, double %.reload272)
  store double %126, ptr %.reg2mem85, align 8
  %127 = add nuw nsw i32 %.reload270, 1
  store i32 %127, ptr %.reg2mem82, align 4
  %.reload84 = load i32, ptr %.reg2mem82, align 4
  %.reload94 = load i32, ptr %.reg2mem91, align 4
  %128 = icmp eq i32 %.reload84, %.reload94
  br i1 %128, label %._crit_edge34, label %._crit_edge35, !llvm.loop !24

._crit_edge35:                                    ; preds = %120
  %.reload83 = load i32, ptr %.reg2mem82, align 4
  %.reload87 = load double, ptr %.reg2mem85, align 8
  store i32 %.reload83, ptr %.reg2mem269, align 4
  store double %.reload87, ptr %.reg2mem271, align 8
  br label %120

._crit_edge34:                                    ; preds = %120
  %.reload86 = load double, ptr %.reg2mem85, align 8
  store double %.reload86, ptr %.reg2mem267, align 8
  br label %129

129:                                              ; preds = %._crit_edge34, %._crit_edge32
  %.reload268 = load double, ptr %.reg2mem267, align 8
  %.reload93 = load i32, ptr %.reg2mem91, align 4
  %.reload225 = load ptr, ptr %.reg2mem223, align 4
  %130 = getelementptr inbounds double, ptr %.reload225, i32 %.reload93
  store double %.reload268, ptr %130, align 8, !tbaa !2
  %.reload92 = load i32, ptr %.reg2mem91, align 4
  %131 = add nuw nsw i32 %.reload92, 1
  store i32 %131, ptr %.reg2mem79, align 4
  %.reload81 = load i32, ptr %.reg2mem79, align 4
  %132 = icmp eq i32 %.reload81, 400
  br i1 %132, label %._crit_edge36, label %._crit_edge37, !llvm.loop !25

._crit_edge37:                                    ; preds = %129
  %.reload80 = load i32, ptr %.reg2mem79, align 4
  store i32 %.reload80, ptr %.reg2mem273, align 4
  br label %116

._crit_edge36:                                    ; preds = %129
  store i32 399, ptr %.reg2mem265, align 4
  br label %133

133:                                              ; preds = %._crit_edge42, %._crit_edge36
  %.reload266 = load i32, ptr %.reg2mem265, align 4
  store i32 %.reload266, ptr %.reg2mem70, align 4
  %.reload78 = load i32, ptr %.reg2mem70, align 4
  %.reload224 = load ptr, ptr %.reg2mem223, align 4
  %134 = getelementptr inbounds double, ptr %.reload224, i32 %.reload78
  %135 = load double, ptr %134, align 8, !tbaa !2
  store double %135, ptr %.reg2mem67, align 8
  %.reload77 = load i32, ptr %.reg2mem70, align 4
  %136 = icmp ult i32 %.reload77, 399
  br i1 %136, label %._crit_edge38, label %._crit_edge39

._crit_edge39:                                    ; preds = %133
  %.reload69 = load double, ptr %.reg2mem67, align 8
  store double %.reload69, ptr %.reg2mem259, align 8
  br label %146

._crit_edge38:                                    ; preds = %133
  %.reload68 = load double, ptr %.reg2mem67, align 8
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  store i32 %.reload71, ptr %.reg2mem261, align 4
  store double %.reload68, ptr %.reg2mem263, align 8
  br label %137

137:                                              ; preds = %._crit_edge41, %._crit_edge38
  %.reload264 = load double, ptr %.reg2mem263, align 8
  %.reload262 = load i32, ptr %.reg2mem261, align 4
  %138 = add nuw nsw i32 %.reload262, 1
  store i32 %138, ptr %.reg2mem62, align 4
  %.reload66 = load i32, ptr %.reg2mem62, align 4
  %.reload72 = load i32, ptr %.reg2mem70, align 4
  %.reload240 = load ptr, ptr %.reg2mem239, align 4
  %139 = getelementptr inbounds [400 x double], ptr %.reload240, i32 %.reload72, i32 %.reload66
  %140 = load double, ptr %139, align 8, !tbaa !2
  %.reload65 = load i32, ptr %.reg2mem62, align 4
  %.reload231 = load ptr, ptr %.reg2mem229, align 4
  %141 = getelementptr inbounds double, ptr %.reload231, i32 %.reload65
  %142 = load double, ptr %141, align 8, !tbaa !2
  %143 = fneg double %140
  %144 = tail call double @llvm.fmuladd.f64(double %143, double %142, double %.reload264)
  store double %144, ptr %.reg2mem59, align 8
  %.reload64 = load i32, ptr %.reg2mem62, align 4
  %145 = icmp eq i32 %.reload64, 399
  br i1 %145, label %._crit_edge40, label %._crit_edge41, !llvm.loop !26

._crit_edge41:                                    ; preds = %137
  %.reload61 = load double, ptr %.reg2mem59, align 8
  %.reload63 = load i32, ptr %.reg2mem62, align 4
  store i32 %.reload63, ptr %.reg2mem261, align 4
  store double %.reload61, ptr %.reg2mem263, align 8
  br label %137

._crit_edge40:                                    ; preds = %137
  %.reload60 = load double, ptr %.reg2mem59, align 8
  store double %.reload60, ptr %.reg2mem259, align 8
  br label %146

146:                                              ; preds = %._crit_edge40, %._crit_edge39
  %.reload260 = load double, ptr %.reg2mem259, align 8
  %.reload76 = load i32, ptr %.reg2mem70, align 4
  %.reload241 = load ptr, ptr %.reg2mem239, align 4
  %147 = getelementptr inbounds [400 x double], ptr %.reload241, i32 %.reload76, i32 %.reload76
  %148 = load double, ptr %147, align 8, !tbaa !2
  %149 = fdiv double %.reload260, %148
  %.reload75 = load i32, ptr %.reg2mem70, align 4
  %.reload232 = load ptr, ptr %.reg2mem229, align 4
  %150 = getelementptr inbounds double, ptr %.reload232, i32 %.reload75
  store double %149, ptr %150, align 8, !tbaa !2
  %.reload74 = load i32, ptr %.reg2mem70, align 4
  %151 = add nsw i32 %.reload74, -1
  store i32 %151, ptr %.reg2mem57, align 4
  %.reload73 = load i32, ptr %.reg2mem70, align 4
  %152 = icmp eq i32 %.reload73, 0
  br i1 %152, label %153, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %146
  %.reload58 = load i32, ptr %.reg2mem57, align 4
  store i32 %.reload58, ptr %.reg2mem265, align 4
  br label %133

153:                                              ; preds = %146
  %154 = load ptr, ptr @stderr, align 4, !tbaa !28
  store ptr %154, ptr %.reg2mem50, align 4
  %.reload56 = load ptr, ptr %.reg2mem50, align 4
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload56, ptr noundef nonnull @.str) #3
  %.reload55 = load ptr, ptr %.reg2mem50, align 4
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload55, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem257, align 4
  br label %157

157:                                              ; preds = %._crit_edge44, %153
  %.reload258 = load i32, ptr %.reg2mem257, align 4
  store i32 %.reload258, ptr %.reg2mem46, align 4
  %.reload49 = load i32, ptr %.reg2mem46, align 4
  %158 = trunc nuw i32 %.reload49 to i16
  %159 = urem i16 %158, 20
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %._crit_edge43

._crit_edge43:                                    ; preds = %157
  br label %163

161:                                              ; preds = %157
  %.reload51 = load ptr, ptr %.reg2mem50, align 4
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload51, ptr noundef nonnull @.str.3) #3
  br label %163

163:                                              ; preds = %._crit_edge43, %161
  %.reload48 = load i32, ptr %.reg2mem46, align 4
  %.reload230 = load ptr, ptr %.reg2mem229, align 4
  %164 = getelementptr inbounds double, ptr %.reload230, i32 %.reload48
  %165 = load double, ptr %164, align 8, !tbaa !2
  %.reload54 = load ptr, ptr %.reg2mem50, align 4
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload54, ptr noundef nonnull @.str.4, double noundef %165) #3
  %.reload47 = load i32, ptr %.reg2mem46, align 4
  %167 = add nuw nsw i32 %.reload47, 1
  store i32 %167, ptr %.reg2mem, align 4
  %.reload45 = load i32, ptr %.reg2mem, align 4
  %168 = icmp eq i32 %.reload45, 400
  br i1 %168, label %169, label %._crit_edge44, !llvm.loop !30

._crit_edge44:                                    ; preds = %163
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem257, align 4
  br label %157

169:                                              ; preds = %163
  %.reload53 = load ptr, ptr %.reg2mem50, align 4
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload53, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload52 = load ptr, ptr %.reg2mem50, align 4
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload52, ptr noundef nonnull @.str.6) #3
  %.reload256 = load ptr, ptr %.reg2mem239, align 4
  tail call void @free(ptr noundef %.reload256) #3
  %.reload238 = load ptr, ptr %.reg2mem235, align 4
  tail call void @free(ptr noundef %.reload238) #3
  %.reload234 = load ptr, ptr %.reg2mem229, align 4
  tail call void @free(ptr noundef nonnull %.reload234) #3
  %.reload228 = load ptr, ptr %.reg2mem223, align 4
  tail call void @free(ptr noundef %.reload228) #3
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
!25 = distinct !{!25, !7, !8}
!26 = distinct !{!26, !7, !8}
!27 = distinct !{!27, !7, !8}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !4, i64 0}
!30 = distinct !{!30, !7, !8}
