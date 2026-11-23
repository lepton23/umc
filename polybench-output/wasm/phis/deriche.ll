; ModuleID = './polybench-output/wasm/phis/deriche.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/medley/deriche/deriche.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 345600, i32 noundef 4) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 345600, i32 noundef 4) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 345600, i32 noundef 4) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 345600, i32 noundef 4) #3
  br label %7

7:                                                ; preds = %20, %2
  %8 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %9 = mul nuw nsw i32 %8, 313
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 0, %7 ], [ %18, %10 ]
  %12 = mul nuw nsw i32 %11, 991
  %13 = add nuw nsw i32 %12, %9
  %14 = and i32 %13, 65535
  %15 = uitofp nneg i32 %14 to float
  %16 = fdiv float %15, 6.553500e+04
  %17 = getelementptr inbounds [480 x float], ptr %3, i32 %8, i32 %11
  store float %16, ptr %17, align 4, !tbaa !2
  %18 = add nuw nsw i32 %11, 1
  %19 = icmp eq i32 %18, 480
  br i1 %19, label %20, label %10, !llvm.loop !6

20:                                               ; preds = %10
  %21 = add nuw nsw i32 %8, 1
  %22 = icmp eq i32 %21, 720
  br i1 %22, label %23, label %7, !llvm.loop !9

23:                                               ; preds = %20
  %24 = tail call float @expf(float noundef -2.500000e-01) #3
  %25 = fsub float 1.000000e+00, %24
  %26 = tail call float @expf(float noundef -2.500000e-01) #3
  %27 = fsub float 1.000000e+00, %26
  %28 = fmul float %25, %27
  %29 = tail call float @expf(float noundef -2.500000e-01) #3
  %30 = tail call float @llvm.fmuladd.f32(float %29, float 5.000000e-01, float 1.000000e+00)
  %31 = tail call float @expf(float noundef 5.000000e-01) #3
  %32 = fsub float %30, %31
  %33 = fdiv float %28, %32
  %34 = tail call float @expf(float noundef -2.500000e-01) #3
  %35 = fmul float %34, %33
  %36 = fmul float %35, -7.500000e-01
  %37 = tail call float @expf(float noundef -2.500000e-01) #3
  %38 = fmul float %33, %37
  %39 = tail call float @expf(float noundef -5.000000e-01) #3
  %40 = tail call float @powf(float noundef 2.000000e+00, float noundef -2.500000e-01) #3
  %41 = tail call float @expf(float noundef -5.000000e-01) #3
  %42 = fneg float %41
  br label %43

43:                                               ; preds = %60, %23
  %44 = phi i32 [ 0, %23 ], [ %61, %60 ]
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i32 [ 0, %43 ], [ %58, %45 ]
  %47 = phi float [ 0.000000e+00, %43 ], [ %57, %45 ]
  %48 = phi float [ 0.000000e+00, %43 ], [ %55, %45 ]
  %49 = phi float [ 0.000000e+00, %43 ], [ %48, %45 ]
  %50 = getelementptr inbounds [480 x float], ptr %3, i32 %44, i32 %46
  %51 = load float, ptr %50, align 4, !tbaa !2
  %52 = fmul float %36, %47
  %53 = tail call float @llvm.fmuladd.f32(float %33, float %51, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %40, float %48, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %42, float %49, float %54)
  %56 = getelementptr inbounds [480 x float], ptr %5, i32 %44, i32 %46
  store float %55, ptr %56, align 4, !tbaa !2
  %57 = load float, ptr %50, align 4, !tbaa !2
  %58 = add nuw nsw i32 %46, 1
  %59 = icmp eq i32 %58, 480
  br i1 %59, label %60, label %45, !llvm.loop !10

60:                                               ; preds = %45
  %61 = add nuw nsw i32 %44, 1
  %62 = icmp eq i32 %61, 720
  br i1 %62, label %63, label %43, !llvm.loop !11

63:                                               ; preds = %60
  %64 = fmul float %38, 1.250000e+00
  %65 = fneg float %33
  %66 = fmul float %39, %65
  br label %67

