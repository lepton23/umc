; ModuleID = './polybench-output/wasm/no-phis/jacobi-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-2d/jacobi-2d.c"
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
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem16 = alloca i32, align 4
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem26 = alloca ptr, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem43 = alloca ptr, align 4
  %.reg2mem45 = alloca ptr, align 4
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem54 = alloca i32, align 4
  %.reg2mem57 = alloca i32, align 4
  %.reg2mem61 = alloca ptr, align 4
  %.reg2mem63 = alloca ptr, align 4
  %.reg2mem65 = alloca i32, align 4
  %.reg2mem72 = alloca i32, align 4
  %.reg2mem74 = alloca i32, align 4
  %.reg2mem77 = alloca i32, align 4
  %.reg2mem80 = alloca double, align 8
  %.reg2mem83 = alloca i32, align 4
  %.reg2mem88 = alloca ptr, align 4
  %.reg2mem96 = alloca ptr, align 4
  %.reg2mem105 = alloca i32, align 4
  %.reg2mem107 = alloca i32, align 4
  %.reg2mem109 = alloca i32, align 4
  %.reg2mem111 = alloca i32, align 4
  %.reg2mem113 = alloca i32, align 4
  %.reg2mem115 = alloca i32, align 4
  %.reg2mem117 = alloca i32, align 4
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem121 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem96, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem88, align 4
  store i32 0, ptr %.reg2mem121, align 4
  br label %5

5:                                                ; preds = %._crit_edge2, %2
  %.reload122 = load i32, ptr %.reg2mem121, align 4
  store i32 %.reload122, ptr %.reg2mem83, align 4
  %.reload87 = load i32, ptr %.reg2mem83, align 4
  %6 = uitofp nneg i32 %.reload87 to double
  store double %6, ptr %.reg2mem80, align 8
  store i32 0, ptr %.reg2mem119, align 4
  br label %7

7:                                                ; preds = %._crit_edge, %5
  %.reload120 = load i32, ptr %.reg2mem119, align 4
  %8 = add nuw nsw i32 %.reload120, 2
  %9 = uitofp nneg i32 %8 to double
  %.reload82 = load double, ptr %.reg2mem80, align 8
  %10 = tail call double @llvm.fmuladd.f64(double %.reload82, double %9, double 2.000000e+00)
  %11 = fdiv double %10, 2.500000e+02
  %.reload86 = load i32, ptr %.reg2mem83, align 4
  %.reload103 = load ptr, ptr %.reg2mem96, align 4
  %12 = getelementptr inbounds [250 x double], ptr %.reload103, i32 %.reload86, i32 %.reload120
  store double %11, ptr %12, align 8, !tbaa !2
  %13 = add nuw nsw i32 %.reload120, 3
  %14 = uitofp nneg i32 %13 to double
  %.reload81 = load double, ptr %.reg2mem80, align 8
  %15 = tail call double @llvm.fmuladd.f64(double %.reload81, double %14, double 3.000000e+00)
  %16 = fdiv double %15, 2.500000e+02
  %.reload85 = load i32, ptr %.reg2mem83, align 4
  %.reload94 = load ptr, ptr %.reg2mem88, align 4
  %17 = getelementptr inbounds [250 x double], ptr %.reload94, i32 %.reload85, i32 %.reload120
  store double %16, ptr %17, align 8, !tbaa !2
  %18 = add nuw nsw i32 %.reload120, 1
  store i32 %18, ptr %.reg2mem77, align 4
  %.reload79 = load i32, ptr %.reg2mem77, align 4
  %19 = icmp eq i32 %.reload79, 250
  br i1 %19, label %20, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %7
  %.reload78 = load i32, ptr %.reg2mem77, align 4
  store i32 %.reload78, ptr %.reg2mem119, align 4
  br label %7

20:                                               ; preds = %7
  %.reload84 = load i32, ptr %.reg2mem83, align 4
  %21 = add nuw nsw i32 %.reload84, 1
  store i32 %21, ptr %.reg2mem74, align 4
  %.reload76 = load i32, ptr %.reg2mem74, align 4
  %22 = icmp eq i32 %.reload76, 250
  br i1 %22, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %20
  %.reload75 = load i32, ptr %.reg2mem74, align 4
  store i32 %.reload75, ptr %.reg2mem121, align 4
  br label %5

