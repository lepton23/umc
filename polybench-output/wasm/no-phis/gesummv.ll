; ModuleID = './polybench-output/wasm/no-phis/gesummv.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/gesummv/gesummv.c"
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
  %.reg2mem8 = alloca i32, align 4
  %.reg2mem12 = alloca ptr, align 4
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem25 = alloca double, align 8
  %.reg2mem28 = alloca ptr, align 4
  %.reg2mem33 = alloca ptr, align 4
  %.reg2mem38 = alloca i32, align 4
  %.reg2mem44 = alloca i32, align 4
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem57 = alloca ptr, align 4
  %.reg2mem61 = alloca ptr, align 4
  %.reg2mem65 = alloca ptr, align 4
  %.reg2mem68 = alloca ptr, align 4
  %.reg2mem72 = alloca ptr, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem78 = alloca i32, align 4
  %.reg2mem80 = alloca i32, align 4
  %.reg2mem82 = alloca i32, align 4
  %.reg2mem84 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem72, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem68, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 250, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem65, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 250, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem61, align 4
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 250, i32 noundef 8) #3
  store ptr %7, ptr %.reg2mem57, align 4
  store i32 0, ptr %.reg2mem84, align 4
  br label %8

8:                                                ; preds = %._crit_edge2, %2
  %.reload85 = load i32, ptr %.reg2mem84, align 4
  store i32 %.reload85, ptr %.reg2mem50, align 4
  %.reload56 = load i32, ptr %.reg2mem50, align 4
  %9 = uitofp nneg i32 %.reload56 to double
  %10 = fdiv double %9, 2.500000e+02
  %.reload55 = load i32, ptr %.reg2mem50, align 4
  %.reload63 = load ptr, ptr %.reg2mem61, align 4
  %11 = getelementptr inbounds double, ptr %.reload63, i32 %.reload55
  store double %10, ptr %11, align 8, !tbaa !2
  store i32 0, ptr %.reg2mem82, align 4
  br label %12

12:                                               ; preds = %._crit_edge, %8
  %.reload83 = load i32, ptr %.reg2mem82, align 4
  %.reload54 = load i32, ptr %.reg2mem50, align 4
  %13 = mul nuw nsw i32 %.reload83, %.reload54
  %14 = add nuw nsw i32 %13, 1
  %15 = urem i32 %14, 250
  %16 = uitofp nneg i32 %15 to double
  %17 = fdiv double %16, 2.500000e+02
  %.reload53 = load i32, ptr %.reg2mem50, align 4
  %.reload74 = load ptr, ptr %.reg2mem72, align 4
  %18 = getelementptr inbounds [250 x double], ptr %.reload74, i32 %.reload53, i32 %.reload83
  store double %17, ptr %18, align 8, !tbaa !2
  %19 = add nuw nsw i32 %13, 2
  %20 = urem i32 %19, 250
  %21 = uitofp nneg i32 %20 to double
  %22 = fdiv double %21, 2.500000e+02
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %.reload70 = load ptr, ptr %.reg2mem68, align 4
  %23 = getelementptr inbounds [250 x double], ptr %.reload70, i32 %.reload52, i32 %.reload83
  store double %22, ptr %23, align 8, !tbaa !2
  %24 = add nuw nsw i32 %.reload83, 1
  store i32 %24, ptr %.reg2mem47, align 4
  %.reload49 = load i32, ptr %.reg2mem47, align 4
  %25 = icmp eq i32 %.reload49, 250
  br i1 %25, label %26, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %12
  %.reload48 = load i32, ptr %.reg2mem47, align 4
  store i32 %.reload48, ptr %.reg2mem82, align 4
  br label %12

26:                                               ; preds = %12
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  %27 = add nuw nsw i32 %.reload51, 1
  store i32 %27, ptr %.reg2mem44, align 4
  %.reload46 = load i32, ptr %.reg2mem44, align 4
  %28 = icmp eq i32 %.reload46, 250
  br i1 %28, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %26
  %.reload45 = load i32, ptr %.reg2mem44, align 4
  store i32 %.reload45, ptr %.reg2mem84, align 4
  br label %8

