; ModuleID = 'function_pointer.cpp'
source_filename = "function_pointer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.anon = type { i8 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon.0 = type { i32 }
%"struct.std::integral_constant" = type { i8 }
%"struct.std::__invoke_other" = type { i8 }

$_ZNKSt8functionIFiiiEEclEii = comdat any

$_ZNSt8functionIFiiiEED2Ev = comdat any

$_ZNSt14_Function_baseD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt14_Function_base8_M_emptyEv = comdat any

$_ZNSt14_Function_baseC2Ev = comdat any

$_ZNSt9_Any_data9_M_accessEv = comdat any

$_ZNKSt9_Any_data9_M_accessEv = comdat any

$_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v = comdat any

@.str = private unnamed_addr constant [39 x i8] c"Result 1 (Function pointer - add): %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [44 x i8] c"Result 2 (Function pointer - multiply): %d\0A\00", align 1, !dbg !8
@__const.main.lambda_op = private unnamed_addr constant %class.anon undef, align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Result 3 (lambda - sub): %d\0A\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [40 x i8] c"Result 3 (lambda capture - factor): %d\0A\00", align 1, !dbg !18
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZ4mainE3$_0" = internal constant [12 x i8] c"Z4mainE3$_0\00", align 1
@"_ZTIZ4mainE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZ4mainE3$_0" }, align 8
@"_ZTSZ4mainE3$_1" = internal constant [12 x i8] c"Z4mainE3$_1\00", align 1
@"_ZTIZ4mainE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZ4mainE3$_1" }, align 8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3addii(i32 noundef %0, i32 noundef %1) #0 !dbg !245 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !247
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !248, metadata !DIExpression()), !dbg !249
  %5 = load i32, ptr %3, align 4, !dbg !250
  %6 = load i32, ptr %4, align 4, !dbg !251
  %7 = add nsw i32 %5, %6, !dbg !252
  ret i32 %7, !dbg !253
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z8multiplyii(i32 noundef %0, i32 noundef %1) #0 !dbg !254 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !255, metadata !DIExpression()), !dbg !256
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !257, metadata !DIExpression()), !dbg !258
  %5 = load i32, ptr %3, align 4, !dbg !259
  %6 = load i32, ptr %4, align 4, !dbg !260
  %7 = mul nsw i32 %5, %6, !dbg !261
  ret i32 %7, !dbg !262
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z15apply_operationiiPFiiiE(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 !dbg !263 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !267, metadata !DIExpression()), !dbg !268
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !269, metadata !DIExpression()), !dbg !270
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !271, metadata !DIExpression()), !dbg !272
  %7 = load ptr, ptr %6, align 8, !dbg !273
  %8 = load i32, ptr %4, align 4, !dbg !274
  %9 = load i32, ptr %5, align 4, !dbg !275
  %10 = call noundef i32 %7(i32 noundef %8, i32 noundef %9), !dbg !273
  ret i32 %10, !dbg !276
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z13call_functioniiSt8functionIFiiiEE(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 !dbg !277 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !280, metadata !DIExpression()), !dbg !281
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !282, metadata !DIExpression()), !dbg !283
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !284, metadata !DIExpression(DW_OP_deref)), !dbg !285
  %7 = load i32, ptr %4, align 4, !dbg !286
  %8 = load i32, ptr %5, align 4, !dbg !287
  %9 = call noundef i32 @_ZNKSt8functionIFiiiEEclEii(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %7, i32 noundef %8), !dbg !288
  ret i32 %9, !dbg !289
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNKSt8functionIFiiiEEclEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) #2 comdat align 2 !dbg !290 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !291, metadata !DIExpression()), !dbg !293
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !294, metadata !DIExpression()), !dbg !295
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !296, metadata !DIExpression()), !dbg !295
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !dbg !297
  br i1 %8, label %9, label %10, !dbg !299

9:                                                ; preds = %3
  call void @_ZSt25__throw_bad_function_callv() #9, !dbg !300
  unreachable, !dbg !300

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.std::function", ptr %7, i32 0, i32 1, !dbg !301
  %12 = load ptr, ptr %11, align 8, !dbg !301
  %13 = getelementptr inbounds %"class.std::_Function_base", ptr %7, i32 0, i32 0, !dbg !302
  %14 = call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6), !dbg !301
  ret i32 %14, !dbg !303
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #3 personality ptr @__gxx_personality_v0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.anon, align 1
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::function", align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %class.anon.0, align 4
  %14 = alloca i32, align 4
  %15 = alloca %"class.std::function", align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  store i32 5, ptr %2, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !307
  store i32 3, ptr %3, align 4, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %4, metadata !308, metadata !DIExpression()), !dbg !309
  store ptr @_Z3addii, ptr %4, align 8, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %5, metadata !310, metadata !DIExpression()), !dbg !311
  %16 = load i32, ptr %2, align 4, !dbg !312
  %17 = load i32, ptr %3, align 4, !dbg !313
  %18 = load ptr, ptr %4, align 8, !dbg !314
  %19 = call noundef i32 @_Z15apply_operationiiPFiiiE(i32 noundef %16, i32 noundef %17, ptr noundef %18), !dbg !315
  store i32 %19, ptr %5, align 4, !dbg !311
  %20 = load i32, ptr %5, align 4, !dbg !316
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20), !dbg !317
  call void @llvm.dbg.declare(metadata ptr %6, metadata !318, metadata !DIExpression()), !dbg !319
  %22 = load i32, ptr %2, align 4, !dbg !320
  %23 = load i32, ptr %3, align 4, !dbg !321
  %24 = call noundef i32 @_Z15apply_operationiiPFiiiE(i32 noundef %22, i32 noundef %23, ptr noundef @_Z8multiplyii), !dbg !322
  store i32 %24, ptr %6, align 4, !dbg !319
  %25 = load i32, ptr %6, align 4, !dbg !323
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %25), !dbg !324
  call void @llvm.dbg.declare(metadata ptr %7, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 @__const.main.lambda_op, i64 1, i1 false), !dbg !326
  call void @llvm.dbg.declare(metadata ptr %8, metadata !327, metadata !DIExpression()), !dbg !328
  %27 = load i32, ptr %2, align 4, !dbg !329
  %28 = load i32, ptr %3, align 4, !dbg !330
  call void @"_ZNSt8functionIFiiiEEC2IRZ4mainE3$_0vEEOT_"(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(1) %7) #10, !dbg !331
  %29 = invoke noundef i32 @_Z13call_functioniiSt8functionIFiiiEE(i32 noundef %27, i32 noundef %28, ptr noundef %9)
          to label %30 unwind label %41, !dbg !332

30:                                               ; preds = %0
  call void @_ZNSt8functionIFiiiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10, !dbg !332
  store i32 %29, ptr %8, align 4, !dbg !328
  %31 = load i32, ptr %8, align 4, !dbg !333
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %31), !dbg !334
  call void @llvm.dbg.declare(metadata ptr %12, metadata !335, metadata !DIExpression()), !dbg !336
  store i32 2, ptr %12, align 4, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %13, metadata !337, metadata !DIExpression()), !dbg !338
  %33 = getelementptr inbounds %class.anon.0, ptr %13, i32 0, i32 0, !dbg !339
  %34 = load i32, ptr %12, align 4, !dbg !340
  store i32 %34, ptr %33, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %14, metadata !341, metadata !DIExpression()), !dbg !342
  %35 = load i32, ptr %2, align 4, !dbg !343
  %36 = load i32, ptr %3, align 4, !dbg !344
  call void @"_ZNSt8functionIFiiiEEC2IRZ4mainE3$_1vEEOT_"(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(4) %13) #10, !dbg !345
  %37 = invoke noundef i32 @_Z13call_functioniiSt8functionIFiiiEE(i32 noundef %35, i32 noundef %36, ptr noundef %15)
          to label %38 unwind label %45, !dbg !346

38:                                               ; preds = %30
  call void @_ZNSt8functionIFiiiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #10, !dbg !346
  store i32 %37, ptr %14, align 4, !dbg !342
  %39 = load i32, ptr %14, align 4, !dbg !347
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %39), !dbg !348
  ret i32 0, !dbg !349

41:                                               ; preds = %0
  %42 = landingpad { ptr, i32 }
          cleanup, !dbg !350
  %43 = extractvalue { ptr, i32 } %42, 0, !dbg !350
  store ptr %43, ptr %10, align 8, !dbg !350
  %44 = extractvalue { ptr, i32 } %42, 1, !dbg !350
  store i32 %44, ptr %11, align 4, !dbg !350
  call void @_ZNSt8functionIFiiiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10, !dbg !332
  br label %49, !dbg !332

45:                                               ; preds = %30
  %46 = landingpad { ptr, i32 }
          cleanup, !dbg !350
  %47 = extractvalue { ptr, i32 } %46, 0, !dbg !350
  store ptr %47, ptr %10, align 8, !dbg !350
  %48 = extractvalue { ptr, i32 } %46, 1, !dbg !350
  store i32 %48, ptr %11, align 4, !dbg !350
  call void @_ZNSt8functionIFiiiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #10, !dbg !346
  br label %49, !dbg !346

49:                                               ; preds = %45, %41
  %50 = load ptr, ptr %10, align 8, !dbg !332
  %51 = load i32, ptr %11, align 4, !dbg !332
  %52 = insertvalue { ptr, i32 } poison, ptr %50, 0, !dbg !332
  %53 = insertvalue { ptr, i32 } %52, i32 %51, 1, !dbg !332
  resume { ptr, i32 } %53, !dbg !332
}

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt8functionIFiiiEEC2IRZ4mainE3$_0vEEOT_"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 !dbg !351 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !358, metadata !DIExpression()), !dbg !360
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !361, metadata !DIExpression()), !dbg !362
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 0, !dbg !363
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 24, i1 false), !dbg !363
  call void @_ZNSt14_Function_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #10, !dbg !363
  %7 = getelementptr inbounds %"class.std::function", ptr %5, i32 0, i32 1, !dbg !364
  store ptr null, ptr %7, align 8, !dbg !364
  %8 = load ptr, ptr %4, align 8, !dbg !365
  %9 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E21_M_not_empty_functionIS1_EEbRKT_"(ptr noundef nonnull align 1 dereferenceable(1) %8) #10, !dbg !368
  br i1 %9, label %10, label %15, !dbg !369

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.std::_Function_base", ptr %5, i32 0, i32 0, !dbg !370
  %12 = load ptr, ptr %4, align 8, !dbg !372
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRS1_EEvRSt9_Any_dataOT_"(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) #10, !dbg !373
  %13 = getelementptr inbounds %"class.std::function", ptr %5, i32 0, i32 1, !dbg !374
  store ptr @"_ZNSt17_Function_handlerIFiiiEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOiS6_", ptr %13, align 8, !dbg !375
  %14 = getelementptr inbounds %"class.std::_Function_base", ptr %5, i32 0, i32 1, !dbg !376
  store ptr @"_ZNSt17_Function_handlerIFiiiEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %14, align 8, !dbg !377
  br label %15, !dbg !378

15:                                               ; preds = %10, %2
  ret void, !dbg !379
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFiiiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !dbg !380 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !383
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt14_Function_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10, !dbg !384
  ret void, !dbg !386
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt8functionIFiiiEEC2IRZ4mainE3$_1vEEOT_"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 !dbg !387 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !393, metadata !DIExpression()), !dbg !394
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !395, metadata !DIExpression()), !dbg !396
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 0, !dbg !397
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 24, i1 false), !dbg !397
  call void @_ZNSt14_Function_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #10, !dbg !397
  %7 = getelementptr inbounds %"class.std::function", ptr %5, i32 0, i32 1, !dbg !398
  store ptr null, ptr %7, align 8, !dbg !398
  %8 = load ptr, ptr %4, align 8, !dbg !399
  %9 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E21_M_not_empty_functionIS1_EEbRKT_"(ptr noundef nonnull align 4 dereferenceable(4) %8) #10, !dbg !402
  br i1 %9, label %10, label %15, !dbg !403

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.std::_Function_base", ptr %5, i32 0, i32 0, !dbg !404
  %12 = load ptr, ptr %4, align 8, !dbg !406
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E15_M_init_functorIRS1_EEvRSt9_Any_dataOT_"(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(4) %12) #10, !dbg !407
  %13 = getelementptr inbounds %"class.std::function", ptr %5, i32 0, i32 1, !dbg !408
  store ptr @"_ZNSt17_Function_handlerIFiiiEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOiS6_", ptr %13, align 8, !dbg !409
  %14 = getelementptr inbounds %"class.std::_Function_base", ptr %5, i32 0, i32 1, !dbg !410
  store ptr @"_ZNSt17_Function_handlerIFiiiEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %14, align 8, !dbg !411
  br label %15, !dbg !412

15:                                               ; preds = %10, %2
  ret void, !dbg !413
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !414 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !415, metadata !DIExpression()), !dbg !417
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", ptr %3, i32 0, i32 1, !dbg !418
  %5 = load ptr, ptr %4, align 8, !dbg !418
  %6 = icmp ne ptr %5, null, !dbg !418
  br i1 %6, label %7, label %14, !dbg !421

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Function_base", ptr %3, i32 0, i32 1, !dbg !422
  %9 = load ptr, ptr %8, align 8, !dbg !422
  %10 = getelementptr inbounds %"class.std::_Function_base", ptr %3, i32 0, i32 0, !dbg !423
  %11 = getelementptr inbounds %"class.std::_Function_base", ptr %3, i32 0, i32 0, !dbg !424
  %12 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 3)
          to label %13 unwind label %15, !dbg !422