._crit_edge1:                                     ; preds = %20
  store i32 0, ptr %.reg2mem117, align 4
  br label %23

23:                                               ; preds = %._crit_edge8, %._crit_edge1
  %.reload118 = load i32, ptr %.reg2mem117, align 4
  store i32 %.reload118, ptr %.reg2mem72, align 4
  store i32 1, ptr %.reg2mem115, align 4
  br label %24

24:                                               ; preds = %._crit_edge5, %23
  %.reload116 = load i32, ptr %.reg2mem115, align 4
  store i32 %.reload116, ptr %.reg2mem65, align 4
  %.reload71 = load i32, ptr %.reg2mem65, align 4
  %.reload102 = load ptr, ptr %.reg2mem96, align 4
  %25 = getelementptr inbounds [250 x double], ptr %.reload102, i32 %.reload71
  %26 = getelementptr inbounds i8, ptr %25, i32 2000
  store ptr %26, ptr %.reg2mem63, align 4
  %27 = getelementptr i8, ptr %25, i32 -2000
  store ptr %27, ptr %.reg2mem61, align 4
  store i32 1, ptr %.reg2mem113, align 4
  br label %28

28:                                               ; preds = %._crit_edge3, %24
  %.reload114 = load i32, ptr %.reg2mem113, align 4
  %.reload70 = load i32, ptr %.reg2mem65, align 4
  %.reload101 = load ptr, ptr %.reg2mem96, align 4
  %29 = getelementptr inbounds [250 x double], ptr %.reload101, i32 %.reload70, i32 %.reload114
  %30 = load double, ptr %29, align 8, !tbaa !2
  %31 = add nsw i32 %.reload114, -1
  %.reload69 = load i32, ptr %.reg2mem65, align 4
  %.reload100 = load ptr, ptr %.reg2mem96, align 4
  %32 = getelementptr inbounds [250 x double], ptr %.reload100, i32 %.reload69, i32 %31
  %33 = load double, ptr %32, align 8, !tbaa !2
  %34 = fadd double %30, %33
  %35 = add nuw nsw i32 %.reload114, 1
  store i32 %35, ptr %.reg2mem57, align 4
  %.reload60 = load i32, ptr %.reg2mem57, align 4
  %.reload68 = load i32, ptr %.reg2mem65, align 4
  %.reload99 = load ptr, ptr %.reg2mem96, align 4
  %36 = getelementptr inbounds [250 x double], ptr %.reload99, i32 %.reload68, i32 %.reload60
  %37 = load double, ptr %36, align 8, !tbaa !2
  %38 = fadd double %34, %37
  %.reload64 = load ptr, ptr %.reg2mem63, align 4
  %39 = getelementptr inbounds [250 x double], ptr %.reload64, i32 0, i32 %.reload114
  %40 = load double, ptr %39, align 8, !tbaa !2
  %41 = fadd double %38, %40
  %.reload62 = load ptr, ptr %.reg2mem61, align 4
  %42 = getelementptr inbounds [250 x double], ptr %.reload62, i32 0, i32 %.reload114
  %43 = load double, ptr %42, align 8, !tbaa !2
  %44 = fadd double %41, %43
  %45 = fmul double %44, 2.000000e-01
  %.reload67 = load i32, ptr %.reg2mem65, align 4
  %.reload93 = load ptr, ptr %.reg2mem88, align 4
  %46 = getelementptr inbounds [250 x double], ptr %.reload93, i32 %.reload67, i32 %.reload114
  store double %45, ptr %46, align 8, !tbaa !2
  %.reload59 = load i32, ptr %.reg2mem57, align 4
  %47 = icmp eq i32 %.reload59, 249
  br i1 %47, label %48, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %28
  %.reload58 = load i32, ptr %.reg2mem57, align 4
  store i32 %.reload58, ptr %.reg2mem113, align 4
  br label %28

48:                                               ; preds = %28
  %.reload66 = load i32, ptr %.reg2mem65, align 4
  %49 = add nuw nsw i32 %.reload66, 1
  store i32 %49, ptr %.reg2mem54, align 4
  %.reload56 = load i32, ptr %.reg2mem54, align 4
  %50 = icmp eq i32 %.reload56, 249
  br i1 %50, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %48
  %.reload55 = load i32, ptr %.reg2mem54, align 4
  store i32 %.reload55, ptr %.reg2mem115, align 4
  br label %24

