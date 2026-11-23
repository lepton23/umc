; ModuleID = './polybench-output/phis/adi.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/adi/adi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 40000, i32 noundef 8) #4
  br label %7

7:                                                ; preds = %19, %2
  %8 = phi i64 [ 0, %2 ], [ %20, %19 ]
  %9 = add nuw nsw i64 %8, 200
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %12 = sub nuw nsw i64 %9, %11
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = uitofp nneg i32 %13 to double
  %15 = fdiv double %14, 2.000000e+02
  %16 = getelementptr inbounds [200 x double], ptr %3, i64 %8, i64 %11
  store double %15, ptr %16, align 8, !tbaa !5
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, 200
  br i1 %18, label %19, label %10, !llvm.loop !9

19:                                               ; preds = %10
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, 200
  br i1 %21, label %22, label %7, !llvm.loop !12

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %4, i64 318400
  %24 = getelementptr inbounds i8, ptr %4, i64 1600
  br label %25

25:                                               ; preds = %205, %22
  %26 = phi i32 [ 1, %22 ], [ %206, %205 ]
  br label %27

27:                                               ; preds = %113, %25
  %28 = phi i64 [ %115, %113 ], [ 0, %25 ]
  %29 = phi i64 [ %42, %113 ], [ 1, %25 ]
  %30 = mul nuw nsw i64 %28, 1600
  %31 = add i64 %30, 1600
  %32 = getelementptr i8, ptr %5, i64 %31
  %33 = add i64 %30, 3192
  %34 = getelementptr i8, ptr %5, i64 %33
  %35 = getelementptr i8, ptr %6, i64 %31
  %36 = getelementptr i8, ptr %6, i64 %33
  %37 = getelementptr inbounds [200 x double], ptr %4, i64 0, i64 %29
  store double 1.000000e+00, ptr %37, align 8, !tbaa !5
  %38 = getelementptr inbounds [200 x double], ptr %5, i64 %29
  store double 0.000000e+00, ptr %38, align 8, !tbaa !5
  %39 = load double, ptr %37, align 8, !tbaa !5
  %40 = getelementptr inbounds [200 x double], ptr %6, i64 %29
  store double %39, ptr %40, align 8, !tbaa !5
  %41 = add nsw i64 %29, -1
  %42 = add nuw nsw i64 %29, 1
  %43 = icmp ult ptr %32, %36
  %44 = icmp ult ptr %35, %34
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %27, %46
  %47 = phi i64 [ %68, %46 ], [ 1, %27 ]
  %48 = add nsw i64 %47, -1
  %49 = getelementptr inbounds [200 x double], ptr %5, i64 %29, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !5
  %51 = tail call double @llvm.fmuladd.f64(double %50, double -4.000000e+02, double 8.010000e+02)
  %52 = fdiv double 4.000000e+02, %51
  %53 = getelementptr inbounds [200 x double], ptr %5, i64 %29, i64 %47
  store double %52, ptr %53, align 8, !tbaa !5
  %54 = getelementptr inbounds [200 x double], ptr %3, i64 %47, i64 %41
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds [200 x double], ptr %3, i64 %47, i64 %29
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = fmul double %57, -3.990000e+02
  %59 = tail call double @llvm.fmuladd.f64(double %55, double 2.000000e+02, double %58)
  %60 = getelementptr inbounds [200 x double], ptr %3, i64 %47, i64 %42
  %61 = load double, ptr %60, align 8, !tbaa !5
  %62 = tail call double @llvm.fmuladd.f64(double %61, double 2.000000e+02, double %59)
  %63 = getelementptr inbounds [200 x double], ptr %6, i64 %29, i64 %48
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = tail call double @llvm.fmuladd.f64(double %64, double 4.000000e+02, double %62)
  %66 = fdiv double %65, %51
  %67 = getelementptr inbounds [200 x double], ptr %6, i64 %29, i64 %47
  store double %66, ptr %67, align 8, !tbaa !5
  %68 = add nuw nsw i64 %47, 1
  %69 = icmp eq i64 %68, 199
  br i1 %69, label %98, label %46, !llvm.loop !13

