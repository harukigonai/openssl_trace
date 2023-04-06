; ModuleID = '.bio_lib.o.bc'
source_filename = "bio_lib.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.crypto_ex_data_st = type { %struct.stack_st_void*, i32 }
%struct.stack_st_void = type { %struct.stack_st }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }

@.str = private unnamed_addr constant [10 x i8] c"bio_lib.c\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"BIO_free, bad reference count\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.bio_st* @BIO_new(%struct.bio_method_st* %0) #0 !dbg !103 {
  %2 = alloca %struct.bio_st*, align 8
  %3 = alloca %struct.bio_method_st*, align 8
  %4 = alloca %struct.bio_st*, align 8
  store %struct.bio_method_st* %0, %struct.bio_method_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_method_st** %3, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata %struct.bio_st** %4, metadata !108, metadata !DIExpression()), !dbg !109
  store %struct.bio_st* null, %struct.bio_st** %4, align 8, !dbg !109
  %5 = call i8* @CRYPTO_malloc(i32 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 70), !dbg !110
  %6 = bitcast i8* %5 to %struct.bio_st*, !dbg !111
  store %struct.bio_st* %6, %struct.bio_st** %4, align 8, !dbg !112
  %7 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !113
  %8 = icmp eq %struct.bio_st* %7, null, !dbg !115
  br i1 %8, label %9, label %10, !dbg !116

9:                                                ; preds = %1
  call void @ERR_put_error(i32 32, i32 108, i32 65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 73), !dbg !117
  store %struct.bio_st* null, %struct.bio_st** %2, align 8, !dbg !119
  br label %20, !dbg !119

10:                                               ; preds = %1
  %11 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !120
  %12 = load %struct.bio_method_st*, %struct.bio_method_st** %3, align 8, !dbg !122
  %13 = call i32 @BIO_set(%struct.bio_st* %11, %struct.bio_method_st* %12), !dbg !123
  %14 = icmp ne i32 %13, 0, !dbg !123
  br i1 %14, label %18, label %15, !dbg !124

15:                                               ; preds = %10
  %16 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !125
  %17 = bitcast %struct.bio_st* %16 to i8*, !dbg !125
  call void @CRYPTO_free(i8* %17), !dbg !125
  store %struct.bio_st* null, %struct.bio_st** %4, align 8, !dbg !127
  br label %18, !dbg !128

18:                                               ; preds = %15, %10
  %19 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !129
  store %struct.bio_st* %19, %struct.bio_st** %2, align 8, !dbg !130
  br label %20, !dbg !130

20:                                               ; preds = %18, %9
  %21 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !131
  ret %struct.bio_st* %21, !dbg !131
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @CRYPTO_malloc(i32, i8*, i32) #2

declare void @ERR_put_error(i32, i32, i32, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define i32 @BIO_set(%struct.bio_st* %0, %struct.bio_method_st* %1) #0 !dbg !132 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio_st*, align 8
  %5 = alloca %struct.bio_method_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %4, metadata !135, metadata !DIExpression()), !dbg !136
  store %struct.bio_method_st* %1, %struct.bio_method_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_method_st** %5, metadata !137, metadata !DIExpression()), !dbg !138
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** %5, align 8, !dbg !139
  %7 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !140
  %8 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %7, i32 0, i32 0, !dbg !141
  store %struct.bio_method_st* %6, %struct.bio_method_st** %8, align 8, !dbg !142
  %9 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !143
  %10 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %9, i32 0, i32 1, !dbg !144
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* null, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %10, align 8, !dbg !145
  %11 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !146
  %12 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %11, i32 0, i32 2, !dbg !147
  store i8* null, i8** %12, align 8, !dbg !148
  %13 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !149
  %14 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %13, i32 0, i32 3, !dbg !150
  store i32 0, i32* %14, align 8, !dbg !151
  %15 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !152
  %16 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %15, i32 0, i32 4, !dbg !153
  store i32 1, i32* %16, align 4, !dbg !154
  %17 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !155
  %18 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %17, i32 0, i32 5, !dbg !156
  store i32 0, i32* %18, align 8, !dbg !157
  %19 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !158
  %20 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %19, i32 0, i32 6, !dbg !159
  store i32 0, i32* %20, align 4, !dbg !160
  %21 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !161
  %22 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %21, i32 0, i32 7, !dbg !162
  store i32 0, i32* %22, align 8, !dbg !163
  %23 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !164
  %24 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %23, i32 0, i32 8, !dbg !165
  store i8* null, i8** %24, align 8, !dbg !166
  %25 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !167
  %26 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %25, i32 0, i32 10, !dbg !168
  store %struct.bio_st* null, %struct.bio_st** %26, align 8, !dbg !169
  %27 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !170
  %28 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %27, i32 0, i32 9, !dbg !171
  store %struct.bio_st* null, %struct.bio_st** %28, align 8, !dbg !172
  %29 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !173
  %30 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %29, i32 0, i32 11, !dbg !174
  store i32 1, i32* %30, align 8, !dbg !175
  %31 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !176
  %32 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %31, i32 0, i32 12, !dbg !177
  store i64 0, i64* %32, align 8, !dbg !178
  %33 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !179
  %34 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %33, i32 0, i32 13, !dbg !180
  store i64 0, i64* %34, align 8, !dbg !181
  %35 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !182
  %36 = bitcast %struct.bio_st* %35 to i8*, !dbg !182
  %37 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !183
  %38 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %37, i32 0, i32 14, !dbg !184
  %39 = call i32 @CRYPTO_new_ex_data(i32 0, i8* %36, %struct.crypto_ex_data_st* %38), !dbg !185
  %40 = load %struct.bio_method_st*, %struct.bio_method_st** %5, align 8, !dbg !186
  %41 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %40, i32 0, i32 7, !dbg !188
  %42 = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %41, align 8, !dbg !188
  %43 = icmp ne i32 (%struct.bio_st*)* %42, null, !dbg !189
  br i1 %43, label %44, label %57, !dbg !190

44:                                               ; preds = %2
  %45 = load %struct.bio_method_st*, %struct.bio_method_st** %5, align 8, !dbg !191
  %46 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %45, i32 0, i32 7, !dbg !193
  %47 = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %46, align 8, !dbg !193
  %48 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !194
  %49 = call i32 %47(%struct.bio_st* %48), !dbg !191
  %50 = icmp ne i32 %49, 0, !dbg !191
  br i1 %50, label %56, label %51, !dbg !195

51:                                               ; preds = %44
  %52 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !196
  %53 = bitcast %struct.bio_st* %52 to i8*, !dbg !196
  %54 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !198
  %55 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %54, i32 0, i32 14, !dbg !199
  call void @CRYPTO_free_ex_data(i32 0, i8* %53, %struct.crypto_ex_data_st* %55), !dbg !200
  store i32 0, i32* %3, align 4, !dbg !201
  br label %58, !dbg !201

56:                                               ; preds = %44
  br label %57, !dbg !202

57:                                               ; preds = %56, %2
  store i32 1, i32* %3, align 4, !dbg !203
  br label %58, !dbg !203

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %3, align 4, !dbg !204
  ret i32 %59, !dbg !204
}

declare void @CRYPTO_free(i8*) #2

declare i32 @CRYPTO_new_ex_data(i32, i8*, %struct.crypto_ex_data_st*) #2

declare void @CRYPTO_free_ex_data(i32, i8*, %struct.crypto_ex_data_st*) #2

; Function Attrs: noinline nounwind optnone
define i32 @BIO_free(%struct.bio_st* %0) #0 !dbg !205 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %4, metadata !208, metadata !DIExpression()), !dbg !209
  %5 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !210
  %6 = icmp eq %struct.bio_st* %5, null, !dbg !212
  br i1 %6, label %7, label %8, !dbg !213

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !214
  br label %63, !dbg !214

8:                                                ; preds = %1
  %9 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !215
  %10 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %9, i32 0, i32 11, !dbg !215
  %11 = call i32 @CRYPTO_add_lock(i32* %10, i32 -1, i32 21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 117), !dbg !215
  store i32 %11, i32* %4, align 4, !dbg !216
  %12 = load i32, i32* %4, align 4, !dbg !217
  %13 = icmp sgt i32 %12, 0, !dbg !219
  br i1 %13, label %14, label %15, !dbg !220

14:                                               ; preds = %8
  store i32 1, i32* %2, align 4, !dbg !221
  br label %63, !dbg !221

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4, !dbg !222
  %17 = icmp slt i32 %16, 0, !dbg !224
  br i1 %17, label %18, label %21, !dbg !225

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !226
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)), !dbg !228
  call void @abort() #4, !dbg !229
  unreachable, !dbg !229

21:                                               ; preds = %15
  %22 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !230
  %23 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %22, i32 0, i32 1, !dbg !232
  %24 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %23, align 8, !dbg !232
  %25 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %24, null, !dbg !233
  br i1 %25, label %26, label %36, !dbg !234

26:                                               ; preds = %21
  %27 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !235
  %28 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %27, i32 0, i32 1, !dbg !236
  %29 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %28, align 8, !dbg !236
  %30 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !237
  %31 = call i64 %29(%struct.bio_st* %30, i32 1, i8* null, i32 0, i64 0, i64 1), !dbg !235
  %32 = trunc i64 %31 to i32, !dbg !238
  store i32 %32, i32* %4, align 4, !dbg !239
  %33 = icmp sle i32 %32, 0, !dbg !240
  br i1 %33, label %34, label %36, !dbg !241

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4, !dbg !242
  store i32 %35, i32* %2, align 4, !dbg !243
  br label %63, !dbg !243

36:                                               ; preds = %26, %21
  %37 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !244
  %38 = bitcast %struct.bio_st* %37 to i8*, !dbg !244
  %39 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !245
  %40 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %39, i32 0, i32 14, !dbg !246
  call void @CRYPTO_free_ex_data(i32 0, i8* %38, %struct.crypto_ex_data_st* %40), !dbg !247
  %41 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !248
  %42 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %41, i32 0, i32 0, !dbg !250
  %43 = load %struct.bio_method_st*, %struct.bio_method_st** %42, align 8, !dbg !250
  %44 = icmp eq %struct.bio_method_st* %43, null, !dbg !251
  br i1 %44, label %52, label %45, !dbg !252

45:                                               ; preds = %36
  %46 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !253
  %47 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %46, i32 0, i32 0, !dbg !254
  %48 = load %struct.bio_method_st*, %struct.bio_method_st** %47, align 8, !dbg !254
  %49 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %48, i32 0, i32 8, !dbg !255
  %50 = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %49, align 8, !dbg !255
  %51 = icmp eq i32 (%struct.bio_st*)* %50, null, !dbg !256
  br i1 %51, label %52, label %53, !dbg !257

52:                                               ; preds = %45, %36
  store i32 1, i32* %2, align 4, !dbg !258
  br label %63, !dbg !258

53:                                               ; preds = %45
  %54 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !259
  %55 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %54, i32 0, i32 0, !dbg !260
  %56 = load %struct.bio_method_st*, %struct.bio_method_st** %55, align 8, !dbg !260
  %57 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %56, i32 0, i32 8, !dbg !261
  %58 = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %57, align 8, !dbg !261
  %59 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !262
  %60 = call i32 %58(%struct.bio_st* %59), !dbg !259
  %61 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !263
  %62 = bitcast %struct.bio_st* %61 to i8*, !dbg !263
  call void @CRYPTO_free(i8* %62), !dbg !263
  store i32 1, i32* %2, align 4, !dbg !264
  br label %63, !dbg !264

63:                                               ; preds = %53, %52, %34, %14, %7
  %64 = load i32, i32* %2, align 4, !dbg !265
  ret i32 %64, !dbg !265
}

declare i32 @CRYPTO_add_lock(i32*, i32, i32, i8*, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind optnone
define void @BIO_vfree(%struct.bio_st* %0) #0 !dbg !266 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !269, metadata !DIExpression()), !dbg !270
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !271
  %4 = call i32 @BIO_free(%struct.bio_st* %3), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone
define void @BIO_clear_flags(%struct.bio_st* %0, i32 %1) #0 !dbg !274 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !277, metadata !DIExpression()), !dbg !278
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !279, metadata !DIExpression()), !dbg !280
  %5 = load i32, i32* %4, align 4, !dbg !281
  %6 = xor i32 %5, -1, !dbg !282
  %7 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !283
  %8 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %7, i32 0, i32 5, !dbg !284
  %9 = load i32, i32* %8, align 8, !dbg !285
  %10 = and i32 %9, %6, !dbg !285
  store i32 %10, i32* %8, align 8, !dbg !285
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_test_flags(%struct.bio_st* %0, i32 %1) #0 !dbg !287 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !292, metadata !DIExpression()), !dbg !293
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !294, metadata !DIExpression()), !dbg !295
  %5 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !296
  %6 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %5, i32 0, i32 5, !dbg !297
  %7 = load i32, i32* %6, align 8, !dbg !297
  %8 = load i32, i32* %4, align 4, !dbg !298
  %9 = and i32 %7, %8, !dbg !299
  ret i32 %9, !dbg !300
}

; Function Attrs: noinline nounwind optnone
define void @BIO_set_flags(%struct.bio_st* %0, i32 %1) #0 !dbg !301 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !302, metadata !DIExpression()), !dbg !303
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !304, metadata !DIExpression()), !dbg !305
  %5 = load i32, i32* %4, align 4, !dbg !306
  %6 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !307
  %7 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %6, i32 0, i32 5, !dbg !308
  %8 = load i32, i32* %7, align 8, !dbg !309
  %9 = or i32 %8, %5, !dbg !309
  store i32 %9, i32* %7, align 8, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone
define i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* @BIO_get_callback(%struct.bio_st* %0) #0 !dbg !311 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !314, metadata !DIExpression()), !dbg !315
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !316
  %4 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %3, i32 0, i32 1, !dbg !317
  %5 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %4, align 8, !dbg !317
  ret i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %5, !dbg !318
}

; Function Attrs: noinline nounwind optnone
define void @BIO_set_callback(%struct.bio_st* %0, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %1) #0 !dbg !319 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !322, metadata !DIExpression()), !dbg !323
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %1, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %4, align 8
  call void @llvm.dbg.declare(metadata i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %4, metadata !324, metadata !DIExpression()), !dbg !325
  %5 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %4, align 8, !dbg !326
  %6 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !327
  %7 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %6, i32 0, i32 1, !dbg !328
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %5, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, align 8, !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone
define void @BIO_set_callback_arg(%struct.bio_st* %0, i8* %1) #0 !dbg !331 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i8*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !334, metadata !DIExpression()), !dbg !335
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !336, metadata !DIExpression()), !dbg !337
  %5 = load i8*, i8** %4, align 8, !dbg !338
  %6 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !339
  %7 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %6, i32 0, i32 2, !dbg !340
  store i8* %5, i8** %7, align 8, !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone
define i8* @BIO_get_callback_arg(%struct.bio_st* %0) #0 !dbg !343 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !346, metadata !DIExpression()), !dbg !347
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !348
  %4 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %3, i32 0, i32 2, !dbg !349
  %5 = load i8*, i8** %4, align 8, !dbg !349
  ret i8* %5, !dbg !350
}

; Function Attrs: noinline nounwind optnone
define i8* @BIO_method_name(%struct.bio_st* %0) #0 !dbg !351 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !354, metadata !DIExpression()), !dbg !355
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !356
  %4 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %3, i32 0, i32 0, !dbg !357
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** %4, align 8, !dbg !357
  %6 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %5, i32 0, i32 1, !dbg !358
  %7 = load i8*, i8** %6, align 8, !dbg !358
  ret i8* %7, !dbg !359
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_method_type(%struct.bio_st* %0) #0 !dbg !360 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !363, metadata !DIExpression()), !dbg !364
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !365
  %4 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %3, i32 0, i32 0, !dbg !366
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** %4, align 8, !dbg !366
  %6 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %5, i32 0, i32 0, !dbg !367
  %7 = load i32, i32* %6, align 8, !dbg !367
  ret i32 %7, !dbg !368
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_read(%struct.bio_st* %0, i8* %1, i32 %2) #0 !dbg !369 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !372, metadata !DIExpression()), !dbg !373
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !374, metadata !DIExpression()), !dbg !375
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %8, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, metadata !380, metadata !DIExpression()), !dbg !384
  %10 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !385
  %11 = icmp eq %struct.bio_st* %10, null, !dbg !387
  br i1 %11, label %24, label %12, !dbg !388

12:                                               ; preds = %3
  %13 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !389
  %14 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %13, i32 0, i32 0, !dbg !390
  %15 = load %struct.bio_method_st*, %struct.bio_method_st** %14, align 8, !dbg !390
  %16 = icmp eq %struct.bio_method_st* %15, null, !dbg !391
  br i1 %16, label %24, label %17, !dbg !392

17:                                               ; preds = %12
  %18 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !393
  %19 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %18, i32 0, i32 0, !dbg !394
  %20 = load %struct.bio_method_st*, %struct.bio_method_st** %19, align 8, !dbg !394
  %21 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %20, i32 0, i32 3, !dbg !395
  %22 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %21, align 8, !dbg !395
  %23 = icmp eq i32 (%struct.bio_st*, i8*, i32)* %22, null, !dbg !396
  br i1 %23, label %24, label %25, !dbg !397

24:                                               ; preds = %17, %12, %3
  call void @ERR_put_error(i32 32, i32 111, i32 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 197), !dbg !398
  store i32 -2, i32* %4, align 4, !dbg !400
  br label %80, !dbg !400

25:                                               ; preds = %17
  %26 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !401
  %27 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %26, i32 0, i32 1, !dbg !402
  %28 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %27, align 8, !dbg !402
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %28, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !403
  %29 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !404
  %30 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %29, null, !dbg !406
  br i1 %30, label %31, label %41, !dbg !407

31:                                               ; preds = %25
  %32 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !408
  %33 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !409
  %34 = load i8*, i8** %6, align 8, !dbg !410
  %35 = load i32, i32* %7, align 4, !dbg !411
  %36 = call i64 %32(%struct.bio_st* %33, i32 2, i8* %34, i32 %35, i64 0, i64 1), !dbg !408
  %37 = trunc i64 %36 to i32, !dbg !412
  store i32 %37, i32* %8, align 4, !dbg !413
  %38 = icmp sle i32 %37, 0, !dbg !414
  br i1 %38, label %39, label %41, !dbg !415

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4, !dbg !416
  store i32 %40, i32* %4, align 4, !dbg !417
  br label %80, !dbg !417

41:                                               ; preds = %31, %25
  %42 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !418
  %43 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %42, i32 0, i32 3, !dbg !420
  %44 = load i32, i32* %43, align 8, !dbg !420
  %45 = icmp ne i32 %44, 0, !dbg !418
  br i1 %45, label %47, label %46, !dbg !421

46:                                               ; preds = %41
  call void @ERR_put_error(i32 32, i32 111, i32 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 208), !dbg !422
  store i32 -2, i32* %4, align 4, !dbg !424
  br label %80, !dbg !424

47:                                               ; preds = %41
  %48 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !425
  %49 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %48, i32 0, i32 0, !dbg !426
  %50 = load %struct.bio_method_st*, %struct.bio_method_st** %49, align 8, !dbg !426
  %51 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %50, i32 0, i32 3, !dbg !427
  %52 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %51, align 8, !dbg !427
  %53 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !428
  %54 = load i8*, i8** %6, align 8, !dbg !429
  %55 = load i32, i32* %7, align 4, !dbg !430
  %56 = call i32 %52(%struct.bio_st* %53, i8* %54, i32 %55), !dbg !425
  store i32 %56, i32* %8, align 4, !dbg !431
  %57 = load i32, i32* %8, align 4, !dbg !432
  %58 = icmp sgt i32 %57, 0, !dbg !434
  br i1 %58, label %59, label %66, !dbg !435

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4, !dbg !436
  %61 = sext i32 %60 to i64, !dbg !437
  %62 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !438
  %63 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %62, i32 0, i32 12, !dbg !439
  %64 = load i64, i64* %63, align 8, !dbg !440
  %65 = add i64 %64, %61, !dbg !440
  store i64 %65, i64* %63, align 8, !dbg !440
  br label %66, !dbg !438

66:                                               ; preds = %59, %47
  %67 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !441
  %68 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %67, null, !dbg !443
  br i1 %68, label %69, label %78, !dbg !444

69:                                               ; preds = %66
  %70 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !445
  %71 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !446
  %72 = load i8*, i8** %6, align 8, !dbg !447
  %73 = load i32, i32* %7, align 4, !dbg !448
  %74 = load i32, i32* %8, align 4, !dbg !449
  %75 = sext i32 %74 to i64, !dbg !450
  %76 = call i64 %70(%struct.bio_st* %71, i32 130, i8* %72, i32 %73, i64 0, i64 %75), !dbg !445
  %77 = trunc i64 %76 to i32, !dbg !451
  store i32 %77, i32* %8, align 4, !dbg !452
  br label %78, !dbg !453

78:                                               ; preds = %69, %66
  %79 = load i32, i32* %8, align 4, !dbg !454
  store i32 %79, i32* %4, align 4, !dbg !455
  br label %80, !dbg !455