67:                                               ; preds = %84, %63
  %68 = phi i32 [ %85, %84 ], [ 0, %63 ]
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi i32 [ 479, %67 ], [ %82, %69 ]
  %71 = phi float [ 0.000000e+00, %67 ], [ %81, %69 ]
  %72 = phi float [ 0.000000e+00, %67 ], [ %71, %69 ]
  %73 = phi float [ 0.000000e+00, %67 ], [ %78, %69 ]
  %74 = phi float [ 0.000000e+00, %67 ], [ %73, %69 ]
  %75 = fmul float %66, %72
  %76 = tail call float @llvm.fmuladd.f32(float %64, float %71, float %75)
  %77 = tail call float @llvm.fmuladd.f32(float %40, float %73, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %42, float %74, float %77)
  %79 = getelementptr inbounds [480 x float], ptr %6, i32 %68, i32 %70
  store float %78, ptr %79, align 4, !tbaa !2
  %80 = getelementptr inbounds [480 x float], ptr %3, i32 %68, i32 %70
  %81 = load float, ptr %80, align 4, !tbaa !2
  %82 = add nsw i32 %70, -1
  %83 = icmp eq i32 %70, 0
  br i1 %83, label %84, label %69, !llvm.loop !12

84:                                               ; preds = %69
  %85 = add nuw nsw i32 %68, 1
  %86 = icmp eq i32 %85, 720
  br i1 %86, label %87, label %67, !llvm.loop !13

87:                                               ; preds = %84, %99
  %88 = phi i32 [ %100, %99 ], [ 0, %84 ]
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ 0, %87 ], [ %97, %89 ]
  %91 = getelementptr inbounds [480 x float], ptr %5, i32 %88, i32 %90
  %92 = load float, ptr %91, align 4, !tbaa !2
  %93 = getelementptr inbounds [480 x float], ptr %6, i32 %88, i32 %90
  %94 = load float, ptr %93, align 4, !tbaa !2
  %95 = fadd float %92, %94
  %96 = getelementptr inbounds [480 x float], ptr %4, i32 %88, i32 %90
  store float %95, ptr %96, align 4, !tbaa !2
  %97 = add nuw nsw i32 %90, 1
  %98 = icmp eq i32 %97, 480
  br i1 %98, label %99, label %89, !llvm.loop !14

99:                                               ; preds = %89
  %100 = add nuw nsw i32 %88, 1
  %101 = icmp eq i32 %100, 720
  br i1 %101, label %102, label %87, !llvm.loop !15

102:                                              ; preds = %99, %119
  %103 = phi i32 [ %120, %119 ], [ 0, %99 ]
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i32 [ 0, %102 ], [ %117, %104 ]
  %106 = phi float [ 0.000000e+00, %102 ], [ %116, %104 ]
  %107 = phi float [ 0.000000e+00, %102 ], [ %114, %104 ]
  %108 = phi float [ 0.000000e+00, %102 ], [ %107, %104 ]
  %109 = getelementptr inbounds [480 x float], ptr %4, i32 %105, i32 %103
  %110 = load float, ptr %109, align 4, !tbaa !2
  %111 = fmul float %36, %106
  %112 = tail call float @llvm.fmuladd.f32(float %33, float %110, float %111)
  %113 = tail call float @llvm.fmuladd.f32(float %40, float %107, float %112)
  %114 = tail call float @llvm.fmuladd.f32(float %42, float %108, float %113)
  %115 = getelementptr inbounds [480 x float], ptr %5, i32 %105, i32 %103
  store float %114, ptr %115, align 4, !tbaa !2
  %116 = load float, ptr %109, align 4, !tbaa !2
  %117 = add nuw nsw i32 %105, 1
  %118 = icmp eq i32 %117, 720
  br i1 %118, label %119, label %104, !llvm.loop !16

119:                                              ; preds = %104
  %120 = add nuw nsw i32 %103, 1
  %121 = icmp eq i32 %120, 480
  br i1 %121, label %122, label %102, !llvm.loop !17

