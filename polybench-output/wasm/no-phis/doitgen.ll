; ModuleID = './polybench-output/wasm/no-phis/doitgen.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/doitgen/doitgen.c"
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define hidden void @kernel_doitgen(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem16 = alloca i32, align 4
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem28 = alloca double, align 8
  %.reg2mem31 = alloca ptr, align 4
  %.reg2mem34 = alloca i32, align 4
  %.reg2mem38 = alloca i32, align 4
  %.reg2mem42 = alloca i32, align 4
  %.reg2mem46 = alloca i1, align 1
  %.reg2mem49 = alloca i1, align 1
  %.reg2mem51 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem55 = alloca double, align 8
  %.reg2mem57 = alloca i32, align 4
  %.reg2mem59 = alloca i32, align 4
  %.reg2mem61 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %6
  br label %39

8:                                                ; preds = %6
  %9 = icmp sgt i32 %1, 0
  store i1 %9, ptr %.reg2mem49, align 1
  %10 = icmp sgt i32 %2, 0
  store i1 %10, ptr %.reg2mem46, align 1
  store i32 0, ptr %.reg2mem61, align 4
  br label %11

11:                                               ; preds = %._crit_edge14, %8
  %.reload62 = load i32, ptr %.reg2mem61, align 4
  store i32 %.reload62, ptr %.reg2mem42, align 4
  %.reload50 = load i1, ptr %.reg2mem49, align 1
  br i1 %.reload50, label %._crit_edge1, label %._crit_edge2

._crit_edge2:                                     ; preds = %11
  br label %36

._crit_edge1:                                     ; preds = %11
  store i32 0, ptr %.reg2mem59, align 4
  br label %12

12:                                               ; preds = %._crit_edge12, %._crit_edge1
  %.reload60 = load i32, ptr %.reg2mem59, align 4
  store i32 %.reload60, ptr %.reg2mem38, align 4
  %.reload48 = load i1, ptr %.reg2mem46, align 1
  br i1 %.reload48, label %._crit_edge3, label %._crit_edge4

._crit_edge4:                                     ; preds = %12
  br label %33

._crit_edge3:                                     ; preds = %12
  store i32 0, ptr %.reg2mem57, align 4
  br label %14

13:                                               ; preds = %24
  %.reload47 = load i1, ptr %.reg2mem46, align 1
  br i1 %.reload47, label %._crit_edge5, label %._crit_edge6

._crit_edge6:                                     ; preds = %13
  br label %33

._crit_edge5:                                     ; preds = %13
  store i32 0, ptr %.reg2mem51, align 4
  br label %27

14:                                               ; preds = %._crit_edge8, %._crit_edge3
  %.reload58 = load i32, ptr %.reg2mem57, align 4
  store i32 %.reload58, ptr %.reg2mem34, align 4
  %.reload37 = load i32, ptr %.reg2mem34, align 4
  %15 = getelementptr inbounds double, ptr %5, i32 %.reload37
  store ptr %15, ptr %.reg2mem31, align 4
  %.reload33 = load ptr, ptr %.reg2mem31, align 4
  store double 0.000000e+00, ptr %.reload33, align 8, !tbaa !2
  store i32 0, ptr %.reg2mem53, align 4
  store double 0.000000e+00, ptr %.reg2mem55, align 8
  br label %16

16:                                               ; preds = %._crit_edge7, %14
  %.reload56 = load double, ptr %.reg2mem55, align 8
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  %.reload41 = load i32, ptr %.reg2mem38, align 4
  %.reload45 = load i32, ptr %.reg2mem42, align 4
  %17 = getelementptr inbounds [40 x [60 x double]], ptr %3, i32 %.reload45, i32 %.reload41, i32 %.reload54
  %18 = load double, ptr %17, align 8, !tbaa !2
  %.reload36 = load i32, ptr %.reg2mem34, align 4
  %19 = getelementptr inbounds [60 x double], ptr %4, i32 %.reload54, i32 %.reload36
  %20 = load double, ptr %19, align 8, !tbaa !2
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %.reload56)
  store double %21, ptr %.reg2mem28, align 8
  %.reload30 = load double, ptr %.reg2mem28, align 8
  %.reload32 = load ptr, ptr %.reg2mem31, align 4
  store double %.reload30, ptr %.reload32, align 8, !tbaa !2
  %22 = add nuw nsw i32 %.reload54, 1
  store i32 %22, ptr %.reg2mem25, align 4
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  %23 = icmp eq i32 %.reload26, %2
  br i1 %23, label %24, label %._crit_edge7, !llvm.loop !6

