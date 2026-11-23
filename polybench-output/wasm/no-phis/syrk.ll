; ModuleID = './polybench-output/wasm/no-phis/syrk.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/blas/syrk/syrk.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem15 = alloca i32, align 4
  %.reg2mem18 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem28 = alloca ptr, align 4
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem37 = alloca i32, align 4
  %.reg2mem40 = alloca i32, align 4
  %.reg2mem43 = alloca i32, align 4
  %.reg2mem46 = alloca ptr, align 4
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem55 = alloca i32, align 4
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem64 = alloca i32, align 4
  %.reg2mem67 = alloca i32, align 4
  %.reg2mem70 = alloca i32, align 4
  %.reg2mem74 = alloca i32, align 4
  %.reg2mem77 = alloca i32, align 4
  %.reg2mem80 = alloca i32, align 4
  %.reg2mem84 = alloca ptr, align 4
  %.reg2mem89 = alloca ptr, align 4
  %.reg2mem95 = alloca i32, align 4
  %.reg2mem97 = alloca i32, align 4
  %.reg2mem99 = alloca i32, align 4
  %.reg2mem101 = alloca i32, align 4
  %.reg2mem103 = alloca i32, align 4
  %.reg2mem105 = alloca i32, align 4
  %.reg2mem107 = alloca i32, align 4
  %.reg2mem109 = alloca i32, align 4
  %.reg2mem111 = alloca i32, align 4
  %.reg2mem113 = alloca i32, align 4
  %.reg2mem115 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 57600, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem89, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem84, align 4
  store i32 0, ptr %.reg2mem115, align 4
  br label %5

5:                                                ; preds = %._crit_edge2, %2
  %.reload116 = load i32, ptr %.reg2mem115, align 4
  store i32 %.reload116, ptr %.reg2mem80, align 4
  store i32 0, ptr %.reg2mem113, align 4
  br label %6

6:                                                ; preds = %._crit_edge, %5
  %.reload114 = load i32, ptr %.reg2mem113, align 4
  %.reload83 = load i32, ptr %.reg2mem80, align 4
  %7 = mul nuw nsw i32 %.reload114, %.reload83
  %8 = add nuw nsw i32 %7, 1
  %9 = urem i32 %8, 240
  %10 = uitofp nneg i32 %9 to double
  %11 = fdiv double %10, 2.400000e+02
  %.reload82 = load i32, ptr %.reg2mem80, align 4
  %.reload87 = load ptr, ptr %.reg2mem84, align 4
  %12 = getelementptr inbounds [200 x double], ptr %.reload87, i32 %.reload82, i32 %.reload114
  store double %11, ptr %12, align 8, !tbaa !2
  %13 = add nuw nsw i32 %.reload114, 1
  store i32 %13, ptr %.reg2mem77, align 4
  %.reload79 = load i32, ptr %.reg2mem77, align 4
  %14 = icmp eq i32 %.reload79, 200
  br i1 %14, label %15, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %6
  %.reload78 = load i32, ptr %.reg2mem77, align 4
  store i32 %.reload78, ptr %.reg2mem113, align 4
  br label %6

15:                                               ; preds = %6
  %.reload81 = load i32, ptr %.reg2mem80, align 4
  %16 = add nuw nsw i32 %.reload81, 1
  store i32 %16, ptr %.reg2mem74, align 4
  %.reload76 = load i32, ptr %.reg2mem74, align 4
  %17 = icmp eq i32 %.reload76, 240
  br i1 %17, label %._crit_edge1, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %15
  %.reload75 = load i32, ptr %.reg2mem74, align 4
  store i32 %.reload75, ptr %.reg2mem115, align 4
  br label %5

._crit_edge1:                                     ; preds = %15
  store i32 0, ptr %.reg2mem111, align 4
  br label %18

