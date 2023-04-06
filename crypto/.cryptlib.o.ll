; ModuleID = '.cryptlib.o.bc'
source_filename = "cryptlib.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.stack_st_OPENSSL_STRING = type { %struct.stack_st }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }
%struct.CRYPTO_dynlock_value = type opaque
%struct.stack_st_CRYPTO_dynlock = type { %struct.stack_st }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.crypto_threadid_st = type { i8*, i64 }
%struct.CRYPTO_dynlock = type { i32, %struct.CRYPTO_dynlock_value* }
%struct.__va_list = type { i8*, i8*, i8*, i32, i32 }

@app_locks = internal global %struct.stack_st_OPENSSL_STRING* null, align 8, !dbg !0
@.str = private unnamed_addr constant [11 x i8] c"cryptlib.c\00", align 1
@dynlock_create_callback = internal global %struct.CRYPTO_dynlock_value* (i8*, i32)* null, align 8, !dbg !49
@dyn_locks = internal global %struct.stack_st_CRYPTO_dynlock* null, align 8, !dbg !56
@dynlock_destroy_callback = internal global void (%struct.CRYPTO_dynlock_value*, i8*, i32)* null, align 8, !dbg !58
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"CRYPTO_destroy_dynlockid, bad reference count\0A\00", align 1
@dynlock_lock_callback = internal global void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)* null, align 8, !dbg !63
@locking_callback = internal global void (i32, i32, i8*, i32)* null, align 8, !dbg !68
@add_lock_callback = internal global i32 (i32*, i32, i32, i8*, i32)* null, align 8, !dbg !73
@threadid_callback = internal global void (%struct.crypto_threadid_st*)* null, align 8, !dbg !79
@id_callback = internal global i64 ()* null, align 8, !dbg !90
@.str.2 = private unnamed_addr constant [16 x i8] c"pointer != NULL\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@lock_names = internal constant [41 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)], align 8, !dbg !95
@.str.4 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@OPENSSL_NONPIC_relocated = global i32 0, align 4, !dbg !47
@.str.5 = private unnamed_addr constant [54 x i8] c"%s(%d): OpenSSL internal error, assertion failed: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<<ERROR>>\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ex_data\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"x509\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"x509_info\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"x509_pkey\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"x509_crl\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"x509_req\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"dsa\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"evp_pkey\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"x509_store\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ssl_ctx\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"ssl_cert\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"ssl_session\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"ssl_sess_cert\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ssl_method\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"rand2\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"debug_malloc\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"BIO\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"getservbyname\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"RSA_blinding\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"dh\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"debug_malloc2\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"dso\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"dynlock\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ui\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"ecdh\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"ec_pre_comp\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"fips2\00", align 1

; Function Attrs: noinline nounwind optnone
define i32 @CRYPTO_get_new_lockid(i8* %0) #0 !dbg !106 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %4, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %5, metadata !113, metadata !DIExpression()), !dbg !114
  %6 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @app_locks, align 8, !dbg !115
  %7 = icmp eq %struct.stack_st_OPENSSL_STRING* %6, null, !dbg !117
  br i1 %7, label %8, label %13, !dbg !118

8:                                                ; preds = %1
  %9 = call %struct.stack_st* @sk_new_null(), !dbg !119
  %10 = bitcast %struct.stack_st* %9 to %struct.stack_st_OPENSSL_STRING*, !dbg !119
  store %struct.stack_st_OPENSSL_STRING* %10, %struct.stack_st_OPENSSL_STRING** @app_locks, align 8, !dbg !120
  %11 = icmp eq %struct.stack_st_OPENSSL_STRING* %10, null, !dbg !121
  br i1 %11, label %12, label %13, !dbg !122

12:                                               ; preds = %8
  call void @ERR_put_error(i32 15, i32 101, i32 65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 215), !dbg !123
  store i32 0, i32* %2, align 4, !dbg !125
  br label %32, !dbg !125

13:                                               ; preds = %8, %1
  %14 = load i8*, i8** %3, align 8, !dbg !126
  %15 = call i8* @BUF_strdup(i8* %14), !dbg !128
  store i8* %15, i8** %4, align 8, !dbg !129
  %16 = icmp eq i8* %15, null, !dbg !130
  br i1 %16, label %17, label %18, !dbg !131

17:                                               ; preds = %13
  call void @ERR_put_error(i32 15, i32 101, i32 65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 220), !dbg !132
  store i32 0, i32* %2, align 4, !dbg !134
  br label %32, !dbg !134

18:                                               ; preds = %13
  %19 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @app_locks, align 8, !dbg !135
  %20 = bitcast %struct.stack_st_OPENSSL_STRING* %19 to %struct.stack_st*, !dbg !135
  %21 = load i8*, i8** %4, align 8, !dbg !135
  %22 = call i32 @sk_push(%struct.stack_st* %20, i8* %21), !dbg !135
  store i32 %22, i32* %5, align 4, !dbg !136
  %23 = load i32, i32* %5, align 4, !dbg !137
  %24 = icmp ne i32 %23, 0, !dbg !137
  br i1 %24, label %27, label %25, !dbg !139

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8, !dbg !140
  call void @CRYPTO_free(i8* %26), !dbg !140
  br label %30, !dbg !140

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4, !dbg !141
  %29 = add nsw i32 %28, 41, !dbg !141
  store i32 %29, i32* %5, align 4, !dbg !141
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %5, align 4, !dbg !142
  store i32 %31, i32* %2, align 4, !dbg !143
  br label %32, !dbg !143

32:                                               ; preds = %30, %17, %12
  %33 = load i32, i32* %2, align 4, !dbg !144
  ret i32 %33, !dbg !144
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.stack_st* @sk_new_null() #2

declare void @ERR_put_error(i32, i32, i32, i8*, i32) #2

declare i8* @BUF_strdup(i8*) #2

declare i32 @sk_push(%struct.stack_st*, i8*) #2

declare void @CRYPTO_free(i8*) #2

; Function Attrs: noinline nounwind optnone
define i32 @CRYPTO_num_locks() #0 !dbg !145 {
  ret i32 41, !dbg !148
}

; Function Attrs: noinline nounwind optnone
define i32 @CRYPTO_get_new_dynlockid() #0 !dbg !149 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.CRYPTO_dynlock*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 0, i32* %2, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata %struct.CRYPTO_dynlock** %3, metadata !152, metadata !DIExpression()), !dbg !153
  store %struct.CRYPTO_dynlock* null, %struct.CRYPTO_dynlock** %3, align 8, !dbg !153
  %4 = load %struct.CRYPTO_dynlock_value* (i8*, i32)*, %struct.CRYPTO_dynlock_value* (i8*, i32)** @dynlock_create_callback, align 8, !dbg !154
  %5 = icmp eq %struct.CRYPTO_dynlock_value* (i8*, i32)* %4, null, !dbg !156
  br i1 %5, label %6, label %7, !dbg !157

6:                                                ; preds = %0
  call void @ERR_put_error(i32 15, i32 103, i32 100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 243), !dbg !158
  store i32 0, i32* %1, align 4, !dbg !160
  br label %71, !dbg !160

7:                                                ; preds = %0
  call void @CRYPTO_lock(i32 9, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 246), !dbg !161
  %8 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !162
  %9 = icmp eq %struct.stack_st_CRYPTO_dynlock* %8, null, !dbg !164
  br i1 %9, label %10, label %15, !dbg !165

10:                                               ; preds = %7
  %11 = call %struct.stack_st* @sk_new_null(), !dbg !166
  %12 = bitcast %struct.stack_st* %11 to %struct.stack_st_CRYPTO_dynlock*, !dbg !166
  store %struct.stack_st_CRYPTO_dynlock* %12, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !167
  %13 = icmp eq %struct.stack_st_CRYPTO_dynlock* %12, null, !dbg !168
  br i1 %13, label %14, label %15, !dbg !169

14:                                               ; preds = %10
  call void @CRYPTO_lock(i32 10, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 250), !dbg !170
  call void @ERR_put_error(i32 15, i32 103, i32 65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 251), !dbg !172
  store i32 0, i32* %1, align 4, !dbg !173
  br label %71, !dbg !173

15:                                               ; preds = %10, %7
  call void @CRYPTO_lock(i32 10, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 254), !dbg !174
  %16 = call i8* @CRYPTO_malloc(i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 256), !dbg !175
  %17 = bitcast i8* %16 to %struct.CRYPTO_dynlock*, !dbg !176
  store %struct.CRYPTO_dynlock* %17, %struct.CRYPTO_dynlock** %3, align 8, !dbg !177
  %18 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !178
  %19 = icmp eq %struct.CRYPTO_dynlock* %18, null, !dbg !180
  br i1 %19, label %20, label %21, !dbg !181

20:                                               ; preds = %15
  call void @ERR_put_error(i32 15, i32 103, i32 65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 259), !dbg !182
  store i32 0, i32* %1, align 4, !dbg !184
  br label %71, !dbg !184

21:                                               ; preds = %15
  %22 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !185
  %23 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %22, i32 0, i32 0, !dbg !186
  store i32 1, i32* %23, align 8, !dbg !187
  %24 = load %struct.CRYPTO_dynlock_value* (i8*, i32)*, %struct.CRYPTO_dynlock_value* (i8*, i32)** @dynlock_create_callback, align 8, !dbg !188
  %25 = call %struct.CRYPTO_dynlock_value* %24(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 263), !dbg !188
  %26 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !189
  %27 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %26, i32 0, i32 1, !dbg !190
  store %struct.CRYPTO_dynlock_value* %25, %struct.CRYPTO_dynlock_value** %27, align 8, !dbg !191
  %28 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !192
  %29 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %28, i32 0, i32 1, !dbg !194
  %30 = load %struct.CRYPTO_dynlock_value*, %struct.CRYPTO_dynlock_value** %29, align 8, !dbg !194
  %31 = icmp eq %struct.CRYPTO_dynlock_value* %30, null, !dbg !195
  br i1 %31, label %32, label %35, !dbg !196

32:                                               ; preds = %21
  %33 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !197
  %34 = bitcast %struct.CRYPTO_dynlock* %33 to i8*, !dbg !197
  call void @CRYPTO_free(i8* %34), !dbg !197
  call void @ERR_put_error(i32 15, i32 103, i32 65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 267), !dbg !199
  store i32 0, i32* %1, align 4, !dbg !200
  br label %71, !dbg !200

35:                                               ; preds = %21
  call void @CRYPTO_lock(i32 9, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 271), !dbg !201
  %36 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !202
  %37 = bitcast %struct.stack_st_CRYPTO_dynlock* %36 to %struct.stack_st*, !dbg !202
  %38 = call i32 @sk_find(%struct.stack_st* %37, i8* null), !dbg !202
  store i32 %38, i32* %2, align 4, !dbg !203
  %39 = load i32, i32* %2, align 4, !dbg !204
  %40 = icmp eq i32 %39, -1, !dbg !206
  br i1 %40, label %41, label %48, !dbg !207

41:                                               ; preds = %35
  %42 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !208
  %43 = bitcast %struct.stack_st_CRYPTO_dynlock* %42 to %struct.stack_st*, !dbg !208
  %44 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !208
  %45 = bitcast %struct.CRYPTO_dynlock* %44 to i8*, !dbg !208
  %46 = call i32 @sk_push(%struct.stack_st* %43, i8* %45), !dbg !208
  %47 = sub nsw i32 %46, 1, !dbg !209
  store i32 %47, i32* %2, align 4, !dbg !210
  br label %55, !dbg !211

48:                                               ; preds = %35
  %49 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !212
  %50 = bitcast %struct.stack_st_CRYPTO_dynlock* %49 to %struct.stack_st*, !dbg !212
  %51 = load i32, i32* %2, align 4, !dbg !212
  %52 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !212
  %53 = bitcast %struct.CRYPTO_dynlock* %52 to i8*, !dbg !212
  %54 = call i8* @sk_set(%struct.stack_st* %50, i32 %51, i8* %53), !dbg !212
  br label %55

55:                                               ; preds = %48, %41
  call void @CRYPTO_lock(i32 10, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 285), !dbg !213
  %56 = load i32, i32* %2, align 4, !dbg !214
  %57 = icmp eq i32 %56, -1, !dbg !216
  br i1 %57, label %58, label %65, !dbg !217

