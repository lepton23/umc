; ModuleID = './polybench-output/wasm/no-phis/atax.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/atax/atax.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem14 = alloca i32, align 4
  %.reg2mem18 = alloca ptr, align 4
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem28 = alloca i32, align 4
  %.reg2mem31 = alloca i32, align 4
  %.reg2mem34 = alloca double, align 8
  %.reg2mem37 = alloca ptr, align 4
  %.reg2mem41 = alloca i32, align 4
  %.reg2mem46 = alloca i32, align 4
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem55 = alloca i32, align 4
  %.reg2mem59 = alloca i32, align 4
  %.reg2mem62 = alloca ptr, align 4
  %.reg2mem65 = alloca ptr, align 4
  %.reg2mem70 = alloca ptr, align 4
  %.reg2mem74 = alloca ptr, align 4
  %.reg2mem79 = alloca i32, align 4
  %.reg2mem81 = alloca i32, align 4
  %.reg2mem83 = alloca double, align 8
  %.reg2mem85 = alloca i32, align 4
  %.reg2mem87 = alloca i32, align 4
  %.reg2mem89 = alloca i32, align 4
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem93 = alloca i32, align 4
  %.reg2mem95 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 159900, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem74, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 410, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem70, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 410, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem65, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 390, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem62, align 4
  store i32 0, ptr %.reg2mem95, align 4
  br label %7

7:                                                ; preds = %._crit_edge1, %2
  %.reload96 = load i32, ptr %.reg2mem95, align 4
  %8 = uitofp nneg i32 %.reload96 to double
  %9 = fdiv double %8, 4.100000e+02
  %10 = fadd double %9, 1.000000e+00
  %.reload72 = load ptr, ptr %.reg2mem70, align 4
  %11 = getelementptr inbounds double, ptr %.reload72, i32 %.reload96
  store double %10, ptr %11, align 8, !tbaa !2
  %12 = add nuw nsw i32 %.reload96, 1
  store i32 %12, ptr %.reg2mem59, align 4
  %.reload61 = load i32, ptr %.reg2mem59, align 4
  %13 = icmp eq i32 %.reload61, 410
  br i1 %13, label %._crit_edge, label %._crit_edge1, !llvm.loop !6

._crit_edge1:                                     ; preds = %7
  %.reload60 = load i32, ptr %.reg2mem59, align 4
  store i32 %.reload60, ptr %.reg2mem95, align 4
  br label %7

._crit_edge:                                      ; preds = %7
  store i32 0, ptr %.reg2mem93, align 4
  br label %14

14:                                               ; preds = %._crit_edge4, %._crit_edge
  %.reload94 = load i32, ptr %.reg2mem93, align 4
  store i32 %.reload94, ptr %.reg2mem55, align 4
  store i32 0, ptr %.reg2mem91, align 4
  br label %15

15:                                               ; preds = %._crit_edge2, %14
  %.reload92 = load i32, ptr %.reg2mem91, align 4
  %.reload58 = load i32, ptr %.reg2mem55, align 4
  %16 = add nuw nsw i32 %.reload92, %.reload58
  %17 = urem i32 %16, 410
  %18 = uitofp nneg i32 %17 to double
  %19 = fdiv double %18, 1.950000e+03
  %.reload57 = load i32, ptr %.reg2mem55, align 4
  %.reload77 = load ptr, ptr %.reg2mem74, align 4
  %20 = getelementptr inbounds [410 x double], ptr %.reload77, i32 %.reload57, i32 %.reload92
  store double %19, ptr %20, align 8, !tbaa !2
  %21 = add nuw nsw i32 %.reload92, 1
  store i32 %21, ptr %.reg2mem52, align 4
  %.reload54 = load i32, ptr %.reg2mem52, align 4
  %22 = icmp eq i32 %.reload54, 410
  br i1 %22, label %23, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %15
  %.reload53 = load i32, ptr %.reg2mem52, align 4
  store i32 %.reload53, ptr %.reg2mem91, align 4
  br label %15

23:                                               ; preds = %15
  %.reload56 = load i32, ptr %.reg2mem55, align 4
  %24 = add nuw nsw i32 %.reload56, 1
  store i32 %24, ptr %.reg2mem49, align 4
  %.reload51 = load i32, ptr %.reg2mem49, align 4
  %25 = icmp eq i32 %.reload51, 390
  br i1 %25, label %._crit_edge3, label %._crit_edge4, !llvm.loop !10