13:                                               ; preds = %7
  br label %14, !dbg !422

14:                                               ; preds = %13, %1
  ret void, !dbg !425

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          catch ptr null, !dbg !422
  %17 = extractvalue { ptr, i32 } %16, 0, !dbg !422
  call void @__clang_call_terminate(ptr %17) #11, !dbg !422
  unreachable, !dbg !422
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #6 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #10
  call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 !dbg !426 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !427, metadata !DIExpression()), !dbg !429
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", ptr %3, i32 0, i32 1, !dbg !430
  %5 = load ptr, ptr %4, align 8, !dbg !430
  %6 = icmp ne ptr %5, null, !dbg !430
  %7 = xor i1 %6, true, !dbg !431
  ret i1 %7, !dbg !432
}

; Function Attrs: cold noreturn
declare void @_ZSt25__throw_bad_function_callv() #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !dbg !433 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !434, metadata !DIExpression()), !dbg !435
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", ptr %3, i32 0, i32 0, !dbg !436
  store ptr null, ptr %4, align 8, !dbg !437
  %5 = getelementptr inbounds %"class.std::_Function_base", ptr %3, i32 0, i32 1, !dbg !438
  store ptr null, ptr %5, align 8, !dbg !438
  ret void, !dbg !439
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E21_M_not_empty_functionIS1_EEbRKT_"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 align 2 !dbg !440 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !492, metadata !DIExpression()), !dbg !493
  ret i1 true, !dbg !494
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRS1_EEvRSt9_Any_dataOT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 align 2 personality ptr @__gxx_personality_v0 !dbg !495 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !502
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !503, metadata !DIExpression()), !dbg !504
  %6 = load ptr, ptr %3, align 8, !dbg !505
  %7 = load ptr, ptr %4, align 8, !dbg !506
  invoke void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %8 unwind label %9, !dbg !507

8:                                                ; preds = %2
  ret void, !dbg !508

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null, !dbg !507
  %11 = extractvalue { ptr, i32 } %10, 0, !dbg !507
  call void @__clang_call_terminate(ptr %11) #11, !dbg !507
  unreachable, !dbg !507
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFiiiEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOiS6_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 align 2 !dbg !509 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !516, metadata !DIExpression()), !dbg !517
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !518, metadata !DIExpression()), !dbg !519
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !520, metadata !DIExpression()), !dbg !519
  %7 = load ptr, ptr %4, align 8, !dbg !521
  %8 = call noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %7) #10, !dbg !522
  %9 = load ptr, ptr %5, align 8, !dbg !523
  %10 = load ptr, ptr %6, align 8, !dbg !523
  %11 = call noundef i32 @"_ZSt10__invoke_rIiRZ4mainE3$_0JiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_"(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10), !dbg !524
  ret i32 %11, !dbg !525
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFiiiEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 align 2 !dbg !526 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !527, metadata !DIExpression()), !dbg !528
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !529, metadata !DIExpression()), !dbg !530
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !531, metadata !DIExpression()), !dbg !532
  %7 = load i32, ptr %6, align 4, !dbg !533
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %11
  ], !dbg !534

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !dbg !535
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(ptr noundef nonnull align 8 dereferenceable(16) %9) #10, !dbg !537
  store ptr @"_ZTIZ4mainE3$_0", ptr %10, align 8, !dbg !538
  br label %21, !dbg !539

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !dbg !540
  %13 = call noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %12) #10, !dbg !541
  %14 = load ptr, ptr %4, align 8, !dbg !542
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_0EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %14) #10, !dbg !543
  store ptr %13, ptr %15, align 8, !dbg !544
  br label %21, !dbg !545

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8, !dbg !546
  %18 = load ptr, ptr %5, align 8, !dbg !547
  %19 = load i32, ptr %6, align 4, !dbg !548
  %20 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %19), !dbg !549
  br label %21, !dbg !550

21:                                               ; preds = %16, %11, %8
  ret i1 false, !dbg !551
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 align 2 !dbg !552 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !556, metadata !DIExpression()), !dbg !557
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata ptr %3, metadata !560, metadata !DIExpression()), !dbg !561
  %6 = load ptr, ptr %4, align 8, !dbg !562
  %7 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10, !dbg !563
  %8 = load ptr, ptr %5, align 8, !dbg !564
  ret void, !dbg !565
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 !dbg !566 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !567, metadata !DIExpression()), !dbg !569
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 0, !dbg !570
  ret ptr %4, !dbg !571
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @"_ZSt10__invoke_rIiRZ4mainE3$_0JiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 !dbg !37 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__invoke_other", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !572, metadata !DIExpression()), !dbg !573
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !574, metadata !DIExpression()), !dbg !575
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !576, metadata !DIExpression()), !dbg !575
  %8 = load ptr, ptr %4, align 8, !dbg !577
  %9 = load ptr, ptr %5, align 8, !dbg !579
  %10 = load ptr, ptr %6, align 8, !dbg !579
  %11 = call noundef i32 @"_ZSt13__invoke_implIiRZ4mainE3$_0JiiEET_St14__invoke_otherOT0_DpOT1_"(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10), !dbg !580
  ret i32 %11, !dbg !581
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !582 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata ptr %3, metadata !585, metadata !DIExpression()), !dbg !588
  %4 = load ptr, ptr %2, align 8, !dbg !589
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"_ZNKSt9_Any_data9_M_accessIZ4mainE3$_0EERKT_v"(ptr noundef nonnull align 8 dereferenceable(16) %4) #10, !dbg !590
  store ptr %5, ptr %3, align 8, !dbg !588
  %6 = load ptr, ptr %3, align 8, !dbg !591
  ret ptr %6, !dbg !592
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @"_ZSt13__invoke_implIiRZ4mainE3$_0JiiEET_St14__invoke_otherOT0_DpOT1_"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 !dbg !593 {
  %4 = alloca %"struct.std::__invoke_other", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !597, metadata !DIExpression()), !dbg !598
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !599, metadata !DIExpression()), !dbg !600
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !601, metadata !DIExpression()), !dbg !602
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !603, metadata !DIExpression()), !dbg !602
  %8 = load ptr, ptr %5, align 8, !dbg !604
  %9 = load ptr, ptr %6, align 8, !dbg !605
  %10 = load i32, ptr %9, align 4, !dbg !606
  %11 = load ptr, ptr %7, align 8, !dbg !605
  %12 = load i32, ptr %11, align 4, !dbg !606
  %13 = call noundef i32 @"_ZZ4mainENK3$_0clEii"(ptr noundef nonnull align 1 dereferenceable(1) %8, i32 noundef %10, i32 noundef %12), !dbg !607
  ret i32 %13, !dbg !608
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @"_ZZ4mainENK3$_0clEii"(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2) #0 align 2 !dbg !609 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !614, metadata !DIExpression()), !dbg !615
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !616, metadata !DIExpression()), !dbg !617
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !618, metadata !DIExpression()), !dbg !619
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4, !dbg !620
  %9 = load i32, ptr %6, align 4, !dbg !621
  %10 = sub nsw i32 %8, %9, !dbg !622
  ret i32 %10, !dbg !623
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 1 dereferenceable(1) ptr @"_ZNKSt9_Any_data9_M_accessIZ4mainE3$_0EERKT_v"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !624 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !628, metadata !DIExpression()), !dbg !630
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNKSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10, !dbg !631
  ret ptr %4, !dbg !632
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 !dbg !633 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !634, metadata !DIExpression()), !dbg !635
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 0, !dbg !636
  ret ptr %4, !dbg !637
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 !dbg !638 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !645, metadata !DIExpression()), !dbg !646
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10, !dbg !647
  ret ptr %4, !dbg !648
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_0EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !649 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !656, metadata !DIExpression()), !dbg !657
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10, !dbg !658
  ret ptr %4, !dbg !659
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 align 2 !dbg !660 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !661, metadata !DIExpression()), !dbg !662
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !663, metadata !DIExpression()), !dbg !664
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !665, metadata !DIExpression()), !dbg !666
  %8 = load i32, ptr %6, align 4, !dbg !667
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
  ], !dbg !668

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !dbg !669
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(ptr noundef nonnull align 8 dereferenceable(16) %10) #10, !dbg !671
  store ptr @"_ZTIZ4mainE3$_0", ptr %11, align 8, !dbg !672
  br label %23, !dbg !673

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !674
  %14 = call noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %13) #10, !dbg !675
  %15 = load ptr, ptr %4, align 8, !dbg !676
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_0EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %15) #10, !dbg !677
  store ptr %14, ptr %16, align 8, !dbg !678
  br label %23, !dbg !679

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !680
  %19 = load ptr, ptr %5, align 8, !dbg !681
  %20 = call noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %19) #10, !dbg !682
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_"(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 1 dereferenceable(1) %20) #10, !dbg !683
  br label %23, !dbg !684

21:                                               ; preds = %3
  %22 = load ptr, ptr %4, align 8, !dbg !685
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %22), !dbg !686
  br label %23, !dbg !687

23:                                               ; preds = %3, %21, %17, %12, %9
  ret i1 false, !dbg !688
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 align 2 personality ptr @__gxx_personality_v0 !dbg !689 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !695, metadata !DIExpression()), !dbg !696
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !697, metadata !DIExpression()), !dbg !698
  %6 = load ptr, ptr %3, align 8, !dbg !699
  %7 = load ptr, ptr %4, align 8, !dbg !700
  invoke void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %8 unwind label %9, !dbg !701

8:                                                ; preds = %2
  ret void, !dbg !702

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null, !dbg !701
  %11 = extractvalue { ptr, i32 } %10, 0, !dbg !701
  call void @__clang_call_terminate(ptr %11) #11, !dbg !701
  unreachable, !dbg !701
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !703 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !704, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.declare(metadata ptr %2, metadata !706, metadata !DIExpression()), !dbg !707
  %4 = load ptr, ptr %3, align 8, !dbg !708
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt9_Any_data9_M_accessIZ4mainE3$_0EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %4) #10, !dbg !709
  ret void, !dbg !710
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 align 2 !dbg !711 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !715, metadata !DIExpression()), !dbg !716
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata ptr %3, metadata !719, metadata !DIExpression()), !dbg !720
  %6 = load ptr, ptr %4, align 8, !dbg !721
  %7 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10, !dbg !722
  %8 = load ptr, ptr %5, align 8, !dbg !723
  ret void, !dbg !724
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt9_Any_data9_M_accessIZ4mainE3$_0EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !725 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !729, metadata !DIExpression()), !dbg !730
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10, !dbg !731
  ret ptr %4, !dbg !732
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E21_M_not_empty_functionIS1_EEbRKT_"(ptr noundef nonnull align 4 dereferenceable(4) %0) #0 align 2 !dbg !733 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !751, metadata !DIExpression()), !dbg !752
  ret i1 true, !dbg !753
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E15_M_init_functorIRS1_EEvRSt9_Any_dataOT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 align 2 personality ptr @__gxx_personality_v0 !dbg !754 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !760, metadata !DIExpression()), !dbg !761
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !762, metadata !DIExpression()), !dbg !763
  %6 = load ptr, ptr %3, align 8, !dbg !764
  %7 = load ptr, ptr %4, align 8, !dbg !765
  invoke void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E9_M_createIRS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %8 unwind label %9, !dbg !766

8:                                                ; preds = %2
  ret void, !dbg !767

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null, !dbg !766
  %11 = extractvalue { ptr, i32 } %10, 0, !dbg !766
  call void @__clang_call_terminate(ptr %11) #11, !dbg !766
  unreachable, !dbg !766
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFiiiEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOiS6_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 align 2 !dbg !768 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !775, metadata !DIExpression()), !dbg !776
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !777, metadata !DIExpression()), !dbg !778
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !779, metadata !DIExpression()), !dbg !778
  %7 = load ptr, ptr %4, align 8, !dbg !780
  %8 = call noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %7) #10, !dbg !781
  %9 = load ptr, ptr %5, align 8, !dbg !782
  %10 = load ptr, ptr %6, align 8, !dbg !782
  %11 = call noundef i32 @"_ZSt10__invoke_rIiRZ4mainE3$_1JiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_"(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10), !dbg !783
  ret i32 %11, !dbg !784
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFiiiEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 align 2 !dbg !785 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !786, metadata !DIExpression()), !dbg !787
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !788, metadata !DIExpression()), !dbg !789
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !790, metadata !DIExpression()), !dbg !791
  %7 = load i32, ptr %6, align 4, !dbg !792
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %11
  ], !dbg !793

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !dbg !794
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(ptr noundef nonnull align 8 dereferenceable(16) %9) #10, !dbg !796
  store ptr @"_ZTIZ4mainE3$_1", ptr %10, align 8, !dbg !797
  br label %21, !dbg !798

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !dbg !799
  %13 = call noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %12) #10, !dbg !800
  %14 = load ptr, ptr %4, align 8, !dbg !801
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_1EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %14) #10, !dbg !802
  store ptr %13, ptr %15, align 8, !dbg !803
  br label %21, !dbg !804

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8, !dbg !805
  %18 = load ptr, ptr %5, align 8, !dbg !806
  %19 = load i32, ptr %6, align 4, !dbg !807
  %20 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %19), !dbg !808
  br label %21, !dbg !809

