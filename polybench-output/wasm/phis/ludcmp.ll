; ModuleID = './polybench-output/wasm/phis/ludcmp.bc'
source_filename = "/home/lepton/PolyBenchC-4.2.1/linear-algebra/solvers/ludcmp/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@stderr = external local_unnamed_addr constant ptr, align 4
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #3
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 0, %2 ], [ %11, %7 ]
  %9 = getelementptr inbounds double, ptr %5, i32 %8
  store double 0.000000e+00, ptr %9, align 8, !tbaa !2
  %10 = getelementptr inbounds double, ptr %6, i32 %8
  store double 0.000000e+00, ptr %10, align 8, !tbaa !2
  %11 = add nuw nsw i32 %8, 1
  %12 = uitofp nneg i32 %11 to double
  %13 = fdiv double %12, 4.000000e+02
  %14 = fmul double %13, 5.000000e-01
  %15 = fadd double %14, 4.000000e+00
  %16 = getelementptr inbounds double, ptr %4, i32 %8
  store double %15, ptr %16, align 8, !tbaa !2
  %17 = icmp eq i32 %11, 400
  br i1 %17, label %18, label %7, !llvm.loop !6

18:                                               ; preds = %7, %38
  %19 = phi i32 [ %40, %38 ], [ 1, %7 ]
  %20 = phi i32 [ %31, %38 ], [ 0, %7 ]
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ 0, %18 ], [ %28, %21 ]
  %23 = sub nsw i32 0, %22
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 4.000000e+02
  %26 = fadd double %25, 1.000000e+00
  %27 = getelementptr inbounds [400 x double], ptr %3, i32 %20, i32 %22
  store double %26, ptr %27, align 8, !tbaa !2
  %28 = add nuw nsw i32 %22, 1
  %29 = icmp eq i32 %28, %19
  br i1 %29, label %30, label %21, !llvm.loop !9

30:                                               ; preds = %21
  %31 = add nuw nsw i32 %20, 1
  %32 = icmp ult i32 %20, 399
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %33
  %34 = phi i32 [ %36, %33 ], [ %31, %30 ]
  %35 = getelementptr inbounds [400 x double], ptr %3, i32 %20, i32 %34
  store double 0.000000e+00, ptr %35, align 8, !tbaa !2
  %36 = add nuw nsw i32 %34, 1
  %37 = icmp eq i32 %36, 400
  br i1 %37, label %38, label %33, !llvm.loop !10

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds [400 x double], ptr %3, i32 %20, i32 %20
  store double 1.000000e+00, ptr %39, align 8, !tbaa !2
  %40 = add nuw nsw i32 %19, 1
  %41 = icmp eq i32 %31, 400
  br i1 %41, label %42, label %18, !llvm.loop !11

42:                                               ; preds = %38
  %43 = tail call ptr @polybench_alloc_data(i64 noundef 160000, i32 noundef 8) #3
  br label %44

44:                                               ; preds = %51, %42
  %45 = phi i32 [ 0, %42 ], [ %52, %51 ]
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i32 [ 0, %44 ], [ %49, %46 ]
  %48 = getelementptr inbounds [400 x [400 x double]], ptr %43, i32 0, i32 %45, i32 %47
  store double 0.000000e+00, ptr %48, align 8, !tbaa !2
  %49 = add nuw nsw i32 %47, 1
  %50 = icmp eq i32 %49, 400
  br i1 %50, label %51, label %46, !llvm.loop !12

51:                                               ; preds = %46
  %52 = add nuw nsw i32 %45, 1
  %53 = icmp eq i32 %52, 400
  br i1 %53, label %54, label %44, !llvm.loop !13

54:                                               ; preds = %51, %72
  %55 = phi i32 [ %73, %72 ], [ 0, %51 ]
  br label %56

56:                                               ; preds = %69, %54
  %57 = phi i32 [ 0, %54 ], [ %70, %69 ]
  %58 = getelementptr inbounds [400 x double], ptr %3, i32 %57, i32 %55
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i32 [ 0, %56 ], [ %67, %59 ]
  %61 = load double, ptr %58, align 8, !tbaa !2
  %62 = getelementptr inbounds [400 x double], ptr %3, i32 %60, i32 %55
  %63 = load double, ptr %62, align 8, !tbaa !2
  %64 = getelementptr inbounds [400 x [400 x double]], ptr %43, i32 0, i32 %57, i32 %60
  %65 = load double, ptr %64, align 8, !tbaa !2
  %66 = tail call double @llvm.fmuladd.f64(double %61, double %63, double %65)
  store double %66, ptr %64, align 8, !tbaa !2
  %67 = add nuw nsw i32 %60, 1
  %68 = icmp eq i32 %67, 400
  br i1 %68, label %69, label %59, !llvm.loop !14

