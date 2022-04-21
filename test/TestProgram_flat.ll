; ModuleID = 'TestProgram.ll'
source_filename = "TestProgram.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Welcome to LLVM world...\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Your flag is: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"input flag %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"the flag is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Congratulations~\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Sorry try again.\0A\00", align 1
@"3337283352" = common global i32 0
@"3337283354" = common global i32 0
@"3337283352.1" = common global i32 0
@"3337283354.2" = common global i32 0
@"3337283352.3" = common global i32 0
@"3337283354.4" = common global i32 0
@"3337283352.5" = common global i32 0
@"3337283354.6" = common global i32 0
@"3337283352.7" = common global i32 0
@"3337283354.8" = common global i32 0
@"3337283352.9" = common global i32 0
@"3337283354.10" = common global i32 0
@"3337283352.11" = common global i32 0
@"3337283354.12" = common global i32 0
@"3337283352.13" = common global i32 0
@"3337283354.14" = common global i32 0
@"3337283352.15" = common global i32 0
@"3337283354.16" = common global i32 0
@"3337283352.17" = common global i32 0
@"3337283354.18" = common global i32 0
@"3337283352.19" = common global i32 0
@"3337283354.20" = common global i32 0
@"3337283352.21" = common global i32 0
@"3337283354.22" = common global i32 0
@"3337283352.23" = common global i32 0
@"3337283354.24" = common global i32 0
@"3337283352.25" = common global i32 0
@"3337283354.26" = common global i32 0

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %.reg2mem125 = alloca i32, align 4
  %.reg2mem73 = alloca i1, align 1
  %.reg2mem33 = alloca i1, align 1
  %.reg2mem10 = alloca i32*, align 8
  %.reg2mem4 = alloca i32*, align 8
  %.reg2mem = alloca i32*, align 8
  %"3337283354" = load i32, i32* @"3337283352", align 4
  %"333728335418" = load i32, i32* @"3337283354", align 4
  %"333728335419" = icmp slt i32 %"333728335418", 10
  %"333728335420" = add i32 %"3337283354", 1
  %"333728335421" = mul i32 %"333728335420", %"3337283354"
  %"333728335422" = urem i32 %"333728335421", 2
  %"333728335423" = icmp eq i32 %"333728335422", 0
  %"333728335424" = or i1 %"333728335419", %"333728335423"
  br i1 %"333728335424", label %3, label %50

3:                                                ; preds = %50, %2
  %4 = alloca i32, align 4
  store i32* %4, i32** %.reg2mem, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %8, i32** %.reg2mem4, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %10, i32** %.reg2mem10, align 8
  %.reload3 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload3, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i8**, i8*** %6, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %.reload9 = load volatile i32*, i32** %.reg2mem4, align 8
  %17 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %.reload9)
  %.reload14 = load volatile i32*, i32** %.reg2mem10, align 8
  store i32 10, i32* %.reload14, align 4
  %"333728335425" = load i32, i32* @"3337283352.1", align 4
  %"333728335426" = load i32, i32* @"3337283354.2", align 4
  %"333728335427" = icmp slt i32 %"333728335426", 10
  %"333728335428" = add i32 %"333728335425", 1
  %"333728335429" = mul i32 %"333728335428", %"333728335425"
  %"333728335430" = urem i32 %"333728335429", 2
  %"333728335431" = icmp eq i32 %"333728335430", 0
  %"333728335432" = or i1 %"333728335427", %"333728335431"
  br i1 %"333728335432", label %18, label %50

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %32, %18
  %"333728335436" = load i32, i32* @"3337283352.3", align 4
  %"333728335437" = load i32, i32* @"3337283354.4", align 4
  %"333728335438" = icmp slt i32 %"333728335437", 10
  %"333728335439" = add i32 %"333728335436", 1
  %"333728335440" = mul i32 %"333728335439", %"333728335436"
  %"333728335441" = urem i32 %"333728335440", 2
  %"333728335442" = icmp eq i32 %"333728335441", 0
  %"333728335443" = or i1 %"333728335438", %"333728335442"
  br i1 %"333728335443", label %20, label %65

