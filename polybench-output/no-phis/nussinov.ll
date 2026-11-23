; ModuleID = './polybench-output/no-phis/nussinov.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/medley/nussinov/nussinov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem17 = alloca i64, align 8
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem22 = alloca i64, align 8
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem27 = alloca i32, align 4
  %.reg2mem30 = alloca i64, align 8
  %.reg2mem33 = alloca i32, align 4
  %.reg2mem36 = alloca i64, align 8
  %.reg2mem40 = alloca i32, align 4
  %.reg2mem43 = alloca i64, align 8
  %.reg2mem45 = alloca i64, align 8
  %.reg2mem47 = alloca i64, align 8
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem53 = alloca i64, align 8
  %.reg2mem57 = alloca i32, align 4
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem65 = alloca i32, align 4
  %.reg2mem68 = alloca ptr, align 8
  %.reg2mem73 = alloca i64, align 8
  %.reg2mem82 = alloca ptr, align 8
  %.reg2mem84 = alloca i64, align 8
  %.reg2mem88 = alloca i64, align 8
  %.reg2mem92 = alloca i64, align 8
  %.reg2mem102 = alloca i64, align 8
  %.reg2mem105 = alloca i64, align 8
  %.reg2mem108 = alloca i64, align 8
  %.reg2mem111 = alloca i64, align 8
  %.reg2mem115 = alloca ptr, align 8
  %.reg2mem125 = alloca ptr, align 8
  %.reg2mem130 = alloca i32, align 4
  %.reg2mem132 = alloca i64, align 8
  %.reg2mem134 = alloca i32, align 4
  %.reg2mem136 = alloca i64, align 8
  %.reg2mem138 = alloca i32, align 4
  %.reg2mem140 = alloca i32, align 4
  %.reg2mem142 = alloca i64, align 8
  %.reg2mem144 = alloca i32, align 4
  %.reg2mem146 = alloca i64, align 8
  %.reg2mem148 = alloca i64, align 8
  %.reg2mem150 = alloca i64, align 8
  %.reg2mem152 = alloca i64, align 8
  %.reg2mem154 = alloca i64, align 8
  %.reg2mem156 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 1) #4
  store ptr %3, ptr %.reg2mem125, align 8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 250000, i32 noundef 4) #4
  store ptr %4, ptr %.reg2mem115, align 8
  store i64 0, ptr %.reg2mem156, align 8
  br label %5

5:                                                ; preds = %._crit_edge1, %2
  %.reload157 = load i64, ptr %.reg2mem156, align 8
  %6 = add nuw nsw i64 %.reload157, 1
  store i64 %6, ptr %.reg2mem111, align 8
  %.reload114 = load i64, ptr %.reg2mem111, align 8
  %7 = trunc i64 %.reload114 to i8
  %8 = and i8 %7, 3
  %.reload128 = load ptr, ptr %.reg2mem125, align 8
  %9 = getelementptr inbounds i8, ptr %.reload128, i64 %.reload157
  store i8 %8, ptr %9, align 1, !tbaa !5
  %.reload113 = load i64, ptr %.reg2mem111, align 8
  %10 = icmp eq i64 %.reload113, 500
  br i1 %10, label %._crit_edge, label %._crit_edge1, !llvm.loop !8

._crit_edge1:                                     ; preds = %5
  %.reload112 = load i64, ptr %.reg2mem111, align 8
  store i64 %.reload112, ptr %.reg2mem156, align 8
  br label %5

._crit_edge:                                      ; preds = %5
  store i64 0, ptr %.reg2mem154, align 8
  br label %11

11:                                               ; preds = %._crit_edge4, %._crit_edge
  %.reload155 = load i64, ptr %.reg2mem154, align 8
  store i64 %.reload155, ptr %.reg2mem108, align 8
  store i64 0, ptr %.reg2mem152, align 8
  br label %12

