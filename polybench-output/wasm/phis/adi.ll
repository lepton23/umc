; ModuleID = './polybench-output/wasm/phis/adi.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/adi/adi.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #3
  br label %7

7:                                                ; preds = %18, %2
  %8 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %9 = add nuw nsw i32 %8, 200
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 0, %7 ], [ %16, %10 ]
  %12 = sub nuw nsw i32 %9, %11
  %13 = uitofp nneg i32 %12 to double
  %14 = fdiv double %13, 2.000000e+02
  %15 = getelementptr inbounds [200 x double], ptr %3, i32 %8, i32 %11
  store double %14, ptr %15, align 8, !tbaa !2
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, 200
  br i1 %17, label %18, label %10, !llvm.loop !6

18:                                               ; preds = %10
  %19 = add nuw nsw i32 %8, 1
  %20 = icmp eq i32 %19, 200
  br i1 %20, label %21, label %7, !llvm.loop !9

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %4, i32 318400
  %23 = getelementptr i8, ptr %4, i32 1600
  br label %24

24:                                               ; preds = %204, %21
  %25 = phi i32 [ 1, %21 ], [ %205, %204 ]
  br label %26

26:                                               ; preds = %112, %24
  %27 = phi i32 [ %114, %112 ], [ 0, %24 ]
  %28 = phi i32 [ %41, %112 ], [ 1, %24 ]
  %29 = mul nuw nsw i32 %27, 1600
  %30 = add i32 %29, 1600
  %31 = getelementptr i8, ptr %5, i32 %30
  %32 = add i32 %29, 3192
  %33 = getelementptr i8, ptr %5, i32 %32
  %34 = getelementptr i8, ptr %6, i32 %30
  %35 = getelementptr i8, ptr %6, i32 %32
  %36 = getelementptr inbounds [200 x double], ptr %4, i32 0, i32 %28
  store double 1.000000e+00, ptr %36, align 8, !tbaa !2
  %37 = getelementptr inbounds [200 x double], ptr %5, i32 %28
  store double 0.000000e+00, ptr %37, align 8, !tbaa !2
  %38 = load double, ptr %36, align 8, !tbaa !2
  %39 = getelementptr inbounds [200 x double], ptr %6, i32 %28
  store double %38, ptr %39, align 8, !tbaa !2
  %40 = add nsw i32 %28, -1
  %41 = add nuw nsw i32 %28, 1
  %42 = icmp ult ptr %31, %35
  %43 = icmp ult ptr %34, %33
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %26, %45
  %46 = phi i32 [ %67, %45 ], [ 1, %26 ]
  %47 = add nsw i32 %46, -1
  %48 = getelementptr inbounds [200 x double], ptr %5, i32 %28, i32 %47
  %49 = load double, ptr %48, align 8, !tbaa !2
  %50 = tail call double @llvm.fmuladd.f64(double %49, double -4.000000e+02, double 8.010000e+02)
  %51 = fdiv double 4.000000e+02, %50
  %52 = getelementptr inbounds [200 x double], ptr %5, i32 %28, i32 %46
  store double %51, ptr %52, align 8, !tbaa !2
  %53 = getelementptr inbounds [200 x double], ptr %3, i32 %46, i32 %40
  %54 = load double, ptr %53, align 8, !tbaa !2
  %55 = getelementptr inbounds [200 x double], ptr %3, i32 %46, i32 %28
  %56 = load double, ptr %55, align 8, !tbaa !2
  %57 = fmul double %56, -3.990000e+02
  %58 = tail call double @llvm.fmuladd.f64(double %54, double 2.000000e+02, double %57)
  %59 = getelementptr inbounds [200 x double], ptr %3, i32 %46, i32 %41
  %60 = load double, ptr %59, align 8, !tbaa !2
  %61 = tail call double @llvm.fmuladd.f64(double %60, double 2.000000e+02, double %58)
  %62 = getelementptr inbounds [200 x double], ptr %6, i32 %28, i32 %47
  %63 = load double, ptr %62, align 8, !tbaa !2
  %64 = tail call double @llvm.fmuladd.f64(double %63, double 4.000000e+02, double %61)
  %65 = fdiv double %64, %50
  %66 = getelementptr inbounds [200 x double], ptr %6, i32 %28, i32 %46
  store double %65, ptr %66, align 8, !tbaa !2
  %67 = add nuw nsw i32 %46, 1
  %68 = icmp eq i32 %67, 199
  br i1 %68, label %97, label %45, !llvm.loop !10

