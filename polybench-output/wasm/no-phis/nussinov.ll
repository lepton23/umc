; ModuleID = './polybench-output/wasm/no-phis/nussinov.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/medley/nussinov/nussinov.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem21 = alloca i32, align 4
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem28 = alloca i32, align 4
  %.reg2mem31 = alloca i32, align 4
  %.reg2mem34 = alloca i32, align 4
  %.reg2mem37 = alloca i32, align 4
  %.reg2mem41 = alloca i32, align 4
  %.reg2mem44 = alloca i32, align 4
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem53 = alloca ptr, align 4
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem65 = alloca i32, align 4
  %.reg2mem67 = alloca i32, align 4
  %.reg2mem71 = alloca i32, align 4
  %.reg2mem75 = alloca i32, align 4
  %.reg2mem79 = alloca i32, align 4
  %.reg2mem81 = alloca i32, align 4
  %.reg2mem84 = alloca i32, align 4
  %.reg2mem87 = alloca ptr, align 4
  %.reg2mem92 = alloca i32, align 4
  %.reg2mem101 = alloca i32, align 4
  %.reg2mem104 = alloca i32, align 4
  %.reg2mem106 = alloca i32, align 4
  %.reg2mem108 = alloca ptr, align 4
  %.reg2mem110 = alloca i32, align 4
  %.reg2mem116 = alloca i32, align 4
  %.reg2mem127 = alloca i32, align 4
  %.reg2mem130 = alloca i32, align 4
  %.reg2mem133 = alloca i32, align 4
  %.reg2mem136 = alloca i32, align 4
  %.reg2mem140 = alloca ptr, align 4
  %.reg2mem150 = alloca ptr, align 4
  %.reg2mem155 = alloca i32, align 4
  %.reg2mem157 = alloca i32, align 4
  %.reg2mem159 = alloca i32, align 4
  %.reg2mem161 = alloca i32, align 4
  %.reg2mem163 = alloca i32, align 4
  %.reg2mem165 = alloca i32, align 4
  %.reg2mem167 = alloca i32, align 4
  %.reg2mem169 = alloca i32, align 4
  %.reg2mem171 = alloca i32, align 4
  %.reg2mem173 = alloca i32, align 4
  %.reg2mem175 = alloca i32, align 4
  %.reg2mem177 = alloca i32, align 4
  %.reg2mem179 = alloca i32, align 4
  %.reg2mem181 = alloca i32, align 4
  %.reg2mem183 = alloca i32, align 4
  %.reg2mem185 = alloca i32, align 4
  %.reg2mem187 = alloca i32, align 4
  %.reg2mem189 = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 1) #3
  store ptr %3, ptr %.reg2mem150, align 4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 250000, i32 noundef 4) #3
  store ptr %4, ptr %.reg2mem140, align 4
  store i32 0, ptr %.reg2mem189, align 4
  br label %5

5:                                                ; preds = %._crit_edge1, %2
  %.reload190 = load i32, ptr %.reg2mem189, align 4
  %6 = add nuw nsw i32 %.reload190, 1
  store i32 %6, ptr %.reg2mem136, align 4
  %.reload139 = load i32, ptr %.reg2mem136, align 4
  %7 = trunc i32 %.reload139 to i8
  %8 = and i8 %7, 3
  %.reload153 = load ptr, ptr %.reg2mem150, align 4
  %9 = getelementptr inbounds i8, ptr %.reload153, i32 %.reload190
  store i8 %8, ptr %9, align 1, !tbaa !2
  %.reload138 = load i32, ptr %.reg2mem136, align 4
  %10 = icmp eq i32 %.reload138, 500
  br i1 %10, label %._crit_edge, label %._crit_edge1, !llvm.loop !5

._crit_edge1:                                     ; preds = %5
  %.reload137 = load i32, ptr %.reg2mem136, align 4
  store i32 %.reload137, ptr %.reg2mem189, align 4
  br label %5

