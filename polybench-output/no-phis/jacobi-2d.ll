; ModuleID = './polybench-output/no-phis/jacobi-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-2d/jacobi-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i64, align 8
  %.reg2mem13 = alloca i64, align 8
  %.reg2mem16 = alloca i64, align 8
  %.reg2mem20 = alloca i64, align 8
  %.reg2mem22 = alloca i64, align 8
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem29 = alloca i64, align 8
  %.reg2mem32 = alloca i64, align 8
  %.reg2mem36 = alloca ptr, align 8
  %.reg2mem38 = alloca ptr, align 8
  %.reg2mem40 = alloca i64, align 8
  %.reg2mem47 = alloca i64, align 8
  %.reg2mem50 = alloca i64, align 8
  %.reg2mem54 = alloca ptr, align 8
  %.reg2mem56 = alloca ptr, align 8
  %.reg2mem58 = alloca i64, align 8
  %.reg2mem65 = alloca i32, align 4
  %.reg2mem67 = alloca i64, align 8
  %.reg2mem70 = alloca i64, align 8
  %.reg2mem73 = alloca double, align 8
  %.reg2mem76 = alloca i64, align 8
  %.reg2mem81 = alloca ptr, align 8
  %.reg2mem89 = alloca ptr, align 8
  %.reg2mem98 = alloca i64, align 8
  %.reg2mem100 = alloca i64, align 8
  %.reg2mem102 = alloca i64, align 8
  %.reg2mem104 = alloca i64, align 8
  %.reg2mem106 = alloca i64, align 8
  %.reg2mem108 = alloca i64, align 8
  %.reg2mem110 = alloca i32, align 4
  %.reg2mem112 = alloca i64, align 8
  %.reg2mem114 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #4
  store ptr %3, ptr %.reg2mem89, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 62500, i32 noundef 8) #4
  store ptr %4, ptr %.reg2mem81, align 8
  store i64 0, ptr %.reg2mem114, align 8
  br label %5

5:                                                ; preds = %._crit_edge2, %2
  %.reload115 = load i64, ptr %.reg2mem114, align 8
  store i64 %.reload115, ptr %.reg2mem76, align 8
  %.reload80 = load i64, ptr %.reg2mem76, align 8
  %6 = trunc nuw nsw i64 %.reload80 to i32
  %7 = uitofp nneg i32 %6 to double
  store double %7, ptr %.reg2mem73, align 8
  store i64 0, ptr %.reg2mem112, align 8
  br label %8

8:                                                ; preds = %._crit_edge, %5
  %.reload113 = load i64, ptr %.reg2mem112, align 8
  %9 = trunc i64 %.reload113 to i32
  %10 = add i32 %9, 2
  %11 = uitofp nneg i32 %10 to double
  %.reload75 = load double, ptr %.reg2mem73, align 8
  %12 = tail call double @llvm.fmuladd.f64(double %.reload75, double %11, double 2.000000e+00)
  %13 = fdiv double %12, 2.500000e+02
  %.reload79 = load i64, ptr %.reg2mem76, align 8
  %.reload96 = load ptr, ptr %.reg2mem89, align 8
  %14 = getelementptr inbounds [250 x double], ptr %.reload96, i64 %.reload79, i64 %.reload113
  store double %13, ptr %14, align 8, !tbaa !5
  %15 = add i32 %9, 3
  %16 = uitofp nneg i32 %15 to double
  %.reload74 = load double, ptr %.reg2mem73, align 8
  %17 = tail call double @llvm.fmuladd.f64(double %.reload74, double %16, double 3.000000e+00)
  %18 = fdiv double %17, 2.500000e+02
  %.reload78 = load i64, ptr %.reg2mem76, align 8
  %.reload87 = load ptr, ptr %.reg2mem81, align 8
  %19 = getelementptr inbounds [250 x double], ptr %.reload87, i64 %.reload78, i64 %.reload113
  store double %18, ptr %19, align 8, !tbaa !5
  %20 = add nuw nsw i64 %.reload113, 1
  store i64 %20, ptr %.reg2mem70, align 8
  %.reload72 = load i64, ptr %.reg2mem70, align 8
  %21 = icmp eq i64 %.reload72, 250
  br i1 %21, label %22, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %8
  %.reload71 = load i64, ptr %.reg2mem70, align 8
  store i64 %.reload71, ptr %.reg2mem112, align 8
  br label %8