70:                                               ; preds = %27
  %71 = mul nuw nsw i64 %28, 1600
  %72 = add i64 %71, 1600
  %73 = getelementptr i8, ptr %6, i64 %72
  %74 = getelementptr i8, ptr %5, i64 %72
  %75 = load double, ptr %74, align 8
  %76 = load double, ptr %73, align 8
  br label %77

77:                                               ; preds = %77, %70
  %78 = phi double [ %76, %70 ], [ %94, %77 ]
  %79 = phi double [ %75, %70 ], [ %82, %77 ]
  %80 = phi i64 [ 1, %70 ], [ %96, %77 ]
  %81 = tail call double @llvm.fmuladd.f64(double %79, double -4.000000e+02, double 8.010000e+02)
  %82 = fdiv double 4.000000e+02, %81
  %83 = getelementptr inbounds [200 x double], ptr %5, i64 %29, i64 %80
  store double %82, ptr %83, align 8, !tbaa !5
  %84 = getelementptr inbounds [200 x double], ptr %3, i64 %80, i64 %41
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds [200 x double], ptr %3, i64 %80, i64 %29
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = fmul double %87, -3.990000e+02
  %89 = tail call double @llvm.fmuladd.f64(double %85, double 2.000000e+02, double %88)
  %90 = getelementptr inbounds [200 x double], ptr %3, i64 %80, i64 %42
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = tail call double @llvm.fmuladd.f64(double %91, double 2.000000e+02, double %89)
  %93 = tail call double @llvm.fmuladd.f64(double %78, double 4.000000e+02, double %92)
  %94 = fdiv double %93, %81
  %95 = getelementptr inbounds [200 x double], ptr %6, i64 %29, i64 %80
  store double %94, ptr %95, align 8, !tbaa !5
  %96 = add nuw nsw i64 %80, 1
  %97 = icmp eq i64 %96, 199
  br i1 %97, label %98, label %77, !llvm.loop !13

98:                                               ; preds = %77, %46
  %99 = getelementptr inbounds [200 x double], ptr %23, i64 0, i64 %29
  store double 1.000000e+00, ptr %99, align 8, !tbaa !5
  %100 = getelementptr inbounds [200 x double], ptr %24, i64 0, i64 %29
  br label %101

101:                                              ; preds = %101, %98
  %102 = phi i64 [ 198, %98 ], [ %111, %101 ]
  %103 = getelementptr inbounds [200 x double], ptr %5, i64 %29, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds [200 x double], ptr %100, i64 %102
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = getelementptr inbounds [200 x double], ptr %6, i64 %29, i64 %102
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = tail call double @llvm.fmuladd.f64(double %104, double %106, double %108)
  %110 = getelementptr inbounds [200 x double], ptr %4, i64 %102, i64 %29
  store double %109, ptr %110, align 8, !tbaa !5
  %111 = add nsw i64 %102, -1
  %112 = icmp ugt i64 %102, 1
  br i1 %112, label %101, label %113, !llvm.loop !14

113:                                              ; preds = %101
  %114 = icmp eq i64 %42, 199
  %115 = add i64 %28, 1
  br i1 %114, label %116, label %27, !llvm.loop !15

