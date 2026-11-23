; ModuleID = './polybench-output/wasm/no-phis/bicg.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/kernels/bicg/bicg.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem14 = alloca i32, align 4
  %.reg2mem18 = alloca i32, align 4
  %.reg2mem21 = alloca i32, align 4
  %.reg2mem25 = alloca ptr, align 4
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem42 = alloca ptr, align 4
  %.reg2mem44 = alloca ptr, align 4
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem59 = alloca i32, align 4
  %.reg2mem63 = alloca i32, align 4
  %.reg2mem69 = alloca i32, align 4
  %.reg2mem72 = alloca ptr, align 4
  %.reg2mem76 = alloca ptr, align 4
  %.reg2mem80 = alloca ptr, align 4
  %.reg2mem84 = alloca ptr, align 4
  %.reg2mem89 = alloca ptr, align 4
  %.reg2mem93 = alloca i32, align 4
  %.reg2mem95 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %.reg2mem99 = alloca i32, align 4
  %.reg2mem101 = alloca i32, align 4
  %.reg2mem103 = alloca i32, align 4
  %.reg2mem105 = alloca i32, align 4
  %.reg2mem107 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 159900, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem89, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 390, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem84, align 4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 410, i32 noundef 8) #3
  store ptr %5, ptr %.reg2mem80, align 4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 390, i32 noundef 8) #3
  store ptr %6, ptr %.reg2mem76, align 4
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 410, i32 noundef 8) #3
  store ptr %7, ptr %.reg2mem72, align 4
  store i32 0, ptr %.reg2mem107, align 4
  br label %8

8:                                                ; preds = %._crit_edge1, %2
  %.reload108 = load i32, ptr %.reg2mem107, align 4
  %9 = uitofp nneg i32 %.reload108 to double
  %10 = fdiv double %9, 3.900000e+02
  %.reload78 = load ptr, ptr %.reg2mem76, align 4
  %11 = getelementptr inbounds double, ptr %.reload78, i32 %.reload108
  store double %10, ptr %11, align 8, !tbaa !2
  %12 = add nuw nsw i32 %.reload108, 1
  store i32 %12, ptr %.reg2mem69, align 4
  %.reload71 = load i32, ptr %.reg2mem69, align 4
  %13 = icmp eq i32 %.reload71, 390
  br i1 %13, label %._crit_edge, label %._crit_edge1, !llvm.loop !6

._crit_edge1:                                     ; preds = %8
  %.reload70 = load i32, ptr %.reg2mem69, align 4
  store i32 %.reload70, ptr %.reg2mem107, align 4
  br label %8

._crit_edge:                                      ; preds = %8
  store i32 0, ptr %.reg2mem105, align 4
  br label %14

14:                                               ; preds = %._crit_edge4, %._crit_edge
  %.reload106 = load i32, ptr %.reg2mem105, align 4
  store i32 %.reload106, ptr %.reg2mem63, align 4
  %.reload68 = load i32, ptr %.reg2mem63, align 4
  %15 = uitofp nneg i32 %.reload68 to double
  %16 = fdiv double %15, 4.100000e+02
  %.reload67 = load i32, ptr %.reg2mem63, align 4
  %.reload74 = load ptr, ptr %.reg2mem72, align 4
  %17 = getelementptr inbounds double, ptr %.reload74, i32 %.reload67
  store double %16, ptr %17, align 8, !tbaa !2
  store i32 0, ptr %.reg2mem103, align 4
  br label %18

18:                                               ; preds = %._crit_edge2, %14
  %.reload104 = load i32, ptr %.reg2mem103, align 4
  %19 = add nuw nsw i32 %.reload104, 1
  store i32 %19, ptr %.reg2mem59, align 4
  %.reload62 = load i32, ptr %.reg2mem59, align 4
  %.reload66 = load i32, ptr %.reg2mem63, align 4
  %20 = mul nuw nsw i32 %.reload62, %.reload66
  %21 = urem i32 %20, 410
  %22 = uitofp nneg i32 %21 to double
  %23 = fdiv double %22, 4.100000e+02
  %.reload65 = load i32, ptr %.reg2mem63, align 4
  %.reload91 = load ptr, ptr %.reg2mem89, align 4
  %24 = getelementptr inbounds [390 x double], ptr %.reload91, i32 %.reload65, i32 %.reload104
  store double %23, ptr %24, align 8, !tbaa !2
  %.reload61 = load i32, ptr %.reg2mem59, align 4
  %25 = icmp eq i32 %.reload61, 390
  br i1 %25, label %26, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %18
  %.reload60 = load i32, ptr %.reg2mem59, align 4
  store i32 %.reload60, ptr %.reg2mem103, align 4
  br label %18

26:                                               ; preds = %18
  %.reload64 = load i32, ptr %.reg2mem63, align 4
  %27 = add nuw nsw i32 %.reload64, 1
  store i32 %27, ptr %.reg2mem56, align 4
  %.reload58 = load i32, ptr %.reg2mem56, align 4
  %28 = icmp eq i32 %.reload58, 410
  br i1 %28, label %._crit_edge3, label %._crit_edge4, !llvm.loop !10

