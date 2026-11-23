; ModuleID = './polybench-output/wasm/no-phis/correlation.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/datamining/correlation/correlation.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem28 = alloca i32, align 4
  %.reg2mem32 = alloca ptr, align 4
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem42 = alloca i32, align 4
  %.reg2mem45 = alloca double, align 8
  %.reg2mem49 = alloca ptr, align 4
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem57 = alloca i32, align 4
  %.reg2mem61 = alloca i32, align 4
  %.reg2mem67 = alloca i32, align 4
  %.reg2mem70 = alloca i32, align 4
  %.reg2mem73 = alloca i32, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem79 = alloca i32, align 4
  %.reg2mem82 = alloca double, align 8
  %.reg2mem86 = alloca ptr, align 4
  %.reg2mem88 = alloca ptr, align 4
  %.reg2mem93 = alloca i32, align 4
  %.reg2mem98 = alloca i32, align 4
  %.reg2mem101 = alloca i32, align 4
  %.reg2mem104 = alloca double, align 8
  %.reg2mem108 = alloca ptr, align 4
  %.reg2mem112 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem122 = alloca double, align 8
  %.reg2mem124 = alloca i32, align 4
  %.reg2mem129 = alloca ptr, align 4
  %.reg2mem133 = alloca ptr, align 4
  %.reg2mem138 = alloca ptr, align 4
  %.reg2mem145 = alloca ptr, align 4
  %.reg2mem153 = alloca i32, align 4
  %.reg2mem155 = alloca i32, align 4
  %.reg2mem157 = alloca double, align 8
  %.reg2mem159 = alloca i32, align 4
  %.reg2mem161 = alloca i32, align 4
  %.reg2mem163 = alloca i32, align 4
  %.reg2mem165 = alloca i32, align 4
  %.reg2mem167 = alloca i32, align 4
  %.reg2mem169 = alloca i32, align 4
  %.reg2mem171 = alloca double, align 8
  %.reg2mem173 = alloca i32, align 4
  %.reg2mem175 = alloca double, align 8
  %.reg2mem177 = alloca i32, align 4
  %.reg2mem179 = alloca i32, align 4
  %.reg2mem181 = alloca i32, align 4
  %.reg2mem183 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62400, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem145, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem138, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 240, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem133, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 240, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem129, align 4
  store i32 0, ptr %.reg2mem183, align 4
  br label %7

7:                                                ; preds = %._crit_edge2, %2
  %.reload184 = load i32, ptr %.reg2mem183, align 4
  store i32 %.reload184, ptr %.reg2mem124, align 4
  %.reload128 = load i32, ptr %.reg2mem124, align 4
  %8 = uitofp nneg i32 %.reload128 to double
  store double %8, ptr %.reg2mem122, align 8
  store i32 0, ptr %.reg2mem181, align 4
  br label %9

9:                                                ; preds = %._crit_edge, %7
  %.reload182 = load i32, ptr %.reg2mem181, align 4
  %.reload127 = load i32, ptr %.reg2mem124, align 4
  %10 = mul nuw nsw i32 %.reload182, %.reload127
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double %11, 2.400000e+02
  %.reload123 = load double, ptr %.reg2mem122, align 8
  %13 = fadd double %12, %.reload123
  %.reload126 = load i32, ptr %.reg2mem124, align 4
  %.reload151 = load ptr, ptr %.reg2mem145, align 4
  %14 = getelementptr inbounds [240 x double], ptr %.reload151, i32 %.reload126, i32 %.reload182
  store double %13, ptr %14, align 8, !tbaa !2
  %15 = add nuw nsw i32 %.reload182, 1
  store i32 %15, ptr %.reg2mem119, align 4
  %.reload121 = load i32, ptr %.reg2mem119, align 4
  %16 = icmp eq i32 %.reload121, 240
  br i1 %16, label %17, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %9
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  store i32 %.reload120, ptr %.reg2mem181, align 4
  br label %9

