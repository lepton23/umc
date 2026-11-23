; ModuleID = './polybench-output/wasm/no-phis/trisolv.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/trisolv/trisolv.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem11 = alloca i32, align 4
  %.reg2mem15 = alloca ptr, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem28 = alloca double, align 8
  %.reg2mem32 = alloca ptr, align 4
  %.reg2mem36 = alloca double, align 8
  %.reg2mem40 = alloca i32, align 4
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem58 = alloca i32, align 4
  %.reg2mem65 = alloca i32, align 4
  %.reg2mem68 = alloca ptr, align 4
  %.reg2mem72 = alloca ptr, align 4
  %.reg2mem78 = alloca ptr, align 4
  %.reg2mem83 = alloca i32, align 4
  %.reg2mem85 = alloca double, align 8
  %.reg2mem87 = alloca i32, align 4
  %.reg2mem89 = alloca double, align 8
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem93 = alloca i32, align 4
  %.reg2mem95 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem78, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem72, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem68, align 4
  store i32 0, ptr %.reg2mem95, align 4
  store i32 1, ptr %.reg2mem97, align 4
  br label %6

6:                                                ; preds = %._crit_edge2, %2
  %.reload98 = load i32, ptr %.reg2mem97, align 4
  %.reload96 = load i32, ptr %.reg2mem95, align 4
  store i32 %.reload98, ptr %.reg2mem65, align 4
  store i32 %.reload96, ptr %.reg2mem58, align 4
  %.reload64 = load i32, ptr %.reg2mem58, align 4
  %.reload76 = load ptr, ptr %.reg2mem72, align 4
  %7 = getelementptr inbounds double, ptr %.reload76, i32 %.reload64
  store double -9.990000e+02, ptr %7, align 8, !tbaa !2
  %.reload63 = load i32, ptr %.reg2mem58, align 4
  %8 = uitofp nneg i32 %.reload63 to double
  %.reload62 = load i32, ptr %.reg2mem58, align 4
  %.reload70 = load ptr, ptr %.reg2mem68, align 4
  %9 = getelementptr inbounds double, ptr %.reload70, i32 %.reload62
  store double %8, ptr %9, align 8, !tbaa !2
  %.reload61 = load i32, ptr %.reg2mem58, align 4
  %10 = add nuw nsw i32 %.reload61, 401
  store i32 %10, ptr %.reg2mem56, align 4
  store i32 0, ptr %.reg2mem93, align 4
  br label %11

11:                                               ; preds = %._crit_edge, %6
  %.reload94 = load i32, ptr %.reg2mem93, align 4
  %.reload57 = load i32, ptr %.reg2mem56, align 4
  %12 = sub nuw nsw i32 %.reload57, %.reload94
  %13 = shl nuw i32 %12, 1
  %14 = uitofp i32 %13 to double
  %15 = fdiv double %14, 4.000000e+02
  %.reload60 = load i32, ptr %.reg2mem58, align 4
  %.reload81 = load ptr, ptr %.reg2mem78, align 4
  %16 = getelementptr inbounds [400 x double], ptr %.reload81, i32 %.reload60, i32 %.reload94
  store double %15, ptr %16, align 8, !tbaa !2
  %17 = add nuw nsw i32 %.reload94, 1
  store i32 %17, ptr %.reg2mem53, align 4
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %.reload67 = load i32, ptr %.reg2mem65, align 4
  %18 = icmp eq i32 %.reload55, %.reload67
  br i1 %18, label %19, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %11
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  store i32 %.reload54, ptr %.reg2mem93, align 4
  br label %11

19:                                               ; preds = %11
  %.reload59 = load i32, ptr %.reg2mem58, align 4
  %20 = add nuw nsw i32 %.reload59, 1
  store i32 %20, ptr %.reg2mem50, align 4
  %.reload66 = load i32, ptr %.reg2mem65, align 4
  %21 = add nuw nsw i32 %.reload66, 1
  store i32 %21, ptr %.reg2mem48, align 4
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %22 = icmp eq i32 %.reload52, 400
  br i1 %22, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %19
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  store i32 %.reload51, ptr %.reg2mem95, align 4
  store i32 %.reload49, ptr %.reg2mem97, align 4
  br label %6