69:                                               ; preds = %59
  %70 = add nuw nsw i32 %57, 1
  %71 = icmp eq i32 %70, 400
  br i1 %71, label %72, label %56, !llvm.loop !15

72:                                               ; preds = %69
  %73 = add nuw nsw i32 %55, 1
  %74 = icmp eq i32 %73, 400
  br i1 %74, label %75, label %54, !llvm.loop !16

75:                                               ; preds = %72, %84
  %76 = phi i32 [ %85, %84 ], [ 0, %72 ]
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ 0, %75 ], [ %82, %77 ]
  %79 = getelementptr inbounds [400 x [400 x double]], ptr %43, i32 0, i32 %76, i32 %78
  %80 = load double, ptr %79, align 8, !tbaa !2
  %81 = getelementptr inbounds [400 x double], ptr %3, i32 %76, i32 %78
  store double %80, ptr %81, align 8, !tbaa !2
  %82 = add nuw nsw i32 %78, 1
  %83 = icmp eq i32 %82, 400
  br i1 %83, label %84, label %77, !llvm.loop !17

84:                                               ; preds = %77
  %85 = add nuw nsw i32 %76, 1
  %86 = icmp eq i32 %85, 400
  br i1 %86, label %87, label %75, !llvm.loop !18

87:                                               ; preds = %84
  tail call void @free(ptr noundef nonnull %43) #3
  br label %88