._crit_edge:                                      ; preds = %5
  store i32 0, ptr %.reg2mem187, align 4
  br label %11

11:                                               ; preds = %._crit_edge4, %._crit_edge
  %.reload188 = load i32, ptr %.reg2mem187, align 4
  store i32 %.reload188, ptr %.reg2mem133, align 4
  store i32 0, ptr %.reg2mem185, align 4
  br label %12

12:                                               ; preds = %._crit_edge2, %11
  %.reload186 = load i32, ptr %.reg2mem185, align 4
  %.reload135 = load i32, ptr %.reg2mem133, align 4
  %.reload148 = load ptr, ptr %.reg2mem140, align 4
  %13 = getelementptr inbounds [500 x i32], ptr %.reload148, i32 %.reload135, i32 %.reload186
  store i32 0, ptr %13, align 4, !tbaa !8
  %14 = add nuw nsw i32 %.reload186, 1
  store i32 %14, ptr %.reg2mem130, align 4
  %.reload132 = load i32, ptr %.reg2mem130, align 4
  %15 = icmp eq i32 %.reload132, 500
  br i1 %15, label %16, label %._crit_edge2, !llvm.loop !10

._crit_edge2:                                     ; preds = %12
  %.reload131 = load i32, ptr %.reg2mem130, align 4
  store i32 %.reload131, ptr %.reg2mem185, align 4
  br label %12

16:                                               ; preds = %12
  %.reload134 = load i32, ptr %.reg2mem133, align 4
  %17 = add nuw nsw i32 %.reload134, 1
  store i32 %17, ptr %.reg2mem127, align 4
  %.reload129 = load i32, ptr %.reg2mem127, align 4
  %18 = icmp eq i32 %.reload129, 500
  br i1 %18, label %._crit_edge3, label %._crit_edge4, !llvm.loop !11

._crit_edge4:                                     ; preds = %16
  %.reload128 = load i32, ptr %.reg2mem127, align 4
  store i32 %.reload128, ptr %.reg2mem187, align 4
  br label %11

._crit_edge3:                                     ; preds = %16
  store i32 499, ptr %.reg2mem183, align 4
  br label %19

19:                                               ; preds = %._crit_edge13, %._crit_edge3
  %.reload184 = load i32, ptr %.reg2mem183, align 4
  store i32 %.reload184, ptr %.reg2mem116, align 4
  %.reload126 = load i32, ptr %.reg2mem116, align 4
  %20 = add nuw nsw i32 %.reload126, 1
  store i32 %20, ptr %.reg2mem110, align 4
  %.reload125 = load i32, ptr %.reg2mem116, align 4
  %21 = icmp ult i32 %.reload125, 499
  br i1 %21, label %22, label %._crit_edge5

._crit_edge5:                                     ; preds = %19
  br label %62

22:                                               ; preds = %19
  %.reload122 = load i32, ptr %.reg2mem116, align 4
  %.reload152 = load ptr, ptr %.reg2mem150, align 4
  %23 = getelementptr inbounds i8, ptr %.reload152, i32 %.reload122
  store ptr %23, ptr %.reg2mem108, align 4
  %.reload121 = load i32, ptr %.reg2mem116, align 4
  %.reload147 = load ptr, ptr %.reg2mem140, align 4
  %24 = getelementptr inbounds [500 x i32], ptr %.reload147, i32 %.reload121, i32 %.reload121
  %25 = load i32, ptr %24, align 4, !tbaa !8
  store i32 %25, ptr %.reg2mem106, align 4
  %.reload112 = load i32, ptr %.reg2mem110, align 4
  %.reload117 = load i32, ptr %.reg2mem116, align 4
  %.reload141 = load ptr, ptr %.reg2mem140, align 4
  %26 = getelementptr inbounds [500 x i32], ptr %.reload141, i32 %.reload112, i32 %.reload117
  %27 = load i32, ptr %26, align 4, !tbaa !8
  store i32 %27, ptr %.reg2mem104, align 4
  %.reload105 = load i32, ptr %.reg2mem104, align 4
  %.reload107 = load i32, ptr %.reg2mem106, align 4
  %.reload113 = load i32, ptr %.reg2mem110, align 4
  store i32 %.reload113, ptr %.reg2mem177, align 4
  store i32 %.reload107, ptr %.reg2mem179, align 4
  store i32 %.reload105, ptr %.reg2mem181, align 4
  br label %28

