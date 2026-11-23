; ModuleID = './polybench-output/wasm/no-phis/gramschmidt.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/gramschmidt/gramschmidt.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem42 = alloca i32, align 4
  %.reg2mem46 = alloca i32, align 4
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem52 = alloca ptr, align 4
  %.reg2mem63 = alloca i32, align 4
  %.reg2mem66 = alloca i32, align 4
  %.reg2mem69 = alloca i32, align 4
  %.reg2mem72 = alloca double, align 8
  %.reg2mem75 = alloca ptr, align 4
  %.reg2mem79 = alloca i32, align 4
  %.reg2mem84 = alloca i32, align 4
  %.reg2mem88 = alloca i32, align 4
  %.reg2mem91 = alloca ptr, align 4
  %.reg2mem94 = alloca i32, align 4
  %.reg2mem97 = alloca double, align 8
  %.reg2mem100 = alloca i32, align 4
  %.reg2mem110 = alloca i32, align 4
  %.reg2mem113 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem122 = alloca i32, align 4
  %.reg2mem125 = alloca i32, align 4
  %.reg2mem130 = alloca ptr, align 4
  %.reg2mem137 = alloca ptr, align 4
  %.reg2mem143 = alloca ptr, align 4
  %.reg2mem150 = alloca i32, align 4
  %.reg2mem152 = alloca i32, align 4
  %.reg2mem154 = alloca i32, align 4
  %.reg2mem156 = alloca i32, align 4
  %.reg2mem158 = alloca i32, align 4
  %.reg2mem160 = alloca double, align 8
  %.reg2mem162 = alloca i32, align 4
  %.reg2mem164 = alloca i32, align 4
  %.reg2mem166 = alloca i32, align 4
  %.reg2mem168 = alloca i32, align 4
  %.reg2mem170 = alloca double, align 8
  %.reg2mem172 = alloca i32, align 4
  %.reg2mem174 = alloca i32, align 4
  %.reg2mem176 = alloca i32, align 4
  %.reg2mem178 = alloca i32, align 4
  %.reg2mem180 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem143, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem137, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem130, align 4
  store i32 0, ptr %.reg2mem180, align 4
  br label %6

6:                                                ; preds = %._crit_edge2, %2
  %.reload181 = load i32, ptr %.reg2mem180, align 4
  store i32 %.reload181, ptr %.reg2mem125, align 4
  store i32 0, ptr %.reg2mem178, align 4
  br label %7

7:                                                ; preds = %._crit_edge, %6
  %.reload179 = load i32, ptr %.reg2mem178, align 4
  %.reload129 = load i32, ptr %.reg2mem125, align 4
  %8 = mul nuw nsw i32 %.reload179, %.reload129
  %9 = urem i32 %8, 200
  %10 = uitofp nneg i32 %9 to double
  %11 = fdiv double %10, 2.000000e+02
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 1.000000e+02, double 1.000000e+01)
  %.reload128 = load i32, ptr %.reg2mem125, align 4
  %.reload148 = load ptr, ptr %.reg2mem143, align 4
  %13 = getelementptr inbounds [240 x double], ptr %.reload148, i32 %.reload128, i32 %.reload179
  store double %12, ptr %13, align 8, !tbaa !2
  %.reload127 = load i32, ptr %.reg2mem125, align 4
  %.reload135 = load ptr, ptr %.reg2mem130, align 4
  %14 = getelementptr inbounds [240 x double], ptr %.reload135, i32 %.reload127, i32 %.reload179
  store double 0.000000e+00, ptr %14, align 8, !tbaa !2
  %15 = add nuw nsw i32 %.reload179, 1
  store i32 %15, ptr %.reg2mem122, align 4
  %.reload124 = load i32, ptr %.reg2mem122, align 4
  %16 = icmp eq i32 %.reload124, 240
  br i1 %16, label %17, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %7
  %.reload123 = load i32, ptr %.reg2mem122, align 4
  store i32 %.reload123, ptr %.reg2mem178, align 4
  br label %7