12:                                               ; preds = %._crit_edge2, %11
  %.reload153 = load i64, ptr %.reg2mem152, align 8
  %.reload110 = load i64, ptr %.reg2mem108, align 8
  %.reload123 = load ptr, ptr %.reg2mem115, align 8
  %13 = getelementptr inbounds [500 x i32], ptr %.reload123, i64 %.reload110, i64 %.reload153
  store i32 0, ptr %13, align 4, !tbaa !11
  %14 = add nuw nsw i64 %.reload153, 1
  store i64 %14, ptr %.reg2mem105, align 8
  %.reload107 = load i64, ptr %.reg2mem105, align 8
  %15 = icmp eq i64 %.reload107, 500
  br i1 %15, label %16, label %._crit_edge2, !llvm.loop !13

._crit_edge2:                                     ; preds = %12
  %.reload106 = load i64, ptr %.reg2mem105, align 8
  store i64 %.reload106, ptr %.reg2mem152, align 8
  br label %12

16:                                               ; preds = %12
  %.reload109 = load i64, ptr %.reg2mem108, align 8
  %17 = add nuw nsw i64 %.reload109, 1
  store i64 %17, ptr %.reg2mem102, align 8
  %.reload104 = load i64, ptr %.reg2mem102, align 8
  %18 = icmp eq i64 %.reload104, 500
  br i1 %18, label %._crit_edge3, label %._crit_edge4, !llvm.loop !14

._crit_edge4:                                     ; preds = %16
  %.reload103 = load i64, ptr %.reg2mem102, align 8
  store i64 %.reload103, ptr %.reg2mem154, align 8
  br label %11

._crit_edge3:                                     ; preds = %16
  store i64 500, ptr %.reg2mem148, align 8
  store i64 499, ptr %.reg2mem150, align 8
  br label %19

19:                                               ; preds = %._crit_edge13, %._crit_edge3
  %.reload151 = load i64, ptr %.reg2mem150, align 8
  %.reload149 = load i64, ptr %.reg2mem148, align 8
  store i64 %.reload151, ptr %.reg2mem92, align 8
  store i64 %.reload149, ptr %.reg2mem88, align 8
  %.reload101 = load i64, ptr %.reg2mem92, align 8
  %20 = add nuw nsw i64 %.reload101, 1
  store i64 %20, ptr %.reg2mem84, align 8
  %.reload100 = load i64, ptr %.reg2mem92, align 8
  %21 = icmp ult i64 %.reload100, 499
  br i1 %21, label %22, label %._crit_edge5

._crit_edge5:                                     ; preds = %19
  br label %62

22:                                               ; preds = %19
  %.reload97 = load i64, ptr %.reg2mem92, align 8
  %.reload127 = load ptr, ptr %.reg2mem125, align 8
  %23 = getelementptr inbounds i8, ptr %.reload127, i64 %.reload97
  store ptr %23, ptr %.reg2mem82, align 8
  %.reload90 = load i64, ptr %.reg2mem88, align 8
  store i64 %.reload90, ptr %.reg2mem146, align 8
  br label %24

24:                                               ; preds = %._crit_edge12, %22
  %.reload147 = load i64, ptr %.reg2mem146, align 8
  store i64 %.reload147, ptr %.reg2mem73, align 8
  %.reload81 = load i64, ptr %.reg2mem73, align 8
  %25 = add nsw i64 %.reload81, -1
  %.reload80 = load i64, ptr %.reg2mem73, align 8
  %.reload96 = load i64, ptr %.reg2mem92, align 8
  %.reload122 = load ptr, ptr %.reg2mem115, align 8
  %26 = getelementptr inbounds [500 x i32], ptr %.reload122, i64 %.reload96, i64 %.reload80
  store ptr %26, ptr %.reg2mem68, align 8
  %.reload72 = load ptr, ptr %.reg2mem68, align 8
  %27 = load i32, ptr %.reload72, align 4, !tbaa !11
  %.reload95 = load i64, ptr %.reg2mem92, align 8
  %.reload121 = load ptr, ptr %.reg2mem115, align 8
  %28 = getelementptr inbounds [500 x i32], ptr %.reload121, i64 %.reload95, i64 %25
  %29 = load i32, ptr %28, align 4, !tbaa !11
  %30 = tail call i32 @llvm.smax.i32(i32 %27, i32 %29)
  %.reload79 = load i64, ptr %.reg2mem73, align 8
  %.reload87 = load i64, ptr %.reg2mem84, align 8
  %.reload120 = load ptr, ptr %.reg2mem115, align 8
  %31 = getelementptr inbounds [500 x i32], ptr %.reload120, i64 %.reload87, i64 %.reload79
  %32 = load i32, ptr %31, align 4, !tbaa !11
  %33 = tail call i32 @llvm.smax.i32(i32 %30, i32 %32)
  store i32 %33, ptr %.reg2mem65, align 4
  %.reload67 = load i32, ptr %.reg2mem65, align 4
  %.reload71 = load ptr, ptr %.reg2mem68, align 8
  store i32 %.reload67, ptr %.reload71, align 4, !tbaa !11
  %.reload94 = load i64, ptr %.reg2mem92, align 8
  %34 = icmp ult i64 %.reload94, %25
  %.reload86 = load i64, ptr %.reg2mem84, align 8
  %.reload119 = load ptr, ptr %.reg2mem115, align 8
  %35 = getelementptr inbounds [500 x i32], ptr %.reload119, i64 %.reload86, i64 %25
  %36 = load i32, ptr %35, align 4, !tbaa !11
  store i32 %36, ptr %.reg2mem62, align 4
  br i1 %34, label %37, label %._crit_edge6

