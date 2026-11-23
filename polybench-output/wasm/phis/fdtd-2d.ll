; ModuleID = './polybench-output/wasm/phis/fdtd-2d.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/fdtd-2d/fdtd-2d.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 100, i32 noundef 8) #3
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 0, %2 ], [ %11, %7 ]
  %9 = uitofp nneg i32 %8 to double
  %10 = getelementptr inbounds double, ptr %6, i32 %8
  store double %9, ptr %10, align 8, !tbaa !2
  %11 = add nuw nsw i32 %8, 1
  %12 = icmp eq i32 %11, 100
  br i1 %12, label %13, label %7, !llvm.loop !6

13:                                               ; preds = %7, %33
  %14 = phi i32 [ %34, %33 ], [ 0, %7 ]
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %17, %15 ]
  %17 = add nuw nsw i32 %16, 1
  %18 = mul nuw nsw i32 %17, %14
  %19 = uitofp nneg i32 %18 to double
  %20 = fdiv double %19, 2.000000e+02
  %21 = getelementptr inbounds [240 x double], ptr %3, i32 %14, i32 %16
  store double %20, ptr %21, align 8, !tbaa !2
  %22 = add nuw nsw i32 %16, 2
  %23 = mul nuw nsw i32 %22, %14
  %24 = uitofp nneg i32 %23 to double
  %25 = fdiv double %24, 2.400000e+02
  %26 = getelementptr inbounds [240 x double], ptr %4, i32 %14, i32 %16
  store double %25, ptr %26, align 8, !tbaa !2
  %27 = add nuw nsw i32 %16, 3
  %28 = mul nuw nsw i32 %27, %14
  %29 = uitofp nneg i32 %28 to double
  %30 = fdiv double %29, 2.000000e+02
  %31 = getelementptr inbounds [240 x double], ptr %5, i32 %14, i32 %16
  store double %30, ptr %31, align 8, !tbaa !2
  %32 = icmp eq i32 %17, 240
  br i1 %32, label %33, label %15, !llvm.loop !9

33:                                               ; preds = %15
  %34 = add nuw nsw i32 %14, 1
  %35 = icmp eq i32 %34, 200
  br i1 %35, label %36, label %13, !llvm.loop !10

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %5, i32 -1920
  %38 = getelementptr inbounds i8, ptr %4, i32 1920
  br label %39

39:                                               ; preds = %106, %36
  %40 = phi i32 [ 0, %36 ], [ %107, %106 ]
  %41 = getelementptr inbounds double, ptr %6, i32 %40
  %42 = load double, ptr %41, align 8, !tbaa !2
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi i32 [ 0, %39 ], [ %46, %43 ]
  %45 = getelementptr inbounds [240 x double], ptr %4, i32 0, i32 %44
  store double %42, ptr %45, align 8, !tbaa !2
  %46 = add nuw nsw i32 %44, 1
  %47 = icmp eq i32 %46, 240
  br i1 %47, label %48, label %43, !llvm.loop !11

48:                                               ; preds = %43, %62
  %49 = phi i32 [ %63, %62 ], [ 1, %43 ]
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i32 [ 0, %48 ], [ %60, %50 ]
  %52 = getelementptr inbounds [240 x double], ptr %4, i32 %49, i32 %51
  %53 = load double, ptr %52, align 8, !tbaa !2
  %54 = getelementptr inbounds [240 x double], ptr %5, i32 %49, i32 %51
  %55 = load double, ptr %54, align 8, !tbaa !2
  %56 = getelementptr nusw [240 x double], ptr %37, i32 %49, i32 %51
  %57 = load double, ptr %56, align 8, !tbaa !2
  %58 = fsub double %55, %57
  %59 = tail call double @llvm.fmuladd.f64(double %58, double -5.000000e-01, double %53)
  store double %59, ptr %52, align 8, !tbaa !2
  %60 = add nuw nsw i32 %51, 1
  %61 = icmp eq i32 %60, 240
  br i1 %61, label %62, label %50, !llvm.loop !12

62:                                               ; preds = %50
  %63 = add nuw nsw i32 %49, 1
  %64 = icmp eq i32 %63, 200
  br i1 %64, label %65, label %48, !llvm.loop !13

65:                                               ; preds = %62, %80
  %66 = phi i32 [ %81, %80 ], [ 0, %62 ]
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i32 [ 1, %65 ], [ %78, %67 ]
  %69 = getelementptr inbounds [240 x double], ptr %3, i32 %66, i32 %68
  %70 = load double, ptr %69, align 8, !tbaa !2
  %71 = getelementptr inbounds [240 x double], ptr %5, i32 %66, i32 %68
  %72 = load double, ptr %71, align 8, !tbaa !2
  %73 = add nsw i32 %68, -1
  %74 = getelementptr inbounds [240 x double], ptr %5, i32 %66, i32 %73
  %75 = load double, ptr %74, align 8, !tbaa !2
  %76 = fsub double %72, %75
  %77 = tail call double @llvm.fmuladd.f64(double %76, double -5.000000e-01, double %70)
  store double %77, ptr %69, align 8, !tbaa !2
  %78 = add nuw nsw i32 %68, 1
  %79 = icmp eq i32 %78, 240
  br i1 %79, label %80, label %67, !llvm.loop !14

80:                                               ; preds = %67
  %81 = add nuw nsw i32 %66, 1
  %82 = icmp eq i32 %81, 200
  br i1 %82, label %83, label %65, !llvm.loop !15