22:                                               ; preds = %8
  %.reload77 = load i64, ptr %.reg2mem76, align 8
  %23 = add nuw nsw i64 %.reload77, 1
  store i64 %23, ptr %.reg2mem67, align 8
  %.reload69 = load i64, ptr %.reg2mem67, align 8
  %24 = icmp eq i64 %.reload69, 250
  br i1 %24, label %._crit_edge1, label %._crit_edge2, !llvm.loop !12

._crit_edge2:                                     ; preds = %22
  %.reload68 = load i64, ptr %.reg2mem67, align 8
  store i64 %.reload68, ptr %.reg2mem114, align 8
  br label %5

._crit_edge1:                                     ; preds = %22
  store i32 0, ptr %.reg2mem110, align 4
  br label %25

25:                                               ; preds = %._crit_edge8, %._crit_edge1
  %.reload111 = load i32, ptr %.reg2mem110, align 4
  store i32 %.reload111, ptr %.reg2mem65, align 4
  store i64 1, ptr %.reg2mem108, align 8
  br label %26

26:                                               ; preds = %._crit_edge5, %25
  %.reload109 = load i64, ptr %.reg2mem108, align 8
  store i64 %.reload109, ptr %.reg2mem58, align 8
  %.reload64 = load i64, ptr %.reg2mem58, align 8
  %.reload95 = load ptr, ptr %.reg2mem89, align 8
  %27 = getelementptr inbounds [250 x double], ptr %.reload95, i64 %.reload64
  %28 = getelementptr inbounds i8, ptr %27, i64 2000
  store ptr %28, ptr %.reg2mem56, align 8
  %29 = getelementptr i8, ptr %27, i64 -2000
  store ptr %29, ptr %.reg2mem54, align 8
  store i64 1, ptr %.reg2mem106, align 8
  br label %30

30:                                               ; preds = %._crit_edge3, %26
  %.reload107 = load i64, ptr %.reg2mem106, align 8
  %.reload63 = load i64, ptr %.reg2mem58, align 8
  %.reload94 = load ptr, ptr %.reg2mem89, align 8
  %31 = getelementptr inbounds [250 x double], ptr %.reload94, i64 %.reload63, i64 %.reload107
  %32 = load double, ptr %31, align 8, !tbaa !5
  %33 = add nsw i64 %.reload107, -1
  %.reload62 = load i64, ptr %.reg2mem58, align 8
  %.reload93 = load ptr, ptr %.reg2mem89, align 8
  %34 = getelementptr inbounds [250 x double], ptr %.reload93, i64 %.reload62, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !5
  %36 = fadd double %32, %35
  %37 = add nuw nsw i64 %.reload107, 1
  store i64 %37, ptr %.reg2mem50, align 8
  %.reload53 = load i64, ptr %.reg2mem50, align 8
  %.reload61 = load i64, ptr %.reg2mem58, align 8
  %.reload92 = load ptr, ptr %.reg2mem89, align 8
  %38 = getelementptr inbounds [250 x double], ptr %.reload92, i64 %.reload61, i64 %.reload53
  %39 = load double, ptr %38, align 8, !tbaa !5
  %40 = fadd double %36, %39
  %.reload57 = load ptr, ptr %.reg2mem56, align 8
  %41 = getelementptr inbounds [250 x double], ptr %.reload57, i64 0, i64 %.reload107
  %42 = load double, ptr %41, align 8, !tbaa !5
  %43 = fadd double %40, %42
  %.reload55 = load ptr, ptr %.reg2mem54, align 8
  %44 = getelementptr inbounds [250 x double], ptr %.reload55, i64 0, i64 %.reload107
  %45 = load double, ptr %44, align 8, !tbaa !5
  %46 = fadd double %43, %45
  %47 = fmul double %46, 2.000000e-01
  %.reload60 = load i64, ptr %.reg2mem58, align 8
  %.reload86 = load ptr, ptr %.reg2mem81, align 8
  %48 = getelementptr inbounds [250 x double], ptr %.reload86, i64 %.reload60, i64 %.reload107
  store double %47, ptr %48, align 8, !tbaa !5
  %.reload52 = load i64, ptr %.reg2mem50, align 8
  %49 = icmp eq i64 %.reload52, 249
  br i1 %49, label %50, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %30
  %.reload51 = load i64, ptr %.reg2mem50, align 8
  store i64 %.reload51, ptr %.reg2mem106, align 8
  br label %30