18:                                               ; preds = %._crit_edge5, %._crit_edge1
  %.reload112 = load i32, ptr %.reg2mem111, align 4
  store i32 %.reload112, ptr %.reg2mem70, align 4
  store i32 0, ptr %.reg2mem109, align 4
  br label %19

19:                                               ; preds = %._crit_edge3, %18
  %.reload110 = load i32, ptr %.reg2mem109, align 4
  %.reload73 = load i32, ptr %.reg2mem70, align 4
  %20 = mul nuw nsw i32 %.reload110, %.reload73
  %21 = add nuw nsw i32 %20, 2
  %22 = urem i32 %21, 200
  %23 = uitofp nneg i32 %22 to double
  %24 = fdiv double %23, 2.000000e+02
  %.reload72 = load i32, ptr %.reg2mem70, align 4
  %.reload93 = load ptr, ptr %.reg2mem89, align 4
  %25 = getelementptr inbounds [240 x double], ptr %.reload93, i32 %.reload72, i32 %.reload110
  store double %24, ptr %25, align 8, !tbaa !2
  %26 = add nuw nsw i32 %.reload110, 1
  store i32 %26, ptr %.reg2mem67, align 4
  %.reload69 = load i32, ptr %.reg2mem67, align 4
  %27 = icmp eq i32 %.reload69, 240
  br i1 %27, label %28, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %19
  %.reload68 = load i32, ptr %.reg2mem67, align 4
  store i32 %.reload68, ptr %.reg2mem109, align 4
  br label %19

28:                                               ; preds = %19
  %.reload71 = load i32, ptr %.reg2mem70, align 4
  %29 = add nuw nsw i32 %.reload71, 1
  store i32 %29, ptr %.reg2mem64, align 4
  %.reload66 = load i32, ptr %.reg2mem64, align 4
  %30 = icmp eq i32 %.reload66, 240
  br i1 %30, label %._crit_edge4, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %28
  %.reload65 = load i32, ptr %.reg2mem64, align 4
  store i32 %.reload65, ptr %.reg2mem111, align 4
  br label %18

._crit_edge4:                                     ; preds = %28
  store i32 0, ptr %.reg2mem105, align 4
  store i32 1, ptr %.reg2mem107, align 4
  br label %31

31:                                               ; preds = %._crit_edge10, %._crit_edge4
  %.reload108 = load i32, ptr %.reg2mem107, align 4
  %.reload106 = load i32, ptr %.reg2mem105, align 4
  store i32 %.reload108, ptr %.reg2mem60, align 4
  store i32 %.reload106, ptr %.reg2mem55, align 4
  store i32 0, ptr %.reg2mem103, align 4
  br label %32

32:                                               ; preds = %._crit_edge7, %31
  %.reload104 = load i32, ptr %.reg2mem103, align 4
  %.reload59 = load i32, ptr %.reg2mem55, align 4
  %.reload92 = load ptr, ptr %.reg2mem89, align 4
  %33 = getelementptr inbounds [240 x double], ptr %.reload92, i32 %.reload59, i32 %.reload104
  %34 = load double, ptr %33, align 8, !tbaa !2
  %35 = fmul double %34, 1.200000e+00
  store double %35, ptr %33, align 8, !tbaa !2
  %36 = add nuw nsw i32 %.reload104, 1
  store i32 %36, ptr %.reg2mem52, align 4
  %.reload54 = load i32, ptr %.reg2mem52, align 4
  %.reload63 = load i32, ptr %.reg2mem60, align 4
  %37 = icmp eq i32 %.reload54, %.reload63
  br i1 %37, label %._crit_edge6, label %._crit_edge7, !llvm.loop !12

._crit_edge7:                                     ; preds = %32
  %.reload53 = load i32, ptr %.reg2mem52, align 4
  store i32 %.reload53, ptr %.reg2mem103, align 4
  br label %32

._crit_edge6:                                     ; preds = %32
  store i32 0, ptr %.reg2mem101, align 4
  br label %38