80:                                               ; preds = %78, %46, %39, %24
  %81 = load i32, i32* %4, align 4, !dbg !456
  ret i32 %81, !dbg !456
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_write(%struct.bio_st* %0, i8* %1, i32 %2) #0 !dbg !457 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !460, metadata !DIExpression()), !dbg !461
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !462, metadata !DIExpression()), !dbg !463
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata i32* %8, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, metadata !468, metadata !DIExpression()), !dbg !469
  %10 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !470
  %11 = icmp eq %struct.bio_st* %10, null, !dbg !472
  br i1 %11, label %12, label %13, !dbg !473

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !474
  br label %81, !dbg !474

13:                                               ; preds = %3
  %14 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !475
  %15 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %14, i32 0, i32 1, !dbg !476
  %16 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %15, align 8, !dbg !476
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %16, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !477
  %17 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !478
  %18 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %17, i32 0, i32 0, !dbg !480
  %19 = load %struct.bio_method_st*, %struct.bio_method_st** %18, align 8, !dbg !480
  %20 = icmp eq %struct.bio_method_st* %19, null, !dbg !481
  br i1 %20, label %28, label %21, !dbg !482

21:                                               ; preds = %13
  %22 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !483
  %23 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %22, i32 0, i32 0, !dbg !484
  %24 = load %struct.bio_method_st*, %struct.bio_method_st** %23, align 8, !dbg !484
  %25 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %24, i32 0, i32 2, !dbg !485
  %26 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %25, align 8, !dbg !485
  %27 = icmp eq i32 (%struct.bio_st*, i8*, i32)* %26, null, !dbg !486
  br i1 %27, label %28, label %29, !dbg !487

28:                                               ; preds = %21, %13
  call void @ERR_put_error(i32 32, i32 113, i32 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 233), !dbg !488
  store i32 -2, i32* %4, align 4, !dbg !490
  br label %81, !dbg !490

29:                                               ; preds = %21
  %30 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !491
  %31 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %30, null, !dbg !493
  br i1 %31, label %32, label %42, !dbg !494

32:                                               ; preds = %29
  %33 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !495
  %34 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !496
  %35 = load i8*, i8** %6, align 8, !dbg !497
  %36 = load i32, i32* %7, align 4, !dbg !498
  %37 = call i64 %33(%struct.bio_st* %34, i32 3, i8* %35, i32 %36, i64 0, i64 1), !dbg !495
  %38 = trunc i64 %37 to i32, !dbg !499
  store i32 %38, i32* %8, align 4, !dbg !500
  %39 = icmp sle i32 %38, 0, !dbg !501
  br i1 %39, label %40, label %42, !dbg !502

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4, !dbg !503
  store i32 %41, i32* %4, align 4, !dbg !504
  br label %81, !dbg !504

42:                                               ; preds = %32, %29
  %43 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !505
  %44 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %43, i32 0, i32 3, !dbg !507
  %45 = load i32, i32* %44, align 8, !dbg !507
  %46 = icmp ne i32 %45, 0, !dbg !505
  br i1 %46, label %48, label %47, !dbg !508

47:                                               ; preds = %42
  call void @ERR_put_error(i32 32, i32 113, i32 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 243), !dbg !509
  store i32 -2, i32* %4, align 4, !dbg !511
  br label %81, !dbg !511

48:                                               ; preds = %42
  %49 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !512
  %50 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %49, i32 0, i32 0, !dbg !513
  %51 = load %struct.bio_method_st*, %struct.bio_method_st** %50, align 8, !dbg !513
  %52 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %51, i32 0, i32 2, !dbg !514
  %53 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %52, align 8, !dbg !514
  %54 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !515
  %55 = load i8*, i8** %6, align 8, !dbg !516
  %56 = load i32, i32* %7, align 4, !dbg !517
  %57 = call i32 %53(%struct.bio_st* %54, i8* %55, i32 %56), !dbg !512
  store i32 %57, i32* %8, align 4, !dbg !518
  %58 = load i32, i32* %8, align 4, !dbg !519
  %59 = icmp sgt i32 %58, 0, !dbg !521
  br i1 %59, label %60, label %67, !dbg !522

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4, !dbg !523
  %62 = sext i32 %61 to i64, !dbg !524
  %63 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !525
  %64 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %63, i32 0, i32 13, !dbg !526
  %65 = load i64, i64* %64, align 8, !dbg !527
  %66 = add i64 %65, %62, !dbg !527
  store i64 %66, i64* %64, align 8, !dbg !527
  br label %67, !dbg !525

67:                                               ; preds = %60, %48
  %68 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !528
  %69 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %68, null, !dbg !530
  br i1 %69, label %70, label %79, !dbg !531

70:                                               ; preds = %67
  %71 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !532
  %72 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !533
  %73 = load i8*, i8** %6, align 8, !dbg !534
  %74 = load i32, i32* %7, align 4, !dbg !535
  %75 = load i32, i32* %8, align 4, !dbg !536
  %76 = sext i32 %75 to i64, !dbg !537
  %77 = call i64 %71(%struct.bio_st* %72, i32 131, i8* %73, i32 %74, i64 0, i64 %76), !dbg !532
  %78 = trunc i64 %77 to i32, !dbg !538
  store i32 %78, i32* %8, align 4, !dbg !539
  br label %79, !dbg !540

79:                                               ; preds = %70, %67
  %80 = load i32, i32* %8, align 4, !dbg !541
  store i32 %80, i32* %4, align 4, !dbg !542
  br label %81, !dbg !542

81:                                               ; preds = %79, %47, %40, %28, %12
  %82 = load i32, i32* %4, align 4, !dbg !543
  ret i32 %82, !dbg !543
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_puts(%struct.bio_st* %0, i8* %1) #0 !dbg !544 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio_st*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %4, metadata !545, metadata !DIExpression()), !dbg !546
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata i32* %6, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, metadata !551, metadata !DIExpression()), !dbg !552
  %8 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !553
  %9 = icmp eq %struct.bio_st* %8, null, !dbg !555
  br i1 %9, label %22, label %10, !dbg !556

10:                                               ; preds = %2
  %11 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !557
  %12 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %11, i32 0, i32 0, !dbg !558
  %13 = load %struct.bio_method_st*, %struct.bio_method_st** %12, align 8, !dbg !558
  %14 = icmp eq %struct.bio_method_st* %13, null, !dbg !559
  br i1 %14, label %22, label %15, !dbg !560

15:                                               ; preds = %10
  %16 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !561
  %17 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %16, i32 0, i32 0, !dbg !562
  %18 = load %struct.bio_method_st*, %struct.bio_method_st** %17, align 8, !dbg !562
  %19 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %18, i32 0, i32 4, !dbg !563
  %20 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %19, align 8, !dbg !563
  %21 = icmp eq i32 (%struct.bio_st*, i8*)* %20, null, !dbg !564
  br i1 %21, label %22, label %23, !dbg !565

22:                                               ; preds = %15, %10, %2
  call void @ERR_put_error(i32 32, i32 110, i32 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 264), !dbg !566
  store i32 -2, i32* %3, align 4, !dbg !568
  br label %75, !dbg !568

23:                                               ; preds = %15
  %24 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !569
  %25 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %24, i32 0, i32 1, !dbg !570
  %26 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %25, align 8, !dbg !570
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %26, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, align 8, !dbg !571
  %27 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, align 8, !dbg !572
  %28 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %27, null, !dbg !574
  br i1 %28, label %29, label %38, !dbg !575

29:                                               ; preds = %23
  %30 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, align 8, !dbg !576
  %31 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !577
  %32 = load i8*, i8** %5, align 8, !dbg !578
  %33 = call i64 %30(%struct.bio_st* %31, i32 4, i8* %32, i32 0, i64 0, i64 1), !dbg !576
  %34 = trunc i64 %33 to i32, !dbg !579
  store i32 %34, i32* %6, align 4, !dbg !580
  %35 = icmp sle i32 %34, 0, !dbg !581
  br i1 %35, label %36, label %38, !dbg !582

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4, !dbg !583
  store i32 %37, i32* %3, align 4, !dbg !584
  br label %75, !dbg !584

38:                                               ; preds = %29, %23
  %39 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !585
  %40 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %39, i32 0, i32 3, !dbg !587
  %41 = load i32, i32* %40, align 8, !dbg !587
  %42 = icmp ne i32 %41, 0, !dbg !585
  br i1 %42, label %44, label %43, !dbg !588

43:                                               ; preds = %38
  call void @ERR_put_error(i32 32, i32 110, i32 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 276), !dbg !589
  store i32 -2, i32* %3, align 4, !dbg !591
  br label %75, !dbg !591

44:                                               ; preds = %38
  %45 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !592
  %46 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %45, i32 0, i32 0, !dbg !593
  %47 = load %struct.bio_method_st*, %struct.bio_method_st** %46, align 8, !dbg !593
  %48 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %47, i32 0, i32 4, !dbg !594
  %49 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %48, align 8, !dbg !594
  %50 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !595
  %51 = load i8*, i8** %5, align 8, !dbg !596
  %52 = call i32 %49(%struct.bio_st* %50, i8* %51), !dbg !592
  store i32 %52, i32* %6, align 4, !dbg !597
  %53 = load i32, i32* %6, align 4, !dbg !598
  %54 = icmp sgt i32 %53, 0, !dbg !600
  br i1 %54, label %55, label %62, !dbg !601

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4, !dbg !602
  %57 = sext i32 %56 to i64, !dbg !603
  %58 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !604
  %59 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %58, i32 0, i32 13, !dbg !605
  %60 = load i64, i64* %59, align 8, !dbg !606
  %61 = add i64 %60, %57, !dbg !606
  store i64 %61, i64* %59, align 8, !dbg !606
  br label %62, !dbg !604

62:                                               ; preds = %55, %44
  %63 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, align 8, !dbg !607
  %64 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %63, null, !dbg !609
  br i1 %64, label %65, label %73, !dbg !610

65:                                               ; preds = %62
  %66 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, align 8, !dbg !611
  %67 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !612
  %68 = load i8*, i8** %5, align 8, !dbg !613
  %69 = load i32, i32* %6, align 4, !dbg !614
  %70 = sext i32 %69 to i64, !dbg !615
  %71 = call i64 %66(%struct.bio_st* %67, i32 132, i8* %68, i32 0, i64 0, i64 %70), !dbg !611
  %72 = trunc i64 %71 to i32, !dbg !616
  store i32 %72, i32* %6, align 4, !dbg !617
  br label %73, !dbg !618

73:                                               ; preds = %65, %62
  %74 = load i32, i32* %6, align 4, !dbg !619
  store i32 %74, i32* %3, align 4, !dbg !620
  br label %75, !dbg !620

75:                                               ; preds = %73, %43, %36, %22
  %76 = load i32, i32* %3, align 4, !dbg !621
  ret i32 %76, !dbg !621
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_gets(%struct.bio_st* %0, i8* %1, i32 %2) #0 !dbg !622 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !623, metadata !DIExpression()), !dbg !624
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !625, metadata !DIExpression()), !dbg !626
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !627, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.declare(metadata i32* %8, metadata !629, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, metadata !631, metadata !DIExpression()), !dbg !632
  %10 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !633
  %11 = icmp eq %struct.bio_st* %10, null, !dbg !635
  br i1 %11, label %24, label %12, !dbg !636

12:                                               ; preds = %3
  %13 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !637
  %14 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %13, i32 0, i32 0, !dbg !638
  %15 = load %struct.bio_method_st*, %struct.bio_method_st** %14, align 8, !dbg !638
  %16 = icmp eq %struct.bio_method_st* %15, null, !dbg !639
  br i1 %16, label %24, label %17, !dbg !640

17:                                               ; preds = %12
  %18 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !641
  %19 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %18, i32 0, i32 0, !dbg !642
  %20 = load %struct.bio_method_st*, %struct.bio_method_st** %19, align 8, !dbg !642
  %21 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %20, i32 0, i32 5, !dbg !643
  %22 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %21, align 8, !dbg !643
  %23 = icmp eq i32 (%struct.bio_st*, i8*, i32)* %22, null, !dbg !644
  br i1 %23, label %24, label %25, !dbg !645

24:                                               ; preds = %17, %12, %3
  call void @ERR_put_error(i32 32, i32 104, i32 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 297), !dbg !646
  store i32 -2, i32* %4, align 4, !dbg !648
  br label %70, !dbg !648

25:                                               ; preds = %17
  %26 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !649
  %27 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %26, i32 0, i32 1, !dbg !650
  %28 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %27, align 8, !dbg !650
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %28, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !651
  %29 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !652
  %30 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %29, null, !dbg !654
  br i1 %30, label %31, label %41, !dbg !655

31:                                               ; preds = %25
  %32 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !656
  %33 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !657
  %34 = load i8*, i8** %6, align 8, !dbg !658
  %35 = load i32, i32* %7, align 4, !dbg !659
  %36 = call i64 %32(%struct.bio_st* %33, i32 5, i8* %34, i32 %35, i64 0, i64 1), !dbg !656
  %37 = trunc i64 %36 to i32, !dbg !660
  store i32 %37, i32* %8, align 4, !dbg !661
  %38 = icmp sle i32 %37, 0, !dbg !662
  br i1 %38, label %39, label %41, !dbg !663

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4, !dbg !664
  store i32 %40, i32* %4, align 4, !dbg !665
  br label %70, !dbg !665

41:                                               ; preds = %31, %25
  %42 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !666
  %43 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %42, i32 0, i32 3, !dbg !668
  %44 = load i32, i32* %43, align 8, !dbg !668
  %45 = icmp ne i32 %44, 0, !dbg !666
  br i1 %45, label %47, label %46, !dbg !669

46:                                               ; preds = %41
  call void @ERR_put_error(i32 32, i32 104, i32 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 309), !dbg !670
  store i32 -2, i32* %4, align 4, !dbg !672
  br label %70, !dbg !672

47:                                               ; preds = %41
  %48 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !673
  %49 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %48, i32 0, i32 0, !dbg !674
  %50 = load %struct.bio_method_st*, %struct.bio_method_st** %49, align 8, !dbg !674
  %51 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %50, i32 0, i32 5, !dbg !675
  %52 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %51, align 8, !dbg !675
  %53 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !676
  %54 = load i8*, i8** %6, align 8, !dbg !677
  %55 = load i32, i32* %7, align 4, !dbg !678
  %56 = call i32 %52(%struct.bio_st* %53, i8* %54, i32 %55), !dbg !673
  store i32 %56, i32* %8, align 4, !dbg !679
  %57 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !680
  %58 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %57, null, !dbg !682
  br i1 %58, label %59, label %68, !dbg !683

59:                                               ; preds = %47
  %60 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !684
  %61 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !685
  %62 = load i8*, i8** %6, align 8, !dbg !686
  %63 = load i32, i32* %7, align 4, !dbg !687
  %64 = load i32, i32* %8, align 4, !dbg !688
  %65 = sext i32 %64 to i64, !dbg !689
  %66 = call i64 %60(%struct.bio_st* %61, i32 133, i8* %62, i32 %63, i64 0, i64 %65), !dbg !684
  %67 = trunc i64 %66 to i32, !dbg !690
  store i32 %67, i32* %8, align 4, !dbg !691
  br label %68, !dbg !692

68:                                               ; preds = %59, %47
  %69 = load i32, i32* %8, align 4, !dbg !693
  store i32 %69, i32* %4, align 4, !dbg !694
  br label %70, !dbg !694

70:                                               ; preds = %68, %46, %39, %24
  %71 = load i32, i32* %4, align 4, !dbg !695
  ret i32 %71, !dbg !695
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_indent(%struct.bio_st* %0, i32 %1, i32 %2) #0 !dbg !696 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !699, metadata !DIExpression()), !dbg !700
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !701, metadata !DIExpression()), !dbg !702
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !703, metadata !DIExpression()), !dbg !704
  %8 = load i32, i32* %6, align 4, !dbg !705
  %9 = icmp slt i32 %8, 0, !dbg !707
  br i1 %9, label %10, label %11, !dbg !708

10:                                               ; preds = %3
  store i32 0, i32* %6, align 4, !dbg !709
  br label %11, !dbg !710

11:                                               ; preds = %10, %3
  %12 = load i32, i32* %6, align 4, !dbg !711
  %13 = load i32, i32* %7, align 4, !dbg !713
  %14 = icmp sgt i32 %12, %13, !dbg !714
  br i1 %14, label %15, label %17, !dbg !715

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4, !dbg !716
  store i32 %16, i32* %6, align 4, !dbg !717
  br label %17, !dbg !718

17:                                               ; preds = %15, %11
  br label %18, !dbg !719

18:                                               ; preds = %27, %17
  %19 = load i32, i32* %6, align 4, !dbg !720
  %20 = add nsw i32 %19, -1, !dbg !720
  store i32 %20, i32* %6, align 4, !dbg !720
  %21 = icmp ne i32 %19, 0, !dbg !719
  br i1 %21, label %22, label %28, !dbg !719

22:                                               ; preds = %18
  %23 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !721
  %24 = call i32 @BIO_puts(%struct.bio_st* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !723
  %25 = icmp ne i32 %24, 1, !dbg !724
  br i1 %25, label %26, label %27, !dbg !725

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4, !dbg !726
  br label %29, !dbg !726

27:                                               ; preds = %22
  br label %18, !dbg !719, !llvm.loop !727

28:                                               ; preds = %18
  store i32 1, i32* %4, align 4, !dbg !729
  br label %29, !dbg !729

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %4, align 4, !dbg !730
  ret i32 %30, !dbg !730
}

; Function Attrs: noinline nounwind optnone
define i64 @BIO_int_ctrl(%struct.bio_st* %0, i32 %1, i64 %2, i32 %3) #0 !dbg !731 {
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !734, metadata !DIExpression()), !dbg !735
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !736, metadata !DIExpression()), !dbg !737
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !738, metadata !DIExpression()), !dbg !739
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata i32* %9, metadata !742, metadata !DIExpression()), !dbg !743
  %10 = load i32, i32* %8, align 4, !dbg !744
  store i32 %10, i32* %9, align 4, !dbg !745
  %11 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !746
  %12 = load i32, i32* %6, align 4, !dbg !747
  %13 = load i64, i64* %7, align 8, !dbg !748
  %14 = bitcast i32* %9 to i8*, !dbg !749
  %15 = call i64 @BIO_ctrl(%struct.bio_st* %11, i32 %12, i64 %13, i8* %14), !dbg !750
  ret i64 %15, !dbg !751
}

; Function Attrs: noinline nounwind optnone
define i64 @BIO_ctrl(%struct.bio_st* %0, i32 %1, i64 %2, i8* %3) #0 !dbg !752 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.bio_st*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %6, metadata !753, metadata !DIExpression()), !dbg !754
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !755, metadata !DIExpression()), !dbg !756
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !757, metadata !DIExpression()), !dbg !758
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata i64* %10, metadata !761, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %11, metadata !763, metadata !DIExpression()), !dbg !764
  %12 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !765
  %13 = icmp eq %struct.bio_st* %12, null, !dbg !767
  br i1 %13, label %14, label %15, !dbg !768

14:                                               ; preds = %4
  store i64 0, i64* %5, align 8, !dbg !769
  br label %67, !dbg !769

15:                                               ; preds = %4
  %16 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !770
  %17 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %16, i32 0, i32 0, !dbg !772
  %18 = load %struct.bio_method_st*, %struct.bio_method_st** %17, align 8, !dbg !772
  %19 = icmp eq %struct.bio_method_st* %18, null, !dbg !773
  br i1 %19, label %27, label %20, !dbg !774

20:                                               ; preds = %15
  %21 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !775
  %22 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %21, i32 0, i32 0, !dbg !776
  %23 = load %struct.bio_method_st*, %struct.bio_method_st** %22, align 8, !dbg !776
  %24 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %23, i32 0, i32 6, !dbg !777
  %25 = load i64 (%struct.bio_st*, i32, i64, i8*)*, i64 (%struct.bio_st*, i32, i64, i8*)** %24, align 8, !dbg !777
  %26 = icmp eq i64 (%struct.bio_st*, i32, i64, i8*)* %25, null, !dbg !778
  br i1 %26, label %27, label %28, !dbg !779

27:                                               ; preds = %20, %15
  call void @ERR_put_error(i32 32, i32 103, i32 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 360), !dbg !780
  store i64 -2, i64* %5, align 8, !dbg !782
  br label %67, !dbg !782

28:                                               ; preds = %20
  %29 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !783
  %30 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %29, i32 0, i32 1, !dbg !784
  %31 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %30, align 8, !dbg !784
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %31, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %11, align 8, !dbg !785
  %32 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %11, align 8, !dbg !786
  %33 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %32, null, !dbg !788
  br i1 %33, label %34, label %44, !dbg !789

34:                                               ; preds = %28
  %35 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %11, align 8, !dbg !790
  %36 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !791
  %37 = load i8*, i8** %9, align 8, !dbg !792
  %38 = load i32, i32* %7, align 4, !dbg !793
  %39 = load i64, i64* %8, align 8, !dbg !794
  %40 = call i64 %35(%struct.bio_st* %36, i32 6, i8* %37, i32 %38, i64 %39, i64 1), !dbg !790
  store i64 %40, i64* %10, align 8, !dbg !795
  %41 = icmp sle i64 %40, 0, !dbg !796
  br i1 %41, label %42, label %44, !dbg !797