._crit_edge4:                                     ; preds = %23
  %.reload50 = load i32, ptr %.reg2mem49, align 4
  store i32 %.reload50, ptr %.reg2mem93, align 4
  br label %14

._crit_edge3:                                     ; preds = %23
  store i32 0, ptr %.reg2mem89, align 4
  br label %26

26:                                               ; preds = %._crit_edge6, %._crit_edge3
  %.reload90 = load i32, ptr %.reg2mem89, align 4
  %.reload68 = load ptr, ptr %.reg2mem65, align 4
  %27 = getelementptr inbounds double, ptr %.reload68, i32 %.reload90
  store double 0.000000e+00, ptr %27, align 8, !tbaa !2
  %28 = add nuw nsw i32 %.reload90, 1
  store i32 %28, ptr %.reg2mem46, align 4
  %.reload48 = load i32, ptr %.reg2mem46, align 4
  %29 = icmp eq i32 %.reload48, 410
  br i1 %29, label %._crit_edge5, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %26
  %.reload47 = load i32, ptr %.reg2mem46, align 4
  store i32 %.reload47, ptr %.reg2mem89, align 4
  br label %26

._crit_edge5:                                     ; preds = %26
  store i32 0, ptr %.reg2mem87, align 4
  br label %30

30:                                               ; preds = %._crit_edge10, %._crit_edge5
  %.reload88 = load i32, ptr %.reg2mem87, align 4
  store i32 %.reload88, ptr %.reg2mem41, align 4
  %.reload45 = load i32, ptr %.reg2mem41, align 4
  %.reload63 = load ptr, ptr %.reg2mem62, align 4
  %31 = getelementptr inbounds double, ptr %.reload63, i32 %.reload45
  store ptr %31, ptr %.reg2mem37, align 4
  %.reload40 = load ptr, ptr %.reg2mem37, align 4
  store double 0.000000e+00, ptr %.reload40, align 8, !tbaa !2
  store double 0.000000e+00, ptr %.reg2mem83, align 8
  store i32 0, ptr %.reg2mem85, align 4
  br label %32

32:                                               ; preds = %._crit_edge8, %30
  %.reload86 = load i32, ptr %.reg2mem85, align 4
  %.reload84 = load double, ptr %.reg2mem83, align 8
  %.reload44 = load i32, ptr %.reg2mem41, align 4
  %.reload76 = load ptr, ptr %.reg2mem74, align 4
  %33 = getelementptr inbounds [410 x double], ptr %.reload76, i32 %.reload44, i32 %.reload86
  %34 = load double, ptr %33, align 8, !tbaa !2
  %.reload71 = load ptr, ptr %.reg2mem70, align 4
  %35 = getelementptr inbounds double, ptr %.reload71, i32 %.reload86
  %36 = load double, ptr %35, align 8, !tbaa !2
  %37 = tail call double @llvm.fmuladd.f64(double %34, double %36, double %.reload84)
  store double %37, ptr %.reg2mem34, align 8
  %.reload36 = load double, ptr %.reg2mem34, align 8
  %.reload39 = load ptr, ptr %.reg2mem37, align 4
  store double %.reload36, ptr %.reload39, align 8, !tbaa !2
  %38 = add nuw nsw i32 %.reload86, 1
  store i32 %38, ptr %.reg2mem31, align 4
  %.reload33 = load i32, ptr %.reg2mem31, align 4
  %39 = icmp eq i32 %.reload33, 410
  br i1 %39, label %._crit_edge7, label %._crit_edge8, !llvm.loop !12

._crit_edge8:                                     ; preds = %32
  %.reload32 = load i32, ptr %.reg2mem31, align 4
  %.reload35 = load double, ptr %.reg2mem34, align 8
  store double %.reload35, ptr %.reg2mem83, align 8
  store i32 %.reload32, ptr %.reg2mem85, align 4
  br label %32

._crit_edge7:                                     ; preds = %32
  store i32 0, ptr %.reg2mem81, align 4
  br label %40