38:                                               ; preds = %._crit_edge9, %._crit_edge6
  %.reload102 = load i32, ptr %.reg2mem101, align 4
  store i32 %.reload102, ptr %.reg2mem48, align 4
  %.reload51 = load i32, ptr %.reg2mem48, align 4
  %.reload58 = load i32, ptr %.reg2mem55, align 4
  %.reload86 = load ptr, ptr %.reg2mem84, align 4
  %39 = getelementptr inbounds [200 x double], ptr %.reload86, i32 %.reload58, i32 %.reload51
  store ptr %39, ptr %.reg2mem46, align 4
  store i32 0, ptr %.reg2mem99, align 4
  br label %40

40:                                               ; preds = %._crit_edge8, %38
  %.reload100 = load i32, ptr %.reg2mem99, align 4
  %.reload47 = load ptr, ptr %.reg2mem46, align 4
  %41 = load double, ptr %.reload47, align 8, !tbaa !2
  %42 = fmul double %41, 1.500000e+00
  %.reload50 = load i32, ptr %.reg2mem48, align 4
  %.reload85 = load ptr, ptr %.reg2mem84, align 4
  %43 = getelementptr inbounds [200 x double], ptr %.reload85, i32 %.reload100, i32 %.reload50
  %44 = load double, ptr %43, align 8, !tbaa !2
  %.reload57 = load i32, ptr %.reg2mem55, align 4
  %.reload91 = load ptr, ptr %.reg2mem89, align 4
  %45 = getelementptr inbounds [240 x double], ptr %.reload91, i32 %.reload57, i32 %.reload100
  %46 = load double, ptr %45, align 8, !tbaa !2
  %47 = tail call double @llvm.fmuladd.f64(double %42, double %44, double %46)
  store double %47, ptr %45, align 8, !tbaa !2
  %48 = add nuw nsw i32 %.reload100, 1
  store i32 %48, ptr %.reg2mem43, align 4
  %.reload45 = load i32, ptr %.reg2mem43, align 4
  %.reload62 = load i32, ptr %.reg2mem60, align 4
  %49 = icmp eq i32 %.reload45, %.reload62
  br i1 %49, label %50, label %._crit_edge8, !llvm.loop !13

._crit_edge8:                                     ; preds = %40
  %.reload44 = load i32, ptr %.reg2mem43, align 4
  store i32 %.reload44, ptr %.reg2mem99, align 4
  br label %40

50:                                               ; preds = %40
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  %51 = add nuw nsw i32 %.reload49, 1
  store i32 %51, ptr %.reg2mem40, align 4
  %.reload42 = load i32, ptr %.reg2mem40, align 4
  %52 = icmp eq i32 %.reload42, 200
  br i1 %52, label %53, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %50
  %.reload41 = load i32, ptr %.reg2mem40, align 4
  store i32 %.reload41, ptr %.reg2mem101, align 4
  br label %38

53:                                               ; preds = %50
  %.reload56 = load i32, ptr %.reg2mem55, align 4
  %54 = add nuw nsw i32 %.reload56, 1
  store i32 %54, ptr %.reg2mem37, align 4
  %.reload61 = load i32, ptr %.reg2mem60, align 4
  %55 = add nuw nsw i32 %.reload61, 1
  store i32 %55, ptr %.reg2mem35, align 4
  %.reload39 = load i32, ptr %.reg2mem37, align 4
  %56 = icmp eq i32 %.reload39, 240
  br i1 %56, label %57, label %._crit_edge10, !llvm.loop !15

._crit_edge10:                                    ; preds = %53
  %.reload36 = load i32, ptr %.reg2mem35, align 4
  %.reload38 = load i32, ptr %.reg2mem37, align 4
  store i32 %.reload38, ptr %.reg2mem105, align 4
  store i32 %.reload36, ptr %.reg2mem107, align 4
  br label %31