._crit_edge4:                                     ; preds = %26
  %.reload57 = load i32, ptr %.reg2mem56, align 4
  store i32 %.reload57, ptr %.reg2mem105, align 4
  br label %14

._crit_edge3:                                     ; preds = %26
  store i32 0, ptr %.reg2mem101, align 4
  br label %29

29:                                               ; preds = %._crit_edge6, %._crit_edge3
  %.reload102 = load i32, ptr %.reg2mem101, align 4
  %.reload87 = load ptr, ptr %.reg2mem84, align 4
  %30 = getelementptr inbounds double, ptr %.reload87, i32 %.reload102
  store double 0.000000e+00, ptr %30, align 8, !tbaa !2
  %31 = add nuw nsw i32 %.reload102, 1
  store i32 %31, ptr %.reg2mem53, align 4
  %.reload55 = load i32, ptr %.reg2mem53, align 4
  %32 = icmp eq i32 %.reload55, 390
  br i1 %32, label %._crit_edge5, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %29
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  store i32 %.reload54, ptr %.reg2mem101, align 4
  br label %29

._crit_edge5:                                     ; preds = %29
  store i32 0, ptr %.reg2mem99, align 4
  br label %33

33:                                               ; preds = %._crit_edge8, %._crit_edge5
  %.reload100 = load i32, ptr %.reg2mem99, align 4
  store i32 %.reload100, ptr %.reg2mem48, align 4
  %.reload52 = load i32, ptr %.reg2mem48, align 4
  %.reload82 = load ptr, ptr %.reg2mem80, align 4
  %34 = getelementptr inbounds double, ptr %.reload82, i32 %.reload52
  store ptr %34, ptr %.reg2mem44, align 4
  %.reload47 = load ptr, ptr %.reg2mem44, align 4
  store double 0.000000e+00, ptr %.reload47, align 8, !tbaa !2
  %.reload51 = load i32, ptr %.reg2mem48, align 4
  %.reload73 = load ptr, ptr %.reg2mem72, align 4
  %35 = getelementptr inbounds double, ptr %.reload73, i32 %.reload51
  store ptr %35, ptr %.reg2mem42, align 4
  store i32 0, ptr %.reg2mem97, align 4
  br label %36

36:                                               ; preds = %._crit_edge7, %33
  %.reload98 = load i32, ptr %.reg2mem97, align 4
  %.reload86 = load ptr, ptr %.reg2mem84, align 4
  %37 = getelementptr inbounds double, ptr %.reload86, i32 %.reload98
  %38 = load double, ptr %37, align 8, !tbaa !2
  %.reload43 = load ptr, ptr %.reg2mem42, align 4
  %39 = load double, ptr %.reload43, align 8, !tbaa !2
  %.reload50 = load i32, ptr %.reg2mem48, align 4
  %.reload90 = load ptr, ptr %.reg2mem89, align 4
  %40 = getelementptr inbounds [390 x double], ptr %.reload90, i32 %.reload50, i32 %.reload98
  %41 = load double, ptr %40, align 8, !tbaa !2
  %42 = tail call double @llvm.fmuladd.f64(double %39, double %41, double %38)
  store double %42, ptr %37, align 8, !tbaa !2
  %.reload46 = load ptr, ptr %.reg2mem44, align 4
  %43 = load double, ptr %.reload46, align 8, !tbaa !2
  %44 = load double, ptr %40, align 8, !tbaa !2
  %.reload77 = load ptr, ptr %.reg2mem76, align 4
  %45 = getelementptr inbounds double, ptr %.reload77, i32 %.reload98
  %46 = load double, ptr %45, align 8, !tbaa !2
  %47 = tail call double @llvm.fmuladd.f64(double %44, double %46, double %43)
  %.reload45 = load ptr, ptr %.reg2mem44, align 4
  store double %47, ptr %.reload45, align 8, !tbaa !2
  %48 = add nuw nsw i32 %.reload98, 1
  store i32 %48, ptr %.reg2mem39, align 4
  %.reload41 = load i32, ptr %.reg2mem39, align 4
  %49 = icmp eq i32 %.reload41, 390
  br i1 %49, label %50, label %._crit_edge7, !llvm.loop !12

._crit_edge7:                                     ; preds = %36
  %.reload40 = load i32, ptr %.reg2mem39, align 4
  store i32 %.reload40, ptr %.reg2mem97, align 4
  br label %36

50:                                               ; preds = %36
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  %51 = add nuw nsw i32 %.reload49, 1
  store i32 %51, ptr %.reg2mem36, align 4
  %.reload38 = load i32, ptr %.reg2mem36, align 4
  %52 = icmp eq i32 %.reload38, 410
  br i1 %52, label %53, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %50
  %.reload37 = load i32, ptr %.reg2mem36, align 4
  store i32 %.reload37, ptr %.reg2mem99, align 4
  br label %33