58:                                               ; preds = %55
  %59 = load void (%struct.CRYPTO_dynlock_value*, i8*, i32)*, void (%struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_destroy_callback, align 8, !dbg !218
  %60 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !220
  %61 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %60, i32 0, i32 1, !dbg !221
  %62 = load %struct.CRYPTO_dynlock_value*, %struct.CRYPTO_dynlock_value** %61, align 8, !dbg !221
  call void %59(%struct.CRYPTO_dynlock_value* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 289), !dbg !218
  %63 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !222
  %64 = bitcast %struct.CRYPTO_dynlock* %63 to i8*, !dbg !222
  call void @CRYPTO_free(i8* %64), !dbg !222
  br label %68, !dbg !223

65:                                               ; preds = %55
  %66 = load i32, i32* %2, align 4, !dbg !224
  %67 = add nsw i32 %66, 1, !dbg !224
  store i32 %67, i32* %2, align 4, !dbg !224
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %2, align 4, !dbg !225
  %70 = sub nsw i32 0, %69, !dbg !226
  store i32 %70, i32* %1, align 4, !dbg !227
  br label %71, !dbg !227

71:                                               ; preds = %68, %32, %20, %14, %6
  %72 = load i32, i32* %1, align 4, !dbg !228
  ret i32 %72, !dbg !228
}

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_lock(i32 %0, i32 %1, i8* %2, i32 %3) #0 !dbg !229 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.CRYPTO_dynlock_value*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !230, metadata !DIExpression()), !dbg !231
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !232, metadata !DIExpression()), !dbg !233
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !236, metadata !DIExpression()), !dbg !237
  %10 = load i32, i32* %6, align 4, !dbg !238
  %11 = icmp slt i32 %10, 0, !dbg !240
  br i1 %11, label %12, label %31, !dbg !241

12:                                               ; preds = %4
  %13 = load void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)*, void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_lock_callback, align 8, !dbg !242
  %14 = icmp ne void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)* %13, null, !dbg !245
  br i1 %14, label %15, label %30, !dbg !246

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.CRYPTO_dynlock_value** %9, metadata !247, metadata !DIExpression()), !dbg !249
  %16 = load i32, i32* %6, align 4, !dbg !250
  %17 = call %struct.CRYPTO_dynlock_value* @CRYPTO_get_dynlock_value(i32 %16), !dbg !251
  store %struct.CRYPTO_dynlock_value* %17, %struct.CRYPTO_dynlock_value** %9, align 8, !dbg !249
  %18 = load %struct.CRYPTO_dynlock_value*, %struct.CRYPTO_dynlock_value** %9, align 8, !dbg !252
  %19 = icmp ne %struct.CRYPTO_dynlock_value* %18, null, !dbg !252
  br i1 %19, label %20, label %21, !dbg !252

20:                                               ; preds = %15
  br label %22, !dbg !252

21:                                               ; preds = %15
  call void @OpenSSLDie(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 595, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !252
  br label %22, !dbg !252

22:                                               ; preds = %21, %20
  %23 = phi i32 [ 0, %20 ], [ 1, %21 ], !dbg !252
  %24 = load void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)*, void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_lock_callback, align 8, !dbg !253
  %25 = load i32, i32* %5, align 4, !dbg !254
  %26 = load %struct.CRYPTO_dynlock_value*, %struct.CRYPTO_dynlock_value** %9, align 8, !dbg !255
  %27 = load i8*, i8** %7, align 8, !dbg !256
  %28 = load i32, i32* %8, align 4, !dbg !257
  call void %24(i32 %25, %struct.CRYPTO_dynlock_value* %26, i8* %27, i32 %28), !dbg !253
  %29 = load i32, i32* %6, align 4, !dbg !258
  call void @CRYPTO_destroy_dynlockid(i32 %29), !dbg !259
  br label %30, !dbg !260

30:                                               ; preds = %22, %12
  br label %41, !dbg !261

31:                                               ; preds = %4
  %32 = load void (i32, i32, i8*, i32)*, void (i32, i32, i8*, i32)** @locking_callback, align 8, !dbg !262
  %33 = icmp ne void (i32, i32, i8*, i32)* %32, null, !dbg !264
  br i1 %33, label %34, label %40, !dbg !265

34:                                               ; preds = %31
  %35 = load void (i32, i32, i8*, i32)*, void (i32, i32, i8*, i32)** @locking_callback, align 8, !dbg !266
  %36 = load i32, i32* %5, align 4, !dbg !267
  %37 = load i32, i32* %6, align 4, !dbg !268
  %38 = load i8*, i8** %7, align 8, !dbg !269
  %39 = load i32, i32* %8, align 4, !dbg !270
  call void %35(i32 %36, i32 %37, i8* %38, i32 %39), !dbg !266
  br label %40, !dbg !266

40:                                               ; preds = %34, %31
  br label %41

41:                                               ; preds = %40, %30
  ret void, !dbg !271
}

declare i8* @CRYPTO_malloc(i32, i8*, i32) #2

declare i32 @sk_find(%struct.stack_st*, i8*) #2

declare i8* @sk_set(%struct.stack_st*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_destroy_dynlockid(i32 %0) #0 !dbg !272 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CRYPTO_dynlock*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata %struct.CRYPTO_dynlock** %3, metadata !277, metadata !DIExpression()), !dbg !278
  store %struct.CRYPTO_dynlock* null, %struct.CRYPTO_dynlock** %3, align 8, !dbg !278
  %4 = load i32, i32* %2, align 4, !dbg !279
  %5 = icmp ne i32 %4, 0, !dbg !279
  br i1 %5, label %6, label %10, !dbg !281

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !282
  %8 = sub nsw i32 0, %7, !dbg !283
  %9 = sub nsw i32 %8, 1, !dbg !284
  store i32 %9, i32* %2, align 4, !dbg !285
  br label %10, !dbg !286

10:                                               ; preds = %6, %1
  %11 = load void (%struct.CRYPTO_dynlock_value*, i8*, i32)*, void (%struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_destroy_callback, align 8, !dbg !287
  %12 = icmp eq void (%struct.CRYPTO_dynlock_value*, i8*, i32)* %11, null, !dbg !289
  br i1 %12, label %13, label %14, !dbg !290

13:                                               ; preds = %10
  br label %67, !dbg !291

14:                                               ; preds = %10
  call void @CRYPTO_lock(i32 9, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 305), !dbg !292
  %15 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !293
  %16 = icmp eq %struct.stack_st_CRYPTO_dynlock* %15, null, !dbg !295
  br i1 %16, label %23, label %17, !dbg !296

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4, !dbg !297
  %19 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !298
  %20 = bitcast %struct.stack_st_CRYPTO_dynlock* %19 to %struct.stack_st*, !dbg !298
  %21 = call i32 @sk_num(%struct.stack_st* %20), !dbg !298
  %22 = icmp sge i32 %18, %21, !dbg !299
  br i1 %22, label %23, label %24, !dbg !300

23:                                               ; preds = %17, %14
  call void @CRYPTO_lock(i32 10, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 309), !dbg !301
  br label %67, !dbg !303

24:                                               ; preds = %17
  %25 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !304
  %26 = bitcast %struct.stack_st_CRYPTO_dynlock* %25 to %struct.stack_st*, !dbg !304
  %27 = load i32, i32* %2, align 4, !dbg !304
  %28 = call i8* @sk_value(%struct.stack_st* %26, i32 %27), !dbg !304
  %29 = bitcast i8* %28 to %struct.CRYPTO_dynlock*, !dbg !304
  store %struct.CRYPTO_dynlock* %29, %struct.CRYPTO_dynlock** %3, align 8, !dbg !305
  %30 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !306
  %31 = icmp ne %struct.CRYPTO_dynlock* %30, null, !dbg !308
  br i1 %31, label %32, label %57, !dbg !309

32:                                               ; preds = %24
  %33 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !310
  %34 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %33, i32 0, i32 0, !dbg !312
  %35 = load i32, i32* %34, align 8, !dbg !313
  %36 = add nsw i32 %35, -1, !dbg !313
  store i32 %36, i32* %34, align 8, !dbg !313
  %37 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !314
  %38 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %37, i32 0, i32 0, !dbg !316
  %39 = load i32, i32* %38, align 8, !dbg !316
  %40 = icmp slt i32 %39, 0, !dbg !317
  br i1 %40, label %41, label %44, !dbg !318

41:                                               ; preds = %32
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !319
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0)), !dbg !321
  call void @abort() #9, !dbg !322
  unreachable, !dbg !322

44:                                               ; preds = %32
  %45 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !323
  %46 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %45, i32 0, i32 0, !dbg !325
  %47 = load i32, i32* %46, align 8, !dbg !325
  %48 = icmp sle i32 %47, 0, !dbg !326
  br i1 %48, label %49, label %54, !dbg !327

49:                                               ; preds = %44
  %50 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !328
  %51 = bitcast %struct.stack_st_CRYPTO_dynlock* %50 to %struct.stack_st*, !dbg !328
  %52 = load i32, i32* %2, align 4, !dbg !328
  %53 = call i8* @sk_set(%struct.stack_st* %51, i32 %52, i8* null), !dbg !328
  br label %55, !dbg !330

54:                                               ; preds = %44
  store %struct.CRYPTO_dynlock* null, %struct.CRYPTO_dynlock** %3, align 8, !dbg !331
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55
  br label %57, !dbg !332

57:                                               ; preds = %56, %24
  call void @CRYPTO_lock(i32 10, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 331), !dbg !333
  %58 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !334
  %59 = icmp ne %struct.CRYPTO_dynlock* %58, null, !dbg !334
  br i1 %59, label %60, label %67, !dbg !336

60:                                               ; preds = %57
  %61 = load void (%struct.CRYPTO_dynlock_value*, i8*, i32)*, void (%struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_destroy_callback, align 8, !dbg !337
  %62 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !339
  %63 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %62, i32 0, i32 1, !dbg !340
  %64 = load %struct.CRYPTO_dynlock_value*, %struct.CRYPTO_dynlock_value** %63, align 8, !dbg !340
  call void %61(%struct.CRYPTO_dynlock_value* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 335), !dbg !337
  %65 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %3, align 8, !dbg !341
  %66 = bitcast %struct.CRYPTO_dynlock* %65 to i8*, !dbg !341
  call void @CRYPTO_free(i8* %66), !dbg !341
  br label %67, !dbg !342

67:                                               ; preds = %13, %23, %60, %57
  ret void, !dbg !343
}

declare i32 @sk_num(%struct.stack_st*) #2

declare i8* @sk_value(%struct.stack_st*, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind optnone
define %struct.CRYPTO_dynlock_value* @CRYPTO_get_dynlock_value(i32 %0) #0 !dbg !344 {
  %2 = alloca %struct.CRYPTO_dynlock_value*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.CRYPTO_dynlock*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata %struct.CRYPTO_dynlock** %4, metadata !349, metadata !DIExpression()), !dbg !350
  store %struct.CRYPTO_dynlock* null, %struct.CRYPTO_dynlock** %4, align 8, !dbg !350
  %5 = load i32, i32* %3, align 4, !dbg !351
  %6 = icmp ne i32 %5, 0, !dbg !351
  br i1 %6, label %7, label %11, !dbg !353

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !354
  %9 = sub nsw i32 0, %8, !dbg !355
  %10 = sub nsw i32 %9, 1, !dbg !356
  store i32 %10, i32* %3, align 4, !dbg !357
  br label %11, !dbg !358

11:                                               ; preds = %7, %1
  call void @CRYPTO_lock(i32 9, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 346), !dbg !359
  %12 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !360
  %13 = icmp ne %struct.stack_st_CRYPTO_dynlock* %12, null, !dbg !362
  br i1 %13, label %14, label %26, !dbg !363

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4, !dbg !364
  %16 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !365
  %17 = bitcast %struct.stack_st_CRYPTO_dynlock* %16 to %struct.stack_st*, !dbg !365
  %18 = call i32 @sk_num(%struct.stack_st* %17), !dbg !365
  %19 = icmp slt i32 %15, %18, !dbg !366
  br i1 %19, label %20, label %26, !dbg !367

20:                                               ; preds = %14
  %21 = load %struct.stack_st_CRYPTO_dynlock*, %struct.stack_st_CRYPTO_dynlock** @dyn_locks, align 8, !dbg !368
  %22 = bitcast %struct.stack_st_CRYPTO_dynlock* %21 to %struct.stack_st*, !dbg !368
  %23 = load i32, i32* %3, align 4, !dbg !368
  %24 = call i8* @sk_value(%struct.stack_st* %22, i32 %23), !dbg !368
  %25 = bitcast i8* %24 to %struct.CRYPTO_dynlock*, !dbg !368
  store %struct.CRYPTO_dynlock* %25, %struct.CRYPTO_dynlock** %4, align 8, !dbg !369
  br label %26, !dbg !370

26:                                               ; preds = %20, %14, %11
  %27 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %4, align 8, !dbg !371
  %28 = icmp ne %struct.CRYPTO_dynlock* %27, null, !dbg !371
  br i1 %28, label %29, label %34, !dbg !373

