; ModuleID = '/home/zzhzz/ISSTA23-Artifacts/parser/testcases/collatz.c'
source_filename = "/home/zzhzz/ISSTA23-Artifacts/parser/testcases/collatz.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__main_void to i8*)], section "llvm.metadata"

@__main_void = alias i32 (), i32 ()* @main

; Function Attrs: noinline nounwind optnone
define i32 @f(i32 %0) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !12, metadata !DIExpression()), !dbg !13
  %4 = load i32, i32* %3, align 4, !dbg !14
  %5 = srem i32 %4, 2, !dbg !16
  %6 = icmp eq i32 %5, 0, !dbg !17
  br i1 %6, label %7, label %10, !dbg !18

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !19
  %9 = sdiv i32 %8, 2, !dbg !20
  store i32 %9, i32* %2, align 4, !dbg !21
  br label %14, !dbg !21

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4, !dbg !22
  %12 = mul nsw i32 3, %11, !dbg !23
  %13 = add nsw i32 %12, 1, !dbg !24
  store i32 %13, i32* %2, align 4, !dbg !25
  br label %14, !dbg !25

14:                                               ; preds = %10, %7
  %15 = load i32, i32* %2, align 4, !dbg !26
  ret i32 %15, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define i32 @logic_bomb(i8* %0) #0 !dbg !27 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %4, metadata !34, metadata !DIExpression()), !dbg !35
  %7 = load i8*, i8** %3, align 4, !dbg !36
  %8 = getelementptr inbounds i8, i8* %7, i32 0, !dbg !36
  %9 = load i8, i8* %8, align 1, !dbg !36
  %10 = sext i8 %9 to i32, !dbg !36
  %11 = sub nsw i32 %10, 48, !dbg !37
  store i32 %11, i32* %4, align 4, !dbg !35
  %12 = load i32, i32* %4, align 4, !dbg !38
  %13 = add nsw i32 %12, 94, !dbg !39
  store i32 %13, i32* %4, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %5, metadata !41, metadata !DIExpression()), !dbg !42
  %14 = load i32, i32* %4, align 4, !dbg !43
  %15 = call i32 @f(i32 %14), !dbg !44
  store i32 %15, i32* %5, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %6, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 1, i32* %6, align 4, !dbg !46
  br label %16, !dbg !47

16:                                               ; preds = %19, %1
  call void @"cnt_loop_onj$2"()
  %17 = load i32, i32* %5, align 4, !dbg !48
  %18 = icmp ne i32 %17, 1, !dbg !49
  br i1 %18, label %19, label %24, !dbg !47

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4, !dbg !50
  %21 = call i32 @f(i32 %20), !dbg !52
  store i32 %21, i32* %5, align 4, !dbg !53
  call void @"cnt_loop_onj$0"()
  %22 = load i32, i32* %6, align 4, !dbg !54
  %23 = add nsw i32 %22, 1, !dbg !54
  store i32 %23, i32* %6, align 4, !dbg !54
  br label %16, !dbg !47, !llvm.loop !55

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4, !dbg !58
  %26 = icmp eq i32 %25, 25, !dbg !60
  br i1 %26, label %27, label %28, !dbg !61

27:                                               ; preds = %24
  call void @"cnt_loop_onj$1"()
  store i32 3, i32* %2, align 4, !dbg !62
  br label %29, !dbg !62

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4, !dbg !63
  br label %29, !dbg !63

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %2, align 4, !dbg !64
  ret i32 %30, !dbg !64
}

; Function Attrs: noinline nounwind optnone
define i32 @main() #0 !dbg !65 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x [1 x i8]], align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [2 x [1 x i8]]* %2, metadata !68, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %3, metadata !74, metadata !DIExpression()), !dbg !75
  %4 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %2, i32 0, i32 1, !dbg !76
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !76
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %5), !dbg !77
  %7 = getelementptr inbounds [2 x [1 x i8]], [2 x [1 x i8]]* %2, i32 0, i32 1, !dbg !78
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i32 0, i32 0, !dbg !78
  %9 = call i32 @logic_bomb(i8* %8), !dbg !79
  ret i32 %9, !dbg !80
}

declare i32 @scanf(i8*, ...) #2

declare void @"cnt_loop_onj$0"()

declare void @"cnt_loop_onj$1"()