88:                                               ; preds = %134, %87
  %89 = phi i32 [ 0, %87 ], [ %135, %134 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %88, %107
  %92 = phi i32 [ %112, %107 ], [ 0, %88 ]
  %93 = getelementptr inbounds [400 x double], ptr %3, i32 %89, i32 %92
  %94 = load double, ptr %93, align 8, !tbaa !2
  %95 = icmp eq i32 %92, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91, %96
  %97 = phi double [ %104, %96 ], [ %94, %91 ]
  %98 = phi i32 [ %105, %96 ], [ 0, %91 ]
  %99 = getelementptr inbounds [400 x double], ptr %3, i32 %89, i32 %98
  %100 = load double, ptr %99, align 8, !tbaa !2
  %101 = getelementptr inbounds [400 x double], ptr %3, i32 %98, i32 %92
  %102 = load double, ptr %101, align 8, !tbaa !2
  %103 = fneg double %100
  %104 = tail call double @llvm.fmuladd.f64(double %103, double %102, double %97)
  %105 = add nuw nsw i32 %98, 1
  %106 = icmp eq i32 %105, %92
  br i1 %106, label %107, label %96, !llvm.loop !19

107:                                              ; preds = %96, %91
  %108 = phi double [ %94, %91 ], [ %104, %96 ]
  %109 = getelementptr inbounds [400 x double], ptr %3, i32 %92, i32 %92
  %110 = load double, ptr %109, align 8, !tbaa !2
  %111 = fdiv double %108, %110
  store double %111, ptr %93, align 8, !tbaa !2
  %112 = add nuw nsw i32 %92, 1
  %113 = icmp eq i32 %112, %89
  br i1 %113, label %114, label %91, !llvm.loop !20

114:                                              ; preds = %107, %88
  br label %115

115:                                              ; preds = %114, %130
  %116 = phi i32 [ %132, %130 ], [ %89, %114 ]
  %117 = getelementptr inbounds [400 x double], ptr %3, i32 %89, i32 %116
  %118 = load double, ptr %117, align 8, !tbaa !2
  br i1 %90, label %130, label %119

119:                                              ; preds = %115, %119
  %120 = phi double [ %127, %119 ], [ %118, %115 ]
  %121 = phi i32 [ %128, %119 ], [ 0, %115 ]
  %122 = getelementptr inbounds [400 x double], ptr %3, i32 %89, i32 %121
  %123 = load double, ptr %122, align 8, !tbaa !2
  %124 = getelementptr inbounds [400 x double], ptr %3, i32 %121, i32 %116
  %125 = load double, ptr %124, align 8, !tbaa !2
  %126 = fneg double %123
  %127 = tail call double @llvm.fmuladd.f64(double %126, double %125, double %120)
  %128 = add nuw nsw i32 %121, 1
  %129 = icmp eq i32 %128, %89
  br i1 %129, label %130, label %119, !llvm.loop !21

130:                                              ; preds = %119, %115
  %131 = phi double [ %118, %115 ], [ %127, %119 ]
  store double %131, ptr %117, align 8, !tbaa !2
  %132 = add nuw nsw i32 %116, 1
  %133 = icmp eq i32 %132, 400
  br i1 %133, label %134, label %115, !llvm.loop !22

134:                                              ; preds = %130
  %135 = add nuw nsw i32 %89, 1
  %136 = icmp eq i32 %135, 400
  br i1 %136, label %137, label %88, !llvm.loop !23

137:                                              ; preds = %134, %153
  %138 = phi i32 [ %156, %153 ], [ 0, %134 ]
  %139 = getelementptr inbounds double, ptr %4, i32 %138
  %140 = load double, ptr %139, align 8, !tbaa !2
  %141 = icmp eq i32 %138, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %137, %142
  %143 = phi double [ %150, %142 ], [ %140, %137 ]
  %144 = phi i32 [ %151, %142 ], [ 0, %137 ]
  %145 = getelementptr inbounds [400 x double], ptr %3, i32 %138, i32 %144
  %146 = load double, ptr %145, align 8, !tbaa !2
  %147 = getelementptr inbounds double, ptr %6, i32 %144
  %148 = load double, ptr %147, align 8, !tbaa !2
  %149 = fneg double %146
  %150 = tail call double @llvm.fmuladd.f64(double %149, double %148, double %143)
  %151 = add nuw nsw i32 %144, 1
  %152 = icmp eq i32 %151, %138
  br i1 %152, label %153, label %142, !llvm.loop !24

153:                                              ; preds = %142, %137
  %154 = phi double [ %140, %137 ], [ %150, %142 ]
  %155 = getelementptr inbounds double, ptr %6, i32 %138
  store double %154, ptr %155, align 8, !tbaa !2
  %156 = add nuw nsw i32 %138, 1
  %157 = icmp eq i32 %156, 400
  br i1 %157, label %158, label %137, !llvm.loop !25

158:                                              ; preds = %153, %174
  %159 = phi i32 [ %180, %174 ], [ 399, %153 ]
  %160 = getelementptr inbounds double, ptr %6, i32 %159
  %161 = load double, ptr %160, align 8, !tbaa !2
  %162 = icmp ult i32 %159, 399
  br i1 %162, label %163, label %174

163:                                              ; preds = %158, %163
  %164 = phi double [ %172, %163 ], [ %161, %158 ]
  %165 = phi i32 [ %166, %163 ], [ %159, %158 ]
  %166 = add nuw nsw i32 %165, 1
  %167 = getelementptr inbounds [400 x double], ptr %3, i32 %159, i32 %166
  %168 = load double, ptr %167, align 8, !tbaa !2
  %169 = getelementptr inbounds double, ptr %5, i32 %166
  %170 = load double, ptr %169, align 8, !tbaa !2
  %171 = fneg double %168
  %172 = tail call double @llvm.fmuladd.f64(double %171, double %170, double %164)
  %173 = icmp eq i32 %166, 399
  br i1 %173, label %174, label %163, !llvm.loop !26

174:                                              ; preds = %163, %158
  %175 = phi double [ %161, %158 ], [ %172, %163 ]
  %176 = getelementptr inbounds [400 x double], ptr %3, i32 %159, i32 %159
  %177 = load double, ptr %176, align 8, !tbaa !2
  %178 = fdiv double %175, %177
  %179 = getelementptr inbounds double, ptr %5, i32 %159
  store double %178, ptr %179, align 8, !tbaa !2
  %180 = add nsw i32 %159, -1
  %181 = icmp eq i32 %159, 0
  br i1 %181, label %182, label %158, !llvm.loop !27

182:                                              ; preds = %174
  %183 = load ptr, ptr @stderr, align 4, !tbaa !28
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str) #3
  %185 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %186

186:                                              ; preds = %193, %182
  %187 = phi i32 [ 0, %182 ], [ %197, %193 ]
  %188 = trunc nuw i32 %187 to i16
  %189 = urem i16 %188, 20
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.3) #3
  br label %193

193:                                              ; preds = %191, %186
  %194 = getelementptr inbounds double, ptr %5, i32 %187
  %195 = load double, ptr %194, align 8, !tbaa !2
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.4, double noundef %195) #3
  %197 = add nuw nsw i32 %187, 1
  %198 = icmp eq i32 %197, 400
  br i1 %198, label %199, label %186, !llvm.loop !30

199:                                              ; preds = %193
  %200 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #3
  %201 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.6) #3
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
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7, !8}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !7, !8}
!26 = distinct !{!26, !7, !8}
!27 = distinct !{!27, !7, !8}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !4, i64 0}
!30 = distinct !{!30, !7, !8}