50:                                               ; preds = %30
  %.reload59 = load i64, ptr %.reg2mem58, align 8
  %51 = add nuw nsw i64 %.reload59, 1
  store i64 %51, ptr %.reg2mem47, align 8
  %.reload49 = load i64, ptr %.reg2mem47, align 8
  %52 = icmp eq i64 %.reload49, 249
  br i1 %52, label %._crit_edge4, label %._crit_edge5, !llvm.loop !14

._crit_edge5:                                     ; preds = %50
  %.reload48 = load i64, ptr %.reg2mem47, align 8
  store i64 %.reload48, ptr %.reg2mem108, align 8
  br label %26

._crit_edge4:                                     ; preds = %50
  store i64 1, ptr %.reg2mem104, align 8
  br label %53

53:                                               ; preds = %._crit_edge7, %._crit_edge4
  %.reload105 = load i64, ptr %.reg2mem104, align 8
  store i64 %.reload105, ptr %.reg2mem40, align 8
  %.reload46 = load i64, ptr %.reg2mem40, align 8
  %.reload85 = load ptr, ptr %.reg2mem81, align 8
  %54 = getelementptr inbounds [250 x double], ptr %.reload85, i64 %.reload46
  %55 = getelementptr inbounds i8, ptr %54, i64 2000
  store ptr %55, ptr %.reg2mem38, align 8
  %56 = getelementptr i8, ptr %54, i64 -2000
  store ptr %56, ptr %.reg2mem36, align 8
  store i64 1, ptr %.reg2mem102, align 8
  br label %57

57:                                               ; preds = %._crit_edge6, %53
  %.reload103 = load i64, ptr %.reg2mem102, align 8
  %.reload45 = load i64, ptr %.reg2mem40, align 8
  %.reload84 = load ptr, ptr %.reg2mem81, align 8
  %58 = getelementptr inbounds [250 x double], ptr %.reload84, i64 %.reload45, i64 %.reload103
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = add nsw i64 %.reload103, -1
  %.reload44 = load i64, ptr %.reg2mem40, align 8
  %.reload83 = load ptr, ptr %.reg2mem81, align 8
  %61 = getelementptr inbounds [250 x double], ptr %.reload83, i64 %.reload44, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = fadd double %59, %62
  %64 = add nuw nsw i64 %.reload103, 1
  store i64 %64, ptr %.reg2mem32, align 8
  %.reload35 = load i64, ptr %.reg2mem32, align 8
  %.reload43 = load i64, ptr %.reg2mem40, align 8
  %.reload82 = load ptr, ptr %.reg2mem81, align 8
  %65 = getelementptr inbounds [250 x double], ptr %.reload82, i64 %.reload43, i64 %.reload35
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = fadd double %63, %66
  %.reload39 = load ptr, ptr %.reg2mem38, align 8
  %68 = getelementptr inbounds [250 x double], ptr %.reload39, i64 0, i64 %.reload103
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = fadd double %67, %69
  %.reload37 = load ptr, ptr %.reg2mem36, align 8
  %71 = getelementptr inbounds [250 x double], ptr %.reload37, i64 0, i64 %.reload103
  %72 = load double, ptr %71, align 8, !tbaa !5
  %73 = fadd double %70, %72
  %74 = fmul double %73, 2.000000e-01
  %.reload42 = load i64, ptr %.reg2mem40, align 8
  %.reload91 = load ptr, ptr %.reg2mem89, align 8
  %75 = getelementptr inbounds [250 x double], ptr %.reload91, i64 %.reload42, i64 %.reload103
  store double %74, ptr %75, align 8, !tbaa !5
  %.reload34 = load i64, ptr %.reg2mem32, align 8
  %76 = icmp eq i64 %.reload34, 249
  br i1 %76, label %77, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %57
  %.reload33 = load i64, ptr %.reg2mem32, align 8
  store i64 %.reload33, ptr %.reg2mem102, align 8
  br label %57

77:                                               ; preds = %57
  %.reload41 = load i64, ptr %.reg2mem40, align 8
  %78 = add nuw nsw i64 %.reload41, 1
  store i64 %78, ptr %.reg2mem29, align 8
  %.reload31 = load i64, ptr %.reg2mem29, align 8
  %79 = icmp eq i64 %.reload31, 249
  br i1 %79, label %80, label %._crit_edge7, !llvm.loop !16

