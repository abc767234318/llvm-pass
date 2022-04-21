; ModuleID = 'TestProgram_split.ll'
source_filename = "TestProgram.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Welcome to LLVM world...\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Your flag is: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"input flag %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"the flag is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Congratulations~\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Sorry try again.\0A\00", align 1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %.reload51.reg2mem = alloca i32, align 4
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem45 = alloca i1, align 1
  %.reg2mem42 = alloca i32, align 4
  %.reg2mem34 = alloca i1, align 1
  %.reg2mem31 = alloca i32, align 4
  %.reg2mem18 = alloca i32*, align 8
  %.reg2mem12 = alloca i32*, align 8
  %.reg2mem9 = alloca i8**, align 8
  %.reg2mem6 = alloca i8***, align 8
  %.reg2mem4 = alloca i32*, align 8
  %.reg2mem = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* %3, align 4
  %5 = mul i32 %4, 3
  %6 = sub i32 %4, 2
  %7 = mul i32 %5, %6
  %8 = mul i32 %4, %4
  %9 = mul i32 %8, 3
  %10 = mul i32 %4, 7
  %11 = sub i32 %7, %9
  %12 = add i32 %10, %11
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %649

15:                                               ; preds = %649, %2
  %16 = alloca i32, align 4
  store i32* %16, i32** %.reg2mem, align 8
  %17 = alloca i32, align 4
  store i32* %17, i32** %.reg2mem4, align 8
  %18 = alloca i8**, align 8
  store i8*** %18, i8**** %.reg2mem6, align 8
  %19 = alloca i8*, align 8
  store i8** %19, i8*** %.reg2mem9, align 8
  %20 = alloca i32, align 4
  store i32* %20, i32** %.reg2mem12, align 8
  %21 = mul i32 %4, 3
  %22 = sub i32 %4, 2
  %23 = mul i32 %21, %22
  %24 = mul i32 %4, %4
  %25 = mul i32 %24, 3
  %26 = mul i32 %4, 7
  %27 = sub i32 %23, %25
  %28 = add i32 %26, %27
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %649

31:                                               ; preds = %649, %15
  br label %32

32:                                               ; preds = %31
  %33 = alloca i32, align 4
  %34 = load i32, i32* %33, align 4
  %35 = mul i32 %34, 3
  %36 = sub i32 %34, 2
  %37 = mul i32 %35, %36
  %38 = mul i32 %34, %34
  %39 = mul i32 %38, 3
  %40 = mul i32 %34, 7
  %41 = sub i32 %37, %39
  %42 = add i32 %40, %41
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %661

45:                                               ; preds = %661, %32
  %46 = sub i32 %34, 1
  %47 = add i32 %34, 3
  %48 = add i32 %34, 4
  %49 = sub i32 %34, 3
  %50 = mul i32 %46, %47
  %51 = mul i32 %48, %49
  %52 = sub i32 %50, %51
  %53 = sub i32 %52, 9
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %661

56:                                               ; preds = %661, %45
  br label %57

57:                                               ; preds = %56
  %58 = alloca i32, align 4
  %59 = load i32, i32* %58, align 4
  %60 = mul i32 %59, 3
  %61 = sub i32 %59, 2
  %62 = mul i32 %60, %61
  %63 = mul i32 %59, %59
  %64 = mul i32 %63, 3
  %65 = mul i32 %59, 7
  %66 = sub i32 %62, %64
  %67 = add i32 %65, %66
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %672

70:                                               ; preds = %672, %57
  %71 = add i32 %59, 1
  %72 = mul i32 %59, %71
  %73 = mul i32 %59, %59
  %74 = sub i32 %72, %73
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %672

77:                                               ; preds = %672, %70
  br label %78

78:                                               ; preds = %77
  %79 = alloca i32, align 4
  %80 = load i32, i32* %79, align 4
  %81 = mul i32 %80, 3
  %82 = sub i32 %80, 2
  %83 = mul i32 %81, %82
  %84 = mul i32 %80, %80
  %85 = mul i32 %84, 3
  %86 = mul i32 %80, 7
  %87 = sub i32 %83, %85
  %88 = add i32 %86, %87
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %679

91:                                               ; preds = %679, %78
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  store i32* %93, i32** %.reg2mem18, align 8
  %.reload3 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload3, align 4
  %.reload5 = load volatile i32*, i32** %.reg2mem4, align 8
  store i32 %0, i32* %.reload5, align 4
  %.reload8 = load volatile i8***, i8**** %.reg2mem6, align 8
  store i8** %1, i8*** %.reload8, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %.reload7 = load volatile i8***, i8**** %.reg2mem6, align 8
  %95 = load i8**, i8*** %.reload7, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %.reload11 = load volatile i8**, i8*** %.reg2mem9, align 8
  store i8* %97, i8** %.reload11, align 8
  %.reload10 = load volatile i8**, i8*** %.reg2mem9, align 8
  %98 = load i8*, i8** %.reload10, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  %.reload17 = load volatile i32*, i32** %.reg2mem12, align 8
  %100 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %.reload17)
  %.reload22 = load volatile i32*, i32** %.reg2mem18, align 8
  store i32 10, i32* %.reload22, align 4
  %101 = sub i32 %80, 1
  %102 = add i32 %80, 3
  %103 = add i32 %80, 4
  %104 = sub i32 %80, 3
  %105 = mul i32 %101, %102
  %106 = mul i32 %103, %104
  %107 = sub i32 %105, %106
  %108 = sub i32 %107, 9
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %679

111:                                              ; preds = %679, %91
  br label %112