53:                                               ; preds = %50
  %54 = load ptr, ptr @stderr, align 4, !tbaa !14
  store ptr %54, ptr %.reg2mem25, align 4
  %.reload35 = load ptr, ptr %.reg2mem25, align 4
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload35, ptr noundef nonnull @.str) #3
  %.reload34 = load ptr, ptr %.reg2mem25, align 4
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload34, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem95, align 4
  br label %57

57:                                               ; preds = %._crit_edge10, %53
  %.reload96 = load i32, ptr %.reg2mem95, align 4
  store i32 %.reload96, ptr %.reg2mem21, align 4
  %.reload24 = load i32, ptr %.reg2mem21, align 4
  %58 = trunc nuw i32 %.reload24 to i16
  %59 = urem i16 %58, 20
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %._crit_edge9

._crit_edge9:                                     ; preds = %57
  br label %63

61:                                               ; preds = %57
  %.reload26 = load ptr, ptr %.reg2mem25, align 4
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload26, ptr noundef nonnull @.str.3) #3
  br label %63

63:                                               ; preds = %._crit_edge9, %61
  %.reload23 = load i32, ptr %.reg2mem21, align 4
  %.reload85 = load ptr, ptr %.reg2mem84, align 4
  %64 = getelementptr inbounds double, ptr %.reload85, i32 %.reload23
  %65 = load double, ptr %64, align 8, !tbaa !2
  %.reload33 = load ptr, ptr %.reg2mem25, align 4
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload33, ptr noundef nonnull @.str.4, double noundef %65) #3
  %.reload22 = load i32, ptr %.reg2mem21, align 4
  %67 = add nuw nsw i32 %.reload22, 1
  store i32 %67, ptr %.reg2mem18, align 4
  %.reload20 = load i32, ptr %.reg2mem18, align 4
  %68 = icmp eq i32 %.reload20, 390
  br i1 %68, label %69, label %._crit_edge10, !llvm.loop !16

._crit_edge10:                                    ; preds = %63
  %.reload19 = load i32, ptr %.reg2mem18, align 4
  store i32 %.reload19, ptr %.reg2mem95, align 4
  br label %57

69:                                               ; preds = %63
  %.reload32 = load ptr, ptr %.reg2mem25, align 4
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload31 = load ptr, ptr %.reg2mem25, align 4
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload31, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #3
  store i32 0, ptr %.reg2mem93, align 4
  br label %72

72:                                               ; preds = %._crit_edge12, %69
  %.reload94 = load i32, ptr %.reg2mem93, align 4
  store i32 %.reload94, ptr %.reg2mem14, align 4
  %.reload17 = load i32, ptr %.reg2mem14, align 4
  %73 = trunc nuw i32 %.reload17 to i16
  %74 = urem i16 %73, 20
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %._crit_edge11

._crit_edge11:                                    ; preds = %72
  br label %78

76:                                               ; preds = %72
  %.reload27 = load ptr, ptr %.reg2mem25, align 4
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload27, ptr noundef nonnull @.str.3) #3
  br label %78

78:                                               ; preds = %._crit_edge11, %76
  %.reload16 = load i32, ptr %.reg2mem14, align 4
  %.reload81 = load ptr, ptr %.reg2mem80, align 4
  %79 = getelementptr inbounds double, ptr %.reload81, i32 %.reload16
  %80 = load double, ptr %79, align 8, !tbaa !2
  %.reload30 = load ptr, ptr %.reg2mem25, align 4
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload30, ptr noundef nonnull @.str.4, double noundef %80) #3
  %.reload15 = load i32, ptr %.reg2mem14, align 4
  %82 = add nuw nsw i32 %.reload15, 1
  store i32 %82, ptr %.reg2mem, align 4
  %.reload13 = load i32, ptr %.reg2mem, align 4
  %83 = icmp eq i32 %.reload13, 410
  br i1 %83, label %84, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %78
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem93, align 4
  br label %72

84:                                               ; preds = %78
  %.reload29 = load ptr, ptr %.reg2mem25, align 4
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload29, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %.reload28 = load ptr, ptr %.reg2mem25, align 4
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload28, ptr noundef nonnull @.str.7) #3
  %.reload92 = load ptr, ptr %.reg2mem89, align 4
  tail call void @free(ptr noundef %.reload92) #3
  %.reload88 = load ptr, ptr %.reg2mem84, align 4
  tail call void @free(ptr noundef %.reload88) #3
  %.reload83 = load ptr, ptr %.reg2mem80, align 4
  tail call void @free(ptr noundef nonnull %.reload83) #3
  %.reload79 = load ptr, ptr %.reg2mem76, align 4
  tail call void @free(ptr noundef %.reload79) #3
  %.reload75 = load ptr, ptr %.reg2mem72, align 4
  tail call void @free(ptr noundef %.reload75) #3
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
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = distinct !{!16, !7, !8}
!17 = distinct !{!17, !7, !8}