28:                                               ; preds = %._crit_edge12, %22
  %.reload182 = load i32, ptr %.reg2mem181, align 4
  %.reload180 = load i32, ptr %.reg2mem179, align 4
  %.reload178 = load i32, ptr %.reg2mem177, align 4
  store i32 %.reload182, ptr %.reg2mem101, align 4
  store i32 %.reload178, ptr %.reg2mem92, align 4
  %.reload100 = load i32, ptr %.reg2mem92, align 4
  %29 = add nsw i32 %.reload100, -1
  %.reload99 = load i32, ptr %.reg2mem92, align 4
  %.reload120 = load i32, ptr %.reg2mem116, align 4
  %.reload146 = load ptr, ptr %.reg2mem140, align 4
  %30 = getelementptr inbounds [500 x i32], ptr %.reload146, i32 %.reload120, i32 %.reload99
  store ptr %30, ptr %.reg2mem87, align 4
  %.reload91 = load ptr, ptr %.reg2mem87, align 4
  %31 = load i32, ptr %.reload91, align 4, !tbaa !8
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 %.reload180)
  %.reload98 = load i32, ptr %.reg2mem92, align 4
  %.reload115 = load i32, ptr %.reg2mem110, align 4
  %.reload145 = load ptr, ptr %.reg2mem140, align 4
  %33 = getelementptr inbounds [500 x i32], ptr %.reload145, i32 %.reload115, i32 %.reload98
  %34 = load i32, ptr %33, align 4, !tbaa !8
  store i32 %34, ptr %.reg2mem84, align 4
  %.reload86 = load i32, ptr %.reg2mem84, align 4
  %35 = tail call i32 @llvm.smax.i32(i32 %32, i32 %.reload86)
  store i32 %35, ptr %.reg2mem81, align 4
  %.reload83 = load i32, ptr %.reg2mem81, align 4
  %.reload90 = load ptr, ptr %.reg2mem87, align 4
  store i32 %.reload83, ptr %.reload90, align 4, !tbaa !8
  %.reload119 = load i32, ptr %.reg2mem116, align 4
  %36 = icmp ult i32 %.reload119, %29
  br i1 %36, label %37, label %._crit_edge6

._crit_edge6:                                     ; preds = %28
  %.reload103 = load i32, ptr %.reg2mem101, align 4
  store i32 %.reload103, ptr %.reg2mem175, align 4
  br label %47

37:                                               ; preds = %28
  %.reload109 = load ptr, ptr %.reg2mem108, align 4
  %38 = load i8, ptr %.reload109, align 1, !tbaa !2
  %39 = sext i8 %38 to i32
  %.reload93 = load i32, ptr %.reg2mem92, align 4
  %.reload151 = load ptr, ptr %.reg2mem150, align 4
  %40 = getelementptr inbounds i8, ptr %.reload151, i32 %.reload93
  %41 = load i8, ptr %40, align 1, !tbaa !2
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %42, %39
  %44 = icmp eq i32 %43, 3
  %45 = zext i1 %44 to i32
  %.reload102 = load i32, ptr %.reg2mem101, align 4
  %46 = add nsw i32 %.reload102, %45
  store i32 %46, ptr %.reg2mem79, align 4
  %.reload80 = load i32, ptr %.reg2mem79, align 4
  store i32 %.reload80, ptr %.reg2mem175, align 4
  br label %47