._crit_edge7:                                     ; preds = %77
  %.reload30 = load i64, ptr %.reg2mem29, align 8
  store i64 %.reload30, ptr %.reg2mem104, align 8
  br label %53

80:                                               ; preds = %77
  %.reload66 = load i32, ptr %.reg2mem65, align 4
  %81 = add nuw nsw i32 %.reload66, 1
  store i32 %81, ptr %.reg2mem26, align 4
  %.reload28 = load i32, ptr %.reg2mem26, align 4
  %82 = icmp eq i32 %.reload28, 100
  br i1 %82, label %83, label %._crit_edge8, !llvm.loop !17

._crit_edge8:                                     ; preds = %80
  %.reload27 = load i32, ptr %.reg2mem26, align 4
  store i32 %.reload27, ptr %.reg2mem110, align 4
  br label %25

83:                                               ; preds = %80
  %84 = load ptr, ptr @stderr, align 8, !tbaa !18
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str) #4
  %86 = load ptr, ptr @stderr, align 8, !tbaa !18
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i64 0, ptr %.reg2mem100, align 8
  br label %88

88:                                               ; preds = %._crit_edge11, %83
  %.reload101 = load i64, ptr %.reg2mem100, align 8
  store i64 %.reload101, ptr %.reg2mem22, align 8
  %.reload25 = load i64, ptr %.reg2mem22, align 8
  %89 = mul nuw nsw i64 %.reload25, 250
  store i64 %89, ptr %.reg2mem20, align 8
  store i64 0, ptr %.reg2mem98, align 8
  br label %90

90:                                               ; preds = %._crit_edge10, %88
  %.reload99 = load i64, ptr %.reg2mem98, align 8
  store i64 %.reload99, ptr %.reg2mem16, align 8
  %.reload19 = load i64, ptr %.reg2mem16, align 8
  %.reload21 = load i64, ptr %.reg2mem20, align 8
  %91 = add nuw nsw i64 %.reload19, %.reload21
  %92 = trunc nuw nsw i64 %91 to i32
  %93 = urem i32 %92, 20
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %._crit_edge9

._crit_edge9:                                     ; preds = %90
  br label %98

95:                                               ; preds = %90
  %96 = load ptr, ptr @stderr, align 8, !tbaa !18
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.3) #4
  br label %98

98:                                               ; preds = %._crit_edge9, %95
  %99 = load ptr, ptr @stderr, align 8, !tbaa !18
  %.reload18 = load i64, ptr %.reg2mem16, align 8
  %.reload24 = load i64, ptr %.reg2mem22, align 8
  %.reload90 = load ptr, ptr %.reg2mem89, align 8
  %100 = getelementptr inbounds [250 x double], ptr %.reload90, i64 %.reload24, i64 %.reload18
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.4, double noundef %101) #4
  %.reload17 = load i64, ptr %.reg2mem16, align 8
  %103 = add nuw nsw i64 %.reload17, 1
  store i64 %103, ptr %.reg2mem13, align 8
  %.reload15 = load i64, ptr %.reg2mem13, align 8
  %104 = icmp eq i64 %.reload15, 250
  br i1 %104, label %105, label %._crit_edge10, !llvm.loop !20

._crit_edge10:                                    ; preds = %98
  %.reload14 = load i64, ptr %.reg2mem13, align 8
  store i64 %.reload14, ptr %.reg2mem98, align 8
  br label %90

105:                                              ; preds = %98
  %.reload23 = load i64, ptr %.reg2mem22, align 8
  %106 = add nuw nsw i64 %.reload23, 1
  store i64 %106, ptr %.reg2mem, align 8
  %.reload12 = load i64, ptr %.reg2mem, align 8
  %107 = icmp eq i64 %.reload12, 250
  br i1 %107, label %108, label %._crit_edge11, !llvm.loop !21

._crit_edge11:                                    ; preds = %105
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %.reg2mem100, align 8
  br label %88

108:                                              ; preds = %105
  %109 = load ptr, ptr @stderr, align 8, !tbaa !18
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %111 = load ptr, ptr @stderr, align 8, !tbaa !18
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.6) #4
  %.reload97 = load ptr, ptr %.reg2mem89, align 8
  tail call void @free(ptr noundef nonnull %.reload97) #4
  %.reload88 = load ptr, ptr %.reg2mem81, align 8
  tail call void @free(ptr noundef %.reload88) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
