; ModuleID = './polybench-output/no-phis/jacobi-1d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/jacobi-1d/jacobi-1d.c"
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
  %.reg2mem9 = alloca i64, align 8
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem16 = alloca i64, align 8
  %.reg2mem20 = alloca i64, align 8
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem26 = alloca i64, align 8
  %.reg2mem29 = alloca ptr, align 8
  %.reg2mem35 = alloca ptr, align 8
  %.reg2mem42 = alloca i64, align 8
  %.reg2mem44 = alloca i64, align 8
  %.reg2mem46 = alloca i64, align 8
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem50 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %3, ptr %.reg2mem35, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  store ptr %4, ptr %.reg2mem29, align 8
  store i64 0, ptr %.reg2mem50, align 8
  br label %5

5:                                                ; preds = %._crit_edge1, %2
  %.reload51 = load i64, ptr %.reg2mem50, align 8
  %6 = trunc i64 %.reload51 to i32
  %7 = add i32 %6, 2
  %8 = uitofp nneg i32 %7 to double
  %9 = fdiv double %8, 4.000000e+02
  %.reload40 = load ptr, ptr %.reg2mem35, align 8
  %10 = getelementptr inbounds double, ptr %.reload40, i64 %.reload51
  store double %9, ptr %10, align 8, !tbaa !5
  %11 = add i32 %6, 3
  %12 = uitofp nneg i32 %11 to double
  %13 = fdiv double %12, 4.000000e+02
  %.reload33 = load ptr, ptr %.reg2mem29, align 8
  %14 = getelementptr inbounds double, ptr %.reload33, i64 %.reload51
  store double %13, ptr %14, align 8, !tbaa !5
  %15 = add nuw nsw i64 %.reload51, 1
  store i64 %15, ptr %.reg2mem26, align 8
  %.reload28 = load i64, ptr %.reg2mem26, align 8
  %16 = icmp eq i64 %.reload28, 400
  br i1 %16, label %._crit_edge, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %5
  %.reload27 = load i64, ptr %.reg2mem26, align 8
  store i64 %.reload27, ptr %.reg2mem50, align 8
  br label %5

._crit_edge:                                      ; preds = %5
  store i32 0, ptr %.reg2mem48, align 4
  br label %17

17:                                               ; preds = %._crit_edge5, %._crit_edge
  %.reload49 = load i32, ptr %.reg2mem48, align 4
  store i32 %.reload49, ptr %.reg2mem24, align 4
  store i64 1, ptr %.reg2mem46, align 8
  br label %18

18:                                               ; preds = %._crit_edge3, %17
  %.reload47 = load i64, ptr %.reg2mem46, align 8
  %.reload39 = load ptr, ptr %.reg2mem35, align 8
  %19 = getelementptr double, ptr %.reload39, i64 %.reload47
  %20 = getelementptr i8, ptr %19, i64 -8
  %21 = load double, ptr %20, align 8, !tbaa !5
  %22 = load double, ptr %19, align 8, !tbaa !5
  %23 = fadd double %21, %22
  %24 = add nuw nsw i64 %.reload47, 1
  store i64 %24, ptr %.reg2mem20, align 8
  %.reload23 = load i64, ptr %.reg2mem20, align 8
  %.reload38 = load ptr, ptr %.reg2mem35, align 8
  %25 = getelementptr inbounds double, ptr %.reload38, i64 %.reload23
  %26 = load double, ptr %25, align 8, !tbaa !5
  %27 = fadd double %23, %26
  %28 = fmul double %27, 3.333300e-01
  %.reload32 = load ptr, ptr %.reg2mem29, align 8
  %29 = getelementptr inbounds double, ptr %.reload32, i64 %.reload47
  store double %28, ptr %29, align 8, !tbaa !5
  %.reload22 = load i64, ptr %.reg2mem20, align 8
  %30 = icmp eq i64 %.reload22, 399
  br i1 %30, label %._crit_edge2, label %._crit_edge3, !llvm.loop !12

._crit_edge3:                                     ; preds = %18
  %.reload21 = load i64, ptr %.reg2mem20, align 8
  store i64 %.reload21, ptr %.reg2mem46, align 8
  br label %18

._crit_edge2:                                     ; preds = %18
  store i64 1, ptr %.reg2mem44, align 8
  br label %31

