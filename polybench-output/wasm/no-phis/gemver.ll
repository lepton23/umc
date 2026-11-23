; ModuleID = './polybench-output/wasm/no-phis/gemver.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/gemver/gemver.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem16 = alloca i32, align 4
  %.reg2mem20 = alloca ptr, align 4
  %.reg2mem27 = alloca i32, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem33 = alloca double, align 8
  %.reg2mem36 = alloca double, align 8
  %.reg2mem38 = alloca ptr, align 4
  %.reg2mem41 = alloca i32, align 4
  %.reg2mem45 = alloca i32, align 4
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem51 = alloca i32, align 4
  %.reg2mem54 = alloca double, align 8
  %.reg2mem57 = alloca double, align 8
  %.reg2mem59 = alloca ptr, align 4
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem66 = alloca i32, align 4
  %.reg2mem69 = alloca i32, align 4
  %.reg2mem72 = alloca ptr, align 4
  %.reg2mem74 = alloca ptr, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem81 = alloca i32, align 4
  %.reg2mem84 = alloca i32, align 4
  %.reg2mem88 = alloca i32, align 4
  %.reg2mem101 = alloca ptr, align 4
  %.reg2mem105 = alloca ptr, align 4
  %.reg2mem109 = alloca ptr, align 4
  %.reg2mem115 = alloca ptr, align 4
  %.reg2mem120 = alloca ptr, align 4
  %.reg2mem124 = alloca ptr, align 4
  %.reg2mem128 = alloca ptr, align 4
  %.reg2mem132 = alloca ptr, align 4
  %.reg2mem136 = alloca ptr, align 4
  %.reg2mem142 = alloca i32, align 4
  %.reg2mem144 = alloca double, align 8
  %.reg2mem146 = alloca i32, align 4
  %.reg2mem148 = alloca i32, align 4
  %.reg2mem150 = alloca i32, align 4
  %.reg2mem152 = alloca double, align 8
  %.reg2mem154 = alloca i32, align 4
  %.reg2mem156 = alloca i32, align 4
  %.reg2mem158 = alloca i32, align 4
  %.reg2mem160 = alloca i32, align 4
  %.reg2mem162 = alloca i32, align 4
  %.reg2mem164 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem136, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem132, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem128, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem124, align 4
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %7, ptr %.reg2mem120, align 4
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %8, ptr %.reg2mem115, align 4
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %9, ptr %.reg2mem109, align 4
  %10 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %10, ptr %.reg2mem105, align 4
  %11 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %11, ptr %.reg2mem101, align 4
  store i32 0, ptr %.reg2mem164, align 4
  br label %14

12:                                               ; preds = %32
  %.reload86 = load i32, ptr %.reg2mem84, align 4
  %13 = icmp eq i32 %.reload86, 400
  br i1 %13, label %._crit_edge, label %._crit_edge1, !llvm.loop !2

._crit_edge1:                                     ; preds = %12
  %.reload85 = load i32, ptr %.reg2mem84, align 4
  store i32 %.reload85, ptr %.reg2mem164, align 4
  br label %14

._crit_edge:                                      ; preds = %12
  store i32 0, ptr %.reg2mem160, align 4
  br label %40