._crit_edge4:                                     ; preds = %48
  store i32 1, ptr %.reg2mem111, align 4
  br label %51

51:                                               ; preds = %._crit_edge7, %._crit_edge4
  %.reload112 = load i32, ptr %.reg2mem111, align 4
  store i32 %.reload112, ptr %.reg2mem47, align 4
  %.reload53 = load i32, ptr %.reg2mem47, align 4
  %.reload92 = load ptr, ptr %.reg2mem88, align 4
  %52 = getelementptr inbounds [250 x double], ptr %.reload92, i32 %.reload53
  %53 = getelementptr inbounds i8, ptr %52, i32 2000
  store ptr %53, ptr %.reg2mem45, align 4
  %54 = getelementptr i8, ptr %52, i32 -2000
  store ptr %54, ptr %.reg2mem43, align 4
  store i32 1, ptr %.reg2mem109, align 4
  br label %55

55:                                               ; preds = %._crit_edge6, %51
  %.reload110 = load i32, ptr %.reg2mem109, align 4
  %.reload52 = load i32, ptr %.reg2mem47, align 4
  %.reload91 = load ptr, ptr %.reg2mem88, align 4
  %56 = getelementptr inbounds [250 x double], ptr %.reload91, i32 %.reload52, i32 %.reload110
  %57 = load double, ptr %56, align 8, !tbaa !2
  %58 = add nsw i32 %.reload110, -1
  %.reload51 = load i32, ptr %.reg2mem47, align 4
  %.reload90 = load ptr, ptr %.reg2mem88, align 4
  %59 = getelementptr inbounds [250 x double], ptr %.reload90, i32 %.reload51, i32 %58
  %60 = load double, ptr %59, align 8, !tbaa !2
  %61 = fadd double %57, %60
  %62 = add nuw nsw i32 %.reload110, 1
  store i32 %62, ptr %.reg2mem39, align 4
  %.reload42 = load i32, ptr %.reg2mem39, align 4
  %.reload50 = load i32, ptr %.reg2mem47, align 4
  %.reload89 = load ptr, ptr %.reg2mem88, align 4
  %63 = getelementptr inbounds [250 x double], ptr %.reload89, i32 %.reload50, i32 %.reload42
  %64 = load double, ptr %63, align 8, !tbaa !2
  %65 = fadd double %61, %64
  %.reload46 = load ptr, ptr %.reg2mem45, align 4
  %66 = getelementptr inbounds [250 x double], ptr %.reload46, i32 0, i32 %.reload110
  %67 = load double, ptr %66, align 8, !tbaa !2
  %68 = fadd double %65, %67
  %.reload44 = load ptr, ptr %.reg2mem43, align 4
  %69 = getelementptr inbounds [250 x double], ptr %.reload44, i32 0, i32 %.reload110
  %70 = load double, ptr %69, align 8, !tbaa !2
  %71 = fadd double %68, %70
  %72 = fmul double %71, 2.000000e-01
  %.reload49 = load i32, ptr %.reg2mem47, align 4
  %.reload98 = load ptr, ptr %.reg2mem96, align 4
  %73 = getelementptr inbounds [250 x double], ptr %.reload98, i32 %.reload49, i32 %.reload110
  store double %72, ptr %73, align 8, !tbaa !2
  %.reload41 = load i32, ptr %.reg2mem39, align 4
  %74 = icmp eq i32 %.reload41, 249
  br i1 %74, label %75, label %._crit_edge6, !llvm.loop !12

._crit_edge6:                                     ; preds = %55
  %.reload40 = load i32, ptr %.reg2mem39, align 4
  store i32 %.reload40, ptr %.reg2mem109, align 4
  br label %55

75:                                               ; preds = %55
  %.reload48 = load i32, ptr %.reg2mem47, align 4
  %76 = add nuw nsw i32 %.reload48, 1
  store i32 %76, ptr %.reg2mem36, align 4
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %77 = icmp eq i32 %.reload38, 249
  br i1 %77, label %78, label %._crit_edge7, !llvm.loop !13

._crit_edge7:                                     ; preds = %75
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  store i32 %.reload37, ptr %.reg2mem111, align 4
  br label %51