._crit_edge7:                                     ; preds = %16
  %.reload27 = load i32, ptr %.reg2mem25, align 4
  %.reload29 = load double, ptr %.reg2mem28, align 8
  store i32 %.reload27, ptr %.reg2mem53, align 4
  store double %.reload29, ptr %.reg2mem55, align 8
  br label %16

24:                                               ; preds = %16
  %.reload35 = load i32, ptr %.reg2mem34, align 4
  %25 = add nuw nsw i32 %.reload35, 1
  store i32 %25, ptr %.reg2mem22, align 4
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  %26 = icmp eq i32 %.reload23, %2
  br i1 %26, label %13, label %._crit_edge8, !llvm.loop !9

._crit_edge8:                                     ; preds = %24
  %.reload24 = load i32, ptr %.reg2mem22, align 4
  store i32 %.reload24, ptr %.reg2mem57, align 4
  br label %14

27:                                               ; preds = %._crit_edge10, %._crit_edge5
  %.reload52 = load i32, ptr %.reg2mem51, align 4
  %28 = getelementptr inbounds double, ptr %5, i32 %.reload52
  %29 = load double, ptr %28, align 8, !tbaa !2
  %.reload40 = load i32, ptr %.reg2mem38, align 4
  %.reload44 = load i32, ptr %.reg2mem42, align 4
  %30 = getelementptr inbounds [40 x [60 x double]], ptr %3, i32 %.reload44, i32 %.reload40, i32 %.reload52
  store double %29, ptr %30, align 8, !tbaa !2
  %31 = add nuw nsw i32 %.reload52, 1
  store i32 %31, ptr %.reg2mem19, align 4
  %.reload20 = load i32, ptr %.reg2mem19, align 4
  %32 = icmp eq i32 %.reload20, %2
  br i1 %32, label %._crit_edge9, label %._crit_edge10, !llvm.loop !10

._crit_edge10:                                    ; preds = %27
  %.reload21 = load i32, ptr %.reg2mem19, align 4
  store i32 %.reload21, ptr %.reg2mem51, align 4
  br label %27

._crit_edge9:                                     ; preds = %27
  br label %33

33:                                               ; preds = %._crit_edge9, %._crit_edge6, %._crit_edge4
  %.reload39 = load i32, ptr %.reg2mem38, align 4
  %34 = add nuw nsw i32 %.reload39, 1
  store i32 %34, ptr %.reg2mem16, align 4
  %.reload17 = load i32, ptr %.reg2mem16, align 4
  %35 = icmp eq i32 %.reload17, %1
  br i1 %35, label %._crit_edge11, label %._crit_edge12, !llvm.loop !11

._crit_edge12:                                    ; preds = %33
  %.reload18 = load i32, ptr %.reg2mem16, align 4
  store i32 %.reload18, ptr %.reg2mem59, align 4
  br label %12

._crit_edge11:                                    ; preds = %33
  br label %36

36:                                               ; preds = %._crit_edge11, %._crit_edge2
  %.reload43 = load i32, ptr %.reg2mem42, align 4
  %37 = add nuw nsw i32 %.reload43, 1
  store i32 %37, ptr %.reg2mem, align 4
  %.reload = load i32, ptr %.reg2mem, align 4
  %38 = icmp eq i32 %.reload, %0
  br i1 %38, label %._crit_edge13, label %._crit_edge14, !llvm.loop !12