._crit_edge6:                                     ; preds = %24
  %.reload63 = load i32, ptr %.reg2mem62, align 4
  store i32 %.reload63, ptr %.reg2mem144, align 4
  br label %47

37:                                               ; preds = %24
  %.reload83 = load ptr, ptr %.reg2mem82, align 8
  %38 = load i8, ptr %.reload83, align 1, !tbaa !5
  %39 = sext i8 %38 to i32
  %.reload74 = load i64, ptr %.reg2mem73, align 8
  %.reload126 = load ptr, ptr %.reg2mem125, align 8
  %40 = getelementptr inbounds i8, ptr %.reload126, i64 %.reload74
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %42, %39
  %44 = icmp eq i32 %43, 3
  %45 = zext i1 %44 to i32
  %.reload64 = load i32, ptr %.reg2mem62, align 4
  %46 = add nsw i32 %.reload64, %45
  store i32 %46, ptr %.reg2mem60, align 4
  %.reload61 = load i32, ptr %.reg2mem60, align 4
  store i32 %.reload61, ptr %.reg2mem144, align 4
  br label %47

47:                                               ; preds = %._crit_edge6, %37
  %.reload145 = load i32, ptr %.reg2mem144, align 4
  %.reload66 = load i32, ptr %.reg2mem65, align 4
  %48 = tail call i32 @llvm.smax.i32(i32 %.reload66, i32 %.reload145)
  store i32 %48, ptr %.reg2mem57, align 4
  %.reload59 = load i32, ptr %.reg2mem57, align 4
  %.reload70 = load ptr, ptr %.reg2mem68, align 8
  store i32 %.reload59, ptr %.reload70, align 4, !tbaa !11
  %.reload78 = load i64, ptr %.reg2mem73, align 8
  %.reload85 = load i64, ptr %.reg2mem84, align 8
  %49 = icmp ult i64 %.reload85, %.reload78
  br i1 %49, label %._crit_edge7, label %._crit_edge8

._crit_edge8:                                     ; preds = %47
  br label %59

._crit_edge7:                                     ; preds = %47
  %.reload58 = load i32, ptr %.reg2mem57, align 4
  %.reload89 = load i64, ptr %.reg2mem88, align 8
  store i32 %.reload58, ptr %.reg2mem140, align 4
  store i64 %.reload89, ptr %.reg2mem142, align 8
  br label %50