17:                                               ; preds = %9
  %.reload125 = load i32, ptr %.reg2mem124, align 4
  %18 = add nuw nsw i32 %.reload125, 1
  store i32 %18, ptr %.reg2mem116, align 4
  %.reload118 = load i32, ptr %.reg2mem116, align 4
  %19 = icmp eq i32 %.reload118, 260
  br i1 %19, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %17
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  store i32 %.reload117, ptr %.reg2mem183, align 4
  br label %7

._crit_edge1:                                     ; preds = %17
  store i32 0, ptr %.reg2mem179, align 4
  br label %20

20:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload180 = load i32, ptr %.reg2mem179, align 4
  store i32 %.reload180, ptr %.reg2mem112, align 4
  %.reload115 = load i32, ptr %.reg2mem112, align 4
  %.reload136 = load ptr, ptr %.reg2mem133, align 4
  %21 = getelementptr inbounds double, ptr %.reload136, i32 %.reload115
  store ptr %21, ptr %.reg2mem108, align 4
  %.reload111 = load ptr, ptr %.reg2mem108, align 4
  store double 0.000000e+00, ptr %.reload111, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem175, align 8
  store i32 0, ptr %.reg2mem177, align 4
  br label %22

22:                                               ; preds = %._crit_edge3, %20
  %.reload178 = load i32, ptr %.reg2mem177, align 4
  %.reload176 = load double, ptr %.reg2mem175, align 8
  %.reload114 = load i32, ptr %.reg2mem112, align 4
  %.reload150 = load ptr, ptr %.reg2mem145, align 4
  %23 = getelementptr inbounds [240 x double], ptr %.reload150, i32 %.reload178, i32 %.reload114
  %24 = load double, ptr %23, align 8, !tbaa !2
  %25 = fadd double %.reload176, %24
  store double %25, ptr %.reg2mem104, align 8
  %.reload107 = load double, ptr %.reg2mem104, align 8
  %.reload110 = load ptr, ptr %.reg2mem108, align 4
  store double %.reload107, ptr %.reload110, align 8, !tbaa !2
  %26 = add nuw nsw i32 %.reload178, 1
  store i32 %26, ptr %.reg2mem101, align 4
  %.reload103 = load i32, ptr %.reg2mem101, align 4
  %27 = icmp eq i32 %.reload103, 260
  br i1 %27, label %28, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %22
  %.reload102 = load i32, ptr %.reg2mem101, align 4
  %.reload106 = load double, ptr %.reg2mem104, align 8
  store double %.reload106, ptr %.reg2mem175, align 8
  store i32 %.reload102, ptr %.reg2mem177, align 4
  br label %22

28:                                               ; preds = %22
  %.reload105 = load double, ptr %.reg2mem104, align 8
  %29 = fdiv double %.reload105, 2.600000e+02
  %.reload109 = load ptr, ptr %.reg2mem108, align 4
  store double %29, ptr %.reload109, align 8, !tbaa !2
  %.reload113 = load i32, ptr %.reg2mem112, align 4
  %30 = add nuw nsw i32 %.reload113, 1
  store i32 %30, ptr %.reg2mem98, align 4
  %.reload100 = load i32, ptr %.reg2mem98, align 4
  %31 = icmp eq i32 %.reload100, 240
  br i1 %31, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %28
  %.reload99 = load i32, ptr %.reg2mem98, align 4
  store i32 %.reload99, ptr %.reg2mem179, align 4
  br label %20

._crit_edge4:                                     ; preds = %28
  store i32 0, ptr %.reg2mem173, align 4
  br label %32