31:                                               ; preds = %._crit_edge4, %._crit_edge2
  %.reload45 = load i64, ptr %.reg2mem44, align 8
  %.reload31 = load ptr, ptr %.reg2mem29, align 8
  %32 = getelementptr double, ptr %.reload31, i64 %.reload45
  %33 = getelementptr i8, ptr %32, i64 -8
  %34 = load double, ptr %33, align 8, !tbaa !5
  %35 = load double, ptr %32, align 8, !tbaa !5
  %36 = fadd double %34, %35
  %37 = add nuw nsw i64 %.reload45, 1
  store i64 %37, ptr %.reg2mem16, align 8
  %.reload19 = load i64, ptr %.reg2mem16, align 8
  %.reload30 = load ptr, ptr %.reg2mem29, align 8
  %38 = getelementptr inbounds double, ptr %.reload30, i64 %.reload19
  %39 = load double, ptr %38, align 8, !tbaa !5
  %40 = fadd double %36, %39
  %41 = fmul double %40, 3.333300e-01
  %.reload37 = load ptr, ptr %.reg2mem35, align 8
  %42 = getelementptr inbounds double, ptr %.reload37, i64 %.reload45
  store double %41, ptr %42, align 8, !tbaa !5
  %.reload18 = load i64, ptr %.reg2mem16, align 8
  %43 = icmp eq i64 %.reload18, 399
  br i1 %43, label %44, label %._crit_edge4, !llvm.loop !13

._crit_edge4:                                     ; preds = %31
  %.reload17 = load i64, ptr %.reg2mem16, align 8
  store i64 %.reload17, ptr %.reg2mem44, align 8
  br label %31

44:                                               ; preds = %31
  %.reload25 = load i32, ptr %.reg2mem24, align 4
  %45 = add nuw nsw i32 %.reload25, 1
  store i32 %45, ptr %.reg2mem13, align 4
  %.reload15 = load i32, ptr %.reg2mem13, align 4
  %46 = icmp eq i32 %.reload15, 100
  br i1 %46, label %47, label %._crit_edge5, !llvm.loop !14

._crit_edge5:                                     ; preds = %44
  %.reload14 = load i32, ptr %.reg2mem13, align 4
  store i32 %.reload14, ptr %.reg2mem48, align 4
  br label %17

47:                                               ; preds = %44
  %48 = load ptr, ptr @stderr, align 8, !tbaa !15
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str) #3
  %50 = load ptr, ptr @stderr, align 8, !tbaa !15
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i64 0, ptr %.reg2mem42, align 8
  br label %52

52:                                               ; preds = %._crit_edge7, %47
  %.reload43 = load i64, ptr %.reg2mem42, align 8
  store i64 %.reload43, ptr %.reg2mem9, align 8
  %.reload12 = load i64, ptr %.reg2mem9, align 8
  %53 = trunc i64 %.reload12 to i16
  %54 = urem i16 %53, 20
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %._crit_edge6

._crit_edge6:                                     ; preds = %52
  br label %59

56:                                               ; preds = %52
  %57 = load ptr, ptr @stderr, align 8, !tbaa !15
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.3) #3
  br label %59

59:                                               ; preds = %._crit_edge6, %56
  %60 = load ptr, ptr @stderr, align 8, !tbaa !15
  %.reload11 = load i64, ptr %.reg2mem9, align 8
  %.reload36 = load ptr, ptr %.reg2mem35, align 8
  %61 = getelementptr inbounds double, ptr %.reload36, i64 %.reload11
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.4, double noundef %62) #3
  %.reload10 = load i64, ptr %.reg2mem9, align 8
  %64 = add nuw nsw i64 %.reload10, 1
  store i64 %64, ptr %.reg2mem, align 8
  %.reload8 = load i64, ptr %.reg2mem, align 8
  %65 = icmp eq i64 %.reload8, 400
  br i1 %65, label %66, label %._crit_edge7, !llvm.loop !17

._crit_edge7:                                     ; preds = %59
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %.reg2mem42, align 8
  br label %52

66:                                               ; preds = %59
  %67 = load ptr, ptr @stderr, align 8, !tbaa !15
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %69 = load ptr, ptr @stderr, align 8, !tbaa !15
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.6) #3
  %.reload41 = load ptr, ptr %.reg2mem35, align 8
  tail call void @free(ptr noundef nonnull %.reload41) #3
  %.reload34 = load ptr, ptr %.reg2mem29, align 8
  tail call void @free(ptr noundef %.reload34) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !10, !11}