69:                                               ; preds = %26
  %70 = mul nuw nsw i32 %27, 1600
  %71 = add i32 %70, 1600
  %72 = getelementptr i8, ptr %6, i32 %71
  %73 = getelementptr i8, ptr %5, i32 %71
  %74 = load double, ptr %73, align 8
  %75 = load double, ptr %72, align 8
  br label %76

76:                                               ; preds = %76, %69
  %77 = phi double [ %75, %69 ], [ %93, %76 ]
  %78 = phi double [ %74, %69 ], [ %81, %76 ]
  %79 = phi i32 [ 1, %69 ], [ %95, %76 ]
  %80 = tail call double @llvm.fmuladd.f64(double %78, double -4.000000e+02, double 8.010000e+02)
  %81 = fdiv double 4.000000e+02, %80
  %82 = getelementptr inbounds [200 x double], ptr %5, i32 %28, i32 %79
  store double %81, ptr %82, align 8, !tbaa !2
  %83 = getelementptr inbounds [200 x double], ptr %3, i32 %79, i32 %40
  %84 = load double, ptr %83, align 8, !tbaa !2
  %85 = getelementptr inbounds [200 x double], ptr %3, i32 %79, i32 %28
  %86 = load double, ptr %85, align 8, !tbaa !2
  %87 = fmul double %86, -3.990000e+02
  %88 = tail call double @llvm.fmuladd.f64(double %84, double 2.000000e+02, double %87)
  %89 = getelementptr inbounds [200 x double], ptr %3, i32 %79, i32 %41
  %90 = load double, ptr %89, align 8, !tbaa !2
  %91 = tail call double @llvm.fmuladd.f64(double %90, double 2.000000e+02, double %88)
  %92 = tail call double @llvm.fmuladd.f64(double %77, double 4.000000e+02, double %91)
  %93 = fdiv double %92, %80
  %94 = getelementptr inbounds [200 x double], ptr %6, i32 %28, i32 %79
  store double %93, ptr %94, align 8, !tbaa !2
  %95 = add nuw nsw i32 %79, 1
  %96 = icmp eq i32 %95, 199
  br i1 %96, label %97, label %76, !llvm.loop !10

97:                                               ; preds = %76, %45
  %98 = getelementptr inbounds [200 x double], ptr %22, i32 0, i32 %28
  store double 1.000000e+00, ptr %98, align 8, !tbaa !2
  %99 = getelementptr [200 x double], ptr %23, i32 0, i32 %28
  br label %100

100:                                              ; preds = %100, %97
  %101 = phi i32 [ 198, %97 ], [ %110, %100 ]
  %102 = getelementptr inbounds [200 x double], ptr %5, i32 %28, i32 %101
  %103 = load double, ptr %102, align 8, !tbaa !2
  %104 = getelementptr [200 x double], ptr %99, i32 %101
  %105 = load double, ptr %104, align 8, !tbaa !2
  %106 = getelementptr inbounds [200 x double], ptr %6, i32 %28, i32 %101
  %107 = load double, ptr %106, align 8, !tbaa !2
  %108 = tail call double @llvm.fmuladd.f64(double %103, double %105, double %107)
  %109 = getelementptr inbounds [200 x double], ptr %4, i32 %101, i32 %28
  store double %108, ptr %109, align 8, !tbaa !2
  %110 = add nsw i32 %101, -1
  %111 = icmp ugt i32 %101, 1
  br i1 %111, label %100, label %112, !llvm.loop !11

112:                                              ; preds = %100
  %113 = icmp eq i32 %41, 199
  %114 = add i32 %27, 1
  br i1 %113, label %115, label %26, !llvm.loop !12