14:                                               ; preds = %._crit_edge1, %2
  %.reload165 = load i32, ptr %.reg2mem164, align 4
  store i32 %.reload165, ptr %.reg2mem88, align 4
  %.reload100 = load i32, ptr %.reg2mem88, align 4
  %15 = uitofp nneg i32 %.reload100 to double
  %.reload99 = load i32, ptr %.reg2mem88, align 4
  %.reload134 = load ptr, ptr %.reg2mem132, align 4
  %16 = getelementptr inbounds double, ptr %.reload134, i32 %.reload99
  store double %15, ptr %16, align 8, !tbaa !5
  %.reload98 = load i32, ptr %.reg2mem88, align 4
  %17 = add nuw nsw i32 %.reload98, 1
  store i32 %17, ptr %.reg2mem84, align 4
  %.reload87 = load i32, ptr %.reg2mem84, align 4
  %18 = uitofp nneg i32 %.reload87 to double
  %19 = fdiv double %18, 4.000000e+02
  %20 = fmul double %19, 5.000000e-01
  %.reload97 = load i32, ptr %.reg2mem88, align 4
  %.reload126 = load ptr, ptr %.reg2mem124, align 4
  %21 = getelementptr inbounds double, ptr %.reload126, i32 %.reload97
  store double %20, ptr %21, align 8, !tbaa !5
  %22 = fmul double %19, 2.500000e-01
  %.reload96 = load i32, ptr %.reg2mem88, align 4
  %.reload130 = load ptr, ptr %.reg2mem128, align 4
  %23 = getelementptr inbounds double, ptr %.reload130, i32 %.reload96
  store double %22, ptr %23, align 8, !tbaa !5
  %24 = fdiv double %19, 6.000000e+00
  %.reload95 = load i32, ptr %.reg2mem88, align 4
  %.reload122 = load ptr, ptr %.reg2mem120, align 4
  %25 = getelementptr inbounds double, ptr %.reload122, i32 %.reload95
  store double %24, ptr %25, align 8, !tbaa !5
  %26 = fmul double %19, 1.250000e-01
  %.reload94 = load i32, ptr %.reg2mem88, align 4
  %.reload107 = load ptr, ptr %.reg2mem105, align 4
  %27 = getelementptr inbounds double, ptr %.reload107, i32 %.reload94
  store double %26, ptr %27, align 8, !tbaa !5
  %28 = fdiv double %19, 9.000000e+00
  %.reload93 = load i32, ptr %.reg2mem88, align 4
  %.reload103 = load ptr, ptr %.reg2mem101, align 4
  %29 = getelementptr inbounds double, ptr %.reload103, i32 %.reload93
  store double %28, ptr %29, align 8, !tbaa !5
  %.reload92 = load i32, ptr %.reg2mem88, align 4
  %.reload113 = load ptr, ptr %.reg2mem109, align 4
  %30 = getelementptr inbounds double, ptr %.reload113, i32 %.reload92
  store double 0.000000e+00, ptr %30, align 8, !tbaa !5
  %.reload91 = load i32, ptr %.reg2mem88, align 4
  %.reload118 = load ptr, ptr %.reg2mem115, align 4
  %31 = getelementptr inbounds double, ptr %.reload118, i32 %.reload91
  store double 0.000000e+00, ptr %31, align 8, !tbaa !5
  store i32 0, ptr %.reg2mem162, align 4
  br label %32

32:                                               ; preds = %._crit_edge2, %14
  %.reload163 = load i32, ptr %.reg2mem162, align 4
  %.reload90 = load i32, ptr %.reg2mem88, align 4
  %33 = mul nuw nsw i32 %.reload163, %.reload90
  %34 = urem i32 %33, 400
  %35 = uitofp nneg i32 %34 to double
  %36 = fdiv double %35, 4.000000e+02
  %.reload89 = load i32, ptr %.reg2mem88, align 4
  %.reload140 = load ptr, ptr %.reg2mem136, align 4
  %37 = getelementptr inbounds [400 x double], ptr %.reload140, i32 %.reload89, i32 %.reload163
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = add nuw nsw i32 %.reload163, 1
  store i32 %38, ptr %.reg2mem81, align 4
  %.reload83 = load i32, ptr %.reg2mem81, align 4
  %39 = icmp eq i32 %.reload83, 400
  br i1 %39, label %12, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %32
  %.reload82 = load i32, ptr %.reg2mem81, align 4
  store i32 %.reload82, ptr %.reg2mem162, align 4
  br label %32

40:                                               ; preds = %._crit_edge5, %._crit_edge
  %.reload161 = load i32, ptr %.reg2mem160, align 4
  store i32 %.reload161, ptr %.reg2mem76, align 4
  %.reload80 = load i32, ptr %.reg2mem76, align 4
  %.reload133 = load ptr, ptr %.reg2mem132, align 4
  %41 = getelementptr inbounds double, ptr %.reload133, i32 %.reload80
  store ptr %41, ptr %.reg2mem74, align 4
  %.reload79 = load i32, ptr %.reg2mem76, align 4
  %.reload125 = load ptr, ptr %.reg2mem124, align 4
  %42 = getelementptr inbounds double, ptr %.reload125, i32 %.reload79
  store ptr %42, ptr %.reg2mem72, align 4
  store i32 0, ptr %.reg2mem158, align 4
  br label %43