42:                                               ; preds = %34
  %43 = load i64, i64* %10, align 8, !dbg !798
  store i64 %43, i64* %5, align 8, !dbg !799
  br label %67, !dbg !799

44:                                               ; preds = %34, %28
  %45 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !800
  %46 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %45, i32 0, i32 0, !dbg !801
  %47 = load %struct.bio_method_st*, %struct.bio_method_st** %46, align 8, !dbg !801
  %48 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %47, i32 0, i32 6, !dbg !802
  %49 = load i64 (%struct.bio_st*, i32, i64, i8*)*, i64 (%struct.bio_st*, i32, i64, i8*)** %48, align 8, !dbg !802
  %50 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !803
  %51 = load i32, i32* %7, align 4, !dbg !804
  %52 = load i64, i64* %8, align 8, !dbg !805
  %53 = load i8*, i8** %9, align 8, !dbg !806
  %54 = call i64 %49(%struct.bio_st* %50, i32 %51, i64 %52, i8* %53), !dbg !800
  store i64 %54, i64* %10, align 8, !dbg !807
  %55 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %11, align 8, !dbg !808
  %56 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %55, null, !dbg !810
  br i1 %56, label %57, label %65, !dbg !811

57:                                               ; preds = %44
  %58 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %11, align 8, !dbg !812
  %59 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !813
  %60 = load i8*, i8** %9, align 8, !dbg !814
  %61 = load i32, i32* %7, align 4, !dbg !815
  %62 = load i64, i64* %8, align 8, !dbg !816
  %63 = load i64, i64* %10, align 8, !dbg !817
  %64 = call i64 %58(%struct.bio_st* %59, i32 134, i8* %60, i32 %61, i64 %62, i64 %63), !dbg !812
  store i64 %64, i64* %10, align 8, !dbg !818
  br label %65, !dbg !819

65:                                               ; preds = %57, %44
  %66 = load i64, i64* %10, align 8, !dbg !820
  store i64 %66, i64* %5, align 8, !dbg !821
  br label %67, !dbg !821

67:                                               ; preds = %65, %42, %27, %14
  %68 = load i64, i64* %5, align 8, !dbg !822
  ret i64 %68, !dbg !822
}

; Function Attrs: noinline nounwind optnone
define i8* @BIO_ptr_ctrl(%struct.bio_st* %0, i32 %1, i64 %2) #0 !dbg !823 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !826, metadata !DIExpression()), !dbg !827
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !828, metadata !DIExpression()), !dbg !829
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata i8** %8, metadata !832, metadata !DIExpression()), !dbg !833
  store i8* null, i8** %8, align 8, !dbg !833
  %9 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !834
  %10 = load i32, i32* %6, align 4, !dbg !836
  %11 = load i64, i64* %7, align 8, !dbg !837
  %12 = bitcast i8** %8 to i8*, !dbg !838
  %13 = call i64 @BIO_ctrl(%struct.bio_st* %9, i32 %10, i64 %11, i8* %12), !dbg !839
  %14 = icmp sle i64 %13, 0, !dbg !840
  br i1 %14, label %15, label %16, !dbg !841

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !842
  br label %18, !dbg !842

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8, !dbg !843
  store i8* %17, i8** %4, align 8, !dbg !844
  br label %18, !dbg !844

18:                                               ; preds = %16, %15
  %19 = load i8*, i8** %4, align 8, !dbg !845
  ret i8* %19, !dbg !845
}

; Function Attrs: noinline nounwind optnone
define i64 @BIO_callback_ctrl(%struct.bio_st* %0, i32 %1, void (%struct.bio_st*, i32, i8*, i32, i64, i64)* %2) #0 !dbg !846 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.bio_st*, i32, i8*, i32, i64, i64)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !850, metadata !DIExpression()), !dbg !851
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !852, metadata !DIExpression()), !dbg !853
  store void (%struct.bio_st*, i32, i8*, i32, i64, i64)* %2, void (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, align 8
  call void @llvm.dbg.declare(metadata void (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, metadata !854, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.declare(metadata i64* %8, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, metadata !858, metadata !DIExpression()), !dbg !859
  %10 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !860
  %11 = icmp eq %struct.bio_st* %10, null, !dbg !862
  br i1 %11, label %12, label %13, !dbg !863

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8, !dbg !864
  br label %62, !dbg !864

13:                                               ; preds = %3
  %14 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !865
  %15 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %14, i32 0, i32 0, !dbg !867
  %16 = load %struct.bio_method_st*, %struct.bio_method_st** %15, align 8, !dbg !867
  %17 = icmp eq %struct.bio_method_st* %16, null, !dbg !868
  br i1 %17, label %25, label %18, !dbg !869

18:                                               ; preds = %13
  %19 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !870
  %20 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %19, i32 0, i32 0, !dbg !871
  %21 = load %struct.bio_method_st*, %struct.bio_method_st** %20, align 8, !dbg !871
  %22 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %21, i32 0, i32 9, !dbg !872
  %23 = load i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)** %22, align 8, !dbg !872
  %24 = icmp eq i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* %23, null, !dbg !873
  br i1 %24, label %25, label %26, !dbg !874

25:                                               ; preds = %18, %13
  call void @ERR_put_error(i32 32, i32 131, i32 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 387), !dbg !875
  store i64 -2, i64* %4, align 8, !dbg !877
  br label %62, !dbg !877

26:                                               ; preds = %18
  %27 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !878
  %28 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %27, i32 0, i32 1, !dbg !879
  %29 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %28, align 8, !dbg !879
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %29, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !880
  %30 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !881
  %31 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %30, null, !dbg !883
  br i1 %31, label %32, label %41, !dbg !884

32:                                               ; preds = %26
  %33 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !885
  %34 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !886
  %35 = bitcast void (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7 to i8*, !dbg !887
  %36 = load i32, i32* %6, align 4, !dbg !888
  %37 = call i64 %33(%struct.bio_st* %34, i32 6, i8* %35, i32 %36, i64 0, i64 1), !dbg !885
  store i64 %37, i64* %8, align 8, !dbg !889
  %38 = icmp sle i64 %37, 0, !dbg !890
  br i1 %38, label %39, label %41, !dbg !891

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8, !dbg !892
  store i64 %40, i64* %4, align 8, !dbg !893
  br label %62, !dbg !893

41:                                               ; preds = %32, %26
  %42 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !894
  %43 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %42, i32 0, i32 0, !dbg !895
  %44 = load %struct.bio_method_st*, %struct.bio_method_st** %43, align 8, !dbg !895
  %45 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %44, i32 0, i32 9, !dbg !896
  %46 = load i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)** %45, align 8, !dbg !896
  %47 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !897
  %48 = load i32, i32* %6, align 4, !dbg !898
  %49 = load void (%struct.bio_st*, i32, i8*, i32, i64, i64)*, void (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7, align 8, !dbg !899
  %50 = call i64 %46(%struct.bio_st* %47, i32 %48, void (%struct.bio_st*, i32, i8*, i32, i64, i64)* %49), !dbg !894
  store i64 %50, i64* %8, align 8, !dbg !900
  %51 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !901
  %52 = icmp ne i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %51, null, !dbg !903
  br i1 %52, label %53, label %60, !dbg !904

53:                                               ; preds = %41
  %54 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %9, align 8, !dbg !905
  %55 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !906
  %56 = bitcast void (%struct.bio_st*, i32, i8*, i32, i64, i64)** %7 to i8*, !dbg !907
  %57 = load i32, i32* %6, align 4, !dbg !908
  %58 = load i64, i64* %8, align 8, !dbg !909
  %59 = call i64 %54(%struct.bio_st* %55, i32 134, i8* %56, i32 %57, i64 0, i64 %58), !dbg !905
  store i64 %59, i64* %8, align 8, !dbg !910
  br label %60, !dbg !911

60:                                               ; preds = %53, %41
  %61 = load i64, i64* %8, align 8, !dbg !912
  store i64 %61, i64* %4, align 8, !dbg !913
  br label %62, !dbg !913

62:                                               ; preds = %60, %39, %25, %12
  %63 = load i64, i64* %4, align 8, !dbg !914
  ret i64 %63, !dbg !914
}

; Function Attrs: noinline nounwind optnone
define i64 @BIO_ctrl_pending(%struct.bio_st* %0) #0 !dbg !915 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !920, metadata !DIExpression()), !dbg !921
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !922
  %4 = call i64 @BIO_ctrl(%struct.bio_st* %3, i32 10, i64 0, i8* null), !dbg !923
  ret i64 %4, !dbg !924
}

; Function Attrs: noinline nounwind optnone
define i64 @BIO_ctrl_wpending(%struct.bio_st* %0) #0 !dbg !925 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !926, metadata !DIExpression()), !dbg !927
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !928
  %4 = call i64 @BIO_ctrl(%struct.bio_st* %3, i32 13, i64 0, i8* null), !dbg !929
  ret i64 %4, !dbg !930
}

; Function Attrs: noinline nounwind optnone
define %struct.bio_st* @BIO_push(%struct.bio_st* %0, %struct.bio_st* %1) #0 !dbg !931 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca %struct.bio_st*, align 8
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %4, metadata !934, metadata !DIExpression()), !dbg !935
  store %struct.bio_st* %1, %struct.bio_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata %struct.bio_st** %6, metadata !938, metadata !DIExpression()), !dbg !939
  %7 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !940
  %8 = icmp eq %struct.bio_st* %7, null, !dbg !942
  br i1 %8, label %9, label %11, !dbg !943

9:                                                ; preds = %2
  %10 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !944
  store %struct.bio_st* %10, %struct.bio_st** %3, align 8, !dbg !945
  br label %38, !dbg !945

11:                                               ; preds = %2
  %12 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !946
  store %struct.bio_st* %12, %struct.bio_st** %6, align 8, !dbg !947
  br label %13, !dbg !948

13:                                               ; preds = %18, %11
  %14 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !949
  %15 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %14, i32 0, i32 9, !dbg !950
  %16 = load %struct.bio_st*, %struct.bio_st** %15, align 8, !dbg !950
  %17 = icmp ne %struct.bio_st* %16, null, !dbg !951
  br i1 %17, label %18, label %22, !dbg !948

18:                                               ; preds = %13
  %19 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !952
  %20 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %19, i32 0, i32 9, !dbg !953
  %21 = load %struct.bio_st*, %struct.bio_st** %20, align 8, !dbg !953
  store %struct.bio_st* %21, %struct.bio_st** %6, align 8, !dbg !954
  br label %13, !dbg !948, !llvm.loop !955

22:                                               ; preds = %13
  %23 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !956
  %24 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !957
  %25 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %24, i32 0, i32 9, !dbg !958
  store %struct.bio_st* %23, %struct.bio_st** %25, align 8, !dbg !959
  %26 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !960
  %27 = icmp ne %struct.bio_st* %26, null, !dbg !962
  br i1 %27, label %28, label %32, !dbg !963

28:                                               ; preds = %22
  %29 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !964
  %30 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !965
  %31 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %30, i32 0, i32 10, !dbg !966
  store %struct.bio_st* %29, %struct.bio_st** %31, align 8, !dbg !967
  br label %32, !dbg !965

32:                                               ; preds = %28, %22
  %33 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !968
  %34 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !969
  %35 = bitcast %struct.bio_st* %34 to i8*, !dbg !969
  %36 = call i64 @BIO_ctrl(%struct.bio_st* %33, i32 6, i64 0, i8* %35), !dbg !970
  %37 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !971
  store %struct.bio_st* %37, %struct.bio_st** %3, align 8, !dbg !972
  br label %38, !dbg !972

38:                                               ; preds = %32, %9
  %39 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !973
  ret %struct.bio_st* %39, !dbg !973
}

; Function Attrs: noinline nounwind optnone
define %struct.bio_st* @BIO_pop(%struct.bio_st* %0) #0 !dbg !974 {
  %2 = alloca %struct.bio_st*, align 8
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !977, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.declare(metadata %struct.bio_st** %4, metadata !979, metadata !DIExpression()), !dbg !980
  %5 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !981
  %6 = icmp eq %struct.bio_st* %5, null, !dbg !983
  br i1 %6, label %7, label %8, !dbg !984

7:                                                ; preds = %1
  store %struct.bio_st* null, %struct.bio_st** %2, align 8, !dbg !985
  br label %47, !dbg !985

8:                                                ; preds = %1
  %9 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !986
  %10 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %9, i32 0, i32 9, !dbg !987
  %11 = load %struct.bio_st*, %struct.bio_st** %10, align 8, !dbg !987
  store %struct.bio_st* %11, %struct.bio_st** %4, align 8, !dbg !988
  %12 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !989
  %13 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !990
  %14 = bitcast %struct.bio_st* %13 to i8*, !dbg !990
  %15 = call i64 @BIO_ctrl(%struct.bio_st* %12, i32 7, i64 0, i8* %14), !dbg !991
  %16 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !992
  %17 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %16, i32 0, i32 10, !dbg !994
  %18 = load %struct.bio_st*, %struct.bio_st** %17, align 8, !dbg !994
  %19 = icmp ne %struct.bio_st* %18, null, !dbg !995
  br i1 %19, label %20, label %28, !dbg !996

20:                                               ; preds = %8
  %21 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !997
  %22 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %21, i32 0, i32 9, !dbg !998
  %23 = load %struct.bio_st*, %struct.bio_st** %22, align 8, !dbg !998
  %24 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !999
  %25 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %24, i32 0, i32 10, !dbg !1000
  %26 = load %struct.bio_st*, %struct.bio_st** %25, align 8, !dbg !1000
  %27 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %26, i32 0, i32 9, !dbg !1001
  store %struct.bio_st* %23, %struct.bio_st** %27, align 8, !dbg !1002
  br label %28, !dbg !999

28:                                               ; preds = %20, %8
  %29 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1003
  %30 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %29, i32 0, i32 9, !dbg !1005
  %31 = load %struct.bio_st*, %struct.bio_st** %30, align 8, !dbg !1005
  %32 = icmp ne %struct.bio_st* %31, null, !dbg !1006
  br i1 %32, label %33, label %41, !dbg !1007

33:                                               ; preds = %28
  %34 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1008
  %35 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %34, i32 0, i32 10, !dbg !1009
  %36 = load %struct.bio_st*, %struct.bio_st** %35, align 8, !dbg !1009
  %37 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1010
  %38 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %37, i32 0, i32 9, !dbg !1011
  %39 = load %struct.bio_st*, %struct.bio_st** %38, align 8, !dbg !1011
  %40 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %39, i32 0, i32 10, !dbg !1012
  store %struct.bio_st* %36, %struct.bio_st** %40, align 8, !dbg !1013
  br label %41, !dbg !1010

41:                                               ; preds = %33, %28
  %42 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1014
  %43 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %42, i32 0, i32 9, !dbg !1015
  store %struct.bio_st* null, %struct.bio_st** %43, align 8, !dbg !1016
  %44 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1017
  %45 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %44, i32 0, i32 10, !dbg !1018
  store %struct.bio_st* null, %struct.bio_st** %45, align 8, !dbg !1019
  %46 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1020
  store %struct.bio_st* %46, %struct.bio_st** %2, align 8, !dbg !1021
  br label %47, !dbg !1021

47:                                               ; preds = %41, %7
  %48 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1022
  ret %struct.bio_st* %48, !dbg !1022
}

; Function Attrs: noinline nounwind optnone
define %struct.bio_st* @BIO_get_retry_BIO(%struct.bio_st* %0, i32* %1) #0 !dbg !1023 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !1027, metadata !DIExpression()), !dbg !1028
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !1031, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata %struct.bio_st** %6, metadata !1033, metadata !DIExpression()), !dbg !1034
  %7 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1035
  store %struct.bio_st* %7, %struct.bio_st** %6, align 8, !dbg !1036
  store %struct.bio_st* %7, %struct.bio_st** %5, align 8, !dbg !1037
  br label %8, !dbg !1038

8:                                                ; preds = %21, %2
  %9 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !1039
  %10 = call i32 @BIO_test_flags(%struct.bio_st* %9, i32 8), !dbg !1039
  %11 = icmp ne i32 %10, 0, !dbg !1039
  br i1 %11, label %13, label %12, !dbg !1044

12:                                               ; preds = %8
  br label %22, !dbg !1045

13:                                               ; preds = %8
  %14 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !1046
  store %struct.bio_st* %14, %struct.bio_st** %6, align 8, !dbg !1047
  %15 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !1048
  %16 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %15, i32 0, i32 9, !dbg !1049
  %17 = load %struct.bio_st*, %struct.bio_st** %16, align 8, !dbg !1049
  store %struct.bio_st* %17, %struct.bio_st** %5, align 8, !dbg !1050
  %18 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !1051
  %19 = icmp eq %struct.bio_st* %18, null, !dbg !1053
  br i1 %19, label %20, label %21, !dbg !1054

20:                                               ; preds = %13
  br label %22, !dbg !1055

21:                                               ; preds = %13
  br label %8, !dbg !1056, !llvm.loop !1057

22:                                               ; preds = %20, %12
  %23 = load i32*, i32** %4, align 8, !dbg !1060
  %24 = icmp ne i32* %23, null, !dbg !1062
  br i1 %24, label %25, label %30, !dbg !1063

25:                                               ; preds = %22
  %26 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1064
  %27 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %26, i32 0, i32 6, !dbg !1065
  %28 = load i32, i32* %27, align 4, !dbg !1065
  %29 = load i32*, i32** %4, align 8, !dbg !1066
  store i32 %28, i32* %29, align 4, !dbg !1067
  br label %30, !dbg !1068

30:                                               ; preds = %25, %22
  %31 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1069
  ret %struct.bio_st* %31, !dbg !1070
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_get_retry_reason(%struct.bio_st* %0) #0 !dbg !1071 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !1072, metadata !DIExpression()), !dbg !1073
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1074
  %4 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %3, i32 0, i32 6, !dbg !1075
  %5 = load i32, i32* %4, align 4, !dbg !1075
  ret i32 %5, !dbg !1076
}

; Function Attrs: noinline nounwind optnone
define %struct.bio_st* @BIO_find_type(%struct.bio_st* %0, i32 %1) #0 !dbg !1077 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca %struct.bio_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %4, metadata !1080, metadata !DIExpression()), !dbg !1081
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1082, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1086, metadata !DIExpression()), !dbg !1087
  %8 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1088
  %9 = icmp ne %struct.bio_st* %8, null, !dbg !1088
  br i1 %9, label %11, label %10, !dbg !1090

10:                                               ; preds = %2
  store %struct.bio_st* null, %struct.bio_st** %3, align 8, !dbg !1091
  br label %51, !dbg !1091

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !1092
  %13 = and i32 %12, 255, !dbg !1093
  store i32 %13, i32* %7, align 4, !dbg !1094
  br label %14, !dbg !1095

14:                                               ; preds = %47, %11
  %15 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1096
  %16 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %15, i32 0, i32 0, !dbg !1099
  %17 = load %struct.bio_method_st*, %struct.bio_method_st** %16, align 8, !dbg !1099
  %18 = icmp ne %struct.bio_method_st* %17, null, !dbg !1100
  br i1 %18, label %19, label %43, !dbg !1101

19:                                               ; preds = %14
  %20 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1102
  %21 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %20, i32 0, i32 0, !dbg !1104
  %22 = load %struct.bio_method_st*, %struct.bio_method_st** %21, align 8, !dbg !1104
  %23 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %22, i32 0, i32 0, !dbg !1105
  %24 = load i32, i32* %23, align 8, !dbg !1105
  store i32 %24, i32* %6, align 4, !dbg !1106
  %25 = load i32, i32* %7, align 4, !dbg !1107
  %26 = icmp ne i32 %25, 0, !dbg !1107
  br i1 %26, label %35, label %27, !dbg !1109

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4, !dbg !1110
  %29 = load i32, i32* %5, align 4, !dbg !1113
  %30 = and i32 %28, %29, !dbg !1114
  %31 = icmp ne i32 %30, 0, !dbg !1114
  br i1 %31, label %32, label %34, !dbg !1115

32:                                               ; preds = %27
  %33 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1116
  store %struct.bio_st* %33, %struct.bio_st** %3, align 8, !dbg !1117
  br label %51, !dbg !1117

34:                                               ; preds = %27
  br label %42, !dbg !1118

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4, !dbg !1119
  %37 = load i32, i32* %5, align 4, !dbg !1121
  %38 = icmp eq i32 %36, %37, !dbg !1122
  br i1 %38, label %39, label %41, !dbg !1123

39:                                               ; preds = %35
  %40 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1124
  store %struct.bio_st* %40, %struct.bio_st** %3, align 8, !dbg !1125
  br label %51, !dbg !1125

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %34
  br label %43, !dbg !1126

43:                                               ; preds = %42, %14
  %44 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1127
  %45 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %44, i32 0, i32 9, !dbg !1128
  %46 = load %struct.bio_st*, %struct.bio_st** %45, align 8, !dbg !1128
  store %struct.bio_st* %46, %struct.bio_st** %4, align 8, !dbg !1129
  br label %47, !dbg !1130