._crit_edge1:                                     ; preds = %26
  store i32 0, ptr %.reg2mem80, align 4
  br label %29

29:                                               ; preds = %._crit_edge4, %._crit_edge1
  %.reload81 = load i32, ptr %.reg2mem80, align 4
  store i32 %.reload81, ptr %.reg2mem38, align 4
  %.reload43 = load i32, ptr %.reg2mem38, align 4
  %.reload66 = load ptr, ptr %.reg2mem65, align 4
  %30 = getelementptr inbounds double, ptr %.reload66, i32 %.reload43
  store ptr %30, ptr %.reg2mem33, align 4
  %.reload37 = load ptr, ptr %.reg2mem33, align 4
  store double 0.000000e+00, ptr %.reload37, align 8, !tbaa !2
  %.reload42 = load i32, ptr %.reg2mem38, align 4
  %.reload59 = load ptr, ptr %.reg2mem57, align 4
  %31 = getelementptr inbounds double, ptr %.reload59, i32 %.reload42
  store ptr %31, ptr %.reg2mem28, align 4
  %.reload32 = load ptr, ptr %.reg2mem28, align 4
  store double 0.000000e+00, ptr %.reload32, align 8, !tbaa !2
  store i32 0, ptr %.reg2mem78, align 4
  br label %32

32:                                               ; preds = %._crit_edge3, %29
  %.reload79 = load i32, ptr %.reg2mem78, align 4
  %.reload41 = load i32, ptr %.reg2mem38, align 4
  %.reload73 = load ptr, ptr %.reg2mem72, align 4
  %33 = getelementptr inbounds [250 x double], ptr %.reload73, i32 %.reload41, i32 %.reload79
  %34 = load double, ptr %33, align 8, !tbaa !2
  %.reload62 = load ptr, ptr %.reg2mem61, align 4
  %35 = getelementptr inbounds double, ptr %.reload62, i32 %.reload79
  %36 = load double, ptr %35, align 8, !tbaa !2
  %.reload36 = load ptr, ptr %.reg2mem33, align 4
  %37 = load double, ptr %.reload36, align 8, !tbaa !2
  %38 = tail call double @llvm.fmuladd.f64(double %34, double %36, double %37)
  %.reload35 = load ptr, ptr %.reg2mem33, align 4
  store double %38, ptr %.reload35, align 8, !tbaa !2
  %.reload40 = load i32, ptr %.reg2mem38, align 4
  %.reload69 = load ptr, ptr %.reg2mem68, align 4
  %39 = getelementptr inbounds [250 x double], ptr %.reload69, i32 %.reload40, i32 %.reload79
  %40 = load double, ptr %39, align 8, !tbaa !2
  %41 = load double, ptr %35, align 8, !tbaa !2
  %.reload31 = load ptr, ptr %.reg2mem28, align 4
  %42 = load double, ptr %.reload31, align 8, !tbaa !2
  %43 = tail call double @llvm.fmuladd.f64(double %40, double %41, double %42)
  store double %43, ptr %.reg2mem25, align 8
  %.reload27 = load double, ptr %.reg2mem25, align 8
  %.reload30 = load ptr, ptr %.reg2mem28, align 4
  store double %.reload27, ptr %.reload30, align 8, !tbaa !2
  %44 = add nuw nsw i32 %.reload79, 1
  store i32 %44, ptr %.reg2mem22, align 4
  %.reload24 = load i32, ptr %.reg2mem22, align 4
  %45 = icmp eq i32 %.reload24, 250
  br i1 %45, label %46, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %32
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  store i32 %.reload23, ptr %.reg2mem78, align 4
  br label %32