32:                                               ; preds = %._crit_edge8, %._crit_edge4
  %.reload174 = load i32, ptr %.reg2mem173, align 4
  store i32 %.reload174, ptr %.reg2mem93, align 4
  %.reload97 = load i32, ptr %.reg2mem93, align 4
  %.reload131 = load ptr, ptr %.reg2mem129, align 4
  %33 = getelementptr inbounds double, ptr %.reload131, i32 %.reload97
  store ptr %33, ptr %.reg2mem88, align 4
  %.reload92 = load ptr, ptr %.reg2mem88, align 4
  store double 0.000000e+00, ptr %.reload92, align 8, !tbaa !2
  %.reload96 = load i32, ptr %.reg2mem93, align 4
  %.reload135 = load ptr, ptr %.reg2mem133, align 4
  %34 = getelementptr inbounds double, ptr %.reload135, i32 %.reload96
  store ptr %34, ptr %.reg2mem86, align 4
  store i32 0, ptr %.reg2mem169, align 4
  store double 0.000000e+00, ptr %.reg2mem171, align 8
  br label %35

35:                                               ; preds = %._crit_edge6, %32
  %.reload172 = load double, ptr %.reg2mem171, align 8
  %.reload170 = load i32, ptr %.reg2mem169, align 4
  %.reload95 = load i32, ptr %.reg2mem93, align 4
  %.reload149 = load ptr, ptr %.reg2mem145, align 4
  %36 = getelementptr inbounds [240 x double], ptr %.reload149, i32 %.reload170, i32 %.reload95
  %37 = load double, ptr %36, align 8, !tbaa !2
  %.reload87 = load ptr, ptr %.reg2mem86, align 4
  %38 = load double, ptr %.reload87, align 8, !tbaa !2
  %39 = fsub double %37, %38
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %39, double %.reload172)
  store double %40, ptr %.reg2mem82, align 8
  %.reload85 = load double, ptr %.reg2mem82, align 8
  %.reload91 = load ptr, ptr %.reg2mem88, align 4
  store double %.reload85, ptr %.reload91, align 8, !tbaa !2
  %41 = add nuw nsw i32 %.reload170, 1
  store i32 %41, ptr %.reg2mem79, align 4
  %.reload81 = load i32, ptr %.reg2mem79, align 4
  %42 = icmp eq i32 %.reload81, 260
  br i1 %42, label %43, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %35
  %.reload80 = load i32, ptr %.reg2mem79, align 4
  %.reload84 = load double, ptr %.reg2mem82, align 8
  store i32 %.reload80, ptr %.reg2mem169, align 4
  store double %.reload84, ptr %.reg2mem171, align 8
  br label %35

43:                                               ; preds = %35
  %.reload83 = load double, ptr %.reg2mem82, align 8
  %44 = fdiv double %.reload83, 2.600000e+02
  %.reload90 = load ptr, ptr %.reg2mem88, align 4
  store double %44, ptr %.reload90, align 8, !tbaa !2
  %45 = tail call double @sqrt(double noundef %44) #3
  %46 = fcmp ugt double %45, 1.000000e-01
  %47 = select i1 %46, double %45, double 1.000000e+00
  %.reload89 = load ptr, ptr %.reg2mem88, align 4
  store double %47, ptr %.reload89, align 8, !tbaa !2
  %.reload94 = load i32, ptr %.reg2mem93, align 4
  %48 = add nuw nsw i32 %.reload94, 1
  store i32 %48, ptr %.reg2mem76, align 4
  %.reload78 = load i32, ptr %.reg2mem76, align 4
  %49 = icmp eq i32 %.reload78, 240
  br i1 %49, label %._crit_edge7, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %43
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  store i32 %.reload77, ptr %.reg2mem173, align 4
  br label %32

._crit_edge7:                                     ; preds = %43
  store i32 0, ptr %.reg2mem167, align 4
  br label %50

50:                                               ; preds = %._crit_edge11, %._crit_edge7
  %.reload168 = load i32, ptr %.reg2mem167, align 4
  store i32 %.reload168, ptr %.reg2mem73, align 4
  store i32 0, ptr %.reg2mem165, align 4
  br label %51

