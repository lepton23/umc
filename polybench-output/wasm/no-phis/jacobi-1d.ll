; ModuleID = './polybench-output/wasm/no-phis/jacobi-1d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-1d/jacobi-1d.c"
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
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem13 = alloca ptr, align 4
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem27 = alloca i32, align 4
  %.reg2mem31 = alloca i32, align 4
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem36 = alloca ptr, align 4
  %.reg2mem42 = alloca ptr, align 4
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem51 = alloca i32, align 4
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem55 = alloca i32, align 4
  %.reg2mem57 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #2
  store ptr %3, ptr %.reg2mem42, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #2
  store ptr %4, ptr %.reg2mem36, align 4
  store i32 0, ptr %.reg2mem57, align 4
  br label %5

5:                                                ; preds = %._crit_edge1, %2
  %.reload58 = load i32, ptr %.reg2mem57, align 4
  %6 = add nuw nsw i32 %.reload58, 2
  %7 = uitofp nneg i32 %6 to double
  %8 = fdiv double %7, 4.000000e+02
  %.reload47 = load ptr, ptr %.reg2mem42, align 4
  %9 = getelementptr inbounds double, ptr %.reload47, i32 %.reload58
  store double %8, ptr %9, align 8, !tbaa !2
  %10 = add nuw nsw i32 %.reload58, 3
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double %11, 4.000000e+02
  %.reload40 = load ptr, ptr %.reg2mem36, align 4
  %13 = getelementptr inbounds double, ptr %.reload40, i32 %.reload58
  store double %12, ptr %13, align 8, !tbaa !2
  %14 = add nuw nsw i32 %.reload58, 1
  store i32 %14, ptr %.reg2mem33, align 4
  %.reload35 = load i32, ptr %.reg2mem33, align 4
  %15 = icmp eq i32 %.reload35, 400
  br i1 %15, label %._crit_edge, label %._crit_edge1, !llvm.loop !6

._crit_edge1:                                     ; preds = %5
  %.reload34 = load i32, ptr %.reg2mem33, align 4
  store i32 %.reload34, ptr %.reg2mem57, align 4
  br label %5

._crit_edge:                                      ; preds = %5
  store i32 0, ptr %.reg2mem55, align 4
  br label %16

16:                                               ; preds = %._crit_edge5, %._crit_edge
  %.reload56 = load i32, ptr %.reg2mem55, align 4
  store i32 %.reload56, ptr %.reg2mem31, align 4
  store i32 1, ptr %.reg2mem53, align 4
  br label %17

17:                                               ; preds = %._crit_edge3, %16
  %.reload54 = load i32, ptr %.reg2mem53, align 4
  %.reload46 = load ptr, ptr %.reg2mem42, align 4
  %18 = getelementptr double, ptr %.reload46, i32 %.reload54
  %19 = getelementptr i8, ptr %18, i32 -8
  %20 = load double, ptr %19, align 8, !tbaa !2
  %21 = load double, ptr %18, align 8, !tbaa !2
  %22 = fadd double %20, %21
  %23 = add nuw nsw i32 %.reload54, 1
  store i32 %23, ptr %.reg2mem27, align 4
  %.reload30 = load i32, ptr %.reg2mem27, align 4
  %.reload45 = load ptr, ptr %.reg2mem42, align 4
  %24 = getelementptr inbounds double, ptr %.reload45, i32 %.reload30
  %25 = load double, ptr %24, align 8, !tbaa !2
  %26 = fadd double %22, %25
  %27 = fmul double %26, 3.333300e-01
  %.reload39 = load ptr, ptr %.reg2mem36, align 4
  %28 = getelementptr inbounds double, ptr %.reload39, i32 %.reload54
  store double %27, ptr %28, align 8, !tbaa !2
  %.reload29 = load i32, ptr %.reg2mem27, align 4
  %29 = icmp eq i32 %.reload29, 399
  br i1 %29, label %._crit_edge2, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %17
  %.reload28 = load i32, ptr %.reg2mem27, align 4
  store i32 %.reload28, ptr %.reg2mem53, align 4
  br label %17

._crit_edge2:                                     ; preds = %17
  store i32 1, ptr %.reg2mem51, align 4
  br label %30