47:                                               ; preds = %._crit_edge6, %37
  %.reload176 = load i32, ptr %.reg2mem175, align 4
  %.reload82 = load i32, ptr %.reg2mem81, align 4
  %48 = tail call i32 @llvm.smax.i32(i32 %.reload82, i32 %.reload176)
  store i32 %48, ptr %.reg2mem75, align 4
  %.reload78 = load i32, ptr %.reg2mem75, align 4
  %.reload89 = load ptr, ptr %.reg2mem87, align 4
  store i32 %.reload78, ptr %.reload89, align 4, !tbaa !8
  %.reload97 = load i32, ptr %.reg2mem92, align 4
  %.reload114 = load i32, ptr %.reg2mem110, align 4
  %49 = icmp ult i32 %.reload114, %.reload97
  br i1 %49, label %._crit_edge7, label %._crit_edge8

._crit_edge8:                                     ; preds = %47
  %.reload77 = load i32, ptr %.reg2mem75, align 4
  store i32 %.reload77, ptr %.reg2mem169, align 4
  br label %59

._crit_edge7:                                     ; preds = %47
  %.reload76 = load i32, ptr %.reg2mem75, align 4
  %.reload111 = load i32, ptr %.reg2mem110, align 4
  store i32 %.reload111, ptr %.reg2mem171, align 4
  store i32 %.reload76, ptr %.reg2mem173, align 4
  br label %50

50:                                               ; preds = %._crit_edge10, %._crit_edge7
  %.reload174 = load i32, ptr %.reg2mem173, align 4
  %.reload172 = load i32, ptr %.reg2mem171, align 4
  %.reload118 = load i32, ptr %.reg2mem116, align 4
  %.reload144 = load ptr, ptr %.reg2mem140, align 4
  %51 = getelementptr inbounds [500 x i32], ptr %.reload144, i32 %.reload118, i32 %.reload172
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %53 = add nuw nsw i32 %.reload172, 1
  store i32 %53, ptr %.reg2mem71, align 4
  %.reload74 = load i32, ptr %.reg2mem71, align 4
  %.reload95 = load i32, ptr %.reg2mem92, align 4
  %.reload143 = load ptr, ptr %.reg2mem140, align 4
  %54 = getelementptr inbounds [500 x i32], ptr %.reload143, i32 %.reload74, i32 %.reload95
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %56 = add nsw i32 %55, %52
  %57 = tail call i32 @llvm.smax.i32(i32 %.reload174, i32 %56)
  store i32 %57, ptr %.reg2mem67, align 4
  %.reload70 = load i32, ptr %.reg2mem67, align 4
  %.reload88 = load ptr, ptr %.reg2mem87, align 4
  store i32 %.reload70, ptr %.reload88, align 4, !tbaa !8
  %.reload73 = load i32, ptr %.reg2mem71, align 4
  %.reload94 = load i32, ptr %.reg2mem92, align 4
  %58 = icmp eq i32 %.reload73, %.reload94
  br i1 %58, label %._crit_edge9, label %._crit_edge10, !llvm.loop !12

._crit_edge10:                                    ; preds = %50
  %.reload69 = load i32, ptr %.reg2mem67, align 4
  %.reload72 = load i32, ptr %.reg2mem71, align 4
  store i32 %.reload72, ptr %.reg2mem171, align 4
  store i32 %.reload69, ptr %.reg2mem173, align 4
  br label %50

._crit_edge9:                                     ; preds = %50
  %.reload68 = load i32, ptr %.reg2mem67, align 4
  store i32 %.reload68, ptr %.reg2mem169, align 4
  br label %59

59:                                               ; preds = %._crit_edge9, %._crit_edge8
  %.reload170 = load i32, ptr %.reg2mem169, align 4
  store i32 %.reload170, ptr %.reg2mem65, align 4
  %.reload96 = load i32, ptr %.reg2mem92, align 4
  %60 = add nuw nsw i32 %.reload96, 1
  store i32 %60, ptr %.reg2mem62, align 4
  %.reload64 = load i32, ptr %.reg2mem62, align 4
  %61 = icmp eq i32 %.reload64, 500
  br i1 %61, label %._crit_edge11, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %59
  %.reload63 = load i32, ptr %.reg2mem62, align 4
  %.reload66 = load i32, ptr %.reg2mem65, align 4
  %.reload85 = load i32, ptr %.reg2mem84, align 4
  store i32 %.reload63, ptr %.reg2mem177, align 4
  store i32 %.reload66, ptr %.reg2mem179, align 4
  store i32 %.reload85, ptr %.reg2mem181, align 4
  br label %28