115:                                              ; preds = %112, %200
  %116 = phi i32 [ %203, %200 ], [ 0, %112 ]
  %117 = phi i32 [ %201, %200 ], [ 1, %112 ]
  %118 = mul nuw nsw i32 %116, 1600
  %119 = add i32 %118, 1600
  %120 = getelementptr i8, ptr %5, i32 %119
  %121 = add i32 %118, 3192
  %122 = getelementptr i8, ptr %5, i32 %121
  %123 = getelementptr i8, ptr %6, i32 %119
  %124 = getelementptr i8, ptr %6, i32 %121
  %125 = getelementptr inbounds [200 x double], ptr %3, i32 %117
  store double 1.000000e+00, ptr %125, align 8, !tbaa !2
  %126 = getelementptr inbounds [200 x double], ptr %5, i32 %117
  store double 0.000000e+00, ptr %126, align 8, !tbaa !2
  %127 = load double, ptr %125, align 8, !tbaa !2
  %128 = getelementptr inbounds [200 x double], ptr %6, i32 %117
  store double %127, ptr %128, align 8, !tbaa !2
  %129 = getelementptr [200 x double], ptr %4, i32 %117
  %130 = getelementptr i8, ptr %129, i32 -1600
  %131 = getelementptr inbounds i8, ptr %129, i32 1600
  %132 = icmp ult ptr %120, %124
  %133 = icmp ult ptr %123, %122
  %134 = and i1 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %115, %135
  %136 = phi i32 [ %157, %135 ], [ 1, %115 ]
  %137 = add nsw i32 %136, -1
  %138 = getelementptr inbounds [200 x double], ptr %5, i32 %117, i32 %137
  %139 = load double, ptr %138, align 8, !tbaa !2
  %140 = tail call double @llvm.fmuladd.f64(double %139, double -2.000000e+02, double 4.010000e+02)
  %141 = fdiv double 2.000000e+02, %140
  %142 = getelementptr inbounds [200 x double], ptr %5, i32 %117, i32 %136
  store double %141, ptr %142, align 8, !tbaa !2
  %143 = getelementptr inbounds [200 x double], ptr %130, i32 0, i32 %136
  %144 = load double, ptr %143, align 8, !tbaa !2
  %145 = getelementptr inbounds [200 x double], ptr %4, i32 %117, i32 %136
  %146 = load double, ptr %145, align 8, !tbaa !2
  %147 = fmul double %146, -7.990000e+02
  %148 = tail call double @llvm.fmuladd.f64(double %144, double 4.000000e+02, double %147)
  %149 = getelementptr inbounds [200 x double], ptr %131, i32 0, i32 %136
  %150 = load double, ptr %149, align 8, !tbaa !2
  %151 = tail call double @llvm.fmuladd.f64(double %150, double 4.000000e+02, double %148)
  %152 = getelementptr inbounds [200 x double], ptr %6, i32 %117, i32 %137
  %153 = load double, ptr %152, align 8, !tbaa !2
  %154 = tail call double @llvm.fmuladd.f64(double %153, double 2.000000e+02, double %151)
  %155 = fdiv double %154, %140
  %156 = getelementptr inbounds [200 x double], ptr %6, i32 %117, i32 %136
  store double %155, ptr %156, align 8, !tbaa !2
  %157 = add nuw nsw i32 %136, 1
  %158 = icmp eq i32 %157, 199
  br i1 %158, label %187, label %135, !llvm.loop !13

159:                                              ; preds = %115
  %160 = mul nuw nsw i32 %116, 1600
  %161 = add i32 %160, 1600
  %162 = getelementptr i8, ptr %6, i32 %161
  %163 = getelementptr i8, ptr %5, i32 %161
  %164 = load double, ptr %163, align 8
  %165 = load double, ptr %162, align 8
  br label %166