17:                                               ; preds = %7
  %.reload126 = load i32, ptr %.reg2mem125, align 4
  %18 = add nuw nsw i32 %.reload126, 1
  store i32 %18, ptr %.reg2mem119, align 4
  %.reload121 = load i32, ptr %.reg2mem119, align 4
  %19 = icmp eq i32 %.reload121, 200
  br i1 %19, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %17
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  store i32 %.reload120, ptr %.reg2mem180, align 4
  br label %6

._crit_edge1:                                     ; preds = %17
  store i32 0, ptr %.reg2mem176, align 4
  br label %20

20:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload177 = load i32, ptr %.reg2mem176, align 4
  store i32 %.reload177, ptr %.reg2mem116, align 4
  store i32 0, ptr %.reg2mem174, align 4
  br label %21

21:                                               ; preds = %._crit_edge3, %20
  %.reload175 = load i32, ptr %.reg2mem174, align 4
  %.reload118 = load i32, ptr %.reg2mem116, align 4
  %.reload141 = load ptr, ptr %.reg2mem137, align 4
  %22 = getelementptr inbounds [240 x double], ptr %.reload141, i32 %.reload118, i32 %.reload175
  store double 0.000000e+00, ptr %22, align 8, !tbaa !2
  %23 = add nuw nsw i32 %.reload175, 1
  store i32 %23, ptr %.reg2mem113, align 4
  %.reload115 = load i32, ptr %.reg2mem113, align 4
  %24 = icmp eq i32 %.reload115, 240
  br i1 %24, label %25, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %21
  %.reload114 = load i32, ptr %.reg2mem113, align 4
  store i32 %.reload114, ptr %.reg2mem174, align 4
  br label %21

25:                                               ; preds = %21
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  %26 = add nuw nsw i32 %.reload117, 1
  store i32 %26, ptr %.reg2mem110, align 4
  %.reload112 = load i32, ptr %.reg2mem110, align 4
  %27 = icmp eq i32 %.reload112, 240
  br i1 %27, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %25
  %.reload111 = load i32, ptr %.reg2mem110, align 4
  store i32 %.reload111, ptr %.reg2mem176, align 4
  br label %20

._crit_edge4:                                     ; preds = %25
  store i32 0, ptr %.reg2mem172, align 4
  br label %30

28:                                               ; preds = %._crit_edge14, %._crit_edge10
  %.reload87 = load i32, ptr %.reg2mem84, align 4
  %29 = icmp eq i32 %.reload87, 240
  br i1 %29, label %74, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %28
  %.reload86 = load i32, ptr %.reg2mem84, align 4
  store i32 %.reload86, ptr %.reg2mem172, align 4
  br label %30

30:                                               ; preds = %._crit_edge6, %._crit_edge4
  %.reload173 = load i32, ptr %.reg2mem172, align 4
  store i32 %.reload173, ptr %.reg2mem100, align 4
  store i32 0, ptr %.reg2mem168, align 4
  store double 0.000000e+00, ptr %.reg2mem170, align 8
  br label %31

31:                                               ; preds = %._crit_edge7, %30
  %.reload171 = load double, ptr %.reg2mem170, align 8
  %.reload169 = load i32, ptr %.reg2mem168, align 4
  %.reload109 = load i32, ptr %.reg2mem100, align 4
  %.reload147 = load ptr, ptr %.reg2mem143, align 4
  %32 = getelementptr inbounds [240 x double], ptr %.reload147, i32 %.reload169, i32 %.reload109
  %33 = load double, ptr %32, align 8, !tbaa !2
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %33, double %.reload171)
  store double %34, ptr %.reg2mem97, align 8
  %35 = add nuw nsw i32 %.reload169, 1
  store i32 %35, ptr %.reg2mem94, align 4
  %.reload96 = load i32, ptr %.reg2mem94, align 4
  %36 = icmp eq i32 %.reload96, 200
  br i1 %36, label %37, label %._crit_edge7, !llvm.loop !13