112:                                              ; preds = %303, %111
  %113 = alloca i32, align 4
  %114 = load i32, i32* %113, align 4
  %115 = sub i32 %114, 1
  %116 = add i32 %114, 3
  %117 = add i32 %114, 4
  %118 = sub i32 %114, 3
  %119 = mul i32 %115, %116
  %120 = mul i32 %117, %118
  %121 = sub i32 %119, %120
  %122 = sub i32 %121, 9
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %699

125:                                              ; preds = %699, %112
  %.reload21 = load volatile i32*, i32** %.reg2mem18, align 8
  %126 = load i32, i32* %.reload21, align 4
  store i32 %126, i32* %.reg2mem31, align 4
  %127 = mul i32 %114, 3
  %128 = sub i32 %114, 2
  %129 = mul i32 %127, %128
  %130 = mul i32 %114, %114
  %131 = mul i32 %130, 3
  %132 = mul i32 %114, 7
  %133 = sub i32 %129, %131
  %134 = add i32 %132, %133
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %699

137:                                              ; preds = %699, %125
  br label %138

138:                                              ; preds = %137
  %139 = alloca i32, align 4
  %140 = load i32, i32* %139, align 4
  %141 = mul i32 %140, 3
  %142 = sub i32 %140, 2
  %143 = mul i32 %141, %142
  %144 = mul i32 %140, %140
  %145 = mul i32 %144, 3
  %146 = mul i32 %140, 7
  %147 = sub i32 %143, %145
  %148 = add i32 %146, %147
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %711

151:                                              ; preds = %711, %138
  %152 = add i32 %140, 1
  %153 = mul i32 %140, %152
  %154 = mul i32 %140, %140
  %155 = sub i32 %153, %154
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %711

158:                                              ; preds = %711, %151
  br label %159

159:                                              ; preds = %158
  %160 = alloca i32, align 4
  %161 = load i32, i32* %160, align 4
  %162 = mul i32 %161, 3
  %163 = sub i32 %161, 2
  %164 = mul i32 %162, %163
  %165 = mul i32 %161, %161
  %166 = mul i32 %165, 3
  %167 = mul i32 %161, 7
  %168 = sub i32 %164, %166
  %169 = add i32 %167, %168
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %718

172:                                              ; preds = %718, %159
  %173 = mul i32 %161, 3
  %174 = sub i32 %161, 2
  %175 = mul i32 %173, %174
  %176 = mul i32 %161, %161
  %177 = mul i32 %176, 3
  %178 = mul i32 %161, 7
  %179 = sub i32 %175, %177
  %180 = add i32 %178, %179
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %718

183:                                              ; preds = %718, %172
  br label %184

184:                                              ; preds = %183
  %185 = alloca i32, align 4
  %186 = load i32, i32* %185, align 4
  %187 = sub i32 %186, 1
  %188 = add i32 %186, 3
  %189 = add i32 %186, 4
  %190 = sub i32 %186, 3
  %191 = mul i32 %187, %188
  %192 = mul i32 %189, %190
  %193 = sub i32 %191, %192
  %194 = sub i32 %193, 9
  %195 = and i32 %194, 1
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %729

197:                                              ; preds = %729, %184
  %.reload32 = load volatile i32, i32* %.reg2mem31, align 4
  %198 = icmp ne i32 %.reload32, 0
  store i1 %198, i1* %.reg2mem34, align 1
  %199 = add i32 %186, 1
  %200 = mul i32 %186, %199
  %201 = mul i32 %186, %186
  %202 = sub i32 %200, %201
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %729

205:                                              ; preds = %729, %197
  %.reload35 = load volatile i1, i1* %.reg2mem34, align 1
  br i1 %.reload35, label %206, label %304

206:                                              ; preds = %205
  %207 = alloca i32, align 4
  %208 = load i32, i32* %207, align 4
  %209 = sub i32 %208, 1
  %210 = add i32 %208, 3
  %211 = add i32 %208, 4
  %212 = sub i32 %208, 3
  %213 = mul i32 %209, %210
  %214 = mul i32 %211, %212
  %215 = sub i32 %213, %214
  %216 = sub i32 %215, 9
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %737

219:                                              ; preds = %737, %206
  %.reload16 = load volatile i32*, i32** %.reg2mem12, align 8
  %220 = load i32, i32* %.reload16, align 4
  %221 = add nsw i32 %220, 1
  %.reload15 = load volatile i32*, i32** %.reg2mem12, align 8
  store i32 %221, i32* %.reload15, align 4
  %222 = sub i32 %208, 1
  %223 = add i32 %208, 3
  %224 = add i32 %208, 4
  %225 = sub i32 %208, 3
  %226 = mul i32 %222, %223
  %227 = mul i32 %224, %225
  %228 = sub i32 %226, %227
  %229 = sub i32 %228, 9
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %737

232:                                              ; preds = %737, %219
  br label %233

233:                                              ; preds = %232
  %234 = alloca i32, align 4
  %235 = load i32, i32* %234, align 4
  %236 = mul i32 %235, 3
  %237 = sub i32 %235, 2
  %238 = mul i32 %236, %237
  %239 = mul i32 %235, %235
  %240 = mul i32 %239, 3
  %241 = mul i32 %235, 7
  %242 = sub i32 %238, %240
  %243 = add i32 %241, %242
  %244 = and i32 %243, 1
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %750

246:                                              ; preds = %750, %233
  %247 = mul i32 %235, 3
  %248 = sub i32 %235, 2
  %249 = mul i32 %247, %248
  %250 = mul i32 %235, %235
  %251 = mul i32 %250, 3
  %252 = mul i32 %235, 7
  %253 = sub i32 %249, %251
  %254 = add i32 %252, %253
  %255 = and i32 %254, 1
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %750

