; ModuleID = 'example.cpp'
source_filename = "example.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z1fv() #0 !dbg !10 {
  ret i32 6, !dbg !14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z1ev() #0 !dbg !15 {
  ret i32 5, !dbg !16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z1dv() #0 !dbg !17 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !19, metadata !DIExpression()), !dbg !20
  %2 = call noundef i32 @_Z1ev(), !dbg !21
  store i32 %2, ptr %1, align 4, !dbg !20
  %3 = load i32, ptr %1, align 4, !dbg !22
  %4 = add nsw i32 %3, 4, !dbg !23
  ret i32 %4, !dbg !24
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z1cv() #0 !dbg !25 {
  ret i32 3, !dbg !26
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z1bv() #0 !dbg !27 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !28, metadata !DIExpression()), !dbg !29
  %2 = call noundef i32 @_Z1dv(), !dbg !30
  store i32 %2, ptr %1, align 4, !dbg !29
  %3 = load i32, ptr %1, align 4, !dbg !31
  %4 = add nsw i32 %3, 2, !dbg !32
  ret i32 %4, !dbg !33
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z1av() #0 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !35, metadata !DIExpression()), !dbg !36
  %3 = call noundef i32 @_Z1bv(), !dbg !37
  store i32 %3, ptr %1, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata ptr %2, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = call noundef i32 @_Z1fv(), !dbg !40
  store i32 %4, ptr %2, align 4, !dbg !39
  %5 = load i32, ptr %1, align 4, !dbg !41
  %6 = load i32, ptr %2, align 4, !dbg !42
  %7 = add nsw i32 %5, %6, !dbg !43
  %8 = add nsw i32 %7, 1, !dbg !44
  ret i32 %8, !dbg !45
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !46 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = call noundef i32 @_Z1av(), !dbg !49
  store i32 %3, ptr %2, align 4, !dbg !48
  ret i32 0, !dbg !50
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "example.cpp", directory: "/home/balz/Code/static_analysis/example", checksumkind: CSK_MD5, checksum: "5295dc6807804e2b9d12f279b5bdf6c2")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "f", linkageName: "_Z1fv", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 2, column: 5, scope: !10)
!15 = distinct !DISubprogram(name: "e", linkageName: "_Z1ev", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0)
!16 = !DILocation(line: 6, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "d", linkageName: "_Z1dv", scope: !1, file: !1, line: 9, type: !11, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!18 = !{}
!19 = !DILocalVariable(name: "re", scope: !17, file: !1, line: 10, type: !13)
!20 = !DILocation(line: 10, column: 9, scope: !17)
!21 = !DILocation(line: 10, column: 14, scope: !17)
!22 = !DILocation(line: 11, column: 12, scope: !17)
!23 = !DILocation(line: 11, column: 15, scope: !17)
!24 = !DILocation(line: 11, column: 5, scope: !17)
!25 = distinct !DISubprogram(name: "c", linkageName: "_Z1cv", scope: !1, file: !1, line: 14, type: !11, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0)
!26 = !DILocation(line: 15, column: 5, scope: !25)
!27 = distinct !DISubprogram(name: "b", linkageName: "_Z1bv", scope: !1, file: !1, line: 18, type: !11, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!28 = !DILocalVariable(name: "rd", scope: !27, file: !1, line: 19, type: !13)
!29 = !DILocation(line: 19, column: 9, scope: !27)
!30 = !DILocation(line: 19, column: 14, scope: !27)
!31 = !DILocation(line: 20, column: 12, scope: !27)
!32 = !DILocation(line: 20, column: 15, scope: !27)
!33 = !DILocation(line: 20, column: 5, scope: !27)
!34 = distinct !DISubprogram(name: "a", linkageName: "_Z1av", scope: !1, file: !1, line: 23, type: !11, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!35 = !DILocalVariable(name: "rb", scope: !34, file: !1, line: 24, type: !13)
!36 = !DILocation(line: 24, column: 9, scope: !34)
!37 = !DILocation(line: 24, column: 14, scope: !34)
!38 = !DILocalVariable(name: "rf", scope: !34, file: !1, line: 25, type: !13)
!39 = !DILocation(line: 25, column: 9, scope: !34)
!40 = !DILocation(line: 25, column: 14, scope: !34)
!41 = !DILocation(line: 26, column: 12, scope: !34)
!42 = !DILocation(line: 26, column: 17, scope: !34)
!43 = !DILocation(line: 26, column: 15, scope: !34)
!44 = !DILocation(line: 26, column: 20, scope: !34)
!45 = !DILocation(line: 26, column: 5, scope: !34)
!46 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 29, type: !11, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!47 = !DILocalVariable(name: "r", scope: !46, file: !1, line: 30, type: !13)
!48 = !DILocation(line: 30, column: 9, scope: !46)
!49 = !DILocation(line: 30, column: 13, scope: !46)
!50 = !DILocation(line: 31, column: 5, scope: !46)