50:                                               ; preds = %._crit_edge10, %._crit_edge7
  %.reload143 = load i64, ptr %.reg2mem142, align 8
  %.reload141 = load i32, ptr %.reg2mem140, align 4
  %.reload93 = load i64, ptr %.reg2mem92, align 8
  %.reload118 = load ptr, ptr %.reg2mem115, align 8
  %51 = getelementptr inbounds [500 x i32], ptr %.reload118, i64 %.reload93, i64 %.reload143
  %52 = load i32, ptr %51, align 4, !tbaa !11
  %53 = add nuw nsw i64 %.reload143, 1
  store i64 %53, ptr %.reg2mem53, align 8
  %.reload56 = load i64, ptr %.reg2mem53, align 8
  %.reload76 = load i64, ptr %.reg2mem73, align 8
  %.reload117 = load ptr, ptr %.reg2mem115, align 8
  %54 = getelementptr inbounds [500 x i32], ptr %.reload117, i64 %.reload56, i64 %.reload76
  %55 = load i32, ptr %54, align 4, !tbaa !11
  %56 = add nsw i32 %55, %52
  %57 = tail call i32 @llvm.smax.i32(i32 %.reload141, i32 %56)
  store i32 %57, ptr %.reg2mem50, align 4
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %.reload69 = load ptr, ptr %.reg2mem68, align 8
  store i32 %.reload52, ptr %.reload69, align 4, !tbaa !11
  %.reload55 = load i64, ptr %.reg2mem53, align 8
  %.reload75 = load i64, ptr %.reg2mem73, align 8
  %58 = icmp eq i64 %.reload55, %.reload75
  br i1 %58, label %._crit_edge9, label %._crit_edge10, !llvm.loop !15

._crit_edge10:                                    ; preds = %50
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  %.reload54 = load i64, ptr %.reg2mem53, align 8
  store i32 %.reload51, ptr %.reg2mem140, align 4
  store i64 %.reload54, ptr %.reg2mem142, align 8
  br label %50

._crit_edge9:                                     ; preds = %50
  br label %59

59:                                               ; preds = %._crit_edge9, %._crit_edge8
  %.reload77 = load i64, ptr %.reg2mem73, align 8
  %60 = add nuw nsw i64 %.reload77, 1
  store i64 %60, ptr %.reg2mem47, align 8
  %.reload49 = load i64, ptr %.reg2mem47, align 8
  %61 = icmp eq i64 %.reload49, 500
  br i1 %61, label %._crit_edge11, label %._crit_edge12, !llvm.loop !16

._crit_edge12:                                    ; preds = %59
  %.reload48 = load i64, ptr %.reg2mem47, align 8
  store i64 %.reload48, ptr %.reg2mem146, align 8
  br label %24

._crit_edge11:                                    ; preds = %59
  br label %62

62:                                               ; preds = %._crit_edge11, %._crit_edge5
  %.reload99 = load i64, ptr %.reg2mem92, align 8
  %63 = add nsw i64 %.reload99, -1
  store i64 %63, ptr %.reg2mem45, align 8
  %.reload98 = load i64, ptr %.reg2mem92, align 8
  %64 = icmp eq i64 %.reload98, 0
  %.reload91 = load i64, ptr %.reg2mem88, align 8
  %65 = add nsw i64 %.reload91, -1
  store i64 %65, ptr %.reg2mem43, align 8
  br i1 %64, label %66, label %._crit_edge13, !llvm.loop !17

._crit_edge13:                                    ; preds = %62
  %.reload44 = load i64, ptr %.reg2mem43, align 8
  %.reload46 = load i64, ptr %.reg2mem45, align 8
  store i64 %.reload44, ptr %.reg2mem148, align 8
  store i64 %.reload46, ptr %.reg2mem150, align 8
  br label %19

66:                                               ; preds = %62
  %67 = load ptr, ptr @stderr, align 8, !tbaa !18
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str) #4
  %69 = load ptr, ptr @stderr, align 8, !tbaa !18
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store i32 0, ptr %.reg2mem134, align 4
  store i64 0, ptr %.reg2mem136, align 8
  store i32 500, ptr %.reg2mem138, align 4
  br label %71

71:                                               ; preds = %._crit_edge16, %66
  %.reload139 = load i32, ptr %.reg2mem138, align 4
  %.reload137 = load i64, ptr %.reg2mem136, align 8
  %.reload135 = load i32, ptr %.reg2mem134, align 4
  store i32 %.reload139, ptr %.reg2mem40, align 4
  store i64 %.reload137, ptr %.reg2mem36, align 8
  store i32 %.reload135, ptr %.reg2mem33, align 4
  %.reload34 = load i32, ptr %.reg2mem33, align 4
  %.reload37 = load i64, ptr %.reg2mem36, align 8
  store i32 %.reload34, ptr %.reg2mem130, align 4
  store i64 %.reload37, ptr %.reg2mem132, align 8
  br label %72