46:                                               ; preds = %32
  %.reload34 = load ptr, ptr %.reg2mem33, align 4
  %47 = load double, ptr %.reload34, align 8, !tbaa !2
  %.reload26 = load double, ptr %.reg2mem25, align 8
  %48 = fmul double %.reload26, 1.200000e+00
  %49 = tail call double @llvm.fmuladd.f64(double %47, double 1.500000e+00, double %48)
  %.reload29 = load ptr, ptr %.reg2mem28, align 4
  store double %49, ptr %.reload29, align 8, !tbaa !2
  %.reload39 = load i32, ptr %.reg2mem38, align 4
  %50 = add nuw nsw i32 %.reload39, 1
  store i32 %50, ptr %.reg2mem19, align 4
  %.reload21 = load i32, ptr %.reg2mem19, align 4
  %51 = icmp eq i32 %.reload21, 250
  br i1 %51, label %52, label %._crit_edge4, !llvm.loop !11

._crit_edge4:                                     ; preds = %46
  %.reload20 = load i32, ptr %.reg2mem19, align 4
  store i32 %.reload20, ptr %.reg2mem80, align 4
  br label %29

52:                                               ; preds = %46
  %53 = load ptr, ptr @stderr, align 4, !tbaa !12
  store ptr %53, ptr %.reg2mem12, align 4
  %.reload18 = load ptr, ptr %.reg2mem12, align 4
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload18, ptr noundef nonnull @.str) #3
  %.reload17 = load ptr, ptr %.reg2mem12, align 4
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem76, align 4
  br label %56

56:                                               ; preds = %._crit_edge6, %52
  %.reload77 = load i32, ptr %.reg2mem76, align 4
  store i32 %.reload77, ptr %.reg2mem8, align 4
  %.reload11 = load i32, ptr %.reg2mem8, align 4
  %57 = trunc nuw i32 %.reload11 to i8
  %58 = urem i8 %57, 20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %._crit_edge5

._crit_edge5:                                     ; preds = %56
  br label %62

60:                                               ; preds = %56
  %.reload13 = load ptr, ptr %.reg2mem12, align 4
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload13, ptr noundef nonnull @.str.3) #3
  br label %62

62:                                               ; preds = %._crit_edge5, %60
  %.reload10 = load i32, ptr %.reg2mem8, align 4
  %.reload58 = load ptr, ptr %.reg2mem57, align 4
  %63 = getelementptr inbounds double, ptr %.reload58, i32 %.reload10
  %64 = load double, ptr %63, align 8, !tbaa !2
  %.reload16 = load ptr, ptr %.reg2mem12, align 4
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload16, ptr noundef nonnull @.str.4, double noundef %64) #3
  %.reload9 = load i32, ptr %.reg2mem8, align 4
  %66 = add nuw nsw i32 %.reload9, 1
  store i32 %66, ptr %.reg2mem, align 4
  %.reload7 = load i32, ptr %.reg2mem, align 4
  %67 = icmp eq i32 %.reload7, 250
  br i1 %67, label %68, label %._crit_edge6, !llvm.loop !14

._crit_edge6:                                     ; preds = %62
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem76, align 4
  br label %56

68:                                               ; preds = %62
  %.reload15 = load ptr, ptr %.reg2mem12, align 4
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload15, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload14 = load ptr, ptr %.reg2mem12, align 4
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload14, ptr noundef nonnull @.str.6) #3
  %.reload75 = load ptr, ptr %.reg2mem72, align 4
  tail call void @free(ptr noundef %.reload75) #3
  %.reload71 = load ptr, ptr %.reg2mem68, align 4
  tail call void @free(ptr noundef %.reload71) #3
  %.reload67 = load ptr, ptr %.reg2mem65, align 4
  tail call void @free(ptr noundef %.reload67) #3
  %.reload64 = load ptr, ptr %.reg2mem61, align 4
  tail call void @free(ptr noundef %.reload64) #3
  %.reload60 = load ptr, ptr %.reg2mem57, align 4
  tail call void @free(ptr noundef nonnull %.reload60) #3
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
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = distinct !{!14, !7, !8}