._crit_edge7:                                     ; preds = %31
  %.reload95 = load i32, ptr %.reg2mem94, align 4
  %.reload99 = load double, ptr %.reg2mem97, align 8
  store i32 %.reload95, ptr %.reg2mem168, align 4
  store double %.reload99, ptr %.reg2mem170, align 8
  br label %31

37:                                               ; preds = %31
  %.reload98 = load double, ptr %.reg2mem97, align 8
  %38 = tail call double @sqrt(double noundef %.reload98) #3
  %.reload108 = load i32, ptr %.reg2mem100, align 4
  %.reload140 = load ptr, ptr %.reg2mem137, align 4
  %39 = getelementptr inbounds [240 x double], ptr %.reload140, i32 %.reload108, i32 %.reload108
  store ptr %39, ptr %.reg2mem91, align 4
  %.reload93 = load ptr, ptr %.reg2mem91, align 4
  store double %38, ptr %.reload93, align 8, !tbaa !2
  store i32 0, ptr %.reg2mem166, align 4
  br label %40

40:                                               ; preds = %._crit_edge8, %37
  %.reload167 = load i32, ptr %.reg2mem166, align 4
  %.reload107 = load i32, ptr %.reg2mem100, align 4
  %.reload146 = load ptr, ptr %.reg2mem143, align 4
  %41 = getelementptr inbounds [240 x double], ptr %.reload146, i32 %.reload167, i32 %.reload107
  %42 = load double, ptr %41, align 8, !tbaa !2
  %.reload92 = load ptr, ptr %.reg2mem91, align 4
  %43 = load double, ptr %.reload92, align 8, !tbaa !2
  %44 = fdiv double %42, %43
  %.reload106 = load i32, ptr %.reg2mem100, align 4
  %.reload134 = load ptr, ptr %.reg2mem130, align 4
  %45 = getelementptr inbounds [240 x double], ptr %.reload134, i32 %.reload167, i32 %.reload106
  store double %44, ptr %45, align 8, !tbaa !2
  %46 = add nuw nsw i32 %.reload167, 1
  store i32 %46, ptr %.reg2mem88, align 4
  %.reload90 = load i32, ptr %.reg2mem88, align 4
  %47 = icmp eq i32 %.reload90, 200
  br i1 %47, label %48, label %._crit_edge8, !llvm.loop !14

._crit_edge8:                                     ; preds = %40
  %.reload89 = load i32, ptr %.reg2mem88, align 4
  store i32 %.reload89, ptr %.reg2mem166, align 4
  br label %40

48:                                               ; preds = %40
  %.reload105 = load i32, ptr %.reg2mem100, align 4
  %49 = add nuw nsw i32 %.reload105, 1
  store i32 %49, ptr %.reg2mem84, align 4
  %.reload104 = load i32, ptr %.reg2mem100, align 4
  %50 = icmp ult i32 %.reload104, 239
  br i1 %50, label %._crit_edge9, label %._crit_edge10

._crit_edge10:                                    ; preds = %48
  br label %28

._crit_edge9:                                     ; preds = %48
  %.reload85 = load i32, ptr %.reg2mem84, align 4
  store i32 %.reload85, ptr %.reg2mem164, align 4
  br label %51

51:                                               ; preds = %._crit_edge15, %._crit_edge9
  %.reload165 = load i32, ptr %.reg2mem164, align 4
  store i32 %.reload165, ptr %.reg2mem79, align 4
  %.reload83 = load i32, ptr %.reg2mem79, align 4
  %.reload103 = load i32, ptr %.reg2mem100, align 4
  %.reload139 = load ptr, ptr %.reg2mem137, align 4
  %52 = getelementptr inbounds [240 x double], ptr %.reload139, i32 %.reload103, i32 %.reload83
  store ptr %52, ptr %.reg2mem75, align 4
  %.reload78 = load ptr, ptr %.reg2mem75, align 4
  store double 0.000000e+00, ptr %.reload78, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem160, align 8
  store i32 0, ptr %.reg2mem162, align 4
  br label %53

