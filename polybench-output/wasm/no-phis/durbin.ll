; ModuleID = './polybench-output/wasm/no-phis/durbin.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/durbin/durbin.c"
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
  %3 = alloca [400 x double], align 16
  %.reg2mem = alloca i32, align 4
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem13 = alloca ptr, align 4
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem29 = alloca ptr, align 4
  %.reg2mem32 = alloca double, align 8
  %.reg2mem36 = alloca double, align 8
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem42 = alloca double, align 8
  %.reg2mem45 = alloca ptr, align 4
  %.reg2mem48 = alloca double, align 8
  %.reg2mem50 = alloca double, align 8
  %.reg2mem53 = alloca double, align 8
  %.reg2mem55 = alloca i32, align 4
  %.reg2mem62 = alloca double, align 8
  %.reg2mem64 = alloca i32, align 4
  %.reg2mem67 = alloca ptr, align 4
  %.reg2mem75 = alloca ptr, align 4
  %.reg2mem81 = alloca i32, align 4
  %.reg2mem83 = alloca i32, align 4
  %.reg2mem85 = alloca i32, align 4
  %.reg2mem87 = alloca double, align 8
  %.reg2mem89 = alloca i32, align 4
  %.reg2mem91 = alloca double, align 8
  %.reg2mem93 = alloca double, align 8
  %.reg2mem95 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #4
  store ptr %4, ptr %.reg2mem75, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #4
  store ptr %5, ptr %.reg2mem67, align 4
  store i32 0, ptr %.reg2mem97, align 4
  br label %6

6:                                                ; preds = %._crit_edge, %2
  %.reload98 = load i32, ptr %.reg2mem97, align 4
  %7 = sub nuw nsw i32 401, %.reload98
  %8 = uitofp nneg i32 %7 to double
  %.reload79 = load ptr, ptr %.reg2mem75, align 4
  %9 = getelementptr inbounds double, ptr %.reload79, i32 %.reload98
  store double %8, ptr %9, align 8, !tbaa !2
  %10 = add nuw nsw i32 %.reload98, 1
  store i32 %10, ptr %.reg2mem64, align 4
  %.reload66 = load i32, ptr %.reg2mem64, align 4
  %11 = icmp eq i32 %.reload66, 400
  br i1 %11, label %12, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %6
  %.reload65 = load i32, ptr %.reg2mem64, align 4
  store i32 %.reload65, ptr %.reg2mem97, align 4
  br label %6

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 3200, ptr nonnull %3) #5
  %.reload78 = load ptr, ptr %.reg2mem75, align 4
  %13 = load double, ptr %.reload78, align 8, !tbaa !2
  %14 = fneg double %13
  %.reload73 = load ptr, ptr %.reg2mem67, align 4
  store double %14, ptr %.reload73, align 8, !tbaa !2
  %.reload77 = load ptr, ptr %.reg2mem75, align 4
  %15 = load double, ptr %.reload77, align 8, !tbaa !2
  %16 = fneg double %15
  store double %16, ptr %.reg2mem62, align 8
  %.reload63 = load double, ptr %.reg2mem62, align 8
  store double %.reload63, ptr %.reg2mem91, align 8
  store double 1.000000e+00, ptr %.reg2mem93, align 8
  store i32 1, ptr %.reg2mem95, align 4
  br label %17

17:                                               ; preds = %._crit_edge5, %12
  %.reload96 = load i32, ptr %.reg2mem95, align 4
  %.reload94 = load double, ptr %.reg2mem93, align 8
  %.reload92 = load double, ptr %.reg2mem91, align 8
  store i32 %.reload96, ptr %.reg2mem55, align 4
  store double %.reload94, ptr %.reg2mem53, align 8
  store double %.reload92, ptr %.reg2mem50, align 8
  %.reload52 = load double, ptr %.reg2mem50, align 8
  %18 = fneg double %.reload52
  store double %18, ptr %.reg2mem48, align 8
  %.reload61 = load i32, ptr %.reg2mem55, align 4
  %.reload76 = load ptr, ptr %.reg2mem75, align 4
  %19 = getelementptr double, ptr %.reload76, i32 %.reload61
  store ptr %19, ptr %.reg2mem45, align 4
  store double 0.000000e+00, ptr %.reg2mem87, align 8
  store i32 0, ptr %.reg2mem89, align 4
  br label %20