29:                                               ; preds = %26
  %30 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %4, align 8, !dbg !374
  %31 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %30, i32 0, i32 0, !dbg !375
  %32 = load i32, i32* %31, align 8, !dbg !376
  %33 = add nsw i32 %32, 1, !dbg !376
  store i32 %33, i32* %31, align 8, !dbg !376
  br label %34, !dbg !374

34:                                               ; preds = %29, %26
  call void @CRYPTO_lock(i32 10, i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 353), !dbg !377
  %35 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %4, align 8, !dbg !378
  %36 = icmp ne %struct.CRYPTO_dynlock* %35, null, !dbg !378
  br i1 %36, label %37, label %41, !dbg !380

37:                                               ; preds = %34
  %38 = load %struct.CRYPTO_dynlock*, %struct.CRYPTO_dynlock** %4, align 8, !dbg !381
  %39 = getelementptr inbounds %struct.CRYPTO_dynlock, %struct.CRYPTO_dynlock* %38, i32 0, i32 1, !dbg !382
  %40 = load %struct.CRYPTO_dynlock_value*, %struct.CRYPTO_dynlock_value** %39, align 8, !dbg !382
  store %struct.CRYPTO_dynlock_value* %40, %struct.CRYPTO_dynlock_value** %2, align 8, !dbg !383
  br label %42, !dbg !383

41:                                               ; preds = %34
  store %struct.CRYPTO_dynlock_value* null, %struct.CRYPTO_dynlock_value** %2, align 8, !dbg !384
  br label %42, !dbg !384

42:                                               ; preds = %41, %37
  %43 = load %struct.CRYPTO_dynlock_value*, %struct.CRYPTO_dynlock_value** %2, align 8, !dbg !385
  ret %struct.CRYPTO_dynlock_value* %43, !dbg !385
}

; Function Attrs: noinline nounwind optnone
define %struct.CRYPTO_dynlock_value* (i8*, i32)* @CRYPTO_get_dynlock_create_callback() #0 !dbg !386 {
  %1 = load %struct.CRYPTO_dynlock_value* (i8*, i32)*, %struct.CRYPTO_dynlock_value* (i8*, i32)** @dynlock_create_callback, align 8, !dbg !389
  ret %struct.CRYPTO_dynlock_value* (i8*, i32)* %1, !dbg !390
}

; Function Attrs: noinline nounwind optnone
define void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)* @CRYPTO_get_dynlock_lock_callback() #0 !dbg !391 {
  %1 = load void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)*, void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_lock_callback, align 8, !dbg !394
  ret void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)* %1, !dbg !395
}

; Function Attrs: noinline nounwind optnone
define void (%struct.CRYPTO_dynlock_value*, i8*, i32)* @CRYPTO_get_dynlock_destroy_callback() #0 !dbg !396 {
  %1 = load void (%struct.CRYPTO_dynlock_value*, i8*, i32)*, void (%struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_destroy_callback, align 8, !dbg !399
  ret void (%struct.CRYPTO_dynlock_value*, i8*, i32)* %1, !dbg !400
}

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_set_dynlock_create_callback(%struct.CRYPTO_dynlock_value* (i8*, i32)* %0) #0 !dbg !401 {
  %2 = alloca %struct.CRYPTO_dynlock_value* (i8*, i32)*, align 8
  store %struct.CRYPTO_dynlock_value* (i8*, i32)* %0, %struct.CRYPTO_dynlock_value* (i8*, i32)** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CRYPTO_dynlock_value* (i8*, i32)** %2, metadata !404, metadata !DIExpression()), !dbg !405
  %3 = load %struct.CRYPTO_dynlock_value* (i8*, i32)*, %struct.CRYPTO_dynlock_value* (i8*, i32)** %2, align 8, !dbg !406
  store %struct.CRYPTO_dynlock_value* (i8*, i32)* %3, %struct.CRYPTO_dynlock_value* (i8*, i32)** @dynlock_create_callback, align 8, !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_set_dynlock_lock_callback(void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)* %0) #0 !dbg !409 {
  %2 = alloca void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)*, align 8
  store void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)* %0, void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)** %2, align 8
  call void @llvm.dbg.declare(metadata void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)** %2, metadata !412, metadata !DIExpression()), !dbg !413
  %3 = load void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)*, void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)** %2, align 8, !dbg !414
  store void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)* %3, void (i32, %struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_lock_callback, align 8, !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_set_dynlock_destroy_callback(void (%struct.CRYPTO_dynlock_value*, i8*, i32)* %0) #0 !dbg !417 {
  %2 = alloca void (%struct.CRYPTO_dynlock_value*, i8*, i32)*, align 8
  store void (%struct.CRYPTO_dynlock_value*, i8*, i32)* %0, void (%struct.CRYPTO_dynlock_value*, i8*, i32)** %2, align 8
  call void @llvm.dbg.declare(metadata void (%struct.CRYPTO_dynlock_value*, i8*, i32)** %2, metadata !420, metadata !DIExpression()), !dbg !421
  %3 = load void (%struct.CRYPTO_dynlock_value*, i8*, i32)*, void (%struct.CRYPTO_dynlock_value*, i8*, i32)** %2, align 8, !dbg !422
  store void (%struct.CRYPTO_dynlock_value*, i8*, i32)* %3, void (%struct.CRYPTO_dynlock_value*, i8*, i32)** @dynlock_destroy_callback, align 8, !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone
define void (i32, i32, i8*, i32)* @CRYPTO_get_locking_callback() #0 !dbg !425 {
  %1 = load void (i32, i32, i8*, i32)*, void (i32, i32, i8*, i32)** @locking_callback, align 8, !dbg !428
  ret void (i32, i32, i8*, i32)* %1, !dbg !429
}

; Function Attrs: noinline nounwind optnone
define i32 (i32*, i32, i32, i8*, i32)* @CRYPTO_get_add_lock_callback() #0 !dbg !430 {
  %1 = load i32 (i32*, i32, i32, i8*, i32)*, i32 (i32*, i32, i32, i8*, i32)** @add_lock_callback, align 8, !dbg !433
  ret i32 (i32*, i32, i32, i8*, i32)* %1, !dbg !434
}

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_set_locking_callback(void (i32, i32, i8*, i32)* %0) #0 !dbg !435 {
  %2 = alloca void (i32, i32, i8*, i32)*, align 8
  store void (i32, i32, i8*, i32)* %0, void (i32, i32, i8*, i32)** %2, align 8
  call void @llvm.dbg.declare(metadata void (i32, i32, i8*, i32)** %2, metadata !438, metadata !DIExpression()), !dbg !439
  call void @OPENSSL_init(), !dbg !440
  %3 = load void (i32, i32, i8*, i32)*, void (i32, i32, i8*, i32)** %2, align 8, !dbg !441
  store void (i32, i32, i8*, i32)* %3, void (i32, i32, i8*, i32)** @locking_callback, align 8, !dbg !442
  ret void, !dbg !443
}

declare void @OPENSSL_init() #2

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_set_add_lock_callback(i32 (i32*, i32, i32, i8*, i32)* %0) #0 !dbg !444 {
  %2 = alloca i32 (i32*, i32, i32, i8*, i32)*, align 8
  store i32 (i32*, i32, i32, i8*, i32)* %0, i32 (i32*, i32, i32, i8*, i32)** %2, align 8
  call void @llvm.dbg.declare(metadata i32 (i32*, i32, i32, i8*, i32)** %2, metadata !447, metadata !DIExpression()), !dbg !448
  %3 = load i32 (i32*, i32, i32, i8*, i32)*, i32 (i32*, i32, i32, i8*, i32)** %2, align 8, !dbg !449
  store i32 (i32*, i32, i32, i8*, i32)* %3, i32 (i32*, i32, i32, i8*, i32)** @add_lock_callback, align 8, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_THREADID_set_numeric(%struct.crypto_threadid_st* %0, i64 %1) #0 !dbg !452 {
  %3 = alloca %struct.crypto_threadid_st*, align 8
  %4 = alloca i64, align 8
  store %struct.crypto_threadid_st* %0, %struct.crypto_threadid_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.crypto_threadid_st** %3, metadata !455, metadata !DIExpression()), !dbg !456
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !457, metadata !DIExpression()), !dbg !458
  %5 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !459
  %6 = bitcast %struct.crypto_threadid_st* %5 to i8*, !dbg !460
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false), !dbg !460
  %7 = load i64, i64* %4, align 8, !dbg !461
  %8 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !462
  %9 = getelementptr inbounds %struct.crypto_threadid_st, %struct.crypto_threadid_st* %8, i32 0, i32 1, !dbg !463
  store i64 %7, i64* %9, align 8, !dbg !464
  ret void, !dbg !465
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_THREADID_set_pointer(%struct.crypto_threadid_st* %0, i8* %1) #0 !dbg !466 {
  %3 = alloca %struct.crypto_threadid_st*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.crypto_threadid_st* %0, %struct.crypto_threadid_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.crypto_threadid_st** %3, metadata !469, metadata !DIExpression()), !dbg !470
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i8** %5, metadata !473, metadata !DIExpression()), !dbg !476
  %8 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !477
  %9 = getelementptr inbounds %struct.crypto_threadid_st, %struct.crypto_threadid_st* %8, i32 0, i32 1, !dbg !478
  %10 = bitcast i64* %9 to i8*, !dbg !479
  store i8* %10, i8** %5, align 8, !dbg !476
  call void @llvm.dbg.declare(metadata i32* %6, metadata !480, metadata !DIExpression()), !dbg !482
  store i32 0, i32* %6, align 4, !dbg !482
  call void @llvm.dbg.declare(metadata i8* %7, metadata !483, metadata !DIExpression()), !dbg !484
  store i8 8, i8* %7, align 1, !dbg !484
  %11 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !485
  %12 = bitcast %struct.crypto_threadid_st* %11 to i8*, !dbg !486
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false), !dbg !486
  %13 = load i8*, i8** %4, align 8, !dbg !487
  %14 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !488
  %15 = getelementptr inbounds %struct.crypto_threadid_st, %struct.crypto_threadid_st* %14, i32 0, i32 0, !dbg !489
  store i8* %13, i8** %15, align 8, !dbg !490
  %16 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !491
  %17 = getelementptr inbounds %struct.crypto_threadid_st, %struct.crypto_threadid_st* %16, i32 0, i32 0, !dbg !494
  %18 = load i8*, i8** %17, align 8, !dbg !494
  %19 = ptrtoint i8* %18 to i64, !dbg !495
  %20 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !496
  %21 = getelementptr inbounds %struct.crypto_threadid_st, %struct.crypto_threadid_st* %20, i32 0, i32 1, !dbg !497
  store i64 %19, i64* %21, align 8, !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone
define i32 @CRYPTO_THREADID_set_callback(void (%struct.crypto_threadid_st*)* %0) #0 !dbg !500 {
  %2 = alloca i32, align 4
  %3 = alloca void (%struct.crypto_threadid_st*)*, align 8
  store void (%struct.crypto_threadid_st*)* %0, void (%struct.crypto_threadid_st*)** %3, align 8
  call void @llvm.dbg.declare(metadata void (%struct.crypto_threadid_st*)** %3, metadata !503, metadata !DIExpression()), !dbg !504
  %4 = load void (%struct.crypto_threadid_st*)*, void (%struct.crypto_threadid_st*)** @threadid_callback, align 8, !dbg !505
  %5 = icmp ne void (%struct.crypto_threadid_st*)* %4, null, !dbg !505
  br i1 %5, label %6, label %7, !dbg !507

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !508
  br label %9, !dbg !508

7:                                                ; preds = %1
  %8 = load void (%struct.crypto_threadid_st*)*, void (%struct.crypto_threadid_st*)** %3, align 8, !dbg !509
  store void (%struct.crypto_threadid_st*)* %8, void (%struct.crypto_threadid_st*)** @threadid_callback, align 8, !dbg !510
  store i32 1, i32* %2, align 4, !dbg !511
  br label %9, !dbg !511

9:                                                ; preds = %7, %6
  %10 = load i32, i32* %2, align 4, !dbg !512
  ret i32 %10, !dbg !512
}

; Function Attrs: noinline nounwind optnone
define void (%struct.crypto_threadid_st*)* @CRYPTO_THREADID_get_callback() #0 !dbg !513 {
  %1 = load void (%struct.crypto_threadid_st*)*, void (%struct.crypto_threadid_st*)** @threadid_callback, align 8, !dbg !516
  ret void (%struct.crypto_threadid_st*)* %1, !dbg !517
}

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_THREADID_current(%struct.crypto_threadid_st* %0) #0 !dbg !518 {
  %2 = alloca %struct.crypto_threadid_st*, align 8
  store %struct.crypto_threadid_st* %0, %struct.crypto_threadid_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.crypto_threadid_st** %2, metadata !519, metadata !DIExpression()), !dbg !520
  %3 = load void (%struct.crypto_threadid_st*)*, void (%struct.crypto_threadid_st*)** @threadid_callback, align 8, !dbg !521
  %4 = icmp ne void (%struct.crypto_threadid_st*)* %3, null, !dbg !521
  br i1 %4, label %5, label %8, !dbg !523

