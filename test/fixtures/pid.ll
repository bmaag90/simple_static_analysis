; ModuleID = 'pid.cpp'
source_filename = "pid.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%class.PIDController = type { double, double, double, double, double }

$_ZN13PIDControllerC2Eddd = comdat any

$_ZN13PIDController6updateEdd = comdat any

$_ZN13PIDController9get_errorEdd = comdat any

$_ZN13PIDController12get_integralEd = comdat any

$_ZN13PIDController14get_derivativeEd = comdat any

$_ZN13PIDController15update_integralEd = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

@.str = private unnamed_addr constant [58 x i8] c"[%d/20] Setpoint = %0.2f; control = %0.2f; plant = %0.2f\0A\00", align 1, !dbg !0

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z5plantd(double noundef %0) #0 !dbg !812 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !816, metadata !DIExpression()), !dbg !817
  %3 = load double, ptr %2, align 8, !dbg !818
  %4 = call double @llvm.fmuladd.f64(double 9.000000e-01, double %3, double 4.000000e+00), !dbg !819
  ret double %4, !dbg !820
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !821 {
  %1 = alloca i32, align 4
  %2 = alloca %class.PIDController, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !822, metadata !DIExpression()), !dbg !823
  call void @_ZN13PIDControllerC2Eddd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef 6.500000e-01, double noundef 2.500000e-01, double noundef 0.000000e+00), !dbg !823
  call void @llvm.dbg.declare(metadata ptr %3, metadata !824, metadata !DIExpression()), !dbg !825
  store double 1.200000e+01, ptr %3, align 8, !dbg !825
  call void @llvm.dbg.declare(metadata ptr %4, metadata !826, metadata !DIExpression()), !dbg !827
  store double 0.000000e+00, ptr %4, align 8, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %5, metadata !828, metadata !DIExpression()), !dbg !829
  %7 = load double, ptr %4, align 8, !dbg !830
  %8 = call noundef double @_Z5plantd(double noundef %7), !dbg !831
  store double %8, ptr %5, align 8, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %6, metadata !832, metadata !DIExpression()), !dbg !834
  store i32 0, ptr %6, align 4, !dbg !834
  br label %9, !dbg !835

9:                                                ; preds = %24, %0
  %10 = load i32, ptr %6, align 4, !dbg !836
  %11 = icmp slt i32 %10, 50, !dbg !838
  br i1 %11, label %12, label %27, !dbg !839

12:                                               ; preds = %9
  %13 = load double, ptr %3, align 8, !dbg !840
  %14 = load double, ptr %5, align 8, !dbg !842
  %15 = call noundef double @_ZN13PIDController6updateEdd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %13, double noundef %14), !dbg !843
  store double %15, ptr %4, align 8, !dbg !844
  %16 = load double, ptr %4, align 8, !dbg !845
  %17 = call noundef double @_Z5plantd(double noundef %16), !dbg !846
  store double %17, ptr %5, align 8, !dbg !847
  %18 = load i32, ptr %6, align 4, !dbg !848
  %19 = add nsw i32 %18, 1, !dbg !849
  %20 = load double, ptr %3, align 8, !dbg !850
  %21 = load double, ptr %4, align 8, !dbg !851
  %22 = load double, ptr %5, align 8, !dbg !852
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22), !dbg !853
  br label %24, !dbg !854

24:                                               ; preds = %12
  %25 = load i32, ptr %6, align 4, !dbg !855
  %26 = add nsw i32 %25, 1, !dbg !855
  store i32 %26, ptr %6, align 4, !dbg !855
  br label %9, !dbg !856, !llvm.loop !857