47:                                               ; preds = %43
  %48 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1131
  %49 = icmp ne %struct.bio_st* %48, null, !dbg !1132
  br i1 %49, label %14, label %50, !dbg !1130, !llvm.loop !1133

50:                                               ; preds = %47
  store %struct.bio_st* null, %struct.bio_st** %3, align 8, !dbg !1135
  br label %51, !dbg !1135

51:                                               ; preds = %50, %39, %32, %10
  %52 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1136
  ret %struct.bio_st* %52, !dbg !1136
}

; Function Attrs: noinline nounwind optnone
define %struct.bio_st* @BIO_next(%struct.bio_st* %0) #0 !dbg !1137 {
  %2 = alloca %struct.bio_st*, align 8
  %3 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !1138, metadata !DIExpression()), !dbg !1139
  %4 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1140
  %5 = icmp ne %struct.bio_st* %4, null, !dbg !1140
  br i1 %5, label %7, label %6, !dbg !1142

6:                                                ; preds = %1
  store %struct.bio_st* null, %struct.bio_st** %2, align 8, !dbg !1143
  br label %11, !dbg !1143

7:                                                ; preds = %1
  %8 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1144
  %9 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %8, i32 0, i32 9, !dbg !1145
  %10 = load %struct.bio_st*, %struct.bio_st** %9, align 8, !dbg !1145
  store %struct.bio_st* %10, %struct.bio_st** %2, align 8, !dbg !1146
  br label %11, !dbg !1146

11:                                               ; preds = %7, %6
  %12 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1147
  ret %struct.bio_st* %12, !dbg !1147
}

; Function Attrs: noinline nounwind optnone
define void @BIO_free_all(%struct.bio_st* %0) #0 !dbg !1148 {
  %2 = alloca %struct.bio_st*, align 8
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !1149, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1153, metadata !DIExpression()), !dbg !1154
  br label %5, !dbg !1155

5:                                                ; preds = %21, %1
  %6 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1156
  %7 = icmp ne %struct.bio_st* %6, null, !dbg !1157
  br i1 %7, label %8, label %22, !dbg !1155

8:                                                ; preds = %5
  %9 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1158
  store %struct.bio_st* %9, %struct.bio_st** %3, align 8, !dbg !1160
  %10 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1161
  %11 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %10, i32 0, i32 11, !dbg !1162
  %12 = load i32, i32* %11, align 8, !dbg !1162
  store i32 %12, i32* %4, align 4, !dbg !1163
  %13 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1164
  %14 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %13, i32 0, i32 9, !dbg !1165
  %15 = load %struct.bio_st*, %struct.bio_st** %14, align 8, !dbg !1165
  store %struct.bio_st* %15, %struct.bio_st** %2, align 8, !dbg !1166
  %16 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1167
  %17 = call i32 @BIO_free(%struct.bio_st* %16), !dbg !1168
  %18 = load i32, i32* %4, align 4, !dbg !1169
  %19 = icmp sgt i32 %18, 1, !dbg !1171
  br i1 %19, label %20, label %21, !dbg !1172

20:                                               ; preds = %8
  br label %22, !dbg !1173

21:                                               ; preds = %8
  br label %5, !dbg !1155, !llvm.loop !1174

22:                                               ; preds = %20, %5
  ret void, !dbg !1176
}

; Function Attrs: noinline nounwind optnone
define %struct.bio_st* @BIO_dup_chain(%struct.bio_st* %0) #0 !dbg !1177 {
  %2 = alloca %struct.bio_st*, align 8
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca %struct.bio_st*, align 8
  %5 = alloca %struct.bio_st*, align 8
  %6 = alloca %struct.bio_st*, align 8
  %7 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.declare(metadata %struct.bio_st** %4, metadata !1180, metadata !DIExpression()), !dbg !1181
  store %struct.bio_st* null, %struct.bio_st** %4, align 8, !dbg !1181
  call void @llvm.dbg.declare(metadata %struct.bio_st** %5, metadata !1182, metadata !DIExpression()), !dbg !1183
  store %struct.bio_st* null, %struct.bio_st** %5, align 8, !dbg !1183
  call void @llvm.dbg.declare(metadata %struct.bio_st** %6, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata %struct.bio_st** %7, metadata !1186, metadata !DIExpression()), !dbg !1187
  %8 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1188
  store %struct.bio_st* %8, %struct.bio_st** %6, align 8, !dbg !1190
  br label %9, !dbg !1191

9:                                                ; preds = %78, %1
  %10 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1192
  %11 = icmp ne %struct.bio_st* %10, null, !dbg !1194
  br i1 %11, label %12, label %82, !dbg !1195

12:                                               ; preds = %9
  %13 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1196
  %14 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %13, i32 0, i32 0, !dbg !1199
  %15 = load %struct.bio_method_st*, %struct.bio_method_st** %14, align 8, !dbg !1199
  %16 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* %15), !dbg !1200
  store %struct.bio_st* %16, %struct.bio_st** %7, align 8, !dbg !1201
  %17 = icmp eq %struct.bio_st* %16, null, !dbg !1202
  br i1 %17, label %18, label %19, !dbg !1203

18:                                               ; preds = %12
  br label %84, !dbg !1204

19:                                               ; preds = %12
  %20 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1205
  %21 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %20, i32 0, i32 1, !dbg !1206
  %22 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %21, align 8, !dbg !1206
  %23 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1207
  %24 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %23, i32 0, i32 1, !dbg !1208
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %22, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %24, align 8, !dbg !1209
  %25 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1210
  %26 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %25, i32 0, i32 2, !dbg !1211
  %27 = load i8*, i8** %26, align 8, !dbg !1211
  %28 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1212
  %29 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %28, i32 0, i32 2, !dbg !1213
  store i8* %27, i8** %29, align 8, !dbg !1214
  %30 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1215
  %31 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %30, i32 0, i32 3, !dbg !1216
  %32 = load i32, i32* %31, align 8, !dbg !1216
  %33 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1217
  %34 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %33, i32 0, i32 3, !dbg !1218
  store i32 %32, i32* %34, align 8, !dbg !1219
  %35 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1220
  %36 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %35, i32 0, i32 4, !dbg !1221
  %37 = load i32, i32* %36, align 4, !dbg !1221
  %38 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1222
  %39 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %38, i32 0, i32 4, !dbg !1223
  store i32 %37, i32* %39, align 4, !dbg !1224
  %40 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1225
  %41 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %40, i32 0, i32 5, !dbg !1226
  %42 = load i32, i32* %41, align 8, !dbg !1226
  %43 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1227
  %44 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %43, i32 0, i32 5, !dbg !1228
  store i32 %42, i32* %44, align 8, !dbg !1229
  %45 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1230
  %46 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %45, i32 0, i32 7, !dbg !1231
  %47 = load i32, i32* %46, align 8, !dbg !1231
  %48 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1232
  %49 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %48, i32 0, i32 7, !dbg !1233
  store i32 %47, i32* %49, align 8, !dbg !1234
  %50 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1235
  %51 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1235
  %52 = bitcast %struct.bio_st* %51 to i8*, !dbg !1235
  %53 = call i64 @BIO_ctrl(%struct.bio_st* %50, i32 12, i64 0, i8* %52), !dbg !1235
  %54 = icmp ne i64 %53, 0, !dbg !1235
  br i1 %54, label %58, label %55, !dbg !1237

55:                                               ; preds = %19
  %56 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1238
  %57 = call i32 @BIO_free(%struct.bio_st* %56), !dbg !1240
  br label %84, !dbg !1241

58:                                               ; preds = %19
  %59 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1242
  %60 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %59, i32 0, i32 14, !dbg !1244
  %61 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1245
  %62 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %61, i32 0, i32 14, !dbg !1246
  %63 = call i32 @CRYPTO_dup_ex_data(i32 0, %struct.crypto_ex_data_st* %60, %struct.crypto_ex_data_st* %62), !dbg !1247
  %64 = icmp ne i32 %63, 0, !dbg !1247
  br i1 %64, label %66, label %65, !dbg !1248

65:                                               ; preds = %58
  br label %84, !dbg !1249

66:                                               ; preds = %58
  %67 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1250
  %68 = icmp eq %struct.bio_st* %67, null, !dbg !1252
  br i1 %68, label %69, label %72, !dbg !1253

69:                                               ; preds = %66
  %70 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1254
  store %struct.bio_st* %70, %struct.bio_st** %5, align 8, !dbg !1256
  %71 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !1257
  store %struct.bio_st* %71, %struct.bio_st** %4, align 8, !dbg !1258
  br label %77, !dbg !1259

72:                                               ; preds = %66
  %73 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !1260
  %74 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1262
  %75 = call %struct.bio_st* @BIO_push(%struct.bio_st* %73, %struct.bio_st* %74), !dbg !1263
  %76 = load %struct.bio_st*, %struct.bio_st** %7, align 8, !dbg !1264
  store %struct.bio_st* %76, %struct.bio_st** %5, align 8, !dbg !1265
  br label %77

77:                                               ; preds = %72, %69
  br label %78, !dbg !1266

78:                                               ; preds = %77
  %79 = load %struct.bio_st*, %struct.bio_st** %6, align 8, !dbg !1267
  %80 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %79, i32 0, i32 9, !dbg !1268
  %81 = load %struct.bio_st*, %struct.bio_st** %80, align 8, !dbg !1268
  store %struct.bio_st* %81, %struct.bio_st** %6, align 8, !dbg !1269
  br label %9, !dbg !1270, !llvm.loop !1271

82:                                               ; preds = %9
  %83 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1273
  store %struct.bio_st* %83, %struct.bio_st** %2, align 8, !dbg !1274
  br label %91, !dbg !1274

84:                                               ; preds = %65, %55, %18
  call void @llvm.dbg.label(metadata !1275), !dbg !1276
  %85 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1277
  %86 = icmp ne %struct.bio_st* %85, null, !dbg !1279
  br i1 %86, label %87, label %90, !dbg !1280

87:                                               ; preds = %84
  %88 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1281
  %89 = call i32 @BIO_free(%struct.bio_st* %88), !dbg !1282
  br label %90, !dbg !1282

90:                                               ; preds = %87, %84
  store %struct.bio_st* null, %struct.bio_st** %2, align 8, !dbg !1283
  br label %91, !dbg !1283

91:                                               ; preds = %90, %82
  %92 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1284
  ret %struct.bio_st* %92, !dbg !1284
}

declare i32 @CRYPTO_dup_ex_data(i32, %struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone
define void @BIO_copy_next_retry(%struct.bio_st* %0) #0 !dbg !1285 {
  %2 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %2, metadata !1286, metadata !DIExpression()), !dbg !1287
  %3 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1288
  %4 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1289
  %5 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %4, i32 0, i32 9, !dbg !1289
  %6 = load %struct.bio_st*, %struct.bio_st** %5, align 8, !dbg !1289
  %7 = call i32 @BIO_test_flags(%struct.bio_st* %6, i32 15), !dbg !1289
  call void @BIO_set_flags(%struct.bio_st* %3, i32 %7), !dbg !1290
  %8 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1291
  %9 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %8, i32 0, i32 9, !dbg !1292
  %10 = load %struct.bio_st*, %struct.bio_st** %9, align 8, !dbg !1292
  %11 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %10, i32 0, i32 6, !dbg !1293
  %12 = load i32, i32* %11, align 4, !dbg !1293
  %13 = load %struct.bio_st*, %struct.bio_st** %2, align 8, !dbg !1294
  %14 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %13, i32 0, i32 6, !dbg !1295
  store i32 %12, i32* %14, align 4, !dbg !1296
  ret void, !dbg !1297
}

; Function Attrs: noinline nounwind optnone
define i32 @BIO_get_ex_new_index(i64 %0, i8* %1, i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %2, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)* %3, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %4) #0 !dbg !1298 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, align 8
  %9 = alloca i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)*, align 8
  %10 = alloca void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %2, i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %8, metadata !1318, metadata !DIExpression()), !dbg !1319
  store i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)* %3, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)** %9, metadata !1320, metadata !DIExpression()), !dbg !1321
  store void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %4, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %10, metadata !1322, metadata !DIExpression()), !dbg !1323
  %11 = load i64, i64* %6, align 8, !dbg !1324
  %12 = load i8*, i8** %7, align 8, !dbg !1325
  %13 = load i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %8, align 8, !dbg !1326
  %14 = load i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)*, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)** %9, align 8, !dbg !1327
  %15 = load void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)** %10, align 8, !dbg !1328
  %16 = call i32 @CRYPTO_get_ex_new_index(i32 0, i64 %11, i8* %12, i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %13, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)* %14, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* %15), !dbg !1329
  ret i32 %16, !dbg !1330
}

declare i32 @CRYPTO_get_ex_new_index(i32, i64, i8*, i32 (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8*, i32, i64, i8*)*, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)*) #2

; Function Attrs: noinline nounwind optnone
define i32 @BIO_set_ex_data(%struct.bio_st* %0, i32 %1, i8* %2) #0 !dbg !1331 {
  %4 = alloca %struct.bio_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %4, metadata !1334, metadata !DIExpression()), !dbg !1335
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1336, metadata !DIExpression()), !dbg !1337
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1338, metadata !DIExpression()), !dbg !1339
  %7 = load %struct.bio_st*, %struct.bio_st** %4, align 8, !dbg !1340
  %8 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %7, i32 0, i32 14, !dbg !1341
  %9 = load i32, i32* %5, align 4, !dbg !1342
  %10 = load i8*, i8** %6, align 8, !dbg !1343
  %11 = call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* %8, i32 %9, i8* %10), !dbg !1344
  ret i32 %11, !dbg !1345
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone
define i8* @BIO_get_ex_data(%struct.bio_st* %0, i32 %1) #0 !dbg !1346 {
  %3 = alloca %struct.bio_st*, align 8
  %4 = alloca i32, align 4
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !1349, metadata !DIExpression()), !dbg !1350
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1351, metadata !DIExpression()), !dbg !1352
  %5 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1353
  %6 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %5, i32 0, i32 14, !dbg !1354
  %7 = load i32, i32* %4, align 4, !dbg !1355
  %8 = call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* %6, i32 %7), !dbg !1356
  ret i8* %8, !dbg !1357
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st*, i32) #2

; Function Attrs: noinline nounwind optnone
define i64 @BIO_number_read(%struct.bio_st* %0) #0 !dbg !1358 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !1361, metadata !DIExpression()), !dbg !1362
  %4 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1363
  %5 = icmp ne %struct.bio_st* %4, null, !dbg !1363
  br i1 %5, label %6, label %10, !dbg !1365

6:                                                ; preds = %1
  %7 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1366
  %8 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %7, i32 0, i32 12, !dbg !1367
  %9 = load i64, i64* %8, align 8, !dbg !1367
  store i64 %9, i64* %2, align 8, !dbg !1368
  br label %11, !dbg !1368

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !1369
  br label %11, !dbg !1369

11:                                               ; preds = %10, %6
  %12 = load i64, i64* %2, align 8, !dbg !1370
  ret i64 %12, !dbg !1370
}

; Function Attrs: noinline nounwind optnone
define i64 @BIO_number_written(%struct.bio_st* %0) #0 !dbg !1371 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bio_st*, align 8
  store %struct.bio_st* %0, %struct.bio_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.bio_st** %3, metadata !1372, metadata !DIExpression()), !dbg !1373
  %4 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1374
  %5 = icmp ne %struct.bio_st* %4, null, !dbg !1374
  br i1 %5, label %6, label %10, !dbg !1376

6:                                                ; preds = %1
  %7 = load %struct.bio_st*, %struct.bio_st** %3, align 8, !dbg !1377
  %8 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %7, i32 0, i32 13, !dbg !1378
  %9 = load i64, i64* %8, align 8, !dbg !1378
  store i64 %9, i64* %2, align 8, !dbg !1379
  br label %11, !dbg !1379

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !1380
  br label %11, !dbg !1380