._crit_edge14:                                    ; preds = %36
  %.reload15 = load i32, ptr %.reg2mem, align 4
  store i32 %.reload15, ptr %.reg2mem61, align 4
  br label %11

._crit_edge13:                                    ; preds = %36
  br label %39

39:                                               ; preds = %._crit_edge13, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem18 = alloca i32, align 4
  %.reg2mem21 = alloca i32, align 4
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem28 = alloca i32, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem34 = alloca i32, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem40 = alloca ptr, align 4
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem59 = alloca i32, align 4
  %.reg2mem62 = alloca double, align 8
  %.reg2mem65 = alloca ptr, align 4
  %.reg2mem68 = alloca i32, align 4
  %.reg2mem72 = alloca i32, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem80 = alloca i32, align 4
  %.reg2mem83 = alloca i32, align 4
  %.reg2mem86 = alloca i32, align 4
  %.reg2mem90 = alloca i32, align 4
  %.reg2mem93 = alloca i32, align 4
  %.reg2mem96 = alloca i32, align 4
  %.reg2mem99 = alloca i32, align 4
  %.reg2mem101 = alloca i32, align 4
  %.reg2mem105 = alloca i32, align 4
  %.reg2mem109 = alloca ptr, align 4
  %.reg2mem113 = alloca ptr, align 4
  %.reg2mem117 = alloca ptr, align 4
  %.reg2mem123 = alloca i32, align 4
  %.reg2mem125 = alloca i32, align 4
  %.reg2mem127 = alloca i32, align 4
  %.reg2mem129 = alloca i32, align 4
  %.reg2mem131 = alloca i32, align 4
  %.reg2mem133 = alloca double, align 8
  %.reg2mem135 = alloca i32, align 4
  %.reg2mem137 = alloca i32, align 4
  %.reg2mem139 = alloca i32, align 4
  %.reg2mem141 = alloca i32, align 4
  %.reg2mem143 = alloca i32, align 4
  %.reg2mem145 = alloca i32, align 4
  %.reg2mem147 = alloca i32, align 4
  %.reg2mem149 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 120000, i32 noundef 8) #4
  store ptr %3, ptr %.reg2mem117, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 60, i32 noundef 8) #4
  store ptr %4, ptr %.reg2mem113, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 3600, i32 noundef 8) #4
  store ptr %5, ptr %.reg2mem109, align 4
  store i32 0, ptr %.reg2mem149, align 4
  br label %6

6:                                                ; preds = %._crit_edge3, %2
  %.reload150 = load i32, ptr %.reg2mem149, align 4
  store i32 %.reload150, ptr %.reg2mem105, align 4
  store i32 0, ptr %.reg2mem147, align 4
  br label %7

7:                                                ; preds = %._crit_edge1, %6
  %.reload148 = load i32, ptr %.reg2mem147, align 4
  store i32 %.reload148, ptr %.reg2mem101, align 4
  %.reload104 = load i32, ptr %.reg2mem101, align 4
  %.reload108 = load i32, ptr %.reg2mem105, align 4
  %8 = mul nuw nsw i32 %.reload104, %.reload108
  store i32 %8, ptr %.reg2mem99, align 4
  store i32 0, ptr %.reg2mem145, align 4
  br label %9

9:                                                ; preds = %._crit_edge, %7
  %.reload146 = load i32, ptr %.reg2mem145, align 4
  %.reload100 = load i32, ptr %.reg2mem99, align 4
  %10 = add nuw nsw i32 %.reload146, %.reload100
  %11 = urem i32 %10, 60
  %12 = uitofp nneg i32 %11 to double
  %13 = fdiv double %12, 6.000000e+01
  %.reload103 = load i32, ptr %.reg2mem101, align 4
  %.reload107 = load i32, ptr %.reg2mem105, align 4
  %.reload121 = load ptr, ptr %.reg2mem117, align 4
  %14 = getelementptr inbounds [40 x [60 x double]], ptr %.reload121, i32 %.reload107, i32 %.reload103, i32 %.reload146
  store double %13, ptr %14, align 8, !tbaa !2
  %15 = add nuw nsw i32 %.reload146, 1
  store i32 %15, ptr %.reg2mem96, align 4
  %.reload98 = load i32, ptr %.reg2mem96, align 4
  %16 = icmp eq i32 %.reload98, 60
  br i1 %16, label %17, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %9
  %.reload97 = load i32, ptr %.reg2mem96, align 4
  store i32 %.reload97, ptr %.reg2mem145, align 4
  br label %9