27:                                               ; preds = %9
  ret i32 0, !dbg !860
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13PIDControllerC2Eddd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 comdat align 2 !dbg !861 {
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !862, metadata !DIExpression()), !dbg !864
  store double %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !865, metadata !DIExpression()), !dbg !866
  store double %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !867, metadata !DIExpression()), !dbg !868
  store double %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !869, metadata !DIExpression()), !dbg !870
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 0, !dbg !871
  %11 = load double, ptr %6, align 8, !dbg !872
  store double %11, ptr %10, align 8, !dbg !871
  %12 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 1, !dbg !873
  %13 = load double, ptr %7, align 8, !dbg !874
  store double %13, ptr %12, align 8, !dbg !873
  %14 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 2, !dbg !875
  %15 = load double, ptr %8, align 8, !dbg !876
  store double %15, ptr %14, align 8, !dbg !875
  %16 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 3, !dbg !877
  store double 0.000000e+00, ptr %16, align 8, !dbg !877
  %17 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 4, !dbg !878
  store double 0.000000e+00, ptr %17, align 8, !dbg !878
  ret void, !dbg !879
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef double @_ZN13PIDController6updateEdd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, double noundef %2) #3 comdat align 2 !dbg !880 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !881, metadata !DIExpression()), !dbg !882
  store double %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !883, metadata !DIExpression()), !dbg !884
  store double %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !885, metadata !DIExpression()), !dbg !886
  %9 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !887, metadata !DIExpression()), !dbg !888
  %10 = load double, ptr %5, align 8, !dbg !889
  %11 = load double, ptr %6, align 8, !dbg !890
  %12 = call noundef double @_ZN13PIDController9get_errorEdd(ptr noundef nonnull align 8 dereferenceable(40) %9, double noundef %10, double noundef %11), !dbg !891
  store double %12, ptr %7, align 8, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %8, metadata !892, metadata !DIExpression()), !dbg !893
  %13 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 0, !dbg !894
  %14 = load double, ptr %13, align 8, !dbg !894
  %15 = load double, ptr %7, align 8, !dbg !895
  %16 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 1, !dbg !896
  %17 = load double, ptr %16, align 8, !dbg !896
  %18 = load double, ptr %7, align 8, !dbg !897
  %19 = call noundef double @_ZN13PIDController12get_integralEd(ptr noundef nonnull align 8 dereferenceable(40) %9, double noundef %18), !dbg !898
  %20 = fmul double %17, %19, !dbg !899
  %21 = call double @llvm.fmuladd.f64(double %14, double %15, double %20), !dbg !900
  %22 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 2, !dbg !901
  %23 = load double, ptr %22, align 8, !dbg !901
  %24 = load double, ptr %7, align 8, !dbg !902
  %25 = call noundef double @_ZN13PIDController14get_derivativeEd(ptr noundef nonnull align 8 dereferenceable(40) %9, double noundef %24), !dbg !903
  %26 = call double @llvm.fmuladd.f64(double %23, double %25, double %21), !dbg !904
  store double %26, ptr %8, align 8, !dbg !893
  %27 = load double, ptr %7, align 8, !dbg !905
  %28 = getelementptr inbounds %class.PIDController, ptr %9, i32 0, i32 3, !dbg !906
  store double %27, ptr %28, align 8, !dbg !907
  %29 = load double, ptr %8, align 8, !dbg !908
  ret double %29, !dbg !909
}

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_ZN13PIDController9get_errorEdd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, double noundef %2) #0 comdat align 2 !dbg !910 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !911, metadata !DIExpression()), !dbg !912
  store double %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !913, metadata !DIExpression()), !dbg !914
  store double %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !915, metadata !DIExpression()), !dbg !916
  %7 = load ptr, ptr %4, align 8
  %8 = load double, ptr %5, align 8, !dbg !917
  %9 = load double, ptr %6, align 8, !dbg !918
  %10 = fsub double %8, %9, !dbg !919
  ret double %10, !dbg !920
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef double @_ZN13PIDController12get_integralEd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1) #3 comdat align 2 !dbg !921 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !922, metadata !DIExpression()), !dbg !923
  store double %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !924, metadata !DIExpression()), !dbg !925
  %5 = load ptr, ptr %3, align 8
  %6 = load double, ptr %4, align 8, !dbg !926
  call void @_ZN13PIDController15update_integralEd(ptr noundef nonnull align 8 dereferenceable(40) %5, double noundef %6), !dbg !927
  %7 = getelementptr inbounds %class.PIDController, ptr %5, i32 0, i32 4, !dbg !928
  %8 = load double, ptr %7, align 8, !dbg !928
  ret double %8, !dbg !929
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_ZN13PIDController14get_derivativeEd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1) #0 comdat align 2 !dbg !930 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !931, metadata !DIExpression()), !dbg !932
  store double %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !933, metadata !DIExpression()), !dbg !934
  %5 = load ptr, ptr %3, align 8
  %6 = load double, ptr %4, align 8, !dbg !935
  %7 = getelementptr inbounds %class.PIDController, ptr %5, i32 0, i32 3, !dbg !936
  %8 = load double, ptr %7, align 8, !dbg !936
  %9 = fsub double %6, %8, !dbg !937
  ret double %9, !dbg !938
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN13PIDController15update_integralEd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1) #3 comdat align 2 !dbg !939 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !940, metadata !DIExpression()), !dbg !941
  store double %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !942, metadata !DIExpression()), !dbg !943
  %7 = load ptr, ptr %3, align 8
  %8 = load double, ptr %4, align 8, !dbg !944
  %9 = getelementptr inbounds %class.PIDController, ptr %7, i32 0, i32 4, !dbg !945
  %10 = load double, ptr %9, align 8, !dbg !946
  %11 = fadd double %10, %8, !dbg !946
  store double %11, ptr %9, align 8, !dbg !946
  store double -5.000000e+01, ptr %5, align 8, !dbg !947
  store double 5.000000e+01, ptr %6, align 8, !dbg !948
  %12 = getelementptr inbounds %class.PIDController, ptr %7, i32 0, i32 4, !dbg !949
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %12), !dbg !950
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %13), !dbg !951
  %15 = load double, ptr %14, align 8, !dbg !951
  %16 = getelementptr inbounds %class.PIDController, ptr %7, i32 0, i32 4, !dbg !952
  store double %15, ptr %16, align 8, !dbg !953
  ret void, !dbg !954
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !955 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !963, metadata !DIExpression()), !dbg !964
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !965, metadata !DIExpression()), !dbg !966
  %6 = load ptr, ptr %4, align 8, !dbg !967
  %7 = load double, ptr %6, align 8, !dbg !967
  %8 = load ptr, ptr %5, align 8, !dbg !969
  %9 = load double, ptr %8, align 8, !dbg !969
  %10 = fcmp olt double %7, %9, !dbg !970
  br i1 %10, label %11, label %13, !dbg !971

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !972
  store ptr %12, ptr %3, align 8, !dbg !973
  br label %15, !dbg !973

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !974
  store ptr %14, ptr %3, align 8, !dbg !975
  br label %15, !dbg !975

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !976
  ret ptr %16, !dbg !976
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !977 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !978, metadata !DIExpression()), !dbg !979
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !980, metadata !DIExpression()), !dbg !981
  %6 = load ptr, ptr %5, align 8, !dbg !982
  %7 = load double, ptr %6, align 8, !dbg !982
  %8 = load ptr, ptr %4, align 8, !dbg !984
  %9 = load double, ptr %8, align 8, !dbg !984
  %10 = fcmp olt double %7, %9, !dbg !985
  br i1 %10, label %11, label %13, !dbg !986

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !987
  store ptr %12, ptr %3, align 8, !dbg !988
  br label %15, !dbg !988

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !989
  store ptr %14, ptr %3, align 8, !dbg !990
  br label %15, !dbg !990

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !991
  ret ptr %16, !dbg !991
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!8}
!llvm.module.flags = !{!804, !805, !806, !807, !808, !809, !810}
!llvm.ident = !{!811}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "pid.cpp", directory: "/home/balz/Code/static_analysis/test/fixtures", checksumkind: CSK_MD5, checksum: "c5f2a2d3c240a354389880e16636c25c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 58)
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !33, imports: !34, splitDebugInlining: false, nameTableKind: None)
!9 = !{!10}
!10 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PIDController", file: !2, line: 3, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !11, identifier: "_ZTS13PIDController")
!11 = !{!12, !14, !15, !16, !17, !18, !22, !25, !28, !29, !32}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "K_p", scope: !10, file: !2, line: 5, baseType: !13, size: 64)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "K_i", scope: !10, file: !2, line: 6, baseType: !13, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "K_d", scope: !10, file: !2, line: 7, baseType: !13, size: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "previous_error", scope: !10, file: !2, line: 8, baseType: !13, size: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !10, file: !2, line: 9, baseType: !13, size: 64, offset: 256)
!18 = !DISubprogram(name: "get_error", linkageName: "_ZN13PIDController9get_errorEdd", scope: !10, file: !2, line: 11, type: !19, scopeLine: 11, flags: DIFlagPrototyped, spFlags: 0)
!19 = !DISubroutineType(types: !20)
!20 = !{!13, !21, !13, !13}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!22 = !DISubprogram(name: "update_integral", linkageName: "_ZN13PIDController15update_integralEd", scope: !10, file: !2, line: 15, type: !23, scopeLine: 15, flags: DIFlagPrototyped, spFlags: 0)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !21, !13}
!25 = !DISubprogram(name: "get_derivative", linkageName: "_ZN13PIDController14get_derivativeEd", scope: !10, file: !2, line: 22, type: !26, scopeLine: 22, flags: DIFlagPrototyped, spFlags: 0)
!26 = !DISubroutineType(types: !27)
!27 = !{!13, !21, !13}
!28 = !DISubprogram(name: "get_integral", linkageName: "_ZN13PIDController12get_integralEd", scope: !10, file: !2, line: 26, type: !26, scopeLine: 26, flags: DIFlagPrototyped, spFlags: 0)
!29 = !DISubprogram(name: "PIDController", scope: !10, file: !2, line: 34, type: !30, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !21, !13, !13, !13}
!32 = !DISubprogram(name: "update", linkageName: "_ZN13PIDController6updateEdd", scope: !10, file: !2, line: 36, type: !19, scopeLine: 36, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!33 = !{!0}
!34 = !{!35, !55, !58, !63, !71, !79, !83, !90, !94, !98, !100, !102, !106, !117, !121, !127, !133, !135, !139, !143, !147, !151, !163, !165, !169, !173, !177, !179, !185, !189, !193, !195, !197, !201, !209, !213, !217, !221, !223, !229, !231, !237, !242, !246, !251, !255, !259, !263, !265, !267, !271, !275, !279, !281, !285, !289, !291, !293, !297, !303, !308, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !327, !331, !336, !340, !344, !349, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !385, !389, !393, !399, !403, !407, !412, !414, !418, !422, !426, !436, !438, !442, !446, !450, !454, !458, !462, !466, !470, !474, !478, !482, !484, !488, !492, !496, !502, !506, !510, !512, !516, !520, !526, !528, !532, !536, !540, !544, !548, !552, !556, !557, !558, !559, !561, !562, !563, !564, !565, !566, !567, !571, !577, !582, !586, !588, !590, !592, !594, !601, !605, !609, !613, !617, !621, !626, !630, !632, !636, !642, !646, !651, !653, !655, !659, !663, !665, !667, !669, !671, !675, !677, !679, !683, !687, !691, !695, !699, !703, !705, !709, !713, !717, !721, !723, !725, !729, !733, !734, !735, !736, !737, !738, !746, !754, !757, !758, !760, !762, !764, !766, !770, !772, !774, !776, !778, !780, !782, !784, !786, !790, !794, !796, !800}
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !37, file: !54, line: 64)
!36 = !DINamespace(name: "std", scope: null)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !38, line: 6, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !40, line: 21, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !42, identifier: "_ZTS11__mbstate_t")
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !41, file: !40, line: 15, baseType: !44, size: 32)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !41, file: !40, line: 20, baseType: !46, size: 32, offset: 32)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !40, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !47, identifier: "_ZTSN11__mbstate_tUt_E")
!47 = !{!48, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !46, file: !40, line: 18, baseType: !49, size: 32)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !46, file: !40, line: 19, baseType: !51, size: 32)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 4)
!54 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cwchar", directory: "")
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !56, file: !54, line: 141)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !57, line: 20, baseType: !49)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !59, file: !54, line: 143)
!59 = !DISubprogram(name: "btowc", scope: !60, file: !60, line: 309, type: !61, flags: DIFlagPrototyped, spFlags: 0)
!60 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "889114206ea781a9a9a0b33e52589e47")
!61 = !DISubroutineType(types: !62)
!62 = !{!56, !44}
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !64, file: !54, line: 144)
!64 = !DISubprogram(name: "fgetwc", scope: !60, file: !60, line: 935, type: !65, flags: DIFlagPrototyped, spFlags: 0)
!65 = !DISubroutineType(types: !66)
!66 = !{!56, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !69, line: 5, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !69, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !72, file: !54, line: 145)
!72 = !DISubprogram(name: "fgetws", scope: !60, file: !60, line: 964, type: !73, flags: DIFlagPrototyped, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !77, !44, !78}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !80, file: !54, line: 146)
!80 = !DISubprogram(name: "fputwc", scope: !60, file: !60, line: 949, type: !81, flags: DIFlagPrototyped, spFlags: 0)
!81 = !DISubroutineType(types: !82)
!82 = !{!56, !76, !67}
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !84, file: !54, line: 147)
!84 = !DISubprogram(name: "fputws", scope: !60, file: !60, line: 971, type: !85, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{!44, !87, !78}
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !91, file: !54, line: 148)
!91 = !DISubprogram(name: "fwide", scope: !60, file: !60, line: 725, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!44, !67, !44}
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !95, file: !54, line: 149)
!95 = !DISubprogram(name: "fwprintf", scope: !60, file: !60, line: 732, type: !96, flags: DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{!44, !78, !87, null}
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !99, file: !54, line: 150)
!99 = !DISubprogram(name: "fwscanf", linkageName: "__isoc23_fwscanf", scope: !60, file: !60, line: 795, type: !96, flags: DIFlagPrototyped, spFlags: 0)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !101, file: !54, line: 151)
!101 = !DISubprogram(name: "getwc", scope: !60, file: !60, line: 936, type: !65, flags: DIFlagPrototyped, spFlags: 0)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !103, file: !54, line: 152)
!103 = !DISubprogram(name: "getwchar", scope: !60, file: !60, line: 942, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{!56}
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !107, file: !54, line: 153)
!107 = !DISubprogram(name: "mbrlen", scope: !60, file: !60, line: 332, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !113, !110, !115}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 18, baseType: !112)
!111 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !118, file: !54, line: 154)
!118 = !DISubprogram(name: "mbrtowc", scope: !60, file: !60, line: 321, type: !119, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{!110, !77, !113, !110, !115}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !122, file: !54, line: 155)
!122 = !DISubprogram(name: "mbsinit", scope: !60, file: !60, line: 317, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{!44, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !128, file: !54, line: 156)
!128 = !DISubprogram(name: "mbsrtowcs", scope: !60, file: !60, line: 362, type: !129, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DISubroutineType(types: !130)
!130 = !{!110, !77, !131, !110, !115}
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !134, file: !54, line: 157)
!134 = !DISubprogram(name: "putwc", scope: !60, file: !60, line: 950, type: !81, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !136, file: !54, line: 158)
!136 = !DISubprogram(name: "putwchar", scope: !60, file: !60, line: 956, type: !137, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{!56, !76}
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !140, file: !54, line: 160)
!140 = !DISubprogram(name: "swprintf", scope: !60, file: !60, line: 742, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{!44, !77, !110, !87, null}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !144, file: !54, line: 162)
!144 = !DISubprogram(name: "swscanf", linkageName: "__isoc23_swscanf", scope: !60, file: !60, line: 802, type: !145, flags: DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!44, !87, !87, null}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !148, file: !54, line: 163)
!148 = !DISubprogram(name: "ungetwc", scope: !60, file: !60, line: 979, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!56, !56, !67}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !152, file: !54, line: 164)
!152 = !DISubprogram(name: "vfwprintf", scope: !60, file: !60, line: 750, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!44, !78, !87, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !157, identifier: "_ZTS13__va_list_tag")
!157 = !{!158, !159, !160, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !156, file: !2, baseType: !49, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !156, file: !2, baseType: !49, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !156, file: !2, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !156, file: !2, baseType: !161, size: 64, offset: 128)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !164, file: !54, line: 166)
!164 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc23_vfwscanf", scope: !60, file: !60, line: 875, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !166, file: !54, line: 169)
!166 = !DISubprogram(name: "vswprintf", scope: !60, file: !60, line: 763, type: !167, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!44, !77, !110, !87, !155}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !170, file: !54, line: 172)
!170 = !DISubprogram(name: "vswscanf", linkageName: "__isoc23_vswscanf", scope: !60, file: !60, line: 882, type: !171, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!44, !87, !87, !155}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !174, file: !54, line: 174)
!174 = !DISubprogram(name: "vwprintf", scope: !60, file: !60, line: 758, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!44, !87, !155}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !178, file: !54, line: 176)
!178 = !DISubprogram(name: "vwscanf", linkageName: "__isoc23_vwscanf", scope: !60, file: !60, line: 879, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !180, file: !54, line: 178)
!180 = !DISubprogram(name: "wcrtomb", scope: !60, file: !60, line: 326, type: !181, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{!110, !183, !76, !115}
!183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !186, file: !54, line: 179)
!186 = !DISubprogram(name: "wcscat", scope: !60, file: !60, line: 121, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!75, !77, !87}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !190, file: !54, line: 180)
!190 = !DISubprogram(name: "wcscmp", scope: !60, file: !60, line: 130, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !88, !88}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !194, file: !54, line: 181)
!194 = !DISubprogram(name: "wcscoll", scope: !60, file: !60, line: 155, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !196, file: !54, line: 182)
!196 = !DISubprogram(name: "wcscpy", scope: !60, file: !60, line: 98, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !198, file: !54, line: 183)
!198 = !DISubprogram(name: "wcscspn", scope: !60, file: !60, line: 212, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!110, !88, !88}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !202, file: !54, line: 184)
!202 = !DISubprogram(name: "wcsftime", scope: !60, file: !60, line: 1043, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!110, !77, !110, !87, !205}
!205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !60, line: 94, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !210, file: !54, line: 185)
!210 = !DISubprogram(name: "wcslen", scope: !60, file: !60, line: 247, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{!110, !88}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !214, file: !54, line: 186)
!214 = !DISubprogram(name: "wcsncat", scope: !60, file: !60, line: 125, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{!75, !77, !87, !110}
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !218, file: !54, line: 187)
!218 = !DISubprogram(name: "wcsncmp", scope: !60, file: !60, line: 133, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{!44, !88, !88, !110}
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !222, file: !54, line: 188)
!222 = !DISubprogram(name: "wcsncpy", scope: !60, file: !60, line: 103, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !224, file: !54, line: 189)
!224 = !DISubprogram(name: "wcsrtombs", scope: !60, file: !60, line: 368, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!110, !183, !227, !110, !115}
!227 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !230, file: !54, line: 190)
!230 = !DISubprogram(name: "wcsspn", scope: !60, file: !60, line: 216, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !232, file: !54, line: 191)
!232 = !DISubprogram(name: "wcstod", scope: !60, file: !60, line: 402, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!13, !87, !235}
!235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !238, file: !54, line: 193)
!238 = !DISubprogram(name: "wcstof", scope: !60, file: !60, line: 407, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !87, !235}
!241 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !243, file: !54, line: 195)
!243 = !DISubprogram(name: "wcstok", scope: !60, file: !60, line: 242, type: !244, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DISubroutineType(types: !245)
!245 = !{!75, !77, !87, !235}
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !247, file: !54, line: 196)
!247 = !DISubprogram(name: "wcstol", linkageName: "__isoc23_wcstol", scope: !60, file: !60, line: 500, type: !248, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !87, !235, !44}
!250 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !252, file: !54, line: 197)
!252 = !DISubprogram(name: "wcstoul", linkageName: "__isoc23_wcstoul", scope: !60, file: !60, line: 503, type: !253, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{!112, !87, !235, !44}
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !256, file: !54, line: 198)
!256 = !DISubprogram(name: "wcsxfrm", scope: !60, file: !60, line: 159, type: !257, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!110, !77, !87, !110}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !260, file: !54, line: 199)
!260 = !DISubprogram(name: "wctob", scope: !60, file: !60, line: 313, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !56}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !264, file: !54, line: 200)
!264 = !DISubprogram(name: "wmemcmp", scope: !60, file: !60, line: 283, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !266, file: !54, line: 201)
!266 = !DISubprogram(name: "wmemcpy", scope: !60, file: !60, line: 287, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !268, file: !54, line: 202)
!268 = !DISubprogram(name: "wmemmove", scope: !60, file: !60, line: 292, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{!75, !75, !88, !110}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !272, file: !54, line: 203)
!272 = !DISubprogram(name: "wmemset", scope: !60, file: !60, line: 296, type: !273, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{!75, !75, !76, !110}
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !276, file: !54, line: 204)
!276 = !DISubprogram(name: "wprintf", scope: !60, file: !60, line: 739, type: !277, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{!44, !87, null}
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !280, file: !54, line: 205)
!280 = !DISubprogram(name: "wscanf", linkageName: "__isoc23_wscanf", scope: !60, file: !60, line: 799, type: !277, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !282, file: !54, line: 206)
!282 = !DISubprogram(name: "wcschr", scope: !60, file: !60, line: 189, type: !283, flags: DIFlagPrototyped, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{!75, !88, !76}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !286, file: !54, line: 207)
!286 = !DISubprogram(name: "wcspbrk", scope: !60, file: !60, line: 226, type: !287, flags: DIFlagPrototyped, spFlags: 0)
!287 = !DISubroutineType(types: !288)
!288 = !{!75, !88, !88}
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !290, file: !54, line: 208)
!290 = !DISubprogram(name: "wcsrchr", scope: !60, file: !60, line: 199, type: !283, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !292, file: !54, line: 209)
!292 = !DISubprogram(name: "wcsstr", scope: !60, file: !60, line: 237, type: !287, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !294, file: !54, line: 210)
!294 = !DISubprogram(name: "wmemchr", scope: !60, file: !60, line: 278, type: !295, flags: DIFlagPrototyped, spFlags: 0)
!295 = !DISubroutineType(types: !296)
!296 = !{!75, !88, !76, !110}
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !299, file: !54, line: 251)
!298 = !DINamespace(name: "__gnu_cxx", scope: null)
!299 = !DISubprogram(name: "wcstold", scope: !60, file: !60, line: 409, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !87, !235}
!302 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !304, file: !54, line: 260)
!304 = !DISubprogram(name: "wcstoll", linkageName: "__isoc23_wcstoll", scope: !60, file: !60, line: 508, type: !305, flags: DIFlagPrototyped, spFlags: 0)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !87, !235, !44}
!307 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !309, file: !54, line: 261)
!309 = !DISubprogram(name: "wcstoull", linkageName: "__isoc23_wcstoull", scope: !60, file: !60, line: 513, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !87, !235, !44}
!312 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !299, file: !54, line: 267)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !304, file: !54, line: 268)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !309, file: !54, line: 269)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !238, file: !54, line: 283)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !164, file: !54, line: 286)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !170, file: !54, line: 289)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !178, file: !54, line: 292)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !299, file: !54, line: 296)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !304, file: !54, line: 297)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !309, file: !54, line: 298)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !324, file: !325, line: 66)
!324 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !326, file: !325, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!325 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "9454f1dc659a5fca82863c92df8f08bb")
!326 = !DINamespace(name: "__exception_ptr", scope: !36)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !328, file: !325, line: 85)
!328 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !36, file: !325, line: 81, type: !329, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !324}
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !332, file: !325, line: 243)
!332 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !326, file: !325, line: 230, type: !333, flags: DIFlagPrototyped, spFlags: 0)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335, !335}
!335 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !324, size: 64)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !337, file: !339, line: 53)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !338, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!338 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "23ebf40dea0ab9a74daf64a0eaa99518")
!339 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/clocale", directory: "")
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !341, file: !339, line: 54)
!341 = !DISubprogram(name: "setlocale", scope: !338, file: !338, line: 122, type: !342, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{!184, !44, !114}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !345, file: !339, line: 55)
!345 = !DISubprogram(name: "localeconv", scope: !338, file: !338, line: 125, type: !346, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !350, file: !354, line: 64)
!350 = !DISubprogram(name: "isalnum", scope: !351, file: !351, line: 108, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!351 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "43fd45dcf96e8fb7d8f14700096497c7")
!352 = !DISubroutineType(types: !353)
!353 = !{!44, !44}
!354 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cctype", directory: "")
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !356, file: !354, line: 65)
!356 = !DISubprogram(name: "isalpha", scope: !351, file: !351, line: 109, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !358, file: !354, line: 66)
!358 = !DISubprogram(name: "iscntrl", scope: !351, file: !351, line: 110, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !360, file: !354, line: 67)
!360 = !DISubprogram(name: "isdigit", scope: !351, file: !351, line: 111, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !362, file: !354, line: 68)
!362 = !DISubprogram(name: "isgraph", scope: !351, file: !351, line: 113, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !364, file: !354, line: 69)
!364 = !DISubprogram(name: "islower", scope: !351, file: !351, line: 112, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !366, file: !354, line: 70)
!366 = !DISubprogram(name: "isprint", scope: !351, file: !351, line: 114, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !368, file: !354, line: 71)
!368 = !DISubprogram(name: "ispunct", scope: !351, file: !351, line: 115, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !370, file: !354, line: 72)
!370 = !DISubprogram(name: "isspace", scope: !351, file: !351, line: 116, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !372, file: !354, line: 73)
!372 = !DISubprogram(name: "isupper", scope: !351, file: !351, line: 117, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !374, file: !354, line: 74)
!374 = !DISubprogram(name: "isxdigit", scope: !351, file: !351, line: 118, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !376, file: !354, line: 75)
!376 = !DISubprogram(name: "tolower", scope: !351, file: !351, line: 122, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !378, file: !354, line: 76)
!378 = !DISubprogram(name: "toupper", scope: !351, file: !351, line: 125, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !380, file: !354, line: 87)
!380 = !DISubprogram(name: "isblank", scope: !351, file: !351, line: 130, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !382, entity: !383, file: !384, line: 58)
!382 = !DINamespace(name: "__gnu_debug", scope: null)
!383 = !DINamespace(name: "__debug", scope: !36)
!384 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "0a57c7893084ad84a6659d59c4b881dd")
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !386, file: !388, line: 52)
!386 = !DISubprogram(name: "abs", scope: !387, file: !387, line: 980, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "7fa2ecb2348a66f8b44ab9a15abd0b72")
!388 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/bits/std_abs.h", directory: "")
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !390, file: !392, line: 131)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !387, line: 63, baseType: !391)
!391 = !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!392 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cstdlib", directory: "")
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !394, file: !392, line: 132)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !387, line: 71, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !396, identifier: "_ZTS6ldiv_t")
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !395, file: !387, line: 69, baseType: !250, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !395, file: !387, line: 70, baseType: !250, size: 64, offset: 64)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !400, file: !392, line: 134)
!400 = !DISubprogram(name: "abort", scope: !387, file: !387, line: 730, type: !401, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{null}
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !404, file: !392, line: 136)
!404 = !DISubprogram(name: "aligned_alloc", scope: !387, file: !387, line: 724, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DISubroutineType(types: !406)
!406 = !{!161, !110, !110}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !408, file: !392, line: 138)
!408 = !DISubprogram(name: "atexit", scope: !387, file: !387, line: 734, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DISubroutineType(types: !410)
!410 = !{!44, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !413, file: !392, line: 141)
!413 = !DISubprogram(name: "at_quick_exit", scope: !387, file: !387, line: 739, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !415, file: !392, line: 144)
!415 = !DISubprogram(name: "atof", scope: !387, file: !387, line: 102, type: !416, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{!13, !114}
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !419, file: !392, line: 145)
!419 = !DISubprogram(name: "atoi", scope: !387, file: !387, line: 105, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{!44, !114}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !423, file: !392, line: 146)
!423 = !DISubprogram(name: "atol", scope: !387, file: !387, line: 108, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{!250, !114}
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !427, file: !392, line: 147)
!427 = !DISubprogram(name: "bsearch", scope: !387, file: !387, line: 960, type: !428, flags: DIFlagPrototyped, spFlags: 0)
!428 = !DISubroutineType(types: !429)
!429 = !{!161, !430, !430, !110, !110, !432}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !387, line: 948, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!44, !430, !430}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !437, file: !392, line: 148)
!437 = !DISubprogram(name: "calloc", scope: !387, file: !387, line: 675, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !439, file: !392, line: 149)
!439 = !DISubprogram(name: "div", scope: !387, file: !387, line: 992, type: !440, flags: DIFlagPrototyped, spFlags: 0)
!440 = !DISubroutineType(types: !441)
!441 = !{!390, !44, !44}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !443, file: !392, line: 150)
!443 = !DISubprogram(name: "exit", scope: !387, file: !387, line: 756, type: !444, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !44}
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !447, file: !392, line: 151)
!447 = !DISubprogram(name: "free", scope: !387, file: !387, line: 687, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !161}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !451, file: !392, line: 152)
!451 = !DISubprogram(name: "getenv", scope: !387, file: !387, line: 773, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!184, !114}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !455, file: !392, line: 153)
!455 = !DISubprogram(name: "labs", scope: !387, file: !387, line: 981, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!250, !250}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !459, file: !392, line: 154)
!459 = !DISubprogram(name: "ldiv", scope: !387, file: !387, line: 994, type: !460, flags: DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{!394, !250, !250}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !463, file: !392, line: 155)
!463 = !DISubprogram(name: "malloc", scope: !387, file: !387, line: 672, type: !464, flags: DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!161, !110}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !467, file: !392, line: 157)
!467 = !DISubprogram(name: "mblen", scope: !387, file: !387, line: 1062, type: !468, flags: DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{!44, !114, !110}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !471, file: !392, line: 158)
!471 = !DISubprogram(name: "mbstowcs", scope: !387, file: !387, line: 1073, type: !472, flags: DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{!110, !77, !113, !110}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !475, file: !392, line: 159)
!475 = !DISubprogram(name: "mbtowc", scope: !387, file: !387, line: 1065, type: !476, flags: DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!44, !77, !113, !110}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !479, file: !392, line: 161)
!479 = !DISubprogram(name: "qsort", scope: !387, file: !387, line: 970, type: !480, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !161, !110, !110, !432}
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !483, file: !392, line: 164)
!483 = !DISubprogram(name: "quick_exit", scope: !387, file: !387, line: 762, type: !444, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !485, file: !392, line: 167)
!485 = !DISubprogram(name: "rand", scope: !387, file: !387, line: 573, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!486 = !DISubroutineType(types: !487)
!487 = !{!44}
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !489, file: !392, line: 168)
!489 = !DISubprogram(name: "realloc", scope: !387, file: !387, line: 683, type: !490, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{!161, !161, !110}
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !493, file: !392, line: 169)
!493 = !DISubprogram(name: "srand", scope: !387, file: !387, line: 575, type: !494, flags: DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !49}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !497, file: !392, line: 170)
!497 = !DISubprogram(name: "strtod", scope: !387, file: !387, line: 118, type: !498, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{!13, !113, !500}
!500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !503, file: !392, line: 171)
!503 = !DISubprogram(name: "strtol", linkageName: "__isoc23_strtol", scope: !387, file: !387, line: 215, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!250, !113, !500, !44}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !507, file: !392, line: 172)
!507 = !DISubprogram(name: "strtoul", linkageName: "__isoc23_strtoul", scope: !387, file: !387, line: 219, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{!112, !113, !500, !44}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !511, file: !392, line: 173)
!511 = !DISubprogram(name: "system", scope: !387, file: !387, line: 923, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !513, file: !392, line: 175)
!513 = !DISubprogram(name: "wcstombs", scope: !387, file: !387, line: 1077, type: !514, flags: DIFlagPrototyped, spFlags: 0)
!514 = !DISubroutineType(types: !515)
!515 = !{!110, !183, !87, !110}
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !517, file: !392, line: 176)
!517 = !DISubprogram(name: "wctomb", scope: !387, file: !387, line: 1069, type: !518, flags: DIFlagPrototyped, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!44, !184, !76}
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !521, file: !392, line: 204)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !387, line: 81, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !523, identifier: "_ZTS7lldiv_t")
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !522, file: !387, line: 79, baseType: !307, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !522, file: !387, line: 80, baseType: !307, size: 64, offset: 64)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !527, file: !392, line: 210)
!527 = !DISubprogram(name: "_Exit", scope: !387, file: !387, line: 768, type: !444, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !529, file: !392, line: 214)
!529 = !DISubprogram(name: "llabs", scope: !387, file: !387, line: 984, type: !530, flags: DIFlagPrototyped, spFlags: 0)
!530 = !DISubroutineType(types: !531)
!531 = !{!307, !307}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !533, file: !392, line: 220)
!533 = !DISubprogram(name: "lldiv", scope: !387, file: !387, line: 998, type: !534, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!521, !307, !307}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !537, file: !392, line: 231)
!537 = !DISubprogram(name: "atoll", scope: !387, file: !387, line: 113, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!307, !114}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !541, file: !392, line: 232)
!541 = !DISubprogram(name: "strtoll", linkageName: "__isoc23_strtoll", scope: !387, file: !387, line: 238, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!307, !113, !500, !44}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !545, file: !392, line: 233)
!545 = !DISubprogram(name: "strtoull", linkageName: "__isoc23_strtoull", scope: !387, file: !387, line: 243, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!312, !113, !500, !44}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !549, file: !392, line: 235)
!549 = !DISubprogram(name: "strtof", scope: !387, file: !387, line: 124, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!241, !113, !500}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !553, file: !392, line: 236)
!553 = !DISubprogram(name: "strtold", scope: !387, file: !387, line: 127, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!302, !113, !500}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !521, file: !392, line: 244)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !527, file: !392, line: 246)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !529, file: !392, line: 248)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !560, file: !392, line: 249)
!560 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !298, file: !392, line: 217, type: !534, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !533, file: !392, line: 250)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !537, file: !392, line: 252)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !549, file: !392, line: 253)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !541, file: !392, line: 254)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !545, file: !392, line: 255)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !553, file: !392, line: 256)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !568, file: !570, line: 98)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !569, line: 7, baseType: !70)
!569 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!570 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cstdio", directory: "")
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !572, file: !570, line: 99)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !573, line: 85, baseType: !574)
!573 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !575, line: 14, baseType: !576)
!575 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !575, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !578, file: !570, line: 101)
!578 = !DISubprogram(name: "clearerr", scope: !573, file: !573, line: 860, type: !579, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !583, file: !570, line: 102)
!583 = !DISubprogram(name: "fclose", scope: !573, file: !573, line: 184, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!44, !581}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !587, file: !570, line: 103)
!587 = !DISubprogram(name: "feof", scope: !573, file: !573, line: 862, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !589, file: !570, line: 104)
!589 = !DISubprogram(name: "ferror", scope: !573, file: !573, line: 864, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !591, file: !570, line: 105)
!591 = !DISubprogram(name: "fflush", scope: !573, file: !573, line: 236, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !593, file: !570, line: 106)
!593 = !DISubprogram(name: "fgetc", scope: !573, file: !573, line: 575, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !595, file: !570, line: 107)
!595 = !DISubprogram(name: "fgetpos", scope: !573, file: !573, line: 829, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{!44, !598, !599}
!598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !581)
!599 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !602, file: !570, line: 108)
!602 = !DISubprogram(name: "fgets", scope: !573, file: !573, line: 654, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{!184, !183, !44, !598}
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !606, file: !570, line: 109)
!606 = !DISubprogram(name: "fopen", scope: !573, file: !573, line: 264, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!581, !113, !113}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !610, file: !570, line: 110)
!610 = !DISubprogram(name: "fprintf", scope: !573, file: !573, line: 357, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DISubroutineType(types: !612)
!612 = !{!44, !598, !113, null}
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !614, file: !570, line: 111)
!614 = !DISubprogram(name: "fputc", scope: !573, file: !573, line: 611, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!44, !44, !581}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !618, file: !570, line: 112)
!618 = !DISubprogram(name: "fputs", scope: !573, file: !573, line: 717, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!44, !113, !598}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !622, file: !570, line: 113)
!622 = !DISubprogram(name: "fread", scope: !573, file: !573, line: 738, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{!110, !625, !110, !110, !598}
!625 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !627, file: !570, line: 114)
!627 = !DISubprogram(name: "freopen", scope: !573, file: !573, line: 271, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{!581, !113, !113, !598}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !631, file: !570, line: 115)
!631 = !DISubprogram(name: "fscanf", linkageName: "__isoc23_fscanf", scope: !573, file: !573, line: 442, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !633, file: !570, line: 116)
!633 = !DISubprogram(name: "fseek", scope: !573, file: !573, line: 779, type: !634, flags: DIFlagPrototyped, spFlags: 0)
!634 = !DISubroutineType(types: !635)
!635 = !{!44, !581, !250, !44}
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !637, file: !570, line: 117)
!637 = !DISubprogram(name: "fsetpos", scope: !573, file: !573, line: 835, type: !638, flags: DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{!44, !581, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !643, file: !570, line: 118)
!643 = !DISubprogram(name: "ftell", scope: !573, file: !573, line: 785, type: !644, flags: DIFlagPrototyped, spFlags: 0)
!644 = !DISubroutineType(types: !645)
!645 = !{!250, !581}
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !647, file: !570, line: 119)
!647 = !DISubprogram(name: "fwrite", scope: !573, file: !573, line: 745, type: !648, flags: DIFlagPrototyped, spFlags: 0)
!648 = !DISubroutineType(types: !649)
!649 = !{!110, !650, !110, !110, !598}
!650 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !430)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !652, file: !570, line: 120)
!652 = !DISubprogram(name: "getc", scope: !573, file: !573, line: 576, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !654, file: !570, line: 121)
!654 = !DISubprogram(name: "getchar", scope: !573, file: !573, line: 582, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !656, file: !570, line: 126)
!656 = !DISubprogram(name: "perror", scope: !573, file: !573, line: 878, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !114}
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !660, file: !570, line: 127)
!660 = !DISubprogram(name: "printf", scope: !573, file: !573, line: 363, type: !661, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DISubroutineType(types: !662)
!662 = !{!44, !113, null}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !664, file: !570, line: 128)
!664 = !DISubprogram(name: "putc", scope: !573, file: !573, line: 612, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !666, file: !570, line: 129)
!666 = !DISubprogram(name: "putchar", scope: !573, file: !573, line: 618, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !668, file: !570, line: 130)
!668 = !DISubprogram(name: "puts", scope: !573, file: !573, line: 724, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !670, file: !570, line: 131)
!670 = !DISubprogram(name: "remove", scope: !573, file: !573, line: 158, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !672, file: !570, line: 132)
!672 = !DISubprogram(name: "rename", scope: !573, file: !573, line: 160, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!44, !114, !114}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !676, file: !570, line: 133)
!676 = !DISubprogram(name: "rewind", scope: !573, file: !573, line: 790, type: !579, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !678, file: !570, line: 134)
!678 = !DISubprogram(name: "scanf", linkageName: "__isoc23_scanf", scope: !573, file: !573, line: 445, type: !661, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !680, file: !570, line: 135)
!680 = !DISubprogram(name: "setbuf", scope: !573, file: !573, line: 334, type: !681, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !598, !183}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !684, file: !570, line: 136)
!684 = !DISubprogram(name: "setvbuf", scope: !573, file: !573, line: 339, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{!44, !598, !183, !44, !110}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !688, file: !570, line: 137)
!688 = !DISubprogram(name: "sprintf", scope: !573, file: !573, line: 365, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DISubroutineType(types: !690)
!690 = !{!44, !183, !113, null}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !692, file: !570, line: 138)
!692 = !DISubprogram(name: "sscanf", linkageName: "__isoc23_sscanf", scope: !573, file: !573, line: 447, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!44, !113, !113, null}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !696, file: !570, line: 139)
!696 = !DISubprogram(name: "tmpfile", scope: !573, file: !573, line: 194, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!581}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !700, file: !570, line: 141)
!700 = !DISubprogram(name: "tmpnam", scope: !573, file: !573, line: 211, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!184, !184}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !704, file: !570, line: 143)
!704 = !DISubprogram(name: "ungetc", scope: !573, file: !573, line: 731, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !706, file: !570, line: 144)
!706 = !DISubprogram(name: "vfprintf", scope: !573, file: !573, line: 372, type: !707, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DISubroutineType(types: !708)
!708 = !{!44, !598, !113, !155}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !710, file: !570, line: 145)
!710 = !DISubprogram(name: "vprintf", scope: !573, file: !573, line: 378, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!44, !113, !155}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !714, file: !570, line: 146)
!714 = !DISubprogram(name: "vsprintf", scope: !573, file: !573, line: 380, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!44, !183, !113, !155}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !718, file: !570, line: 175)
!718 = !DISubprogram(name: "snprintf", scope: !573, file: !573, line: 385, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!44, !183, !110, !113, null}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !722, file: !570, line: 176)
!722 = !DISubprogram(name: "vfscanf", linkageName: "__isoc23_vfscanf", scope: !573, file: !573, line: 511, type: !707, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !724, file: !570, line: 177)
!724 = !DISubprogram(name: "vscanf", linkageName: "__isoc23_vscanf", scope: !573, file: !573, line: 516, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !726, file: !570, line: 178)
!726 = !DISubprogram(name: "vsnprintf", scope: !573, file: !573, line: 389, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!44, !183, !110, !113, !155}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !298, entity: !730, file: !570, line: 179)
!730 = !DISubprogram(name: "vsscanf", linkageName: "__isoc23_vsscanf", scope: !573, file: !573, line: 519, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!44, !113, !113, !155}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !718, file: !570, line: 185)
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !722, file: !570, line: 186)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !724, file: !570, line: 187)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !726, file: !570, line: 188)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !730, file: !570, line: 189)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !739, file: !745, line: 61)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !740, line: 24, baseType: !741)
!740 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_max_align_t.h", directory: "", checksumkind: CSK_MD5, checksum: "3c0a2f19d136d39aa835c737c7105def")
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !740, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !742, identifier: "_ZTS11max_align_t")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !741, file: !740, line: 20, baseType: !307, size: 64, align: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !741, file: !740, line: 22, baseType: !302, size: 128, align: 128, offset: 128)
!745 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cstddef", directory: "")
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !747, file: !753, line: 82)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !748, line: 48, baseType: !749)
!748 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "eff95da6508e8f67a3c7b77d9d8ab229")
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !752, line: 41, baseType: !44)
!752 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!753 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cwctype", directory: "")
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !755, file: !753, line: 83)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !756, line: 38, baseType: !112)
!756 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "7f19501745f9a1fbbace8f0f185de59a")
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !56, file: !753, line: 84)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !759, file: !753, line: 86)
!759 = !DISubprogram(name: "iswalnum", scope: !756, file: !756, line: 95, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !761, file: !753, line: 87)
!761 = !DISubprogram(name: "iswalpha", scope: !756, file: !756, line: 101, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !763, file: !753, line: 89)
!763 = !DISubprogram(name: "iswblank", scope: !756, file: !756, line: 146, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !765, file: !753, line: 91)
!765 = !DISubprogram(name: "iswcntrl", scope: !756, file: !756, line: 104, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !767, file: !753, line: 92)
!767 = !DISubprogram(name: "iswctype", scope: !756, file: !756, line: 159, type: !768, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DISubroutineType(types: !769)
!769 = !{!44, !56, !755}
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !771, file: !753, line: 93)
!771 = !DISubprogram(name: "iswdigit", scope: !756, file: !756, line: 108, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !773, file: !753, line: 94)
!773 = !DISubprogram(name: "iswgraph", scope: !756, file: !756, line: 112, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !775, file: !753, line: 95)
!775 = !DISubprogram(name: "iswlower", scope: !756, file: !756, line: 117, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !777, file: !753, line: 96)
!777 = !DISubprogram(name: "iswprint", scope: !756, file: !756, line: 120, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !779, file: !753, line: 97)
!779 = !DISubprogram(name: "iswpunct", scope: !756, file: !756, line: 125, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !781, file: !753, line: 98)
!781 = !DISubprogram(name: "iswspace", scope: !756, file: !756, line: 130, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !783, file: !753, line: 99)
!783 = !DISubprogram(name: "iswupper", scope: !756, file: !756, line: 135, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !785, file: !753, line: 100)
!785 = !DISubprogram(name: "iswxdigit", scope: !756, file: !756, line: 140, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !787, file: !753, line: 101)
!787 = !DISubprogram(name: "towctrans", scope: !748, file: !748, line: 55, type: !788, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DISubroutineType(types: !789)
!789 = !{!56, !56, !747}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !791, file: !753, line: 102)
!791 = !DISubprogram(name: "towlower", scope: !756, file: !756, line: 166, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DISubroutineType(types: !793)
!793 = !{!56, !56}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !795, file: !753, line: 103)
!795 = !DISubprogram(name: "towupper", scope: !756, file: !756, line: 169, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !797, file: !753, line: 104)
!797 = !DISubprogram(name: "wctrans", scope: !748, file: !748, line: 52, type: !798, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DISubroutineType(types: !799)
!799 = !{!747, !114}
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !36, entity: !801, file: !753, line: 105)
!801 = !DISubprogram(name: "wctype", scope: !756, file: !756, line: 155, type: !802, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DISubroutineType(types: !803)
!803 = !{!755, !114}
!804 = !{i32 7, !"Dwarf Version", i32 5}
!805 = !{i32 2, !"Debug Info Version", i32 3}
!806 = !{i32 1, !"wchar_size", i32 4}
!807 = !{i32 8, !"PIC Level", i32 2}
!808 = !{i32 7, !"PIE Level", i32 2}
!809 = !{i32 7, !"uwtable", i32 2}
!810 = !{i32 7, !"frame-pointer", i32 2}
!811 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!812 = distinct !DISubprogram(name: "plant", linkageName: "_Z5plantd", scope: !2, file: !2, line: 49, type: !813, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!13, !13}
!815 = !{}
!816 = !DILocalVariable(name: "control", arg: 1, scope: !812, file: !2, line: 49, type: !13)
!817 = !DILocation(line: 49, column: 21, scope: !812)
!818 = !DILocation(line: 50, column: 17, scope: !812)
!819 = !DILocation(line: 50, column: 11, scope: !812)
!820 = !DILocation(line: 50, column: 2, scope: !812)
!821 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 53, type: !486, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !815)
!822 = !DILocalVariable(name: "pid_controller", scope: !821, file: !2, line: 55, type: !10)
!823 = !DILocation(line: 55, column: 16, scope: !821)
!824 = !DILocalVariable(name: "setpoint", scope: !821, file: !2, line: 57, type: !13)
!825 = !DILocation(line: 57, column: 9, scope: !821)
!826 = !DILocalVariable(name: "control", scope: !821, file: !2, line: 58, type: !13)
!827 = !DILocation(line: 58, column: 9, scope: !821)
!828 = !DILocalVariable(name: "input", scope: !821, file: !2, line: 59, type: !13)
!829 = !DILocation(line: 59, column: 9, scope: !821)
!830 = !DILocation(line: 59, column: 23, scope: !821)
!831 = !DILocation(line: 59, column: 17, scope: !821)
!832 = !DILocalVariable(name: "i", scope: !833, file: !2, line: 61, type: !44)
!833 = distinct !DILexicalBlock(scope: !821, file: !2, line: 61, column: 2)
!834 = !DILocation(line: 61, column: 11, scope: !833)
!835 = !DILocation(line: 61, column: 7, scope: !833)
!836 = !DILocation(line: 61, column: 18, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !2, line: 61, column: 2)
!838 = !DILocation(line: 61, column: 20, scope: !837)
!839 = !DILocation(line: 61, column: 2, scope: !833)
!840 = !DILocation(line: 62, column: 35, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !2, line: 61, column: 31)
!842 = !DILocation(line: 62, column: 45, scope: !841)
!843 = !DILocation(line: 62, column: 28, scope: !841)
!844 = !DILocation(line: 62, column: 11, scope: !841)
!845 = !DILocation(line: 64, column: 17, scope: !841)
!846 = !DILocation(line: 64, column: 11, scope: !841)
!847 = !DILocation(line: 64, column: 9, scope: !841)
!848 = !DILocation(line: 67, column: 4, scope: !841)
!849 = !DILocation(line: 67, column: 5, scope: !841)
!850 = !DILocation(line: 68, column: 4, scope: !841)
!851 = !DILocation(line: 69, column: 4, scope: !841)
!852 = !DILocation(line: 70, column: 4, scope: !841)
!853 = !DILocation(line: 66, column: 3, scope: !841)
!854 = !DILocation(line: 72, column: 2, scope: !841)
!855 = !DILocation(line: 61, column: 27, scope: !837)
!856 = !DILocation(line: 61, column: 2, scope: !837)
!857 = distinct !{!857, !839, !858, !859}
!858 = !DILocation(line: 72, column: 2, scope: !833)
!859 = !{!"llvm.loop.mustprogress"}
!860 = !DILocation(line: 73, column: 2, scope: !821)
!861 = distinct !DISubprogram(name: "PIDController", linkageName: "_ZN13PIDControllerC2Eddd", scope: !10, file: !2, line: 34, type: !30, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !29, retainedNodes: !815)
!862 = !DILocalVariable(name: "this", arg: 1, scope: !861, type: !863, flags: DIFlagArtificial | DIFlagObjectPointer)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!864 = !DILocation(line: 0, scope: !861)
!865 = !DILocalVariable(name: "K_p", arg: 2, scope: !861, file: !2, line: 34, type: !13)
!866 = !DILocation(line: 34, column: 26, scope: !861)
!867 = !DILocalVariable(name: "K_i", arg: 3, scope: !861, file: !2, line: 34, type: !13)
!868 = !DILocation(line: 34, column: 38, scope: !861)
!869 = !DILocalVariable(name: "K_d", arg: 4, scope: !861, file: !2, line: 34, type: !13)
!870 = !DILocation(line: 34, column: 50, scope: !861)
!871 = !DILocation(line: 34, column: 57, scope: !861)
!872 = !DILocation(line: 34, column: 61, scope: !861)
!873 = !DILocation(line: 34, column: 67, scope: !861)
!874 = !DILocation(line: 34, column: 71, scope: !861)
!875 = !DILocation(line: 34, column: 77, scope: !861)
!876 = !DILocation(line: 34, column: 81, scope: !861)
!877 = !DILocation(line: 34, column: 87, scope: !861)
!878 = !DILocation(line: 34, column: 106, scope: !861)
!879 = !DILocation(line: 34, column: 119, scope: !861)
!880 = distinct !DISubprogram(name: "update", linkageName: "_ZN13PIDController6updateEdd", scope: !10, file: !2, line: 36, type: !19, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !32, retainedNodes: !815)
!881 = !DILocalVariable(name: "this", arg: 1, scope: !880, type: !863, flags: DIFlagArtificial | DIFlagObjectPointer)
!882 = !DILocation(line: 0, scope: !880)
!883 = !DILocalVariable(name: "setpoint", arg: 2, scope: !880, file: !2, line: 36, type: !13)
!884 = !DILocation(line: 36, column: 23, scope: !880)
!885 = !DILocalVariable(name: "input", arg: 3, scope: !880, file: !2, line: 36, type: !13)
!886 = !DILocation(line: 36, column: 40, scope: !880)
!887 = !DILocalVariable(name: "current_error", scope: !880, file: !2, line: 37, type: !13)
!888 = !DILocation(line: 37, column: 10, scope: !880)
!889 = !DILocation(line: 37, column: 36, scope: !880)
!890 = !DILocation(line: 37, column: 46, scope: !880)
!891 = !DILocation(line: 37, column: 26, scope: !880)
!892 = !DILocalVariable(name: "control", scope: !880, file: !2, line: 39, type: !13)
!893 = !DILocation(line: 39, column: 10, scope: !880)
!894 = !DILocation(line: 39, column: 20, scope: !880)
!895 = !DILocation(line: 39, column: 26, scope: !880)
!896 = !DILocation(line: 39, column: 42, scope: !880)
!897 = !DILocation(line: 39, column: 61, scope: !880)
!898 = !DILocation(line: 39, column: 48, scope: !880)
!899 = !DILocation(line: 39, column: 46, scope: !880)
!900 = !DILocation(line: 39, column: 40, scope: !880)
!901 = !DILocation(line: 39, column: 78, scope: !880)
!902 = !DILocation(line: 39, column: 99, scope: !880)
!903 = !DILocation(line: 39, column: 84, scope: !880)
!904 = !DILocation(line: 39, column: 76, scope: !880)
!905 = !DILocation(line: 41, column: 20, scope: !880)
!906 = !DILocation(line: 41, column: 3, scope: !880)
!907 = !DILocation(line: 41, column: 18, scope: !880)
!908 = !DILocation(line: 43, column: 10, scope: !880)
!909 = !DILocation(line: 43, column: 3, scope: !880)
!910 = distinct !DISubprogram(name: "get_error", linkageName: "_ZN13PIDController9get_errorEdd", scope: !10, file: !2, line: 11, type: !19, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !18, retainedNodes: !815)
!911 = !DILocalVariable(name: "this", arg: 1, scope: !910, type: !863, flags: DIFlagArtificial | DIFlagObjectPointer)
!912 = !DILocation(line: 0, scope: !910)
!913 = !DILocalVariable(name: "setpoint", arg: 2, scope: !910, file: !2, line: 11, type: !13)
!914 = !DILocation(line: 11, column: 26, scope: !910)
!915 = !DILocalVariable(name: "input", arg: 3, scope: !910, file: !2, line: 11, type: !13)
!916 = !DILocation(line: 11, column: 43, scope: !910)
!917 = !DILocation(line: 12, column: 10, scope: !910)
!918 = !DILocation(line: 12, column: 21, scope: !910)
!919 = !DILocation(line: 12, column: 19, scope: !910)
!920 = !DILocation(line: 12, column: 3, scope: !910)
!921 = distinct !DISubprogram(name: "get_integral", linkageName: "_ZN13PIDController12get_integralEd", scope: !10, file: !2, line: 26, type: !26, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !28, retainedNodes: !815)
!922 = !DILocalVariable(name: "this", arg: 1, scope: !921, type: !863, flags: DIFlagArtificial | DIFlagObjectPointer)
!923 = !DILocation(line: 0, scope: !921)
!924 = !DILocalVariable(name: "error", arg: 2, scope: !921, file: !2, line: 26, type: !13)
!925 = !DILocation(line: 26, column: 29, scope: !921)
!926 = !DILocation(line: 27, column: 19, scope: !921)
!927 = !DILocation(line: 27, column: 3, scope: !921)
!928 = !DILocation(line: 29, column: 10, scope: !921)
!929 = !DILocation(line: 29, column: 3, scope: !921)
!930 = distinct !DISubprogram(name: "get_derivative", linkageName: "_ZN13PIDController14get_derivativeEd", scope: !10, file: !2, line: 22, type: !26, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !25, retainedNodes: !815)
!931 = !DILocalVariable(name: "this", arg: 1, scope: !930, type: !863, flags: DIFlagArtificial | DIFlagObjectPointer)
!932 = !DILocation(line: 0, scope: !930)
!933 = !DILocalVariable(name: "error", arg: 2, scope: !930, file: !2, line: 22, type: !13)
!934 = !DILocation(line: 22, column: 31, scope: !930)
!935 = !DILocation(line: 23, column: 10, scope: !930)
!936 = !DILocation(line: 23, column: 18, scope: !930)
!937 = !DILocation(line: 23, column: 16, scope: !930)
!938 = !DILocation(line: 23, column: 3, scope: !930)
!939 = distinct !DISubprogram(name: "update_integral", linkageName: "_ZN13PIDController15update_integralEd", scope: !10, file: !2, line: 15, type: !23, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !22, retainedNodes: !815)
!940 = !DILocalVariable(name: "this", arg: 1, scope: !939, type: !863, flags: DIFlagArtificial | DIFlagObjectPointer)
!941 = !DILocation(line: 0, scope: !939)
!942 = !DILocalVariable(name: "error", arg: 2, scope: !939, file: !2, line: 15, type: !13)
!943 = !DILocation(line: 15, column: 30, scope: !939)
!944 = !DILocation(line: 17, column: 15, scope: !939)
!945 = !DILocation(line: 17, column: 3, scope: !939)
!946 = !DILocation(line: 17, column: 12, scope: !939)
!947 = !DILocation(line: 19, column: 23, scope: !939)
!948 = !DILocation(line: 19, column: 39, scope: !939)
!949 = !DILocation(line: 19, column: 45, scope: !939)
!950 = !DILocation(line: 19, column: 30, scope: !939)
!951 = !DILocation(line: 19, column: 14, scope: !939)
!952 = !DILocation(line: 19, column: 3, scope: !939)
!953 = !DILocation(line: 19, column: 12, scope: !939)
!954 = !DILocation(line: 20, column: 2, scope: !939)
!955 = distinct !DISubprogram(name: "max<double>", linkageName: "_ZSt3maxIdERKT_S2_S2_", scope: !36, file: !956, line: 257, type: !957, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !961, retainedNodes: !815)
!956 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "899ef321f7def9f14248413be3665cb7")
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !959, !959}
!959 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!961 = !{!962}
!962 = !DITemplateTypeParameter(name: "_Tp", type: !13)
!963 = !DILocalVariable(name: "__a", arg: 1, scope: !955, file: !956, line: 257, type: !959)
!964 = !DILocation(line: 257, column: 20, scope: !955)
!965 = !DILocalVariable(name: "__b", arg: 2, scope: !955, file: !956, line: 257, type: !959)
!966 = !DILocation(line: 257, column: 36, scope: !955)
!967 = !DILocation(line: 262, column: 11, scope: !968)
!968 = distinct !DILexicalBlock(scope: !955, file: !956, line: 262, column: 11)
!969 = !DILocation(line: 262, column: 17, scope: !968)
!970 = !DILocation(line: 262, column: 15, scope: !968)
!971 = !DILocation(line: 262, column: 11, scope: !955)
!972 = !DILocation(line: 263, column: 9, scope: !968)
!973 = !DILocation(line: 263, column: 2, scope: !968)
!974 = !DILocation(line: 264, column: 14, scope: !955)
!975 = !DILocation(line: 264, column: 7, scope: !955)
!976 = !DILocation(line: 265, column: 5, scope: !955)
!977 = distinct !DISubprogram(name: "min<double>", linkageName: "_ZSt3minIdERKT_S2_S2_", scope: !36, file: !956, line: 233, type: !957, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !961, retainedNodes: !815)
!978 = !DILocalVariable(name: "__a", arg: 1, scope: !977, file: !956, line: 233, type: !959)
!979 = !DILocation(line: 233, column: 20, scope: !977)
!980 = !DILocalVariable(name: "__b", arg: 2, scope: !977, file: !956, line: 233, type: !959)
!981 = !DILocation(line: 233, column: 36, scope: !977)
!982 = !DILocation(line: 238, column: 11, scope: !983)
!983 = distinct !DILexicalBlock(scope: !977, file: !956, line: 238, column: 11)
!984 = !DILocation(line: 238, column: 17, scope: !983)
!985 = !DILocation(line: 238, column: 15, scope: !983)
!986 = !DILocation(line: 238, column: 11, scope: !977)
!987 = !DILocation(line: 239, column: 9, scope: !983)
!988 = !DILocation(line: 239, column: 2, scope: !983)
!989 = !DILocation(line: 240, column: 14, scope: !977)
!990 = !DILocation(line: 240, column: 7, scope: !977)
!991 = !DILocation(line: 241, column: 5, scope: !977)