43:                                               ; preds = %._crit_edge3, %40
  %.reload159 = load i32, ptr %.reg2mem158, align 4
  %.reload78 = load i32, ptr %.reg2mem76, align 4
  %.reload139 = load ptr, ptr %.reg2mem136, align 4
  %44 = getelementptr inbounds [400 x double], ptr %.reload139, i32 %.reload78, i32 %.reload159
  %45 = load double, ptr %44, align 8, !tbaa !5
  %.reload75 = load ptr, ptr %.reg2mem74, align 4
  %46 = load double, ptr %.reload75, align 8, !tbaa !5
  %.reload129 = load ptr, ptr %.reg2mem128, align 4
  %47 = getelementptr inbounds double, ptr %.reload129, i32 %.reload159
  %48 = load double, ptr %47, align 8, !tbaa !5
  %49 = tail call double @llvm.fmuladd.f64(double %46, double %48, double %45)
  %.reload73 = load ptr, ptr %.reg2mem72, align 4
  %50 = load double, ptr %.reload73, align 8, !tbaa !5
  %.reload121 = load ptr, ptr %.reg2mem120, align 4
  %51 = getelementptr inbounds double, ptr %.reload121, i32 %.reload159
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = tail call double @llvm.fmuladd.f64(double %50, double %52, double %49)
  store double %53, ptr %44, align 8, !tbaa !5
  %54 = add nuw nsw i32 %.reload159, 1
  store i32 %54, ptr %.reg2mem69, align 4
  %.reload71 = load i32, ptr %.reg2mem69, align 4
  %55 = icmp eq i32 %.reload71, 400
  br i1 %55, label %56, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %43
  %.reload70 = load i32, ptr %.reg2mem69, align 4
  store i32 %.reload70, ptr %.reg2mem158, align 4
  br label %43

56:                                               ; preds = %43
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  %57 = add nuw nsw i32 %.reload77, 1
  store i32 %57, ptr %.reg2mem66, align 4
  %.reload68 = load i32, ptr %.reg2mem66, align 4
  %58 = icmp eq i32 %.reload68, 400
  br i1 %58, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %56
  %.reload67 = load i32, ptr %.reg2mem66, align 4
  store i32 %.reload67, ptr %.reg2mem160, align 4
  br label %40

._crit_edge4:                                     ; preds = %56
  store i32 0, ptr %.reg2mem156, align 4
  br label %59

59:                                               ; preds = %._crit_edge8, %._crit_edge4
  %.reload157 = load i32, ptr %.reg2mem156, align 4
  store i32 %.reload157, ptr %.reg2mem62, align 4
  %.reload65 = load i32, ptr %.reg2mem62, align 4
  %.reload112 = load ptr, ptr %.reg2mem109, align 4
  %60 = getelementptr inbounds double, ptr %.reload112, i32 %.reload65
  store ptr %60, ptr %.reg2mem59, align 4
  %.reload61 = load ptr, ptr %.reg2mem59, align 4
  %61 = load double, ptr %.reload61, align 8, !tbaa !5
  store double %61, ptr %.reg2mem57, align 8
  %.reload58 = load double, ptr %.reg2mem57, align 8
  store double %.reload58, ptr %.reg2mem152, align 8
  store i32 0, ptr %.reg2mem154, align 4
  br label %62

62:                                               ; preds = %._crit_edge6, %59
  %.reload155 = load i32, ptr %.reg2mem154, align 4
  %.reload153 = load double, ptr %.reg2mem152, align 8
  %.reload64 = load i32, ptr %.reg2mem62, align 4
  %.reload138 = load ptr, ptr %.reg2mem136, align 4
  %63 = getelementptr inbounds [400 x double], ptr %.reload138, i32 %.reload155, i32 %.reload64
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = fmul double %64, 1.200000e+00
  %.reload106 = load ptr, ptr %.reg2mem105, align 4
  %66 = getelementptr inbounds double, ptr %.reload106, i32 %.reload155
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = tail call double @llvm.fmuladd.f64(double %65, double %67, double %.reload153)
  store double %68, ptr %.reg2mem54, align 8
  %.reload56 = load double, ptr %.reg2mem54, align 8
  %.reload60 = load ptr, ptr %.reg2mem59, align 4
  store double %.reload56, ptr %.reload60, align 8, !tbaa !5
  %69 = add nuw nsw i32 %.reload155, 1
  store i32 %69, ptr %.reg2mem51, align 4
  %.reload53 = load i32, ptr %.reg2mem51, align 4
  %70 = icmp eq i32 %.reload53, 400
  br i1 %70, label %71, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %62
  %.reload52 = load i32, ptr %.reg2mem51, align 4
  %.reload55 = load double, ptr %.reg2mem54, align 8
  store double %.reload55, ptr %.reg2mem152, align 8
  store i32 %.reload52, ptr %.reg2mem154, align 4
  br label %62