53:                                               ; preds = %._crit_edge12, %51
  %.reload163 = load i32, ptr %.reg2mem162, align 4
  %.reload161 = load double, ptr %.reg2mem160, align 8
  %.reload102 = load i32, ptr %.reg2mem100, align 4
  %.reload133 = load ptr, ptr %.reg2mem130, align 4
  %54 = getelementptr inbounds [240 x double], ptr %.reload133, i32 %.reload163, i32 %.reload102
  %55 = load double, ptr %54, align 8, !tbaa !2
  %.reload82 = load i32, ptr %.reg2mem79, align 4
  %.reload145 = load ptr, ptr %.reg2mem143, align 4
  %56 = getelementptr inbounds [240 x double], ptr %.reload145, i32 %.reload163, i32 %.reload82
  %57 = load double, ptr %56, align 8, !tbaa !2
  %58 = tail call double @llvm.fmuladd.f64(double %55, double %57, double %.reload161)
  store double %58, ptr %.reg2mem72, align 8
  %.reload74 = load double, ptr %.reg2mem72, align 8
  %.reload77 = load ptr, ptr %.reg2mem75, align 4
  store double %.reload74, ptr %.reload77, align 8, !tbaa !2
  %59 = add nuw nsw i32 %.reload163, 1
  store i32 %59, ptr %.reg2mem69, align 4
  %.reload71 = load i32, ptr %.reg2mem69, align 4
  %60 = icmp eq i32 %.reload71, 200
  br i1 %60, label %._crit_edge11, label %._crit_edge12, !llvm.loop !15

._crit_edge12:                                    ; preds = %53
  %.reload70 = load i32, ptr %.reg2mem69, align 4
  %.reload73 = load double, ptr %.reg2mem72, align 8
  store double %.reload73, ptr %.reg2mem160, align 8
  store i32 %.reload70, ptr %.reg2mem162, align 4
  br label %53

._crit_edge11:                                    ; preds = %53
  store i32 0, ptr %.reg2mem158, align 4
  br label %61

61:                                               ; preds = %._crit_edge13, %._crit_edge11
  %.reload159 = load i32, ptr %.reg2mem158, align 4
  %.reload81 = load i32, ptr %.reg2mem79, align 4
  %.reload144 = load ptr, ptr %.reg2mem143, align 4
  %62 = getelementptr inbounds [240 x double], ptr %.reload144, i32 %.reload159, i32 %.reload81
  %63 = load double, ptr %62, align 8, !tbaa !2
  %.reload101 = load i32, ptr %.reg2mem100, align 4
  %.reload132 = load ptr, ptr %.reg2mem130, align 4
  %64 = getelementptr inbounds [240 x double], ptr %.reload132, i32 %.reload159, i32 %.reload101
  %65 = load double, ptr %64, align 8, !tbaa !2
  %.reload76 = load ptr, ptr %.reg2mem75, align 4
  %66 = load double, ptr %.reload76, align 8, !tbaa !2
  %67 = fneg double %65
  %68 = tail call double @llvm.fmuladd.f64(double %67, double %66, double %63)
  store double %68, ptr %62, align 8, !tbaa !2
  %69 = add nuw nsw i32 %.reload159, 1
  store i32 %69, ptr %.reg2mem66, align 4
  %.reload68 = load i32, ptr %.reg2mem66, align 4
  %70 = icmp eq i32 %.reload68, 200
  br i1 %70, label %71, label %._crit_edge13, !llvm.loop !16

._crit_edge13:                                    ; preds = %61
  %.reload67 = load i32, ptr %.reg2mem66, align 4
  store i32 %.reload67, ptr %.reg2mem158, align 4
  br label %61