257:                                              ; preds = %750, %246
  br label %258

258:                                              ; preds = %257
  %259 = alloca i32, align 4
  %260 = load i32, i32* %259, align 4
  %261 = sub i32 %260, 1
  %262 = add i32 %260, 3
  %263 = add i32 %260, 4
  %264 = sub i32 %260, 3
  %265 = mul i32 %261, %262
  %266 = mul i32 %263, %264
  %267 = sub i32 %265, %266
  %268 = sub i32 %267, 9
  %269 = and i32 %268, 1
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %761

271:                                              ; preds = %761, %258
  %272 = add i32 %260, 1
  %273 = mul i32 %260, %272
  %274 = mul i32 %260, %260
  %275 = sub i32 %273, %274
  %276 = and i32 %275, 1
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %761

278:                                              ; preds = %761, %271
  br label %279

279:                                              ; preds = %278
  %280 = alloca i32, align 4
  %281 = load i32, i32* %280, align 4
  %282 = add i32 %281, 1
  %283 = mul i32 %281, %282
  %284 = mul i32 %281, %281
  %285 = sub i32 %283, %284
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %768

288:                                              ; preds = %768, %279
  %.reload14 = load volatile i32*, i32** %.reg2mem12, align 8
  %289 = load i32, i32* %.reload14, align 4
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %289)
  %.reload20 = load volatile i32*, i32** %.reg2mem18, align 8
  %291 = load i32, i32* %.reload20, align 4
  %292 = add nsw i32 %291, -1
  %.reload19 = load volatile i32*, i32** %.reg2mem18, align 8
  store i32 %292, i32* %.reload19, align 4
  %293 = sub i32 %281, 1
  %294 = add i32 %281, 3
  %295 = add i32 %281, 4
  %296 = sub i32 %281, 3
  %297 = mul i32 %293, %294
  %298 = mul i32 %295, %296
  %299 = sub i32 %297, %298
  %300 = sub i32 %299, 9
  %301 = and i32 %300, 1
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %768

303:                                              ; preds = %768, %288
  br label %112, !llvm.loop !2

304:                                              ; preds = %205
  %305 = alloca i32, align 4
  %306 = load i32, i32* %305, align 4
  %307 = mul i32 %306, 3
  %308 = sub i32 %306, 2
  %309 = mul i32 %307, %308
  %310 = mul i32 %306, %306
  %311 = mul i32 %310, 3
  %312 = mul i32 %306, 7
  %313 = sub i32 %309, %311
  %314 = add i32 %312, %313
  %315 = and i32 %314, 1
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %317, label %779

317:                                              ; preds = %779, %304
  %.reload13 = load volatile i32*, i32** %.reg2mem12, align 8
  %318 = load i32, i32* %.reload13, align 4
  store i32 %318, i32* %.reg2mem42, align 4
  %319 = mul i32 %306, 3
  %320 = sub i32 %306, 2
  %321 = mul i32 %319, %320
  %322 = mul i32 %306, %306
  %323 = mul i32 %322, 3
  %324 = mul i32 %306, 7
  %325 = sub i32 %321, %323
  %326 = add i32 %324, %325
  %327 = and i32 %326, 1
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %779

329:                                              ; preds = %779, %317
  br label %330

330:                                              ; preds = %329
  %331 = alloca i32, align 4
  %332 = load i32, i32* %331, align 4
  %333 = mul i32 %332, 3
  %334 = sub i32 %332, 2
  %335 = mul i32 %333, %334
  %336 = mul i32 %332, %332
  %337 = mul i32 %336, 3
  %338 = mul i32 %332, 7
  %339 = sub i32 %335, %337
  %340 = add i32 %338, %339
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %343, label %791

343:                                              ; preds = %791, %330
  %344 = add i32 %332, 1
  %345 = mul i32 %332, %344
  %346 = mul i32 %332, %332
  %347 = sub i32 %345, %346
  %348 = and i32 %347, 1
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %350, label %791

350:                                              ; preds = %791, %343
  br label %351

351:                                              ; preds = %350
  %352 = alloca i32, align 4
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, 1
  %355 = mul i32 %353, %354
  %356 = mul i32 %353, %353
  %357 = sub i32 %355, %356
  %358 = and i32 %357, 1
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %798

360:                                              ; preds = %798, %351
  %361 = sub i32 %353, 1
  %362 = add i32 %353, 3
  %363 = add i32 %353, 4
  %364 = sub i32 %353, 3
  %365 = mul i32 %361, %362
  %366 = mul i32 %363, %364
  %367 = sub i32 %365, %366
  %368 = sub i32 %367, 9
  %369 = and i32 %368, 1
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %798

371:                                              ; preds = %798, %360
  br label %372

372:                                              ; preds = %371
  %373 = alloca i32, align 4
  %374 = load i32, i32* %373, align 4
  %375 = mul i32 %374, 3
  %376 = sub i32 %374, 2
  %377 = mul i32 %375, %376
  %378 = mul i32 %374, %374
  %379 = mul i32 %378, 3
  %380 = mul i32 %374, 7
  %381 = sub i32 %377, %379
  %382 = add i32 %380, %381
  %383 = and i32 %382, 1
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %809