20:                                               ; preds = %._crit_edge1, %17
  %.reload90 = load i32, ptr %.reg2mem89, align 4
  %.reload88 = load double, ptr %.reg2mem87, align 8
  %21 = xor i32 %.reload90, -1
  %.reload47 = load ptr, ptr %.reg2mem45, align 4
  %22 = getelementptr double, ptr %.reload47, i32 %21
  %23 = load double, ptr %22, align 8, !tbaa !2
  %.reload72 = load ptr, ptr %.reg2mem67, align 4
  %24 = getelementptr inbounds double, ptr %.reload72, i32 %.reload90
  %25 = load double, ptr %24, align 8, !tbaa !2
  %26 = tail call double @llvm.fmuladd.f64(double %23, double %25, double %.reload88)
  store double %26, ptr %.reg2mem42, align 8
  %27 = add nuw nsw i32 %.reload90, 1
  store i32 %27, ptr %.reg2mem39, align 4
  %.reload41 = load i32, ptr %.reg2mem39, align 4
  %.reload60 = load i32, ptr %.reg2mem55, align 4
  %28 = icmp eq i32 %.reload41, %.reload60
  br i1 %28, label %29, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %20
  %.reload40 = load i32, ptr %.reg2mem39, align 4
  %.reload44 = load double, ptr %.reg2mem42, align 8
  store double %.reload44, ptr %.reg2mem87, align 8
  store i32 %.reload40, ptr %.reg2mem89, align 4
  br label %20

29:                                               ; preds = %20
  %.reload49 = load double, ptr %.reg2mem48, align 8
  %.reload51 = load double, ptr %.reg2mem50, align 8
  %30 = tail call double @llvm.fmuladd.f64(double %.reload49, double %.reload51, double 1.000000e+00)
  %.reload54 = load double, ptr %.reg2mem53, align 8
  %31 = fmul double %.reload54, %30
  store double %31, ptr %.reg2mem36, align 8
  %.reload46 = load ptr, ptr %.reg2mem45, align 4
  %32 = load double, ptr %.reload46, align 8, !tbaa !2
  %.reload43 = load double, ptr %.reg2mem42, align 8
  %33 = fadd double %.reload43, %32
  %34 = fneg double %33
  %.reload38 = load double, ptr %.reg2mem36, align 8
  %35 = fdiv double %34, %.reload38
  store double %35, ptr %.reg2mem32, align 8
  %.reload59 = load i32, ptr %.reg2mem55, align 4
  %.reload71 = load ptr, ptr %.reg2mem67, align 4
  %36 = getelementptr double, ptr %.reload71, i32 %.reload59
  store ptr %36, ptr %.reg2mem29, align 4
  store i32 0, ptr %.reg2mem85, align 4
  br label %37

37:                                               ; preds = %._crit_edge3, %29
  %.reload86 = load i32, ptr %.reg2mem85, align 4
  %.reload70 = load ptr, ptr %.reg2mem67, align 4
  %38 = getelementptr inbounds double, ptr %.reload70, i32 %.reload86
  %39 = load double, ptr %38, align 8, !tbaa !2
  %40 = xor i32 %.reload86, -1
  %.reload31 = load ptr, ptr %.reg2mem29, align 4
  %41 = getelementptr double, ptr %.reload31, i32 %40
  %42 = load double, ptr %41, align 8, !tbaa !2
  %.reload35 = load double, ptr %.reg2mem32, align 8
  %43 = tail call double @llvm.fmuladd.f64(double %.reload35, double %42, double %39)
  %44 = getelementptr inbounds [400 x double], ptr %3, i32 0, i32 %.reload86
  store double %43, ptr %44, align 8, !tbaa !2
  %45 = add nuw nsw i32 %.reload86, 1
  store i32 %45, ptr %.reg2mem26, align 4
  %.reload28 = load i32, ptr %.reg2mem26, align 4
  %.reload58 = load i32, ptr %.reg2mem55, align 4
  %46 = icmp eq i32 %.reload28, %.reload58
  br i1 %46, label %._crit_edge2, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %37
  %.reload27 = load i32, ptr %.reg2mem26, align 4
  store i32 %.reload27, ptr %.reg2mem85, align 4
  br label %37

._crit_edge2:                                     ; preds = %37
  store i32 0, ptr %.reg2mem83, align 4
  br label %47