30:                                               ; preds = %._crit_edge4, %._crit_edge2
  %.reload52 = load i32, ptr %.reg2mem51, align 4
  %.reload38 = load ptr, ptr %.reg2mem36, align 4
  %31 = getelementptr double, ptr %.reload38, i32 %.reload52
  %32 = getelementptr i8, ptr %31, i32 -8
  %33 = load double, ptr %32, align 8, !tbaa !2
  %34 = load double, ptr %31, align 8, !tbaa !2
  %35 = fadd double %33, %34
  %36 = add nuw nsw i32 %.reload52, 1
  store i32 %36, ptr %.reg2mem23, align 4
  %.reload26 = load i32, ptr %.reg2mem23, align 4
  %.reload37 = load ptr, ptr %.reg2mem36, align 4
  %37 = getelementptr inbounds double, ptr %.reload37, i32 %.reload26
  %38 = load double, ptr %37, align 8, !tbaa !2
  %39 = fadd double %35, %38
  %40 = fmul double %39, 3.333300e-01
  %.reload44 = load ptr, ptr %.reg2mem42, align 4
  %41 = getelementptr inbounds double, ptr %.reload44, i32 %.reload52
  store double %40, ptr %41, align 8, !tbaa !2
  %.reload25 = load i32, ptr %.reg2mem23, align 4
  %42 = icmp eq i32 %.reload25, 399
  br i1 %42, label %43, label %._crit_edge4, !llvm.loop !10

._crit_edge4:                                     ; preds = %30
  %.reload24 = load i32, ptr %.reg2mem23, align 4
  store i32 %.reload24, ptr %.reg2mem51, align 4
  br label %30

43:                                               ; preds = %30
  %.reload32 = load i32, ptr %.reg2mem31, align 4
  %44 = add nuw nsw i32 %.reload32, 1
  store i32 %44, ptr %.reg2mem20, align 4
  %.reload22 = load i32, ptr %.reg2mem20, align 4
  %45 = icmp eq i32 %.reload22, 100
  br i1 %45, label %46, label %._crit_edge5, !llvm.loop !11

._crit_edge5:                                     ; preds = %43
  %.reload21 = load i32, ptr %.reg2mem20, align 4
  store i32 %.reload21, ptr %.reg2mem55, align 4
  br label %16

46:                                               ; preds = %43
  %47 = load ptr, ptr @stderr, align 4, !tbaa !12
  store ptr %47, ptr %.reg2mem13, align 4
  %.reload19 = load ptr, ptr %.reg2mem13, align 4
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload19, ptr noundef nonnull @.str) #2
  %.reload18 = load ptr, ptr %.reg2mem13, align 4
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #2
  store i32 0, ptr %.reg2mem49, align 4
  br label %50

50:                                               ; preds = %._crit_edge7, %46
  %.reload50 = load i32, ptr %.reg2mem49, align 4
  store i32 %.reload50, ptr %.reg2mem9, align 4
  %.reload12 = load i32, ptr %.reg2mem9, align 4
  %51 = trunc nuw i32 %.reload12 to i16
  %52 = urem i16 %51, 20
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %._crit_edge6

._crit_edge6:                                     ; preds = %50
  br label %56

54:                                               ; preds = %50
  %.reload14 = load ptr, ptr %.reg2mem13, align 4
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload14, ptr noundef nonnull @.str.3) #2
  br label %56

56:                                               ; preds = %._crit_edge6, %54
  %.reload11 = load i32, ptr %.reg2mem9, align 4
  %.reload43 = load ptr, ptr %.reg2mem42, align 4
  %57 = getelementptr inbounds double, ptr %.reload43, i32 %.reload11
  %58 = load double, ptr %57, align 8, !tbaa !2
  %.reload17 = load ptr, ptr %.reg2mem13, align 4
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload17, ptr noundef nonnull @.str.4, double noundef %58) #2
  %.reload10 = load i32, ptr %.reg2mem9, align 4
  %60 = add nuw nsw i32 %.reload10, 1
  store i32 %60, ptr %.reg2mem, align 4
  %.reload8 = load i32, ptr %.reg2mem, align 4
  %61 = icmp eq i32 %.reload8, 400
  br i1 %61, label %62, label %._crit_edge7, !llvm.loop !14

._crit_edge7:                                     ; preds = %56
  %.reload = load i32, ptr %.reg2mem, align 4
  store i32 %.reload, ptr %.reg2mem49, align 4
  br label %50

62:                                               ; preds = %56
  %.reload16 = load ptr, ptr %.reg2mem13, align 4
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #2
  %.reload15 = load ptr, ptr %.reg2mem13, align 4
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload15, ptr noundef nonnull @.str.6) #2
  %.reload48 = load ptr, ptr %.reg2mem42, align 4
  tail call void @free(ptr noundef nonnull %.reload48) #2
  %.reload41 = load ptr, ptr %.reg2mem36, align 4
  tail call void @free(ptr noundef %.reload41) #2
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

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