declare void @"cnt_loop_onj$2"()

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.0 (https://github.com/llvm/llvm-project fd1d8c2f04dde23bee0fb3a7d069a9b1046da979)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "testcases/<stdin>", directory: "/home/zzhzz/ISSTA23-Artifacts/parser")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project fd1d8c2f04dde23bee0fb3a7d069a9b1046da979)"}
!7 = distinct !DISubprogram(name: "f", scope: !8, file: !8, line: 5, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "testcases/collatz.c", directory: "/home/zzhzz/ISSTA23-Artifacts/parser")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !8, line: 5, type: !11)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocation(line: 7, column: 9, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 7, column: 9)
!16 = !DILocation(line: 7, column: 11, scope: !15)
!17 = !DILocation(line: 7, column: 15, scope: !15)
!18 = !DILocation(line: 7, column: 9, scope: !7)
!19 = !DILocation(line: 8, column: 16, scope: !15)
!20 = !DILocation(line: 8, column: 18, scope: !15)
!21 = !DILocation(line: 8, column: 9, scope: !15)
!22 = !DILocation(line: 9, column: 16, scope: !7)
!23 = !DILocation(line: 9, column: 14, scope: !7)
!24 = !DILocation(line: 9, column: 18, scope: !7)
!25 = !DILocation(line: 9, column: 5, scope: !7)
!26 = !DILocation(line: 10, column: 1, scope: !7)
!27 = distinct !DISubprogram(name: "logic_bomb", scope: !8, file: !8, line: 13, type: !28, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DISubroutineType(types: !29)
!29 = !{!11, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DILocalVariable(name: "s", arg: 1, scope: !27, file: !8, line: 13, type: !30)
!33 = !DILocation(line: 13, column: 22, scope: !27)
!34 = !DILocalVariable(name: "symvar", scope: !27, file: !8, line: 15, type: !11)
!35 = !DILocation(line: 15, column: 9, scope: !27)
!36 = !DILocation(line: 15, column: 18, scope: !27)
!37 = !DILocation(line: 15, column: 23, scope: !27)
!38 = !DILocation(line: 16, column: 14, scope: !27)
!39 = !DILocation(line: 16, column: 21, scope: !27)
!40 = !DILocation(line: 16, column: 12, scope: !27)
!41 = !DILocalVariable(name: "j", scope: !27, file: !8, line: 17, type: !11)
!42 = !DILocation(line: 17, column: 9, scope: !27)
!43 = !DILocation(line: 17, column: 15, scope: !27)
!44 = !DILocation(line: 17, column: 13, scope: !27)
!45 = !DILocalVariable(name: "loopcount", scope: !27, file: !8, line: 18, type: !11)
!46 = !DILocation(line: 18, column: 9, scope: !27)
!47 = !DILocation(line: 19, column: 5, scope: !27)
!48 = !DILocation(line: 19, column: 12, scope: !27)
!49 = !DILocation(line: 19, column: 14, scope: !27)
!50 = !DILocation(line: 21, column: 15, scope: !51)
!51 = distinct !DILexicalBlock(scope: !27, file: !8, line: 20, column: 5)
!52 = !DILocation(line: 21, column: 13, scope: !51)
!53 = !DILocation(line: 21, column: 11, scope: !51)
!54 = !DILocation(line: 22, column: 18, scope: !51)
!55 = distinct !{!55, !47, !56, !57}
!56 = !DILocation(line: 23, column: 5, scope: !27)
!57 = !{!"llvm.loop.mustprogress"}
!58 = !DILocation(line: 24, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !27, file: !8, line: 24, column: 9)
!60 = !DILocation(line: 24, column: 19, scope: !59)
!61 = !DILocation(line: 24, column: 9, scope: !27)
!62 = !DILocation(line: 25, column: 9, scope: !59)
!63 = !DILocation(line: 27, column: 9, scope: !59)
!64 = !DILocation(line: 28, column: 1, scope: !27)
!65 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 30, type: !66, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!66 = !DISubroutineType(types: !67)
!67 = !{!11}
!68 = !DILocalVariable(name: "argv", scope: !65, file: !8, line: 32, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16, elements: !70)
!70 = !{!71, !72}
!71 = !DISubrange(count: 2)
!72 = !DISubrange(count: 1)
!73 = !DILocation(line: 32, column: 10, scope: !65)
!74 = !DILocalVariable(name: "x", scope: !65, file: !8, line: 33, type: !11)
!75 = !DILocation(line: 33, column: 9, scope: !65)
!76 = !DILocation(line: 34, column: 18, scope: !65)
!77 = !DILocation(line: 34, column: 5, scope: !65)
!78 = !DILocation(line: 35, column: 23, scope: !65)
!79 = !DILocation(line: 35, column: 12, scope: !65)
!80 = !DILocation(line: 35, column: 5, scope: !65)