385:                                              ; preds = %809, %372
  %.reload43 = load volatile i32, i32* %.reg2mem42, align 4
  %386 = icmp ne i32 %.reload43, 4
  store i1 %386, i1* %.reg2mem45, align 1
  %387 = sub i32 %374, 1
  %388 = add i32 %374, 3
  %389 = add i32 %374, 4
  %390 = sub i32 %374, 3
  %391 = mul i32 %387, %388
  %392 = mul i32 %389, %390
  %393 = sub i32 %391, %392
  %394 = sub i32 %393, 9
  %395 = and i32 %394, 1
  %396 = icmp eq i32 %395, 1
  br i1 %396, label %397, label %809

397:                                              ; preds = %809, %385
  %.reload46 = load volatile i1, i1* %.reg2mem45, align 1
  br i1 %.reload46, label %398, label %491

398:                                              ; preds = %397
  %399 = alloca i32, align 4
  %400 = load i32, i32* %399, align 4
  %401 = sub i32 %400, 1
  %402 = add i32 %400, 3
  %403 = add i32 %400, 4
  %404 = sub i32 %400, 3
  %405 = mul i32 %401, %402
  %406 = mul i32 %403, %404
  %407 = sub i32 %405, %406
  %408 = sub i32 %407, 9
  %409 = and i32 %408, 1
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %411, label %821

411:                                              ; preds = %821, %398
  %412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %413 = add i32 %400, 1
  %414 = mul i32 %400, %413
  %415 = mul i32 %400, %400
  %416 = sub i32 %414, %415
  %417 = and i32 %416, 1
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %419, label %821

419:                                              ; preds = %821, %411
  br label %420

420:                                              ; preds = %419
  %421 = alloca i32, align 4
  %422 = load i32, i32* %421, align 4
  %423 = mul i32 %422, 3
  %424 = sub i32 %422, 2
  %425 = mul i32 %423, %424
  %426 = mul i32 %422, %422
  %427 = mul i32 %426, 3
  %428 = mul i32 %422, 7
  %429 = sub i32 %425, %427
  %430 = add i32 %428, %429
  %431 = and i32 %430, 1
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %833

433:                                              ; preds = %833, %420
  %434 = mul i32 %422, 3
  %435 = sub i32 %422, 2
  %436 = mul i32 %434, %435
  %437 = mul i32 %422, %422
  %438 = mul i32 %437, 3
  %439 = mul i32 %422, 7
  %440 = sub i32 %436, %438
  %441 = add i32 %439, %440
  %442 = and i32 %441, 1
  %443 = icmp eq i32 %442, 1
  br i1 %443, label %444, label %833

444:                                              ; preds = %833, %433
  br label %445

445:                                              ; preds = %444
  %446 = alloca i32, align 4
  %447 = load i32, i32* %446, align 4
  %448 = sub i32 %447, 1
  %449 = add i32 %447, 3
  %450 = add i32 %447, 4
  %451 = sub i32 %447, 3
  %452 = mul i32 %448, %449
  %453 = mul i32 %450, %451
  %454 = sub i32 %452, %453
  %455 = sub i32 %454, 9
  %456 = and i32 %455, 1
  %457 = icmp eq i32 %456, 1
  br i1 %457, label %458, label %844

458:                                              ; preds = %844, %445
  %459 = add i32 %447, 1
  %460 = mul i32 %447, %459
  %461 = mul i32 %447, %447
  %462 = sub i32 %460, %461
  %463 = and i32 %462, 1
  %464 = icmp eq i32 %463, 1
  br i1 %464, label %465, label %844

465:                                              ; preds = %844, %458
  br label %466

466:                                              ; preds = %465
  %467 = alloca i32, align 4
  %468 = load i32, i32* %467, align 4
  %469 = sub i32 %468, 1
  %470 = add i32 %468, 3
  %471 = add i32 %468, 4
  %472 = sub i32 %468, 3
  %473 = mul i32 %469, %470
  %474 = mul i32 %471, %472
  %475 = sub i32 %473, %474
  %476 = sub i32 %475, 9
  %477 = and i32 %476, 1
  %478 = icmp eq i32 %477, 1
  br i1 %478, label %479, label %855

479:                                              ; preds = %855, %466
  %.reload2 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload2, align 4
  %480 = mul i32 %468, 3
  %481 = sub i32 %468, 2
  %482 = mul i32 %480, %481
  %483 = mul i32 %468, %468
  %484 = mul i32 %483, 3
  %485 = mul i32 %468, 7
  %486 = sub i32 %482, %484
  %487 = add i32 %485, %486
  %488 = and i32 %487, 1
  %489 = icmp eq i32 %488, 1
  br i1 %489, label %490, label %855

490:                                              ; preds = %855, %479
  br label %572

491:                                              ; preds = %397
  %492 = alloca i32, align 4
  %493 = load i32, i32* %492, align 4
  %494 = add i32 %493, 1
  %495 = mul i32 %493, %494
  %496 = mul i32 %493, %493
  %497 = sub i32 %495, %496
  %498 = and i32 %497, 1
  %499 = icmp eq i32 %498, 1
  br i1 %499, label %500, label %866

500:                                              ; preds = %866, %491
  %501 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %502 = add i32 %493, 1
  %503 = mul i32 %493, %502
  %504 = mul i32 %493, %493
  %505 = sub i32 %503, %504
  %506 = and i32 %505, 1
  %507 = icmp eq i32 %506, 1
  br i1 %507, label %508, label %866

508:                                              ; preds = %866, %500
  br label %509

509:                                              ; preds = %508
  %510 = alloca i32, align 4
  %511 = load i32, i32* %510, align 4
  %512 = add i32 %511, 1
  %513 = mul i32 %511, %512
  %514 = mul i32 %511, %511
  %515 = sub i32 %513, %514
  %516 = and i32 %515, 1
  %517 = icmp eq i32 %516, 1
  br i1 %517, label %518, label %878