20:                                               ; preds = %65, %19
  %.reload13 = load volatile i32*, i32** %.reg2mem10, align 8
  %21 = load i32, i32* %.reload13, align 4
  %22 = icmp ne i32 %21, 0
  store i1 %22, i1* %.reg2mem33, align 1
  %"333728335444" = load i32, i32* @"3337283352.5", align 4
  %"333728335445" = load i32, i32* @"3337283354.6", align 4
  %"333728335446" = icmp slt i32 %"333728335445", 10
  %"333728335447" = add i32 %"333728335444", 1
  %"333728335448" = mul i32 %"333728335447", %"333728335444"
  %"333728335449" = urem i32 %"333728335448", 2
  %"333728335450" = icmp eq i32 %"333728335449", 0
  %"333728335451" = or i1 %"333728335446", %"333728335450"
  br i1 %"333728335451", label %23, label %65

23:                                               ; preds = %20
  %.reload34 = load volatile i1, i1* %.reg2mem33, align 1
  br i1 %.reload34, label %24, label %33

24:                                               ; preds = %23
  %"333728335457" = load i32, i32* @"3337283352.7", align 4
  %"333728335458" = load i32, i32* @"3337283354.8", align 4
  %"333728335459" = icmp slt i32 %"333728335458", 10
  %"333728335460" = add i32 %"333728335457", 1
  %"333728335461" = mul i32 %"333728335460", %"333728335457"
  %"333728335462" = urem i32 %"333728335461", 2
  %"333728335463" = icmp eq i32 %"333728335462", 0
  %"333728335464" = or i1 %"333728335459", %"333728335463"
  br i1 %"333728335464", label %25, label %68

25:                                               ; preds = %68, %24
  %.reload8 = load volatile i32*, i32** %.reg2mem4, align 8
  %26 = load i32, i32* %.reload8, align 4
  %27 = add nsw i32 %26, 1
  %.reload7 = load volatile i32*, i32** %.reg2mem4, align 8
  store i32 %27, i32* %.reload7, align 4
  %.reload6 = load volatile i32*, i32** %.reg2mem4, align 8
  %28 = load i32, i32* %.reload6, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %.reload12 = load volatile i32*, i32** %.reg2mem10, align 8
  %30 = load i32, i32* %.reload12, align 4
  %31 = add nsw i32 %30, -1
  %.reload11 = load volatile i32*, i32** %.reg2mem10, align 8
  store i32 %31, i32* %.reload11, align 4
  %"333728335465" = load i32, i32* @"3337283352.9", align 4
  %"333728335466" = load i32, i32* @"3337283354.10", align 4
  %"333728335467" = icmp slt i32 %"333728335466", 10
  %"333728335468" = add i32 %"333728335465", 1
  %"333728335469" = mul i32 %"333728335468", %"333728335465"
  %"333728335470" = urem i32 %"333728335469", 2
  %"333728335471" = icmp eq i32 %"333728335470", 0
  %"333728335472" = or i1 %"333728335467", %"333728335471"
  br i1 %"333728335472", label %32, label %68

32:                                               ; preds = %25
  br label %19, !llvm.loop !2

33:                                               ; preds = %23
  %"333728335476" = load i32, i32* @"3337283352.11", align 4
  %"333728335477" = load i32, i32* @"3337283354.12", align 4
  %"333728335478" = icmp slt i32 %"333728335477", 10
  %"333728335479" = add i32 %"333728335476", 1
  %"333728335480" = mul i32 %"333728335479", %"333728335476"
  %"333728335481" = urem i32 %"333728335480", 2
  %"333728335482" = icmp eq i32 %"333728335481", 0
  %"333728335483" = or i1 %"333728335478", %"333728335482"
  br i1 %"333728335483", label %34, label %75