122:                                              ; preds = %119, %139
  %123 = phi i32 [ %140, %139 ], [ 0, %119 ]
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi i32 [ 719, %122 ], [ %137, %124 ]
  %126 = phi float [ 0.000000e+00, %122 ], [ %136, %124 ]
  %127 = phi float [ 0.000000e+00, %122 ], [ %126, %124 ]
  %128 = phi float [ 0.000000e+00, %122 ], [ %133, %124 ]
  %129 = phi float [ 0.000000e+00, %122 ], [ %128, %124 ]
  %130 = fmul float %66, %127
  %131 = tail call float @llvm.fmuladd.f32(float %64, float %126, float %130)
  %132 = tail call float @llvm.fmuladd.f32(float %40, float %128, float %131)
  %133 = tail call float @llvm.fmuladd.f32(float %42, float %129, float %132)
  %134 = getelementptr inbounds [480 x float], ptr %6, i32 %125, i32 %123
  store float %133, ptr %134, align 4, !tbaa !2
  %135 = getelementptr inbounds [480 x float], ptr %4, i32 %125, i32 %123
  %136 = load float, ptr %135, align 4, !tbaa !2
  %137 = add nsw i32 %125, -1
  %138 = icmp eq i32 %125, 0
  br i1 %138, label %139, label %124, !llvm.loop !18

139:                                              ; preds = %124
  %140 = add nuw nsw i32 %123, 1
  %141 = icmp eq i32 %140, 480
  br i1 %141, label %142, label %122, !llvm.loop !19

142:                                              ; preds = %139, %154
  %143 = phi i32 [ %155, %154 ], [ 0, %139 ]
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi i32 [ 0, %142 ], [ %152, %144 ]
  %146 = getelementptr inbounds [480 x float], ptr %5, i32 %143, i32 %145
  %147 = load float, ptr %146, align 4, !tbaa !2
  %148 = getelementptr inbounds [480 x float], ptr %6, i32 %143, i32 %145
  %149 = load float, ptr %148, align 4, !tbaa !2
  %150 = fadd float %147, %149
  %151 = getelementptr inbounds [480 x float], ptr %4, i32 %143, i32 %145
  store float %150, ptr %151, align 4, !tbaa !2
  %152 = add nuw nsw i32 %145, 1
  %153 = icmp eq i32 %152, 480
  br i1 %153, label %154, label %144, !llvm.loop !20

154:                                              ; preds = %144
  %155 = add nuw nsw i32 %143, 1
  %156 = icmp eq i32 %155, 720
  br i1 %156, label %157, label %142, !llvm.loop !21

157:                                              ; preds = %154
  %158 = load ptr, ptr @stderr, align 4, !tbaa !22
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str) #3
  %160 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %161

161:                                              ; preds = %178, %157
  %162 = phi i32 [ 0, %157 ], [ %179, %178 ]
  %163 = mul nuw nsw i32 %162, 480
  br label %164

164:                                              ; preds = %171, %161
  %165 = phi i32 [ 0, %161 ], [ %176, %171 ]
  %166 = add nuw nsw i32 %165, %163
  %167 = urem i32 %166, 20
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.3) #3
  br label %171

171:                                              ; preds = %169, %164
  %172 = getelementptr inbounds [480 x float], ptr %4, i32 %162, i32 %165
  %173 = load float, ptr %172, align 4, !tbaa !2
  %174 = fpext float %173 to double
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.4, double noundef %174) #3
  %176 = add nuw nsw i32 %165, 1
  %177 = icmp eq i32 %176, 480
  br i1 %177, label %178, label %164, !llvm.loop !24

178:                                              ; preds = %171
  %179 = add nuw nsw i32 %162, 1
  %180 = icmp eq i32 %179, 720
  br i1 %180, label %181, label %161, !llvm.loop !25

181:                                              ; preds = %178
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef %3) #3
  tail call void @free(ptr noundef nonnull %4) #3
  tail call void @free(ptr noundef %5) #3
  tail call void @free(ptr noundef %6) #3
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @free(ptr noundef) local_unnamed_addr #1

declare float @expf(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare float @powf(float noundef, float noundef) local_unnamed_addr #1

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
!3 = !{!"float", !4, i64 0}
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
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !4, i64 0}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !7, !8}