518:                                              ; preds = %878, %509
  %519 = sub i32 %511, 1
  %520 = add i32 %511, 3
  %521 = add i32 %511, 4
  %522 = sub i32 %511, 3
  %523 = mul i32 %519, %520
  %524 = mul i32 %521, %522
  %525 = sub i32 %523, %524
  %526 = sub i32 %525, 9
  %527 = and i32 %526, 1
  %528 = icmp eq i32 %527, 1
  br i1 %528, label %529, label %878

529:                                              ; preds = %878, %518
  br label %530

530:                                              ; preds = %529
  %531 = alloca i32, align 4
  %532 = load i32, i32* %531, align 4
  %533 = mul i32 %532, 3
  %534 = sub i32 %532, 2
  %535 = mul i32 %533, %534
  %536 = mul i32 %532, %532
  %537 = mul i32 %536, 3
  %538 = mul i32 %532, 7
  %539 = sub i32 %535, %537
  %540 = add i32 %538, %539
  %541 = and i32 %540, 1
  %542 = icmp eq i32 %541, 1
  br i1 %542, label %543, label %889

543:                                              ; preds = %889, %530
  %544 = add i32 %532, 1
  %545 = mul i32 %532, %544
  %546 = mul i32 %532, %532
  %547 = sub i32 %545, %546
  %548 = and i32 %547, 1
  %549 = icmp eq i32 %548, 1
  br i1 %549, label %550, label %889

550:                                              ; preds = %889, %543
  br label %551

551:                                              ; preds = %550
  %552 = alloca i32, align 4
  %553 = load i32, i32* %552, align 4
  %554 = sub i32 %553, 1
  %555 = add i32 %553, 3
  %556 = add i32 %553, 4
  %557 = sub i32 %553, 3
  %558 = mul i32 %554, %555
  %559 = mul i32 %556, %557
  %560 = sub i32 %558, %559
  %561 = sub i32 %560, 9
  %562 = and i32 %561, 1
  %563 = icmp eq i32 %562, 1
  br i1 %563, label %564, label %900

564:                                              ; preds = %900, %551
  %.reload1 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 -1, i32* %.reload1, align 4
  %565 = add i32 %553, 1
  %566 = mul i32 %553, %565
  %567 = mul i32 %553, %553
  %568 = sub i32 %566, %567
  %569 = and i32 %568, 1
  %570 = icmp eq i32 %569, 1
  br i1 %570, label %571, label %900

571:                                              ; preds = %900, %564
  br label %572

572:                                              ; preds = %571, %490
  %573 = alloca i32, align 4
  %574 = load i32, i32* %573, align 4
  %575 = add i32 %574, 1
  %576 = mul i32 %574, %575
  %577 = mul i32 %574, %574
  %578 = sub i32 %576, %577
  %579 = and i32 %578, 1
  %580 = icmp eq i32 %579, 1
  br i1 %580, label %581, label %907

581:                                              ; preds = %907, %572
  %.reload = load volatile i32*, i32** %.reg2mem, align 8
  %582 = load i32, i32* %.reload, align 4
  store i32 %582, i32* %.reg2mem50, align 4
  %583 = add i32 %574, 1
  %584 = mul i32 %574, %583
  %585 = mul i32 %574, %574
  %586 = sub i32 %584, %585
  %587 = and i32 %586, 1
  %588 = icmp eq i32 %587, 1
  br i1 %588, label %589, label %907

589:                                              ; preds = %907, %581
  br label %590

590:                                              ; preds = %589
  %591 = alloca i32, align 4
  %592 = load i32, i32* %591, align 4
  %593 = add i32 %592, 1
  %594 = mul i32 %592, %593
  %595 = mul i32 %592, %592
  %596 = sub i32 %594, %595
  %597 = and i32 %596, 1
  %598 = icmp eq i32 %597, 1
  br i1 %598, label %599, label %919

599:                                              ; preds = %919, %590
  %600 = sub i32 %592, 1
  %601 = add i32 %592, 3
  %602 = add i32 %592, 4
  %603 = sub i32 %592, 3
  %604 = mul i32 %600, %601
  %605 = mul i32 %602, %603
  %606 = sub i32 %604, %605
  %607 = sub i32 %606, 9
  %608 = and i32 %607, 1
  %609 = icmp eq i32 %608, 1
  br i1 %609, label %610, label %919

610:                                              ; preds = %919, %599
  br label %611

611:                                              ; preds = %610
  %612 = alloca i32, align 4
  %613 = load i32, i32* %612, align 4
  %614 = add i32 %613, 1
  %615 = mul i32 %613, %614
  %616 = mul i32 %613, %613
  %617 = sub i32 %615, %616
  %618 = and i32 %617, 1
  %619 = icmp eq i32 %618, 1
  br i1 %619, label %620, label %930

620:                                              ; preds = %930, %611
  %621 = sub i32 %613, 1
  %622 = add i32 %613, 3
  %623 = add i32 %613, 4
  %624 = sub i32 %613, 3
  %625 = mul i32 %621, %622
  %626 = mul i32 %623, %624
  %627 = sub i32 %625, %626
  %628 = sub i32 %627, 9
  %629 = and i32 %628, 1
  %630 = icmp eq i32 %629, 1
  br i1 %630, label %631, label %930

631:                                              ; preds = %930, %620
  br label %632

632:                                              ; preds = %631
  %633 = alloca i32, align 4
  %634 = load i32, i32* %633, align 4
  %635 = add i32 %634, 1
  %636 = mul i32 %634, %635
  %637 = mul i32 %634, %634
  %638 = sub i32 %636, %637
  %639 = and i32 %638, 1
  %640 = icmp eq i32 %639, 1
  br i1 %640, label %641, label %941