71:                                               ; preds = %61
  %.reload80 = load i32, ptr %.reg2mem79, align 4
  %72 = add nuw nsw i32 %.reload80, 1
  store i32 %72, ptr %.reg2mem63, align 4
  %.reload65 = load i32, ptr %.reg2mem63, align 4
  %73 = icmp eq i32 %.reload65, 240
  br i1 %73, label %._crit_edge14, label %._crit_edge15, !llvm.loop !17

._crit_edge15:                                    ; preds = %71
  %.reload64 = load i32, ptr %.reg2mem63, align 4
  store i32 %.reload64, ptr %.reg2mem164, align 4
  br label %51

._crit_edge14:                                    ; preds = %71
  br label %28

74:                                               ; preds = %28
  %75 = load ptr, ptr @stderr, align 4, !tbaa !18
  store ptr %75, ptr %.reg2mem52, align 4
  %.reload62 = load ptr, ptr %.reg2mem52, align 4
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload62, ptr noundef nonnull @.str) #3
  %.reload61 = load ptr, ptr %.reg2mem52, align 4
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload61, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem156, align 4
  br label %78

78:                                               ; preds = %._crit_edge18, %74
  %.reload157 = load i32, ptr %.reg2mem156, align 4
  store i32 %.reload157, ptr %.reg2mem48, align 4
  %.reload51 = load i32, ptr %.reg2mem48, align 4
  %79 = mul nuw nsw i32 %.reload51, 240
  store i32 %79, ptr %.reg2mem46, align 4
  store i32 0, ptr %.reg2mem154, align 4
  br label %80

80:                                               ; preds = %._crit_edge17, %78
  %.reload155 = load i32, ptr %.reg2mem154, align 4
  store i32 %.reload155, ptr %.reg2mem42, align 4
  %.reload45 = load i32, ptr %.reg2mem42, align 4
  %.reload47 = load i32, ptr %.reg2mem46, align 4
  %81 = add nuw nsw i32 %.reload45, %.reload47
  %82 = urem i32 %81, 20
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %._crit_edge16

._crit_edge16:                                    ; preds = %80
  br label %86

84:                                               ; preds = %80
  %.reload53 = load ptr, ptr %.reg2mem52, align 4
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload53, ptr noundef nonnull @.str.3) #3
  br label %86

86:                                               ; preds = %._crit_edge16, %84
  %.reload44 = load i32, ptr %.reg2mem42, align 4
  %.reload50 = load i32, ptr %.reg2mem48, align 4
  %.reload138 = load ptr, ptr %.reg2mem137, align 4
  %87 = getelementptr inbounds [240 x double], ptr %.reload138, i32 %.reload50, i32 %.reload44
  %88 = load double, ptr %87, align 8, !tbaa !2
  %.reload60 = load ptr, ptr %.reg2mem52, align 4
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload60, ptr noundef nonnull @.str.4, double noundef %88) #3
  %.reload43 = load i32, ptr %.reg2mem42, align 4
  %90 = add nuw nsw i32 %.reload43, 1
  store i32 %90, ptr %.reg2mem39, align 4
  %.reload41 = load i32, ptr %.reg2mem39, align 4
  %91 = icmp eq i32 %.reload41, 240
  br i1 %91, label %92, label %._crit_edge17, !llvm.loop !20

._crit_edge17:                                    ; preds = %86
  %.reload40 = load i32, ptr %.reg2mem39, align 4
  store i32 %.reload40, ptr %.reg2mem154, align 4
  br label %80

92:                                               ; preds = %86
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  %93 = add nuw nsw i32 %.reload49, 1
  store i32 %93, ptr %.reg2mem36, align 4
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %94 = icmp eq i32 %.reload38, 240
  br i1 %94, label %95, label %._crit_edge18, !llvm.loop !21