5:                                                ; preds = %1
  %6 = load void (%struct.crypto_threadid_st*)*, void (%struct.crypto_threadid_st*)** @threadid_callback, align 8, !dbg !524
  %7 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %2, align 8, !dbg !526
  call void %6(%struct.crypto_threadid_st* %7), !dbg !524
  br label %19, !dbg !527

8:                                                ; preds = %1
  %9 = load i64 ()*, i64 ()** @id_callback, align 8, !dbg !528
  %10 = icmp ne i64 ()* %9, null, !dbg !528
  br i1 %10, label %11, label %15, !dbg !530

11:                                               ; preds = %8
  %12 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %2, align 8, !dbg !531
  %13 = load i64 ()*, i64 ()** @id_callback, align 8, !dbg !533
  %14 = call i64 %13(), !dbg !533
  call void @CRYPTO_THREADID_set_numeric(%struct.crypto_threadid_st* %12, i64 %14), !dbg !534
  br label %19, !dbg !535

15:                                               ; preds = %8
  %16 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %2, align 8, !dbg !536
  %17 = call i32* @__errno_location() #10, !dbg !537
  %18 = bitcast i32* %17 to i8*, !dbg !538
  call void @CRYPTO_THREADID_set_pointer(%struct.crypto_threadid_st* %16, i8* %18), !dbg !539
  br label %19, !dbg !540

19:                                               ; preds = %15, %11, %5
  ret void, !dbg !540
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: noinline nounwind optnone
define i32 @CRYPTO_THREADID_cmp(%struct.crypto_threadid_st* %0, %struct.crypto_threadid_st* %1) #0 !dbg !541 {
  %3 = alloca %struct.crypto_threadid_st*, align 8
  %4 = alloca %struct.crypto_threadid_st*, align 8
  store %struct.crypto_threadid_st* %0, %struct.crypto_threadid_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.crypto_threadid_st** %3, metadata !546, metadata !DIExpression()), !dbg !547
  store %struct.crypto_threadid_st* %1, %struct.crypto_threadid_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.crypto_threadid_st** %4, metadata !548, metadata !DIExpression()), !dbg !549
  %5 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !550
  %6 = bitcast %struct.crypto_threadid_st* %5 to i8*, !dbg !550
  %7 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %4, align 8, !dbg !551
  %8 = bitcast %struct.crypto_threadid_st* %7 to i8*, !dbg !551
  %9 = call i32 @memcmp(i8* %6, i8* %8, i64 16) #11, !dbg !552
  ret i32 %9, !dbg !553
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_THREADID_cpy(%struct.crypto_threadid_st* %0, %struct.crypto_threadid_st* %1) #0 !dbg !554 {
  %3 = alloca %struct.crypto_threadid_st*, align 8
  %4 = alloca %struct.crypto_threadid_st*, align 8
  store %struct.crypto_threadid_st* %0, %struct.crypto_threadid_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.crypto_threadid_st** %3, metadata !557, metadata !DIExpression()), !dbg !558
  store %struct.crypto_threadid_st* %1, %struct.crypto_threadid_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.crypto_threadid_st** %4, metadata !559, metadata !DIExpression()), !dbg !560
  %5 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %3, align 8, !dbg !561
  %6 = bitcast %struct.crypto_threadid_st* %5 to i8*, !dbg !562
  %7 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %4, align 8, !dbg !563
  %8 = bitcast %struct.crypto_threadid_st* %7 to i8*, !dbg !562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %8, i64 16, i1 false), !dbg !562
  ret void, !dbg !564
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone
define i64 @CRYPTO_THREADID_hash(%struct.crypto_threadid_st* %0) #0 !dbg !565 {
  %2 = alloca %struct.crypto_threadid_st*, align 8
  store %struct.crypto_threadid_st* %0, %struct.crypto_threadid_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.crypto_threadid_st** %2, metadata !568, metadata !DIExpression()), !dbg !569
  %3 = load %struct.crypto_threadid_st*, %struct.crypto_threadid_st** %2, align 8, !dbg !570
  %4 = getelementptr inbounds %struct.crypto_threadid_st, %struct.crypto_threadid_st* %3, i32 0, i32 1, !dbg !571
  %5 = load i64, i64* %4, align 8, !dbg !571
  ret i64 %5, !dbg !572
}

; Function Attrs: noinline nounwind optnone
define i64 ()* @CRYPTO_get_id_callback() #0 !dbg !573 {
  %1 = load i64 ()*, i64 ()** @id_callback, align 8, !dbg !576
  ret i64 ()* %1, !dbg !577
}

; Function Attrs: noinline nounwind optnone
define void @CRYPTO_set_id_callback(i64 ()* %0) #0 !dbg !578 {
  %2 = alloca i64 ()*, align 8
  store i64 ()* %0, i64 ()** %2, align 8
  call void @llvm.dbg.declare(metadata i64 ()** %2, metadata !581, metadata !DIExpression()), !dbg !582
  %3 = load i64 ()*, i64 ()** %2, align 8, !dbg !583
  store i64 ()* %3, i64 ()** @id_callback, align 8, !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone
define i64 @CRYPTO_thread_id() #0 !dbg !586 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !587, metadata !DIExpression()), !dbg !588
  store i64 0, i64* %1, align 8, !dbg !588
  %2 = load i64 ()*, i64 ()** @id_callback, align 8, !dbg !589
  %3 = icmp eq i64 ()* %2, null, !dbg !591
  br i1 %3, label %4, label %7, !dbg !592

4:                                                ; preds = %0
  %5 = call i32 @getpid() #8, !dbg !593
  %6 = sext i32 %5 to i64, !dbg !595
  store i64 %6, i64* %1, align 8, !dbg !596
  br label %10, !dbg !597

7:                                                ; preds = %0
  %8 = load i64 ()*, i64 ()** @id_callback, align 8, !dbg !598
  %9 = call i64 %8(), !dbg !598
  store i64 %9, i64* %1, align 8, !dbg !599
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i64, i64* %1, align 8, !dbg !600
  ret i64 %11, !dbg !601
}

; Function Attrs: nounwind
declare i32 @getpid() #7

; Function Attrs: noinline nounwind optnone
define void @OpenSSLDie(i8* %0, i32 %1, i8* %2) #0 !dbg !602 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !605, metadata !DIExpression()), !dbg !606
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !607, metadata !DIExpression()), !dbg !608
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !609, metadata !DIExpression()), !dbg !610
  %7 = load i8*, i8** %4, align 8, !dbg !611
  %8 = load i32, i32* %5, align 4, !dbg !612
  %9 = load i8*, i8** %6, align 8, !dbg !613
  call void (i8*, ...) @OPENSSL_showfatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %7, i32 %8, i8* %9), !dbg !614
  call void @abort() #9, !dbg !615
  unreachable, !dbg !615
}

; Function Attrs: noinline nounwind optnone
define i32 @CRYPTO_add_lock(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 !dbg !616 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !617, metadata !DIExpression()), !dbg !618
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !619, metadata !DIExpression()), !dbg !620
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !621, metadata !DIExpression()), !dbg !622
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !623, metadata !DIExpression()), !dbg !624
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata i32* %11, metadata !627, metadata !DIExpression()), !dbg !628
  store i32 0, i32* %11, align 4, !dbg !628
  %12 = load i32 (i32*, i32, i32, i8*, i32)*, i32 (i32*, i32, i32, i8*, i32)** @add_lock_callback, align 8, !dbg !629
  %13 = icmp ne i32 (i32*, i32, i32, i8*, i32)* %12, null, !dbg !631
  br i1 %13, label %14, label %22, !dbg !632

14:                                               ; preds = %5
  %15 = load i32 (i32*, i32, i32, i8*, i32)*, i32 (i32*, i32, i32, i8*, i32)** @add_lock_callback, align 8, !dbg !633
  %16 = load i32*, i32** %6, align 8, !dbg !635
  %17 = load i32, i32* %7, align 4, !dbg !636
  %18 = load i32, i32* %8, align 4, !dbg !637
  %19 = load i8*, i8** %9, align 8, !dbg !638
  %20 = load i32, i32* %10, align 4, !dbg !639
  %21 = call i32 %15(i32* %16, i32 %17, i32 %18, i8* %19, i32 %20), !dbg !633
  store i32 %21, i32* %11, align 4, !dbg !640
  br label %35, !dbg !641

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4, !dbg !642
  %24 = load i8*, i8** %9, align 8, !dbg !644
  %25 = load i32, i32* %10, align 4, !dbg !645
  call void @CRYPTO_lock(i32 9, i32 %23, i8* %24, i32 %25), !dbg !646
  %26 = load i32*, i32** %6, align 8, !dbg !647
  %27 = load i32, i32* %26, align 4, !dbg !648
  %28 = load i32, i32* %7, align 4, !dbg !649
  %29 = add nsw i32 %27, %28, !dbg !650
  store i32 %29, i32* %11, align 4, !dbg !651
  %30 = load i32, i32* %11, align 4, !dbg !652
  %31 = load i32*, i32** %6, align 8, !dbg !653
  store i32 %30, i32* %31, align 4, !dbg !654
  %32 = load i32, i32* %8, align 4, !dbg !655
  %33 = load i8*, i8** %9, align 8, !dbg !656
  %34 = load i32, i32* %10, align 4, !dbg !657
  call void @CRYPTO_lock(i32 10, i32 %32, i8* %33, i32 %34), !dbg !658
  br label %35

35:                                               ; preds = %22, %14
  %36 = load i32, i32* %11, align 4, !dbg !659
  ret i32 %36, !dbg !660
}

; Function Attrs: noinline nounwind optnone
define i8* @CRYPTO_get_lock_name(i32 %0) #0 !dbg !661 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !664, metadata !DIExpression()), !dbg !665
  %4 = load i32, i32* %3, align 4, !dbg !666
  %5 = icmp slt i32 %4, 0, !dbg !668
  br i1 %5, label %6, label %7, !dbg !669

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8, !dbg !670
  br label %29, !dbg !670

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !671
  %9 = icmp slt i32 %8, 41, !dbg !673
  br i1 %9, label %10, label %15, !dbg !674

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !675
  %12 = sext i32 %11 to i64, !dbg !676
  %13 = getelementptr inbounds [41 x i8*], [41 x i8*]* @lock_names, i64 0, i64 %12, !dbg !676
  %14 = load i8*, i8** %13, align 8, !dbg !676
  store i8* %14, i8** %2, align 8, !dbg !677
  br label %29, !dbg !677

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4, !dbg !678
  %17 = sub nsw i32 %16, 41, !dbg !680
  %18 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @app_locks, align 8, !dbg !681
  %19 = bitcast %struct.stack_st_OPENSSL_STRING* %18 to %struct.stack_st*, !dbg !681
  %20 = call i32 @sk_num(%struct.stack_st* %19), !dbg !681
  %21 = icmp sgt i32 %17, %20, !dbg !682
  br i1 %21, label %22, label %23, !dbg !683

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8, !dbg !684
  br label %29, !dbg !684

23:                                               ; preds = %15
  %24 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @app_locks, align 8, !dbg !685
  %25 = bitcast %struct.stack_st_OPENSSL_STRING* %24 to %struct.stack_st*, !dbg !685
  %26 = load i32, i32* %3, align 4, !dbg !685
  %27 = sub nsw i32 %26, 41, !dbg !685
  %28 = call i8* @sk_value(%struct.stack_st* %25, i32 %27), !dbg !685
  store i8* %28, i8** %2, align 8, !dbg !686
  br label %29, !dbg !686

29:                                               ; preds = %23, %22, %10, %6
  %30 = load i8*, i8** %2, align 8, !dbg !687
  ret i8* %30, !dbg !687
}

; Function Attrs: noinline nounwind optnone
define i64* @OPENSSL_ia32cap_loc() #0 !dbg !688 {
  ret i64* null, !dbg !692
}

; Function Attrs: noinline nounwind optnone
define void @OPENSSL_cpuid_setup() #0 !dbg !693 {
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone
define void @OPENSSL_showfatal(i8* %0, ...) #0 !dbg !697 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.__va_list, align 8
  %4 = alloca %struct.__va_list, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !700, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !702, metadata !DIExpression()), !dbg !715
  %5 = bitcast %struct.__va_list* %3 to i8*, !dbg !716
  call void @llvm.va_start(i8* %5), !dbg !716
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !717
  %7 = load i8*, i8** %2, align 8, !dbg !718
  %8 = bitcast %struct.__va_list* %4 to i8*, !dbg !719
  %9 = bitcast %struct.__va_list* %3 to i8*, !dbg !719
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false), !dbg !719
  %10 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list* %4), !dbg !719
  %11 = bitcast %struct.__va_list* %3 to i8*, !dbg !720
  call void @llvm.va_end(i8* %11), !dbg !720
  ret void, !dbg !721
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optnone
define i32 @OPENSSL_isservice() #0 !dbg !722 {
  ret i32 0, !dbg !723
}