641:                                              ; preds = %941, %632
  %.reload51 = load volatile i32, i32* %.reg2mem50, align 4
  store i32 %.reload51, i32* %.reload51.reg2mem, align 4
  %642 = add i32 %634, 1
  %643 = mul i32 %634, %642
  %644 = mul i32 %634, %634
  %645 = sub i32 %643, %644
  %646 = and i32 %645, 1
  %647 = icmp eq i32 %646, 1
  br i1 %647, label %648, label %941

648:                                              ; preds = %941, %641
  %.reload51.reload = load volatile i32, i32* %.reload51.reg2mem, align 4
  ret i32 %.reload51.reload

649:                                              ; preds = %15, %2
  %650 = alloca i32, align 4
  store i32* %650, i32** %.reg2mem, align 8
  %651 = alloca i32, align 4
  store i32* %651, i32** %.reg2mem4, align 8
  %652 = alloca i8**, align 8
  store i8*** %652, i8**** %.reg2mem6, align 8
  %653 = alloca i8*, align 8
  store i8** %653, i8*** %.reg2mem9, align 8
  %654 = alloca i32, align 4
  store i32* %654, i32** %.reg2mem12, align 8
  %655 = add i32 %4, 1
  %656 = mul i32 %4, %655
  %657 = mul i32 %4, %4
  %658 = sub i32 %656, %657
  %659 = and i32 %658, 1
  %660 = icmp eq i32 %659, 1
  br i1 %660, label %15, label %31

661:                                              ; preds = %45, %32
  %662 = mul i32 %34, 3
  %663 = sub i32 %34, 2
  %664 = mul i32 %662, %663
  %665 = mul i32 %34, %34
  %666 = mul i32 %665, 3
  %667 = mul i32 %34, 7
  %668 = sub i32 %664, %666
  %669 = add i32 %667, %668
  %670 = and i32 %669, 1
  %671 = icmp eq i32 %670, 1
  br i1 %671, label %45, label %56

672:                                              ; preds = %70, %57
  %673 = add i32 %59, 1
  %674 = mul i32 %59, %673
  %675 = mul i32 %59, %59
  %676 = sub i32 %674, %675
  %677 = and i32 %676, 1
  %678 = icmp eq i32 %677, 1
  br i1 %678, label %70, label %77

679:                                              ; preds = %91, %78
  %680 = alloca i32, align 4
  %681 = alloca i32, align 4
  store i32* %681, i32** %.reg2mem18, align 8
  %.reload323 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload323, align 4
  %.reload524 = load volatile i32*, i32** %.reg2mem4, align 8
  store i32 %0, i32* %.reload524, align 4
  %.reload825 = load volatile i8***, i8**** %.reg2mem6, align 8
  store i8** %1, i8*** %.reload825, align 8
  %682 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %.reload726 = load volatile i8***, i8**** %.reg2mem6, align 8
  %683 = load i8**, i8*** %.reload726, align 8
  %684 = getelementptr inbounds i8*, i8** %683, i64 1
  %685 = load i8*, i8** %684, align 8
  %.reload1127 = load volatile i8**, i8*** %.reg2mem9, align 8
  store i8* %685, i8** %.reload1127, align 8
  %.reload1028 = load volatile i8**, i8*** %.reg2mem9, align 8
  %686 = load i8*, i8** %.reload1028, align 8
  %687 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %686)
  %.reload1729 = load volatile i32*, i32** %.reg2mem12, align 8
  %688 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %.reload1729)
  %.reload2230 = load volatile i32*, i32** %.reg2mem18, align 8
  store i32 10, i32* %.reload2230, align 4
  %689 = mul i32 %80, 3
  %690 = sub i32 %80, 2
  %691 = mul i32 %689, %690
  %692 = mul i32 %80, %80
  %693 = mul i32 %692, 3
  %694 = mul i32 %80, 7
  %695 = sub i32 %691, %693
  %696 = add i32 %694, %695
  %697 = and i32 %696, 1
  %698 = icmp eq i32 %697, 1
  br i1 %698, label %91, label %111

699:                                              ; preds = %125, %112
  %.reload2133 = load volatile i32*, i32** %.reg2mem18, align 8
  %700 = load i32, i32* %.reload2133, align 4
  store i32 %700, i32* %.reg2mem31, align 4
  %701 = sub i32 %114, 1
  %702 = add i32 %114, 3
  %703 = add i32 %114, 4
  %704 = sub i32 %114, 3
  %705 = mul i32 %701, %702
  %706 = mul i32 %703, %704
  %707 = sub i32 %705, %706
  %708 = sub i32 %707, 9
  %709 = and i32 %708, 1
  %710 = icmp eq i32 %709, 1
  br i1 %710, label %125, label %137

711:                                              ; preds = %151, %138
  %712 = add i32 %140, 1
  %713 = mul i32 %140, %712
  %714 = mul i32 %140, %140
  %715 = sub i32 %713, %714
  %716 = and i32 %715, 1
  %717 = icmp eq i32 %716, 1
  br i1 %717, label %151, label %158

718:                                              ; preds = %172, %159
  %719 = sub i32 %161, 1
  %720 = add i32 %161, 3
  %721 = add i32 %161, 4
  %722 = sub i32 %161, 3
  %723 = mul i32 %719, %720
  %724 = mul i32 %721, %722
  %725 = sub i32 %723, %724
  %726 = sub i32 %725, 9
  %727 = and i32 %726, 1
  %728 = icmp eq i32 %727, 1
  br i1 %728, label %172, label %183