83:                                               ; preds = %80, %103
  %84 = phi i32 [ %104, %103 ], [ 0, %80 ]
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i32 [ 0, %83 ], [ %89, %85 ]
  %87 = getelementptr inbounds [240 x double], ptr %5, i32 %84, i32 %86
  %88 = load double, ptr %87, align 8, !tbaa !2
  %89 = add nuw nsw i32 %86, 1
  %90 = getelementptr inbounds [240 x double], ptr %3, i32 %84, i32 %89
  %91 = load double, ptr %90, align 8, !tbaa !2
  %92 = getelementptr inbounds [240 x double], ptr %3, i32 %84, i32 %86
  %93 = load double, ptr %92, align 8, !tbaa !2
  %94 = fsub double %91, %93
  %95 = getelementptr inbounds [240 x double], ptr %38, i32 %84, i32 %86
  %96 = load double, ptr %95, align 8, !tbaa !2
  %97 = fadd double %94, %96
  %98 = getelementptr inbounds [240 x double], ptr %4, i32 %84, i32 %86
  %99 = load double, ptr %98, align 8, !tbaa !2
  %100 = fsub double %97, %99
  %101 = tail call double @llvm.fmuladd.f64(double %100, double 0xBFE6666666666666, double %88)
  store double %101, ptr %87, align 8, !tbaa !2
  %102 = icmp eq i32 %89, 239
  br i1 %102, label %103, label %85, !llvm.loop !16

103:                                              ; preds = %85
  %104 = add nuw nsw i32 %84, 1
  %105 = icmp eq i32 %104, 199
  br i1 %105, label %106, label %83, !llvm.loop !17

106:                                              ; preds = %103
  %107 = add nuw nsw i32 %40, 1
  %108 = icmp eq i32 %107, 100
  br i1 %108, label %109, label %39, !llvm.loop !18

109:                                              ; preds = %106
  %110 = load ptr, ptr @stderr, align 4, !tbaa !19
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str) #3
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %113

113:                                              ; preds = %129, %109
  %114 = phi i32 [ 0, %109 ], [ %130, %129 ]
  %115 = mul nuw nsw i32 %114, 200
  br label %116

116:                                              ; preds = %123, %113
  %117 = phi i32 [ 0, %113 ], [ %127, %123 ]
  %118 = add nuw nsw i32 %117, %115
  %119 = urem i32 %118, 20
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.3) #3
  br label %123

123:                                              ; preds = %121, %116
  %124 = getelementptr inbounds [240 x double], ptr %3, i32 %114, i32 %117
  %125 = load double, ptr %124, align 8, !tbaa !2
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.4, double noundef %125) #3
  %127 = add nuw nsw i32 %117, 1
  %128 = icmp eq i32 %127, 240
  br i1 %128, label %129, label %116, !llvm.loop !21

129:                                              ; preds = %123
  %130 = add nuw nsw i32 %114, 1
  %131 = icmp eq i32 %130, 200
  br i1 %131, label %132, label %113, !llvm.loop !22

132:                                              ; preds = %129
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.6) #3
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #3
  br label %136

136:                                              ; preds = %152, %132
  %137 = phi i32 [ 0, %132 ], [ %153, %152 ]
  %138 = mul nuw nsw i32 %137, 200
  br label %139

139:                                              ; preds = %146, %136
  %140 = phi i32 [ 0, %136 ], [ %150, %146 ]
  %141 = add nuw nsw i32 %140, %138
  %142 = urem i32 %141, 20
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.3) #3
  br label %146

146:                                              ; preds = %144, %139
  %147 = getelementptr inbounds [240 x double], ptr %4, i32 %137, i32 %140
  %148 = load double, ptr %147, align 8, !tbaa !2
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.4, double noundef %148) #3
  %150 = add nuw nsw i32 %140, 1
  %151 = icmp eq i32 %150, 240
  br i1 %151, label %152, label %139, !llvm.loop !23

152:                                              ; preds = %146
  %153 = add nuw nsw i32 %137, 1
  %154 = icmp eq i32 %153, 200
  br i1 %154, label %155, label %136, !llvm.loop !24

155:                                              ; preds = %152
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #3
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #3
  br label %158

158:                                              ; preds = %174, %155
  %159 = phi i32 [ 0, %155 ], [ %175, %174 ]
  %160 = mul nuw nsw i32 %159, 200
  br label %161

161:                                              ; preds = %168, %158
  %162 = phi i32 [ 0, %158 ], [ %172, %168 ]
  %163 = add nuw nsw i32 %162, %160
  %164 = urem i32 %163, 20
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.3) #3
  br label %168

168:                                              ; preds = %166, %161
  %169 = getelementptr inbounds [240 x double], ptr %5, i32 %159, i32 %162
  %170 = load double, ptr %169, align 8, !tbaa !2
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.4, double noundef %170) #3
  %172 = add nuw nsw i32 %162, 1
  %173 = icmp eq i32 %172, 240
  br i1 %173, label %174, label %161, !llvm.loop !25

174:                                              ; preds = %168
  %175 = add nuw nsw i32 %159, 1
  %176 = icmp eq i32 %175, 200
  br i1 %176, label %177, label %158, !llvm.loop !26

177:                                              ; preds = %174
  %178 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef nonnull %5) #3
  tail call void @free(ptr noundef %6) #3
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
!16 = distinct !{!16, !7, !8}
!17 = distinct !{!17, !7, !8}
!18 = distinct !{!18, !7, !8}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !4, i64 0}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7, !8}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !7, !8}
!26 = distinct !{!26, !7, !8}