47:                                               ; preds = %._crit_edge4, %._crit_edge2
  %.reload84 = load i32, ptr %.reg2mem83, align 4
  %48 = getelementptr inbounds [400 x double], ptr %3, i32 0, i32 %.reload84
  %49 = load double, ptr %48, align 8, !tbaa !2
  %.reload69 = load ptr, ptr %.reg2mem67, align 4
  %50 = getelementptr inbounds double, ptr %.reload69, i32 %.reload84
  store double %49, ptr %50, align 8, !tbaa !2
  %51 = add nuw nsw i32 %.reload84, 1
  store i32 %51, ptr %.reg2mem23, align 4
  %.reload25 = load i32, ptr %.reg2mem23, align 4
  %.reload57 = load i32, ptr %.reg2mem55, align 4
  %52 = icmp eq i32 %.reload25, %.reload57
  br i1 %52, label %53, label %._crit_edge4, !llvm.loop !11

._crit_edge4:                                     ; preds = %47
  %.reload24 = load i32, ptr %.reg2mem23, align 4
  store i32 %.reload24, ptr %.reg2mem83, align 4
  br label %47

53:                                               ; preds = %47
  %.reload30 = load ptr, ptr %.reg2mem29, align 4
  %.reload34 = load double, ptr %.reg2mem32, align 8
  store double %.reload34, ptr %.reload30, align 8, !tbaa !2
  %.reload56 = load i32, ptr %.reg2mem55, align 4
  %54 = add nuw nsw i32 %.reload56, 1
  store i32 %54, ptr %.reg2mem20, align 4
  %.reload22 = load i32, ptr %.reg2mem20, align 4
  %55 = icmp eq i32 %.reload22, 400
  br i1 %55, label %56, label %._crit_edge5, !llvm.loop !12

._crit_edge5:                                     ; preds = %53
  %.reload21 = load i32, ptr %.reg2mem20, align 4
  %.reload33 = load double, ptr %.reg2mem32, align 8
  %.reload37 = load double, ptr %.reg2mem36, align 8
  store double %.reload33, ptr %.reg2mem91, align 8
  store double %.reload37, ptr %.reg2mem93, align 8
  store i32 %.reload21, ptr %.reg2mem95, align 4
  br label %17

56:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 3200, ptr nonnull %3) #5
  %57 = load ptr, ptr @stderr, align 4, !tbaa !13
  store ptr %57, ptr %.reg2mem13, align 4
  %.reload19 = load ptr, ptr %.reg2mem13, align 4
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload19, ptr noundef nonnull @.str) #4
  %.reload18 = load ptr, ptr %.reg2mem13, align 4
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i32 0, ptr %.reg2mem81, align 4
  br label %60

60:                                               ; preds = %._crit_edge7, %56
  %.reload82 = load i32, ptr %.reg2mem81, align 4
  store i32 %.reload82, ptr %.reg2mem9, align 4
  %.reload12 = load i32, ptr %.reg2mem9, align 4
  %61 = trunc nuw i32 %.reload12 to i16
  %62 = urem i16 %61, 20
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %._crit_edge6

._crit_edge6:                                     ; preds = %60
  br label %66

64:                                               ; preds = %60
  %.reload14 = load ptr, ptr %.reg2mem13, align 4
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload14, ptr noundef nonnull @.str.3) #4
  br label %66

66:                                               ; preds = %._crit_edge6, %64
  %.reload11 = load i32, ptr %.reg2mem9, align 4
  %.reload68 = load ptr, ptr %.reg2mem67, align 4
  %67 = getelementptr inbounds double, ptr %.reload68, i32 %.reload11
  %68 = load double, ptr %67, align 8, !tbaa !2
  %.reload17 = load ptr, ptr %.reg2mem13, align 4
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload17, ptr noundef nonnull @.str.4, double noundef %68) #4
  %.reload10 = load i32, ptr %.reg2mem9, align 4
  %70 = add nuw nsw i32 %.reload10, 1
  store i32 %70, ptr %.reg2mem, align 4
  %.reload8 = load i32, ptr %.reg2mem, align 4
  %71 = icmp eq i32 %.reload8, 400
  br i1 %71, label %72, label %._crit_edge7, !llvm.loop !15

._crit_edge7:                                     ; preds = %66
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem81, align 4
  br label %60

72:                                               ; preds = %66
  %.reload16 = load ptr, ptr %.reg2mem13, align 4
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %.reload15 = load ptr, ptr %.reg2mem13, align 4
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload15, ptr noundef nonnull @.str.6) #4
  %.reload80 = load ptr, ptr %.reg2mem75, align 4
  tail call void @free(ptr noundef nonnull %.reload80) #4
  %.reload74 = load ptr, ptr %.reg2mem67, align 4
  tail call void @free(ptr noundef nonnull %.reload74) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = distinct !{!15, !7, !8}