729:                                              ; preds = %197, %184
  %.reload3236 = load volatile i32, i32* %.reg2mem31, align 4
  %730 = icmp ne i32 %.reload3236, 0
  store i1 %730, i1* %.reg2mem34, align 1
  %731 = add i32 %186, 1
  %732 = mul i32 %186, %731
  %733 = mul i32 %186, %186
  %734 = sub i32 %732, %733
  %735 = and i32 %734, 1
  %736 = icmp eq i32 %735, 1
  br i1 %736, label %197, label %205

737:                                              ; preds = %219, %206
  %.reload1637 = load volatile i32*, i32** %.reg2mem12, align 8
  %738 = load i32, i32* %.reload1637, align 4
  %739 = add nsw i32 %738, 1
  %.reload1538 = load volatile i32*, i32** %.reg2mem12, align 8
  store i32 %739, i32* %.reload1538, align 4
  %740 = sub i32 %208, 1
  %741 = add i32 %208, 3
  %742 = add i32 %208, 4
  %743 = sub i32 %208, 3
  %744 = mul i32 %740, %741
  %745 = mul i32 %742, %743
  %746 = sub i32 %744, %745
  %747 = sub i32 %746, 9
  %748 = and i32 %747, 1
  %749 = icmp eq i32 %748, 1
  br i1 %749, label %219, label %232

750:                                              ; preds = %246, %233
  %751 = mul i32 %235, 3
  %752 = sub i32 %235, 2
  %753 = mul i32 %751, %752
  %754 = mul i32 %235, %235
  %755 = mul i32 %754, 3
  %756 = mul i32 %235, 7
  %757 = sub i32 %753, %755
  %758 = add i32 %756, %757
  %759 = and i32 %758, 1
  %760 = icmp eq i32 %759, 1
  br i1 %760, label %246, label %257

761:                                              ; preds = %271, %258
  %762 = add i32 %260, 1
  %763 = mul i32 %260, %762
  %764 = mul i32 %260, %260
  %765 = sub i32 %763, %764
  %766 = and i32 %765, 1
  %767 = icmp eq i32 %766, 1
  br i1 %767, label %271, label %278

768:                                              ; preds = %288, %279
  %.reload1439 = load volatile i32*, i32** %.reg2mem12, align 8
  %769 = load i32, i32* %.reload1439, align 4
  %770 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %769)
  %.reload2040 = load volatile i32*, i32** %.reg2mem18, align 8
  %771 = load i32, i32* %.reload2040, align 4
  %772 = add nsw i32 %771, -1
  %.reload1941 = load volatile i32*, i32** %.reg2mem18, align 8
  store i32 %772, i32* %.reload1941, align 4
  %773 = add i32 %281, 1
  %774 = mul i32 %281, %773
  %775 = mul i32 %281, %281
  %776 = sub i32 %774, %775
  %777 = and i32 %776, 1
  %778 = icmp eq i32 %777, 1
  br i1 %778, label %288, label %303

779:                                              ; preds = %317, %304
  %.reload1344 = load volatile i32*, i32** %.reg2mem12, align 8
  %780 = load i32, i32* %.reload1344, align 4
  store i32 %780, i32* %.reg2mem42, align 4
  %781 = mul i32 %306, 3
  %782 = sub i32 %306, 2
  %783 = mul i32 %781, %782
  %784 = mul i32 %306, %306
  %785 = mul i32 %784, 3
  %786 = mul i32 %306, 7
  %787 = sub i32 %783, %785
  %788 = add i32 %786, %787
  %789 = and i32 %788, 1
  %790 = icmp eq i32 %789, 1
  br i1 %790, label %317, label %329

791:                                              ; preds = %343, %330
  %792 = add i32 %332, 1
  %793 = mul i32 %332, %792
  %794 = mul i32 %332, %332
  %795 = sub i32 %793, %794
  %796 = and i32 %795, 1
  %797 = icmp eq i32 %796, 1
  br i1 %797, label %343, label %350

798:                                              ; preds = %360, %351
  %799 = sub i32 %353, 1
  %800 = add i32 %353, 3
  %801 = add i32 %353, 4
  %802 = sub i32 %353, 3
  %803 = mul i32 %799, %800
  %804 = mul i32 %801, %802
  %805 = sub i32 %803, %804
  %806 = sub i32 %805, 9
  %807 = and i32 %806, 1
  %808 = icmp eq i32 %807, 1
  br i1 %808, label %360, label %371

809:                                              ; preds = %385, %372
  %.reload4347 = load volatile i32, i32* %.reg2mem42, align 4
  %810 = icmp ne i32 %.reload4347, 4
  store i1 %810, i1* %.reg2mem45, align 1
  %811 = sub i32 %374, 1
  %812 = add i32 %374, 3
  %813 = add i32 %374, 4
  %814 = sub i32 %374, 3
  %815 = mul i32 %811, %812
  %816 = mul i32 %813, %814
  %817 = sub i32 %815, %816
  %818 = sub i32 %817, 9
  %819 = and i32 %818, 1
  %820 = icmp eq i32 %819, 1
  br i1 %820, label %385, label %397

821:                                              ; preds = %411, %398
  %822 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %823 = sub i32 %400, 1
  %824 = add i32 %400, 3
  %825 = add i32 %400, 4
  %826 = sub i32 %400, 3
  %827 = mul i32 %823, %824
  %828 = mul i32 %825, %826
  %829 = sub i32 %827, %828
  %830 = sub i32 %829, 9
  %831 = and i32 %830, 1
  %832 = icmp eq i32 %831, 1
  br i1 %832, label %411, label %419