; Function Attrs: noinline nounwind optnone
define i8* @OPENSSL_stderr() #0 !dbg !724 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !727
  %2 = bitcast %struct._IO_FILE* %1 to i8*, !dbg !727
  ret i8* %2, !dbg !728
}

; Function Attrs: noinline nounwind optnone
define i32 @CRYPTO_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !729 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !734, metadata !DIExpression()), !dbg !735
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !736, metadata !DIExpression()), !dbg !737
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata i64* %7, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata i8** %8, metadata !742, metadata !DIExpression()), !dbg !745
  %11 = load i8*, i8** %4, align 8, !dbg !746
  store i8* %11, i8** %8, align 8, !dbg !745
  call void @llvm.dbg.declare(metadata i8** %9, metadata !747, metadata !DIExpression()), !dbg !748
  %12 = load i8*, i8** %5, align 8, !dbg !749
  store i8* %12, i8** %9, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata i8* %10, metadata !750, metadata !DIExpression()), !dbg !751
  store i8 0, i8* %10, align 1, !dbg !751
  store i64 0, i64* %7, align 8, !dbg !752
  br label %13, !dbg !754

13:                                               ; preds = %33, %3
  %14 = load i64, i64* %7, align 8, !dbg !755
  %15 = load i64, i64* %6, align 8, !dbg !757
  %16 = icmp ult i64 %14, %15, !dbg !758
  br i1 %16, label %17, label %36, !dbg !759

17:                                               ; preds = %13
  %18 = load i8*, i8** %8, align 8, !dbg !760
  %19 = load i64, i64* %7, align 8, !dbg !761
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !760
  %21 = load i8, i8* %20, align 1, !dbg !760
  %22 = zext i8 %21 to i32, !dbg !760
  %23 = load i8*, i8** %9, align 8, !dbg !762
  %24 = load i64, i64* %7, align 8, !dbg !763
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !762
  %26 = load i8, i8* %25, align 1, !dbg !762
  %27 = zext i8 %26 to i32, !dbg !762
  %28 = xor i32 %22, %27, !dbg !764
  %29 = load i8, i8* %10, align 1, !dbg !765
  %30 = zext i8 %29 to i32, !dbg !765
  %31 = or i32 %30, %28, !dbg !765
  %32 = trunc i32 %31 to i8, !dbg !765
  store i8 %32, i8* %10, align 1, !dbg !765
  br label %33, !dbg !766

33:                                               ; preds = %17
  %34 = load i64, i64* %7, align 8, !dbg !767
  %35 = add i64 %34, 1, !dbg !767
  store i64 %35, i64* %7, align 8, !dbg !767
  br label %13, !dbg !768, !llvm.loop !769