116:                                              ; preds = %113, %201
  %117 = phi i64 [ %204, %201 ], [ 0, %113 ]
  %118 = phi i64 [ %202, %201 ], [ 1, %113 ]
  %119 = mul nuw nsw i64 %117, 1600
  %120 = add i64 %119, 1600
  %121 = getelementptr i8, ptr %5, i64 %120
  %122 = add i64 %119, 3192
  %123 = getelementptr i8, ptr %5, i64 %122
  %124 = getelementptr i8, ptr %6, i64 %120
  %125 = getelementptr i8, ptr %6, i64 %122
  %126 = getelementptr inbounds [200 x double], ptr %3, i64 %118
  store double 1.000000e+00, ptr %126, align 8, !tbaa !5
  %127 = getelementptr inbounds [200 x double], ptr %5, i64 %118
  store double 0.000000e+00, ptr %127, align 8, !tbaa !5
  %128 = load double, ptr %126, align 8, !tbaa !5
  %129 = getelementptr inbounds [200 x double], ptr %6, i64 %118
  store double %128, ptr %129, align 8, !tbaa !5
  %130 = getelementptr [200 x double], ptr %4, i64 %118
  %131 = getelementptr i8, ptr %130, i64 -1600
  %132 = getelementptr inbounds i8, ptr %130, i64 1600
  %133 = icmp ult ptr %121, %125
  %134 = icmp ult ptr %124, %123
  %135 = and i1 %133, %134
  br i1 %135, label %136, label %160

136:                                              ; preds = %116, %136
  %137 = phi i64 [ %158, %136 ], [ 1, %116 ]
  %138 = add nsw i64 %137, -1
  %139 = getelementptr inbounds [200 x double], ptr %5, i64 %118, i64 %138
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = tail call double @llvm.fmuladd.f64(double %140, double -2.000000e+02, double 4.010000e+02)
  %142 = fdiv double 2.000000e+02, %141
  %143 = getelementptr inbounds [200 x double], ptr %5, i64 %118, i64 %137
  store double %142, ptr %143, align 8, !tbaa !5
  %144 = getelementptr inbounds [200 x double], ptr %131, i64 0, i64 %137
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds [200 x double], ptr %4, i64 %118, i64 %137
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = fmul double %147, -7.990000e+02
  %149 = tail call double @llvm.fmuladd.f64(double %145, double 4.000000e+02, double %148)
  %150 = getelementptr inbounds [200 x double], ptr %132, i64 0, i64 %137
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %151, double 4.000000e+02, double %149)
  %153 = getelementptr inbounds [200 x double], ptr %6, i64 %118, i64 %138
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = tail call double @llvm.fmuladd.f64(double %154, double 2.000000e+02, double %152)
  %156 = fdiv double %155, %141
  %157 = getelementptr inbounds [200 x double], ptr %6, i64 %118, i64 %137
  store double %156, ptr %157, align 8, !tbaa !5
  %158 = add nuw nsw i64 %137, 1
  %159 = icmp eq i64 %158, 199
  br i1 %159, label %188, label %136, !llvm.loop !16

160:                                              ; preds = %116
  %161 = mul nuw nsw i64 %117, 1600
  %162 = add i64 %161, 1600
  %163 = getelementptr i8, ptr %6, i64 %162
  %164 = getelementptr i8, ptr %5, i64 %162
  %165 = load double, ptr %164, align 8
  %166 = load double, ptr %163, align 8
  br label %167

167:                                              ; preds = %167, %160
  %168 = phi double [ %166, %160 ], [ %184, %167 ]
  %169 = phi double [ %165, %160 ], [ %172, %167 ]
  %170 = phi i64 [ 1, %160 ], [ %186, %167 ]
  %171 = tail call double @llvm.fmuladd.f64(double %169, double -2.000000e+02, double 4.010000e+02)
  %172 = fdiv double 2.000000e+02, %171
  %173 = getelementptr inbounds [200 x double], ptr %5, i64 %118, i64 %170
  store double %172, ptr %173, align 8, !tbaa !5
  %174 = getelementptr inbounds [200 x double], ptr %131, i64 0, i64 %170
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = getelementptr inbounds [200 x double], ptr %4, i64 %118, i64 %170
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = fmul double %177, -7.990000e+02
  %179 = tail call double @llvm.fmuladd.f64(double %175, double 4.000000e+02, double %178)
  %180 = getelementptr inbounds [200 x double], ptr %132, i64 0, i64 %170
  %181 = load double, ptr %180, align 8, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %181, double 4.000000e+02, double %179)
  %183 = tail call double @llvm.fmuladd.f64(double %168, double 2.000000e+02, double %182)
  %184 = fdiv double %183, %171
  %185 = getelementptr inbounds [200 x double], ptr %6, i64 %118, i64 %170
  store double %184, ptr %185, align 8, !tbaa !5
  %186 = add nuw nsw i64 %170, 1
  %187 = icmp eq i64 %186, 199
  br i1 %187, label %188, label %167, !llvm.loop !16