17:                                               ; preds = %9
  %.reload102 = load i32, ptr %.reg2mem101, align 4
  %18 = add nuw nsw i32 %.reload102, 1
  store i32 %18, ptr %.reg2mem93, align 4
  %.reload95 = load i32, ptr %.reg2mem93, align 4
  %19 = icmp eq i32 %.reload95, 40
  br i1 %19, label %20, label %._crit_edge1, !llvm.loop !14

._crit_edge1:                                     ; preds = %17
  %.reload94 = load i32, ptr %.reg2mem93, align 4
  store i32 %.reload94, ptr %.reg2mem147, align 4
  br label %7

20:                                               ; preds = %17
  %.reload106 = load i32, ptr %.reg2mem105, align 4
  %21 = add nuw nsw i32 %.reload106, 1
  store i32 %21, ptr %.reg2mem90, align 4
  %.reload92 = load i32, ptr %.reg2mem90, align 4
  %22 = icmp eq i32 %.reload92, 50
  br i1 %22, label %._crit_edge2, label %._crit_edge3, !llvm.loop !15

._crit_edge3:                                     ; preds = %20
  %.reload91 = load i32, ptr %.reg2mem90, align 4
  store i32 %.reload91, ptr %.reg2mem149, align 4
  br label %6

._crit_edge2:                                     ; preds = %20
  store i32 0, ptr %.reg2mem143, align 4
  br label %23

23:                                               ; preds = %._crit_edge6, %._crit_edge2
  %.reload144 = load i32, ptr %.reg2mem143, align 4
  store i32 %.reload144, ptr %.reg2mem86, align 4
  store i32 0, ptr %.reg2mem141, align 4
  br label %24

24:                                               ; preds = %._crit_edge4, %23
  %.reload142 = load i32, ptr %.reg2mem141, align 4
  %.reload89 = load i32, ptr %.reg2mem86, align 4
  %25 = mul nuw nsw i32 %.reload142, %.reload89
  %26 = urem i32 %25, 60
  %27 = uitofp nneg i32 %26 to double
  %28 = fdiv double %27, 6.000000e+01
  %.reload88 = load i32, ptr %.reg2mem86, align 4
  %.reload111 = load ptr, ptr %.reg2mem109, align 4
  %29 = getelementptr inbounds [60 x double], ptr %.reload111, i32 %.reload88, i32 %.reload142
  store double %28, ptr %29, align 8, !tbaa !2
  %30 = add nuw nsw i32 %.reload142, 1
  store i32 %30, ptr %.reg2mem83, align 4
  %.reload85 = load i32, ptr %.reg2mem83, align 4
  %31 = icmp eq i32 %.reload85, 60
  br i1 %31, label %32, label %._crit_edge4, !llvm.loop !16

._crit_edge4:                                     ; preds = %24
  %.reload84 = load i32, ptr %.reg2mem83, align 4
  store i32 %.reload84, ptr %.reg2mem141, align 4
  br label %24

32:                                               ; preds = %24
  %.reload87 = load i32, ptr %.reg2mem86, align 4
  %33 = add nuw nsw i32 %.reload87, 1
  store i32 %33, ptr %.reg2mem80, align 4
  %.reload82 = load i32, ptr %.reg2mem80, align 4
  %34 = icmp eq i32 %.reload82, 60
  br i1 %34, label %._crit_edge5, label %._crit_edge6, !llvm.loop !17