21:                                               ; preds = %16, %11, %8
  ret i1 false, !dbg !810
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E9_M_createIRS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 align 2 !dbg !811 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !815, metadata !DIExpression()), !dbg !816
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata ptr %3, metadata !819, metadata !DIExpression()), !dbg !820
  %6 = load ptr, ptr %4, align 8, !dbg !821
  %7 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10, !dbg !822
  %8 = load ptr, ptr %5, align 8, !dbg !823
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %8, i64 4, i1 false), !dbg !824
  ret void, !dbg !825
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @"_ZSt10__invoke_rIiRZ4mainE3$_1JiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_"(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 !dbg !81 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__invoke_other", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !826, metadata !DIExpression()), !dbg !827
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !828, metadata !DIExpression()), !dbg !829
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !830, metadata !DIExpression()), !dbg !829
  %8 = load ptr, ptr %4, align 8, !dbg !831
  %9 = load ptr, ptr %5, align 8, !dbg !833
  %10 = load ptr, ptr %6, align 8, !dbg !833
  %11 = call noundef i32 @"_ZSt13__invoke_implIiRZ4mainE3$_1JiiEET_St14__invoke_otherOT0_DpOT1_"(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10), !dbg !834
  ret i32 %11, !dbg !835
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !836 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !837, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.declare(metadata ptr %3, metadata !839, metadata !DIExpression()), !dbg !842
  %4 = load ptr, ptr %2, align 8, !dbg !843
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @"_ZNKSt9_Any_data9_M_accessIZ4mainE3$_1EERKT_v"(ptr noundef nonnull align 8 dereferenceable(16) %4) #10, !dbg !844
  store ptr %5, ptr %3, align 8, !dbg !842
  %6 = load ptr, ptr %3, align 8, !dbg !845
  ret ptr %6, !dbg !846
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @"_ZSt13__invoke_implIiRZ4mainE3$_1JiiEET_St14__invoke_otherOT0_DpOT1_"(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 !dbg !847 {
  %4 = alloca %"struct.std::__invoke_other", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !851, metadata !DIExpression()), !dbg !852
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !853, metadata !DIExpression()), !dbg !854
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !855, metadata !DIExpression()), !dbg !856
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !857, metadata !DIExpression()), !dbg !856
  %8 = load ptr, ptr %5, align 8, !dbg !858
  %9 = load ptr, ptr %6, align 8, !dbg !859
  %10 = load i32, ptr %9, align 4, !dbg !860
  %11 = load ptr, ptr %7, align 8, !dbg !859
  %12 = load i32, ptr %11, align 4, !dbg !860
  %13 = call noundef i32 @"_ZZ4mainENK3$_1clEii"(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef %10, i32 noundef %12), !dbg !861
  ret i32 %13, !dbg !862
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @"_ZZ4mainENK3$_1clEii"(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1, i32 noundef %2) #0 align 2 !dbg !863 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !868, metadata !DIExpression()), !dbg !869
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !870, metadata !DIExpression()), !dbg !871
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !872, metadata !DIExpression()), !dbg !873
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4, !dbg !874
  %9 = load i32, ptr %6, align 4, !dbg !875
  %10 = add nsw i32 %8, %9, !dbg !876
  %11 = getelementptr inbounds %class.anon.0, ptr %7, i32 0, i32 0, !dbg !877
  %12 = load i32, ptr %11, align 4, !dbg !877
  %13 = mul nsw i32 %10, %12, !dbg !878
  ret i32 %13, !dbg !879
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @"_ZNKSt9_Any_data9_M_accessIZ4mainE3$_1EERKT_v"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !880 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !884, metadata !DIExpression()), !dbg !885
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNKSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10, !dbg !886
  ret ptr %4, !dbg !887
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_1EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !888 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !895, metadata !DIExpression()), !dbg !896
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10, !dbg !897
  ret ptr %4, !dbg !898
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 align 2 !dbg !899 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !900, metadata !DIExpression()), !dbg !901
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !902, metadata !DIExpression()), !dbg !903
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !904, metadata !DIExpression()), !dbg !905
  %8 = load i32, ptr %6, align 4, !dbg !906
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
  ], !dbg !907

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !dbg !908
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(ptr noundef nonnull align 8 dereferenceable(16) %10) #10, !dbg !910
  store ptr @"_ZTIZ4mainE3$_1", ptr %11, align 8, !dbg !911
  br label %23, !dbg !912

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !913
  %14 = call noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %13) #10, !dbg !914
  %15 = load ptr, ptr %4, align 8, !dbg !915
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_1EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %15) #10, !dbg !916
  store ptr %14, ptr %16, align 8, !dbg !917
  br label %23, !dbg !918

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !919
  %19 = load ptr, ptr %5, align 8, !dbg !920
  %20 = call noundef ptr @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E14_M_get_pointerERKSt9_Any_data"(ptr noundef nonnull align 8 dereferenceable(16) %19) #10, !dbg !921
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_"(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(4) %20) #10, !dbg !922
  br label %23, !dbg !923

21:                                               ; preds = %3
  %22 = load ptr, ptr %4, align 8, !dbg !924
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %22), !dbg !925
  br label %23, !dbg !926

23:                                               ; preds = %3, %21, %17, %12, %9
  ret i1 false, !dbg !927
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 align 2 personality ptr @__gxx_personality_v0 !dbg !928 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !934, metadata !DIExpression()), !dbg !935
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !936, metadata !DIExpression()), !dbg !937
  %6 = load ptr, ptr %3, align 8, !dbg !938
  %7 = load ptr, ptr %4, align 8, !dbg !939
  invoke void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %8 unwind label %9, !dbg !940