40:                                               ; preds = %._crit_edge9, %._crit_edge7
  %.reload82 = load i32, ptr %.reg2mem81, align 4
  %.reload67 = load ptr, ptr %.reg2mem65, align 4
  %41 = getelementptr inbounds double, ptr %.reload67, i32 %.reload82
  %42 = load double, ptr %41, align 8, !tbaa !2
  %.reload43 = load i32, ptr %.reg2mem41, align 4
  %.reload75 = load ptr, ptr %.reg2mem74, align 4
  %43 = getelementptr inbounds [410 x double], ptr %.reload75, i32 %.reload43, i32 %.reload82
  %44 = load double, ptr %43, align 8, !tbaa !2
  %.reload38 = load ptr, ptr %.reg2mem37, align 4
  %45 = load double, ptr %.reload38, align 8, !tbaa !2
  %46 = tail call double @llvm.fmuladd.f64(double %44, double %45, double %42)
  store double %46, ptr %41, align 8, !tbaa !2
  %47 = add nuw nsw i32 %.reload82, 1
  store i32 %47, ptr %.reg2mem28, align 4
  %.reload30 = load i32, ptr %.reg2mem28, align 4
  %48 = icmp eq i32 %.reload30, 410
  br i1 %48, label %49, label %._crit_edge9, !llvm.loop !13

._crit_edge9:                                     ; preds = %40
  %.reload29 = load i32, ptr %.reg2mem28, align 4
  store i32 %.reload29, ptr %.reg2mem81, align 4
  br label %40

49:                                               ; preds = %40
  %.reload42 = load i32, ptr %.reg2mem41, align 4
  %50 = add nuw nsw i32 %.reload42, 1
  store i32 %50, ptr %.reg2mem25, align 4
  %.reload27 = load i32, ptr %.reg2mem25, align 4
  %51 = icmp eq i32 %.reload27, 390
  br i1 %51, label %52, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %49
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  store i32 %.reload26, ptr %.reg2mem87, align 4
  br label %30

52:                                               ; preds = %49
  %53 = load ptr, ptr @stderr, align 4, !tbaa !15
  store ptr %53, ptr %.reg2mem18, align 4
  %.reload24 = load ptr, ptr %.reg2mem18, align 4
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload24, ptr noundef nonnull @.str) #3
  %.reload23 = load ptr, ptr %.reg2mem18, align 4
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem79, align 4
  br label %56

56:                                               ; preds = %._crit_edge12, %52
  %.reload80 = load i32, ptr %.reg2mem79, align 4
  store i32 %.reload80, ptr %.reg2mem14, align 4
  %.reload17 = load i32, ptr %.reg2mem14, align 4
  %57 = trunc nuw i32 %.reload17 to i16
  %58 = urem i16 %57, 20
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %._crit_edge11

._crit_edge11:                                    ; preds = %56
  br label %62

60:                                               ; preds = %56
  %.reload19 = load ptr, ptr %.reg2mem18, align 4
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload19, ptr noundef nonnull @.str.3) #3
  br label %62

62:                                               ; preds = %._crit_edge11, %60
  %.reload16 = load i32, ptr %.reg2mem14, align 4
  %.reload66 = load ptr, ptr %.reg2mem65, align 4
  %63 = getelementptr inbounds double, ptr %.reload66, i32 %.reload16
  %64 = load double, ptr %63, align 8, !tbaa !2
  %.reload22 = load ptr, ptr %.reg2mem18, align 4
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload22, ptr noundef nonnull @.str.4, double noundef %64) #3
  %.reload15 = load i32, ptr %.reg2mem14, align 4
  %66 = add nuw nsw i32 %.reload15, 1
  store i32 %66, ptr %.reg2mem, align 4
  %.reload13 = load i32, ptr %.reg2mem, align 4
  %67 = icmp eq i32 %.reload13, 410
  br i1 %67, label %68, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %62
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem79, align 4
  br label %56

68:                                               ; preds = %62
  %.reload21 = load ptr, ptr %.reg2mem18, align 4
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload21, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload20 = load ptr, ptr %.reg2mem18, align 4
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload20, ptr noundef nonnull @.str.6) #3
  %.reload78 = load ptr, ptr %.reg2mem74, align 4
  tail call void @free(ptr noundef %.reload78) #3
  %.reload73 = load ptr, ptr %.reg2mem70, align 4
  tail call void @free(ptr noundef %.reload73) #3
  %.reload69 = load ptr, ptr %.reg2mem65, align 4
  tail call void @free(ptr noundef nonnull %.reload69) #3
  %.reload64 = load ptr, ptr %.reg2mem62, align 4
  tail call void @free(ptr noundef %.reload64) #3
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