._crit_edge11:                                    ; preds = %59
  br label %62

62:                                               ; preds = %._crit_edge11, %._crit_edge5
  %.reload124 = load i32, ptr %.reg2mem116, align 4
  %63 = add nsw i32 %.reload124, -1
  store i32 %63, ptr %.reg2mem60, align 4
  %.reload123 = load i32, ptr %.reg2mem116, align 4
  %64 = icmp eq i32 %.reload123, 0
  br i1 %64, label %65, label %._crit_edge13, !llvm.loop !14

._crit_edge13:                                    ; preds = %62
  %.reload61 = load i32, ptr %.reg2mem60, align 4
  store i32 %.reload61, ptr %.reg2mem183, align 4
  br label %19

65:                                               ; preds = %62
  %66 = load ptr, ptr @stderr, align 4, !tbaa !15
  store ptr %66, ptr %.reg2mem53, align 4
  %.reload59 = load ptr, ptr %.reg2mem53, align 4
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload59, ptr noundef nonnull @.str) #3
  %.reload58 = load ptr, ptr %.reg2mem53, align 4
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload58, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  store i32 0, ptr %.reg2mem159, align 4
  store i32 0, ptr %.reg2mem161, align 4
  store i32 500, ptr %.reg2mem163, align 4
  store i32 499, ptr %.reg2mem165, align 4
  store i32 500, ptr %.reg2mem167, align 4
  br label %69

69:                                               ; preds = %._crit_edge16, %65
  %.reload168 = load i32, ptr %.reg2mem167, align 4
  %.reload166 = load i32, ptr %.reg2mem165, align 4
  %.reload164 = load i32, ptr %.reg2mem163, align 4
  %.reload162 = load i32, ptr %.reg2mem161, align 4
  %.reload160 = load i32, ptr %.reg2mem159, align 4
  store i32 %.reload168, ptr %.reg2mem50, align 4
  store i32 %.reload166, ptr %.reg2mem47, align 4
  store i32 %.reload164, ptr %.reg2mem44, align 4
  store i32 %.reload162, ptr %.reg2mem41, align 4
  store i32 %.reload160, ptr %.reg2mem37, align 4
  %.reload38 = load i32, ptr %.reg2mem37, align 4
  %.reload42 = load i32, ptr %.reg2mem41, align 4
  store i32 %.reload38, ptr %.reg2mem155, align 4
  store i32 %.reload42, ptr %.reg2mem157, align 4
  br label %70

70:                                               ; preds = %._crit_edge15, %69
  %.reload158 = load i32, ptr %.reg2mem157, align 4
  %.reload156 = load i32, ptr %.reg2mem155, align 4
  store i32 %.reload158, ptr %.reg2mem34, align 4
  store i32 %.reload156, ptr %.reg2mem31, align 4
  %.reload36 = load i32, ptr %.reg2mem34, align 4
  %71 = srem i32 %.reload36, 20
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %._crit_edge14

._crit_edge14:                                    ; preds = %70
  br label %75

73:                                               ; preds = %70
  %.reload54 = load ptr, ptr %.reg2mem53, align 4
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload54, ptr noundef nonnull @.str.3) #3
  br label %75