._crit_edge6:                                     ; preds = %32
  %.reload81 = load i32, ptr %.reg2mem80, align 4
  store i32 %.reload81, ptr %.reg2mem143, align 4
  br label %23

._crit_edge5:                                     ; preds = %32
  store i32 0, ptr %.reg2mem139, align 4
  br label %35

35:                                               ; preds = %._crit_edge12, %._crit_edge5
  %.reload140 = load i32, ptr %.reg2mem139, align 4
  store i32 %.reload140, ptr %.reg2mem76, align 4
  store i32 0, ptr %.reg2mem137, align 4
  br label %36

36:                                               ; preds = %._crit_edge11, %35
  %.reload138 = load i32, ptr %.reg2mem137, align 4
  store i32 %.reload138, ptr %.reg2mem72, align 4
  store i32 0, ptr %.reg2mem135, align 4
  br label %37

37:                                               ; preds = %._crit_edge9, %36
  %.reload136 = load i32, ptr %.reg2mem135, align 4
  store i32 %.reload136, ptr %.reg2mem68, align 4
  %.reload71 = load i32, ptr %.reg2mem68, align 4
  %.reload115 = load ptr, ptr %.reg2mem113, align 4
  %38 = getelementptr inbounds double, ptr %.reload115, i32 %.reload71
  store ptr %38, ptr %.reg2mem65, align 4
  %.reload67 = load ptr, ptr %.reg2mem65, align 4
  store double 0.000000e+00, ptr %.reload67, align 8, !tbaa !2
  store i32 0, ptr %.reg2mem131, align 4
  store double 0.000000e+00, ptr %.reg2mem133, align 8
  br label %39

39:                                               ; preds = %._crit_edge7, %37
  %.reload134 = load double, ptr %.reg2mem133, align 8
  %.reload132 = load i32, ptr %.reg2mem131, align 4
  %.reload75 = load i32, ptr %.reg2mem72, align 4
  %.reload79 = load i32, ptr %.reg2mem76, align 4
  %.reload120 = load ptr, ptr %.reg2mem117, align 4
  %40 = getelementptr inbounds [40 x [60 x double]], ptr %.reload120, i32 %.reload79, i32 %.reload75, i32 %.reload132
  %41 = load double, ptr %40, align 8, !tbaa !2
  %.reload70 = load i32, ptr %.reg2mem68, align 4
  %.reload110 = load ptr, ptr %.reg2mem109, align 4
  %42 = getelementptr inbounds [60 x double], ptr %.reload110, i32 %.reload132, i32 %.reload70
  %43 = load double, ptr %42, align 8, !tbaa !2
  %44 = tail call double @llvm.fmuladd.f64(double %41, double %43, double %.reload134)
  store double %44, ptr %.reg2mem62, align 8
  %.reload64 = load double, ptr %.reg2mem62, align 8
  %.reload66 = load ptr, ptr %.reg2mem65, align 4
  store double %.reload64, ptr %.reload66, align 8, !tbaa !2
  %45 = add nuw nsw i32 %.reload132, 1
  store i32 %45, ptr %.reg2mem59, align 4
  %.reload61 = load i32, ptr %.reg2mem59, align 4
  %46 = icmp eq i32 %.reload61, 60
  br i1 %46, label %47, label %._crit_edge7, !llvm.loop !6

._crit_edge7:                                     ; preds = %39
  %.reload60 = load i32, ptr %.reg2mem59, align 4
  %.reload63 = load double, ptr %.reg2mem62, align 8
  store i32 %.reload60, ptr %.reg2mem131, align 4
  store double %.reload63, ptr %.reg2mem133, align 8
  br label %39

47:                                               ; preds = %39
  %.reload69 = load i32, ptr %.reg2mem68, align 4
  %48 = add nuw nsw i32 %.reload69, 1
  store i32 %48, ptr %.reg2mem56, align 4
  %.reload58 = load i32, ptr %.reg2mem56, align 4
  %49 = icmp eq i32 %.reload58, 60
  br i1 %49, label %._crit_edge8, label %._crit_edge9, !llvm.loop !9