36:                                               ; preds = %13
  %37 = load i8, i8* %10, align 1, !dbg !771
  %38 = zext i8 %37 to i32, !dbg !771
  ret i32 %38, !dbg !772
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_locks", scope: !2, file: !3, line: 177, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !46, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cryptlib.c", directory: "/opt/openssl/openssl/crypto")
!4 = !{}
!5 = !{!6, !7, !30, !31, !35, !17, !44, !45}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OPENSSL_STRING", file: !9, line: 125, size: 256, elements: !10)
!9 = !DIFile(filename: "../include/openssl/safestack.h", directory: "/opt/openssl/openssl/crypto")
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !8, file: !9, line: 125, baseType: !12, size: 256)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !13, line: 74, baseType: !14)
!13 = !DIFile(filename: "../include/openssl/stack.h", directory: "/opt/openssl/openssl/crypto")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !13, line: 66, size: 256, elements: !15)
!15 = !{!16, !18, !22, !23, !24}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !14, file: !13, line: 68, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 69, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !14, file: !13, line: 70, baseType: !17, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !14, file: !13, line: 72, baseType: !17, size: 32, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !14, file: !13, line: 73, baseType: !25, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!17, !28, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_CRYPTO_dynlock", file: !3, line: 124, size: 256, elements: !33)
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !32, file: !3, line: 124, baseType: !12, size: 256)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_dynlock", file: !37, line: 260, baseType: !38)
!37 = !DIFile(filename: "../include/openssl/crypto.h", directory: "/opt/openssl/openssl/crypto")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 256, size: 128, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !38, file: !37, line: 258, baseType: !17, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !37, line: 259, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "CRYPTO_dynlock_value", file: !37, line: 259, flags: DIFlagFwdDecl)
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "OPENSSL_STRING", file: !9, line: 113, baseType: !20)
!46 = !{!47, !0, !49, !56, !58, !63, !68, !73, !79, !90, !95}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "OPENSSL_NONPIC_relocated", scope: !2, file: !3, line: 721, type: !17, isLocal: false, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "dynlock_create_callback", scope: !2, file: !3, line: 193, type: !51, isLocal: true, isDefinition: true)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!42, !54, !17}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "dyn_locks", scope: !2, file: !3, line: 182, type: !31, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "dynlock_destroy_callback", scope: !2, file: !3, line: 197, type: !60, isLocal: true, isDefinition: true)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !42, !54, !17}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "dynlock_lock_callback", scope: !2, file: !3, line: 195, type: !65, isLocal: true, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !17, !42, !54, !17}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "locking_callback", scope: !2, file: !3, line: 185, type: !70, isLocal: true, isDefinition: true)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !17, !17, !54, !17}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "add_lock_callback", scope: !2, file: !3, line: 187, type: !75, isLocal: true, isDefinition: true)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!17, !78, !17, !17, !54, !17}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "threadid_callback", scope: !2, file: !3, line: 192, type: !81, isLocal: true, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_THREADID", file: !37, line: 433, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_threadid_st", file: !37, line: 429, size: 128, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !86, file: !37, line: 431, baseType: !6, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !86, file: !37, line: 432, baseType: !44, size: 64, offset: 64)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "id_callback", scope: !2, file: !3, line: 190, type: !92, isLocal: true, isDefinition: true)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!44}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "lock_names", scope: !2, file: !3, line: 127, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 2624, elements: !99)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!99 = !{!100}
!100 = !DISubrange(count: 41)
!101 = !{i32 7, !"Dwarf Version", i32 4}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 7, !"PIC Level", i32 2}
!105 = !{!"clang version 10.0.0-4ubuntu1 "}
!106 = distinct !DISubprogram(name: "CRYPTO_get_new_lockid", scope: !3, file: !3, line: 200, type: !107, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!107 = !DISubroutineType(types: !108)
!108 = !{!17, !20}
!109 = !DILocalVariable(name: "name", arg: 1, scope: !106, file: !3, line: 200, type: !20)
!110 = !DILocation(line: 200, column: 33, scope: !106)
!111 = !DILocalVariable(name: "str", scope: !106, file: !3, line: 202, type: !20)
!112 = !DILocation(line: 202, column: 8, scope: !106)
!113 = !DILocalVariable(name: "i", scope: !106, file: !3, line: 203, type: !17)
!114 = !DILocation(line: 203, column: 6, scope: !106)
!115 = !DILocation(line: 213, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !106, file: !3, line: 213, column: 6)
!117 = !DILocation(line: 213, column: 17, scope: !116)
!118 = !DILocation(line: 213, column: 26, scope: !116)
!119 = !DILocation(line: 213, column: 41, scope: !116)
!120 = !DILocation(line: 213, column: 40, scope: !116)
!121 = !DILocation(line: 213, column: 71, scope: !116)
!122 = !DILocation(line: 213, column: 6, scope: !106)
!123 = !DILocation(line: 215, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !3, line: 214, column: 3)
!125 = !DILocation(line: 216, column: 3, scope: !124)
!126 = !DILocation(line: 218, column: 22, scope: !127)
!127 = distinct !DILexicalBlock(scope: !106, file: !3, line: 218, column: 6)
!128 = !DILocation(line: 218, column: 11, scope: !127)
!129 = !DILocation(line: 218, column: 10, scope: !127)
!130 = !DILocation(line: 218, column: 29, scope: !127)
!131 = !DILocation(line: 218, column: 6, scope: !106)
!132 = !DILocation(line: 220, column: 3, scope: !133)
!133 = distinct !DILexicalBlock(scope: !127, file: !3, line: 219, column: 3)
!134 = !DILocation(line: 221, column: 3, scope: !133)
!135 = !DILocation(line: 223, column: 4, scope: !106)
!136 = !DILocation(line: 223, column: 3, scope: !106)
!137 = !DILocation(line: 224, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !106, file: !3, line: 224, column: 6)
!139 = !DILocation(line: 224, column: 6, scope: !106)
!140 = !DILocation(line: 225, column: 3, scope: !138)
!141 = !DILocation(line: 227, column: 4, scope: !138)
!142 = !DILocation(line: 228, column: 9, scope: !106)
!143 = !DILocation(line: 228, column: 2, scope: !106)
!144 = !DILocation(line: 229, column: 2, scope: !106)
!145 = distinct !DISubprogram(name: "CRYPTO_num_locks", scope: !3, file: !3, line: 231, type: !146, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!146 = !DISubroutineType(types: !147)
!147 = !{!17}
!148 = !DILocation(line: 233, column: 2, scope: !145)
!149 = distinct !DISubprogram(name: "CRYPTO_get_new_dynlockid", scope: !3, file: !3, line: 236, type: !146, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!150 = !DILocalVariable(name: "i", scope: !149, file: !3, line: 238, type: !17)
!151 = !DILocation(line: 238, column: 6, scope: !149)
!152 = !DILocalVariable(name: "pointer", scope: !149, file: !3, line: 239, type: !35)
!153 = !DILocation(line: 239, column: 18, scope: !149)
!154 = !DILocation(line: 241, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !149, file: !3, line: 241, column: 6)
!156 = !DILocation(line: 241, column: 30, scope: !155)
!157 = !DILocation(line: 241, column: 6, scope: !149)
!158 = !DILocation(line: 243, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 242, column: 3)
!160 = !DILocation(line: 244, column: 3, scope: !159)
!161 = !DILocation(line: 246, column: 2, scope: !149)
!162 = !DILocation(line: 247, column: 7, scope: !163)
!163 = distinct !DILexicalBlock(scope: !149, file: !3, line: 247, column: 6)
!164 = !DILocation(line: 247, column: 17, scope: !163)
!165 = !DILocation(line: 248, column: 3, scope: !163)
!166 = !DILocation(line: 248, column: 18, scope: !163)
!167 = !DILocation(line: 248, column: 17, scope: !163)
!168 = !DILocation(line: 248, column: 48, scope: !163)
!169 = !DILocation(line: 247, column: 6, scope: !149)
!170 = !DILocation(line: 250, column: 3, scope: !171)
!171 = distinct !DILexicalBlock(scope: !163, file: !3, line: 249, column: 3)
!172 = !DILocation(line: 251, column: 3, scope: !171)
!173 = !DILocation(line: 252, column: 3, scope: !171)
!174 = !DILocation(line: 254, column: 2, scope: !149)
!175 = !DILocation(line: 256, column: 30, scope: !149)
!176 = !DILocation(line: 256, column: 12, scope: !149)
!177 = !DILocation(line: 256, column: 10, scope: !149)
!178 = !DILocation(line: 257, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !149, file: !3, line: 257, column: 6)
!180 = !DILocation(line: 257, column: 14, scope: !179)
!181 = !DILocation(line: 257, column: 6, scope: !149)
!182 = !DILocation(line: 259, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !3, line: 258, column: 3)
!184 = !DILocation(line: 260, column: 3, scope: !183)
!185 = !DILocation(line: 262, column: 2, scope: !149)
!186 = !DILocation(line: 262, column: 11, scope: !149)
!187 = !DILocation(line: 262, column: 22, scope: !149)
!188 = !DILocation(line: 263, column: 18, scope: !149)
!189 = !DILocation(line: 263, column: 2, scope: !149)
!190 = !DILocation(line: 263, column: 11, scope: !149)
!191 = !DILocation(line: 263, column: 16, scope: !149)
!192 = !DILocation(line: 264, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !149, file: !3, line: 264, column: 6)
!194 = !DILocation(line: 264, column: 15, scope: !193)
!195 = !DILocation(line: 264, column: 20, scope: !193)
!196 = !DILocation(line: 264, column: 6, scope: !149)
!197 = !DILocation(line: 266, column: 3, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !3, line: 265, column: 3)
!199 = !DILocation(line: 267, column: 3, scope: !198)
!200 = !DILocation(line: 268, column: 3, scope: !198)
!201 = !DILocation(line: 271, column: 2, scope: !149)
!202 = !DILocation(line: 273, column: 4, scope: !149)
!203 = !DILocation(line: 273, column: 3, scope: !149)
!204 = !DILocation(line: 275, column: 6, scope: !205)
!205 = distinct !DILexicalBlock(scope: !149, file: !3, line: 275, column: 6)
!206 = !DILocation(line: 275, column: 8, scope: !205)
!207 = !DILocation(line: 275, column: 6, scope: !149)
!208 = !DILocation(line: 280, column: 5, scope: !205)
!209 = !DILocation(line: 280, column: 47, scope: !205)
!210 = !DILocation(line: 280, column: 4, scope: !205)
!211 = !DILocation(line: 280, column: 3, scope: !205)
!212 = !DILocation(line: 284, column: 9, scope: !205)
!213 = !DILocation(line: 285, column: 2, scope: !149)
!214 = !DILocation(line: 287, column: 6, scope: !215)
!215 = distinct !DILexicalBlock(scope: !149, file: !3, line: 287, column: 6)
!216 = !DILocation(line: 287, column: 8, scope: !215)
!217 = !DILocation(line: 287, column: 6, scope: !149)
!218 = !DILocation(line: 289, column: 3, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 288, column: 3)
!220 = !DILocation(line: 289, column: 28, scope: !219)
!221 = !DILocation(line: 289, column: 37, scope: !219)
!222 = !DILocation(line: 290, column: 3, scope: !219)
!223 = !DILocation(line: 291, column: 3, scope: !219)
!224 = !DILocation(line: 293, column: 5, scope: !215)
!225 = !DILocation(line: 294, column: 10, scope: !149)
!226 = !DILocation(line: 294, column: 9, scope: !149)
!227 = !DILocation(line: 294, column: 2, scope: !149)
!228 = !DILocation(line: 295, column: 2, scope: !149)
!229 = distinct !DISubprogram(name: "CRYPTO_lock", scope: !3, file: !3, line: 561, type: !71, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!230 = !DILocalVariable(name: "mode", arg: 1, scope: !229, file: !3, line: 561, type: !17)
!231 = !DILocation(line: 561, column: 22, scope: !229)
!232 = !DILocalVariable(name: "type", arg: 2, scope: !229, file: !3, line: 561, type: !17)
!233 = !DILocation(line: 561, column: 32, scope: !229)
!234 = !DILocalVariable(name: "file", arg: 3, scope: !229, file: !3, line: 561, type: !54)
!235 = !DILocation(line: 561, column: 50, scope: !229)
!236 = !DILocalVariable(name: "line", arg: 4, scope: !229, file: !3, line: 561, type: !17)
!237 = !DILocation(line: 561, column: 60, scope: !229)
!238 = !DILocation(line: 588, column: 6, scope: !239)
!239 = distinct !DILexicalBlock(scope: !229, file: !3, line: 588, column: 6)
!240 = !DILocation(line: 588, column: 11, scope: !239)
!241 = !DILocation(line: 588, column: 6, scope: !229)
!242 = !DILocation(line: 590, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 590, column: 7)
!244 = distinct !DILexicalBlock(scope: !239, file: !3, line: 589, column: 3)
!245 = !DILocation(line: 590, column: 29, scope: !243)
!246 = !DILocation(line: 590, column: 7, scope: !244)
!247 = !DILocalVariable(name: "pointer", scope: !248, file: !3, line: 592, type: !42)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 591, column: 4)
!249 = !DILocation(line: 592, column: 33, scope: !248)
!250 = !DILocation(line: 593, column: 32, scope: !248)
!251 = !DILocation(line: 593, column: 7, scope: !248)
!252 = !DILocation(line: 595, column: 4, scope: !248)
!253 = !DILocation(line: 597, column: 4, scope: !248)
!254 = !DILocation(line: 597, column: 26, scope: !248)
!255 = !DILocation(line: 597, column: 32, scope: !248)
!256 = !DILocation(line: 597, column: 41, scope: !248)
!257 = !DILocation(line: 597, column: 47, scope: !248)
!258 = !DILocation(line: 599, column: 29, scope: !248)
!259 = !DILocation(line: 599, column: 4, scope: !248)
!260 = !DILocation(line: 600, column: 4, scope: !248)
!261 = !DILocation(line: 601, column: 3, scope: !244)
!262 = !DILocation(line: 603, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !239, file: !3, line: 603, column: 7)
!264 = !DILocation(line: 603, column: 24, scope: !263)
!265 = !DILocation(line: 603, column: 7, scope: !239)
!266 = !DILocation(line: 604, column: 4, scope: !263)
!267 = !DILocation(line: 604, column: 21, scope: !263)
!268 = !DILocation(line: 604, column: 26, scope: !263)
!269 = !DILocation(line: 604, column: 31, scope: !263)
!270 = !DILocation(line: 604, column: 36, scope: !263)
!271 = !DILocation(line: 605, column: 2, scope: !229)
!272 = distinct !DISubprogram(name: "CRYPTO_destroy_dynlockid", scope: !3, file: !3, line: 297, type: !273, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !17}
!275 = !DILocalVariable(name: "i", arg: 1, scope: !272, file: !3, line: 297, type: !17)
!276 = !DILocation(line: 297, column: 35, scope: !272)
!277 = !DILocalVariable(name: "pointer", scope: !272, file: !3, line: 299, type: !35)
!278 = !DILocation(line: 299, column: 18, scope: !272)
!279 = !DILocation(line: 300, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !3, line: 300, column: 6)
!281 = !DILocation(line: 300, column: 6, scope: !272)
!282 = !DILocation(line: 301, column: 8, scope: !280)
!283 = !DILocation(line: 301, column: 7, scope: !280)
!284 = !DILocation(line: 301, column: 9, scope: !280)
!285 = !DILocation(line: 301, column: 5, scope: !280)
!286 = !DILocation(line: 301, column: 3, scope: !280)
!287 = !DILocation(line: 302, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !272, file: !3, line: 302, column: 6)
!289 = !DILocation(line: 302, column: 31, scope: !288)
!290 = !DILocation(line: 302, column: 6, scope: !272)
!291 = !DILocation(line: 303, column: 3, scope: !288)
!292 = !DILocation(line: 305, column: 2, scope: !272)
!293 = !DILocation(line: 307, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !272, file: !3, line: 307, column: 6)
!295 = !DILocation(line: 307, column: 16, scope: !294)
!296 = !DILocation(line: 307, column: 24, scope: !294)
!297 = !DILocation(line: 307, column: 27, scope: !294)
!298 = !DILocation(line: 307, column: 32, scope: !294)
!299 = !DILocation(line: 307, column: 29, scope: !294)
!300 = !DILocation(line: 307, column: 6, scope: !272)
!301 = !DILocation(line: 309, column: 3, scope: !302)
!302 = distinct !DILexicalBlock(scope: !294, file: !3, line: 308, column: 3)
!303 = !DILocation(line: 310, column: 3, scope: !302)
!304 = !DILocation(line: 312, column: 12, scope: !272)
!305 = !DILocation(line: 312, column: 10, scope: !272)
!306 = !DILocation(line: 313, column: 6, scope: !307)
!307 = distinct !DILexicalBlock(scope: !272, file: !3, line: 313, column: 6)
!308 = !DILocation(line: 313, column: 14, scope: !307)
!309 = !DILocation(line: 313, column: 6, scope: !272)
!310 = !DILocation(line: 315, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 314, column: 3)
!312 = !DILocation(line: 315, column: 14, scope: !311)
!313 = !DILocation(line: 315, column: 3, scope: !311)
!314 = !DILocation(line: 317, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 317, column: 7)
!316 = !DILocation(line: 317, column: 16, scope: !315)
!317 = !DILocation(line: 317, column: 27, scope: !315)
!318 = !DILocation(line: 317, column: 7, scope: !311)
!319 = !DILocation(line: 319, column: 12, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !3, line: 318, column: 4)
!321 = !DILocation(line: 319, column: 4, scope: !320)
!322 = !DILocation(line: 320, column: 4, scope: !320)
!323 = !DILocation(line: 324, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !315, file: !3, line: 324, column: 8)
!325 = !DILocation(line: 324, column: 17, scope: !324)
!326 = !DILocation(line: 324, column: 28, scope: !324)
!327 = !DILocation(line: 324, column: 8, scope: !315)
!328 = !DILocation(line: 326, column: 11, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !3, line: 325, column: 5)
!330 = !DILocation(line: 327, column: 5, scope: !329)
!331 = !DILocation(line: 329, column: 13, scope: !324)
!332 = !DILocation(line: 330, column: 3, scope: !311)
!333 = !DILocation(line: 331, column: 2, scope: !272)
!334 = !DILocation(line: 333, column: 6, scope: !335)
!335 = distinct !DILexicalBlock(scope: !272, file: !3, line: 333, column: 6)
!336 = !DILocation(line: 333, column: 6, scope: !272)
!337 = !DILocation(line: 335, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 334, column: 3)
!339 = !DILocation(line: 335, column: 28, scope: !338)
!340 = !DILocation(line: 335, column: 37, scope: !338)
!341 = !DILocation(line: 336, column: 3, scope: !338)
!342 = !DILocation(line: 337, column: 3, scope: !338)
!343 = !DILocation(line: 338, column: 2, scope: !272)
!344 = distinct !DISubprogram(name: "CRYPTO_get_dynlock_value", scope: !3, file: !3, line: 340, type: !345, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{!42, !17}
!347 = !DILocalVariable(name: "i", arg: 1, scope: !344, file: !3, line: 340, type: !17)
!348 = !DILocation(line: 340, column: 59, scope: !344)
!349 = !DILocalVariable(name: "pointer", scope: !344, file: !3, line: 342, type: !35)
!350 = !DILocation(line: 342, column: 18, scope: !344)
!351 = !DILocation(line: 343, column: 6, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !3, line: 343, column: 6)
!353 = !DILocation(line: 343, column: 6, scope: !344)
!354 = !DILocation(line: 344, column: 8, scope: !352)
!355 = !DILocation(line: 344, column: 7, scope: !352)
!356 = !DILocation(line: 344, column: 9, scope: !352)
!357 = !DILocation(line: 344, column: 5, scope: !352)
!358 = !DILocation(line: 344, column: 3, scope: !352)
!359 = !DILocation(line: 346, column: 2, scope: !344)
!360 = !DILocation(line: 348, column: 6, scope: !361)
!361 = distinct !DILexicalBlock(scope: !344, file: !3, line: 348, column: 6)
!362 = !DILocation(line: 348, column: 16, scope: !361)
!363 = !DILocation(line: 348, column: 24, scope: !361)
!364 = !DILocation(line: 348, column: 27, scope: !361)
!365 = !DILocation(line: 348, column: 31, scope: !361)
!366 = !DILocation(line: 348, column: 29, scope: !361)
!367 = !DILocation(line: 348, column: 6, scope: !344)
!368 = !DILocation(line: 349, column: 13, scope: !361)
!369 = !DILocation(line: 349, column: 11, scope: !361)
!370 = !DILocation(line: 349, column: 3, scope: !361)
!371 = !DILocation(line: 350, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !344, file: !3, line: 350, column: 6)
!373 = !DILocation(line: 350, column: 6, scope: !344)
!374 = !DILocation(line: 351, column: 3, scope: !372)
!375 = !DILocation(line: 351, column: 12, scope: !372)
!376 = !DILocation(line: 351, column: 22, scope: !372)
!377 = !DILocation(line: 353, column: 2, scope: !344)
!378 = !DILocation(line: 355, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !344, file: !3, line: 355, column: 6)
!380 = !DILocation(line: 355, column: 6, scope: !344)
!381 = !DILocation(line: 356, column: 10, scope: !379)
!382 = !DILocation(line: 356, column: 19, scope: !379)
!383 = !DILocation(line: 356, column: 3, scope: !379)
!384 = !DILocation(line: 357, column: 2, scope: !344)
!385 = !DILocation(line: 358, column: 2, scope: !344)
!386 = distinct !DISubprogram(name: "CRYPTO_get_dynlock_create_callback", scope: !3, file: !3, line: 360, type: !387, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!387 = !DISubroutineType(types: !388)
!388 = !{!51}
!389 = !DILocation(line: 363, column: 9, scope: !386)
!390 = !DILocation(line: 363, column: 2, scope: !386)
!391 = distinct !DISubprogram(name: "CRYPTO_get_dynlock_lock_callback", scope: !3, file: !3, line: 366, type: !392, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!392 = !DISubroutineType(types: !393)
!393 = !{!65}
!394 = !DILocation(line: 369, column: 9, scope: !391)
!395 = !DILocation(line: 369, column: 2, scope: !391)
!396 = distinct !DISubprogram(name: "CRYPTO_get_dynlock_destroy_callback", scope: !3, file: !3, line: 372, type: !397, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!397 = !DISubroutineType(types: !398)
!398 = !{!60}
!399 = !DILocation(line: 375, column: 9, scope: !396)
!400 = !DILocation(line: 375, column: 2, scope: !396)
!401 = distinct !DISubprogram(name: "CRYPTO_set_dynlock_create_callback", scope: !3, file: !3, line: 378, type: !402, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !51}
!404 = !DILocalVariable(name: "func", arg: 1, scope: !401, file: !3, line: 378, type: !51)
!405 = !DILocation(line: 378, column: 72, scope: !401)
!406 = !DILocation(line: 381, column: 26, scope: !401)
!407 = !DILocation(line: 381, column: 25, scope: !401)
!408 = !DILocation(line: 382, column: 2, scope: !401)
!409 = distinct !DISubprogram(name: "CRYPTO_set_dynlock_lock_callback", scope: !3, file: !3, line: 384, type: !410, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !65}
!412 = !DILocalVariable(name: "func", arg: 1, scope: !409, file: !3, line: 384, type: !65)
!413 = !DILocation(line: 384, column: 46, scope: !409)
!414 = !DILocation(line: 387, column: 24, scope: !409)
!415 = !DILocation(line: 387, column: 23, scope: !409)
!416 = !DILocation(line: 388, column: 2, scope: !409)
!417 = distinct !DISubprogram(name: "CRYPTO_set_dynlock_destroy_callback", scope: !3, file: !3, line: 390, type: !418, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !60}
!420 = !DILocalVariable(name: "func", arg: 1, scope: !417, file: !3, line: 390, type: !60)
!421 = !DILocation(line: 390, column: 49, scope: !417)
!422 = !DILocation(line: 393, column: 27, scope: !417)
!423 = !DILocation(line: 393, column: 26, scope: !417)
!424 = !DILocation(line: 394, column: 2, scope: !417)
!425 = distinct !DISubprogram(name: "CRYPTO_get_locking_callback", scope: !3, file: !3, line: 397, type: !426, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!426 = !DISubroutineType(types: !427)
!427 = !{!70}
!428 = !DILocation(line: 400, column: 9, scope: !425)
!429 = !DILocation(line: 400, column: 2, scope: !425)
!430 = distinct !DISubprogram(name: "CRYPTO_get_add_lock_callback", scope: !3, file: !3, line: 403, type: !431, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{!75}
!433 = !DILocation(line: 406, column: 9, scope: !430)
!434 = !DILocation(line: 406, column: 2, scope: !430)
!435 = distinct !DISubprogram(name: "CRYPTO_set_locking_callback", scope: !3, file: !3, line: 409, type: !436, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !70}
!438 = !DILocalVariable(name: "func", arg: 1, scope: !435, file: !3, line: 409, type: !70)
!439 = !DILocation(line: 409, column: 41, scope: !435)
!440 = !DILocation(line: 415, column: 2, scope: !435)
!441 = !DILocation(line: 416, column: 19, scope: !435)
!442 = !DILocation(line: 416, column: 18, scope: !435)
!443 = !DILocation(line: 417, column: 2, scope: !435)
!444 = distinct !DISubprogram(name: "CRYPTO_set_add_lock_callback", scope: !3, file: !3, line: 419, type: !445, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !75}
!447 = !DILocalVariable(name: "func", arg: 1, scope: !444, file: !3, line: 419, type: !75)
!448 = !DILocation(line: 419, column: 41, scope: !444)
!449 = !DILocation(line: 422, column: 20, scope: !444)
!450 = !DILocation(line: 422, column: 19, scope: !444)
!451 = !DILocation(line: 423, column: 2, scope: !444)
!452 = distinct !DISubprogram(name: "CRYPTO_THREADID_set_numeric", scope: !3, file: !3, line: 428, type: !453, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !84, !44}
!455 = !DILocalVariable(name: "id", arg: 1, scope: !452, file: !3, line: 428, type: !84)
!456 = !DILocation(line: 428, column: 51, scope: !452)
!457 = !DILocalVariable(name: "val", arg: 2, scope: !452, file: !3, line: 428, type: !44)
!458 = !DILocation(line: 428, column: 69, scope: !452)
!459 = !DILocation(line: 430, column: 9, scope: !452)
!460 = !DILocation(line: 430, column: 2, scope: !452)
!461 = !DILocation(line: 431, column: 12, scope: !452)
!462 = !DILocation(line: 431, column: 2, scope: !452)
!463 = !DILocation(line: 431, column: 6, scope: !452)
!464 = !DILocation(line: 431, column: 10, scope: !452)
!465 = !DILocation(line: 432, column: 2, scope: !452)
!466 = distinct !DISubprogram(name: "CRYPTO_THREADID_set_pointer", scope: !3, file: !3, line: 435, type: !467, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !84, !6}
!469 = !DILocalVariable(name: "id", arg: 1, scope: !466, file: !3, line: 435, type: !84)
!470 = !DILocation(line: 435, column: 51, scope: !466)
!471 = !DILocalVariable(name: "ptr", arg: 2, scope: !466, file: !3, line: 435, type: !6)
!472 = !DILocation(line: 435, column: 61, scope: !466)
!473 = !DILocalVariable(name: "dest", scope: !466, file: !3, line: 437, type: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!476 = !DILocation(line: 437, column: 17, scope: !466)
!477 = !DILocation(line: 437, column: 33, scope: !466)
!478 = !DILocation(line: 437, column: 37, scope: !466)
!479 = !DILocation(line: 437, column: 24, scope: !466)
!480 = !DILocalVariable(name: "accum", scope: !466, file: !3, line: 438, type: !481)
!481 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!482 = !DILocation(line: 438, column: 15, scope: !466)
!483 = !DILocalVariable(name: "dnum", scope: !466, file: !3, line: 439, type: !475)
!484 = !DILocation(line: 439, column: 16, scope: !466)
!485 = !DILocation(line: 441, column: 9, scope: !466)
!486 = !DILocation(line: 441, column: 2, scope: !466)
!487 = !DILocation(line: 442, column: 12, scope: !466)
!488 = !DILocation(line: 442, column: 2, scope: !466)
!489 = !DILocation(line: 442, column: 6, scope: !466)
!490 = !DILocation(line: 442, column: 10, scope: !466)
!491 = !DILocation(line: 446, column: 28, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 444, column: 3)
!493 = distinct !DILexicalBlock(scope: !466, file: !3, line: 443, column: 6)
!494 = !DILocation(line: 446, column: 32, scope: !492)
!495 = !DILocation(line: 446, column: 13, scope: !492)
!496 = !DILocation(line: 446, column: 3, scope: !492)
!497 = !DILocation(line: 446, column: 7, scope: !492)
!498 = !DILocation(line: 446, column: 11, scope: !492)
!499 = !DILocation(line: 447, column: 3, scope: !492)
!500 = distinct !DISubprogram(name: "CRYPTO_THREADID_set_callback", scope: !3, file: !3, line: 470, type: !501, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!501 = !DISubroutineType(types: !502)
!502 = !{!17, !81}
!503 = !DILocalVariable(name: "func", arg: 1, scope: !500, file: !3, line: 470, type: !81)
!504 = !DILocation(line: 470, column: 41, scope: !500)
!505 = !DILocation(line: 472, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !500, file: !3, line: 472, column: 6)
!507 = !DILocation(line: 472, column: 6, scope: !500)
!508 = !DILocation(line: 473, column: 3, scope: !506)
!509 = !DILocation(line: 474, column: 22, scope: !500)
!510 = !DILocation(line: 474, column: 20, scope: !500)
!511 = !DILocation(line: 475, column: 2, scope: !500)
!512 = !DILocation(line: 476, column: 2, scope: !500)
!513 = distinct !DISubprogram(name: "CRYPTO_THREADID_get_callback", scope: !3, file: !3, line: 478, type: !514, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!514 = !DISubroutineType(types: !515)
!515 = !{!81}
!516 = !DILocation(line: 480, column: 9, scope: !513)
!517 = !DILocation(line: 480, column: 2, scope: !513)
!518 = distinct !DISubprogram(name: "CRYPTO_THREADID_current", scope: !3, file: !3, line: 483, type: !82, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!519 = !DILocalVariable(name: "id", arg: 1, scope: !518, file: !3, line: 483, type: !84)
!520 = !DILocation(line: 483, column: 47, scope: !518)
!521 = !DILocation(line: 485, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !3, line: 485, column: 6)
!523 = !DILocation(line: 485, column: 6, scope: !518)
!524 = !DILocation(line: 487, column: 3, scope: !525)
!525 = distinct !DILexicalBlock(scope: !522, file: !3, line: 486, column: 3)
!526 = !DILocation(line: 487, column: 21, scope: !525)
!527 = !DILocation(line: 488, column: 3, scope: !525)
!528 = !DILocation(line: 492, column: 6, scope: !529)
!529 = distinct !DILexicalBlock(scope: !518, file: !3, line: 492, column: 6)
!530 = !DILocation(line: 492, column: 6, scope: !518)
!531 = !DILocation(line: 494, column: 31, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !3, line: 493, column: 3)
!533 = !DILocation(line: 494, column: 35, scope: !532)
!534 = !DILocation(line: 494, column: 3, scope: !532)
!535 = !DILocation(line: 495, column: 3, scope: !532)
!536 = !DILocation(line: 507, column: 30, scope: !518)
!537 = !DILocation(line: 507, column: 42, scope: !518)
!538 = !DILocation(line: 507, column: 34, scope: !518)
!539 = !DILocation(line: 507, column: 2, scope: !518)
!540 = !DILocation(line: 509, column: 2, scope: !518)
!541 = distinct !DISubprogram(name: "CRYPTO_THREADID_cmp", scope: !3, file: !3, line: 511, type: !542, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!542 = !DISubroutineType(types: !543)
!543 = !{!17, !544, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!546 = !DILocalVariable(name: "a", arg: 1, scope: !541, file: !3, line: 511, type: !544)
!547 = !DILocation(line: 511, column: 48, scope: !541)
!548 = !DILocalVariable(name: "b", arg: 2, scope: !541, file: !3, line: 511, type: !544)
!549 = !DILocation(line: 511, column: 74, scope: !541)
!550 = !DILocation(line: 513, column: 16, scope: !541)
!551 = !DILocation(line: 513, column: 19, scope: !541)
!552 = !DILocation(line: 513, column: 9, scope: !541)
!553 = !DILocation(line: 513, column: 2, scope: !541)
!554 = distinct !DISubprogram(name: "CRYPTO_THREADID_cpy", scope: !3, file: !3, line: 516, type: !555, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !84, !544}
!557 = !DILocalVariable(name: "dest", arg: 1, scope: !554, file: !3, line: 516, type: !84)
!558 = !DILocation(line: 516, column: 43, scope: !554)
!559 = !DILocalVariable(name: "src", arg: 2, scope: !554, file: !3, line: 516, type: !544)
!560 = !DILocation(line: 516, column: 72, scope: !554)
!561 = !DILocation(line: 518, column: 9, scope: !554)
!562 = !DILocation(line: 518, column: 2, scope: !554)
!563 = !DILocation(line: 518, column: 15, scope: !554)
!564 = !DILocation(line: 519, column: 2, scope: !554)
!565 = distinct !DISubprogram(name: "CRYPTO_THREADID_hash", scope: !3, file: !3, line: 521, type: !566, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!566 = !DISubroutineType(types: !567)
!567 = !{!44, !544}
!568 = !DILocalVariable(name: "id", arg: 1, scope: !565, file: !3, line: 521, type: !544)
!569 = !DILocation(line: 521, column: 59, scope: !565)
!570 = !DILocation(line: 523, column: 9, scope: !565)
!571 = !DILocation(line: 523, column: 13, scope: !565)
!572 = !DILocation(line: 523, column: 2, scope: !565)
!573 = distinct !DISubprogram(name: "CRYPTO_get_id_callback", scope: !3, file: !3, line: 527, type: !574, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!574 = !DISubroutineType(types: !575)
!575 = !{!92}
!576 = !DILocation(line: 529, column: 9, scope: !573)
!577 = !DILocation(line: 529, column: 2, scope: !573)
!578 = distinct !DISubprogram(name: "CRYPTO_set_id_callback", scope: !3, file: !3, line: 532, type: !579, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !92}
!581 = !DILocalVariable(name: "func", arg: 1, scope: !578, file: !3, line: 532, type: !92)
!582 = !DILocation(line: 532, column: 45, scope: !578)
!583 = !DILocation(line: 534, column: 14, scope: !578)
!584 = !DILocation(line: 534, column: 13, scope: !578)
!585 = !DILocation(line: 535, column: 2, scope: !578)
!586 = distinct !DISubprogram(name: "CRYPTO_thread_id", scope: !3, file: !3, line: 537, type: !93, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!587 = !DILocalVariable(name: "ret", scope: !586, file: !3, line: 539, type: !44)
!588 = !DILocation(line: 539, column: 16, scope: !586)
!589 = !DILocation(line: 541, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !3, line: 541, column: 6)
!591 = !DILocation(line: 541, column: 18, scope: !590)
!592 = !DILocation(line: 541, column: 6, scope: !586)
!593 = !DILocation(line: 552, column: 22, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !3, line: 542, column: 3)
!595 = !DILocation(line: 552, column: 7, scope: !594)
!596 = !DILocation(line: 552, column: 6, scope: !594)
!597 = !DILocation(line: 554, column: 3, scope: !594)
!598 = !DILocation(line: 556, column: 7, scope: !590)
!599 = !DILocation(line: 556, column: 6, scope: !590)
!600 = !DILocation(line: 557, column: 9, scope: !586)
!601 = !DILocation(line: 557, column: 2, scope: !586)
!602 = distinct !DISubprogram(name: "OpenSSLDie", scope: !3, file: !3, line: 913, type: !603, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !54, !17, !54}
!605 = !DILocalVariable(name: "file", arg: 1, scope: !602, file: !3, line: 913, type: !54)
!606 = !DILocation(line: 913, column: 29, scope: !602)
!607 = !DILocalVariable(name: "line", arg: 2, scope: !602, file: !3, line: 913, type: !17)
!608 = !DILocation(line: 913, column: 38, scope: !602)
!609 = !DILocalVariable(name: "assertion", arg: 3, scope: !602, file: !3, line: 913, type: !54)
!610 = !DILocation(line: 913, column: 55, scope: !602)
!611 = !DILocation(line: 917, column: 3, scope: !602)
!612 = !DILocation(line: 917, column: 8, scope: !602)
!613 = !DILocation(line: 917, column: 13, scope: !602)
!614 = !DILocation(line: 915, column: 2, scope: !602)
!615 = !DILocation(line: 919, column: 2, scope: !602)
!616 = distinct !DISubprogram(name: "CRYPTO_add_lock", scope: !3, file: !3, line: 607, type: !76, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!617 = !DILocalVariable(name: "pointer", arg: 1, scope: !616, file: !3, line: 607, type: !78)
!618 = !DILocation(line: 607, column: 26, scope: !616)
!619 = !DILocalVariable(name: "amount", arg: 2, scope: !616, file: !3, line: 607, type: !17)
!620 = !DILocation(line: 607, column: 39, scope: !616)
!621 = !DILocalVariable(name: "type", arg: 3, scope: !616, file: !3, line: 607, type: !17)
!622 = !DILocation(line: 607, column: 51, scope: !616)
!623 = !DILocalVariable(name: "file", arg: 4, scope: !616, file: !3, line: 607, type: !54)
!624 = !DILocation(line: 607, column: 69, scope: !616)
!625 = !DILocalVariable(name: "line", arg: 5, scope: !616, file: !3, line: 608, type: !17)
!626 = !DILocation(line: 608, column: 11, scope: !616)
!627 = !DILocalVariable(name: "ret", scope: !616, file: !3, line: 610, type: !17)
!628 = !DILocation(line: 610, column: 6, scope: !616)
!629 = !DILocation(line: 612, column: 6, scope: !630)
!630 = distinct !DILexicalBlock(scope: !616, file: !3, line: 612, column: 6)
!631 = !DILocation(line: 612, column: 24, scope: !630)
!632 = !DILocation(line: 612, column: 6, scope: !616)
!633 = !DILocation(line: 618, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !3, line: 613, column: 3)
!635 = !DILocation(line: 618, column: 25, scope: !634)
!636 = !DILocation(line: 618, column: 33, scope: !634)
!637 = !DILocation(line: 618, column: 40, scope: !634)
!638 = !DILocation(line: 618, column: 45, scope: !634)
!639 = !DILocation(line: 618, column: 50, scope: !634)
!640 = !DILocation(line: 618, column: 6, scope: !634)
!641 = !DILocation(line: 629, column: 3, scope: !634)
!642 = !DILocation(line: 632, column: 40, scope: !643)
!643 = distinct !DILexicalBlock(scope: !630, file: !3, line: 631, column: 3)
!644 = !DILocation(line: 632, column: 45, scope: !643)
!645 = !DILocation(line: 632, column: 50, scope: !643)
!646 = !DILocation(line: 632, column: 3, scope: !643)
!647 = !DILocation(line: 634, column: 9, scope: !643)
!648 = !DILocation(line: 634, column: 8, scope: !643)
!649 = !DILocation(line: 634, column: 17, scope: !643)
!650 = !DILocation(line: 634, column: 16, scope: !643)
!651 = !DILocation(line: 634, column: 6, scope: !643)
!652 = !DILocation(line: 646, column: 12, scope: !643)
!653 = !DILocation(line: 646, column: 4, scope: !643)
!654 = !DILocation(line: 646, column: 11, scope: !643)
!655 = !DILocation(line: 647, column: 42, scope: !643)
!656 = !DILocation(line: 647, column: 47, scope: !643)
!657 = !DILocation(line: 647, column: 52, scope: !643)
!658 = !DILocation(line: 647, column: 3, scope: !643)
!659 = !DILocation(line: 649, column: 9, scope: !616)
!660 = !DILocation(line: 649, column: 2, scope: !616)
!661 = distinct !DISubprogram(name: "CRYPTO_get_lock_name", scope: !3, file: !3, line: 652, type: !662, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!662 = !DISubroutineType(types: !663)
!663 = !{!54, !17}
!664 = !DILocalVariable(name: "type", arg: 1, scope: !661, file: !3, line: 652, type: !17)
!665 = !DILocation(line: 652, column: 38, scope: !661)
!666 = !DILocation(line: 654, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !661, file: !3, line: 654, column: 6)
!668 = !DILocation(line: 654, column: 11, scope: !667)
!669 = !DILocation(line: 654, column: 6, scope: !661)
!670 = !DILocation(line: 655, column: 3, scope: !667)
!671 = !DILocation(line: 656, column: 11, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !3, line: 656, column: 11)
!673 = !DILocation(line: 656, column: 16, scope: !672)
!674 = !DILocation(line: 656, column: 11, scope: !667)
!675 = !DILocation(line: 657, column: 21, scope: !672)
!676 = !DILocation(line: 657, column: 10, scope: !672)
!677 = !DILocation(line: 657, column: 3, scope: !672)
!678 = !DILocation(line: 658, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !672, file: !3, line: 658, column: 11)
!680 = !DILocation(line: 658, column: 15, scope: !679)
!681 = !DILocation(line: 658, column: 35, scope: !679)
!682 = !DILocation(line: 658, column: 33, scope: !679)
!683 = !DILocation(line: 658, column: 11, scope: !672)
!684 = !DILocation(line: 659, column: 3, scope: !679)
!685 = !DILocation(line: 661, column: 10, scope: !679)
!686 = !DILocation(line: 661, column: 3, scope: !679)
!687 = !DILocation(line: 662, column: 2, scope: !661)
!688 = distinct !DISubprogram(name: "OPENSSL_ia32cap_loc", scope: !3, file: !3, line: 719, type: !689, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!689 = !DISubroutineType(types: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!692 = !DILocation(line: 719, column: 44, scope: !688)
!693 = distinct !DISubprogram(name: "OPENSSL_cpuid_setup", scope: !3, file: !3, line: 723, type: !694, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!694 = !DISubroutineType(types: !695)
!695 = !{null}
!696 = !DILocation(line: 723, column: 33, scope: !693)
!697 = distinct !DISubprogram(name: "OPENSSL_showfatal", scope: !3, file: !3, line: 903, type: !698, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !54, null}
!700 = !DILocalVariable(name: "fmta", arg: 1, scope: !697, file: !3, line: 903, type: !54)
!701 = !DILocation(line: 903, column: 37, scope: !697)
!702 = !DILocalVariable(name: "ap", scope: !697, file: !3, line: 904, type: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !704, line: 52, baseType: !705)
!704 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !706, line: 32, baseType: !707)
!706 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 904, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", file: !3, line: 904, size: 256, elements: !709)
!709 = !{!710, !711, !712, !713, !714}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !708, file: !3, line: 904, baseType: !6, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !708, file: !3, line: 904, baseType: !6, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !708, file: !3, line: 904, baseType: !6, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !708, file: !3, line: 904, baseType: !17, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !708, file: !3, line: 904, baseType: !17, size: 32, offset: 224)
!715 = !DILocation(line: 904, column: 11, scope: !697)
!716 = !DILocation(line: 906, column: 5, scope: !697)
!717 = !DILocation(line: 907, column: 15, scope: !697)
!718 = !DILocation(line: 907, column: 22, scope: !697)
!719 = !DILocation(line: 907, column: 5, scope: !697)
!720 = !DILocation(line: 908, column: 5, scope: !697)
!721 = !DILocation(line: 909, column: 1, scope: !697)
!722 = distinct !DISubprogram(name: "OPENSSL_isservice", scope: !3, file: !3, line: 910, type: !146, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!723 = !DILocation(line: 910, column: 32, scope: !722)
!724 = distinct !DISubprogram(name: "OPENSSL_stderr", scope: !3, file: !3, line: 927, type: !725, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!725 = !DISubroutineType(types: !726)
!726 = !{!6}
!727 = !DILocation(line: 927, column: 37, scope: !724)
!728 = !DILocation(line: 927, column: 30, scope: !724)
!729 = distinct !DISubprogram(name: "CRYPTO_memcmp", scope: !3, file: !3, line: 929, type: !730, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!730 = !DISubroutineType(types: !731)
!731 = !{!17, !28, !28, !732}
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !733, line: 46, baseType: !44)
!733 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!734 = !DILocalVariable(name: "in_a", arg: 1, scope: !729, file: !3, line: 929, type: !28)
!735 = !DILocation(line: 929, column: 31, scope: !729)
!736 = !DILocalVariable(name: "in_b", arg: 2, scope: !729, file: !3, line: 929, type: !28)
!737 = !DILocation(line: 929, column: 49, scope: !729)
!738 = !DILocalVariable(name: "len", arg: 3, scope: !729, file: !3, line: 929, type: !732)
!739 = !DILocation(line: 929, column: 62, scope: !729)
!740 = !DILocalVariable(name: "i", scope: !729, file: !3, line: 931, type: !732)
!741 = !DILocation(line: 931, column: 9, scope: !729)
!742 = !DILocalVariable(name: "a", scope: !729, file: !3, line: 932, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!745 = !DILocation(line: 932, column: 23, scope: !729)
!746 = !DILocation(line: 932, column: 27, scope: !729)
!747 = !DILocalVariable(name: "b", scope: !729, file: !3, line: 933, type: !743)
!748 = !DILocation(line: 933, column: 23, scope: !729)
!749 = !DILocation(line: 933, column: 27, scope: !729)
!750 = !DILocalVariable(name: "x", scope: !729, file: !3, line: 934, type: !475)
!751 = !DILocation(line: 934, column: 16, scope: !729)
!752 = !DILocation(line: 936, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !729, file: !3, line: 936, column: 2)
!754 = !DILocation(line: 936, column: 7, scope: !753)
!755 = !DILocation(line: 936, column: 14, scope: !756)
!756 = distinct !DILexicalBlock(scope: !753, file: !3, line: 936, column: 2)
!757 = !DILocation(line: 936, column: 18, scope: !756)
!758 = !DILocation(line: 936, column: 16, scope: !756)
!759 = !DILocation(line: 936, column: 2, scope: !753)
!760 = !DILocation(line: 937, column: 8, scope: !756)
!761 = !DILocation(line: 937, column: 10, scope: !756)
!762 = !DILocation(line: 937, column: 15, scope: !756)
!763 = !DILocation(line: 937, column: 17, scope: !756)
!764 = !DILocation(line: 937, column: 13, scope: !756)
!765 = !DILocation(line: 937, column: 5, scope: !756)
!766 = !DILocation(line: 937, column: 3, scope: !756)
!767 = !DILocation(line: 936, column: 24, scope: !756)
!768 = !DILocation(line: 936, column: 2, scope: !756)
!769 = distinct !{!769, !759, !770}
!770 = !DILocation(line: 937, column: 18, scope: !753)
!771 = !DILocation(line: 939, column: 9, scope: !729)
!772 = !DILocation(line: 939, column: 2, scope: !729)