51:                                               ; preds = %._crit_edge9, %50
  %.reload166 = load i32, ptr %.reg2mem165, align 4
  %.reload134 = load ptr, ptr %.reg2mem133, align 4
  %52 = getelementptr inbounds double, ptr %.reload134, i32 %.reload166
  %53 = load double, ptr %52, align 8, !tbaa !2
  %.reload75 = load i32, ptr %.reg2mem73, align 4
  %.reload148 = load ptr, ptr %.reg2mem145, align 4
  %54 = getelementptr inbounds [240 x double], ptr %.reload148, i32 %.reload75, i32 %.reload166
  %55 = load double, ptr %54, align 8, !tbaa !2
  %56 = fsub double %55, %53
  store double %56, ptr %54, align 8, !tbaa !2
  %57 = tail call double @sqrt(double noundef 2.600000e+02) #3
  %.reload130 = load ptr, ptr %.reg2mem129, align 4
  %58 = getelementptr inbounds double, ptr %.reload130, i32 %.reload166
  %59 = load double, ptr %58, align 8, !tbaa !2
  %60 = fmul double %57, %59
  %61 = load double, ptr %54, align 8, !tbaa !2
  %62 = fdiv double %61, %60
  store double %62, ptr %54, align 8, !tbaa !2
  %63 = add nuw nsw i32 %.reload166, 1
  store i32 %63, ptr %.reg2mem70, align 4
  %.reload72 = load i32, ptr %.reg2mem70, align 4
  %64 = icmp eq i32 %.reload72, 240
  br i1 %64, label %65, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %51
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  store i32 %.reload71, ptr %.reg2mem165, align 4
  br label %51

65:                                               ; preds = %51
  %.reload74 = load i32, ptr %.reg2mem73, align 4
  %66 = add nuw nsw i32 %.reload74, 1
  store i32 %66, ptr %.reg2mem67, align 4
  %.reload69 = load i32, ptr %.reg2mem67, align 4
  %67 = icmp eq i32 %.reload69, 260
  br i1 %67, label %._crit_edge10, label %._crit_edge11, !llvm.loop !15

._crit_edge11:                                    ; preds = %65
  %.reload68 = load i32, ptr %.reg2mem67, align 4
  store i32 %.reload68, ptr %.reg2mem167, align 4
  br label %50

._crit_edge10:                                    ; preds = %65
  store i32 0, ptr %.reg2mem163, align 4
  br label %70

68:                                               ; preds = %83
  %.reload60 = load i32, ptr %.reg2mem57, align 4
  %69 = icmp eq i32 %.reload60, 239
  br i1 %69, label %87, label %._crit_edge12, !llvm.loop !16

._crit_edge12:                                    ; preds = %68
  %.reload59 = load i32, ptr %.reg2mem57, align 4
  store i32 %.reload59, ptr %.reg2mem163, align 4
  br label %70

70:                                               ; preds = %._crit_edge12, %._crit_edge10
  %.reload164 = load i32, ptr %.reg2mem163, align 4
  store i32 %.reload164, ptr %.reg2mem61, align 4
  %.reload66 = load i32, ptr %.reg2mem61, align 4
  %.reload143 = load ptr, ptr %.reg2mem138, align 4
  %71 = getelementptr inbounds [240 x double], ptr %.reload143, i32 %.reload66, i32 %.reload66
  store double 1.000000e+00, ptr %71, align 8, !tbaa !2
  %.reload65 = load i32, ptr %.reg2mem61, align 4
  %72 = add nuw nsw i32 %.reload65, 1
  store i32 %72, ptr %.reg2mem57, align 4
  %.reload58 = load i32, ptr %.reg2mem57, align 4
  store i32 %.reload58, ptr %.reg2mem161, align 4
  br label %73