57:                                               ; preds = %53
  %58 = load ptr, ptr @stderr, align 4, !tbaa !16
  store ptr %58, ptr %.reg2mem28, align 4
  %.reload34 = load ptr, ptr %.reg2mem28, align 4
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload34, ptr noundef nonnull @.str) #3
  %.reload33 = load ptr, ptr %.reg2mem28, align 4
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload33, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem97, align 4
  br label %61

61:                                               ; preds = %._crit_edge13, %57
  %.reload98 = load i32, ptr %.reg2mem97, align 4
  store i32 %.reload98, ptr %.reg2mem24, align 4
  %.reload27 = load i32, ptr %.reg2mem24, align 4
  %62 = mul nuw nsw i32 %.reload27, 240
  store i32 %62, ptr %.reg2mem22, align 4
  store i32 0, ptr %.reg2mem95, align 4
  br label %63

63:                                               ; preds = %._crit_edge12, %61
  %.reload96 = load i32, ptr %.reg2mem95, align 4
  store i32 %.reload96, ptr %.reg2mem18, align 4
  %.reload21 = load i32, ptr %.reg2mem18, align 4
  %.reload23 = load i32, ptr %.reg2mem22, align 4
  %64 = add nuw nsw i32 %.reload21, %.reload23
  %65 = urem i32 %64, 20
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %._crit_edge11

._crit_edge11:                                    ; preds = %63
  br label %69

67:                                               ; preds = %63
  %.reload29 = load ptr, ptr %.reg2mem28, align 4
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload29, ptr noundef nonnull @.str.3) #3
  br label %69

69:                                               ; preds = %._crit_edge11, %67
  %.reload20 = load i32, ptr %.reg2mem18, align 4
  %.reload26 = load i32, ptr %.reg2mem24, align 4
  %.reload90 = load ptr, ptr %.reg2mem89, align 4
  %70 = getelementptr inbounds [240 x double], ptr %.reload90, i32 %.reload26, i32 %.reload20
  %71 = load double, ptr %70, align 8, !tbaa !2
  %.reload32 = load ptr, ptr %.reg2mem28, align 4
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload32, ptr noundef nonnull @.str.4, double noundef %71) #3
  %.reload19 = load i32, ptr %.reg2mem18, align 4
  %73 = add nuw nsw i32 %.reload19, 1
  store i32 %73, ptr %.reg2mem15, align 4
  %.reload17 = load i32, ptr %.reg2mem15, align 4
  %74 = icmp eq i32 %.reload17, 240
  br i1 %74, label %75, label %._crit_edge12, !llvm.loop !18

._crit_edge12:                                    ; preds = %69
  %.reload16 = load i32, ptr %.reg2mem15, align 4
  store i32 %.reload16, ptr %.reg2mem95, align 4
  br label %63

75:                                               ; preds = %69
  %.reload25 = load i32, ptr %.reg2mem24, align 4
  %76 = add nuw nsw i32 %.reload25, 1
  store i32 %76, ptr %.reg2mem, align 4
  %.reload14 = load i32, ptr %.reg2mem, align 4
  %77 = icmp eq i32 %.reload14, 240
  br i1 %77, label %78, label %._crit_edge13, !llvm.loop !19

._crit_edge13:                                    ; preds = %75
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem97, align 4
  br label %61

78:                                               ; preds = %75
  %.reload31 = load ptr, ptr %.reg2mem28, align 4
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload30 = load ptr, ptr %.reg2mem28, align 4
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload30, ptr noundef nonnull @.str.6) #3
  %.reload94 = load ptr, ptr %.reg2mem89, align 4
  tail call void @free(ptr noundef nonnull %.reload94) #3
  %.reload88 = load ptr, ptr %.reg2mem84, align 4
  tail call void @free(ptr noundef %.reload88) #3
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
!15 = distinct !{!15, !7, !8}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !7, !8}