78:                                               ; preds = %75
  %.reload73 = load i32, ptr %.reg2mem72, align 4
  %79 = add nuw nsw i32 %.reload73, 1
  store i32 %79, ptr %.reg2mem33, align 4
  %.reload35 = load i32, ptr %.reg2mem33, align 4
  %80 = icmp eq i32 %.reload35, 100
  br i1 %80, label %81, label %._crit_edge8, !llvm.loop !14

._crit_edge8:                                     ; preds = %78
  %.reload34 = load i32, ptr %.reg2mem33, align 4
  store i32 %.reload34, ptr %.reg2mem117, align 4
  br label %23

81:                                               ; preds = %78
  %82 = load ptr, ptr @stderr, align 4, !tbaa !15
  store ptr %82, ptr %.reg2mem26, align 4
  %.reload32 = load ptr, ptr %.reg2mem26, align 4
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload32, ptr noundef nonnull @.str) #3
  %.reload31 = load ptr, ptr %.reg2mem26, align 4
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload31, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem107, align 4
  br label %85

85:                                               ; preds = %._crit_edge11, %81
  %.reload108 = load i32, ptr %.reg2mem107, align 4
  store i32 %.reload108, ptr %.reg2mem22, align 4
  %.reload25 = load i32, ptr %.reg2mem22, align 4
  %86 = mul nuw nsw i32 %.reload25, 250
  store i32 %86, ptr %.reg2mem20, align 4
  store i32 0, ptr %.reg2mem105, align 4
  br label %87

87:                                               ; preds = %._crit_edge10, %85
  %.reload106 = load i32, ptr %.reg2mem105, align 4
  store i32 %.reload106, ptr %.reg2mem16, align 4
  %.reload19 = load i32, ptr %.reg2mem16, align 4
  %.reload21 = load i32, ptr %.reg2mem20, align 4
  %88 = add nuw nsw i32 %.reload19, %.reload21
  %89 = urem i32 %88, 20
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %._crit_edge9

._crit_edge9:                                     ; preds = %87
  br label %93

91:                                               ; preds = %87
  %.reload27 = load ptr, ptr %.reg2mem26, align 4
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload27, ptr noundef nonnull @.str.3) #3
  br label %93

93:                                               ; preds = %._crit_edge9, %91
  %.reload18 = load i32, ptr %.reg2mem16, align 4
  %.reload24 = load i32, ptr %.reg2mem22, align 4
  %.reload97 = load ptr, ptr %.reg2mem96, align 4
  %94 = getelementptr inbounds [250 x double], ptr %.reload97, i32 %.reload24, i32 %.reload18
  %95 = load double, ptr %94, align 8, !tbaa !2
  %.reload30 = load ptr, ptr %.reg2mem26, align 4
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload30, ptr noundef nonnull @.str.4, double noundef %95) #3
  %.reload17 = load i32, ptr %.reg2mem16, align 4
  %97 = add nuw nsw i32 %.reload17, 1
  store i32 %97, ptr %.reg2mem13, align 4
  %.reload15 = load i32, ptr %.reg2mem13, align 4
  %98 = icmp eq i32 %.reload15, 250
  br i1 %98, label %99, label %._crit_edge10, !llvm.loop !17

._crit_edge10:                                    ; preds = %93
  %.reload14 = load i32, ptr %.reg2mem13, align 4
  store i32 %.reload14, ptr %.reg2mem105, align 4
  br label %87

99:                                               ; preds = %93
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  %100 = add nuw nsw i32 %.reload23, 1
  store i32 %100, ptr %.reg2mem, align 4
  %.reload12 = load i32, ptr %.reg2mem, align 4
  %101 = icmp eq i32 %.reload12, 250
  br i1 %101, label %102, label %._crit_edge11, !llvm.loop !18

._crit_edge11:                                    ; preds = %99
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem107, align 4
  br label %85

102:                                              ; preds = %99
  %.reload29 = load ptr, ptr %.reg2mem26, align 4
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload29, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload28 = load ptr, ptr %.reg2mem26, align 4
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload28, ptr noundef nonnull @.str.6) #3
  %.reload104 = load ptr, ptr %.reg2mem96, align 4
  tail call void @free(ptr noundef nonnull %.reload104) #3
  %.reload95 = load ptr, ptr %.reg2mem88, align 4
  tail call void @free(ptr noundef %.reload95) #3
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
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7, !8}
!18 = distinct !{!18, !7, !8}