34:                                               ; preds = %75, %33
  %.reload5 = load volatile i32*, i32** %.reg2mem4, align 8
  %35 = load i32, i32* %.reload5, align 4
  %36 = icmp ne i32 %35, 4
  store i1 %36, i1* %.reg2mem73, align 1
  %"333728335484" = load i32, i32* @"3337283352.13", align 4
  %"333728335485" = load i32, i32* @"3337283354.14", align 4
  %"333728335486" = icmp slt i32 %"333728335485", 10
  %"333728335487" = add i32 %"333728335484", 1
  %"333728335488" = mul i32 %"333728335487", %"333728335484"
  %"333728335489" = urem i32 %"333728335488", 2
  %"333728335490" = icmp eq i32 %"333728335489", 0
  %"333728335491" = or i1 %"333728335486", %"333728335490"
  br i1 %"333728335491", label %37, label %75

37:                                               ; preds = %34
  %.reload74 = load volatile i1, i1* %.reg2mem73, align 1
  br i1 %.reload74, label %38, label %42

38:                                               ; preds = %37
  %"333728335492" = load i32, i32* @"3337283352.15", align 4
  %"333728335493" = load i32, i32* @"3337283354.16", align 4
  %"333728335494" = icmp slt i32 %"333728335493", 10
  %"333728335495" = add i32 %"333728335492", 1
  %"333728335496" = mul i32 %"333728335495", %"333728335492"
  %"333728335497" = urem i32 %"333728335496", 2
  %"333728335498" = icmp eq i32 %"333728335497", 0
  %"333728335499" = or i1 %"333728335494", %"333728335498"
  br i1 %"333728335499", label %39, label %78

39:                                               ; preds = %78, %38
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %.reload2 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload2, align 4
  %"3337283354100" = load i32, i32* @"3337283352.17", align 4
  %"3337283354101" = load i32, i32* @"3337283354.18", align 4
  %"3337283354102" = icmp slt i32 %"3337283354101", 10
  %"3337283354103" = add i32 %"3337283354100", 1
  %"3337283354104" = mul i32 %"3337283354103", %"3337283354100"
  %"3337283354105" = urem i32 %"3337283354104", 2
  %"3337283354106" = icmp eq i32 %"3337283354105", 0
  %"3337283354107" = or i1 %"3337283354102", %"3337283354106"
  br i1 %"3337283354107", label %41, label %78

41:                                               ; preds = %39
  br label %46

42:                                               ; preds = %37
  %"3337283354109" = load i32, i32* @"3337283352.19", align 4
  %"3337283354110" = load i32, i32* @"3337283354.20", align 4
  %"3337283354111" = icmp slt i32 %"3337283354110", 10
  %"3337283354112" = add i32 %"3337283354109", 1
  %"3337283354113" = mul i32 %"3337283354112", %"3337283354109"
  %"3337283354114" = urem i32 %"3337283354113", 2
  %"3337283354115" = icmp eq i32 %"3337283354114", 0
  %"3337283354116" = or i1 %"3337283354111", %"3337283354115"
  br i1 %"3337283354116", label %43, label %81

43:                                               ; preds = %81, %42
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %.reload1 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 -1, i32* %.reload1, align 4
  %"3337283354117" = load i32, i32* @"3337283352.21", align 4
  %"3337283354118" = load i32, i32* @"3337283354.22", align 4
  %"3337283354119" = icmp slt i32 %"3337283354118", 10
  %"3337283354120" = add i32 %"3337283354117", 1
  %"3337283354121" = mul i32 %"3337283354120", %"3337283354117"
  %"3337283354122" = urem i32 %"3337283354121", 2
  %"3337283354123" = icmp eq i32 %"3337283354122", 0
  %"3337283354124" = or i1 %"3337283354119", %"3337283354123"
  br i1 %"3337283354124", label %45, label %81

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %41
  %"3337283354128" = load i32, i32* @"3337283352.23", align 4
  %"3337283354129" = load i32, i32* @"3337283354.24", align 4
  %"3337283354130" = icmp slt i32 %"3337283354129", 10
  %"3337283354131" = add i32 %"3337283354128", 1
  %"3337283354132" = mul i32 %"3337283354131", %"3337283354128"
  %"3337283354133" = urem i32 %"3337283354132", 2
  %"3337283354134" = icmp eq i32 %"3337283354133", 0
  %"3337283354135" = or i1 %"3337283354130", %"3337283354134"
  br i1 %"3337283354135", label %47, label %83

