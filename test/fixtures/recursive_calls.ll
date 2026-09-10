; ModuleID = 'recursive_calls.cpp'
source_filename = "recursive_calls.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z4fiboi(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !15, metadata !DIExpression()), !dbg !16
  %4 = load i32, ptr %3, align 4, !dbg !17
  %5 = icmp sle i32 %4, 1, !dbg !19
  br i1 %5, label %6, label %8, !dbg !20

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4, !dbg !21
  store i32 %7, ptr %2, align 4, !dbg !23
  br label %16, !dbg !23

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4, !dbg !24
  %10 = sub nsw i32 %9, 1, !dbg !25
  %11 = call noundef i32 @_Z4fiboi(i32 noundef %10), !dbg !26
  %12 = load i32, ptr %3, align 4, !dbg !27
  %13 = sub nsw i32 %12, 2, !dbg !28
  %14 = call noundef i32 @_Z4fiboi(i32 noundef %13), !dbg !29
  %15 = add nsw i32 %11, %14, !dbg !30
  store i32 %15, ptr %2, align 4, !dbg !31
  br label %16, !dbg !31

16:                                               ; preds = %8, %6
  %17 = load i32, ptr %2, align 4, !dbg !32
  ret i32 %17, !dbg !32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !33 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = call noundef i32 @_Z4fiboi(i32 noundef 10), !dbg !38
  store i32 %3, ptr %2, align 4, !dbg !37
  %4 = load i32, ptr %2, align 4, !dbg !39
  ret i32 %4, !dbg !40
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "recursive_calls.cpp", directory: "/home/balz/Code/static_analysis/test/fixtures", checksumkind: CSK_MD5, checksum: "1cace29cd65ef40b0b12ceca59e86ee8")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "fibo", linkageName: "_Z4fiboi", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!16 = !DILocation(line: 1, column: 14, scope: !10)
!17 = !DILocation(line: 3, column: 9, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 3, column: 9)
!19 = !DILocation(line: 3, column: 11, scope: !18)
!20 = !DILocation(line: 3, column: 9, scope: !10)
!21 = !DILocation(line: 4, column: 16, scope: !22)
!22 = distinct !DILexicalBlock(scope: !18, file: !1, line: 3, column: 16)
!23 = !DILocation(line: 4, column: 9, scope: !22)
!24 = !DILocation(line: 7, column: 17, scope: !10)
!25 = !DILocation(line: 7, column: 19, scope: !10)
!26 = !DILocation(line: 7, column: 12, scope: !10)
!27 = !DILocation(line: 7, column: 31, scope: !10)
!28 = !DILocation(line: 7, column: 33, scope: !10)
!29 = !DILocation(line: 7, column: 26, scope: !10)
!30 = !DILocation(line: 7, column: 24, scope: !10)
!31 = !DILocation(line: 7, column: 5, scope: !10)
!32 = !DILocation(line: 8, column: 1, scope: !10)
!33 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !34, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!34 = !DISubroutineType(types: !35)
!35 = !{!13}
!36 = !DILocalVariable(name: "r", scope: !33, file: !1, line: 12, type: !13)
!37 = !DILocation(line: 12, column: 6, scope: !33)
!38 = !DILocation(line: 12, column: 10, scope: !33)
!39 = !DILocation(line: 14, column: 9, scope: !33)
!40 = !DILocation(line: 14, column: 2, scope: !33)