._crit_edge18:                                    ; preds = %92
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  store i32 %.reload37, ptr %.reg2mem156, align 4
  br label %78

95:                                               ; preds = %92
  %.reload59 = load ptr, ptr %.reg2mem52, align 4
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload59, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload58 = load ptr, ptr %.reg2mem52, align 4
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload58, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #3
  store i32 0, ptr %.reg2mem152, align 4
  br label %98

98:                                               ; preds = %._crit_edge21, %95
  %.reload153 = load i32, ptr %.reg2mem152, align 4
  store i32 %.reload153, ptr %.reg2mem32, align 4
  %.reload35 = load i32, ptr %.reg2mem32, align 4
  %99 = mul nuw nsw i32 %.reload35, 240
  store i32 %99, ptr %.reg2mem30, align 4
  store i32 0, ptr %.reg2mem150, align 4
  br label %100

100:                                              ; preds = %._crit_edge20, %98
  %.reload151 = load i32, ptr %.reg2mem150, align 4
  store i32 %.reload151, ptr %.reg2mem26, align 4
  %.reload29 = load i32, ptr %.reg2mem26, align 4
  %.reload31 = load i32, ptr %.reg2mem30, align 4
  %101 = add nuw nsw i32 %.reload29, %.reload31
  %102 = urem i32 %101, 20
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %._crit_edge19

._crit_edge19:                                    ; preds = %100
  br label %106

104:                                              ; preds = %100
  %.reload54 = load ptr, ptr %.reg2mem52, align 4
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload54, ptr noundef nonnull @.str.3) #3
  br label %106

106:                                              ; preds = %._crit_edge19, %104
  %.reload28 = load i32, ptr %.reg2mem26, align 4
  %.reload34 = load i32, ptr %.reg2mem32, align 4
  %.reload131 = load ptr, ptr %.reg2mem130, align 4
  %107 = getelementptr inbounds [240 x double], ptr %.reload131, i32 %.reload34, i32 %.reload28
  %108 = load double, ptr %107, align 8, !tbaa !2
  %.reload57 = load ptr, ptr %.reg2mem52, align 4
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload57, ptr noundef nonnull @.str.4, double noundef %108) #3
  %.reload27 = load i32, ptr %.reg2mem26, align 4
  %110 = add nuw nsw i32 %.reload27, 1
  store i32 %110, ptr %.reg2mem23, align 4
  %.reload25 = load i32, ptr %.reg2mem23, align 4
  %111 = icmp eq i32 %.reload25, 240
  br i1 %111, label %112, label %._crit_edge20, !llvm.loop !22

._crit_edge20:                                    ; preds = %106
  %.reload24 = load i32, ptr %.reg2mem23, align 4
  store i32 %.reload24, ptr %.reg2mem150, align 4
  br label %100

112:                                              ; preds = %106
  %.reload33 = load i32, ptr %.reg2mem32, align 4
  %113 = add nuw nsw i32 %.reload33, 1
  store i32 %113, ptr %.reg2mem, align 4
  %.reload22 = load i32, ptr %.reg2mem, align 4
  %114 = icmp eq i32 %.reload22, 200
  br i1 %114, label %115, label %._crit_edge21, !llvm.loop !23

._crit_edge21:                                    ; preds = %112
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem152, align 4
  br label %98

115:                                              ; preds = %112
  %.reload56 = load ptr, ptr %.reg2mem52, align 4
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload56, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %.reload55 = load ptr, ptr %.reg2mem52, align 4
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload55, ptr noundef nonnull @.str.7) #3
  %.reload149 = load ptr, ptr %.reg2mem143, align 4
  tail call void @free(ptr noundef %.reload149) #3
  %.reload142 = load ptr, ptr %.reg2mem137, align 4
  tail call void @free(ptr noundef %.reload142) #3
  %.reload136 = load ptr, ptr %.reg2mem130, align 4
  tail call void @free(ptr noundef nonnull %.reload136) #3
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
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7, !8}
