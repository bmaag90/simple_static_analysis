; ModuleID = 'virtual_functions.cpp'
source_filename = "virtual_functions.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Base = type { ptr }
%class.Derived = type { %class.Base }

$_ZN4BaseC2Ev = comdat any

$_ZN4Base13print_my_nameEv = comdat any

$_ZN7DerivedC2Ev = comdat any

$_ZN7Derived13print_my_nameEv = comdat any

$_ZTV4Base = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTV7Derived = comdat any

$_ZTS7Derived = comdat any

$_ZTI7Derived = comdat any

@_ZTV4Base = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI4Base, ptr @_ZN4Base13print_my_nameEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS4Base = linkonce_odr dso_local constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTI4Base = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS4Base }, comdat, align 8
@.str = private unnamed_addr constant [17 x i8] c"My name is Base\0A\00", align 1, !dbg !0
@_ZTV7Derived = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI7Derived, ptr @_ZN7Derived13print_my_nameEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS7Derived = linkonce_odr dso_local constant [9 x i8] c"7Derived\00", comdat, align 1
@_ZTI7Derived = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7Derived, ptr @_ZTI4Base }, comdat, align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Base, align 8
  %3 = alloca %class.Derived, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !23, metadata !DIExpression()), !dbg !34
  call void @_ZN4BaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !dbg !35
  call void @_ZN4Base13print_my_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %2), !dbg !36
  call void @llvm.dbg.declare(metadata ptr %3, metadata !37, metadata !DIExpression()), !dbg !46
  call void @_ZN7DerivedC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3), !dbg !47
  call void @_ZN7Derived13print_my_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %3), !dbg !48
  ret i32 1, !dbg !49
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !50 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !51, metadata !DIExpression()), !dbg !53
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV4Base, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !54
  ret void, !dbg !55
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base13print_my_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !56 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !57, metadata !DIExpression()), !dbg !58
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DerivedC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !61 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !62, metadata !DIExpression()), !dbg !64
  %3 = load ptr, ptr %2, align 8
  call void @_ZN4BaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3), !dbg !65
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV7Derived, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !66
  ret void, !dbg !67
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7Derived13print_my_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !68 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !69, metadata !DIExpression()), !dbg !70
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !71
  ret void, !dbg !72
}

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!8}
!llvm.linker.options = !{}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 8, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "virtual_functions.cpp", directory: "/home/balz/Code/static_analysis/examples/virtual_functions", checksumkind: CSK_MD5, checksum: "31d47b29c38905d0443469c5bcb54c6d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 17)
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !9, splitDebugInlining: false, nameTableKind: None)
!9 = !{!0}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!18 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 21, type: !19, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DILocalVariable(name: "base", scope: !18, file: !2, line: 23, type: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Base", file: !2, line: 3, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !25, vtableHolder: !24, identifier: "_ZTS4Base")
!25 = !{!26, !29, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Base", scope: !2, file: !2, baseType: !27, size: 64, flags: DIFlagArtificial)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !19, size: 64)
!29 = !DISubprogram(name: "Base", scope: !24, file: !2, line: 5, type: !30, scopeLine: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!33 = !DISubprogram(name: "print_my_name", linkageName: "_ZN4Base13print_my_nameEv", scope: !24, file: !2, line: 7, type: !30, scopeLine: 7, containingType: !24, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!34 = !DILocation(line: 23, column: 7, scope: !18)
!35 = !DILocation(line: 23, column: 14, scope: !18)
!36 = !DILocation(line: 24, column: 7, scope: !18)
!37 = !DILocalVariable(name: "derived", scope: !18, file: !2, line: 26, type: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Derived", file: !2, line: 12, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !39, vtableHolder: !24, identifier: "_ZTS7Derived")
!39 = !{!40, !41, !45}
!40 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !38, baseType: !24, flags: DIFlagPublic, extraData: i32 0)
!41 = !DISubprogram(name: "Derived", scope: !38, file: !2, line: 14, type: !42, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!45 = !DISubprogram(name: "print_my_name", linkageName: "_ZN7Derived13print_my_nameEv", scope: !38, file: !2, line: 16, type: !42, scopeLine: 16, containingType: !38, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!46 = !DILocation(line: 26, column: 10, scope: !18)
!47 = !DILocation(line: 26, column: 20, scope: !18)
!48 = !DILocation(line: 27, column: 10, scope: !18)
!49 = !DILocation(line: 29, column: 2, scope: !18)
!50 = distinct !DISubprogram(name: "Base", linkageName: "_ZN4BaseC2Ev", scope: !24, file: !2, line: 5, type: !30, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !29, retainedNodes: !22)
!51 = !DILocalVariable(name: "this", arg: 1, scope: !50, type: !52, flags: DIFlagArtificial | DIFlagObjectPointer)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!53 = !DILocation(line: 0, scope: !50)
!54 = !DILocation(line: 5, column: 9, scope: !50)
!55 = !DILocation(line: 5, column: 10, scope: !50)
!56 = distinct !DISubprogram(name: "print_my_name", linkageName: "_ZN4Base13print_my_nameEv", scope: !24, file: !2, line: 7, type: !30, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !33, retainedNodes: !22)
!57 = !DILocalVariable(name: "this", arg: 1, scope: !56, type: !52, flags: DIFlagArtificial | DIFlagObjectPointer)
!58 = !DILocation(line: 0, scope: !56)
!59 = !DILocation(line: 8, column: 3, scope: !56)
!60 = !DILocation(line: 9, column: 2, scope: !56)
!61 = distinct !DISubprogram(name: "Derived", linkageName: "_ZN7DerivedC2Ev", scope: !38, file: !2, line: 14, type: !42, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !41, retainedNodes: !22)
!62 = !DILocalVariable(name: "this", arg: 1, scope: !61, type: !63, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!64 = !DILocation(line: 0, scope: !61)
!65 = !DILocation(line: 14, column: 2, scope: !61)
!66 = !DILocation(line: 14, column: 12, scope: !61)
!67 = !DILocation(line: 14, column: 13, scope: !61)
!68 = distinct !DISubprogram(name: "print_my_name", linkageName: "_ZN7Derived13print_my_nameEv", scope: !38, file: !2, line: 16, type: !42, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !45, retainedNodes: !22)
!69 = !DILocalVariable(name: "this", arg: 1, scope: !68, type: !63, flags: DIFlagArtificial | DIFlagObjectPointer)
!70 = !DILocation(line: 0, scope: !68)
!71 = !DILocation(line: 17, column: 3, scope: !68)
!72 = !DILocation(line: 18, column: 2, scope: !68)