._crit_edge1:                                     ; preds = %19
  store i32 0, ptr %.reg2mem91, align 4
  br label %23

23:                                               ; preds = %._crit_edge7, %._crit_edge1
  %.reload92 = load i32, ptr %.reg2mem91, align 4
  store i32 %.reload92, ptr %.reg2mem40, align 4
  %.reload47 = load i32, ptr %.reg2mem40, align 4
  %.reload69 = load ptr, ptr %.reg2mem68, align 4
  %24 = getelementptr inbounds double, ptr %.reload69, i32 %.reload47
  %25 = load double, ptr %24, align 8, !tbaa !2
  store double %25, ptr %.reg2mem36, align 8
  %.reload46 = load i32, ptr %.reg2mem40, align 4
  %.reload75 = load ptr, ptr %.reg2mem72, align 4
  %26 = getelementptr inbounds double, ptr %.reload75, i32 %.reload46
  store ptr %26, ptr %.reg2mem32, align 4
  %.reload35 = load ptr, ptr %.reg2mem32, align 4
  %.reload39 = load double, ptr %.reg2mem36, align 8
  store double %.reload39, ptr %.reload35, align 8, !tbaa !2
  %.reload45 = load i32, ptr %.reg2mem40, align 4
  %27 = icmp eq i32 %.reload45, 0
  br i1 %27, label %._crit_edge3, label %._crit_edge4

._crit_edge4:                                     ; preds = %23
  %.reload37 = load double, ptr %.reg2mem36, align 8
  store i32 0, ptr %.reg2mem87, align 4
  store double %.reload37, ptr %.reg2mem89, align 8
  br label %28

._crit_edge3:                                     ; preds = %23
  %.reload38 = load double, ptr %.reg2mem36, align 8
  store double %.reload38, ptr %.reg2mem85, align 8
  br label %37

28:                                               ; preds = %._crit_edge6, %._crit_edge4
  %.reload90 = load double, ptr %.reg2mem89, align 8
  %.reload88 = load i32, ptr %.reg2mem87, align 4
  %.reload44 = load i32, ptr %.reg2mem40, align 4
  %.reload80 = load ptr, ptr %.reg2mem78, align 4
  %29 = getelementptr inbounds [400 x double], ptr %.reload80, i32 %.reload44, i32 %.reload88
  %30 = load double, ptr %29, align 8, !tbaa !2
  %.reload74 = load ptr, ptr %.reg2mem72, align 4
  %31 = getelementptr inbounds double, ptr %.reload74, i32 %.reload88
  %32 = load double, ptr %31, align 8, !tbaa !2
  %33 = fneg double %30
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %32, double %.reload90)
  store double %34, ptr %.reg2mem28, align 8
  %.reload31 = load double, ptr %.reg2mem28, align 8
  %.reload34 = load ptr, ptr %.reg2mem32, align 4
  store double %.reload31, ptr %.reload34, align 8, !tbaa !2
  %35 = add nuw nsw i32 %.reload88, 1
  store i32 %35, ptr %.reg2mem25, align 4
  %.reload27 = load i32, ptr %.reg2mem25, align 4
  %.reload43 = load i32, ptr %.reg2mem40, align 4
  %36 = icmp eq i32 %.reload27, %.reload43
  br i1 %36, label %._crit_edge5, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %28
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  %.reload30 = load double, ptr %.reg2mem28, align 8
  store i32 %.reload26, ptr %.reg2mem87, align 4
  store double %.reload30, ptr %.reg2mem89, align 8
  br label %28

