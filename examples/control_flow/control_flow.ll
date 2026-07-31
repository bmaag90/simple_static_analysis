; ModuleID = 'control_flow.cpp'
source_filename = "control_flow.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 10, ptr %2, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata ptr %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 20, ptr %3, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata ptr %4, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 30, ptr %4, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata ptr %5, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 0, ptr %5, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata ptr %6, metadata !23, metadata !DIExpression()), !dbg !25
  store i32 0, ptr %6, align 4, !dbg !25
  br label %7, !dbg !26

7:                                                ; preds = %36, %0
  %8 = load i32, ptr %6, align 4, !dbg !27
  %9 = icmp slt i32 %8, 10, !dbg !29
  br i1 %9, label %10, label %39, !dbg !30

10:                                               ; preds = %7
  %11 = load i32, ptr %6, align 4, !dbg !31
  %12 = srem i32 %11, 3, !dbg !33
  switch i32 %12, label %34 [
    i32 0, label %13
    i32 1, label %17
    i32 2, label %24
  ], !dbg !34

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4, !dbg !35
  %15 = load i32, ptr %5, align 4, !dbg !37
  %16 = add nsw i32 %15, %14, !dbg !37
  store i32 %16, ptr %5, align 4, !dbg !37
  br label %35, !dbg !38

17:                                               ; preds = %10
  %18 = load i32, ptr %2, align 4, !dbg !39
  %19 = load i32, ptr %3, align 4, !dbg !40
  %20 = add nsw i32 %19, %18, !dbg !40
  store i32 %20, ptr %3, align 4, !dbg !40
  %21 = load i32, ptr %3, align 4, !dbg !41
  %22 = load i32, ptr %5, align 4, !dbg !42
  %23 = mul nsw i32 %22, %21, !dbg !42
  store i32 %23, ptr %5, align 4, !dbg !42
  br label %35, !dbg !43

24:                                               ; preds = %10
  %25 = load i32, ptr %3, align 4, !dbg !44
  %26 = load i32, ptr %2, align 4, !dbg !45
  %27 = sub nsw i32 %25, %26, !dbg !46
  store i32 %27, ptr %4, align 4, !dbg !47
  %28 = load i32, ptr %4, align 4, !dbg !48
  %29 = load i32, ptr %3, align 4, !dbg !49
  %30 = sub nsw i32 %29, %28, !dbg !49
  store i32 %30, ptr %3, align 4, !dbg !49
  %31 = load i32, ptr %2, align 4, !dbg !50
  %32 = load i32, ptr %2, align 4, !dbg !51
  %33 = add nsw i32 %32, %31, !dbg !51
  store i32 %33, ptr %2, align 4, !dbg !51
  br label %35, !dbg !52

34:                                               ; preds = %10
  br label %35, !dbg !53

35:                                               ; preds = %34, %24, %17, %13
  br label %36, !dbg !54

36:                                               ; preds = %35
  %37 = load i32, ptr %6, align 4, !dbg !55
  %38 = add nsw i32 %37, 1, !dbg !55
  store i32 %38, ptr %6, align 4, !dbg !55
  br label %7, !dbg !56, !llvm.loop !57

39:                                               ; preds = %7
  ret i32 0, !dbg !60
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "control_flow.cpp", directory: "/home/balz/Code/static_analysis/examples/control_flow", checksumkind: CSK_MD5, checksum: "186d3596915ad55a63410b9eeb9f41ea")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 6, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 6, scope: !10)
!19 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 7, type: !13)
!20 = !DILocation(line: 7, column: 6, scope: !10)
!21 = !DILocalVariable(name: "r", scope: !10, file: !1, line: 9, type: !13)
!22 = !DILocation(line: 9, column: 6, scope: !10)
!23 = !DILocalVariable(name: "i", scope: !24, file: !1, line: 11, type: !13)
!24 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 2)
!25 = !DILocation(line: 11, column: 11, scope: !24)
!26 = !DILocation(line: 11, column: 7, scope: !24)
!27 = !DILocation(line: 11, column: 18, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 11, column: 2)
!29 = !DILocation(line: 11, column: 20, scope: !28)
!30 = !DILocation(line: 11, column: 2, scope: !24)
!31 = !DILocation(line: 12, column: 11, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 11, column: 30)
!33 = !DILocation(line: 12, column: 13, scope: !32)
!34 = !DILocation(line: 12, column: 3, scope: !32)
!35 = !DILocation(line: 14, column: 10, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 18)
!37 = !DILocation(line: 14, column: 7, scope: !36)
!38 = !DILocation(line: 15, column: 5, scope: !36)
!39 = !DILocation(line: 17, column: 10, scope: !36)
!40 = !DILocation(line: 17, column: 7, scope: !36)
!41 = !DILocation(line: 18, column: 10, scope: !36)
!42 = !DILocation(line: 18, column: 7, scope: !36)
!43 = !DILocation(line: 19, column: 5, scope: !36)
!44 = !DILocation(line: 21, column: 9, scope: !36)
!45 = !DILocation(line: 21, column: 13, scope: !36)
!46 = !DILocation(line: 21, column: 11, scope: !36)
!47 = !DILocation(line: 21, column: 7, scope: !36)
!48 = !DILocation(line: 22, column: 10, scope: !36)
!49 = !DILocation(line: 22, column: 7, scope: !36)
!50 = !DILocation(line: 23, column: 10, scope: !36)
!51 = !DILocation(line: 23, column: 7, scope: !36)
!52 = !DILocation(line: 24, column: 5, scope: !36)
!53 = !DILocation(line: 26, column: 5, scope: !36)
!54 = !DILocation(line: 28, column: 2, scope: !32)
!55 = !DILocation(line: 11, column: 27, scope: !28)
!56 = !DILocation(line: 11, column: 2, scope: !28)
!57 = distinct !{!57, !30, !58, !59}
!58 = !DILocation(line: 28, column: 2, scope: !24)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 30, column: 2, scope: !10)