._crit_edge9:                                     ; preds = %47
  %.reload57 = load i32, ptr %.reg2mem56, align 4
  store i32 %.reload57, ptr %.reg2mem135, align 4
  br label %37

._crit_edge8:                                     ; preds = %47
  store i32 0, ptr %.reg2mem129, align 4
  br label %50

50:                                               ; preds = %._crit_edge10, %._crit_edge8
  %.reload130 = load i32, ptr %.reg2mem129, align 4
  %.reload114 = load ptr, ptr %.reg2mem113, align 4
  %51 = getelementptr inbounds double, ptr %.reload114, i32 %.reload130
  %52 = load double, ptr %51, align 8, !tbaa !2
  %.reload74 = load i32, ptr %.reg2mem72, align 4
  %.reload78 = load i32, ptr %.reg2mem76, align 4
  %.reload119 = load ptr, ptr %.reg2mem117, align 4
  %53 = getelementptr inbounds [40 x [60 x double]], ptr %.reload119, i32 %.reload78, i32 %.reload74, i32 %.reload130
  store double %52, ptr %53, align 8, !tbaa !2
  %54 = add nuw nsw i32 %.reload130, 1
  store i32 %54, ptr %.reg2mem53, align 4
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %55 = icmp eq i32 %.reload55, 60
  br i1 %55, label %56, label %._crit_edge10, !llvm.loop !10

._crit_edge10:                                    ; preds = %50
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  store i32 %.reload54, ptr %.reg2mem129, align 4
  br label %50

56:                                               ; preds = %50
  %.reload73 = load i32, ptr %.reg2mem72, align 4
  %57 = add nuw nsw i32 %.reload73, 1
  store i32 %57, ptr %.reg2mem50, align 4
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %58 = icmp eq i32 %.reload52, 40
  br i1 %58, label %59, label %._crit_edge11, !llvm.loop !11

._crit_edge11:                                    ; preds = %56
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  store i32 %.reload51, ptr %.reg2mem137, align 4
  br label %36

59:                                               ; preds = %56
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  %60 = add nuw nsw i32 %.reload77, 1
  store i32 %60, ptr %.reg2mem47, align 4
  %.reload49 = load i32, ptr %.reg2mem47, align 4
  %61 = icmp eq i32 %.reload49, 50
  br i1 %61, label %62, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %59
  %.reload48 = load i32, ptr %.reg2mem47, align 4
  store i32 %.reload48, ptr %.reg2mem139, align 4
  br label %35

62:                                               ; preds = %59
  %63 = load ptr, ptr @stderr, align 4, !tbaa !18
  store ptr %63, ptr %.reg2mem40, align 4
  %.reload46 = load ptr, ptr %.reg2mem40, align 4
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload46, ptr noundef nonnull @.str) #4
  %.reload45 = load ptr, ptr %.reg2mem40, align 4
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload45, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i32 0, ptr %.reg2mem127, align 4
  br label %66

66:                                               ; preds = %._crit_edge16, %62
  %.reload128 = load i32, ptr %.reg2mem127, align 4
  store i32 %.reload128, ptr %.reg2mem36, align 4
  %.reload39 = load i32, ptr %.reg2mem36, align 4
  %67 = mul nuw nsw i32 %.reload39, 2400
  store i32 %67, ptr %.reg2mem34, align 4
  store i32 0, ptr %.reg2mem125, align 4
  br label %68

68:                                               ; preds = %._crit_edge15, %66
  %.reload126 = load i32, ptr %.reg2mem125, align 4
  store i32 %.reload126, ptr %.reg2mem30, align 4
  %.reload33 = load i32, ptr %.reg2mem30, align 4
  %69 = mul nuw nsw i32 %.reload33, 60
  %.reload35 = load i32, ptr %.reg2mem34, align 4
  %70 = add nuw nsw i32 %69, %.reload35
  store i32 %70, ptr %.reg2mem28, align 4
  store i32 0, ptr %.reg2mem123, align 4
  br label %71