11:                                               ; preds = %10, %6
  %12 = load i64, i64* %2, align 8, !dbg !1381
  ret i64 %12, !dbg !1381
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bio_lib.c", directory: "/opt/openssl/openssl/crypto/bio")
!2 = !{}
!3 = !{!4, !15, !39, !69, !38, !28}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !6, line: 231, baseType: !7)
!6 = !DIFile(filename: "../../include/openssl/bio.h", directory: "/opt/openssl/openssl/crypto/bio")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !6, line: 310, size: 896, elements: !8)
!8 = !{!9, !54, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !7, file: !6, line: 312, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !6, line: 308, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !6, line: 296, size: 640, elements: !13)
!13 = !{!14, !16, !20, !24, !29, !33, !34, !40, !44, !45}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !6, line: 298, baseType: !15, size: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !6, line: 299, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !12, file: !6, line: 300, baseType: !21, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!15, !4, !17, !15}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !12, file: !6, line: 301, baseType: !25, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!15, !4, !28, !15}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !12, file: !6, line: 302, baseType: !30, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!15, !4, !17}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !12, file: !6, line: 303, baseType: !25, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !12, file: !6, line: 304, baseType: !35, size: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !4, !15, !38, !39}
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !12, file: !6, line: 305, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!15, !4}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !12, file: !6, line: 306, baseType: !41, size: 64, offset: 512)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !12, file: !6, line: 307, baseType: !46, size: 64, offset: 576)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!38, !4, !15, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !6, line: 294, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !15, !17, !15, !38, !38}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !7, file: !6, line: 314, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!38, !53, !15, !17, !15, !38, !38}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !7, file: !6, line: 315, baseType: !28, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !7, file: !6, line: 317, baseType: !15, size: 32, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !7, file: !6, line: 318, baseType: !15, size: 32, offset: 224)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7, file: !6, line: 319, baseType: !15, size: 32, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !7, file: !6, line: 320, baseType: !15, size: 32, offset: 288)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !7, file: !6, line: 321, baseType: !15, size: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !7, file: !6, line: 322, baseType: !39, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !7, file: !6, line: 323, baseType: !53, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !7, file: !6, line: 324, baseType: !53, size: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !7, file: !6, line: 325, baseType: !15, size: 32, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !7, file: !6, line: 326, baseType: !69, size: 64, offset: 640)
!69 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !7, file: !6, line: 327, baseType: !69, size: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !7, file: !6, line: 329, baseType: !72, size: 128, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !73, line: 189, baseType: !74)
!73 = !DIFile(filename: "../../include/openssl/ossl_typ.h", directory: "/opt/openssl/openssl/crypto/bio")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !75, line: 285, size: 128, elements: !76)
!75 = !DIFile(filename: "../../include/openssl/crypto.h", directory: "/opt/openssl/openssl/crypto/bio")
!76 = !{!77, !97}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !74, file: !75, line: 287, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !75, line: 290, size: 256, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !79, file: !75, line: 290, baseType: !82, size: 256)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !83, line: 74, baseType: !84)
!83 = !DIFile(filename: "../../include/openssl/stack.h", directory: "/opt/openssl/openssl/crypto/bio")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !83, line: 66, size: 256, elements: !85)
!85 = !{!86, !87, !89, !90, !91}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !84, file: !83, line: 68, baseType: !15, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !84, file: !83, line: 69, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !84, file: !83, line: 70, baseType: !15, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !84, file: !83, line: 72, baseType: !15, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !84, file: !83, line: 73, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!15, !95, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !74, file: !75, line: 288, baseType: !15, size: 32, offset: 64)
!98 = !{i32 7, !"Dwarf Version", i32 4}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 7, !"PIC Level", i32 2}
!102 = !{!"clang version 10.0.0-4ubuntu1 "}
!103 = distinct !DISubprogram(name: "BIO_new", scope: !1, file: !1, line: 66, type: !104, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!104 = !DISubroutineType(types: !105)
!105 = !{!4, !10}
!106 = !DILocalVariable(name: "method", arg: 1, scope: !103, file: !1, line: 66, type: !10)
!107 = !DILocation(line: 66, column: 26, scope: !103)
!108 = !DILocalVariable(name: "ret", scope: !103, file: !1, line: 68, type: !4)
!109 = !DILocation(line: 68, column: 7, scope: !103)
!110 = !DILocation(line: 70, column: 13, scope: !103)
!111 = !DILocation(line: 70, column: 6, scope: !103)
!112 = !DILocation(line: 70, column: 5, scope: !103)
!113 = !DILocation(line: 71, column: 6, scope: !114)
!114 = distinct !DILexicalBlock(scope: !103, file: !1, line: 71, column: 6)
!115 = !DILocation(line: 71, column: 10, scope: !114)
!116 = !DILocation(line: 71, column: 6, scope: !103)
!117 = !DILocation(line: 73, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 72, column: 3)
!119 = !DILocation(line: 74, column: 3, scope: !118)
!120 = !DILocation(line: 76, column: 15, scope: !121)
!121 = distinct !DILexicalBlock(scope: !103, file: !1, line: 76, column: 6)
!122 = !DILocation(line: 76, column: 19, scope: !121)
!123 = !DILocation(line: 76, column: 7, scope: !121)
!124 = !DILocation(line: 76, column: 6, scope: !103)
!125 = !DILocation(line: 78, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 77, column: 3)
!127 = !DILocation(line: 79, column: 6, scope: !126)
!128 = !DILocation(line: 80, column: 3, scope: !126)
!129 = !DILocation(line: 81, column: 9, scope: !103)
!130 = !DILocation(line: 81, column: 2, scope: !103)
!131 = !DILocation(line: 82, column: 2, scope: !103)
!132 = distinct !DISubprogram(name: "BIO_set", scope: !1, file: !1, line: 84, type: !133, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!133 = !DISubroutineType(types: !134)
!134 = !{!15, !4, !10}
!135 = !DILocalVariable(name: "bio", arg: 1, scope: !132, file: !1, line: 84, type: !4)
!136 = !DILocation(line: 84, column: 18, scope: !132)
!137 = !DILocalVariable(name: "method", arg: 2, scope: !132, file: !1, line: 84, type: !10)
!138 = !DILocation(line: 84, column: 35, scope: !132)
!139 = !DILocation(line: 86, column: 14, scope: !132)
!140 = !DILocation(line: 86, column: 2, scope: !132)
!141 = !DILocation(line: 86, column: 7, scope: !132)
!142 = !DILocation(line: 86, column: 13, scope: !132)
!143 = !DILocation(line: 87, column: 2, scope: !132)
!144 = !DILocation(line: 87, column: 7, scope: !132)
!145 = !DILocation(line: 87, column: 15, scope: !132)
!146 = !DILocation(line: 88, column: 2, scope: !132)
!147 = !DILocation(line: 88, column: 7, scope: !132)
!148 = !DILocation(line: 88, column: 13, scope: !132)
!149 = !DILocation(line: 89, column: 2, scope: !132)
!150 = !DILocation(line: 89, column: 7, scope: !132)
!151 = !DILocation(line: 89, column: 11, scope: !132)
!152 = !DILocation(line: 90, column: 2, scope: !132)
!153 = !DILocation(line: 90, column: 7, scope: !132)
!154 = !DILocation(line: 90, column: 15, scope: !132)
!155 = !DILocation(line: 91, column: 2, scope: !132)
!156 = !DILocation(line: 91, column: 7, scope: !132)
!157 = !DILocation(line: 91, column: 12, scope: !132)
!158 = !DILocation(line: 92, column: 2, scope: !132)
!159 = !DILocation(line: 92, column: 7, scope: !132)
!160 = !DILocation(line: 92, column: 19, scope: !132)
!161 = !DILocation(line: 93, column: 2, scope: !132)
!162 = !DILocation(line: 93, column: 7, scope: !132)
!163 = !DILocation(line: 93, column: 10, scope: !132)
!164 = !DILocation(line: 94, column: 2, scope: !132)
!165 = !DILocation(line: 94, column: 7, scope: !132)
!166 = !DILocation(line: 94, column: 10, scope: !132)
!167 = !DILocation(line: 95, column: 2, scope: !132)
!168 = !DILocation(line: 95, column: 7, scope: !132)
!169 = !DILocation(line: 95, column: 15, scope: !132)
!170 = !DILocation(line: 96, column: 2, scope: !132)
!171 = !DILocation(line: 96, column: 7, scope: !132)
!172 = !DILocation(line: 96, column: 15, scope: !132)
!173 = !DILocation(line: 97, column: 2, scope: !132)
!174 = !DILocation(line: 97, column: 7, scope: !132)
!175 = !DILocation(line: 97, column: 17, scope: !132)
!176 = !DILocation(line: 98, column: 2, scope: !132)
!177 = !DILocation(line: 98, column: 7, scope: !132)
!178 = !DILocation(line: 98, column: 15, scope: !132)
!179 = !DILocation(line: 99, column: 2, scope: !132)
!180 = !DILocation(line: 99, column: 7, scope: !132)
!181 = !DILocation(line: 99, column: 16, scope: !132)
!182 = !DILocation(line: 100, column: 42, scope: !132)
!183 = !DILocation(line: 100, column: 48, scope: !132)
!184 = !DILocation(line: 100, column: 53, scope: !132)
!185 = !DILocation(line: 100, column: 2, scope: !132)
!186 = !DILocation(line: 101, column: 6, scope: !187)
!187 = distinct !DILexicalBlock(scope: !132, file: !1, line: 101, column: 6)
!188 = !DILocation(line: 101, column: 14, scope: !187)
!189 = !DILocation(line: 101, column: 21, scope: !187)
!190 = !DILocation(line: 101, column: 6, scope: !132)
!191 = !DILocation(line: 102, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 102, column: 7)
!193 = !DILocation(line: 102, column: 16, scope: !192)
!194 = !DILocation(line: 102, column: 23, scope: !192)
!195 = !DILocation(line: 102, column: 7, scope: !187)
!196 = !DILocation(line: 104, column: 45, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !1, line: 103, column: 4)
!198 = !DILocation(line: 105, column: 7, scope: !197)
!199 = !DILocation(line: 105, column: 12, scope: !197)
!200 = !DILocation(line: 104, column: 4, scope: !197)
!201 = !DILocation(line: 106, column: 4, scope: !197)
!202 = !DILocation(line: 102, column: 26, scope: !192)
!203 = !DILocation(line: 108, column: 2, scope: !132)
!204 = !DILocation(line: 109, column: 2, scope: !132)
!205 = distinct !DISubprogram(name: "BIO_free", scope: !1, file: !1, line: 111, type: !42, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!206 = !DILocalVariable(name: "a", arg: 1, scope: !205, file: !1, line: 111, type: !4)
!207 = !DILocation(line: 111, column: 19, scope: !205)
!208 = !DILocalVariable(name: "i", scope: !205, file: !1, line: 113, type: !15)
!209 = !DILocation(line: 113, column: 6, scope: !205)
!210 = !DILocation(line: 115, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !205, file: !1, line: 115, column: 6)
!212 = !DILocation(line: 115, column: 8, scope: !211)
!213 = !DILocation(line: 115, column: 6, scope: !205)
!214 = !DILocation(line: 115, column: 17, scope: !211)
!215 = !DILocation(line: 117, column: 4, scope: !205)
!216 = !DILocation(line: 117, column: 3, scope: !205)
!217 = !DILocation(line: 121, column: 6, scope: !218)
!218 = distinct !DILexicalBlock(scope: !205, file: !1, line: 121, column: 6)
!219 = !DILocation(line: 121, column: 8, scope: !218)
!220 = !DILocation(line: 121, column: 6, scope: !205)
!221 = !DILocation(line: 121, column: 13, scope: !218)
!222 = !DILocation(line: 123, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !205, file: !1, line: 123, column: 6)
!224 = !DILocation(line: 123, column: 8, scope: !223)
!225 = !DILocation(line: 123, column: 6, scope: !205)
!226 = !DILocation(line: 125, column: 11, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 124, column: 3)
!228 = !DILocation(line: 125, column: 3, scope: !227)
!229 = !DILocation(line: 126, column: 3, scope: !227)
!230 = !DILocation(line: 129, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !205, file: !1, line: 129, column: 6)
!232 = !DILocation(line: 129, column: 10, scope: !231)
!233 = !DILocation(line: 129, column: 19, scope: !231)
!234 = !DILocation(line: 129, column: 28, scope: !231)
!235 = !DILocation(line: 130, column: 12, scope: !231)
!236 = !DILocation(line: 130, column: 15, scope: !231)
!237 = !DILocation(line: 130, column: 24, scope: !231)
!238 = !DILocation(line: 130, column: 7, scope: !231)
!239 = !DILocation(line: 130, column: 6, scope: !231)
!240 = !DILocation(line: 130, column: 53, scope: !231)
!241 = !DILocation(line: 129, column: 6, scope: !205)
!242 = !DILocation(line: 131, column: 11, scope: !231)
!243 = !DILocation(line: 131, column: 4, scope: !231)
!244 = !DILocation(line: 133, column: 43, scope: !205)
!245 = !DILocation(line: 133, column: 47, scope: !205)
!246 = !DILocation(line: 133, column: 50, scope: !205)
!247 = !DILocation(line: 133, column: 2, scope: !205)
!248 = !DILocation(line: 135, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !205, file: !1, line: 135, column: 6)
!250 = !DILocation(line: 135, column: 10, scope: !249)
!251 = !DILocation(line: 135, column: 17, scope: !249)
!252 = !DILocation(line: 135, column: 26, scope: !249)
!253 = !DILocation(line: 135, column: 30, scope: !249)
!254 = !DILocation(line: 135, column: 33, scope: !249)
!255 = !DILocation(line: 135, column: 41, scope: !249)
!256 = !DILocation(line: 135, column: 49, scope: !249)
!257 = !DILocation(line: 135, column: 6, scope: !205)
!258 = !DILocation(line: 135, column: 59, scope: !249)
!259 = !DILocation(line: 136, column: 2, scope: !205)
!260 = !DILocation(line: 136, column: 5, scope: !205)
!261 = !DILocation(line: 136, column: 13, scope: !205)
!262 = !DILocation(line: 136, column: 21, scope: !205)
!263 = !DILocation(line: 137, column: 2, scope: !205)
!264 = !DILocation(line: 138, column: 2, scope: !205)
!265 = !DILocation(line: 139, column: 2, scope: !205)
!266 = distinct !DISubprogram(name: "BIO_vfree", scope: !1, file: !1, line: 141, type: !267, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !4}
!269 = !DILocalVariable(name: "a", arg: 1, scope: !266, file: !1, line: 141, type: !4)
!270 = !DILocation(line: 141, column: 21, scope: !266)
!271 = !DILocation(line: 142, column: 16, scope: !266)
!272 = !DILocation(line: 142, column: 7, scope: !266)
!273 = !DILocation(line: 142, column: 20, scope: !266)
!274 = distinct !DISubprogram(name: "BIO_clear_flags", scope: !1, file: !1, line: 144, type: !275, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !4, !15}
!277 = !DILocalVariable(name: "b", arg: 1, scope: !274, file: !1, line: 144, type: !4)
!278 = !DILocation(line: 144, column: 27, scope: !274)
!279 = !DILocalVariable(name: "flags", arg: 2, scope: !274, file: !1, line: 144, type: !15)
!280 = !DILocation(line: 144, column: 34, scope: !274)
!281 = !DILocation(line: 146, column: 15, scope: !274)
!282 = !DILocation(line: 146, column: 14, scope: !274)
!283 = !DILocation(line: 146, column: 2, scope: !274)
!284 = !DILocation(line: 146, column: 5, scope: !274)
!285 = !DILocation(line: 146, column: 11, scope: !274)
!286 = !DILocation(line: 147, column: 2, scope: !274)
!287 = distinct !DISubprogram(name: "BIO_test_flags", scope: !1, file: !1, line: 149, type: !288, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!288 = !DISubroutineType(types: !289)
!289 = !{!15, !290, !15}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!292 = !DILocalVariable(name: "b", arg: 1, scope: !287, file: !1, line: 149, type: !290)
!293 = !DILocation(line: 149, column: 31, scope: !287)
!294 = !DILocalVariable(name: "flags", arg: 2, scope: !287, file: !1, line: 149, type: !15)
!295 = !DILocation(line: 149, column: 38, scope: !287)
!296 = !DILocation(line: 151, column: 10, scope: !287)
!297 = !DILocation(line: 151, column: 13, scope: !287)
!298 = !DILocation(line: 151, column: 21, scope: !287)
!299 = !DILocation(line: 151, column: 19, scope: !287)
!300 = !DILocation(line: 151, column: 2, scope: !287)
!301 = distinct !DISubprogram(name: "BIO_set_flags", scope: !1, file: !1, line: 154, type: !275, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!302 = !DILocalVariable(name: "b", arg: 1, scope: !301, file: !1, line: 154, type: !4)
!303 = !DILocation(line: 154, column: 25, scope: !301)
!304 = !DILocalVariable(name: "flags", arg: 2, scope: !301, file: !1, line: 154, type: !15)
!305 = !DILocation(line: 154, column: 32, scope: !301)
!306 = !DILocation(line: 156, column: 14, scope: !301)
!307 = !DILocation(line: 156, column: 2, scope: !301)
!308 = !DILocation(line: 156, column: 5, scope: !301)
!309 = !DILocation(line: 156, column: 11, scope: !301)
!310 = !DILocation(line: 157, column: 2, scope: !301)
!311 = distinct !DISubprogram(name: "BIO_get_callback", scope: !1, file: !1, line: 159, type: !312, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!312 = !DISubroutineType(types: !313)
!313 = !{!55, !290}
!314 = !DILocalVariable(name: "b", arg: 1, scope: !311, file: !1, line: 159, type: !290)
!315 = !DILocation(line: 159, column: 36, scope: !311)
!316 = !DILocation(line: 161, column: 9, scope: !311)
!317 = !DILocation(line: 161, column: 12, scope: !311)
!318 = !DILocation(line: 161, column: 2, scope: !311)
!319 = distinct !DISubprogram(name: "BIO_set_callback", scope: !1, file: !1, line: 164, type: !320, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !4, !55}
!322 = !DILocalVariable(name: "b", arg: 1, scope: !319, file: !1, line: 164, type: !4)
!323 = !DILocation(line: 164, column: 28, scope: !319)
!324 = !DILocalVariable(name: "cb", arg: 2, scope: !319, file: !1, line: 164, type: !55)
!325 = !DILocation(line: 164, column: 38, scope: !319)
!326 = !DILocation(line: 166, column: 16, scope: !319)
!327 = !DILocation(line: 166, column: 2, scope: !319)
!328 = !DILocation(line: 166, column: 5, scope: !319)
!329 = !DILocation(line: 166, column: 14, scope: !319)
!330 = !DILocation(line: 167, column: 2, scope: !319)
!331 = distinct !DISubprogram(name: "BIO_set_callback_arg", scope: !1, file: !1, line: 169, type: !332, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !4, !28}
!334 = !DILocalVariable(name: "b", arg: 1, scope: !331, file: !1, line: 169, type: !4)
!335 = !DILocation(line: 169, column: 32, scope: !331)
!336 = !DILocalVariable(name: "arg", arg: 2, scope: !331, file: !1, line: 169, type: !28)
!337 = !DILocation(line: 169, column: 41, scope: !331)
!338 = !DILocation(line: 171, column: 14, scope: !331)
!339 = !DILocation(line: 171, column: 2, scope: !331)
!340 = !DILocation(line: 171, column: 5, scope: !331)
!341 = !DILocation(line: 171, column: 12, scope: !331)
!342 = !DILocation(line: 172, column: 2, scope: !331)
!343 = distinct !DISubprogram(name: "BIO_get_callback_arg", scope: !1, file: !1, line: 174, type: !344, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!344 = !DISubroutineType(types: !345)
!345 = !{!28, !290}
!346 = !DILocalVariable(name: "b", arg: 1, scope: !343, file: !1, line: 174, type: !290)
!347 = !DILocation(line: 174, column: 40, scope: !343)
!348 = !DILocation(line: 176, column: 9, scope: !343)
!349 = !DILocation(line: 176, column: 12, scope: !343)
!350 = !DILocation(line: 176, column: 2, scope: !343)
!351 = distinct !DISubprogram(name: "BIO_method_name", scope: !1, file: !1, line: 179, type: !352, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!352 = !DISubroutineType(types: !353)
!353 = !{!17, !290}
!354 = !DILocalVariable(name: "b", arg: 1, scope: !351, file: !1, line: 179, type: !290)
!355 = !DILocation(line: 179, column: 41, scope: !351)
!356 = !DILocation(line: 181, column: 9, scope: !351)
!357 = !DILocation(line: 181, column: 12, scope: !351)
!358 = !DILocation(line: 181, column: 20, scope: !351)
!359 = !DILocation(line: 181, column: 2, scope: !351)
!360 = distinct !DISubprogram(name: "BIO_method_type", scope: !1, file: !1, line: 184, type: !361, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!361 = !DISubroutineType(types: !362)
!362 = !{!15, !290}
!363 = !DILocalVariable(name: "b", arg: 1, scope: !360, file: !1, line: 184, type: !290)
!364 = !DILocation(line: 184, column: 32, scope: !360)
!365 = !DILocation(line: 186, column: 9, scope: !360)
!366 = !DILocation(line: 186, column: 12, scope: !360)
!367 = !DILocation(line: 186, column: 20, scope: !360)
!368 = !DILocation(line: 186, column: 2, scope: !360)
!369 = distinct !DISubprogram(name: "BIO_read", scope: !1, file: !1, line: 190, type: !370, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!370 = !DISubroutineType(types: !371)
!371 = !{!15, !4, !39, !15}
!372 = !DILocalVariable(name: "b", arg: 1, scope: !369, file: !1, line: 190, type: !4)
!373 = !DILocation(line: 190, column: 19, scope: !369)
!374 = !DILocalVariable(name: "out", arg: 2, scope: !369, file: !1, line: 190, type: !39)
!375 = !DILocation(line: 190, column: 28, scope: !369)
!376 = !DILocalVariable(name: "outl", arg: 3, scope: !369, file: !1, line: 190, type: !15)
!377 = !DILocation(line: 190, column: 37, scope: !369)
!378 = !DILocalVariable(name: "i", scope: !369, file: !1, line: 192, type: !15)
!379 = !DILocation(line: 192, column: 6, scope: !369)
!380 = !DILocalVariable(name: "cb", scope: !369, file: !1, line: 193, type: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!38, !4, !15, !17, !15, !38, !38}
!384 = !DILocation(line: 193, column: 9, scope: !369)
!385 = !DILocation(line: 195, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !369, file: !1, line: 195, column: 6)
!387 = !DILocation(line: 195, column: 9, scope: !386)
!388 = !DILocation(line: 195, column: 18, scope: !386)
!389 = !DILocation(line: 195, column: 22, scope: !386)
!390 = !DILocation(line: 195, column: 25, scope: !386)
!391 = !DILocation(line: 195, column: 32, scope: !386)
!392 = !DILocation(line: 195, column: 41, scope: !386)
!393 = !DILocation(line: 195, column: 45, scope: !386)
!394 = !DILocation(line: 195, column: 48, scope: !386)
!395 = !DILocation(line: 195, column: 56, scope: !386)
!396 = !DILocation(line: 195, column: 62, scope: !386)
!397 = !DILocation(line: 195, column: 6, scope: !369)
!398 = !DILocation(line: 197, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !386, file: !1, line: 196, column: 3)
!400 = !DILocation(line: 198, column: 3, scope: !399)
!401 = !DILocation(line: 201, column: 5, scope: !369)
!402 = !DILocation(line: 201, column: 8, scope: !369)
!403 = !DILocation(line: 201, column: 4, scope: !369)
!404 = !DILocation(line: 202, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !369, file: !1, line: 202, column: 6)
!406 = !DILocation(line: 202, column: 10, scope: !405)
!407 = !DILocation(line: 202, column: 19, scope: !405)
!408 = !DILocation(line: 203, column: 12, scope: !405)
!409 = !DILocation(line: 203, column: 15, scope: !405)
!410 = !DILocation(line: 203, column: 29, scope: !405)
!411 = !DILocation(line: 203, column: 33, scope: !405)
!412 = !DILocation(line: 203, column: 7, scope: !405)
!413 = !DILocation(line: 203, column: 6, scope: !405)
!414 = !DILocation(line: 203, column: 46, scope: !405)
!415 = !DILocation(line: 202, column: 6, scope: !369)
!416 = !DILocation(line: 204, column: 11, scope: !405)
!417 = !DILocation(line: 204, column: 4, scope: !405)
!418 = !DILocation(line: 206, column: 7, scope: !419)
!419 = distinct !DILexicalBlock(scope: !369, file: !1, line: 206, column: 6)
!420 = !DILocation(line: 206, column: 10, scope: !419)
!421 = !DILocation(line: 206, column: 6, scope: !369)
!422 = !DILocation(line: 208, column: 3, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !1, line: 207, column: 3)
!424 = !DILocation(line: 209, column: 3, scope: !423)
!425 = !DILocation(line: 212, column: 4, scope: !369)
!426 = !DILocation(line: 212, column: 7, scope: !369)
!427 = !DILocation(line: 212, column: 15, scope: !369)
!428 = !DILocation(line: 212, column: 21, scope: !369)
!429 = !DILocation(line: 212, column: 23, scope: !369)
!430 = !DILocation(line: 212, column: 27, scope: !369)
!431 = !DILocation(line: 212, column: 3, scope: !369)
!432 = !DILocation(line: 214, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !369, file: !1, line: 214, column: 6)
!434 = !DILocation(line: 214, column: 8, scope: !433)
!435 = !DILocation(line: 214, column: 6, scope: !369)
!436 = !DILocation(line: 214, column: 41, scope: !433)
!437 = !DILocation(line: 214, column: 26, scope: !433)
!438 = !DILocation(line: 214, column: 13, scope: !433)
!439 = !DILocation(line: 214, column: 16, scope: !433)
!440 = !DILocation(line: 214, column: 24, scope: !433)
!441 = !DILocation(line: 216, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !369, file: !1, line: 216, column: 6)
!443 = !DILocation(line: 216, column: 9, scope: !442)
!444 = !DILocation(line: 216, column: 6, scope: !369)
!445 = !DILocation(line: 217, column: 10, scope: !442)
!446 = !DILocation(line: 217, column: 13, scope: !442)
!447 = !DILocation(line: 217, column: 41, scope: !442)
!448 = !DILocation(line: 217, column: 45, scope: !442)
!449 = !DILocation(line: 218, column: 13, scope: !442)
!450 = !DILocation(line: 218, column: 7, scope: !442)
!451 = !DILocation(line: 217, column: 5, scope: !442)
!452 = !DILocation(line: 217, column: 4, scope: !442)
!453 = !DILocation(line: 217, column: 3, scope: !442)
!454 = !DILocation(line: 219, column: 9, scope: !369)
!455 = !DILocation(line: 219, column: 2, scope: !369)
!456 = !DILocation(line: 220, column: 2, scope: !369)
!457 = distinct !DISubprogram(name: "BIO_write", scope: !1, file: !1, line: 222, type: !458, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!458 = !DISubroutineType(types: !459)
!459 = !{!15, !4, !95, !15}
!460 = !DILocalVariable(name: "b", arg: 1, scope: !457, file: !1, line: 222, type: !4)
!461 = !DILocation(line: 222, column: 20, scope: !457)
!462 = !DILocalVariable(name: "in", arg: 2, scope: !457, file: !1, line: 222, type: !95)
!463 = !DILocation(line: 222, column: 35, scope: !457)
!464 = !DILocalVariable(name: "inl", arg: 3, scope: !457, file: !1, line: 222, type: !15)
!465 = !DILocation(line: 222, column: 43, scope: !457)
!466 = !DILocalVariable(name: "i", scope: !457, file: !1, line: 224, type: !15)
!467 = !DILocation(line: 224, column: 6, scope: !457)
!468 = !DILocalVariable(name: "cb", scope: !457, file: !1, line: 225, type: !381)
!469 = !DILocation(line: 225, column: 9, scope: !457)
!470 = !DILocation(line: 227, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !457, file: !1, line: 227, column: 6)
!472 = !DILocation(line: 227, column: 8, scope: !471)
!473 = !DILocation(line: 227, column: 6, scope: !457)
!474 = !DILocation(line: 228, column: 3, scope: !471)
!475 = !DILocation(line: 230, column: 5, scope: !457)
!476 = !DILocation(line: 230, column: 8, scope: !457)
!477 = !DILocation(line: 230, column: 4, scope: !457)
!478 = !DILocation(line: 231, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !457, file: !1, line: 231, column: 6)
!480 = !DILocation(line: 231, column: 10, scope: !479)
!481 = !DILocation(line: 231, column: 17, scope: !479)
!482 = !DILocation(line: 231, column: 26, scope: !479)
!483 = !DILocation(line: 231, column: 30, scope: !479)
!484 = !DILocation(line: 231, column: 33, scope: !479)
!485 = !DILocation(line: 231, column: 41, scope: !479)
!486 = !DILocation(line: 231, column: 48, scope: !479)
!487 = !DILocation(line: 231, column: 6, scope: !457)
!488 = !DILocation(line: 233, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !479, file: !1, line: 232, column: 3)
!490 = !DILocation(line: 234, column: 3, scope: !489)
!491 = !DILocation(line: 237, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !457, file: !1, line: 237, column: 6)
!493 = !DILocation(line: 237, column: 10, scope: !492)
!494 = !DILocation(line: 237, column: 19, scope: !492)
!495 = !DILocation(line: 238, column: 12, scope: !492)
!496 = !DILocation(line: 238, column: 15, scope: !492)
!497 = !DILocation(line: 238, column: 30, scope: !492)
!498 = !DILocation(line: 238, column: 33, scope: !492)
!499 = !DILocation(line: 238, column: 7, scope: !492)
!500 = !DILocation(line: 238, column: 6, scope: !492)
!501 = !DILocation(line: 238, column: 45, scope: !492)
!502 = !DILocation(line: 237, column: 6, scope: !457)
!503 = !DILocation(line: 239, column: 11, scope: !492)
!504 = !DILocation(line: 239, column: 4, scope: !492)
!505 = !DILocation(line: 241, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !457, file: !1, line: 241, column: 6)
!507 = !DILocation(line: 241, column: 10, scope: !506)
!508 = !DILocation(line: 241, column: 6, scope: !457)
!509 = !DILocation(line: 243, column: 3, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !1, line: 242, column: 3)
!511 = !DILocation(line: 244, column: 3, scope: !510)
!512 = !DILocation(line: 247, column: 4, scope: !457)
!513 = !DILocation(line: 247, column: 7, scope: !457)
!514 = !DILocation(line: 247, column: 15, scope: !457)
!515 = !DILocation(line: 247, column: 22, scope: !457)
!516 = !DILocation(line: 247, column: 24, scope: !457)
!517 = !DILocation(line: 247, column: 27, scope: !457)
!518 = !DILocation(line: 247, column: 3, scope: !457)
!519 = !DILocation(line: 249, column: 6, scope: !520)
!520 = distinct !DILexicalBlock(scope: !457, file: !1, line: 249, column: 6)
!521 = !DILocation(line: 249, column: 8, scope: !520)
!522 = !DILocation(line: 249, column: 6, scope: !457)
!523 = !DILocation(line: 249, column: 42, scope: !520)
!524 = !DILocation(line: 249, column: 27, scope: !520)
!525 = !DILocation(line: 249, column: 13, scope: !520)
!526 = !DILocation(line: 249, column: 16, scope: !520)
!527 = !DILocation(line: 249, column: 25, scope: !520)
!528 = !DILocation(line: 251, column: 6, scope: !529)
!529 = distinct !DILexicalBlock(scope: !457, file: !1, line: 251, column: 6)
!530 = !DILocation(line: 251, column: 9, scope: !529)
!531 = !DILocation(line: 251, column: 6, scope: !457)
!532 = !DILocation(line: 252, column: 10, scope: !529)
!533 = !DILocation(line: 252, column: 13, scope: !529)
!534 = !DILocation(line: 252, column: 42, scope: !529)
!535 = !DILocation(line: 252, column: 45, scope: !529)
!536 = !DILocation(line: 253, column: 13, scope: !529)
!537 = !DILocation(line: 253, column: 7, scope: !529)
!538 = !DILocation(line: 252, column: 5, scope: !529)
!539 = !DILocation(line: 252, column: 4, scope: !529)
!540 = !DILocation(line: 252, column: 3, scope: !529)
!541 = !DILocation(line: 254, column: 9, scope: !457)
!542 = !DILocation(line: 254, column: 2, scope: !457)
!543 = !DILocation(line: 255, column: 2, scope: !457)
!544 = distinct !DISubprogram(name: "BIO_puts", scope: !1, file: !1, line: 257, type: !31, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!545 = !DILocalVariable(name: "b", arg: 1, scope: !544, file: !1, line: 257, type: !4)
!546 = !DILocation(line: 257, column: 19, scope: !544)
!547 = !DILocalVariable(name: "in", arg: 2, scope: !544, file: !1, line: 257, type: !17)
!548 = !DILocation(line: 257, column: 34, scope: !544)
!549 = !DILocalVariable(name: "i", scope: !544, file: !1, line: 259, type: !15)
!550 = !DILocation(line: 259, column: 6, scope: !544)
!551 = !DILocalVariable(name: "cb", scope: !544, file: !1, line: 260, type: !381)
!552 = !DILocation(line: 260, column: 9, scope: !544)
!553 = !DILocation(line: 262, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !544, file: !1, line: 262, column: 6)
!555 = !DILocation(line: 262, column: 9, scope: !554)
!556 = !DILocation(line: 262, column: 18, scope: !554)
!557 = !DILocation(line: 262, column: 22, scope: !554)
!558 = !DILocation(line: 262, column: 25, scope: !554)
!559 = !DILocation(line: 262, column: 32, scope: !554)
!560 = !DILocation(line: 262, column: 41, scope: !554)
!561 = !DILocation(line: 262, column: 45, scope: !554)
!562 = !DILocation(line: 262, column: 48, scope: !554)
!563 = !DILocation(line: 262, column: 56, scope: !554)
!564 = !DILocation(line: 262, column: 62, scope: !554)
!565 = !DILocation(line: 262, column: 6, scope: !544)
!566 = !DILocation(line: 264, column: 3, scope: !567)
!567 = distinct !DILexicalBlock(scope: !554, file: !1, line: 263, column: 3)
!568 = !DILocation(line: 265, column: 3, scope: !567)
!569 = !DILocation(line: 268, column: 5, scope: !544)
!570 = !DILocation(line: 268, column: 8, scope: !544)
!571 = !DILocation(line: 268, column: 4, scope: !544)
!572 = !DILocation(line: 270, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !544, file: !1, line: 270, column: 6)
!574 = !DILocation(line: 270, column: 10, scope: !573)
!575 = !DILocation(line: 270, column: 19, scope: !573)
!576 = !DILocation(line: 271, column: 12, scope: !573)
!577 = !DILocation(line: 271, column: 15, scope: !573)
!578 = !DILocation(line: 271, column: 29, scope: !573)
!579 = !DILocation(line: 271, column: 7, scope: !573)
!580 = !DILocation(line: 271, column: 6, scope: !573)
!581 = !DILocation(line: 271, column: 42, scope: !573)
!582 = !DILocation(line: 270, column: 6, scope: !544)
!583 = !DILocation(line: 272, column: 11, scope: !573)
!584 = !DILocation(line: 272, column: 4, scope: !573)
!585 = !DILocation(line: 274, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !544, file: !1, line: 274, column: 6)
!587 = !DILocation(line: 274, column: 10, scope: !586)
!588 = !DILocation(line: 274, column: 6, scope: !544)
!589 = !DILocation(line: 276, column: 3, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !1, line: 275, column: 3)
!591 = !DILocation(line: 277, column: 3, scope: !590)
!592 = !DILocation(line: 280, column: 4, scope: !544)
!593 = !DILocation(line: 280, column: 7, scope: !544)
!594 = !DILocation(line: 280, column: 15, scope: !544)
!595 = !DILocation(line: 280, column: 21, scope: !544)
!596 = !DILocation(line: 280, column: 23, scope: !544)
!597 = !DILocation(line: 280, column: 3, scope: !544)
!598 = !DILocation(line: 282, column: 6, scope: !599)
!599 = distinct !DILexicalBlock(scope: !544, file: !1, line: 282, column: 6)
!600 = !DILocation(line: 282, column: 8, scope: !599)
!601 = !DILocation(line: 282, column: 6, scope: !544)
!602 = !DILocation(line: 282, column: 42, scope: !599)
!603 = !DILocation(line: 282, column: 27, scope: !599)
!604 = !DILocation(line: 282, column: 13, scope: !599)
!605 = !DILocation(line: 282, column: 16, scope: !599)
!606 = !DILocation(line: 282, column: 25, scope: !599)
!607 = !DILocation(line: 284, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !544, file: !1, line: 284, column: 6)
!609 = !DILocation(line: 284, column: 9, scope: !608)
!610 = !DILocation(line: 284, column: 6, scope: !544)
!611 = !DILocation(line: 285, column: 10, scope: !608)
!612 = !DILocation(line: 285, column: 13, scope: !608)
!613 = !DILocation(line: 285, column: 41, scope: !608)
!614 = !DILocation(line: 286, column: 13, scope: !608)
!615 = !DILocation(line: 286, column: 7, scope: !608)
!616 = !DILocation(line: 285, column: 5, scope: !608)
!617 = !DILocation(line: 285, column: 4, scope: !608)
!618 = !DILocation(line: 285, column: 3, scope: !608)
!619 = !DILocation(line: 287, column: 9, scope: !544)
!620 = !DILocation(line: 287, column: 2, scope: !544)
!621 = !DILocation(line: 288, column: 2, scope: !544)
!622 = distinct !DISubprogram(name: "BIO_gets", scope: !1, file: !1, line: 290, type: !26, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!623 = !DILocalVariable(name: "b", arg: 1, scope: !622, file: !1, line: 290, type: !4)
!624 = !DILocation(line: 290, column: 19, scope: !622)
!625 = !DILocalVariable(name: "in", arg: 2, scope: !622, file: !1, line: 290, type: !28)
!626 = !DILocation(line: 290, column: 28, scope: !622)
!627 = !DILocalVariable(name: "inl", arg: 3, scope: !622, file: !1, line: 290, type: !15)
!628 = !DILocation(line: 290, column: 36, scope: !622)
!629 = !DILocalVariable(name: "i", scope: !622, file: !1, line: 292, type: !15)
!630 = !DILocation(line: 292, column: 6, scope: !622)
!631 = !DILocalVariable(name: "cb", scope: !622, file: !1, line: 293, type: !381)
!632 = !DILocation(line: 293, column: 9, scope: !622)
!633 = !DILocation(line: 295, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !622, file: !1, line: 295, column: 6)
!635 = !DILocation(line: 295, column: 9, scope: !634)
!636 = !DILocation(line: 295, column: 18, scope: !634)
!637 = !DILocation(line: 295, column: 22, scope: !634)
!638 = !DILocation(line: 295, column: 25, scope: !634)
!639 = !DILocation(line: 295, column: 32, scope: !634)
!640 = !DILocation(line: 295, column: 41, scope: !634)
!641 = !DILocation(line: 295, column: 45, scope: !634)
!642 = !DILocation(line: 295, column: 48, scope: !634)
!643 = !DILocation(line: 295, column: 56, scope: !634)
!644 = !DILocation(line: 295, column: 62, scope: !634)
!645 = !DILocation(line: 295, column: 6, scope: !622)
!646 = !DILocation(line: 297, column: 3, scope: !647)
!647 = distinct !DILexicalBlock(scope: !634, file: !1, line: 296, column: 3)
!648 = !DILocation(line: 298, column: 3, scope: !647)
!649 = !DILocation(line: 301, column: 5, scope: !622)
!650 = !DILocation(line: 301, column: 8, scope: !622)
!651 = !DILocation(line: 301, column: 4, scope: !622)
!652 = !DILocation(line: 303, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !622, file: !1, line: 303, column: 6)
!654 = !DILocation(line: 303, column: 10, scope: !653)
!655 = !DILocation(line: 303, column: 19, scope: !653)
!656 = !DILocation(line: 304, column: 12, scope: !653)
!657 = !DILocation(line: 304, column: 15, scope: !653)
!658 = !DILocation(line: 304, column: 29, scope: !653)
!659 = !DILocation(line: 304, column: 32, scope: !653)
!660 = !DILocation(line: 304, column: 7, scope: !653)
!661 = !DILocation(line: 304, column: 6, scope: !653)
!662 = !DILocation(line: 304, column: 44, scope: !653)
!663 = !DILocation(line: 303, column: 6, scope: !622)
!664 = !DILocation(line: 305, column: 11, scope: !653)
!665 = !DILocation(line: 305, column: 4, scope: !653)
!666 = !DILocation(line: 307, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !622, file: !1, line: 307, column: 6)
!668 = !DILocation(line: 307, column: 10, scope: !667)
!669 = !DILocation(line: 307, column: 6, scope: !622)
!670 = !DILocation(line: 309, column: 3, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !1, line: 308, column: 3)
!672 = !DILocation(line: 310, column: 3, scope: !671)
!673 = !DILocation(line: 313, column: 4, scope: !622)
!674 = !DILocation(line: 313, column: 7, scope: !622)
!675 = !DILocation(line: 313, column: 15, scope: !622)
!676 = !DILocation(line: 313, column: 21, scope: !622)
!677 = !DILocation(line: 313, column: 23, scope: !622)
!678 = !DILocation(line: 313, column: 26, scope: !622)
!679 = !DILocation(line: 313, column: 3, scope: !622)
!680 = !DILocation(line: 315, column: 6, scope: !681)
!681 = distinct !DILexicalBlock(scope: !622, file: !1, line: 315, column: 6)
!682 = !DILocation(line: 315, column: 9, scope: !681)
!683 = !DILocation(line: 315, column: 6, scope: !622)
!684 = !DILocation(line: 316, column: 10, scope: !681)
!685 = !DILocation(line: 316, column: 13, scope: !681)
!686 = !DILocation(line: 316, column: 41, scope: !681)
!687 = !DILocation(line: 316, column: 44, scope: !681)
!688 = !DILocation(line: 317, column: 13, scope: !681)
!689 = !DILocation(line: 317, column: 7, scope: !681)
!690 = !DILocation(line: 316, column: 5, scope: !681)
!691 = !DILocation(line: 316, column: 4, scope: !681)
!692 = !DILocation(line: 316, column: 3, scope: !681)
!693 = !DILocation(line: 318, column: 9, scope: !622)
!694 = !DILocation(line: 318, column: 2, scope: !622)
!695 = !DILocation(line: 319, column: 2, scope: !622)
!696 = distinct !DISubprogram(name: "BIO_indent", scope: !1, file: !1, line: 321, type: !697, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!697 = !DISubroutineType(types: !698)
!698 = !{!15, !4, !15, !15}
!699 = !DILocalVariable(name: "b", arg: 1, scope: !696, file: !1, line: 321, type: !4)
!700 = !DILocation(line: 321, column: 21, scope: !696)
!701 = !DILocalVariable(name: "indent", arg: 2, scope: !696, file: !1, line: 321, type: !15)
!702 = !DILocation(line: 321, column: 27, scope: !696)
!703 = !DILocalVariable(name: "max", arg: 3, scope: !696, file: !1, line: 321, type: !15)
!704 = !DILocation(line: 321, column: 38, scope: !696)
!705 = !DILocation(line: 323, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !696, file: !1, line: 323, column: 5)
!707 = !DILocation(line: 323, column: 12, scope: !706)
!708 = !DILocation(line: 323, column: 5, scope: !696)
!709 = !DILocation(line: 324, column: 9, scope: !706)
!710 = !DILocation(line: 324, column: 3, scope: !706)
!711 = !DILocation(line: 325, column: 5, scope: !712)
!712 = distinct !DILexicalBlock(scope: !696, file: !1, line: 325, column: 5)
!713 = !DILocation(line: 325, column: 14, scope: !712)
!714 = !DILocation(line: 325, column: 12, scope: !712)
!715 = !DILocation(line: 325, column: 5, scope: !696)
!716 = !DILocation(line: 326, column: 10, scope: !712)
!717 = !DILocation(line: 326, column: 9, scope: !712)
!718 = !DILocation(line: 326, column: 3, scope: !712)
!719 = !DILocation(line: 327, column: 2, scope: !696)
!720 = !DILocation(line: 327, column: 14, scope: !696)
!721 = !DILocation(line: 328, column: 15, scope: !722)
!722 = distinct !DILexicalBlock(scope: !696, file: !1, line: 328, column: 6)
!723 = !DILocation(line: 328, column: 6, scope: !722)
!724 = !DILocation(line: 328, column: 22, scope: !722)
!725 = !DILocation(line: 328, column: 6, scope: !696)
!726 = !DILocation(line: 329, column: 4, scope: !722)
!727 = distinct !{!727, !719, !728}
!728 = !DILocation(line: 329, column: 11, scope: !696)
!729 = !DILocation(line: 330, column: 2, scope: !696)
!730 = !DILocation(line: 331, column: 2, scope: !696)
!731 = distinct !DISubprogram(name: "BIO_int_ctrl", scope: !1, file: !1, line: 333, type: !732, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!732 = !DISubroutineType(types: !733)
!733 = !{!38, !4, !15, !38, !15}
!734 = !DILocalVariable(name: "b", arg: 1, scope: !731, file: !1, line: 333, type: !4)
!735 = !DILocation(line: 333, column: 24, scope: !731)
!736 = !DILocalVariable(name: "cmd", arg: 2, scope: !731, file: !1, line: 333, type: !15)
!737 = !DILocation(line: 333, column: 31, scope: !731)
!738 = !DILocalVariable(name: "larg", arg: 3, scope: !731, file: !1, line: 333, type: !38)
!739 = !DILocation(line: 333, column: 41, scope: !731)
!740 = !DILocalVariable(name: "iarg", arg: 4, scope: !731, file: !1, line: 333, type: !15)
!741 = !DILocation(line: 333, column: 51, scope: !731)
!742 = !DILocalVariable(name: "i", scope: !731, file: !1, line: 335, type: !15)
!743 = !DILocation(line: 335, column: 6, scope: !731)
!744 = !DILocation(line: 337, column: 4, scope: !731)
!745 = !DILocation(line: 337, column: 3, scope: !731)
!746 = !DILocation(line: 338, column: 18, scope: !731)
!747 = !DILocation(line: 338, column: 20, scope: !731)
!748 = !DILocation(line: 338, column: 24, scope: !731)
!749 = !DILocation(line: 338, column: 29, scope: !731)
!750 = !DILocation(line: 338, column: 9, scope: !731)
!751 = !DILocation(line: 338, column: 2, scope: !731)
!752 = distinct !DISubprogram(name: "BIO_ctrl", scope: !1, file: !1, line: 351, type: !36, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!753 = !DILocalVariable(name: "b", arg: 1, scope: !752, file: !1, line: 351, type: !4)
!754 = !DILocation(line: 351, column: 20, scope: !752)
!755 = !DILocalVariable(name: "cmd", arg: 2, scope: !752, file: !1, line: 351, type: !15)
!756 = !DILocation(line: 351, column: 27, scope: !752)
!757 = !DILocalVariable(name: "larg", arg: 3, scope: !752, file: !1, line: 351, type: !38)
!758 = !DILocation(line: 351, column: 37, scope: !752)
!759 = !DILocalVariable(name: "parg", arg: 4, scope: !752, file: !1, line: 351, type: !39)
!760 = !DILocation(line: 351, column: 49, scope: !752)
!761 = !DILocalVariable(name: "ret", scope: !752, file: !1, line: 353, type: !38)
!762 = !DILocation(line: 353, column: 7, scope: !752)
!763 = !DILocalVariable(name: "cb", scope: !752, file: !1, line: 354, type: !381)
!764 = !DILocation(line: 354, column: 9, scope: !752)
!765 = !DILocation(line: 356, column: 6, scope: !766)
!766 = distinct !DILexicalBlock(scope: !752, file: !1, line: 356, column: 6)
!767 = !DILocation(line: 356, column: 8, scope: !766)
!768 = !DILocation(line: 356, column: 6, scope: !752)
!769 = !DILocation(line: 356, column: 17, scope: !766)
!770 = !DILocation(line: 358, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !752, file: !1, line: 358, column: 6)
!772 = !DILocation(line: 358, column: 10, scope: !771)
!773 = !DILocation(line: 358, column: 17, scope: !771)
!774 = !DILocation(line: 358, column: 26, scope: !771)
!775 = !DILocation(line: 358, column: 30, scope: !771)
!776 = !DILocation(line: 358, column: 33, scope: !771)
!777 = !DILocation(line: 358, column: 41, scope: !771)
!778 = !DILocation(line: 358, column: 46, scope: !771)
!779 = !DILocation(line: 358, column: 6, scope: !752)
!780 = !DILocation(line: 360, column: 3, scope: !781)
!781 = distinct !DILexicalBlock(scope: !771, file: !1, line: 359, column: 3)
!782 = !DILocation(line: 361, column: 3, scope: !781)
!783 = !DILocation(line: 364, column: 5, scope: !752)
!784 = !DILocation(line: 364, column: 8, scope: !752)
!785 = !DILocation(line: 364, column: 4, scope: !752)
!786 = !DILocation(line: 366, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !752, file: !1, line: 366, column: 6)
!788 = !DILocation(line: 366, column: 10, scope: !787)
!789 = !DILocation(line: 366, column: 19, scope: !787)
!790 = !DILocation(line: 367, column: 9, scope: !787)
!791 = !DILocation(line: 367, column: 12, scope: !787)
!792 = !DILocation(line: 367, column: 26, scope: !787)
!793 = !DILocation(line: 367, column: 31, scope: !787)
!794 = !DILocation(line: 367, column: 35, scope: !787)
!795 = !DILocation(line: 367, column: 8, scope: !787)
!796 = !DILocation(line: 367, column: 45, scope: !787)
!797 = !DILocation(line: 366, column: 6, scope: !752)
!798 = !DILocation(line: 368, column: 10, scope: !787)
!799 = !DILocation(line: 368, column: 3, scope: !787)
!800 = !DILocation(line: 370, column: 6, scope: !752)
!801 = !DILocation(line: 370, column: 9, scope: !752)
!802 = !DILocation(line: 370, column: 17, scope: !752)
!803 = !DILocation(line: 370, column: 22, scope: !752)
!804 = !DILocation(line: 370, column: 24, scope: !752)
!805 = !DILocation(line: 370, column: 28, scope: !752)
!806 = !DILocation(line: 370, column: 33, scope: !752)
!807 = !DILocation(line: 370, column: 5, scope: !752)
!808 = !DILocation(line: 372, column: 6, scope: !809)
!809 = distinct !DILexicalBlock(scope: !752, file: !1, line: 372, column: 6)
!810 = !DILocation(line: 372, column: 9, scope: !809)
!811 = !DILocation(line: 372, column: 6, scope: !752)
!812 = !DILocation(line: 373, column: 7, scope: !809)
!813 = !DILocation(line: 373, column: 10, scope: !809)
!814 = !DILocation(line: 373, column: 38, scope: !809)
!815 = !DILocation(line: 373, column: 43, scope: !809)
!816 = !DILocation(line: 374, column: 4, scope: !809)
!817 = !DILocation(line: 374, column: 9, scope: !809)
!818 = !DILocation(line: 373, column: 6, scope: !809)
!819 = !DILocation(line: 373, column: 3, scope: !809)
!820 = !DILocation(line: 375, column: 9, scope: !752)
!821 = !DILocation(line: 375, column: 2, scope: !752)
!822 = !DILocation(line: 376, column: 2, scope: !752)
!823 = distinct !DISubprogram(name: "BIO_ptr_ctrl", scope: !1, file: !1, line: 341, type: !824, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!824 = !DISubroutineType(types: !825)
!825 = !{!28, !4, !15, !38}
!826 = !DILocalVariable(name: "b", arg: 1, scope: !823, file: !1, line: 341, type: !4)
!827 = !DILocation(line: 341, column: 25, scope: !823)
!828 = !DILocalVariable(name: "cmd", arg: 2, scope: !823, file: !1, line: 341, type: !15)
!829 = !DILocation(line: 341, column: 32, scope: !823)
!830 = !DILocalVariable(name: "larg", arg: 3, scope: !823, file: !1, line: 341, type: !38)
!831 = !DILocation(line: 341, column: 42, scope: !823)
!832 = !DILocalVariable(name: "p", scope: !823, file: !1, line: 343, type: !28)
!833 = !DILocation(line: 343, column: 8, scope: !823)
!834 = !DILocation(line: 345, column: 15, scope: !835)
!835 = distinct !DILexicalBlock(scope: !823, file: !1, line: 345, column: 6)
!836 = !DILocation(line: 345, column: 17, scope: !835)
!837 = !DILocation(line: 345, column: 21, scope: !835)
!838 = !DILocation(line: 345, column: 26, scope: !835)
!839 = !DILocation(line: 345, column: 6, scope: !835)
!840 = !DILocation(line: 345, column: 38, scope: !835)
!841 = !DILocation(line: 345, column: 6, scope: !823)
!842 = !DILocation(line: 346, column: 3, scope: !835)
!843 = !DILocation(line: 348, column: 10, scope: !835)
!844 = !DILocation(line: 348, column: 3, scope: !835)
!845 = !DILocation(line: 349, column: 2, scope: !823)
!846 = distinct !DISubprogram(name: "BIO_callback_ctrl", scope: !1, file: !1, line: 378, type: !847, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!847 = !DISubroutineType(types: !848)
!848 = !{!38, !4, !15, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!850 = !DILocalVariable(name: "b", arg: 1, scope: !846, file: !1, line: 378, type: !4)
!851 = !DILocation(line: 378, column: 29, scope: !846)
!852 = !DILocalVariable(name: "cmd", arg: 2, scope: !846, file: !1, line: 378, type: !15)
!853 = !DILocation(line: 378, column: 36, scope: !846)
!854 = !DILocalVariable(name: "fp", arg: 3, scope: !846, file: !1, line: 378, type: !849)
!855 = !DILocation(line: 378, column: 48, scope: !846)
!856 = !DILocalVariable(name: "ret", scope: !846, file: !1, line: 380, type: !38)
!857 = !DILocation(line: 380, column: 7, scope: !846)
!858 = !DILocalVariable(name: "cb", scope: !846, file: !1, line: 381, type: !381)
!859 = !DILocation(line: 381, column: 9, scope: !846)
!860 = !DILocation(line: 383, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !846, file: !1, line: 383, column: 6)
!862 = !DILocation(line: 383, column: 8, scope: !861)
!863 = !DILocation(line: 383, column: 6, scope: !846)
!864 = !DILocation(line: 383, column: 17, scope: !861)
!865 = !DILocation(line: 385, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !846, file: !1, line: 385, column: 6)
!867 = !DILocation(line: 385, column: 10, scope: !866)
!868 = !DILocation(line: 385, column: 17, scope: !866)
!869 = !DILocation(line: 385, column: 26, scope: !866)
!870 = !DILocation(line: 385, column: 30, scope: !866)
!871 = !DILocation(line: 385, column: 33, scope: !866)
!872 = !DILocation(line: 385, column: 41, scope: !866)
!873 = !DILocation(line: 385, column: 55, scope: !866)
!874 = !DILocation(line: 385, column: 6, scope: !846)
!875 = !DILocation(line: 387, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !866, file: !1, line: 386, column: 3)
!877 = !DILocation(line: 388, column: 3, scope: !876)
!878 = !DILocation(line: 391, column: 5, scope: !846)
!879 = !DILocation(line: 391, column: 8, scope: !846)
!880 = !DILocation(line: 391, column: 4, scope: !846)
!881 = !DILocation(line: 393, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !846, file: !1, line: 393, column: 6)
!883 = !DILocation(line: 393, column: 10, scope: !882)
!884 = !DILocation(line: 393, column: 19, scope: !882)
!885 = !DILocation(line: 394, column: 9, scope: !882)
!886 = !DILocation(line: 394, column: 12, scope: !882)
!887 = !DILocation(line: 394, column: 26, scope: !882)
!888 = !DILocation(line: 394, column: 38, scope: !882)
!889 = !DILocation(line: 394, column: 8, scope: !882)
!890 = !DILocation(line: 394, column: 49, scope: !882)
!891 = !DILocation(line: 393, column: 6, scope: !846)
!892 = !DILocation(line: 395, column: 10, scope: !882)
!893 = !DILocation(line: 395, column: 3, scope: !882)
!894 = !DILocation(line: 397, column: 6, scope: !846)
!895 = !DILocation(line: 397, column: 9, scope: !846)
!896 = !DILocation(line: 397, column: 17, scope: !846)
!897 = !DILocation(line: 397, column: 31, scope: !846)
!898 = !DILocation(line: 397, column: 33, scope: !846)
!899 = !DILocation(line: 397, column: 37, scope: !846)
!900 = !DILocation(line: 397, column: 5, scope: !846)
!901 = !DILocation(line: 399, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !846, file: !1, line: 399, column: 6)
!903 = !DILocation(line: 399, column: 9, scope: !902)
!904 = !DILocation(line: 399, column: 6, scope: !846)
!905 = !DILocation(line: 400, column: 7, scope: !902)
!906 = !DILocation(line: 400, column: 10, scope: !902)
!907 = !DILocation(line: 400, column: 38, scope: !902)
!908 = !DILocation(line: 400, column: 50, scope: !902)
!909 = !DILocation(line: 401, column: 6, scope: !902)
!910 = !DILocation(line: 400, column: 6, scope: !902)
!911 = !DILocation(line: 400, column: 3, scope: !902)
!912 = !DILocation(line: 402, column: 9, scope: !846)
!913 = !DILocation(line: 402, column: 2, scope: !846)
!914 = !DILocation(line: 403, column: 2, scope: !846)
!915 = distinct !DISubprogram(name: "BIO_ctrl_pending", scope: !1, file: !1, line: 408, type: !916, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!916 = !DISubroutineType(types: !917)
!917 = !{!918, !4}
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !919, line: 46, baseType: !69)
!919 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!920 = !DILocalVariable(name: "bio", arg: 1, scope: !915, file: !1, line: 408, type: !4)
!921 = !DILocation(line: 408, column: 30, scope: !915)
!922 = !DILocation(line: 410, column: 18, scope: !915)
!923 = !DILocation(line: 410, column: 9, scope: !915)
!924 = !DILocation(line: 410, column: 2, scope: !915)
!925 = distinct !DISubprogram(name: "BIO_ctrl_wpending", scope: !1, file: !1, line: 413, type: !916, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!926 = !DILocalVariable(name: "bio", arg: 1, scope: !925, file: !1, line: 413, type: !4)
!927 = !DILocation(line: 413, column: 31, scope: !925)
!928 = !DILocation(line: 415, column: 18, scope: !925)
!929 = !DILocation(line: 415, column: 9, scope: !925)
!930 = !DILocation(line: 415, column: 2, scope: !925)
!931 = distinct !DISubprogram(name: "BIO_push", scope: !1, file: !1, line: 420, type: !932, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!932 = !DISubroutineType(types: !933)
!933 = !{!4, !4, !4}
!934 = !DILocalVariable(name: "b", arg: 1, scope: !931, file: !1, line: 420, type: !4)
!935 = !DILocation(line: 420, column: 20, scope: !931)
!936 = !DILocalVariable(name: "bio", arg: 2, scope: !931, file: !1, line: 420, type: !4)
!937 = !DILocation(line: 420, column: 28, scope: !931)
!938 = !DILocalVariable(name: "lb", scope: !931, file: !1, line: 422, type: !4)
!939 = !DILocation(line: 422, column: 7, scope: !931)
!940 = !DILocation(line: 424, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !931, file: !1, line: 424, column: 6)
!942 = !DILocation(line: 424, column: 8, scope: !941)
!943 = !DILocation(line: 424, column: 6, scope: !931)
!944 = !DILocation(line: 424, column: 24, scope: !941)
!945 = !DILocation(line: 424, column: 17, scope: !941)
!946 = !DILocation(line: 425, column: 5, scope: !931)
!947 = !DILocation(line: 425, column: 4, scope: !931)
!948 = !DILocation(line: 426, column: 2, scope: !931)
!949 = !DILocation(line: 426, column: 9, scope: !931)
!950 = !DILocation(line: 426, column: 13, scope: !931)
!951 = !DILocation(line: 426, column: 22, scope: !931)
!952 = !DILocation(line: 427, column: 6, scope: !931)
!953 = !DILocation(line: 427, column: 10, scope: !931)
!954 = !DILocation(line: 427, column: 5, scope: !931)
!955 = distinct !{!955, !948, !953}
!956 = !DILocation(line: 428, column: 15, scope: !931)
!957 = !DILocation(line: 428, column: 2, scope: !931)
!958 = !DILocation(line: 428, column: 6, scope: !931)
!959 = !DILocation(line: 428, column: 14, scope: !931)
!960 = !DILocation(line: 429, column: 6, scope: !961)
!961 = distinct !DILexicalBlock(scope: !931, file: !1, line: 429, column: 6)
!962 = !DILocation(line: 429, column: 10, scope: !961)
!963 = !DILocation(line: 429, column: 6, scope: !931)
!964 = !DILocation(line: 430, column: 17, scope: !961)
!965 = !DILocation(line: 430, column: 3, scope: !961)
!966 = !DILocation(line: 430, column: 8, scope: !961)
!967 = !DILocation(line: 430, column: 16, scope: !961)
!968 = !DILocation(line: 432, column: 11, scope: !931)
!969 = !DILocation(line: 432, column: 29, scope: !931)
!970 = !DILocation(line: 432, column: 2, scope: !931)
!971 = !DILocation(line: 433, column: 9, scope: !931)
!972 = !DILocation(line: 433, column: 2, scope: !931)
!973 = !DILocation(line: 434, column: 2, scope: !931)
!974 = distinct !DISubprogram(name: "BIO_pop", scope: !1, file: !1, line: 437, type: !975, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!975 = !DISubroutineType(types: !976)
!976 = !{!4, !4}
!977 = !DILocalVariable(name: "b", arg: 1, scope: !974, file: !1, line: 437, type: !4)
!978 = !DILocation(line: 437, column: 19, scope: !974)
!979 = !DILocalVariable(name: "ret", scope: !974, file: !1, line: 439, type: !4)
!980 = !DILocation(line: 439, column: 7, scope: !974)
!981 = !DILocation(line: 441, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !974, file: !1, line: 441, column: 6)
!983 = !DILocation(line: 441, column: 8, scope: !982)
!984 = !DILocation(line: 441, column: 6, scope: !974)
!985 = !DILocation(line: 441, column: 17, scope: !982)
!986 = !DILocation(line: 442, column: 6, scope: !974)
!987 = !DILocation(line: 442, column: 9, scope: !974)
!988 = !DILocation(line: 442, column: 5, scope: !974)
!989 = !DILocation(line: 444, column: 11, scope: !974)
!990 = !DILocation(line: 444, column: 28, scope: !974)
!991 = !DILocation(line: 444, column: 2, scope: !974)
!992 = !DILocation(line: 446, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !974, file: !1, line: 446, column: 6)
!994 = !DILocation(line: 446, column: 9, scope: !993)
!995 = !DILocation(line: 446, column: 18, scope: !993)
!996 = !DILocation(line: 446, column: 6, scope: !974)
!997 = !DILocation(line: 447, column: 25, scope: !993)
!998 = !DILocation(line: 447, column: 28, scope: !993)
!999 = !DILocation(line: 447, column: 3, scope: !993)
!1000 = !DILocation(line: 447, column: 6, scope: !993)
!1001 = !DILocation(line: 447, column: 16, scope: !993)
!1002 = !DILocation(line: 447, column: 24, scope: !993)
!1003 = !DILocation(line: 448, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !974, file: !1, line: 448, column: 6)
!1005 = !DILocation(line: 448, column: 9, scope: !1004)
!1006 = !DILocation(line: 448, column: 18, scope: !1004)
!1007 = !DILocation(line: 448, column: 6, scope: !974)
!1008 = !DILocation(line: 449, column: 25, scope: !1004)
!1009 = !DILocation(line: 449, column: 28, scope: !1004)
!1010 = !DILocation(line: 449, column: 3, scope: !1004)
!1011 = !DILocation(line: 449, column: 6, scope: !1004)
!1012 = !DILocation(line: 449, column: 16, scope: !1004)
!1013 = !DILocation(line: 449, column: 24, scope: !1004)
!1014 = !DILocation(line: 451, column: 2, scope: !974)
!1015 = !DILocation(line: 451, column: 5, scope: !974)
!1016 = !DILocation(line: 451, column: 13, scope: !974)
!1017 = !DILocation(line: 452, column: 2, scope: !974)
!1018 = !DILocation(line: 452, column: 5, scope: !974)
!1019 = !DILocation(line: 452, column: 13, scope: !974)
!1020 = !DILocation(line: 453, column: 9, scope: !974)
!1021 = !DILocation(line: 453, column: 2, scope: !974)
!1022 = !DILocation(line: 454, column: 2, scope: !974)
!1023 = distinct !DISubprogram(name: "BIO_get_retry_BIO", scope: !1, file: !1, line: 456, type: !1024, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!4, !4, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1027 = !DILocalVariable(name: "bio", arg: 1, scope: !1023, file: !1, line: 456, type: !4)
!1028 = !DILocation(line: 456, column: 29, scope: !1023)
!1029 = !DILocalVariable(name: "reason", arg: 2, scope: !1023, file: !1, line: 456, type: !1026)
!1030 = !DILocation(line: 456, column: 39, scope: !1023)
!1031 = !DILocalVariable(name: "b", scope: !1023, file: !1, line: 458, type: !4)
!1032 = !DILocation(line: 458, column: 7, scope: !1023)
!1033 = !DILocalVariable(name: "last", scope: !1023, file: !1, line: 458, type: !4)
!1034 = !DILocation(line: 458, column: 10, scope: !1023)
!1035 = !DILocation(line: 460, column: 9, scope: !1023)
!1036 = !DILocation(line: 460, column: 8, scope: !1023)
!1037 = !DILocation(line: 460, column: 3, scope: !1023)
!1038 = !DILocation(line: 461, column: 2, scope: !1023)
!1039 = !DILocation(line: 463, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 463, column: 7)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 462, column: 3)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 461, column: 2)
!1043 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 461, column: 2)
!1044 = !DILocation(line: 463, column: 7, scope: !1041)
!1045 = !DILocation(line: 463, column: 29, scope: !1040)
!1046 = !DILocation(line: 464, column: 8, scope: !1041)
!1047 = !DILocation(line: 464, column: 7, scope: !1041)
!1048 = !DILocation(line: 465, column: 5, scope: !1041)
!1049 = !DILocation(line: 465, column: 8, scope: !1041)
!1050 = !DILocation(line: 465, column: 4, scope: !1041)
!1051 = !DILocation(line: 466, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 466, column: 7)
!1053 = !DILocation(line: 466, column: 9, scope: !1052)
!1054 = !DILocation(line: 466, column: 7, scope: !1041)
!1055 = !DILocation(line: 466, column: 18, scope: !1052)
!1056 = !DILocation(line: 461, column: 2, scope: !1042)
!1057 = distinct !{!1057, !1058, !1059}
!1058 = !DILocation(line: 461, column: 2, scope: !1043)
!1059 = !DILocation(line: 467, column: 3, scope: !1043)
!1060 = !DILocation(line: 468, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 468, column: 6)
!1062 = !DILocation(line: 468, column: 13, scope: !1061)
!1063 = !DILocation(line: 468, column: 6, scope: !1023)
!1064 = !DILocation(line: 468, column: 30, scope: !1061)
!1065 = !DILocation(line: 468, column: 36, scope: !1061)
!1066 = !DILocation(line: 468, column: 23, scope: !1061)
!1067 = !DILocation(line: 468, column: 29, scope: !1061)
!1068 = !DILocation(line: 468, column: 22, scope: !1061)
!1069 = !DILocation(line: 469, column: 9, scope: !1023)
!1070 = !DILocation(line: 469, column: 2, scope: !1023)
!1071 = distinct !DISubprogram(name: "BIO_get_retry_reason", scope: !1, file: !1, line: 472, type: !42, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1072 = !DILocalVariable(name: "bio", arg: 1, scope: !1071, file: !1, line: 472, type: !4)
!1073 = !DILocation(line: 472, column: 31, scope: !1071)
!1074 = !DILocation(line: 474, column: 9, scope: !1071)
!1075 = !DILocation(line: 474, column: 14, scope: !1071)
!1076 = !DILocation(line: 474, column: 2, scope: !1071)
!1077 = distinct !DISubprogram(name: "BIO_find_type", scope: !1, file: !1, line: 477, type: !1078, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!4, !4, !15}
!1080 = !DILocalVariable(name: "bio", arg: 1, scope: !1077, file: !1, line: 477, type: !4)
!1081 = !DILocation(line: 477, column: 25, scope: !1077)
!1082 = !DILocalVariable(name: "type", arg: 2, scope: !1077, file: !1, line: 477, type: !15)
!1083 = !DILocation(line: 477, column: 34, scope: !1077)
!1084 = !DILocalVariable(name: "mt", scope: !1077, file: !1, line: 479, type: !15)
!1085 = !DILocation(line: 479, column: 6, scope: !1077)
!1086 = !DILocalVariable(name: "mask", scope: !1077, file: !1, line: 479, type: !15)
!1087 = !DILocation(line: 479, column: 9, scope: !1077)
!1088 = !DILocation(line: 481, column: 6, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 481, column: 5)
!1090 = !DILocation(line: 481, column: 5, scope: !1077)
!1091 = !DILocation(line: 481, column: 11, scope: !1089)
!1092 = !DILocation(line: 482, column: 7, scope: !1077)
!1093 = !DILocation(line: 482, column: 11, scope: !1077)
!1094 = !DILocation(line: 482, column: 6, scope: !1077)
!1095 = !DILocation(line: 483, column: 2, scope: !1077)
!1096 = !DILocation(line: 484, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 484, column: 7)
!1098 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 483, column: 5)
!1099 = !DILocation(line: 484, column: 12, scope: !1097)
!1100 = !DILocation(line: 484, column: 19, scope: !1097)
!1101 = !DILocation(line: 484, column: 7, scope: !1098)
!1102 = !DILocation(line: 486, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 485, column: 4)
!1104 = !DILocation(line: 486, column: 12, scope: !1103)
!1105 = !DILocation(line: 486, column: 20, scope: !1103)
!1106 = !DILocation(line: 486, column: 6, scope: !1103)
!1107 = !DILocation(line: 488, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 488, column: 8)
!1109 = !DILocation(line: 488, column: 8, scope: !1103)
!1110 = !DILocation(line: 490, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 490, column: 9)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 489, column: 5)
!1113 = !DILocation(line: 490, column: 14, scope: !1111)
!1114 = !DILocation(line: 490, column: 12, scope: !1111)
!1115 = !DILocation(line: 490, column: 9, scope: !1112)
!1116 = !DILocation(line: 490, column: 27, scope: !1111)
!1117 = !DILocation(line: 490, column: 20, scope: !1111)
!1118 = !DILocation(line: 491, column: 5, scope: !1112)
!1119 = !DILocation(line: 492, column: 13, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 492, column: 13)
!1121 = !DILocation(line: 492, column: 19, scope: !1120)
!1122 = !DILocation(line: 492, column: 16, scope: !1120)
!1123 = !DILocation(line: 492, column: 13, scope: !1108)
!1124 = !DILocation(line: 493, column: 12, scope: !1120)
!1125 = !DILocation(line: 493, column: 5, scope: !1120)
!1126 = !DILocation(line: 494, column: 4, scope: !1103)
!1127 = !DILocation(line: 495, column: 7, scope: !1098)
!1128 = !DILocation(line: 495, column: 12, scope: !1098)
!1129 = !DILocation(line: 495, column: 6, scope: !1098)
!1130 = !DILocation(line: 496, column: 3, scope: !1098)
!1131 = !DILocation(line: 496, column: 12, scope: !1077)
!1132 = !DILocation(line: 496, column: 16, scope: !1077)
!1133 = distinct !{!1133, !1095, !1134}
!1134 = !DILocation(line: 496, column: 23, scope: !1077)
!1135 = !DILocation(line: 497, column: 2, scope: !1077)
!1136 = !DILocation(line: 498, column: 2, scope: !1077)
!1137 = distinct !DISubprogram(name: "BIO_next", scope: !1, file: !1, line: 500, type: !975, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1138 = !DILocalVariable(name: "b", arg: 1, scope: !1137, file: !1, line: 500, type: !4)
!1139 = !DILocation(line: 500, column: 20, scope: !1137)
!1140 = !DILocation(line: 502, column: 6, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 502, column: 5)
!1142 = !DILocation(line: 502, column: 5, scope: !1137)
!1143 = !DILocation(line: 502, column: 9, scope: !1141)
!1144 = !DILocation(line: 503, column: 9, scope: !1137)
!1145 = !DILocation(line: 503, column: 12, scope: !1137)
!1146 = !DILocation(line: 503, column: 2, scope: !1137)
!1147 = !DILocation(line: 504, column: 2, scope: !1137)
!1148 = distinct !DISubprogram(name: "BIO_free_all", scope: !1, file: !1, line: 506, type: !267, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1149 = !DILocalVariable(name: "bio", arg: 1, scope: !1148, file: !1, line: 506, type: !4)
!1150 = !DILocation(line: 506, column: 24, scope: !1148)
!1151 = !DILocalVariable(name: "b", scope: !1148, file: !1, line: 508, type: !4)
!1152 = !DILocation(line: 508, column: 7, scope: !1148)
!1153 = !DILocalVariable(name: "ref", scope: !1148, file: !1, line: 509, type: !15)
!1154 = !DILocation(line: 509, column: 6, scope: !1148)
!1155 = !DILocation(line: 511, column: 2, scope: !1148)
!1156 = !DILocation(line: 511, column: 9, scope: !1148)
!1157 = !DILocation(line: 511, column: 13, scope: !1148)
!1158 = !DILocation(line: 513, column: 5, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 512, column: 3)
!1160 = !DILocation(line: 513, column: 4, scope: !1159)
!1161 = !DILocation(line: 514, column: 7, scope: !1159)
!1162 = !DILocation(line: 514, column: 10, scope: !1159)
!1163 = !DILocation(line: 514, column: 6, scope: !1159)
!1164 = !DILocation(line: 515, column: 7, scope: !1159)
!1165 = !DILocation(line: 515, column: 12, scope: !1159)
!1166 = !DILocation(line: 515, column: 6, scope: !1159)
!1167 = !DILocation(line: 516, column: 12, scope: !1159)
!1168 = !DILocation(line: 516, column: 3, scope: !1159)
!1169 = !DILocation(line: 518, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 518, column: 7)
!1171 = !DILocation(line: 518, column: 11, scope: !1170)
!1172 = !DILocation(line: 518, column: 7, scope: !1159)
!1173 = !DILocation(line: 518, column: 16, scope: !1170)
!1174 = distinct !{!1174, !1155, !1175}
!1175 = !DILocation(line: 519, column: 3, scope: !1148)
!1176 = !DILocation(line: 520, column: 2, scope: !1148)
!1177 = distinct !DISubprogram(name: "BIO_dup_chain", scope: !1, file: !1, line: 522, type: !975, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1178 = !DILocalVariable(name: "in", arg: 1, scope: !1177, file: !1, line: 522, type: !4)
!1179 = !DILocation(line: 522, column: 25, scope: !1177)
!1180 = !DILocalVariable(name: "ret", scope: !1177, file: !1, line: 524, type: !4)
!1181 = !DILocation(line: 524, column: 7, scope: !1177)
!1182 = !DILocalVariable(name: "eoc", scope: !1177, file: !1, line: 524, type: !4)
!1183 = !DILocation(line: 524, column: 17, scope: !1177)
!1184 = !DILocalVariable(name: "bio", scope: !1177, file: !1, line: 524, type: !4)
!1185 = !DILocation(line: 524, column: 27, scope: !1177)
!1186 = !DILocalVariable(name: "new_bio", scope: !1177, file: !1, line: 524, type: !4)
!1187 = !DILocation(line: 524, column: 32, scope: !1177)
!1188 = !DILocation(line: 526, column: 11, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 526, column: 2)
!1190 = !DILocation(line: 526, column: 10, scope: !1189)
!1191 = !DILocation(line: 526, column: 7, scope: !1189)
!1192 = !DILocation(line: 526, column: 15, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 526, column: 2)
!1194 = !DILocation(line: 526, column: 19, scope: !1193)
!1195 = !DILocation(line: 526, column: 2, scope: !1189)
!1196 = !DILocation(line: 528, column: 24, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 528, column: 7)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 527, column: 3)
!1199 = !DILocation(line: 528, column: 29, scope: !1197)
!1200 = !DILocation(line: 528, column: 16, scope: !1197)
!1201 = !DILocation(line: 528, column: 15, scope: !1197)
!1202 = !DILocation(line: 528, column: 38, scope: !1197)
!1203 = !DILocation(line: 528, column: 7, scope: !1198)
!1204 = !DILocation(line: 528, column: 47, scope: !1197)
!1205 = !DILocation(line: 529, column: 21, scope: !1198)
!1206 = !DILocation(line: 529, column: 26, scope: !1198)
!1207 = !DILocation(line: 529, column: 3, scope: !1198)
!1208 = !DILocation(line: 529, column: 12, scope: !1198)
!1209 = !DILocation(line: 529, column: 20, scope: !1198)
!1210 = !DILocation(line: 530, column: 19, scope: !1198)
!1211 = !DILocation(line: 530, column: 24, scope: !1198)
!1212 = !DILocation(line: 530, column: 3, scope: !1198)
!1213 = !DILocation(line: 530, column: 12, scope: !1198)
!1214 = !DILocation(line: 530, column: 18, scope: !1198)
!1215 = !DILocation(line: 531, column: 17, scope: !1198)
!1216 = !DILocation(line: 531, column: 22, scope: !1198)
!1217 = !DILocation(line: 531, column: 3, scope: !1198)
!1218 = !DILocation(line: 531, column: 12, scope: !1198)
!1219 = !DILocation(line: 531, column: 16, scope: !1198)
!1220 = !DILocation(line: 532, column: 21, scope: !1198)
!1221 = !DILocation(line: 532, column: 26, scope: !1198)
!1222 = !DILocation(line: 532, column: 3, scope: !1198)
!1223 = !DILocation(line: 532, column: 12, scope: !1198)
!1224 = !DILocation(line: 532, column: 20, scope: !1198)
!1225 = !DILocation(line: 533, column: 18, scope: !1198)
!1226 = !DILocation(line: 533, column: 23, scope: !1198)
!1227 = !DILocation(line: 533, column: 3, scope: !1198)
!1228 = !DILocation(line: 533, column: 12, scope: !1198)
!1229 = !DILocation(line: 533, column: 17, scope: !1198)
!1230 = !DILocation(line: 536, column: 16, scope: !1198)
!1231 = !DILocation(line: 536, column: 21, scope: !1198)
!1232 = !DILocation(line: 536, column: 3, scope: !1198)
!1233 = !DILocation(line: 536, column: 12, scope: !1198)
!1234 = !DILocation(line: 536, column: 15, scope: !1198)
!1235 = !DILocation(line: 538, column: 8, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 538, column: 7)
!1237 = !DILocation(line: 538, column: 7, scope: !1198)
!1238 = !DILocation(line: 540, column: 13, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 539, column: 4)
!1240 = !DILocation(line: 540, column: 4, scope: !1239)
!1241 = !DILocation(line: 541, column: 4, scope: !1239)
!1242 = !DILocation(line: 545, column: 49, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 545, column: 7)
!1244 = !DILocation(line: 545, column: 58, scope: !1243)
!1245 = !DILocation(line: 546, column: 7, scope: !1243)
!1246 = !DILocation(line: 546, column: 12, scope: !1243)
!1247 = !DILocation(line: 545, column: 8, scope: !1243)
!1248 = !DILocation(line: 545, column: 7, scope: !1198)
!1249 = !DILocation(line: 547, column: 4, scope: !1243)
!1250 = !DILocation(line: 549, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 549, column: 7)
!1252 = !DILocation(line: 549, column: 11, scope: !1251)
!1253 = !DILocation(line: 549, column: 7, scope: !1198)
!1254 = !DILocation(line: 551, column: 8, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 550, column: 4)
!1256 = !DILocation(line: 551, column: 7, scope: !1255)
!1257 = !DILocation(line: 552, column: 8, scope: !1255)
!1258 = !DILocation(line: 552, column: 7, scope: !1255)
!1259 = !DILocation(line: 553, column: 4, scope: !1255)
!1260 = !DILocation(line: 556, column: 13, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 555, column: 4)
!1262 = !DILocation(line: 556, column: 17, scope: !1261)
!1263 = !DILocation(line: 556, column: 4, scope: !1261)
!1264 = !DILocation(line: 557, column: 8, scope: !1261)
!1265 = !DILocation(line: 557, column: 7, scope: !1261)
!1266 = !DILocation(line: 559, column: 3, scope: !1198)
!1267 = !DILocation(line: 526, column: 32, scope: !1193)
!1268 = !DILocation(line: 526, column: 37, scope: !1193)
!1269 = !DILocation(line: 526, column: 31, scope: !1193)
!1270 = !DILocation(line: 526, column: 2, scope: !1193)
!1271 = distinct !{!1271, !1195, !1272}
!1272 = !DILocation(line: 559, column: 3, scope: !1189)
!1273 = !DILocation(line: 560, column: 9, scope: !1177)
!1274 = !DILocation(line: 560, column: 2, scope: !1177)
!1275 = !DILabel(scope: !1177, name: "err", file: !1, line: 561)
!1276 = !DILocation(line: 561, column: 1, scope: !1177)
!1277 = !DILocation(line: 562, column: 6, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 562, column: 6)
!1279 = !DILocation(line: 562, column: 10, scope: !1278)
!1280 = !DILocation(line: 562, column: 6, scope: !1177)
!1281 = !DILocation(line: 563, column: 12, scope: !1278)
!1282 = !DILocation(line: 563, column: 3, scope: !1278)
!1283 = !DILocation(line: 564, column: 2, scope: !1177)
!1284 = !DILocation(line: 565, column: 2, scope: !1177)
!1285 = distinct !DISubprogram(name: "BIO_copy_next_retry", scope: !1, file: !1, line: 567, type: !267, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1286 = !DILocalVariable(name: "b", arg: 1, scope: !1285, file: !1, line: 567, type: !4)
!1287 = !DILocation(line: 567, column: 31, scope: !1285)
!1288 = !DILocation(line: 569, column: 16, scope: !1285)
!1289 = !DILocation(line: 569, column: 18, scope: !1285)
!1290 = !DILocation(line: 569, column: 2, scope: !1285)
!1291 = !DILocation(line: 570, column: 18, scope: !1285)
!1292 = !DILocation(line: 570, column: 21, scope: !1285)
!1293 = !DILocation(line: 570, column: 31, scope: !1285)
!1294 = !DILocation(line: 570, column: 2, scope: !1285)
!1295 = !DILocation(line: 570, column: 5, scope: !1285)
!1296 = !DILocation(line: 570, column: 17, scope: !1285)
!1297 = !DILocation(line: 571, column: 2, scope: !1285)
!1298 = distinct !DISubprogram(name: "BIO_get_ex_new_index", scope: !1, file: !1, line: 573, type: !1299, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!15, !38, !39, !1301, !1306, !1310}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_new", file: !73, line: 191, baseType: !1303)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!15, !39, !39, !1305, !15, !38, !39}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_dup", file: !73, line: 195, baseType: !1308)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!15, !1305, !1305, !39, !15, !38, !39}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_free", file: !73, line: 193, baseType: !1312)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !39, !39, !1305, !15, !38, !39}
!1314 = !DILocalVariable(name: "argl", arg: 1, scope: !1298, file: !1, line: 573, type: !38)
!1315 = !DILocation(line: 573, column: 31, scope: !1298)
!1316 = !DILocalVariable(name: "argp", arg: 2, scope: !1298, file: !1, line: 573, type: !39)
!1317 = !DILocation(line: 573, column: 43, scope: !1298)
!1318 = !DILocalVariable(name: "new_func", arg: 3, scope: !1298, file: !1, line: 573, type: !1301)
!1319 = !DILocation(line: 573, column: 64, scope: !1298)
!1320 = !DILocalVariable(name: "dup_func", arg: 4, scope: !1298, file: !1, line: 574, type: !1306)
!1321 = !DILocation(line: 574, column: 22, scope: !1298)
!1322 = !DILocalVariable(name: "free_func", arg: 5, scope: !1298, file: !1, line: 574, type: !1310)
!1323 = !DILocation(line: 574, column: 48, scope: !1298)
!1324 = !DILocation(line: 576, column: 54, scope: !1298)
!1325 = !DILocation(line: 576, column: 60, scope: !1298)
!1326 = !DILocation(line: 577, column: 5, scope: !1298)
!1327 = !DILocation(line: 577, column: 15, scope: !1298)
!1328 = !DILocation(line: 577, column: 25, scope: !1298)
!1329 = !DILocation(line: 576, column: 9, scope: !1298)
!1330 = !DILocation(line: 576, column: 2, scope: !1298)
!1331 = distinct !DISubprogram(name: "BIO_set_ex_data", scope: !1, file: !1, line: 580, type: !1332, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!15, !4, !15, !39}
!1334 = !DILocalVariable(name: "bio", arg: 1, scope: !1331, file: !1, line: 580, type: !4)
!1335 = !DILocation(line: 580, column: 26, scope: !1331)
!1336 = !DILocalVariable(name: "idx", arg: 2, scope: !1331, file: !1, line: 580, type: !15)
!1337 = !DILocation(line: 580, column: 35, scope: !1331)
!1338 = !DILocalVariable(name: "data", arg: 3, scope: !1331, file: !1, line: 580, type: !39)
!1339 = !DILocation(line: 580, column: 46, scope: !1331)
!1340 = !DILocation(line: 582, column: 30, scope: !1331)
!1341 = !DILocation(line: 582, column: 35, scope: !1331)
!1342 = !DILocation(line: 582, column: 44, scope: !1331)
!1343 = !DILocation(line: 582, column: 48, scope: !1331)
!1344 = !DILocation(line: 582, column: 9, scope: !1331)
!1345 = !DILocation(line: 582, column: 2, scope: !1331)
!1346 = distinct !DISubprogram(name: "BIO_get_ex_data", scope: !1, file: !1, line: 585, type: !1347, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!39, !4, !15}
!1349 = !DILocalVariable(name: "bio", arg: 1, scope: !1346, file: !1, line: 585, type: !4)
!1350 = !DILocation(line: 585, column: 28, scope: !1346)
!1351 = !DILocalVariable(name: "idx", arg: 2, scope: !1346, file: !1, line: 585, type: !15)
!1352 = !DILocation(line: 585, column: 37, scope: !1346)
!1353 = !DILocation(line: 587, column: 30, scope: !1346)
!1354 = !DILocation(line: 587, column: 35, scope: !1346)
!1355 = !DILocation(line: 587, column: 44, scope: !1346)
!1356 = !DILocation(line: 587, column: 9, scope: !1346)
!1357 = !DILocation(line: 587, column: 2, scope: !1346)
!1358 = distinct !DISubprogram(name: "BIO_number_read", scope: !1, file: !1, line: 590, type: !1359, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!69, !4}
!1361 = !DILocalVariable(name: "bio", arg: 1, scope: !1358, file: !1, line: 590, type: !4)
!1362 = !DILocation(line: 590, column: 36, scope: !1358)
!1363 = !DILocation(line: 592, column: 5, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 592, column: 5)
!1365 = !DILocation(line: 592, column: 5, scope: !1358)
!1366 = !DILocation(line: 592, column: 17, scope: !1364)
!1367 = !DILocation(line: 592, column: 22, scope: !1364)
!1368 = !DILocation(line: 592, column: 10, scope: !1364)
!1369 = !DILocation(line: 593, column: 2, scope: !1358)
!1370 = !DILocation(line: 594, column: 1, scope: !1358)
!1371 = distinct !DISubprogram(name: "BIO_number_written", scope: !1, file: !1, line: 596, type: !1359, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1372 = !DILocalVariable(name: "bio", arg: 1, scope: !1371, file: !1, line: 596, type: !4)
!1373 = !DILocation(line: 596, column: 39, scope: !1371)
!1374 = !DILocation(line: 598, column: 5, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 598, column: 5)
!1376 = !DILocation(line: 598, column: 5, scope: !1371)
!1377 = !DILocation(line: 598, column: 17, scope: !1375)
!1378 = !DILocation(line: 598, column: 22, scope: !1375)
!1379 = !DILocation(line: 598, column: 10, scope: !1375)
!1380 = !DILocation(line: 599, column: 2, scope: !1371)
!1381 = !DILocation(line: 600, column: 1, scope: !1371)