71:                                               ; preds = %62
  %.reload63 = load i32, ptr %.reg2mem62, align 4
  %72 = add nuw nsw i32 %.reload63, 1
  store i32 %72, ptr %.reg2mem48, align 4
  %.reload50 = load i32, ptr %.reg2mem48, align 4
  %73 = icmp eq i32 %.reload50, 400
  br i1 %73, label %._crit_edge7, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %71
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  store i32 %.reload49, ptr %.reg2mem156, align 4
  br label %59

._crit_edge7:                                     ; preds = %71
  store i32 0, ptr %.reg2mem150, align 4
  br label %74

74:                                               ; preds = %._crit_edge10, %._crit_edge7
  %.reload151 = load i32, ptr %.reg2mem150, align 4
  %.reload111 = load ptr, ptr %.reg2mem109, align 4
  %75 = getelementptr inbounds double, ptr %.reload111, i32 %.reload151
  %76 = load double, ptr %75, align 8, !tbaa !5
  %.reload102 = load ptr, ptr %.reg2mem101, align 4
  %77 = getelementptr inbounds double, ptr %.reload102, i32 %.reload151
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = fadd double %76, %78
  store double %79, ptr %75, align 8, !tbaa !5
  %80 = add nuw nsw i32 %.reload151, 1
  store i32 %80, ptr %.reg2mem45, align 4
  %.reload47 = load i32, ptr %.reg2mem45, align 4
  %81 = icmp eq i32 %.reload47, 400
  br i1 %81, label %._crit_edge9, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %74
  %.reload46 = load i32, ptr %.reg2mem45, align 4
  store i32 %.reload46, ptr %.reg2mem150, align 4
  br label %74

._crit_edge9:                                     ; preds = %74
  store i32 0, ptr %.reg2mem148, align 4
  br label %82

82:                                               ; preds = %._crit_edge12, %._crit_edge9
  %.reload149 = load i32, ptr %.reg2mem148, align 4
  store i32 %.reload149, ptr %.reg2mem41, align 4
  %.reload44 = load i32, ptr %.reg2mem41, align 4
  %.reload117 = load ptr, ptr %.reg2mem115, align 4
  %83 = getelementptr inbounds double, ptr %.reload117, i32 %.reload44
  store ptr %83, ptr %.reg2mem38, align 4
  %.reload40 = load ptr, ptr %.reg2mem38, align 4
  %84 = load double, ptr %.reload40, align 8, !tbaa !5
  store double %84, ptr %.reg2mem36, align 8
  %.reload37 = load double, ptr %.reg2mem36, align 8
  store double %.reload37, ptr %.reg2mem144, align 8
  store i32 0, ptr %.reg2mem146, align 4
  br label %85

85:                                               ; preds = %._crit_edge11, %82
  %.reload147 = load i32, ptr %.reg2mem146, align 4
  %.reload145 = load double, ptr %.reg2mem144, align 8
  %.reload43 = load i32, ptr %.reg2mem41, align 4
  %.reload137 = load ptr, ptr %.reg2mem136, align 4
  %86 = getelementptr inbounds [400 x double], ptr %.reload137, i32 %.reload43, i32 %.reload147
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = fmul double %87, 1.500000e+00
  %.reload110 = load ptr, ptr %.reg2mem109, align 4
  %89 = getelementptr inbounds double, ptr %.reload110, i32 %.reload147
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = tail call double @llvm.fmuladd.f64(double %88, double %90, double %.reload145)
  store double %91, ptr %.reg2mem33, align 8
  %.reload35 = load double, ptr %.reg2mem33, align 8
  %.reload39 = load ptr, ptr %.reg2mem38, align 4
  store double %.reload35, ptr %.reload39, align 8, !tbaa !5
  %92 = add nuw nsw i32 %.reload147, 1
  store i32 %92, ptr %.reg2mem30, align 4
  %.reload32 = load i32, ptr %.reg2mem30, align 4
  %93 = icmp eq i32 %.reload32, 400
  br i1 %93, label %94, label %._crit_edge11, !llvm.loop !15

._crit_edge11:                                    ; preds = %85
  %.reload31 = load i32, ptr %.reg2mem30, align 4
  %.reload34 = load double, ptr %.reg2mem33, align 8
  store double %.reload34, ptr %.reg2mem144, align 8
  store i32 %.reload31, ptr %.reg2mem146, align 4
  br label %85