8:                                                ; preds = %2
  ret void, !dbg !941

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null, !dbg !940
  %11 = extractvalue { ptr, i32 } %10, 0, !dbg !940
  call void @__clang_call_terminate(ptr %11) #11, !dbg !940
  unreachable, !dbg !940
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !942 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !943, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.declare(metadata ptr %2, metadata !945, metadata !DIExpression()), !dbg !946
  %4 = load ptr, ptr %3, align 8, !dbg !947
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @"_ZNSt9_Any_data9_M_accessIZ4mainE3$_1EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %4) #10, !dbg !948
  ret void, !dbg !949
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 align 2 !dbg !950 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !954, metadata !DIExpression()), !dbg !955
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !956, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.declare(metadata ptr %3, metadata !958, metadata !DIExpression()), !dbg !959
  %6 = load ptr, ptr %4, align 8, !dbg !960
  %7 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10, !dbg !961
  %8 = load ptr, ptr %5, align 8, !dbg !962
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %8, i64 4, i1 false), !dbg !963
  ret void, !dbg !964
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @"_ZNSt9_Any_data9_M_accessIZ4mainE3$_1EERT_v"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !965 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !969, metadata !DIExpression()), !dbg !970
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNSt9_Any_data9_M_accessEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10, !dbg !971
  ret ptr %4, !dbg !972
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!23}
!llvm.linker.options = !{}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "function_pointer.cpp", directory: "/home/balz/Code/static_analysis/examples/function_pointer", checksumkind: CSK_MD5, checksum: "13cb219c5251139cb51b9c82a44e0e02")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 39)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 44)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 29)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 40)
!23 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !24, retainedTypes: !34, globals: !221, imports: !222, splitDebugInlining: false, nameTableKind: None)
!24 = !{!25}
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Manager_operation", scope: !27, file: !26, line: 102, baseType: !28, size: 32, elements: !29, identifier: "_ZTSSt18_Manager_operation")
!26 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/bits/std_function.h", directory: "")
!27 = !DINamespace(name: "std", scope: null)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "__get_type_info", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "__get_functor_ptr", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "__clone_functor", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "__destroy_functor", value: 3, isUnsigned: true)
!34 = !{!35, !71, !72, !74, !79, !80, !91, !92, !94, !95, !154}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tag", scope: !37, file: !36, line: 109, baseType: !62)
!36 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/bits/invoke.h", directory: "")
!37 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at function_pointer.cpp:36:22) &, int, int>", linkageName: "_ZSt10__invoke_rIiRZ4mainE3$_0JiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_", scope: !27, file: !36, line: 104, type: !38, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !56, retainedNodes: !44)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !50, !55, !55}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "enable_if_t<is_invocable_r_v<int, (lambda at function_pointer.cpp:36:22) &, int, int>, int>", scope: !27, file: !41, line: 2696, baseType: !42)
!41 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/type_traits", directory: "")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !43, file: !41, line: 134, baseType: !49)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, int>", scope: !27, file: !41, line: 133, size: 8, flags: DIFlagTypePassByValue, elements: !44, templateParams: !45, identifier: "_ZTSSt9enable_ifILb1EiE")
!44 = !{}
!45 = !{!46, !48}
!46 = !DITemplateValueParameter(type: !47, value: i1 true)
!47 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DITemplateTypeParameter(name: "_Tp", type: !49)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !52, file: !2, line: 36, size: 8, flags: DIFlagTypePassByValue, elements: !44)
!52 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 23, type: !53, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!53 = !DISubroutineType(types: !54)
!54 = !{!49}
!55 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !49, size: 64)
!56 = !{!57, !58, !59}
!57 = !DITemplateTypeParameter(name: "_Res", type: !49)
!58 = !DITemplateTypeParameter(name: "_Callable", type: !50)
!59 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !60)
!60 = !{!61, !61}
!61 = !DITemplateTypeParameter(type: !49)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__invoke_type", scope: !63, file: !41, line: 2493, baseType: !70)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__result_of_success<int, std::__invoke_other>", scope: !27, file: !41, line: 2492, size: 8, flags: DIFlagTypePassByValue, elements: !64, templateParams: !68, identifier: "_ZTSSt19__result_of_successIiSt14__invoke_otherE")
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !63, baseType: !66, extraData: i32 0)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__success_type<int>", scope: !27, file: !41, line: 2341, size: 8, flags: DIFlagTypePassByValue, elements: !44, templateParams: !67, identifier: "_ZTSSt14__success_typeIiE")
!67 = !{!48}
!68 = !{!48, !69}
!69 = !DITemplateTypeParameter(name: "_Tag", type: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__invoke_other", scope: !27, file: !41, line: 2488, size: 8, flags: DIFlagTypePassByValue, elements: !44, identifier: "_ZTSSt14__invoke_other")
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !27, file: !78, line: 91, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!78 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/typeinfo", directory: "")
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tag", scope: !81, file: !36, line: 109, baseType: !62)
!81 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at function_pointer.cpp:42:32) &, int, int>", linkageName: "_ZSt10__invoke_rIiRZ4mainE3$_1JiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_", scope: !27, file: !36, line: 104, type: !82, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !89, retainedNodes: !44)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !85, !55, !55}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "enable_if_t<is_invocable_r_v<int, (lambda at function_pointer.cpp:42:32) &, int, int>, int>", scope: !27, file: !41, line: 2696, baseType: !42)
!85 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !52, file: !2, line: 42, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "factor", scope: !86, file: !2, line: 42, baseType: !49, size: 32)
!89 = !{!57, !90, !59}
!90 = !DITemplateTypeParameter(name: "_Callable", type: !85)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Function_base", scope: !27, file: !26, line: 114, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !96, identifier: "_ZTSSt14_Function_base")
!96 = !{!97, !102, !103, !137, !144, !148, !149}
!97 = !DIDerivedType(tag: DW_TAG_variable, name: "_M_max_size", scope: !95, file: !26, line: 117, baseType: !98, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 16)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !27, file: !100, line: 310, baseType: !101)
!100 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/x86_64-linux-gnu/c++/14/bits/c++config.h", directory: "")
!101 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_variable, name: "_M_max_align", scope: !95, file: !26, line: 118, baseType: !98, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_M_functor", scope: !95, file: !26, line: 252, baseType: !104, size: 128, flags: DIFlagPublic)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Any_data", scope: !27, file: !26, line: 83, size: 128, flags: DIFlagTypePassByValue, elements: !105, identifier: "_ZTSSt9_Any_data")
!105 = !{!106, !124, !128, !132}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_M_unused", scope: !104, file: !26, line: 98, baseType: !107, size: 128)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Nocopy_types", scope: !27, file: !26, line: 75, size: 128, flags: DIFlagTypePassByValue, elements: !108, identifier: "_ZTSSt13_Nocopy_types")
!108 = !{!109, !111, !114, !118}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_M_object", scope: !107, file: !26, line: 77, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_M_const_object", scope: !107, file: !26, line: 78, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_M_function_pointer", scope: !107, file: !26, line: 79, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_M_member_pointer", scope: !107, file: !26, line: 80, baseType: !119, size: 128)
!119 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !120, size: 128, extraData: !123)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!123 = !DICompositeType(tag: DW_TAG_class_type, name: "_Undefined_class", scope: !27, file: !26, line: 73, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Undefined_class")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_M_pod_data", scope: !104, file: !26, line: 99, baseType: !125, size: 128)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DISubprogram(name: "_M_access", linkageName: "_ZNSt9_Any_data9_M_accessEv", scope: !104, file: !26, line: 85, type: !129, scopeLine: 85, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DISubroutineType(types: !130)
!130 = !{!110, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!132 = !DISubprogram(name: "_M_access", linkageName: "_ZNKSt9_Any_data9_M_accessEv", scope: !104, file: !26, line: 86, type: !133, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!133 = !DISubroutineType(types: !134)
!134 = !{!112, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_M_manager", scope: !95, file: !26, line: 253, baseType: !138, size: 64, offset: 128, flags: DIFlagPublic)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Manager_type", scope: !95, file: !26, line: 249, baseType: !139, flags: DIFlagPublic)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!47, !142, !143, !25}
!142 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !104, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !136, size: 64)
!144 = !DISubprogram(name: "_Function_base", scope: !95, file: !26, line: 239, type: !145, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!148 = !DISubprogram(name: "~_Function_base", scope: !95, file: !26, line: 241, type: !145, scopeLine: 241, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!149 = !DISubprogram(name: "_M_empty", linkageName: "_ZNKSt14_Function_base8_M_emptyEv", scope: !95, file: !26, line: 247, type: !150, scopeLine: 247, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!47, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!154 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<int (int, int)>", scope: !27, file: !26, line: 334, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !155, templateParams: !217, identifier: "_ZTSSt8functionIFiiiEE")
!155 = !{!156, !169, !170, !175, !179, !184, !189, !193, !197, !200, !203, !206, !210, !213}
!156 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !154, baseType: !157, flags: DIFlagPublic, extraData: i32 0)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Maybe_unary_or_binary_function<int, int, int>", scope: !27, file: !158, line: 70, size: 8, flags: DIFlagTypePassByValue, elements: !159, templateParams: !167, identifier: "_ZTSSt31_Maybe_unary_or_binary_functionIiJiiEE")
!158 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/bits/refwrap.h", directory: "")
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !157, baseType: !161, extraData: i32 0)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "binary_function<int, int, int>", scope: !27, file: !162, line: 131, size: 8, flags: DIFlagTypePassByValue, elements: !44, templateParams: !163, identifier: "_ZTSSt15binary_functionIiiiE")
!162 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/bits/stl_function.h", directory: "", checksumkind: CSK_MD5, checksum: "ef1b6b4ad02b6462ce918aef51a943c0")
!163 = !{!164, !165, !166}
!164 = !DITemplateTypeParameter(name: "_Arg1", type: !49)
!165 = !DITemplateTypeParameter(name: "_Arg2", type: !49)
!166 = !DITemplateTypeParameter(name: "_Result", type: !49)
!167 = !{!57, !168}
!168 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_ArgTypes", value: !60)
!169 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !154, baseType: !95, extraData: i32 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_M_invoker", scope: !154, file: !26, line: 668, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Invoker_type", scope: !154, file: !26, line: 667, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!49, !143, !55, !55}
!175 = !DISubprogram(name: "function", scope: !154, file: !26, line: 368, type: !176, scopeLine: 368, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!179 = !DISubprogram(name: "function", scope: !154, file: !26, line: 375, type: !180, scopeLine: 375, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !178, !182}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !27, file: !100, line: 314, baseType: !183)
!183 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!184 = !DISubprogram(name: "function", scope: !154, file: !26, line: 386, type: !185, scopeLine: 386, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !178, !187}
!187 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!189 = !DISubprogram(name: "function", scope: !154, file: !26, line: 404, type: !190, scopeLine: 404, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !178, !192}
!192 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !154, size: 64)
!193 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8functionIFiiiEEaSERKS1_", scope: !154, file: !26, line: 469, type: !194, scopeLine: 469, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !178, !187}
!196 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !154, size: 64)
!197 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8functionIFiiiEEaSEOS1_", scope: !154, file: !26, line: 487, type: !198, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!196, !178, !192}
!200 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8functionIFiiiEEaSEDn", scope: !154, file: !26, line: 501, type: !201, scopeLine: 501, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!196, !178, !182}
!203 = !DISubprogram(name: "swap", linkageName: "_ZNSt8functionIFiiiEE4swapERS1_", scope: !154, file: !26, line: 556, type: !204, scopeLine: 556, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !178, !196}
!206 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt8functionIFiiiEEcvbEv", scope: !154, file: !26, line: 573, type: !207, scopeLine: 573, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{!47, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!210 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt8functionIFiiiEEclEii", scope: !154, file: !26, line: 587, type: !211, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{!49, !209, !49, !49}
!213 = !DISubprogram(name: "target_type", linkageName: "_ZNKSt8functionIFiiiEE11target_typeEv", scope: !154, file: !26, line: 606, type: !214, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !209}
!216 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !76, size: 64)
!217 = !{!218}
!218 = !DITemplateTypeParameter(name: "_Signature", type: !219)
!219 = !DISubroutineType(types: !220)
!220 = !{!49, !49, !49}
!221 = !{!0, !8, !13, !18}
!222 = !{!223, !227}
!223 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !224, entity: !225, file: !226, line: 58)
!224 = !DINamespace(name: "__gnu_debug", scope: null)
!225 = !DINamespace(name: "__debug", scope: !27)
!226 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "0a57c7893084ad84a6659d59c4b881dd")
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !27, entity: !228, file: !236, line: 61)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !229, line: 24, baseType: !230)
!229 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_max_align_t.h", directory: "", checksumkind: CSK_MD5, checksum: "3c0a2f19d136d39aa835c737c7105def")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !229, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !231, identifier: "_ZTS11max_align_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !230, file: !229, line: 20, baseType: !233, size: 64, align: 64)
!233 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !230, file: !229, line: 22, baseType: !235, size: 128, align: 128, offset: 128)
!235 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!236 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cstddef", directory: "")
!237 = !{i32 7, !"Dwarf Version", i32 5}
!238 = !{i32 2, !"Debug Info Version", i32 3}
!239 = !{i32 1, !"wchar_size", i32 4}
!240 = !{i32 8, !"PIC Level", i32 2}
!241 = !{i32 7, !"PIE Level", i32 2}
!242 = !{i32 7, !"uwtable", i32 2}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!245 = distinct !DISubprogram(name: "add", linkageName: "_Z3addii", scope: !2, file: !2, line: 5, type: !219, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!246 = !DILocalVariable(name: "a", arg: 1, scope: !245, file: !2, line: 5, type: !49)
!247 = !DILocation(line: 5, column: 13, scope: !245)
!248 = !DILocalVariable(name: "b", arg: 2, scope: !245, file: !2, line: 5, type: !49)
!249 = !DILocation(line: 5, column: 20, scope: !245)
!250 = !DILocation(line: 6, column: 12, scope: !245)
!251 = !DILocation(line: 6, column: 16, scope: !245)
!252 = !DILocation(line: 6, column: 14, scope: !245)
!253 = !DILocation(line: 6, column: 5, scope: !245)
!254 = distinct !DISubprogram(name: "multiply", linkageName: "_Z8multiplyii", scope: !2, file: !2, line: 9, type: !219, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!255 = !DILocalVariable(name: "a", arg: 1, scope: !254, file: !2, line: 9, type: !49)
!256 = !DILocation(line: 9, column: 18, scope: !254)
!257 = !DILocalVariable(name: "b", arg: 2, scope: !254, file: !2, line: 9, type: !49)
!258 = !DILocation(line: 9, column: 25, scope: !254)
!259 = !DILocation(line: 10, column: 12, scope: !254)
!260 = !DILocation(line: 10, column: 16, scope: !254)
!261 = !DILocation(line: 10, column: 14, scope: !254)
!262 = !DILocation(line: 10, column: 5, scope: !254)
!263 = distinct !DISubprogram(name: "apply_operation", linkageName: "_Z15apply_operationiiPFiiiE", scope: !2, file: !2, line: 14, type: !264, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!264 = !DISubroutineType(types: !265)
!265 = !{!49, !49, !49, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!267 = !DILocalVariable(name: "x", arg: 1, scope: !263, file: !2, line: 14, type: !49)
!268 = !DILocation(line: 14, column: 25, scope: !263)
!269 = !DILocalVariable(name: "y", arg: 2, scope: !263, file: !2, line: 14, type: !49)
!270 = !DILocation(line: 14, column: 32, scope: !263)
!271 = !DILocalVariable(name: "op", arg: 3, scope: !263, file: !2, line: 14, type: !266)
!272 = !DILocation(line: 14, column: 41, scope: !263)
!273 = !DILocation(line: 15, column: 12, scope: !263)
!274 = !DILocation(line: 15, column: 15, scope: !263)
!275 = !DILocation(line: 15, column: 18, scope: !263)
!276 = !DILocation(line: 15, column: 5, scope: !263)
!277 = distinct !DISubprogram(name: "call_function", linkageName: "_Z13call_functioniiSt8functionIFiiiEE", scope: !2, file: !2, line: 19, type: !278, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!278 = !DISubroutineType(types: !279)
!279 = !{!49, !49, !49, !154}
!280 = !DILocalVariable(name: "x", arg: 1, scope: !277, file: !2, line: 19, type: !49)
!281 = !DILocation(line: 19, column: 23, scope: !277)
!282 = !DILocalVariable(name: "y", arg: 2, scope: !277, file: !2, line: 19, type: !49)
!283 = !DILocation(line: 19, column: 30, scope: !277)
!284 = !DILocalVariable(name: "func", arg: 3, scope: !277, file: !2, line: 19, type: !154)
!285 = !DILocation(line: 19, column: 62, scope: !277)
!286 = !DILocation(line: 20, column: 17, scope: !277)
!287 = !DILocation(line: 20, column: 20, scope: !277)
!288 = !DILocation(line: 20, column: 12, scope: !277)
!289 = !DILocation(line: 20, column: 5, scope: !277)
!290 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt8functionIFiiiEEclEii", scope: !154, file: !26, line: 587, type: !211, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, declaration: !210, retainedNodes: !44)
!291 = !DILocalVariable(name: "this", arg: 1, scope: !290, type: !292, flags: DIFlagArtificial | DIFlagObjectPointer)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!293 = !DILocation(line: 0, scope: !290)
!294 = !DILocalVariable(name: "__args", arg: 2, scope: !290, file: !26, line: 587, type: !49)
!295 = !DILocation(line: 587, column: 31, scope: !290)
!296 = !DILocalVariable(name: "__args", arg: 3, scope: !290, file: !26, line: 587, type: !49)
!297 = !DILocation(line: 589, column: 6, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !26, line: 589, column: 6)
!299 = !DILocation(line: 589, column: 6, scope: !290)
!300 = !DILocation(line: 590, column: 4, scope: !298)
!301 = !DILocation(line: 591, column: 9, scope: !290)
!302 = !DILocation(line: 591, column: 20, scope: !290)
!303 = !DILocation(line: 591, column: 2, scope: !290)
!304 = !DILocalVariable(name: "x", scope: !52, file: !2, line: 24, type: !49)
!305 = !DILocation(line: 24, column: 9, scope: !52)
!306 = !DILocalVariable(name: "y", scope: !52, file: !2, line: 24, type: !49)
!307 = !DILocation(line: 24, column: 16, scope: !52)
!308 = !DILocalVariable(name: "fn_ptr", scope: !52, file: !2, line: 27, type: !266)
!309 = !DILocation(line: 27, column: 11, scope: !52)
!310 = !DILocalVariable(name: "result1", scope: !52, file: !2, line: 28, type: !49)
!311 = !DILocation(line: 28, column: 9, scope: !52)
!312 = !DILocation(line: 28, column: 35, scope: !52)
!313 = !DILocation(line: 28, column: 38, scope: !52)
!314 = !DILocation(line: 28, column: 41, scope: !52)
!315 = !DILocation(line: 28, column: 19, scope: !52)
!316 = !DILocation(line: 29, column: 55, scope: !52)
!317 = !DILocation(line: 29, column: 5, scope: !52)
!318 = !DILocalVariable(name: "result2", scope: !52, file: !2, line: 32, type: !49)
!319 = !DILocation(line: 32, column: 9, scope: !52)
!320 = !DILocation(line: 32, column: 35, scope: !52)
!321 = !DILocation(line: 32, column: 38, scope: !52)
!322 = !DILocation(line: 32, column: 19, scope: !52)
!323 = !DILocation(line: 33, column: 60, scope: !52)
!324 = !DILocation(line: 33, column: 5, scope: !52)
!325 = !DILocalVariable(name: "lambda_op", scope: !52, file: !2, line: 36, type: !51)
!326 = !DILocation(line: 36, column: 10, scope: !52)
!327 = !DILocalVariable(name: "result3", scope: !52, file: !2, line: 37, type: !49)
!328 = !DILocation(line: 37, column: 9, scope: !52)
!329 = !DILocation(line: 37, column: 33, scope: !52)
!330 = !DILocation(line: 37, column: 36, scope: !52)
!331 = !DILocation(line: 37, column: 39, scope: !52)
!332 = !DILocation(line: 37, column: 19, scope: !52)
!333 = !DILocation(line: 38, column: 45, scope: !52)
!334 = !DILocation(line: 38, column: 5, scope: !52)
!335 = !DILocalVariable(name: "factor", scope: !52, file: !2, line: 41, type: !49)
!336 = !DILocation(line: 41, column: 9, scope: !52)
!337 = !DILocalVariable(name: "lambda_with_capture", scope: !52, file: !2, line: 42, type: !86)
!338 = !DILocation(line: 42, column: 10, scope: !52)
!339 = !DILocation(line: 42, column: 32, scope: !52)
!340 = !DILocation(line: 42, column: 33, scope: !52)
!341 = !DILocalVariable(name: "result4", scope: !52, file: !2, line: 43, type: !49)
!342 = !DILocation(line: 43, column: 9, scope: !52)
!343 = !DILocation(line: 43, column: 33, scope: !52)
!344 = !DILocation(line: 43, column: 36, scope: !52)
!345 = !DILocation(line: 43, column: 39, scope: !52)
!346 = !DILocation(line: 43, column: 19, scope: !52)
!347 = !DILocation(line: 44, column: 56, scope: !52)
!348 = !DILocation(line: 44, column: 5, scope: !52)
!349 = !DILocation(line: 46, column: 5, scope: !52)
!350 = !DILocation(line: 47, column: 1, scope: !52)
!351 = distinct !DISubprogram(name: "function<(lambda at function_pointer.cpp:36:22) &, void>", linkageName: "_ZNSt8functionIFiiiEEC2IRZ4mainE3$_0vEEOT_", scope: !154, file: !26, line: 435, type: !352, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !355, declaration: !354, retainedNodes: !44)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !178, !50}
!354 = !DISubprogram(name: "function<(lambda at function_pointer.cpp:36:22) &, void>", scope: !154, file: !26, line: 435, type: !352, scopeLine: 435, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !355)
!355 = !{!356, !357}
!356 = !DITemplateTypeParameter(name: "_Functor", type: !50)
!357 = !DITemplateTypeParameter(name: "_Constraints", type: null)
!358 = !DILocalVariable(name: "this", arg: 1, scope: !351, type: !359, flags: DIFlagArtificial | DIFlagObjectPointer)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!360 = !DILocation(line: 0, scope: !351)
!361 = !DILocalVariable(name: "__f", arg: 2, scope: !351, file: !26, line: 435, type: !50)
!362 = !DILocation(line: 435, column: 22, scope: !351)
!363 = !DILocation(line: 437, column: 4, scope: !351)
!364 = !DILocation(line: 668, column: 21, scope: !351)
!365 = !DILocation(line: 447, column: 43, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !26, line: 447, column: 8)
!367 = distinct !DILexicalBlock(scope: !351, file: !26, line: 438, column: 2)
!368 = !DILocation(line: 447, column: 8, scope: !366)
!369 = !DILocation(line: 447, column: 8, scope: !367)
!370 = !DILocation(line: 449, column: 37, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !26, line: 448, column: 6)
!372 = !DILocation(line: 450, column: 32, scope: !371)
!373 = !DILocation(line: 449, column: 8, scope: !371)
!374 = !DILocation(line: 451, column: 8, scope: !371)
!375 = !DILocation(line: 451, column: 19, scope: !371)
!376 = !DILocation(line: 452, column: 8, scope: !371)
!377 = !DILocation(line: 452, column: 19, scope: !371)
!378 = !DILocation(line: 453, column: 6, scope: !371)
!379 = !DILocation(line: 454, column: 2, scope: !351)
!380 = distinct !DISubprogram(name: "~function", linkageName: "_ZNSt8functionIFiiiEED2Ev", scope: !154, file: !26, line: 111, type: !176, scopeLine: 111, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, declaration: !381, retainedNodes: !44)
!381 = !DISubprogram(name: "~function", scope: !154, type: !176, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!382 = !DILocalVariable(name: "this", arg: 1, scope: !380, type: !359, flags: DIFlagArtificial | DIFlagObjectPointer)
!383 = !DILocation(line: 0, scope: !380)
!384 = !DILocation(line: 111, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !26, line: 111, column: 11)
!386 = !DILocation(line: 111, column: 11, scope: !380)
!387 = distinct !DISubprogram(name: "function<(lambda at function_pointer.cpp:42:32) &, void>", linkageName: "_ZNSt8functionIFiiiEEC2IRZ4mainE3$_1vEEOT_", scope: !154, file: !26, line: 435, type: !388, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !391, declaration: !390, retainedNodes: !44)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !178, !85}
!390 = !DISubprogram(name: "function<(lambda at function_pointer.cpp:42:32) &, void>", scope: !154, file: !26, line: 435, type: !388, scopeLine: 435, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !391)
!391 = !{!392, !357}
!392 = !DITemplateTypeParameter(name: "_Functor", type: !85)
!393 = !DILocalVariable(name: "this", arg: 1, scope: !387, type: !359, flags: DIFlagArtificial | DIFlagObjectPointer)
!394 = !DILocation(line: 0, scope: !387)
!395 = !DILocalVariable(name: "__f", arg: 2, scope: !387, file: !26, line: 435, type: !85)
!396 = !DILocation(line: 435, column: 22, scope: !387)
!397 = !DILocation(line: 437, column: 4, scope: !387)
!398 = !DILocation(line: 668, column: 21, scope: !387)
!399 = !DILocation(line: 447, column: 43, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !26, line: 447, column: 8)
!401 = distinct !DILexicalBlock(scope: !387, file: !26, line: 438, column: 2)
!402 = !DILocation(line: 447, column: 8, scope: !400)
!403 = !DILocation(line: 447, column: 8, scope: !401)
!404 = !DILocation(line: 449, column: 37, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !26, line: 448, column: 6)
!406 = !DILocation(line: 450, column: 32, scope: !405)
!407 = !DILocation(line: 449, column: 8, scope: !405)
!408 = !DILocation(line: 451, column: 8, scope: !405)
!409 = !DILocation(line: 451, column: 19, scope: !405)
!410 = !DILocation(line: 452, column: 8, scope: !405)
!411 = !DILocation(line: 452, column: 19, scope: !405)
!412 = !DILocation(line: 453, column: 6, scope: !405)
!413 = !DILocation(line: 454, column: 2, scope: !387)
!414 = distinct !DISubprogram(name: "~_Function_base", linkageName: "_ZNSt14_Function_baseD2Ev", scope: !95, file: !26, line: 241, type: !145, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, declaration: !148, retainedNodes: !44)
!415 = !DILocalVariable(name: "this", arg: 1, scope: !414, type: !416, flags: DIFlagArtificial | DIFlagObjectPointer)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!417 = !DILocation(line: 0, scope: !414)
!418 = !DILocation(line: 243, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !26, line: 243, column: 11)
!420 = distinct !DILexicalBlock(scope: !414, file: !26, line: 242, column: 5)
!421 = !DILocation(line: 243, column: 11, scope: !420)
!422 = !DILocation(line: 244, column: 2, scope: !419)
!423 = !DILocation(line: 244, column: 13, scope: !419)
!424 = !DILocation(line: 244, column: 25, scope: !419)
!425 = !DILocation(line: 245, column: 5, scope: !414)
!426 = distinct !DISubprogram(name: "_M_empty", linkageName: "_ZNKSt14_Function_base8_M_emptyEv", scope: !95, file: !26, line: 247, type: !150, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, declaration: !149, retainedNodes: !44)
!427 = !DILocalVariable(name: "this", arg: 1, scope: !426, type: !428, flags: DIFlagArtificial | DIFlagObjectPointer)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!429 = !DILocation(line: 0, scope: !426)
!430 = !DILocation(line: 247, column: 37, scope: !426)
!431 = !DILocation(line: 247, column: 36, scope: !426)
!432 = !DILocation(line: 247, column: 29, scope: !426)
!433 = distinct !DISubprogram(name: "_Function_base", linkageName: "_ZNSt14_Function_baseC2Ev", scope: !95, file: !26, line: 239, type: !145, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, declaration: !144, retainedNodes: !44)
!434 = !DILocalVariable(name: "this", arg: 1, scope: !433, type: !416, flags: DIFlagArtificial | DIFlagObjectPointer)
!435 = !DILocation(line: 0, scope: !433)
!436 = !DILocation(line: 252, column: 19, scope: !433)
!437 = !DILocation(line: 252, column: 30, scope: !433)
!438 = !DILocation(line: 253, column: 19, scope: !433)
!439 = !DILocation(line: 239, column: 30, scope: !433)
!440 = distinct !DISubprogram(name: "_M_not_empty_function<(lambda at function_pointer.cpp:36:22)>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E21_M_not_empty_functionIS1_EEbRKT_", scope: !441, file: !26, line: 235, type: !486, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !490, declaration: !489, retainedNodes: !44)
!441 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Base_manager<(lambda at function_pointer.cpp:36:22)>", scope: !95, file: !26, line: 121, size: 8, flags: DIFlagTypePassByValue, elements: !442, templateParams: !484)
!442 = !{!443, !445, !448, !466, !483}
!443 = !DIDerivedType(tag: DW_TAG_variable, name: "__stored_locally", scope: !441, file: !26, line: 124, baseType: !444, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!445 = !DISubprogram(name: "_M_get_pointer", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data", scope: !441, file: !26, line: 134, type: !446, scopeLine: 134, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!446 = !DISubroutineType(types: !447)
!447 = !{!71, !143}
!448 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE", scope: !441, file: !26, line: 166, type: !449, scopeLine: 166, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !142, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !27, file: !41, line: 111, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<true>", scope: !27, file: !41, line: 107, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !27, file: !41, line: 87, size: 8, flags: DIFlagTypePassByValue, elements: !454, templateParams: !463, identifier: "_ZTSSt17integral_constantIbLb1EE")
!454 = !{!455, !456, !462}
!455 = !DIDerivedType(tag: DW_TAG_variable, name: "value", scope: !453, file: !41, line: 89, baseType: !444, flags: DIFlagStaticMember, extraData: i1 true)
!456 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !453, file: !41, line: 92, type: !457, scopeLine: 92, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !453, file: !41, line: 90, baseType: !47)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!462 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb1EEclEv", scope: !453, file: !41, line: 95, type: !457, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!463 = !{!464, !465}
!464 = !DITemplateTypeParameter(name: "_Tp", type: !47)
!465 = !DITemplateValueParameter(name: "__v", type: !47, value: i1 true)
!466 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE", scope: !441, file: !26, line: 173, type: !467, scopeLine: 173, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !142, !469}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !27, file: !41, line: 114, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<false>", scope: !27, file: !41, line: 107, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !27, file: !41, line: 87, size: 8, flags: DIFlagTypePassByValue, elements: !472, templateParams: !481, identifier: "_ZTSSt17integral_constantIbLb0EE")
!472 = !{!473, !474, !480}
!473 = !DIDerivedType(tag: DW_TAG_variable, name: "value", scope: !471, file: !41, line: 89, baseType: !444, flags: DIFlagStaticMember, extraData: i1 false)
!474 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !471, file: !41, line: 92, type: !475, scopeLine: 92, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !471, file: !41, line: 90, baseType: !47)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!480 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb0EEclEv", scope: !471, file: !41, line: 95, type: !475, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!481 = !{!464, !482}
!482 = !DITemplateValueParameter(name: "__v", type: !47, value: i1 false)
!483 = !DISubprogram(name: "_M_manager", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", scope: !441, file: !26, line: 180, type: !140, scopeLine: 180, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!484 = !{!485}
!485 = !DITemplateTypeParameter(name: "_Functor", type: !51)
!486 = !DISubroutineType(types: !487)
!487 = !{!47, !488}
!488 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 64)
!489 = !DISubprogram(name: "_M_not_empty_function<(lambda at function_pointer.cpp:36:22)>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E21_M_not_empty_functionIS1_EEbRKT_", scope: !441, file: !26, line: 235, type: !486, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !490)
!490 = !{!491}
!491 = !DITemplateTypeParameter(name: "_Tp", type: !51)
!492 = !DILocalVariable(arg: 1, scope: !440, file: !26, line: 235, type: !488)
!493 = !DILocation(line: 235, column: 36, scope: !440)
!494 = !DILocation(line: 236, column: 6, scope: !440)
!495 = distinct !DISubprogram(name: "_M_init_functor<(lambda at function_pointer.cpp:36:22) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRS1_EEvRSt9_Any_dataOT_", scope: !441, file: !26, line: 211, type: !496, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !499, declaration: !498, retainedNodes: !44)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !142, !50}
!498 = !DISubprogram(name: "_M_init_functor<(lambda at function_pointer.cpp:36:22) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRS1_EEvRSt9_Any_dataOT_", scope: !441, file: !26, line: 211, type: !496, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !499)
!499 = !{!500}
!500 = !DITemplateTypeParameter(name: "_Fn", type: !50)
!501 = !DILocalVariable(name: "__functor", arg: 1, scope: !495, file: !26, line: 211, type: !142)
!502 = !DILocation(line: 211, column: 31, scope: !495)
!503 = !DILocalVariable(name: "__f", arg: 2, scope: !495, file: !26, line: 211, type: !50)
!504 = !DILocation(line: 211, column: 48, scope: !495)
!505 = !DILocation(line: 215, column: 16, scope: !495)
!506 = !DILocation(line: 215, column: 45, scope: !495)
!507 = !DILocation(line: 215, column: 6, scope: !495)
!508 = !DILocation(line: 216, column: 4, scope: !495)
!509 = distinct !DISubprogram(name: "_M_invoke", linkageName: "_ZNSt17_Function_handlerIFiiiEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOiS6_", scope: !510, file: !26, line: 288, type: !173, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !514, retainedNodes: !44)
!510 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Function_handler<int (int, int), (lambda at function_pointer.cpp:36:22)>", scope: !27, file: !26, line: 260, size: 8, flags: DIFlagTypePassByValue, elements: !511, templateParams: !515)
!511 = !{!512, !513, !514}
!512 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !510, baseType: !441, flags: DIFlagPublic, extraData: i32 0)
!513 = !DISubprogram(name: "_M_manager", linkageName: "_ZNSt17_Function_handlerIFiiiEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", scope: !510, file: !26, line: 267, type: !140, scopeLine: 267, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!514 = !DISubprogram(name: "_M_invoke", linkageName: "_ZNSt17_Function_handlerIFiiiEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOiS6_", scope: !510, file: !26, line: 288, type: !173, scopeLine: 288, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!515 = !{!218, !485}
!516 = !DILocalVariable(name: "__functor", arg: 1, scope: !509, file: !26, line: 288, type: !143)
!517 = !DILocation(line: 288, column: 34, scope: !509)
!518 = !DILocalVariable(name: "__args", arg: 2, scope: !509, file: !26, line: 288, type: !55)
!519 = !DILocation(line: 288, column: 60, scope: !509)
!520 = !DILocalVariable(name: "__args", arg: 3, scope: !509, file: !26, line: 288, type: !55)
!521 = !DILocation(line: 290, column: 54, scope: !509)
!522 = !DILocation(line: 290, column: 32, scope: !509)
!523 = !DILocation(line: 291, column: 34, scope: !509)
!524 = !DILocation(line: 290, column: 9, scope: !509)
!525 = !DILocation(line: 290, column: 2, scope: !509)
!526 = distinct !DISubprogram(name: "_M_manager", linkageName: "_ZNSt17_Function_handlerIFiiiEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", scope: !510, file: !26, line: 267, type: !140, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !513, retainedNodes: !44)
!527 = !DILocalVariable(name: "__dest", arg: 1, scope: !526, file: !26, line: 267, type: !142)
!528 = !DILocation(line: 267, column: 29, scope: !526)
!529 = !DILocalVariable(name: "__source", arg: 2, scope: !526, file: !26, line: 267, type: !143)
!530 = !DILocation(line: 267, column: 54, scope: !526)
!531 = !DILocalVariable(name: "__op", arg: 3, scope: !526, file: !26, line: 268, type: !25)
!532 = !DILocation(line: 268, column: 23, scope: !526)
!533 = !DILocation(line: 270, column: 10, scope: !526)
!534 = !DILocation(line: 270, column: 2, scope: !526)
!535 = !DILocation(line: 274, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !526, file: !26, line: 271, column: 4)
!537 = !DILocation(line: 274, column: 13, scope: !536)
!538 = !DILocation(line: 274, column: 43, scope: !536)
!539 = !DILocation(line: 275, column: 6, scope: !536)
!540 = !DILocation(line: 278, column: 60, scope: !536)
!541 = !DILocation(line: 278, column: 38, scope: !536)
!542 = !DILocation(line: 278, column: 6, scope: !536)
!543 = !DILocation(line: 278, column: 13, scope: !536)
!544 = !DILocation(line: 278, column: 36, scope: !536)
!545 = !DILocation(line: 279, column: 6, scope: !536)
!546 = !DILocation(line: 282, column: 24, scope: !536)
!547 = !DILocation(line: 282, column: 32, scope: !536)
!548 = !DILocation(line: 282, column: 42, scope: !536)
!549 = !DILocation(line: 282, column: 6, scope: !536)
!550 = !DILocation(line: 283, column: 4, scope: !536)
!551 = !DILocation(line: 284, column: 2, scope: !526)
!552 = distinct !DISubprogram(name: "_M_create<(lambda at function_pointer.cpp:36:22) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE", scope: !441, file: !26, line: 150, type: !553, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !499, declaration: !555, retainedNodes: !44)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !142, !50, !451}
!555 = !DISubprogram(name: "_M_create<(lambda at function_pointer.cpp:36:22) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE", scope: !441, file: !26, line: 150, type: !553, scopeLine: 150, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !499)
!556 = !DILocalVariable(name: "__dest", arg: 1, scope: !552, file: !26, line: 150, type: !142)
!557 = !DILocation(line: 150, column: 25, scope: !552)
!558 = !DILocalVariable(name: "__f", arg: 2, scope: !552, file: !26, line: 150, type: !50)
!559 = !DILocation(line: 150, column: 39, scope: !552)
!560 = !DILocalVariable(arg: 3, scope: !552, file: !26, line: 150, type: !451)
!561 = !DILocation(line: 150, column: 53, scope: !552)
!562 = !DILocation(line: 152, column: 13, scope: !552)
!563 = !DILocation(line: 152, column: 20, scope: !552)
!564 = !DILocation(line: 152, column: 60, scope: !552)
!565 = !DILocation(line: 153, column: 4, scope: !552)
!566 = distinct !DISubprogram(name: "_M_access", linkageName: "_ZNSt9_Any_data9_M_accessEv", scope: !104, file: !26, line: 85, type: !129, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, declaration: !128, retainedNodes: !44)
!567 = !DILocalVariable(name: "this", arg: 1, scope: !566, type: !568, flags: DIFlagArtificial | DIFlagObjectPointer)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!569 = !DILocation(line: 0, scope: !566)
!570 = !DILocation(line: 85, column: 54, scope: !566)
!571 = !DILocation(line: 85, column: 46, scope: !566)
!572 = !DILocalVariable(name: "__fn", arg: 1, scope: !37, file: !36, line: 104, type: !50)
!573 = !DILocation(line: 104, column: 28, scope: !37)
!574 = !DILocalVariable(name: "__args", arg: 2, scope: !37, file: !36, line: 104, type: !55)
!575 = !DILocation(line: 104, column: 45, scope: !37)
!576 = !DILocalVariable(name: "__args", arg: 3, scope: !37, file: !36, line: 104, type: !55)
!577 = !DILocation(line: 115, column: 32, scope: !578)
!578 = distinct !DILexicalBlock(scope: !37, file: !36, line: 110, column: 21)
!579 = !DILocation(line: 116, column: 28, scope: !578)
!580 = !DILocation(line: 114, column: 9, scope: !578)
!581 = !DILocation(line: 114, column: 2, scope: !578)
!582 = distinct !DISubprogram(name: "_M_get_pointer", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data", scope: !441, file: !26, line: 134, type: !446, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !445, retainedNodes: !44)
!583 = !DILocalVariable(name: "__source", arg: 1, scope: !582, file: !26, line: 134, type: !143)
!584 = !DILocation(line: 134, column: 34, scope: !582)
!585 = !DILocalVariable(name: "__f", scope: !586, file: !26, line: 138, type: !488)
!586 = distinct !DILexicalBlock(scope: !587, file: !26, line: 137, column: 6)
!587 = distinct !DILexicalBlock(scope: !582, file: !26, line: 136, column: 29)
!588 = !DILocation(line: 138, column: 24, scope: !586)
!589 = !DILocation(line: 138, column: 30, scope: !586)
!590 = !DILocation(line: 138, column: 39, scope: !586)
!591 = !DILocation(line: 139, column: 54, scope: !586)
!592 = !DILocation(line: 139, column: 8, scope: !586)
!593 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at function_pointer.cpp:36:22) &, int, int>", linkageName: "_ZSt13__invoke_implIiRZ4mainE3$_0JiiEET_St14__invoke_otherOT0_DpOT1_", scope: !27, file: !36, line: 60, type: !594, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !596, retainedNodes: !44)
!594 = !DISubroutineType(types: !595)
!595 = !{!49, !70, !50, !55, !55}
!596 = !{!57, !500, !59}
!597 = !DILocalVariable(arg: 1, scope: !593, file: !36, line: 60, type: !70)
!598 = !DILocation(line: 60, column: 33, scope: !593)
!599 = !DILocalVariable(name: "__f", arg: 2, scope: !593, file: !36, line: 60, type: !50)
!600 = !DILocation(line: 60, column: 41, scope: !593)
!601 = !DILocalVariable(name: "__args", arg: 3, scope: !593, file: !36, line: 60, type: !55)
!602 = !DILocation(line: 60, column: 57, scope: !593)
!603 = !DILocalVariable(name: "__args", arg: 4, scope: !593, file: !36, line: 60, type: !55)
!604 = !DILocation(line: 61, column: 32, scope: !593)
!605 = !DILocation(line: 61, column: 57, scope: !593)
!606 = !DILocation(line: 61, column: 37, scope: !593)
!607 = !DILocation(line: 61, column: 14, scope: !593)
!608 = !DILocation(line: 61, column: 7, scope: !593)
!609 = distinct !DISubprogram(name: "operator()", linkageName: "_ZZ4mainENK3$_0clEii", scope: !51, file: !2, line: 36, type: !610, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !613, retainedNodes: !44)
!610 = !DISubroutineType(types: !611)
!611 = !{!49, !612, !49, !49}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!613 = !DISubprogram(name: "operator()", scope: !51, file: !2, line: 36, type: !610, scopeLine: 36, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!614 = !DILocalVariable(name: "this", arg: 1, scope: !609, type: !72, flags: DIFlagArtificial | DIFlagObjectPointer)
!615 = !DILocation(line: 0, scope: !609)
!616 = !DILocalVariable(name: "a", arg: 2, scope: !609, file: !2, line: 36, type: !49)
!617 = !DILocation(line: 36, column: 29, scope: !609)
!618 = !DILocalVariable(name: "b", arg: 3, scope: !609, file: !2, line: 36, type: !49)
!619 = !DILocation(line: 36, column: 36, scope: !609)
!620 = !DILocation(line: 36, column: 48, scope: !609)
!621 = !DILocation(line: 36, column: 52, scope: !609)
!622 = !DILocation(line: 36, column: 50, scope: !609)
!623 = !DILocation(line: 36, column: 41, scope: !609)
!624 = distinct !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:36:22)>", linkageName: "_ZNKSt9_Any_data9_M_accessIZ4mainE3$_0EERKT_v", scope: !104, file: !26, line: 95, type: !625, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !490, declaration: !627, retainedNodes: !44)
!625 = !DISubroutineType(types: !626)
!626 = !{!488, !135}
!627 = !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:36:22)>", linkageName: "_ZNKSt9_Any_data9_M_accessIZ4mainE3$_0EERKT_v", scope: !104, file: !26, line: 95, type: !625, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !490)
!628 = !DILocalVariable(name: "this", arg: 1, scope: !624, type: !629, flags: DIFlagArtificial | DIFlagObjectPointer)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!630 = !DILocation(line: 0, scope: !624)
!631 = !DILocation(line: 96, column: 41, scope: !624)
!632 = !DILocation(line: 96, column: 9, scope: !624)
!633 = distinct !DISubprogram(name: "_M_access", linkageName: "_ZNKSt9_Any_data9_M_accessEv", scope: !104, file: !26, line: 86, type: !133, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, declaration: !132, retainedNodes: !44)
!634 = !DILocalVariable(name: "this", arg: 1, scope: !633, type: !629, flags: DIFlagArtificial | DIFlagObjectPointer)
!635 = !DILocation(line: 0, scope: !633)
!636 = !DILocation(line: 86, column: 54, scope: !633)
!637 = !DILocation(line: 86, column: 46, scope: !633)
!638 = distinct !DISubprogram(name: "_M_access<const std::type_info *>", linkageName: "_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v", scope: !104, file: !26, line: 90, type: !639, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, templateParams: !643, declaration: !642, retainedNodes: !44)
!639 = !DISubroutineType(types: !640)
!640 = !{!641, !131}
!641 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !75, size: 64)
!642 = !DISubprogram(name: "_M_access<const std::type_info *>", linkageName: "_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v", scope: !104, file: !26, line: 90, type: !639, scopeLine: 90, flags: DIFlagPrototyped, spFlags: 0, templateParams: !643)
!643 = !{!644}
!644 = !DITemplateTypeParameter(name: "_Tp", type: !75)
!645 = !DILocalVariable(name: "this", arg: 1, scope: !638, type: !568, flags: DIFlagArtificial | DIFlagObjectPointer)
!646 = !DILocation(line: 0, scope: !638)
!647 = !DILocation(line: 91, column: 35, scope: !638)
!648 = !DILocation(line: 91, column: 9, scope: !638)
!649 = distinct !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:36:22) *>", linkageName: "_ZNSt9_Any_data9_M_accessIPZ4mainE3$_0EERT_v", scope: !104, file: !26, line: 90, type: !650, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !654, declaration: !653, retainedNodes: !44)
!650 = !DISubroutineType(types: !651)
!651 = !{!652, !131}
!652 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !71, size: 64)
!653 = !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:36:22) *>", linkageName: "_ZNSt9_Any_data9_M_accessIPZ4mainE3$_0EERT_v", scope: !104, file: !26, line: 90, type: !650, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !654)
!654 = !{!655}
!655 = !DITemplateTypeParameter(name: "_Tp", type: !71)
!656 = !DILocalVariable(name: "this", arg: 1, scope: !649, type: !568, flags: DIFlagArtificial | DIFlagObjectPointer)
!657 = !DILocation(line: 0, scope: !649)
!658 = !DILocation(line: 91, column: 35, scope: !649)
!659 = !DILocation(line: 91, column: 9, scope: !649)
!660 = distinct !DISubprogram(name: "_M_manager", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", scope: !441, file: !26, line: 180, type: !140, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !483, retainedNodes: !44)
!661 = !DILocalVariable(name: "__dest", arg: 1, scope: !660, file: !26, line: 180, type: !142)
!662 = !DILocation(line: 180, column: 24, scope: !660)
!663 = !DILocalVariable(name: "__source", arg: 2, scope: !660, file: !26, line: 180, type: !143)
!664 = !DILocation(line: 180, column: 49, scope: !660)
!665 = !DILocalVariable(name: "__op", arg: 3, scope: !660, file: !26, line: 181, type: !25)
!666 = !DILocation(line: 181, column: 25, scope: !660)
!667 = !DILocation(line: 183, column: 12, scope: !660)
!668 = !DILocation(line: 183, column: 4, scope: !660)
!669 = !DILocation(line: 187, column: 8, scope: !670)
!670 = distinct !DILexicalBlock(scope: !660, file: !26, line: 184, column: 6)
!671 = !DILocation(line: 187, column: 15, scope: !670)
!672 = !DILocation(line: 187, column: 45, scope: !670)
!673 = !DILocation(line: 191, column: 8, scope: !670)
!674 = !DILocation(line: 194, column: 55, scope: !670)
!675 = !DILocation(line: 194, column: 40, scope: !670)
!676 = !DILocation(line: 194, column: 8, scope: !670)
!677 = !DILocation(line: 194, column: 15, scope: !670)
!678 = !DILocation(line: 194, column: 38, scope: !670)
!679 = !DILocation(line: 195, column: 8, scope: !670)
!680 = !DILocation(line: 198, column: 24, scope: !670)
!681 = !DILocation(line: 199, column: 49, scope: !670)
!682 = !DILocation(line: 199, column: 34, scope: !670)
!683 = !DILocation(line: 198, column: 8, scope: !670)
!684 = !DILocation(line: 200, column: 8, scope: !670)
!685 = !DILocation(line: 203, column: 19, scope: !670)
!686 = !DILocation(line: 203, column: 8, scope: !670)
!687 = !DILocation(line: 204, column: 8, scope: !670)
!688 = !DILocation(line: 206, column: 4, scope: !660)
!689 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at function_pointer.cpp:36:22) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_", scope: !441, file: !26, line: 211, type: !690, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !693, declaration: !692, retainedNodes: !44)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !142, !488}
!692 = !DISubprogram(name: "_M_init_functor<const (lambda at function_pointer.cpp:36:22) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_", scope: !441, file: !26, line: 211, type: !690, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !693)
!693 = !{!694}
!694 = !DITemplateTypeParameter(name: "_Fn", type: !488)
!695 = !DILocalVariable(name: "__functor", arg: 1, scope: !689, file: !26, line: 211, type: !142)
!696 = !DILocation(line: 211, column: 31, scope: !689)
!697 = !DILocalVariable(name: "__f", arg: 2, scope: !689, file: !26, line: 211, type: !488)
!698 = !DILocation(line: 211, column: 48, scope: !689)
!699 = !DILocation(line: 215, column: 16, scope: !689)
!700 = !DILocation(line: 215, column: 45, scope: !689)
!701 = !DILocation(line: 215, column: 6, scope: !689)
!702 = !DILocation(line: 216, column: 4, scope: !689)
!703 = distinct !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE", scope: !441, file: !26, line: 166, type: !449, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !448, retainedNodes: !44)
!704 = !DILocalVariable(name: "__victim", arg: 1, scope: !703, file: !26, line: 166, type: !142)
!705 = !DILocation(line: 166, column: 24, scope: !703)
!706 = !DILocalVariable(arg: 2, scope: !703, file: !26, line: 166, type: !451)
!707 = !DILocation(line: 166, column: 43, scope: !703)
!708 = !DILocation(line: 168, column: 4, scope: !703)
!709 = !DILocation(line: 168, column: 13, scope: !703)
!710 = !DILocation(line: 169, column: 2, scope: !703)
!711 = distinct !DISubprogram(name: "_M_create<const (lambda at function_pointer.cpp:36:22) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE", scope: !441, file: !26, line: 150, type: !712, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !693, declaration: !714, retainedNodes: !44)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !142, !488, !451}
!714 = !DISubprogram(name: "_M_create<const (lambda at function_pointer.cpp:36:22) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE", scope: !441, file: !26, line: 150, type: !712, scopeLine: 150, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !693)
!715 = !DILocalVariable(name: "__dest", arg: 1, scope: !711, file: !26, line: 150, type: !142)
!716 = !DILocation(line: 150, column: 25, scope: !711)
!717 = !DILocalVariable(name: "__f", arg: 2, scope: !711, file: !26, line: 150, type: !488)
!718 = !DILocation(line: 150, column: 39, scope: !711)
!719 = !DILocalVariable(arg: 3, scope: !711, file: !26, line: 150, type: !451)
!720 = !DILocation(line: 150, column: 53, scope: !711)
!721 = !DILocation(line: 152, column: 13, scope: !711)
!722 = !DILocation(line: 152, column: 20, scope: !711)
!723 = !DILocation(line: 152, column: 60, scope: !711)
!724 = !DILocation(line: 153, column: 4, scope: !711)
!725 = distinct !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:36:22)>", linkageName: "_ZNSt9_Any_data9_M_accessIZ4mainE3$_0EERT_v", scope: !104, file: !26, line: 90, type: !726, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !490, declaration: !728, retainedNodes: !44)
!726 = !DISubroutineType(types: !727)
!727 = !{!50, !131}
!728 = !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:36:22)>", linkageName: "_ZNSt9_Any_data9_M_accessIZ4mainE3$_0EERT_v", scope: !104, file: !26, line: 90, type: !726, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !490)
!729 = !DILocalVariable(name: "this", arg: 1, scope: !725, type: !568, flags: DIFlagArtificial | DIFlagObjectPointer)
!730 = !DILocation(line: 0, scope: !725)
!731 = !DILocation(line: 91, column: 35, scope: !725)
!732 = !DILocation(line: 91, column: 9, scope: !725)
!733 = distinct !DISubprogram(name: "_M_not_empty_function<(lambda at function_pointer.cpp:42:32)>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E21_M_not_empty_functionIS1_EEbRKT_", scope: !734, file: !26, line: 235, type: !745, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !749, declaration: !748, retainedNodes: !44)
!734 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Base_manager<(lambda at function_pointer.cpp:42:32)>", scope: !95, file: !26, line: 121, size: 8, flags: DIFlagTypePassByValue, elements: !735, templateParams: !743)
!735 = !{!736, !737, !740, !741, !742}
!736 = !DIDerivedType(tag: DW_TAG_variable, name: "__stored_locally", scope: !734, file: !26, line: 124, baseType: !444, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!737 = !DISubprogram(name: "_M_get_pointer", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E14_M_get_pointerERKSt9_Any_data", scope: !734, file: !26, line: 134, type: !738, scopeLine: 134, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!738 = !DISubroutineType(types: !739)
!739 = !{!91, !143}
!740 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE", scope: !734, file: !26, line: 166, type: !449, scopeLine: 166, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!741 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE", scope: !734, file: !26, line: 173, type: !467, scopeLine: 173, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!742 = !DISubprogram(name: "_M_manager", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", scope: !734, file: !26, line: 180, type: !140, scopeLine: 180, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!743 = !{!744}
!744 = !DITemplateTypeParameter(name: "_Functor", type: !86)
!745 = !DISubroutineType(types: !746)
!746 = !{!47, !747}
!747 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !93, size: 64)
!748 = !DISubprogram(name: "_M_not_empty_function<(lambda at function_pointer.cpp:42:32)>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E21_M_not_empty_functionIS1_EEbRKT_", scope: !734, file: !26, line: 235, type: !745, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !749)
!749 = !{!750}
!750 = !DITemplateTypeParameter(name: "_Tp", type: !86)
!751 = !DILocalVariable(arg: 1, scope: !733, file: !26, line: 235, type: !747)
!752 = !DILocation(line: 235, column: 36, scope: !733)
!753 = !DILocation(line: 236, column: 6, scope: !733)
!754 = distinct !DISubprogram(name: "_M_init_functor<(lambda at function_pointer.cpp:42:32) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E15_M_init_functorIRS1_EEvRSt9_Any_dataOT_", scope: !734, file: !26, line: 211, type: !755, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !758, declaration: !757, retainedNodes: !44)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !142, !85}
!757 = !DISubprogram(name: "_M_init_functor<(lambda at function_pointer.cpp:42:32) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E15_M_init_functorIRS1_EEvRSt9_Any_dataOT_", scope: !734, file: !26, line: 211, type: !755, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !758)
!758 = !{!759}
!759 = !DITemplateTypeParameter(name: "_Fn", type: !85)
!760 = !DILocalVariable(name: "__functor", arg: 1, scope: !754, file: !26, line: 211, type: !142)
!761 = !DILocation(line: 211, column: 31, scope: !754)
!762 = !DILocalVariable(name: "__f", arg: 2, scope: !754, file: !26, line: 211, type: !85)
!763 = !DILocation(line: 211, column: 48, scope: !754)
!764 = !DILocation(line: 215, column: 16, scope: !754)
!765 = !DILocation(line: 215, column: 45, scope: !754)
!766 = !DILocation(line: 215, column: 6, scope: !754)
!767 = !DILocation(line: 216, column: 4, scope: !754)
!768 = distinct !DISubprogram(name: "_M_invoke", linkageName: "_ZNSt17_Function_handlerIFiiiEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOiS6_", scope: !769, file: !26, line: 288, type: !173, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !773, retainedNodes: !44)
!769 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Function_handler<int (int, int), (lambda at function_pointer.cpp:42:32)>", scope: !27, file: !26, line: 260, size: 8, flags: DIFlagTypePassByValue, elements: !770, templateParams: !774)
!770 = !{!771, !772, !773}
!771 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !769, baseType: !734, flags: DIFlagPublic, extraData: i32 0)
!772 = !DISubprogram(name: "_M_manager", linkageName: "_ZNSt17_Function_handlerIFiiiEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", scope: !769, file: !26, line: 267, type: !140, scopeLine: 267, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!773 = !DISubprogram(name: "_M_invoke", linkageName: "_ZNSt17_Function_handlerIFiiiEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOiS6_", scope: !769, file: !26, line: 288, type: !173, scopeLine: 288, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit)
!774 = !{!218, !744}
!775 = !DILocalVariable(name: "__functor", arg: 1, scope: !768, file: !26, line: 288, type: !143)
!776 = !DILocation(line: 288, column: 34, scope: !768)
!777 = !DILocalVariable(name: "__args", arg: 2, scope: !768, file: !26, line: 288, type: !55)
!778 = !DILocation(line: 288, column: 60, scope: !768)
!779 = !DILocalVariable(name: "__args", arg: 3, scope: !768, file: !26, line: 288, type: !55)
!780 = !DILocation(line: 290, column: 54, scope: !768)
!781 = !DILocation(line: 290, column: 32, scope: !768)
!782 = !DILocation(line: 291, column: 34, scope: !768)
!783 = !DILocation(line: 290, column: 9, scope: !768)
!784 = !DILocation(line: 290, column: 2, scope: !768)
!785 = distinct !DISubprogram(name: "_M_manager", linkageName: "_ZNSt17_Function_handlerIFiiiEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", scope: !769, file: !26, line: 267, type: !140, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !772, retainedNodes: !44)
!786 = !DILocalVariable(name: "__dest", arg: 1, scope: !785, file: !26, line: 267, type: !142)
!787 = !DILocation(line: 267, column: 29, scope: !785)
!788 = !DILocalVariable(name: "__source", arg: 2, scope: !785, file: !26, line: 267, type: !143)
!789 = !DILocation(line: 267, column: 54, scope: !785)
!790 = !DILocalVariable(name: "__op", arg: 3, scope: !785, file: !26, line: 268, type: !25)
!791 = !DILocation(line: 268, column: 23, scope: !785)
!792 = !DILocation(line: 270, column: 10, scope: !785)
!793 = !DILocation(line: 270, column: 2, scope: !785)
!794 = !DILocation(line: 274, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !785, file: !26, line: 271, column: 4)
!796 = !DILocation(line: 274, column: 13, scope: !795)
!797 = !DILocation(line: 274, column: 43, scope: !795)
!798 = !DILocation(line: 275, column: 6, scope: !795)
!799 = !DILocation(line: 278, column: 60, scope: !795)
!800 = !DILocation(line: 278, column: 38, scope: !795)
!801 = !DILocation(line: 278, column: 6, scope: !795)
!802 = !DILocation(line: 278, column: 13, scope: !795)
!803 = !DILocation(line: 278, column: 36, scope: !795)
!804 = !DILocation(line: 279, column: 6, scope: !795)
!805 = !DILocation(line: 282, column: 24, scope: !795)
!806 = !DILocation(line: 282, column: 32, scope: !795)
!807 = !DILocation(line: 282, column: 42, scope: !795)
!808 = !DILocation(line: 282, column: 6, scope: !795)
!809 = !DILocation(line: 283, column: 4, scope: !795)
!810 = !DILocation(line: 284, column: 2, scope: !785)
!811 = distinct !DISubprogram(name: "_M_create<(lambda at function_pointer.cpp:42:32) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E9_M_createIRS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE", scope: !734, file: !26, line: 150, type: !812, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !758, declaration: !814, retainedNodes: !44)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !142, !85, !451}
!814 = !DISubprogram(name: "_M_create<(lambda at function_pointer.cpp:42:32) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E9_M_createIRS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE", scope: !734, file: !26, line: 150, type: !812, scopeLine: 150, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !758)
!815 = !DILocalVariable(name: "__dest", arg: 1, scope: !811, file: !26, line: 150, type: !142)
!816 = !DILocation(line: 150, column: 25, scope: !811)
!817 = !DILocalVariable(name: "__f", arg: 2, scope: !811, file: !26, line: 150, type: !85)
!818 = !DILocation(line: 150, column: 39, scope: !811)
!819 = !DILocalVariable(arg: 3, scope: !811, file: !26, line: 150, type: !451)
!820 = !DILocation(line: 150, column: 53, scope: !811)
!821 = !DILocation(line: 152, column: 13, scope: !811)
!822 = !DILocation(line: 152, column: 20, scope: !811)
!823 = !DILocation(line: 152, column: 60, scope: !811)
!824 = !DILocation(line: 152, column: 33, scope: !811)
!825 = !DILocation(line: 153, column: 4, scope: !811)
!826 = !DILocalVariable(name: "__fn", arg: 1, scope: !81, file: !36, line: 104, type: !85)
!827 = !DILocation(line: 104, column: 28, scope: !81)
!828 = !DILocalVariable(name: "__args", arg: 2, scope: !81, file: !36, line: 104, type: !55)
!829 = !DILocation(line: 104, column: 45, scope: !81)
!830 = !DILocalVariable(name: "__args", arg: 3, scope: !81, file: !36, line: 104, type: !55)
!831 = !DILocation(line: 115, column: 32, scope: !832)
!832 = distinct !DILexicalBlock(scope: !81, file: !36, line: 110, column: 21)
!833 = !DILocation(line: 116, column: 28, scope: !832)
!834 = !DILocation(line: 114, column: 9, scope: !832)
!835 = !DILocation(line: 114, column: 2, scope: !832)
!836 = distinct !DISubprogram(name: "_M_get_pointer", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E14_M_get_pointerERKSt9_Any_data", scope: !734, file: !26, line: 134, type: !738, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !737, retainedNodes: !44)
!837 = !DILocalVariable(name: "__source", arg: 1, scope: !836, file: !26, line: 134, type: !143)
!838 = !DILocation(line: 134, column: 34, scope: !836)
!839 = !DILocalVariable(name: "__f", scope: !840, file: !26, line: 138, type: !747)
!840 = distinct !DILexicalBlock(scope: !841, file: !26, line: 137, column: 6)
!841 = distinct !DILexicalBlock(scope: !836, file: !26, line: 136, column: 29)
!842 = !DILocation(line: 138, column: 24, scope: !840)
!843 = !DILocation(line: 138, column: 30, scope: !840)
!844 = !DILocation(line: 138, column: 39, scope: !840)
!845 = !DILocation(line: 139, column: 54, scope: !840)
!846 = !DILocation(line: 139, column: 8, scope: !840)
!847 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at function_pointer.cpp:42:32) &, int, int>", linkageName: "_ZSt13__invoke_implIiRZ4mainE3$_1JiiEET_St14__invoke_otherOT0_DpOT1_", scope: !27, file: !36, line: 60, type: !848, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !850, retainedNodes: !44)
!848 = !DISubroutineType(types: !849)
!849 = !{!49, !70, !85, !55, !55}
!850 = !{!57, !759, !59}
!851 = !DILocalVariable(arg: 1, scope: !847, file: !36, line: 60, type: !70)
!852 = !DILocation(line: 60, column: 33, scope: !847)
!853 = !DILocalVariable(name: "__f", arg: 2, scope: !847, file: !36, line: 60, type: !85)
!854 = !DILocation(line: 60, column: 41, scope: !847)
!855 = !DILocalVariable(name: "__args", arg: 3, scope: !847, file: !36, line: 60, type: !55)
!856 = !DILocation(line: 60, column: 57, scope: !847)
!857 = !DILocalVariable(name: "__args", arg: 4, scope: !847, file: !36, line: 60, type: !55)
!858 = !DILocation(line: 61, column: 32, scope: !847)
!859 = !DILocation(line: 61, column: 57, scope: !847)
!860 = !DILocation(line: 61, column: 37, scope: !847)
!861 = !DILocation(line: 61, column: 14, scope: !847)
!862 = !DILocation(line: 61, column: 7, scope: !847)
!863 = distinct !DISubprogram(name: "operator()", linkageName: "_ZZ4mainENK3$_1clEii", scope: !86, file: !2, line: 42, type: !864, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !867, retainedNodes: !44)
!864 = !DISubroutineType(types: !865)
!865 = !{!49, !866, !49, !49}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!867 = !DISubprogram(name: "operator()", scope: !86, file: !2, line: 42, type: !864, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit)
!868 = !DILocalVariable(name: "this", arg: 1, scope: !863, type: !92, flags: DIFlagArtificial | DIFlagObjectPointer)
!869 = !DILocation(line: 0, scope: !863)
!870 = !DILocalVariable(name: "a", arg: 2, scope: !863, file: !2, line: 42, type: !49)
!871 = !DILocation(line: 42, column: 45, scope: !863)
!872 = !DILocalVariable(name: "b", arg: 3, scope: !863, file: !2, line: 42, type: !49)
!873 = !DILocation(line: 42, column: 52, scope: !863)
!874 = !DILocation(line: 42, column: 65, scope: !863)
!875 = !DILocation(line: 42, column: 69, scope: !863)
!876 = !DILocation(line: 42, column: 67, scope: !863)
!877 = !DILocation(line: 42, column: 74, scope: !863)
!878 = !DILocation(line: 42, column: 72, scope: !863)
!879 = !DILocation(line: 42, column: 57, scope: !863)
!880 = distinct !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:42:32)>", linkageName: "_ZNKSt9_Any_data9_M_accessIZ4mainE3$_1EERKT_v", scope: !104, file: !26, line: 95, type: !881, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !749, declaration: !883, retainedNodes: !44)
!881 = !DISubroutineType(types: !882)
!882 = !{!747, !135}
!883 = !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:42:32)>", linkageName: "_ZNKSt9_Any_data9_M_accessIZ4mainE3$_1EERKT_v", scope: !104, file: !26, line: 95, type: !881, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !749)
!884 = !DILocalVariable(name: "this", arg: 1, scope: !880, type: !629, flags: DIFlagArtificial | DIFlagObjectPointer)
!885 = !DILocation(line: 0, scope: !880)
!886 = !DILocation(line: 96, column: 41, scope: !880)
!887 = !DILocation(line: 96, column: 9, scope: !880)
!888 = distinct !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:42:32) *>", linkageName: "_ZNSt9_Any_data9_M_accessIPZ4mainE3$_1EERT_v", scope: !104, file: !26, line: 90, type: !889, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !893, declaration: !892, retainedNodes: !44)
!889 = !DISubroutineType(types: !890)
!890 = !{!891, !131}
!891 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !91, size: 64)
!892 = !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:42:32) *>", linkageName: "_ZNSt9_Any_data9_M_accessIPZ4mainE3$_1EERT_v", scope: !104, file: !26, line: 90, type: !889, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !893)
!893 = !{!894}
!894 = !DITemplateTypeParameter(name: "_Tp", type: !91)
!895 = !DILocalVariable(name: "this", arg: 1, scope: !888, type: !568, flags: DIFlagArtificial | DIFlagObjectPointer)
!896 = !DILocation(line: 0, scope: !888)
!897 = !DILocation(line: 91, column: 35, scope: !888)
!898 = !DILocation(line: 91, column: 9, scope: !888)
!899 = distinct !DISubprogram(name: "_M_manager", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", scope: !734, file: !26, line: 180, type: !140, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !742, retainedNodes: !44)
!900 = !DILocalVariable(name: "__dest", arg: 1, scope: !899, file: !26, line: 180, type: !142)
!901 = !DILocation(line: 180, column: 24, scope: !899)
!902 = !DILocalVariable(name: "__source", arg: 2, scope: !899, file: !26, line: 180, type: !143)
!903 = !DILocation(line: 180, column: 49, scope: !899)
!904 = !DILocalVariable(name: "__op", arg: 3, scope: !899, file: !26, line: 181, type: !25)
!905 = !DILocation(line: 181, column: 25, scope: !899)
!906 = !DILocation(line: 183, column: 12, scope: !899)
!907 = !DILocation(line: 183, column: 4, scope: !899)
!908 = !DILocation(line: 187, column: 8, scope: !909)
!909 = distinct !DILexicalBlock(scope: !899, file: !26, line: 184, column: 6)
!910 = !DILocation(line: 187, column: 15, scope: !909)
!911 = !DILocation(line: 187, column: 45, scope: !909)
!912 = !DILocation(line: 191, column: 8, scope: !909)
!913 = !DILocation(line: 194, column: 55, scope: !909)
!914 = !DILocation(line: 194, column: 40, scope: !909)
!915 = !DILocation(line: 194, column: 8, scope: !909)
!916 = !DILocation(line: 194, column: 15, scope: !909)
!917 = !DILocation(line: 194, column: 38, scope: !909)
!918 = !DILocation(line: 195, column: 8, scope: !909)
!919 = !DILocation(line: 198, column: 24, scope: !909)
!920 = !DILocation(line: 199, column: 49, scope: !909)
!921 = !DILocation(line: 199, column: 34, scope: !909)
!922 = !DILocation(line: 198, column: 8, scope: !909)
!923 = !DILocation(line: 200, column: 8, scope: !909)
!924 = !DILocation(line: 203, column: 19, scope: !909)
!925 = !DILocation(line: 203, column: 8, scope: !909)
!926 = !DILocation(line: 204, column: 8, scope: !909)
!927 = !DILocation(line: 206, column: 4, scope: !899)
!928 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at function_pointer.cpp:42:32) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_", scope: !734, file: !26, line: 211, type: !929, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !932, declaration: !931, retainedNodes: !44)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !142, !747}
!931 = !DISubprogram(name: "_M_init_functor<const (lambda at function_pointer.cpp:42:32) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_", scope: !734, file: !26, line: 211, type: !929, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !932)
!932 = !{!933}
!933 = !DITemplateTypeParameter(name: "_Fn", type: !747)
!934 = !DILocalVariable(name: "__functor", arg: 1, scope: !928, file: !26, line: 211, type: !142)
!935 = !DILocation(line: 211, column: 31, scope: !928)
!936 = !DILocalVariable(name: "__f", arg: 2, scope: !928, file: !26, line: 211, type: !747)
!937 = !DILocation(line: 211, column: 48, scope: !928)
!938 = !DILocation(line: 215, column: 16, scope: !928)
!939 = !DILocation(line: 215, column: 45, scope: !928)
!940 = !DILocation(line: 215, column: 6, scope: !928)
!941 = !DILocation(line: 216, column: 4, scope: !928)
!942 = distinct !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE", scope: !734, file: !26, line: 166, type: !449, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, declaration: !740, retainedNodes: !44)
!943 = !DILocalVariable(name: "__victim", arg: 1, scope: !942, file: !26, line: 166, type: !142)
!944 = !DILocation(line: 166, column: 24, scope: !942)
!945 = !DILocalVariable(arg: 2, scope: !942, file: !26, line: 166, type: !451)
!946 = !DILocation(line: 166, column: 43, scope: !942)
!947 = !DILocation(line: 168, column: 4, scope: !942)
!948 = !DILocation(line: 168, column: 13, scope: !942)
!949 = !DILocation(line: 169, column: 2, scope: !942)
!950 = distinct !DISubprogram(name: "_M_create<const (lambda at function_pointer.cpp:42:32) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE", scope: !734, file: !26, line: 150, type: !951, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !932, declaration: !953, retainedNodes: !44)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !142, !747, !451}
!953 = !DISubprogram(name: "_M_create<const (lambda at function_pointer.cpp:42:32) &>", linkageName: "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE", scope: !734, file: !26, line: 150, type: !951, scopeLine: 150, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagLocalToUnit, templateParams: !932)
!954 = !DILocalVariable(name: "__dest", arg: 1, scope: !950, file: !26, line: 150, type: !142)
!955 = !DILocation(line: 150, column: 25, scope: !950)
!956 = !DILocalVariable(name: "__f", arg: 2, scope: !950, file: !26, line: 150, type: !747)
!957 = !DILocation(line: 150, column: 39, scope: !950)
!958 = !DILocalVariable(arg: 3, scope: !950, file: !26, line: 150, type: !451)
!959 = !DILocation(line: 150, column: 53, scope: !950)
!960 = !DILocation(line: 152, column: 13, scope: !950)
!961 = !DILocation(line: 152, column: 20, scope: !950)
!962 = !DILocation(line: 152, column: 60, scope: !950)
!963 = !DILocation(line: 152, column: 33, scope: !950)
!964 = !DILocation(line: 153, column: 4, scope: !950)
!965 = distinct !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:42:32)>", linkageName: "_ZNSt9_Any_data9_M_accessIZ4mainE3$_1EERT_v", scope: !104, file: !26, line: 90, type: !966, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, templateParams: !749, declaration: !968, retainedNodes: !44)
!966 = !DISubroutineType(types: !967)
!967 = !{!85, !131}
!968 = !DISubprogram(name: "_M_access<(lambda at function_pointer.cpp:42:32)>", linkageName: "_ZNSt9_Any_data9_M_accessIZ4mainE3$_1EERT_v", scope: !104, file: !26, line: 90, type: !966, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !749)
!969 = !DILocalVariable(name: "this", arg: 1, scope: !965, type: !568, flags: DIFlagArtificial | DIFlagObjectPointer)
!970 = !DILocation(line: 0, scope: !965)
!971 = !DILocation(line: 91, column: 35, scope: !965)
!972 = !DILocation(line: 91, column: 9, scope: !965)