71:                                               ; preds = %._crit_edge14, %68
  %.reload124 = load i32, ptr %.reg2mem123, align 4
  store i32 %.reload124, ptr %.reg2mem24, align 4
  %.reload27 = load i32, ptr %.reg2mem24, align 4
  %.reload29 = load i32, ptr %.reg2mem28, align 4
  %72 = add nuw nsw i32 %.reload29, %.reload27
  %73 = urem i32 %72, 20
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %._crit_edge13

._crit_edge13:                                    ; preds = %71
  br label %77

75:                                               ; preds = %71
  %.reload41 = load ptr, ptr %.reg2mem40, align 4
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload41, ptr noundef nonnull @.str.3) #4
  br label %77

77:                                               ; preds = %._crit_edge13, %75
  %.reload26 = load i32, ptr %.reg2mem24, align 4
  %.reload32 = load i32, ptr %.reg2mem30, align 4
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %.reload118 = load ptr, ptr %.reg2mem117, align 4
  %78 = getelementptr inbounds [40 x [60 x double]], ptr %.reload118, i32 %.reload38, i32 %.reload32, i32 %.reload26
  %79 = load double, ptr %78, align 8, !tbaa !2
  %.reload44 = load ptr, ptr %.reg2mem40, align 4
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload44, ptr noundef nonnull @.str.4, double noundef %79) #4
  %.reload25 = load i32, ptr %.reg2mem24, align 4
  %81 = add nuw nsw i32 %.reload25, 1
  store i32 %81, ptr %.reg2mem21, align 4
  %.reload23 = load i32, ptr %.reg2mem21, align 4
  %82 = icmp eq i32 %.reload23, 60
  br i1 %82, label %83, label %._crit_edge14, !llvm.loop !20

._crit_edge14:                                    ; preds = %77
  %.reload22 = load i32, ptr %.reg2mem21, align 4
  store i32 %.reload22, ptr %.reg2mem123, align 4
  br label %71

83:                                               ; preds = %77
  %.reload31 = load i32, ptr %.reg2mem30, align 4
  %84 = add nuw nsw i32 %.reload31, 1
  store i32 %84, ptr %.reg2mem18, align 4
  %.reload20 = load i32, ptr %.reg2mem18, align 4
  %85 = icmp eq i32 %.reload20, 40
  br i1 %85, label %86, label %._crit_edge15, !llvm.loop !21

._crit_edge15:                                    ; preds = %83
  %.reload19 = load i32, ptr %.reg2mem18, align 4
  store i32 %.reload19, ptr %.reg2mem125, align 4
  br label %68

86:                                               ; preds = %83
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  %87 = add nuw nsw i32 %.reload37, 1
  store i32 %87, ptr %.reg2mem, align 4
  %.reload17 = load i32, ptr %.reg2mem, align 4
  %88 = icmp eq i32 %.reload17, 50
  br i1 %88, label %89, label %._crit_edge16, !llvm.loop !22

._crit_edge16:                                    ; preds = %86
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem127, align 4
  br label %66

89:                                               ; preds = %86
  %.reload43 = load ptr, ptr %.reg2mem40, align 4
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload43, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %.reload42 = load ptr, ptr %.reg2mem40, align 4
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload42, ptr noundef nonnull @.str.6) #4
  %.reload122 = load ptr, ptr %.reg2mem117, align 4
  tail call void @free(ptr noundef nonnull %.reload122) #4
  %.reload116 = load ptr, ptr %.reg2mem113, align 4
  tail call void @free(ptr noundef %.reload116) #4
  %.reload112 = load ptr, ptr %.reg2mem109, align 4
  tail call void @free(ptr noundef %.reload112) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @free(ptr noundef) local_unnamed_addr #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