73:                                               ; preds = %._crit_edge14, %70
  %.reload162 = load i32, ptr %.reg2mem161, align 4
  store i32 %.reload162, ptr %.reg2mem52, align 4
  %.reload56 = load i32, ptr %.reg2mem52, align 4
  %.reload64 = load i32, ptr %.reg2mem61, align 4
  %.reload142 = load ptr, ptr %.reg2mem138, align 4
  %74 = getelementptr inbounds [240 x double], ptr %.reload142, i32 %.reload64, i32 %.reload56
  store ptr %74, ptr %.reg2mem49, align 4
  %.reload51 = load ptr, ptr %.reg2mem49, align 4
  store double 0.000000e+00, ptr %.reload51, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem157, align 8
  store i32 0, ptr %.reg2mem159, align 4
  br label %75

75:                                               ; preds = %._crit_edge13, %73
  %.reload160 = load i32, ptr %.reg2mem159, align 4
  %.reload158 = load double, ptr %.reg2mem157, align 8
  %.reload63 = load i32, ptr %.reg2mem61, align 4
  %.reload147 = load ptr, ptr %.reg2mem145, align 4
  %76 = getelementptr inbounds [240 x double], ptr %.reload147, i32 %.reload160, i32 %.reload63
  %77 = load double, ptr %76, align 8, !tbaa !2
  %.reload55 = load i32, ptr %.reg2mem52, align 4
  %.reload146 = load ptr, ptr %.reg2mem145, align 4
  %78 = getelementptr inbounds [240 x double], ptr %.reload146, i32 %.reload160, i32 %.reload55
  %79 = load double, ptr %78, align 8, !tbaa !2
  %80 = tail call double @llvm.fmuladd.f64(double %77, double %79, double %.reload158)
  store double %80, ptr %.reg2mem45, align 8
  %.reload48 = load double, ptr %.reg2mem45, align 8
  %.reload50 = load ptr, ptr %.reg2mem49, align 4
  store double %.reload48, ptr %.reload50, align 8, !tbaa !2
  %81 = add nuw nsw i32 %.reload160, 1
  store i32 %81, ptr %.reg2mem42, align 4
  %.reload44 = load i32, ptr %.reg2mem42, align 4
  %82 = icmp eq i32 %.reload44, 260
  br i1 %82, label %83, label %._crit_edge13, !llvm.loop !17

._crit_edge13:                                    ; preds = %75
  %.reload43 = load i32, ptr %.reg2mem42, align 4
  %.reload47 = load double, ptr %.reg2mem45, align 8
  store double %.reload47, ptr %.reg2mem157, align 8
  store i32 %.reload43, ptr %.reg2mem159, align 4
  br label %75

83:                                               ; preds = %75
  %.reload54 = load i32, ptr %.reg2mem52, align 4
  %.reload62 = load i32, ptr %.reg2mem61, align 4
  %.reload141 = load ptr, ptr %.reg2mem138, align 4
  %84 = getelementptr inbounds [240 x double], ptr %.reload141, i32 %.reload54, i32 %.reload62
  %.reload46 = load double, ptr %.reg2mem45, align 8
  store double %.reload46, ptr %84, align 8, !tbaa !2
  %.reload53 = load i32, ptr %.reg2mem52, align 4
  %85 = add nuw nsw i32 %.reload53, 1
  store i32 %85, ptr %.reg2mem39, align 4
  %.reload41 = load i32, ptr %.reg2mem39, align 4
  %86 = icmp eq i32 %.reload41, 240
  br i1 %86, label %68, label %._crit_edge14, !llvm.loop !18

._crit_edge14:                                    ; preds = %83
  %.reload40 = load i32, ptr %.reg2mem39, align 4
  store i32 %.reload40, ptr %.reg2mem161, align 4
  br label %73

87:                                               ; preds = %68
  %.reload140 = load ptr, ptr %.reg2mem138, align 4
  %88 = getelementptr inbounds i8, ptr %.reload140, i32 460792
  store double 1.000000e+00, ptr %88, align 8, !tbaa !2
  %89 = load ptr, ptr @stderr, align 4, !tbaa !19
  store ptr %89, ptr %.reg2mem32, align 4
  %.reload38 = load ptr, ptr %.reg2mem32, align 4
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload38, ptr noundef nonnull @.str) #3
  %.reload37 = load ptr, ptr %.reg2mem32, align 4
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload37, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem155, align 4
  br label %92