833:                                              ; preds = %433, %420
  %834 = sub i32 %422, 1
  %835 = add i32 %422, 3
  %836 = add i32 %422, 4
  %837 = sub i32 %422, 3
  %838 = mul i32 %834, %835
  %839 = mul i32 %836, %837
  %840 = sub i32 %838, %839
  %841 = sub i32 %840, 9
  %842 = and i32 %841, 1
  %843 = icmp eq i32 %842, 1
  br i1 %843, label %433, label %444

844:                                              ; preds = %458, %445
  %845 = sub i32 %447, 1
  %846 = add i32 %447, 3
  %847 = add i32 %447, 4
  %848 = sub i32 %447, 3
  %849 = mul i32 %845, %846
  %850 = mul i32 %847, %848
  %851 = sub i32 %849, %850
  %852 = sub i32 %851, 9
  %853 = and i32 %852, 1
  %854 = icmp eq i32 %853, 1
  br i1 %854, label %458, label %465

855:                                              ; preds = %479, %466
  %.reload248 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload248, align 4
  %856 = mul i32 %468, 3
  %857 = sub i32 %468, 2
  %858 = mul i32 %856, %857
  %859 = mul i32 %468, %468
  %860 = mul i32 %859, 3
  %861 = mul i32 %468, 7
  %862 = sub i32 %858, %860
  %863 = add i32 %861, %862
  %864 = and i32 %863, 1
  %865 = icmp eq i32 %864, 1
  br i1 %865, label %479, label %490

866:                                              ; preds = %500, %491
  %867 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %868 = sub i32 %493, 1
  %869 = add i32 %493, 3
  %870 = add i32 %493, 4
  %871 = sub i32 %493, 3
  %872 = mul i32 %868, %869
  %873 = mul i32 %870, %871
  %874 = sub i32 %872, %873
  %875 = sub i32 %874, 9
  %876 = and i32 %875, 1
  %877 = icmp eq i32 %876, 1
  br i1 %877, label %500, label %508

878:                                              ; preds = %518, %509
  %879 = sub i32 %511, 1
  %880 = add i32 %511, 3
  %881 = add i32 %511, 4
  %882 = sub i32 %511, 3
  %883 = mul i32 %879, %880
  %884 = mul i32 %881, %882
  %885 = sub i32 %883, %884
  %886 = sub i32 %885, 9
  %887 = and i32 %886, 1
  %888 = icmp eq i32 %887, 1
  br i1 %888, label %518, label %529

889:                                              ; preds = %543, %530
  %890 = mul i32 %532, 3
  %891 = sub i32 %532, 2
  %892 = mul i32 %890, %891
  %893 = mul i32 %532, %532
  %894 = mul i32 %893, 3
  %895 = mul i32 %532, 7
  %896 = sub i32 %892, %894
  %897 = add i32 %895, %896
  %898 = and i32 %897, 1
  %899 = icmp eq i32 %898, 1
  br i1 %899, label %543, label %550

900:                                              ; preds = %564, %551
  %.reload149 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 -1, i32* %.reload149, align 4
  %901 = add i32 %553, 1
  %902 = mul i32 %553, %901
  %903 = mul i32 %553, %553
  %904 = sub i32 %902, %903
  %905 = and i32 %904, 1
  %906 = icmp eq i32 %905, 1
  br i1 %906, label %564, label %571

907:                                              ; preds = %581, %572
  %.reload52 = load volatile i32*, i32** %.reg2mem, align 8
  %908 = load i32, i32* %.reload52, align 4
  store i32 %908, i32* %.reg2mem50, align 4
  %909 = sub i32 %574, 1
  %910 = add i32 %574, 3
  %911 = add i32 %574, 4
  %912 = sub i32 %574, 3
  %913 = mul i32 %909, %910
  %914 = mul i32 %911, %912
  %915 = sub i32 %913, %914
  %916 = sub i32 %915, 9
  %917 = and i32 %916, 1
  %918 = icmp eq i32 %917, 1
  br i1 %918, label %581, label %589

919:                                              ; preds = %599, %590
  %920 = sub i32 %592, 1
  %921 = add i32 %592, 3
  %922 = add i32 %592, 4
  %923 = sub i32 %592, 3
  %924 = mul i32 %920, %921
  %925 = mul i32 %922, %923
  %926 = sub i32 %924, %925
  %927 = sub i32 %926, 9
  %928 = and i32 %927, 1
  %929 = icmp eq i32 %928, 1
  br i1 %929, label %599, label %610

930:                                              ; preds = %620, %611
  %931 = mul i32 %613, 3
  %932 = sub i32 %613, 2
  %933 = mul i32 %931, %932
  %934 = mul i32 %613, %613
  %935 = mul i32 %934, 3
  %936 = mul i32 %613, 7
  %937 = sub i32 %933, %935
  %938 = add i32 %936, %937
  %939 = and i32 %938, 1
  %940 = icmp eq i32 %939, 1
  br i1 %940, label %620, label %631

941:                                              ; preds = %641, %632
  %.reload5153 = load volatile i32, i32* %.reg2mem50, align 4
  store i32 %.reload5153, i32* %.reload51.reg2mem, align 4
  %942 = sub i32 %634, 1
  %943 = add i32 %634, 3
  %944 = add i32 %634, 4
  %945 = sub i32 %634, 3
  %946 = mul i32 %942, %943
  %947 = mul i32 %944, %945
  %948 = sub i32 %946, %947
  %949 = sub i32 %948, 9
  %950 = and i32 %949, 1
  %951 = icmp eq i32 %950, 1
  br i1 %951, label %641, label %648
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