188:                                              ; preds = %167, %136
  %189 = getelementptr inbounds i8, ptr %126, i64 1592
  store double 1.000000e+00, ptr %189, align 8, !tbaa !5
  br label %190

190:                                              ; preds = %190, %188
  %191 = phi double [ 1.000000e+00, %188 ], [ %197, %190 ]
  %192 = phi i64 [ 198, %188 ], [ %199, %190 ]
  %193 = getelementptr inbounds [200 x double], ptr %5, i64 %118, i64 %192
  %194 = load double, ptr %193, align 8, !tbaa !5
  %195 = getelementptr inbounds [200 x double], ptr %6, i64 %118, i64 %192
  %196 = load double, ptr %195, align 8, !tbaa !5
  %197 = tail call double @llvm.fmuladd.f64(double %194, double %191, double %196)
  %198 = getelementptr inbounds [200 x double], ptr %3, i64 %118, i64 %192
  store double %197, ptr %198, align 8, !tbaa !5
  %199 = add nsw i64 %192, -1
  %200 = icmp ugt i64 %192, 1
  br i1 %200, label %190, label %201, !llvm.loop !17

201:                                              ; preds = %190
  %202 = add nuw nsw i64 %118, 1
  %203 = icmp eq i64 %202, 199
  %204 = add i64 %117, 1
  br i1 %203, label %205, label %116, !llvm.loop !18

205:                                              ; preds = %201
  %206 = add nuw nsw i32 %26, 1
  %207 = icmp eq i32 %206, 101
  br i1 %207, label %208, label %25, !llvm.loop !19

208:                                              ; preds = %205
  %209 = load ptr, ptr @stderr, align 8, !tbaa !20
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef nonnull @.str) #4
  %211 = load ptr, ptr @stderr, align 8, !tbaa !20
  %212 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %213

213:                                              ; preds = %232, %208
  %214 = phi i64 [ 0, %208 ], [ %233, %232 ]
  %215 = mul nuw nsw i64 %214, 200
  br label %216

216:                                              ; preds = %225, %213
  %217 = phi i64 [ 0, %213 ], [ %230, %225 ]
  %218 = add nuw nsw i64 %217, %215
  %219 = trunc nuw nsw i64 %218 to i32
  %220 = urem i32 %219, 20
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load ptr, ptr @stderr, align 8, !tbaa !20
  %224 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.3) #4
  br label %225

225:                                              ; preds = %222, %216
  %226 = load ptr, ptr @stderr, align 8, !tbaa !20
  %227 = getelementptr inbounds [200 x double], ptr %3, i64 %214, i64 %217
  %228 = load double, ptr %227, align 8, !tbaa !5
  %229 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef nonnull @.str.4, double noundef %228) #4
  %230 = add nuw nsw i64 %217, 1
  %231 = icmp eq i64 %230, 200
  br i1 %231, label %232, label %216, !llvm.loop !22

232:                                              ; preds = %225
  %233 = add nuw nsw i64 %214, 1
  %234 = icmp eq i64 %233, 200
  br i1 %234, label %235, label %213, !llvm.loop !23

235:                                              ; preds = %232
  %236 = load ptr, ptr @stderr, align 8, !tbaa !20
  %237 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %238 = load ptr, ptr @stderr, align 8, !tbaa !20
  %239 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef nonnull @.str.6) #4
  tail call void @free(ptr noundef nonnull %3) #4
  tail call void @free(ptr noundef %4) #4
  tail call void @free(ptr noundef %5) #4
  tail call void @free(ptr noundef %6) #4
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
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