92:                                               ; preds = %._crit_edge17, %87
  %.reload156 = load i32, ptr %.reg2mem155, align 4
  store i32 %.reload156, ptr %.reg2mem28, align 4
  %.reload31 = load i32, ptr %.reg2mem28, align 4
  %93 = mul nuw nsw i32 %.reload31, 240
  store i32 %93, ptr %.reg2mem26, align 4
  store i32 0, ptr %.reg2mem153, align 4
  br label %94

94:                                               ; preds = %._crit_edge16, %92
  %.reload154 = load i32, ptr %.reg2mem153, align 4
  store i32 %.reload154, ptr %.reg2mem22, align 4
  %.reload25 = load i32, ptr %.reg2mem22, align 4
  %.reload27 = load i32, ptr %.reg2mem26, align 4
  %95 = add nuw nsw i32 %.reload25, %.reload27
  %96 = urem i32 %95, 20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %._crit_edge15

._crit_edge15:                                    ; preds = %94
  br label %100

98:                                               ; preds = %94
  %.reload33 = load ptr, ptr %.reg2mem32, align 4
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload33, ptr noundef nonnull @.str.3) #3
  br label %100

100:                                              ; preds = %._crit_edge15, %98
  %.reload24 = load i32, ptr %.reg2mem22, align 4
  %.reload30 = load i32, ptr %.reg2mem28, align 4
  %.reload139 = load ptr, ptr %.reg2mem138, align 4
  %101 = getelementptr inbounds [240 x double], ptr %.reload139, i32 %.reload30, i32 %.reload24
  %102 = load double, ptr %101, align 8, !tbaa !2
  %.reload36 = load ptr, ptr %.reg2mem32, align 4
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload36, ptr noundef nonnull @.str.4, double noundef %102) #3
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  %104 = add nuw nsw i32 %.reload23, 1
  store i32 %104, ptr %.reg2mem19, align 4
  %.reload21 = load i32, ptr %.reg2mem19, align 4
  %105 = icmp eq i32 %.reload21, 240
  br i1 %105, label %106, label %._crit_edge16, !llvm.loop !21

._crit_edge16:                                    ; preds = %100
  %.reload20 = load i32, ptr %.reg2mem19, align 4
  store i32 %.reload20, ptr %.reg2mem153, align 4
  br label %94

106:                                              ; preds = %100
  %.reload29 = load i32, ptr %.reg2mem28, align 4
  %107 = add nuw nsw i32 %.reload29, 1
  store i32 %107, ptr %.reg2mem, align 4
  %.reload18 = load i32, ptr %.reg2mem, align 4
  %108 = icmp eq i32 %.reload18, 240
  br i1 %108, label %109, label %._crit_edge17, !llvm.loop !22

._crit_edge17:                                    ; preds = %106
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem155, align 4
  br label %92

109:                                              ; preds = %106
  %.reload35 = load ptr, ptr %.reg2mem32, align 4
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload35, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload34 = load ptr, ptr %.reg2mem32, align 4
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload34, ptr noundef nonnull @.str.6) #3
  %.reload152 = load ptr, ptr %.reg2mem145, align 4
  tail call void @free(ptr noundef %.reload152) #3
  %.reload144 = load ptr, ptr %.reg2mem138, align 4
  tail call void @free(ptr noundef nonnull %.reload144) #3
  %.reload137 = load ptr, ptr %.reg2mem133, align 4
  tail call void @free(ptr noundef %.reload137) #3
  %.reload132 = load ptr, ptr %.reg2mem129, align 4
  tail call void @free(ptr noundef %.reload132) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare double @sqrt(double noundef) local_unnamed_addr #1

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
