; ModuleID = '/home/lepton/PolyBenchC-4.2.1/stencils/fdtd-2d/fdtd-2d.c'
source_filename = "/home/lepton/PolyBenchC-4.2.1/stencils/fdtd-2d/fdtd-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #4
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #4
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 48000, i32 noundef 8) #4
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 100, i32 noundef 8) #4
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %12, %7 ]
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = uitofp nneg i32 %9 to double
  %11 = getelementptr inbounds double, ptr %6, i64 %8
  store double %10, ptr %11, align 8, !tbaa !5
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 100
  br i1 %13, label %14, label %7, !llvm.loop !9

14:                                               ; preds = %7, %37
  %15 = phi i64 [ %38, %37 ], [ 0, %7 ]
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %18, %16 ]
  %18 = add nuw nsw i64 %17, 1
  %19 = mul nuw nsw i64 %18, %15
  %20 = trunc nuw nsw i64 %19 to i32
  %21 = uitofp nneg i32 %20 to double
  %22 = fdiv double %21, 2.000000e+02
  %23 = getelementptr inbounds [240 x double], ptr %3, i64 %15, i64 %17
  store double %22, ptr %23, align 8, !tbaa !5
  %24 = add nuw nsw i64 %17, 2
  %25 = mul nuw nsw i64 %24, %15
  %26 = trunc nuw nsw i64 %25 to i32
  %27 = uitofp nneg i32 %26 to double
  %28 = fdiv double %27, 2.400000e+02
  %29 = getelementptr inbounds [240 x double], ptr %4, i64 %15, i64 %17
  store double %28, ptr %29, align 8, !tbaa !5
  %30 = add nuw nsw i64 %17, 3
  %31 = mul nuw nsw i64 %30, %15
  %32 = trunc nuw nsw i64 %31 to i32
  %33 = uitofp nneg i32 %32 to double
  %34 = fdiv double %33, 2.000000e+02
  %35 = getelementptr inbounds [240 x double], ptr %5, i64 %15, i64 %17
  store double %34, ptr %35, align 8, !tbaa !5
  %36 = icmp eq i64 %18, 240
  br i1 %36, label %37, label %16, !llvm.loop !12

37:                                               ; preds = %16
  %38 = add nuw nsw i64 %15, 1
  %39 = icmp eq i64 %38, 200
  br i1 %39, label %40, label %14, !llvm.loop !13

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %5, i64 -1920
  %42 = getelementptr inbounds i8, ptr %4, i64 1920
  br label %43

43:                                               ; preds = %110, %40
  %44 = phi i64 [ 0, %40 ], [ %111, %110 ]
  %45 = getelementptr inbounds double, ptr %6, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi i64 [ 0, %43 ], [ %50, %47 ]
  %49 = getelementptr inbounds [240 x double], ptr %4, i64 0, i64 %48
  store double %46, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %48, 1
  %51 = icmp eq i64 %50, 240
  br i1 %51, label %52, label %47, !llvm.loop !14

52:                                               ; preds = %47, %66
  %53 = phi i64 [ %67, %66 ], [ 1, %47 ]
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i64 [ 0, %52 ], [ %64, %54 ]
  %56 = getelementptr inbounds [240 x double], ptr %4, i64 %53, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = getelementptr inbounds [240 x double], ptr %5, i64 %53, i64 %55
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = getelementptr nusw [240 x double], ptr %41, i64 %53, i64 %55
  %61 = load double, ptr %60, align 8, !tbaa !5
  %62 = fsub double %59, %61
  %63 = tail call double @llvm.fmuladd.f64(double %62, double -5.000000e-01, double %57)
  store double %63, ptr %56, align 8, !tbaa !5
  %64 = add nuw nsw i64 %55, 1
  %65 = icmp eq i64 %64, 240
  br i1 %65, label %66, label %54, !llvm.loop !15

66:                                               ; preds = %54
  %67 = add nuw nsw i64 %53, 1
  %68 = icmp eq i64 %67, 200
  br i1 %68, label %69, label %52, !llvm.loop !16

69:                                               ; preds = %66, %84
  %70 = phi i64 [ %85, %84 ], [ 0, %66 ]
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi i64 [ 1, %69 ], [ %82, %71 ]
  %73 = getelementptr inbounds [240 x double], ptr %3, i64 %70, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = getelementptr inbounds [240 x double], ptr %5, i64 %70, i64 %72
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = add nsw i64 %72, -1
  %78 = getelementptr inbounds [240 x double], ptr %5, i64 %70, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = fsub double %76, %79
  %81 = tail call double @llvm.fmuladd.f64(double %80, double -5.000000e-01, double %74)
  store double %81, ptr %73, align 8, !tbaa !5
  %82 = add nuw nsw i64 %72, 1
  %83 = icmp eq i64 %82, 240
  br i1 %83, label %84, label %71, !llvm.loop !17

84:                                               ; preds = %71
  %85 = add nuw nsw i64 %70, 1
  %86 = icmp eq i64 %85, 200
  br i1 %86, label %87, label %69, !llvm.loop !18