47:                                               ; preds = %83, %46
  %.reload = load volatile i32*, i32** %.reg2mem, align 8
  %48 = load i32, i32* %.reload, align 4
  store i32 %48, i32* %.reg2mem125, align 4
  %"3337283354136" = load i32, i32* @"3337283352.25", align 4
  %"3337283354137" = load i32, i32* @"3337283354.26", align 4
  %"3337283354138" = icmp slt i32 %"3337283354137", 10
  %"3337283354139" = add i32 %"3337283354136", 1
  %"3337283354140" = mul i32 %"3337283354139", %"3337283354136"
  %"3337283354141" = urem i32 %"3337283354140", 2
  %"3337283354142" = icmp eq i32 %"3337283354141", 0
  %"3337283354143" = or i1 %"3337283354138", %"3337283354142"
  br i1 %"3337283354143", label %49, label %83

49:                                               ; preds = %47
  %.reload126 = load volatile i32, i32* %.reg2mem125, align 4
  ret i32 %.reload126

50:                                               ; preds = %3, %2
  %51 = alloca i32, align 4
  store i32* %51, i32** %.reg2mem, align 8
  %52 = alloca i32, align 4
  %53 = alloca i8**, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i32, align 4
  store i32* %55, i32** %.reg2mem4, align 8
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  store i32* %57, i32** %.reg2mem10, align 8
  %.reload315 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload315, align 4
  store i32 %0, i32* %52, align 4
  store i8** %1, i8*** %53, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load i8**, i8*** %53, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %54, align 8
  %62 = load i8*, i8** %54, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %.reload916 = load volatile i32*, i32** %.reg2mem4, align 8
  %64 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %.reload916)
  %.reload1417 = load volatile i32*, i32** %.reg2mem10, align 8
  store i32 10, i32* %.reload1417, align 4
  br label %3

65:                                               ; preds = %20, %19
  %.reload1335 = load volatile i32*, i32** %.reg2mem10, align 8
  %66 = load i32, i32* %.reload1335, align 4
  %67 = icmp ne i32 %66, 0
  store i1 %67, i1* %.reg2mem33, align 1
  br label %20

68:                                               ; preds = %25, %24
  %.reload852 = load volatile i32*, i32** %.reg2mem4, align 8
  %69 = load i32, i32* %.reload852, align 4
  %70 = add nsw i32 %69, 1
  %.reload753 = load volatile i32*, i32** %.reg2mem4, align 8
  store i32 %70, i32* %.reload753, align 4
  %.reload654 = load volatile i32*, i32** %.reg2mem4, align 8
  %71 = load i32, i32* %.reload654, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %.reload1255 = load volatile i32*, i32** %.reg2mem10, align 8
  %73 = load i32, i32* %.reload1255, align 4
  %74 = add nsw i32 %73, -1
  %.reload1156 = load volatile i32*, i32** %.reg2mem10, align 8
  store i32 %74, i32* %.reload1156, align 4
  br label %25

75:                                               ; preds = %34, %33
  %.reload575 = load volatile i32*, i32** %.reg2mem4, align 8
  %76 = load i32, i32* %.reload575, align 4
  %77 = icmp ne i32 %76, 4
  store i1 %77, i1* %.reg2mem73, align 1
  br label %34

78:                                               ; preds = %39, %38
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %80 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %80, align 4
  br label %39

81:                                               ; preds = %43, %42
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %.reload1108 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 -1, i32* %.reload1108, align 4
  br label %43

83:                                               ; preds = %47, %46
  %.reload127 = load volatile i32*, i32** %.reg2mem, align 8
  %84 = load i32, i32* %.reload127, align 4
  store i32 %84, i32* %.reg2mem125, align 4
  br label %47
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { mustprogress noinline norecurse optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.5"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