._crit_edge5:                                     ; preds = %28
  %.reload29 = load double, ptr %.reg2mem28, align 8
  store double %.reload29, ptr %.reg2mem85, align 8
  br label %37

37:                                               ; preds = %._crit_edge5, %._crit_edge3
  %.reload86 = load double, ptr %.reg2mem85, align 8
  %.reload42 = load i32, ptr %.reg2mem40, align 4
  %.reload79 = load ptr, ptr %.reg2mem78, align 4
  %38 = getelementptr inbounds [400 x double], ptr %.reload79, i32 %.reload42, i32 %.reload42
  %39 = load double, ptr %38, align 8, !tbaa !2
  %40 = fdiv double %.reload86, %39
  %.reload33 = load ptr, ptr %.reg2mem32, align 4
  store double %40, ptr %.reload33, align 8, !tbaa !2
  %.reload41 = load i32, ptr %.reg2mem40, align 4
  %41 = add nuw nsw i32 %.reload41, 1
  store i32 %41, ptr %.reg2mem22, align 4
  %.reload24 = load i32, ptr %.reg2mem22, align 4
  %42 = icmp eq i32 %.reload24, 400
  br i1 %42, label %43, label %._crit_edge7, !llvm.loop !11

._crit_edge7:                                     ; preds = %37
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  store i32 %.reload23, ptr %.reg2mem91, align 4
  br label %23

43:                                               ; preds = %37
  %44 = load ptr, ptr @stderr, align 4, !tbaa !12
  store ptr %44, ptr %.reg2mem15, align 4
  %.reload21 = load ptr, ptr %.reg2mem15, align 4
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload21, ptr noundef nonnull @.str) #3
  %.reload20 = load ptr, ptr %.reg2mem15, align 4
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem83, align 4
  br label %47

47:                                               ; preds = %._crit_edge9, %43
  %.reload84 = load i32, ptr %.reg2mem83, align 4
  store i32 %.reload84, ptr %.reg2mem11, align 4
  %.reload14 = load i32, ptr %.reg2mem11, align 4
  %.reload73 = load ptr, ptr %.reg2mem72, align 4
  %48 = getelementptr inbounds double, ptr %.reload73, i32 %.reload14
  %49 = load double, ptr %48, align 8, !tbaa !2
  %.reload19 = load ptr, ptr %.reg2mem15, align 4
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload19, ptr noundef nonnull @.str.3, double noundef %49) #3
  %.reload13 = load i32, ptr %.reg2mem11, align 4
  %51 = trunc nuw i32 %.reload13 to i16
  %52 = urem i16 %51, 20
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %._crit_edge8

._crit_edge8:                                     ; preds = %47
  br label %56

54:                                               ; preds = %47
  %.reload16 = load ptr, ptr %.reg2mem15, align 4
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload16, ptr noundef nonnull @.str.4) #3
  br label %56

56:                                               ; preds = %._crit_edge8, %54
  %.reload12 = load i32, ptr %.reg2mem11, align 4
  %57 = add nuw nsw i32 %.reload12, 1
  store i32 %57, ptr %.reg2mem, align 4
  %.reload10 = load i32, ptr %.reg2mem, align 4
  %58 = icmp eq i32 %.reload10, 400
  br i1 %58, label %59, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %56
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem83, align 4
  br label %47

59:                                               ; preds = %56
  %.reload18 = load ptr, ptr %.reg2mem15, align 4
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload18, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload17 = load ptr, ptr %.reg2mem15, align 4
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload17, ptr noundef nonnull @.str.6) #3
  %.reload82 = load ptr, ptr %.reg2mem78, align 4
  tail call void @free(ptr noundef %.reload82) #3
  %.reload77 = load ptr, ptr %.reg2mem72, align 4
  tail call void @free(ptr noundef nonnull %.reload77) #3
  %.reload71 = load ptr, ptr %.reg2mem68, align 4
  tail call void @free(ptr noundef %.reload71) #3
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