87:                                               ; preds = %84, %107
  %88 = phi i64 [ %108, %107 ], [ 0, %84 ]
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i64 [ 0, %87 ], [ %93, %89 ]
  %91 = getelementptr inbounds [240 x double], ptr %5, i64 %88, i64 %90
  %92 = load double, ptr %91, align 8, !tbaa !5
  %93 = add nuw nsw i64 %90, 1
  %94 = getelementptr inbounds [240 x double], ptr %3, i64 %88, i64 %93
  %95 = load double, ptr %94, align 8, !tbaa !5
  %96 = getelementptr inbounds [240 x double], ptr %3, i64 %88, i64 %90
  %97 = load double, ptr %96, align 8, !tbaa !5
  %98 = fsub double %95, %97
  %99 = getelementptr inbounds [240 x double], ptr %42, i64 %88, i64 %90
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = fadd double %98, %100
  %102 = getelementptr inbounds [240 x double], ptr %4, i64 %88, i64 %90
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = fsub double %101, %103
  %105 = tail call double @llvm.fmuladd.f64(double %104, double 0xBFE6666666666666, double %92)
  store double %105, ptr %91, align 8, !tbaa !5
  %106 = icmp eq i64 %93, 239
  br i1 %106, label %107, label %89, !llvm.loop !19

107:                                              ; preds = %89
  %108 = add nuw nsw i64 %88, 1
  %109 = icmp eq i64 %108, 199
  br i1 %109, label %110, label %87, !llvm.loop !20

110:                                              ; preds = %107
  %111 = add nuw nsw i64 %44, 1
  %112 = icmp eq i64 %111, 100
  br i1 %112, label %113, label %43, !llvm.loop !21

113:                                              ; preds = %110
  %114 = load ptr, ptr @stderr, align 8, !tbaa !22
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str) #4
  %116 = load ptr, ptr @stderr, align 8, !tbaa !22
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %118

118:                                              ; preds = %137, %113
  %119 = phi i64 [ 0, %113 ], [ %138, %137 ]
  %120 = mul nuw nsw i64 %119, 200
  br label %121

121:                                              ; preds = %130, %118
  %122 = phi i64 [ 0, %118 ], [ %135, %130 ]
  %123 = add nuw nsw i64 %122, %120
  %124 = trunc nuw nsw i64 %123 to i32
  %125 = urem i32 %124, 20
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load ptr, ptr @stderr, align 8, !tbaa !22
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.3) #4
  br label %130

130:                                              ; preds = %127, %121
  %131 = load ptr, ptr @stderr, align 8, !tbaa !22
  %132 = getelementptr inbounds [240 x double], ptr %3, i64 %119, i64 %122
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.4, double noundef %133) #4
  %135 = add nuw nsw i64 %122, 1
  %136 = icmp eq i64 %135, 240
  br i1 %136, label %137, label %121, !llvm.loop !24

137:                                              ; preds = %130
  %138 = add nuw nsw i64 %119, 1
  %139 = icmp eq i64 %138, 200
  br i1 %139, label %140, label %118, !llvm.loop !25

140:                                              ; preds = %137
  %141 = load ptr, ptr @stderr, align 8, !tbaa !22
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #4
  %143 = load ptr, ptr @stderr, align 8, !tbaa !22
  %144 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.6) #4
  %145 = load ptr, ptr @stderr, align 8, !tbaa !22
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #4
  br label %147

147:                                              ; preds = %166, %140
  %148 = phi i64 [ 0, %140 ], [ %167, %166 ]
  %149 = mul nuw nsw i64 %148, 200
  br label %150

150:                                              ; preds = %159, %147
  %151 = phi i64 [ 0, %147 ], [ %164, %159 ]
  %152 = add nuw nsw i64 %151, %149
  %153 = trunc nuw nsw i64 %152 to i32
  %154 = urem i32 %153, 20
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load ptr, ptr @stderr, align 8, !tbaa !22
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.3) #4
  br label %159

159:                                              ; preds = %156, %150
  %160 = load ptr, ptr @stderr, align 8, !tbaa !22
  %161 = getelementptr inbounds [240 x double], ptr %4, i64 %148, i64 %151
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.4, double noundef %162) #4
  %164 = add nuw nsw i64 %151, 1
  %165 = icmp eq i64 %164, 240
  br i1 %165, label %166, label %150, !llvm.loop !26

166:                                              ; preds = %159
  %167 = add nuw nsw i64 %148, 1
  %168 = icmp eq i64 %167, 200
  br i1 %168, label %169, label %147, !llvm.loop !27

169:                                              ; preds = %166
  %170 = load ptr, ptr @stderr, align 8, !tbaa !22
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #4
  %172 = load ptr, ptr @stderr, align 8, !tbaa !22
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #4
  br label %174

174:                                              ; preds = %193, %169
  %175 = phi i64 [ 0, %169 ], [ %194, %193 ]
  %176 = mul nuw nsw i64 %175, 200
  br label %177

177:                                              ; preds = %186, %174
  %178 = phi i64 [ 0, %174 ], [ %191, %186 ]
  %179 = add nuw nsw i64 %178, %176
  %180 = trunc nuw nsw i64 %179 to i32
  %181 = urem i32 %180, 20
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load ptr, ptr @stderr, align 8, !tbaa !22
  %185 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef nonnull @.str.3) #4
  br label %186

186:                                              ; preds = %183, %177
  %187 = load ptr, ptr @stderr, align 8, !tbaa !22
  %188 = getelementptr inbounds [240 x double], ptr %5, i64 %175, i64 %178
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef nonnull @.str.4, double noundef %189) #4
  %191 = add nuw nsw i64 %178, 1
  %192 = icmp eq i64 %191, 240
  br i1 %192, label %193, label %177, !llvm.loop !28

193:                                              ; preds = %186
  %194 = add nuw nsw i64 %175, 1
  %195 = icmp eq i64 %194, 200
  br i1 %195, label %196, label %174, !llvm.loop !29

196:                                              ; preds = %193
  %197 = load ptr, ptr @stderr, align 8, !tbaa !22
  %198 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #4
  tail call void @free(ptr noundef %3) #4
  tail call void @free(ptr noundef %4) #4
  tail call void @free(ptr noundef nonnull %5) #4
  tail call void @free(ptr noundef %6) #4
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