166:                                              ; preds = %166, %159
  %167 = phi double [ %165, %159 ], [ %183, %166 ]
  %168 = phi double [ %164, %159 ], [ %171, %166 ]
  %169 = phi i32 [ 1, %159 ], [ %185, %166 ]
  %170 = tail call double @llvm.fmuladd.f64(double %168, double -2.000000e+02, double 4.010000e+02)
  %171 = fdiv double 2.000000e+02, %170
  %172 = getelementptr inbounds [200 x double], ptr %5, i32 %117, i32 %169
  store double %171, ptr %172, align 8, !tbaa !2
  %173 = getelementptr inbounds [200 x double], ptr %130, i32 0, i32 %169
  %174 = load double, ptr %173, align 8, !tbaa !2
  %175 = getelementptr inbounds [200 x double], ptr %4, i32 %117, i32 %169
  %176 = load double, ptr %175, align 8, !tbaa !2
  %177 = fmul double %176, -7.990000e+02
  %178 = tail call double @llvm.fmuladd.f64(double %174, double 4.000000e+02, double %177)
  %179 = getelementptr inbounds [200 x double], ptr %131, i32 0, i32 %169
  %180 = load double, ptr %179, align 8, !tbaa !2
  %181 = tail call double @llvm.fmuladd.f64(double %180, double 4.000000e+02, double %178)
  %182 = tail call double @llvm.fmuladd.f64(double %167, double 2.000000e+02, double %181)
  %183 = fdiv double %182, %170
  %184 = getelementptr inbounds [200 x double], ptr %6, i32 %117, i32 %169
  store double %183, ptr %184, align 8, !tbaa !2
  %185 = add nuw nsw i32 %169, 1
  %186 = icmp eq i32 %185, 199
  br i1 %186, label %187, label %166, !llvm.loop !13

187:                                              ; preds = %166, %135
  %188 = getelementptr inbounds i8, ptr %125, i32 1592
  store double 1.000000e+00, ptr %188, align 8, !tbaa !2
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi double [ 1.000000e+00, %187 ], [ %196, %189 ]
  %191 = phi i32 [ 198, %187 ], [ %198, %189 ]
  %192 = getelementptr inbounds [200 x double], ptr %5, i32 %117, i32 %191
  %193 = load double, ptr %192, align 8, !tbaa !2
  %194 = getelementptr inbounds [200 x double], ptr %6, i32 %117, i32 %191
  %195 = load double, ptr %194, align 8, !tbaa !2
  %196 = tail call double @llvm.fmuladd.f64(double %193, double %190, double %195)
  %197 = getelementptr inbounds [200 x double], ptr %3, i32 %117, i32 %191
  store double %196, ptr %197, align 8, !tbaa !2
  %198 = add nsw i32 %191, -1
  %199 = icmp ugt i32 %191, 1
  br i1 %199, label %189, label %200, !llvm.loop !14

200:                                              ; preds = %189
  %201 = add nuw nsw i32 %117, 1
  %202 = icmp eq i32 %201, 199
  %203 = add i32 %116, 1
  br i1 %202, label %204, label %115, !llvm.loop !15

204:                                              ; preds = %200
  %205 = add nuw nsw i32 %25, 1
  %206 = icmp eq i32 %205, 101
  br i1 %206, label %207, label %24, !llvm.loop !16

207:                                              ; preds = %204
  %208 = load ptr, ptr @stderr, align 4, !tbaa !17
  %209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str) #3
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %211

211:                                              ; preds = %227, %207
  %212 = phi i32 [ 0, %207 ], [ %228, %227 ]
  %213 = mul nuw nsw i32 %212, 200
  br label %214

214:                                              ; preds = %221, %211
  %215 = phi i32 [ 0, %211 ], [ %225, %221 ]
  %216 = add nuw nsw i32 %215, %213
  %217 = urem i32 %216, 20
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.3) #3
  br label %221

221:                                              ; preds = %219, %214
  %222 = getelementptr inbounds [200 x double], ptr %3, i32 %212, i32 %215
  %223 = load double, ptr %222, align 8, !tbaa !2
  %224 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.4, double noundef %223) #3
  %225 = add nuw nsw i32 %215, 1
  %226 = icmp eq i32 %225, 200
  br i1 %226, label %227, label %214, !llvm.loop !19

227:                                              ; preds = %221
  %228 = add nuw nsw i32 %212, 1
  %229 = icmp eq i32 %228, 200
  br i1 %229, label %230, label %211, !llvm.loop !20

230:                                              ; preds = %227
  %231 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %232 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.6) #3
  tail call void @free(ptr noundef nonnull %3) #3
  tail call void @free(ptr noundef %4) #3
  tail call void @free(ptr noundef %5) #3
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
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !4, i64 0}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