94:                                               ; preds = %85
  %.reload42 = load i32, ptr %.reg2mem41, align 4
  %95 = add nuw nsw i32 %.reload42, 1
  store i32 %95, ptr %.reg2mem27, align 4
  %.reload29 = load i32, ptr %.reg2mem27, align 4
  %96 = icmp eq i32 %.reload29, 400
  br i1 %96, label %97, label %._crit_edge12, !llvm.loop !16

._crit_edge12:                                    ; preds = %94
  %.reload28 = load i32, ptr %.reg2mem27, align 4
  store i32 %.reload28, ptr %.reg2mem148, align 4
  br label %82

97:                                               ; preds = %94
  %98 = load ptr, ptr @stderr, align 4, !tbaa !17
  store ptr %98, ptr %.reg2mem20, align 4
  %.reload26 = load ptr, ptr %.reg2mem20, align 4
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload26, ptr noundef nonnull @.str) #3
  %.reload25 = load ptr, ptr %.reg2mem20, align 4
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem142, align 4
  br label %101

101:                                              ; preds = %._crit_edge14, %97
  %.reload143 = load i32, ptr %.reg2mem142, align 4
  store i32 %.reload143, ptr %.reg2mem16, align 4
  %.reload19 = load i32, ptr %.reg2mem16, align 4
  %102 = trunc nuw i32 %.reload19 to i16
  %103 = urem i16 %102, 20
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %._crit_edge13

._crit_edge13:                                    ; preds = %101
  br label %107

105:                                              ; preds = %101
  %.reload21 = load ptr, ptr %.reg2mem20, align 4
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload21, ptr noundef nonnull @.str.3) #3
  br label %107

107:                                              ; preds = %._crit_edge13, %105
  %.reload18 = load i32, ptr %.reg2mem16, align 4
  %.reload116 = load ptr, ptr %.reg2mem115, align 4
  %108 = getelementptr inbounds double, ptr %.reload116, i32 %.reload18
  %109 = load double, ptr %108, align 8, !tbaa !5
  %.reload24 = load ptr, ptr %.reg2mem20, align 4
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload24, ptr noundef nonnull @.str.4, double noundef %109) #3
  %.reload17 = load i32, ptr %.reg2mem16, align 4
  %111 = add nuw nsw i32 %.reload17, 1
  store i32 %111, ptr %.reg2mem, align 4
  %.reload15 = load i32, ptr %.reg2mem, align 4
  %112 = icmp eq i32 %.reload15, 400
  br i1 %112, label %113, label %._crit_edge14, !llvm.loop !19

._crit_edge14:                                    ; preds = %107
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem142, align 4
  br label %101

113:                                              ; preds = %107
  %.reload23 = load ptr, ptr %.reg2mem20, align 4
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload22 = load ptr, ptr %.reg2mem20, align 4
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload22, ptr noundef nonnull @.str.6) #3
  %.reload141 = load ptr, ptr %.reg2mem136, align 4
  tail call void @free(ptr noundef %.reload141) #3
  %.reload135 = load ptr, ptr %.reg2mem132, align 4
  tail call void @free(ptr noundef %.reload135) #3
  %.reload131 = load ptr, ptr %.reg2mem128, align 4
  tail call void @free(ptr noundef %.reload131) #3
  %.reload127 = load ptr, ptr %.reg2mem124, align 4
  tail call void @free(ptr noundef %.reload127) #3
  %.reload123 = load ptr, ptr %.reg2mem120, align 4
  tail call void @free(ptr noundef %.reload123) #3
  %.reload119 = load ptr, ptr %.reg2mem115, align 4
  tail call void @free(ptr noundef nonnull %.reload119) #3
  %.reload114 = load ptr, ptr %.reg2mem109, align 4
  tail call void @free(ptr noundef %.reload114) #3
  %.reload108 = load ptr, ptr %.reg2mem105, align 4
  tail call void @free(ptr noundef %.reload108) #3
  %.reload104 = load ptr, ptr %.reg2mem101, align 4
  tail call void @free(ptr noundef %.reload104) #3
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
!2 = distinct !{!2, !3, !4}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.unroll.disable"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !3, !4}
!10 = distinct !{!10, !3, !4}
!11 = distinct !{!11, !3, !4}
!12 = distinct !{!12, !3, !4}
!13 = distinct !{!13, !3, !4}
!14 = distinct !{!14, !3, !4}
!15 = distinct !{!15, !3, !4}
!16 = distinct !{!16, !3, !4}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !3, !4}