72:                                               ; preds = %._crit_edge15, %71
  %.reload133 = load i64, ptr %.reg2mem132, align 8
  %.reload131 = load i32, ptr %.reg2mem130, align 4
  store i64 %.reload133, ptr %.reg2mem30, align 8
  store i32 %.reload131, ptr %.reg2mem27, align 4
  %.reload29 = load i32, ptr %.reg2mem27, align 4
  %73 = srem i32 %.reload29, 20
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %._crit_edge14

._crit_edge14:                                    ; preds = %72
  br label %78

75:                                               ; preds = %72
  %76 = load ptr, ptr @stderr, align 8, !tbaa !18
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.3) #4
  br label %78

78:                                               ; preds = %._crit_edge14, %75
  %79 = load ptr, ptr @stderr, align 8, !tbaa !18
  %.reload32 = load i64, ptr %.reg2mem30, align 8
  %.reload39 = load i64, ptr %.reg2mem36, align 8
  %.reload116 = load ptr, ptr %.reg2mem115, align 8
  %80 = getelementptr inbounds [500 x i32], ptr %.reload116, i64 %.reload39, i64 %.reload32
  %81 = load i32, ptr %80, align 4, !tbaa !11
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.4, i32 noundef %81) #4
  %.reload28 = load i32, ptr %.reg2mem27, align 4
  %83 = add nsw i32 %.reload28, 1
  store i32 %83, ptr %.reg2mem25, align 4
  %.reload31 = load i64, ptr %.reg2mem30, align 8
  %84 = add nuw nsw i64 %.reload31, 1
  store i64 %84, ptr %.reg2mem22, align 8
  %.reload24 = load i64, ptr %.reg2mem22, align 8
  %85 = icmp eq i64 %.reload24, 500
  br i1 %85, label %86, label %._crit_edge15, !llvm.loop !20

._crit_edge15:                                    ; preds = %78
  %.reload23 = load i64, ptr %.reg2mem22, align 8
  %.reload26 = load i32, ptr %.reg2mem25, align 4
  store i32 %.reload26, ptr %.reg2mem130, align 4
  store i64 %.reload23, ptr %.reg2mem132, align 8
  br label %72

86:                                               ; preds = %78
  %.reload35 = load i32, ptr %.reg2mem33, align 4
  %.reload42 = load i32, ptr %.reg2mem40, align 4
  %87 = add i32 %.reload35, %.reload42
  store i32 %87, ptr %.reg2mem20, align 4
  %.reload38 = load i64, ptr %.reg2mem36, align 8
  %88 = add nuw nsw i64 %.reload38, 1
  store i64 %88, ptr %.reg2mem17, align 8
  %.reload41 = load i32, ptr %.reg2mem40, align 4
  %89 = add nsw i32 %.reload41, -1
  store i32 %89, ptr %.reg2mem, align 4
  %.reload19 = load i64, ptr %.reg2mem17, align 8
  %90 = icmp eq i64 %.reload19, 500
  br i1 %90, label %91, label %._crit_edge16, !llvm.loop !21

._crit_edge16:                                    ; preds = %86
  %.reload = load i32, ptr %.reg2mem, align 4
  %.reload18 = load i64, ptr %.reg2mem17, align 8
  %.reload21 = load i32, ptr %.reg2mem20, align 4
  store i32 %.reload21, ptr %.reg2mem134, align 4
  store i64 %.reload18, ptr %.reg2mem136, align 8
  store i32 %.reload, ptr %.reg2mem138, align 4
  br label %71

91:                                               ; preds = %86
  %92 = load ptr, ptr @stderr, align 8, !tbaa !18
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %94 = load ptr, ptr @stderr, align 8, !tbaa !18
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.6) #4
  %.reload129 = load ptr, ptr %.reg2mem125, align 8
  tail call void @free(ptr noundef %.reload129) #4
  %.reload124 = load ptr, ptr %.reg2mem115, align 8
  tail call void @free(ptr noundef nonnull %.reload124) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9, !10}