75:                                               ; preds = %._crit_edge14, %73
  %.reload33 = load i32, ptr %.reg2mem31, align 4
  %.reload40 = load i32, ptr %.reg2mem37, align 4
  %.reload142 = load ptr, ptr %.reg2mem140, align 4
  %76 = getelementptr inbounds [500 x i32], ptr %.reload142, i32 %.reload40, i32 %.reload33
  %77 = load i32, ptr %76, align 4, !tbaa !8
  %.reload57 = load ptr, ptr %.reg2mem53, align 4
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload57, ptr noundef nonnull @.str.4, i32 noundef %77) #3
  %.reload35 = load i32, ptr %.reg2mem34, align 4
  %79 = add i32 %.reload35, 1
  store i32 %79, ptr %.reg2mem28, align 4
  %.reload32 = load i32, ptr %.reg2mem31, align 4
  %80 = add nuw nsw i32 %.reload32, 1
  store i32 %80, ptr %.reg2mem26, align 4
  %.reload30 = load i32, ptr %.reg2mem28, align 4
  %.reload52 = load i32, ptr %.reg2mem50, align 4
  %81 = icmp eq i32 %.reload30, %.reload52
  br i1 %81, label %82, label %._crit_edge15, !llvm.loop !17

._crit_edge15:                                    ; preds = %75
  %.reload27 = load i32, ptr %.reg2mem26, align 4
  %.reload29 = load i32, ptr %.reg2mem28, align 4
  store i32 %.reload27, ptr %.reg2mem155, align 4
  store i32 %.reload29, ptr %.reg2mem157, align 4
  br label %70

82:                                               ; preds = %75
  %.reload43 = load i32, ptr %.reg2mem41, align 4
  %.reload46 = load i32, ptr %.reg2mem44, align 4
  %83 = add i32 %.reload43, %.reload46
  store i32 %83, ptr %.reg2mem24, align 4
  %.reload39 = load i32, ptr %.reg2mem37, align 4
  %84 = add nuw nsw i32 %.reload39, 1
  store i32 %84, ptr %.reg2mem21, align 4
  %.reload45 = load i32, ptr %.reg2mem44, align 4
  %85 = add nsw i32 %.reload45, -1
  store i32 %85, ptr %.reg2mem19, align 4
  %.reload49 = load i32, ptr %.reg2mem47, align 4
  %86 = add nsw i32 %.reload49, -1
  store i32 %86, ptr %.reg2mem17, align 4
  %.reload48 = load i32, ptr %.reg2mem47, align 4
  %.reload51 = load i32, ptr %.reg2mem50, align 4
  %87 = add i32 %.reload48, %.reload51
  store i32 %87, ptr %.reg2mem, align 4
  %.reload23 = load i32, ptr %.reg2mem21, align 4
  %88 = icmp eq i32 %.reload23, 500
  br i1 %88, label %89, label %._crit_edge16, !llvm.loop !18

._crit_edge16:                                    ; preds = %82
  %.reload = load i32, ptr %.reg2mem, align 4
  %.reload18 = load i32, ptr %.reg2mem17, align 4
  %.reload20 = load i32, ptr %.reg2mem19, align 4
  %.reload22 = load i32, ptr %.reg2mem21, align 4
  %.reload25 = load i32, ptr %.reg2mem24, align 4
  store i32 %.reload22, ptr %.reg2mem159, align 4
  store i32 %.reload25, ptr %.reg2mem161, align 4
  store i32 %.reload20, ptr %.reg2mem163, align 4
  store i32 %.reload18, ptr %.reg2mem165, align 4
  store i32 %.reload, ptr %.reg2mem167, align 4
  br label %69

89:                                               ; preds = %82
  %.reload56 = load ptr, ptr %.reg2mem53, align 4
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload56, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %.reload55 = load ptr, ptr %.reg2mem53, align 4
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.reload55, ptr noundef nonnull @.str.6) #3
  %.reload154 = load ptr, ptr %.reg2mem150, align 4
  tail call void @free(ptr noundef %.reload154) #3
  %.reload149 = load ptr, ptr %.reg2mem140, align 4
  tail call void @free(ptr noundef nonnull %.reload149) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+multivalue,+mutable-globals,+reference-types,+sign-ext" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 19.1.7 (20ubuntu4)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !3, i64 0}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
