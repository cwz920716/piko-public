; ModuleID = 'dummy.cpp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ConstantState = type { i32, i32, float, float, [16 x float], [16 x float], [16 x float], i32, i32 }
%struct.cvec2f = type { float, float }
%struct.cvec3f = type { float, float, float }
%struct.cvec4f = type { float, float, float, float }
%struct.Pixel = type { %struct.Primitive, %struct.cvec2u, i32 }
%struct.Primitive = type { i32, i32 }
%struct.cvec2u = type { i32, i32 }
%class.PikoScreen = type { i32, i32, i32, i32*, i32* }
%class.RasterStage = type { %class.Stage }
%class.Stage = type { [5 x %class.StageFloor*], [5 x %class.StageFloor*], [5 x i32], i8, i8, %struct.MutableState*, i32, i32, i32, %class.Bin*, %class.Bin*, [5 x %class.StageFloor*], [5 x %class.StageFloor*] }
%struct.MutableState = type { [786432 x float] }
%class.Bin = type { %class.PikoDataStructure.4 }
%class.PikoDataStructure.4 = type { %struct.raster_stri*, i32, i32, i32, i32 }
%struct.raster_stri = type { %struct.Primitive, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32 }
%class.StageFloor = type { i8 }
%struct.boundingBoxFixPt = type { %struct.cvec2i, %struct.cvec2i }
%struct.cvec2i = type { i32, i32 }
%class.VertexShaderStage = type { %class.Stage.1 }
%class.Stage.1 = type { [5 x %class.StageFloor*], [5 x %class.StageFloor*], [5 x i32], i8, i8, %struct.MutableState*, i32, i32, i32, %class.Bin.3*, %class.Bin.3*, [5 x %class.StageFloor*], [5 x %class.StageFloor*] }
%class.Bin.3 = type { %class.PikoDataStructure }
%class.PikoDataStructure = type { %struct.raster_wtri*, i32, i32, i32, i32 }
%struct.raster_wtri = type { %struct.Primitive, i32, %struct.cvec3f, %struct.cvec3f, %struct.cvec3f, i32, i32, i32 }
%class.PikoArray = type { %class.PikoDataStructure }

$_ZmiRK6cvec2fS1_ = comdat any

$_ZmiRK6cvec4fS1_ = comdat any

$_ZN10PikoScreen9assignBinE5Pixel = comdat any

$_ZN10PikoScreen7processE5Pixel = comdat any

$_ZN11RasterStage9assignBinE11raster_stri = comdat any

$_ZN11RasterStage7processE11raster_stri = comdat any

$_Z6getGIDv = comdat any

$_ZN17PikoDataStructureI11raster_wtriE11getNumPrimsEv = comdat any

$_ZN17VertexShaderStage9assignBinE11raster_wtri = comdat any

$_ZN9PikoArrayI11raster_wtriEixEj = comdat any

$_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE10getNumBinsEv = comdat any

$_ZN17VertexShaderStage8scheduleEi = comdat any

$_Z8getBinIDv = comdat any

$_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE6getBinEi = comdat any

$_Z6getTIDv = comdat any

$_Z13getNumThreadsv = comdat any

$_ZN3BinI11raster_wtriE9fetchPrimEv = comdat any

$_ZN17VertexShaderStage7processE11raster_wtri = comdat any

$_ZN4piko14BinSynchronizeEv = comdat any

$_ZN17PikoDataStructureI11raster_wtriE15updatePrimCountEi = comdat any

$_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE10getNumBinsEv = comdat any

$_ZN11RasterStage8scheduleEi = comdat any

$_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE6getBinEi = comdat any

$_ZN17PikoDataStructureI11raster_striE11getNumPrimsEv = comdat any

$_ZN3BinI11raster_striE9fetchPrimEv = comdat any

$_ZN17PikoDataStructureI11raster_striE15updatePrimCountEi = comdat any

$_Z6subvecRK6cvec2fS1_ = comdat any

$_Z6subvecRK6cvec4fS1_ = comdat any

$_Z28computePixelBoundingBoxFixPtR11raster_striR16boundingBoxFixPt = comdat any

$_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11getNumBinsXEv = comdat any

$_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11getNumBinsYEv = comdat any

$_Z22GetTrivialRejectOffsetiiii = comdat any

$_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11assignToBinES0_i = comdat any

$_Z14RoundDownFixPti = comdat any

$_ZN4piko7min_minEiii = comdat any

$_Z12RoundUpFixPti = comdat any

$_ZN4piko7max_maxEiii = comdat any

$_ZN17PikoDataStructureI11raster_striE6insertES0_ = comdat any

$_ZN11raster_striaSERS_ = comdat any

$_Z16computeBinExtentR6cvec2iS0_iii = comdat any

$_Z12intersectBBiR6cvec2iS0_S0_S0_S0_S0_ = comdat any

$_ZN4piko10rcp_approxEf = comdat any

$_Z9gencvec2iRKiS0_ = comdat any

$_ZN4piko8fromABGREj = comdat any

$_Z22GetTrivialAcceptOffsetiiii = comdat any

$_ZmiRK6cvec3fS1_ = comdat any

$_Z19getSampleIdFromMaskRKyRiS1_ = comdat any

$_Z21interpolate_alphabetaIfET_RKS0_S2_S2_RKfS4_ = comdat any

$_ZN4piko4imadEiii = comdat any

$float_as_int = comdat any

$_ZN5PixelC2Ev = comdat any

$_ZN4piko6toABGRE6cvec3f = comdat any

$_ZN4piko9idiv_fastEjj = comdat any

$_ZN4piko18f32_to_u32_sat_rmiEf = comdat any

$_Z6subvecRK6cvec3fS1_ = comdat any

$_ZN9PrimitiveC2Ev = comdat any

$_ZN6cvec2uC2Ev = comdat any

$_ZN4piko6fma_rmEfff = comdat any

$_ZN4piko4prmtEjjj = comdat any

$_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE11assignToBinES0_i = comdat any

$_ZN17PikoDataStructureI11raster_wtriE6insertES0_ = comdat any

$_ZN11raster_wtriaSERS_ = comdat any

$_ZN11raster_striC2Ev = comdat any

$_Z18isFrontFacingFixPtR11raster_stri = comdat any

$_Z20isInsideFrustumFixPtR11raster_striffii = comdat any

$_Z23computeBoundingBoxFixPtR11raster_striR16boundingBoxFixPt = comdat any

$_Z18isBBBetweenSamplesR16boundingBoxFixPt = comdat any

@overrideBinID = global i32 -1, align 4
@constState = addrspace(4) global %struct.ConstantState zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define void @_Z15specifySchedule14SchedulePolicyi(i32 %pol, i32 %tileSplitSize) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %pol, i32* %1, align 4
  store i32 %tileSplitSize, i32* %2, align 4
  ret void
}

; Function Attrs: uwtable
define i32 @atomicIncrement(i32* %v1) #1 {
  %1 = alloca i32*, align 8
  store i32* %v1, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  %3 = call i32 @__atomic_nvvm_increment__(i32* %2, i32 1)
  ret i32 %3
}

declare i32 @__atomic_nvvm_increment__(i32*, i32) #2

; Function Attrs: uwtable
define i32 @atomicDecrement(i32* %v1) #1 {
  %1 = alloca i32*, align 8
  store i32* %v1, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  %3 = call i32 @__atomic_nvvm_decrement__(i32* %2, i32 1)
  ret i32 %3
}

declare i32 @__atomic_nvvm_decrement__(i32*, i32) #2

; Function Attrs: uwtable
define i32 @atomicMin(i32* %v1, i32 %v2) #1 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* %v1, i32** %1, align 8
  store i32 %v2, i32* %2, align 4
  %3 = load i32*, i32** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @__atomic_llvm_min__(i32* %3, i32 %4)
  ret i32 %5
}

declare i32 @__atomic_llvm_min__(i32*, i32) #2

; Function Attrs: uwtable
define i32 @_ZN4piko14atomicMinLocalEPU3AS3ii(i32 addrspace(3)* %v1, i32 %v2) #1 {
  %1 = alloca i32 addrspace(3)*, align 8
  %2 = alloca i32, align 4
  store i32 addrspace(3)* %v1, i32 addrspace(3)** %1, align 8
  store i32 %v2, i32* %2, align 4
  %3 = load i32 addrspace(3)*, i32 addrspace(3)** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @_Z24__atomic_llvm_minLocal__PU3AS3ii(i32 addrspace(3)* %3, i32 %4)
  ret i32 %5
}

declare i32 @_Z24__atomic_llvm_minLocal__PU3AS3ii(i32 addrspace(3)*, i32) #2

; Function Attrs: uwtable
define i32 @_ZN4piko9atomicAddEPii(i32* %v1, i32 %v2) #1 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* %v1, i32** %1, align 8
  store i32 %v2, i32* %2, align 4
  %3 = load i32*, i32** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @__atomic_llvm_add__(i32* %3, i32 %4)
  ret i32 %5
}

declare i32 @__atomic_llvm_add__(i32*, i32) #2

; Function Attrs: uwtable
define float @_ZN4piko9atomicAddEPff(float* %v1, float %v2) #1 {
  %1 = alloca float*, align 8
  %2 = alloca float, align 4
  store float* %v1, float** %1, align 8
  store float %v2, float* %2, align 4
  %3 = load float*, float** %1, align 8
  %4 = load float, float* %2, align 4
  %5 = call float @__atomic_nvvm_addFloat__(float* %3, float %4)
  ret float %5
}

declare float @__atomic_nvvm_addFloat__(float*, float) #2

; Function Attrs: uwtable
define double @_ZN4piko4fminEdd(double %x, double %y) #1 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double %x, double* %1, align 8
  store double %y, double* %2, align 8
  %3 = load double, double* %1, align 8
  %4 = load double, double* %2, align 8
  %5 = call double @__nv_fmin(double %3, double %4)
  ret double %5
}

declare double @__nv_fmin(double, double) #2

; Function Attrs: uwtable
define float @_ZN4piko5fminfEff(float %x, float %y) #1 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %x, float* %1, align 4
  store float %y, float* %2, align 4
  %3 = load float, float* %1, align 4
  %4 = load float, float* %2, align 4
  %5 = call float @__nv_fminf(float %3, float %4)
  ret float %5
}

declare float @__nv_fminf(float, float) #2

; Function Attrs: uwtable
define double @_ZN4piko4fmaxEdd(double %x, double %y) #1 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double %x, double* %1, align 8
  store double %y, double* %2, align 8
  %3 = load double, double* %1, align 8
  %4 = load double, double* %2, align 8
  %5 = call double @__nv_fmax(double %3, double %4)
  ret double %5
}

declare double @__nv_fmax(double, double) #2

; Function Attrs: uwtable
define float @_ZN4piko5fmaxfEff(float %x, float %y) #1 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %x, float* %1, align 4
  store float %y, float* %2, align 4
  %3 = load float, float* %1, align 4
  %4 = load float, float* %2, align 4
  %5 = call float @__nv_fmaxf(float %3, float %4)
  ret float %5
}

declare float @__nv_fmaxf(float, float) #2

; Function Attrs: uwtable
define double @_ZN4piko5floorEd(double %x) #1 {
  %1 = alloca double, align 8
  store double %x, double* %1, align 8
  %2 = load double, double* %1, align 8
  %3 = call double @__nv_floor(double %2)
  ret double %3
}

declare double @__nv_floor(double) #2

; Function Attrs: uwtable
define float @_ZN4piko6floorfEf(float %x) #1 {
  %1 = alloca float, align 4
  store float %x, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = call float @__nv_floorf(float %2)
  ret float %3
}

declare float @__nv_floorf(float) #2

; Function Attrs: uwtable
define double @_ZN4piko4ceilEd(double %x) #1 {
  %1 = alloca double, align 8
  store double %x, double* %1, align 8
  %2 = load double, double* %1, align 8
  %3 = call double @__nv_ceil(double %2)
  ret double %3
}

declare double @__nv_ceil(double) #2

; Function Attrs: uwtable
define float @_ZN4piko5ceilfEf(float %x) #1 {
  %1 = alloca float, align 4
  store float %x, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = call float @__nv_ceilf(float %2)
  ret float %3
}

declare float @__nv_ceilf(float) #2

; Function Attrs: uwtable
define double @_ZN4piko4sqrtEd(double %x) #1 {
  %1 = alloca double, align 8
  store double %x, double* %1, align 8
  %2 = load double, double* %1, align 8
  %3 = call double @__nv_sqrt(double %2)
  ret double %3
}

declare double @__nv_sqrt(double) #2

; Function Attrs: uwtable
define float @_ZN4piko5sqrtfEf(float %x) #1 {
  %1 = alloca float, align 4
  store float %x, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = call float @__nv_sqrtf(float %2)
  ret float %3
}

declare float @__nv_sqrtf(float) #2

; Function Attrs: uwtable
define double @_ZN4piko3powEdd(double %x, double %y) #1 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double %x, double* %1, align 8
  store double %y, double* %2, align 8
  %3 = load double, double* %1, align 8
  %4 = load double, double* %2, align 8
  %5 = call double @__nv_pow(double %3, double %4)
  ret double %5
}

declare double @__nv_pow(double, double) #2

; Function Attrs: uwtable
define float @_ZN4piko4powfEff(float %x, float %y) #1 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %x, float* %1, align 4
  store float %y, float* %2, align 4
  %3 = load float, float* %1, align 4
  %4 = load float, float* %2, align 4
  %5 = call float @__nv_powf(float %3, float %4)
  ret float %5
}

declare float @__nv_powf(float, float) #2

; Function Attrs: uwtable
define double @_ZN4piko3sinEd(double %x) #1 {
  %1 = alloca double, align 8
  store double %x, double* %1, align 8
  %2 = load double, double* %1, align 8
  %3 = call double @__nv_sin(double %2)
  ret double %3
}

declare double @__nv_sin(double) #2

; Function Attrs: uwtable
define float @_ZN4piko4sinfEf(float %x) #1 {
  %1 = alloca float, align 4
  store float %x, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = call float @__nv_sinf(float %2)
  ret float %3
}

declare float @__nv_sinf(float) #2

; Function Attrs: uwtable
define double @_ZN4piko3cosEd(double %x) #1 {
  %1 = alloca double, align 8
  store double %x, double* %1, align 8
  %2 = load double, double* %1, align 8
  %3 = call double @__nv_cos(double %2)
  ret double %3
}

declare double @__nv_cos(double) #2

; Function Attrs: uwtable
define float @_ZN4piko4cosfEf(float %x) #1 {
  %1 = alloca float, align 4
  store float %x, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = call float @__nv_cosf(float %2)
  ret float %3
}

declare float @__nv_cosf(float) #2

; Function Attrs: uwtable
define i32 @_ZN4piko3absEi(i32 %x) #1 {
  %1 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @__nv_abs(i32 %2)
  ret i32 %3
}

declare i32 @__nv_abs(i32) #2

; Function Attrs: uwtable
define i32 @_ZN4piko5ffsllEy(i64 %x) #1 {
  %1 = alloca i64, align 8
  store i64 %x, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @__nv_ffsll(i64 %2)
  ret i32 %3
}

declare i32 @__nv_ffsll(i64) #2

; Function Attrs: uwtable
define i32 @_ZN4piko6popcllEy(i64 %x) #1 {
  %1 = alloca i64, align 8
  store i64 %x, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @__nv_popcll(i64 %2)
  ret i32 %3
}

declare i32 @__nv_popcll(i64) #2

; Function Attrs: nounwind uwtable
define i32 @_ZN4piko4imaxEii(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %1, align 4
  br label %10

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %2, align 4
  br label %10

; <label>:10                                      ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @_ZN4piko4iminEii(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %1, align 4
  br label %10

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %2, align 4
  br label %10

; <label>:10                                      ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: uwtable
define float @_ZN4piko8distanceE6cvec2fS0_(<2 x float> %a.coerce, <2 x float> %b.coerce) #1 {
  %a = alloca %struct.cvec2f, align 4
  %b = alloca %struct.cvec2f, align 4
  %c = alloca %struct.cvec2f, align 4
  %sum = alloca float, align 4
  %1 = bitcast %struct.cvec2f* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %1, align 4
  %2 = bitcast %struct.cvec2f* %b to <2 x float>*
  store <2 x float> %b.coerce, <2 x float>* %2, align 4
  %3 = call <2 x float> @_ZmiRK6cvec2fS1_(%struct.cvec2f* dereferenceable(8) %a, %struct.cvec2f* dereferenceable(8) %b)
  %4 = bitcast %struct.cvec2f* %c to <2 x float>*
  store <2 x float> %3, <2 x float>* %4, align 4
  %5 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %c, i32 0, i32 0
  %6 = load float, float* %5, align 4
  %7 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %c, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = fmul float %6, %8
  %10 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %c, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %c, i32 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = fmul float %11, %13
  %15 = fadd float %9, %14
  store float %15, float* %sum, align 4
  %16 = load float, float* %sum, align 4
  %17 = call float @_ZN4piko5sqrtfEf(float %16)
  ret float %17
}

; Function Attrs: inlinehint uwtable
define linkonce_odr <2 x float> @_ZmiRK6cvec2fS1_(%struct.cvec2f* dereferenceable(8) %v1, %struct.cvec2f* dereferenceable(8) %v2) #3 comdat {
  %1 = alloca %struct.cvec2f, align 4
  %2 = alloca %struct.cvec2f*, align 8
  %3 = alloca %struct.cvec2f*, align 8
  store %struct.cvec2f* %v1, %struct.cvec2f** %2, align 8
  store %struct.cvec2f* %v2, %struct.cvec2f** %3, align 8
  %4 = load %struct.cvec2f*, %struct.cvec2f** %2, align 8
  %5 = load %struct.cvec2f*, %struct.cvec2f** %3, align 8
  %6 = call <2 x float> @_Z6subvecRK6cvec2fS1_(%struct.cvec2f* dereferenceable(8) %4, %struct.cvec2f* dereferenceable(8) %5)
  %7 = bitcast %struct.cvec2f* %1 to <2 x float>*
  store <2 x float> %6, <2 x float>* %7, align 4
  %8 = bitcast %struct.cvec2f* %1 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 4
  ret <2 x float> %9
}

; Function Attrs: uwtable
define { <2 x float>, float } @_ZN4piko9normalizeE6cvec3f(<2 x float> %vec.coerce0, float %vec.coerce1) #1 {
  %1 = alloca %struct.cvec3f, align 4
  %vec = alloca %struct.cvec3f, align 4
  %2 = alloca { <2 x float>, float }, align 4
  %mag = alloca float, align 4
  %3 = alloca %struct.cvec3f, align 4
  %4 = alloca { <2 x float>, float }, align 4
  %5 = alloca { <2 x float>, float }, align 8
  %6 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i32 0, i32 0
  store <2 x float> %vec.coerce0, <2 x float>* %6, align 4
  %7 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i32 0, i32 1
  store float %vec.coerce1, float* %7, align 4
  %8 = bitcast %struct.cvec3f* %vec to i8*
  %9 = bitcast { <2 x float>, float }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 12, i32 4, i1 false)
  %10 = bitcast %struct.cvec3f* %3 to i8*
  %11 = bitcast %struct.cvec3f* %vec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 12, i32 4, i1 false)
  %12 = bitcast { <2 x float>, float }* %4 to i8*
  %13 = bitcast %struct.cvec3f* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 12, i32 4, i1 false)
  %14 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %4, i32 0, i32 0
  %15 = load <2 x float>, <2 x float>* %14, align 4
  %16 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %4, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = call float @_ZN4piko9magnitudeE6cvec3f(<2 x float> %15, float %17)
  store float %18, float* %mag, align 4
  %19 = load float, float* %mag, align 4
  %20 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = fdiv float %21, %19
  store float %22, float* %20, align 4
  %23 = load float, float* %mag, align 4
  %24 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = fdiv float %25, %23
  store float %26, float* %24, align 4
  %27 = load float, float* %mag, align 4
  %28 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 2
  %29 = load float, float* %28, align 4
  %30 = fdiv float %29, %27
  store float %30, float* %28, align 4
  %31 = bitcast %struct.cvec3f* %1 to i8*
  %32 = bitcast %struct.cvec3f* %vec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 12, i32 4, i1 false)
  %33 = bitcast { <2 x float>, float }* %5 to i8*
  %34 = bitcast %struct.cvec3f* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 12, i32 4, i1 false)
  %35 = load { <2 x float>, float }, { <2 x float>, float }* %5, align 8
  ret { <2 x float>, float } %35
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: uwtable
define float @_ZN4piko9magnitudeE6cvec3f(<2 x float> %vec.coerce0, float %vec.coerce1) #1 {
  %vec = alloca %struct.cvec3f, align 4
  %1 = alloca { <2 x float>, float }, align 4
  %sum = alloca float, align 4
  %2 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %1, i32 0, i32 0
  store <2 x float> %vec.coerce0, <2 x float>* %2, align 4
  %3 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %1, i32 0, i32 1
  store float %vec.coerce1, float* %3, align 4
  %4 = bitcast %struct.cvec3f* %vec to i8*
  %5 = bitcast { <2 x float>, float }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 12, i32 4, i1 false)
  %6 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = fmul float %7, %9
  %11 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = fmul float %12, %14
  %16 = fadd float %10, %15
  %17 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 2
  %18 = load float, float* %17, align 4
  %19 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vec, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = fmul float %18, %20
  %22 = fadd float %16, %21
  store float %22, float* %sum, align 4
  %23 = load float, float* %sum, align 4
  %24 = call float @_ZN4piko5sqrtfEf(float %23)
  ret float %24
}

; Function Attrs: nounwind uwtable
define float @_ZN4piko6dotvecERK6cvec3fS2_(%struct.cvec3f* dereferenceable(12) %v1, %struct.cvec3f* dereferenceable(12) %v2) #0 {
  %1 = alloca %struct.cvec3f*, align 8
  %2 = alloca %struct.cvec3f*, align 8
  store %struct.cvec3f* %v1, %struct.cvec3f** %1, align 8
  store %struct.cvec3f* %v2, %struct.cvec3f** %2, align 8
  %3 = load %struct.cvec3f*, %struct.cvec3f** %1, align 8
  %4 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %3, i32 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = load %struct.cvec3f*, %struct.cvec3f** %2, align 8
  %7 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %6, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = fmul float %5, %8
  %10 = load %struct.cvec3f*, %struct.cvec3f** %1, align 8
  %11 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %10, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = load %struct.cvec3f*, %struct.cvec3f** %2, align 8
  %14 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %13, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fadd float %9, %16
  %18 = load %struct.cvec3f*, %struct.cvec3f** %1, align 8
  %19 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %18, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = load %struct.cvec3f*, %struct.cvec3f** %2, align 8
  %22 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %21, i32 0, i32 2
  %23 = load float, float* %22, align 4
  %24 = fmul float %20, %23
  %25 = fadd float %17, %24
  ret float %25
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @_ZN4piko13matmultfloat4EPf6cvec3f(float* %mvpMat, <2 x float> %v.coerce0, float %v.coerce1) #0 {
  %1 = alloca %struct.cvec4f, align 4
  %v = alloca %struct.cvec3f, align 4
  %2 = alloca { <2 x float>, float }, align 4
  %3 = alloca float*, align 8
  %4 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i32 0, i32 0
  store <2 x float> %v.coerce0, <2 x float>* %4, align 4
  %5 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i32 0, i32 1
  store float %v.coerce1, float* %5, align 4
  %6 = bitcast %struct.cvec3f* %v to i8*
  %7 = bitcast { <2 x float>, float }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 12, i32 4, i1 false)
  store float* %mvpMat, float** %3, align 8
  %8 = load float*, float** %3, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = fmul float %10, %12
  %14 = load float*, float** %3, align 8
  %15 = getelementptr inbounds float, float* %14, i64 4
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = fmul float %16, %18
  %20 = fadd float %13, %19
  %21 = load float*, float** %3, align 8
  %22 = getelementptr inbounds float, float* %21, i64 8
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 2
  %25 = load float, float* %24, align 4
  %26 = fmul float %23, %25
  %27 = fadd float %20, %26
  %28 = load float*, float** %3, align 8
  %29 = getelementptr inbounds float, float* %28, i64 12
  %30 = load float, float* %29, align 4
  %31 = fadd float %27, %30
  %32 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 0
  store float %31, float* %32, align 4
  %33 = load float*, float** %3, align 8
  %34 = getelementptr inbounds float, float* %33, i64 1
  %35 = load float, float* %34, align 4
  %36 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = fmul float %35, %37
  %39 = load float*, float** %3, align 8
  %40 = getelementptr inbounds float, float* %39, i64 5
  %41 = load float, float* %40, align 4
  %42 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 1
  %43 = load float, float* %42, align 4
  %44 = fmul float %41, %43
  %45 = fadd float %38, %44
  %46 = load float*, float** %3, align 8
  %47 = getelementptr inbounds float, float* %46, i64 9
  %48 = load float, float* %47, align 4
  %49 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 2
  %50 = load float, float* %49, align 4
  %51 = fmul float %48, %50
  %52 = fadd float %45, %51
  %53 = load float*, float** %3, align 8
  %54 = getelementptr inbounds float, float* %53, i64 13
  %55 = load float, float* %54, align 4
  %56 = fadd float %52, %55
  %57 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 1
  store float %56, float* %57, align 4
  %58 = load float*, float** %3, align 8
  %59 = getelementptr inbounds float, float* %58, i64 2
  %60 = load float, float* %59, align 4
  %61 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fmul float %60, %62
  %64 = load float*, float** %3, align 8
  %65 = getelementptr inbounds float, float* %64, i64 6
  %66 = load float, float* %65, align 4
  %67 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fmul float %66, %68
  %70 = fadd float %63, %69
  %71 = load float*, float** %3, align 8
  %72 = getelementptr inbounds float, float* %71, i64 10
  %73 = load float, float* %72, align 4
  %74 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 2
  %75 = load float, float* %74, align 4
  %76 = fmul float %73, %75
  %77 = fadd float %70, %76
  %78 = load float*, float** %3, align 8
  %79 = getelementptr inbounds float, float* %78, i64 14
  %80 = load float, float* %79, align 4
  %81 = fadd float %77, %80
  %82 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 2
  store float %81, float* %82, align 4
  %83 = load float*, float** %3, align 8
  %84 = getelementptr inbounds float, float* %83, i64 3
  %85 = load float, float* %84, align 4
  %86 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 0
  %87 = load float, float* %86, align 4
  %88 = fmul float %85, %87
  %89 = load float*, float** %3, align 8
  %90 = getelementptr inbounds float, float* %89, i64 7
  %91 = load float, float* %90, align 4
  %92 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 1
  %93 = load float, float* %92, align 4
  %94 = fmul float %91, %93
  %95 = fadd float %88, %94
  %96 = load float*, float** %3, align 8
  %97 = getelementptr inbounds float, float* %96, i64 11
  %98 = load float, float* %97, align 4
  %99 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 2
  %100 = load float, float* %99, align 4
  %101 = fmul float %98, %100
  %102 = fadd float %95, %101
  %103 = load float*, float** %3, align 8
  %104 = getelementptr inbounds float, float* %103, i64 15
  %105 = load float, float* %104, align 4
  %106 = fadd float %102, %105
  %107 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 3
  store float %106, float* %107, align 4
  %108 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %109 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %108, align 4
  ret { <2 x float>, <2 x float> } %109
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @_ZN4piko13matmultfloat4EPKU3AS4f6cvec3f(float addrspace(4)* %mvpMat, <2 x float> %v.coerce0, float %v.coerce1) #0 {
  %1 = alloca %struct.cvec4f, align 4
  %v = alloca %struct.cvec3f, align 4
  %2 = alloca { <2 x float>, float }, align 4
  %3 = alloca float addrspace(4)*, align 8
  %4 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i32 0, i32 0
  store <2 x float> %v.coerce0, <2 x float>* %4, align 4
  %5 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i32 0, i32 1
  store float %v.coerce1, float* %5, align 4
  %6 = bitcast %struct.cvec3f* %v to i8*
  %7 = bitcast { <2 x float>, float }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 12, i32 4, i1 false)
  store float addrspace(4)* %mvpMat, float addrspace(4)** %3, align 8
  %8 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %9 = getelementptr inbounds float, float addrspace(4)* %8, i64 0
  %10 = load float, float addrspace(4)* %9, align 4
  %11 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = fmul float %10, %12
  %14 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %15 = getelementptr inbounds float, float addrspace(4)* %14, i64 4
  %16 = load float, float addrspace(4)* %15, align 4
  %17 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = fmul float %16, %18
  %20 = fadd float %13, %19
  %21 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %22 = getelementptr inbounds float, float addrspace(4)* %21, i64 8
  %23 = load float, float addrspace(4)* %22, align 4
  %24 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 2
  %25 = load float, float* %24, align 4
  %26 = fmul float %23, %25
  %27 = fadd float %20, %26
  %28 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %29 = getelementptr inbounds float, float addrspace(4)* %28, i64 12
  %30 = load float, float addrspace(4)* %29, align 4
  %31 = fadd float %27, %30
  %32 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 0
  store float %31, float* %32, align 4
  %33 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %34 = getelementptr inbounds float, float addrspace(4)* %33, i64 1
  %35 = load float, float addrspace(4)* %34, align 4
  %36 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = fmul float %35, %37
  %39 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %40 = getelementptr inbounds float, float addrspace(4)* %39, i64 5
  %41 = load float, float addrspace(4)* %40, align 4
  %42 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 1
  %43 = load float, float* %42, align 4
  %44 = fmul float %41, %43
  %45 = fadd float %38, %44
  %46 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %47 = getelementptr inbounds float, float addrspace(4)* %46, i64 9
  %48 = load float, float addrspace(4)* %47, align 4
  %49 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 2
  %50 = load float, float* %49, align 4
  %51 = fmul float %48, %50
  %52 = fadd float %45, %51
  %53 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %54 = getelementptr inbounds float, float addrspace(4)* %53, i64 13
  %55 = load float, float addrspace(4)* %54, align 4
  %56 = fadd float %52, %55
  %57 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 1
  store float %56, float* %57, align 4
  %58 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %59 = getelementptr inbounds float, float addrspace(4)* %58, i64 2
  %60 = load float, float addrspace(4)* %59, align 4
  %61 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fmul float %60, %62
  %64 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %65 = getelementptr inbounds float, float addrspace(4)* %64, i64 6
  %66 = load float, float addrspace(4)* %65, align 4
  %67 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fmul float %66, %68
  %70 = fadd float %63, %69
  %71 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %72 = getelementptr inbounds float, float addrspace(4)* %71, i64 10
  %73 = load float, float addrspace(4)* %72, align 4
  %74 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 2
  %75 = load float, float* %74, align 4
  %76 = fmul float %73, %75
  %77 = fadd float %70, %76
  %78 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %79 = getelementptr inbounds float, float addrspace(4)* %78, i64 14
  %80 = load float, float addrspace(4)* %79, align 4
  %81 = fadd float %77, %80
  %82 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 2
  store float %81, float* %82, align 4
  %83 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %84 = getelementptr inbounds float, float addrspace(4)* %83, i64 3
  %85 = load float, float addrspace(4)* %84, align 4
  %86 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 0
  %87 = load float, float* %86, align 4
  %88 = fmul float %85, %87
  %89 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %90 = getelementptr inbounds float, float addrspace(4)* %89, i64 7
  %91 = load float, float addrspace(4)* %90, align 4
  %92 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 1
  %93 = load float, float* %92, align 4
  %94 = fmul float %91, %93
  %95 = fadd float %88, %94
  %96 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %97 = getelementptr inbounds float, float addrspace(4)* %96, i64 11
  %98 = load float, float addrspace(4)* %97, align 4
  %99 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %v, i32 0, i32 2
  %100 = load float, float* %99, align 4
  %101 = fmul float %98, %100
  %102 = fadd float %95, %101
  %103 = load float addrspace(4)*, float addrspace(4)** %3, align 8
  %104 = getelementptr inbounds float, float addrspace(4)* %103, i64 15
  %105 = load float, float addrspace(4)* %104, align 4
  %106 = fadd float %102, %105
  %107 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 3
  store float %106, float* %107, align 4
  %108 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %109 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %108, align 4
  ret { <2 x float>, <2 x float> } %109
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @_ZN4piko13matmultfloat4EPf6cvec4f(float* %mvpMat, <2 x float> %v.coerce0, <2 x float> %v.coerce1) #0 {
  %1 = alloca %struct.cvec4f, align 4
  %v = alloca %struct.cvec4f, align 4
  %2 = alloca float*, align 8
  %3 = bitcast %struct.cvec4f* %v to { <2 x float>, <2 x float> }*
  %4 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %3, i32 0, i32 0
  store <2 x float> %v.coerce0, <2 x float>* %4, align 4
  %5 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %3, i32 0, i32 1
  store <2 x float> %v.coerce1, <2 x float>* %5, align 4
  store float* %mvpMat, float** %2, align 8
  %6 = load float*, float** %2, align 8
  %7 = getelementptr inbounds float, float* %6, i64 0
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = fmul float %8, %10
  %12 = load float*, float** %2, align 8
  %13 = getelementptr inbounds float, float* %12, i64 4
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %14, %16
  %18 = fadd float %11, %17
  %19 = load float*, float** %2, align 8
  %20 = getelementptr inbounds float, float* %19, i64 8
  %21 = load float, float* %20, align 4
  %22 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 2
  %23 = load float, float* %22, align 4
  %24 = fmul float %21, %23
  %25 = fadd float %18, %24
  %26 = load float*, float** %2, align 8
  %27 = getelementptr inbounds float, float* %26, i64 12
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 3
  %30 = load float, float* %29, align 4
  %31 = fmul float %28, %30
  %32 = fadd float %25, %31
  %33 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 0
  store float %32, float* %33, align 4
  %34 = load float*, float** %2, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = fmul float %36, %38
  %40 = load float*, float** %2, align 8
  %41 = getelementptr inbounds float, float* %40, i64 5
  %42 = load float, float* %41, align 4
  %43 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fmul float %42, %44
  %46 = fadd float %39, %45
  %47 = load float*, float** %2, align 8
  %48 = getelementptr inbounds float, float* %47, i64 9
  %49 = load float, float* %48, align 4
  %50 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 2
  %51 = load float, float* %50, align 4
  %52 = fmul float %49, %51
  %53 = fadd float %46, %52
  %54 = load float*, float** %2, align 8
  %55 = getelementptr inbounds float, float* %54, i64 13
  %56 = load float, float* %55, align 4
  %57 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 3
  %58 = load float, float* %57, align 4
  %59 = fmul float %56, %58
  %60 = fadd float %53, %59
  %61 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 1
  store float %60, float* %61, align 4
  %62 = load float*, float** %2, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  %64 = load float, float* %63, align 4
  %65 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 0
  %66 = load float, float* %65, align 4
  %67 = fmul float %64, %66
  %68 = load float*, float** %2, align 8
  %69 = getelementptr inbounds float, float* %68, i64 6
  %70 = load float, float* %69, align 4
  %71 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 1
  %72 = load float, float* %71, align 4
  %73 = fmul float %70, %72
  %74 = fadd float %67, %73
  %75 = load float*, float** %2, align 8
  %76 = getelementptr inbounds float, float* %75, i64 10
  %77 = load float, float* %76, align 4
  %78 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 2
  %79 = load float, float* %78, align 4
  %80 = fmul float %77, %79
  %81 = fadd float %74, %80
  %82 = load float*, float** %2, align 8
  %83 = getelementptr inbounds float, float* %82, i64 14
  %84 = load float, float* %83, align 4
  %85 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 3
  %86 = load float, float* %85, align 4
  %87 = fmul float %84, %86
  %88 = fadd float %81, %87
  %89 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 2
  store float %88, float* %89, align 4
  %90 = load float*, float** %2, align 8
  %91 = getelementptr inbounds float, float* %90, i64 3
  %92 = load float, float* %91, align 4
  %93 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 0
  %94 = load float, float* %93, align 4
  %95 = fmul float %92, %94
  %96 = load float*, float** %2, align 8
  %97 = getelementptr inbounds float, float* %96, i64 7
  %98 = load float, float* %97, align 4
  %99 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 1
  %100 = load float, float* %99, align 4
  %101 = fmul float %98, %100
  %102 = fadd float %95, %101
  %103 = load float*, float** %2, align 8
  %104 = getelementptr inbounds float, float* %103, i64 11
  %105 = load float, float* %104, align 4
  %106 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 2
  %107 = load float, float* %106, align 4
  %108 = fmul float %105, %107
  %109 = fadd float %102, %108
  %110 = load float*, float** %2, align 8
  %111 = getelementptr inbounds float, float* %110, i64 15
  %112 = load float, float* %111, align 4
  %113 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 3
  %114 = load float, float* %113, align 4
  %115 = fmul float %112, %114
  %116 = fadd float %109, %115
  %117 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 3
  store float %116, float* %117, align 4
  %118 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %119 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %118, align 4
  ret { <2 x float>, <2 x float> } %119
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @_ZN4piko13matmultfloat4EPKU3AS4f6cvec4f(float addrspace(4)* %mvpMat, <2 x float> %v.coerce0, <2 x float> %v.coerce1) #0 {
  %1 = alloca %struct.cvec4f, align 4
  %v = alloca %struct.cvec4f, align 4
  %2 = alloca float addrspace(4)*, align 8
  %3 = bitcast %struct.cvec4f* %v to { <2 x float>, <2 x float> }*
  %4 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %3, i32 0, i32 0
  store <2 x float> %v.coerce0, <2 x float>* %4, align 4
  %5 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %3, i32 0, i32 1
  store <2 x float> %v.coerce1, <2 x float>* %5, align 4
  store float addrspace(4)* %mvpMat, float addrspace(4)** %2, align 8
  %6 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %7 = getelementptr inbounds float, float addrspace(4)* %6, i64 0
  %8 = load float, float addrspace(4)* %7, align 4
  %9 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = fmul float %8, %10
  %12 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %13 = getelementptr inbounds float, float addrspace(4)* %12, i64 4
  %14 = load float, float addrspace(4)* %13, align 4
  %15 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %14, %16
  %18 = fadd float %11, %17
  %19 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %20 = getelementptr inbounds float, float addrspace(4)* %19, i64 8
  %21 = load float, float addrspace(4)* %20, align 4
  %22 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 2
  %23 = load float, float* %22, align 4
  %24 = fmul float %21, %23
  %25 = fadd float %18, %24
  %26 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %27 = getelementptr inbounds float, float addrspace(4)* %26, i64 12
  %28 = load float, float addrspace(4)* %27, align 4
  %29 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 3
  %30 = load float, float* %29, align 4
  %31 = fmul float %28, %30
  %32 = fadd float %25, %31
  %33 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 0
  store float %32, float* %33, align 4
  %34 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %35 = getelementptr inbounds float, float addrspace(4)* %34, i64 1
  %36 = load float, float addrspace(4)* %35, align 4
  %37 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = fmul float %36, %38
  %40 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %41 = getelementptr inbounds float, float addrspace(4)* %40, i64 5
  %42 = load float, float addrspace(4)* %41, align 4
  %43 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fmul float %42, %44
  %46 = fadd float %39, %45
  %47 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %48 = getelementptr inbounds float, float addrspace(4)* %47, i64 9
  %49 = load float, float addrspace(4)* %48, align 4
  %50 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 2
  %51 = load float, float* %50, align 4
  %52 = fmul float %49, %51
  %53 = fadd float %46, %52
  %54 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %55 = getelementptr inbounds float, float addrspace(4)* %54, i64 13
  %56 = load float, float addrspace(4)* %55, align 4
  %57 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 3
  %58 = load float, float* %57, align 4
  %59 = fmul float %56, %58
  %60 = fadd float %53, %59
  %61 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 1
  store float %60, float* %61, align 4
  %62 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %63 = getelementptr inbounds float, float addrspace(4)* %62, i64 2
  %64 = load float, float addrspace(4)* %63, align 4
  %65 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 0
  %66 = load float, float* %65, align 4
  %67 = fmul float %64, %66
  %68 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %69 = getelementptr inbounds float, float addrspace(4)* %68, i64 6
  %70 = load float, float addrspace(4)* %69, align 4
  %71 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 1
  %72 = load float, float* %71, align 4
  %73 = fmul float %70, %72
  %74 = fadd float %67, %73
  %75 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %76 = getelementptr inbounds float, float addrspace(4)* %75, i64 10
  %77 = load float, float addrspace(4)* %76, align 4
  %78 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 2
  %79 = load float, float* %78, align 4
  %80 = fmul float %77, %79
  %81 = fadd float %74, %80
  %82 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %83 = getelementptr inbounds float, float addrspace(4)* %82, i64 14
  %84 = load float, float addrspace(4)* %83, align 4
  %85 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 3
  %86 = load float, float* %85, align 4
  %87 = fmul float %84, %86
  %88 = fadd float %81, %87
  %89 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 2
  store float %88, float* %89, align 4
  %90 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %91 = getelementptr inbounds float, float addrspace(4)* %90, i64 3
  %92 = load float, float addrspace(4)* %91, align 4
  %93 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 0
  %94 = load float, float* %93, align 4
  %95 = fmul float %92, %94
  %96 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %97 = getelementptr inbounds float, float addrspace(4)* %96, i64 7
  %98 = load float, float addrspace(4)* %97, align 4
  %99 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 1
  %100 = load float, float* %99, align 4
  %101 = fmul float %98, %100
  %102 = fadd float %95, %101
  %103 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %104 = getelementptr inbounds float, float addrspace(4)* %103, i64 11
  %105 = load float, float addrspace(4)* %104, align 4
  %106 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 2
  %107 = load float, float* %106, align 4
  %108 = fmul float %105, %107
  %109 = fadd float %102, %108
  %110 = load float addrspace(4)*, float addrspace(4)** %2, align 8
  %111 = getelementptr inbounds float, float addrspace(4)* %110, i64 15
  %112 = load float, float addrspace(4)* %111, align 4
  %113 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v, i32 0, i32 3
  %114 = load float, float* %113, align 4
  %115 = fmul float %112, %114
  %116 = fadd float %109, %115
  %117 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 3
  store float %116, float* %117, align 4
  %118 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %119 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %118, align 4
  ret { <2 x float>, <2 x float> } %119
}

; Function Attrs: uwtable
define float @_ZN4piko9magnitudeE6cvec4f(<2 x float> %vec.coerce0, <2 x float> %vec.coerce1) #1 {
  %vec = alloca %struct.cvec4f, align 4
  %sum = alloca float, align 4
  %1 = bitcast %struct.cvec4f* %vec to { <2 x float>, <2 x float> }*
  %2 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %1, i32 0, i32 0
  store <2 x float> %vec.coerce0, <2 x float>* %2, align 4
  %3 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %1, i32 0, i32 1
  store <2 x float> %vec.coerce1, <2 x float>* %3, align 4
  %4 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %vec, i32 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %vec, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = fmul float %5, %7
  %9 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %vec, i32 0, i32 1
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %vec, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = fmul float %10, %12
  %14 = fadd float %8, %13
  %15 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %vec, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %vec, i32 0, i32 2
  %18 = load float, float* %17, align 4
  %19 = fmul float %16, %18
  %20 = fadd float %14, %19
  %21 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %vec, i32 0, i32 3
  %22 = load float, float* %21, align 4
  %23 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %vec, i32 0, i32 3
  %24 = load float, float* %23, align 4
  %25 = fmul float %22, %24
  %26 = fadd float %20, %25
  store float %26, float* %sum, align 4
  %27 = load float, float* %sum, align 4
  %28 = call float @_ZN4piko5sqrtfEf(float %27)
  ret float %28
}

; Function Attrs: uwtable
define float @_ZN4piko8distanceE6cvec4fS0_(<2 x float> %a.coerce0, <2 x float> %a.coerce1, <2 x float> %b.coerce0, <2 x float> %b.coerce1) #1 {
  %a = alloca %struct.cvec4f, align 4
  %b = alloca %struct.cvec4f, align 4
  %c = alloca %struct.cvec4f, align 4
  %1 = alloca %struct.cvec4f, align 4
  %2 = bitcast %struct.cvec4f* %a to { <2 x float>, <2 x float> }*
  %3 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %2, i32 0, i32 0
  store <2 x float> %a.coerce0, <2 x float>* %3, align 4
  %4 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %2, i32 0, i32 1
  store <2 x float> %a.coerce1, <2 x float>* %4, align 4
  %5 = bitcast %struct.cvec4f* %b to { <2 x float>, <2 x float> }*
  %6 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %5, i32 0, i32 0
  store <2 x float> %b.coerce0, <2 x float>* %6, align 4
  %7 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %5, i32 0, i32 1
  store <2 x float> %b.coerce1, <2 x float>* %7, align 4
  %8 = call { <2 x float>, <2 x float> } @_ZmiRK6cvec4fS1_(%struct.cvec4f* dereferenceable(16) %a, %struct.cvec4f* dereferenceable(16) %b)
  %9 = bitcast %struct.cvec4f* %c to { <2 x float>, <2 x float> }*
  %10 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %9, i32 0, i32 0
  %11 = extractvalue { <2 x float>, <2 x float> } %8, 0
  store <2 x float> %11, <2 x float>* %10, align 4
  %12 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %9, i32 0, i32 1
  %13 = extractvalue { <2 x float>, <2 x float> } %8, 1
  store <2 x float> %13, <2 x float>* %12, align 4
  %14 = bitcast %struct.cvec4f* %1 to i8*
  %15 = bitcast %struct.cvec4f* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 4, i1 false)
  %16 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %17 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %16, i32 0, i32 0
  %18 = load <2 x float>, <2 x float>* %17, align 4
  %19 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %16, i32 0, i32 1
  %20 = load <2 x float>, <2 x float>* %19, align 4
  %21 = call float @_ZN4piko9magnitudeE6cvec4f(<2 x float> %18, <2 x float> %20)
  ret float %21
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZmiRK6cvec4fS1_(%struct.cvec4f* dereferenceable(16) %v1, %struct.cvec4f* dereferenceable(16) %v2) #3 comdat {
  %1 = alloca %struct.cvec4f, align 4
  %2 = alloca %struct.cvec4f*, align 8
  %3 = alloca %struct.cvec4f*, align 8
  store %struct.cvec4f* %v1, %struct.cvec4f** %2, align 8
  store %struct.cvec4f* %v2, %struct.cvec4f** %3, align 8
  %4 = load %struct.cvec4f*, %struct.cvec4f** %2, align 8
  %5 = load %struct.cvec4f*, %struct.cvec4f** %3, align 8
  %6 = call { <2 x float>, <2 x float> } @_Z6subvecRK6cvec4fS1_(%struct.cvec4f* dereferenceable(16) %4, %struct.cvec4f* dereferenceable(16) %5)
  %7 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %8 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %7, i32 0, i32 0
  %9 = extractvalue { <2 x float>, <2 x float> } %6, 0
  store <2 x float> %9, <2 x float>* %8, align 4
  %10 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %7, i32 0, i32 1
  %11 = extractvalue { <2 x float>, <2 x float> } %6, 1
  store <2 x float> %11, <2 x float>* %10, align 4
  %12 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %13 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %12, align 4
  ret { <2 x float>, <2 x float> } %13
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @_ZN4piko5crossE6cvec4fS0_(<2 x float> %v1.coerce0, <2 x float> %v1.coerce1, <2 x float> %v2.coerce0, <2 x float> %v2.coerce1) #0 {
  %1 = alloca %struct.cvec4f, align 4
  %v1 = alloca %struct.cvec4f, align 4
  %v2 = alloca %struct.cvec4f, align 4
  %2 = bitcast %struct.cvec4f* %v1 to { <2 x float>, <2 x float> }*
  %3 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %2, i32 0, i32 0
  store <2 x float> %v1.coerce0, <2 x float>* %3, align 4
  %4 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %2, i32 0, i32 1
  store <2 x float> %v1.coerce1, <2 x float>* %4, align 4
  %5 = bitcast %struct.cvec4f* %v2 to { <2 x float>, <2 x float> }*
  %6 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %5, i32 0, i32 0
  store <2 x float> %v2.coerce0, <2 x float>* %6, align 4
  %7 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %5, i32 0, i32 1
  store <2 x float> %v2.coerce1, <2 x float>* %7, align 4
  %8 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v1, i32 0, i32 1
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v2, i32 0, i32 2
  %11 = load float, float* %10, align 4
  %12 = fmul float %9, %11
  %13 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v1, i32 0, i32 2
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v2, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %14, %16
  %18 = fsub float %12, %17
  %19 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 0
  store float %18, float* %19, align 4
  %20 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v1, i32 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v2, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = fmul float %21, %23
  %25 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v1, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v2, i32 0, i32 2
  %28 = load float, float* %27, align 4
  %29 = fmul float %26, %28
  %30 = fsub float %24, %29
  %31 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 1
  store float %30, float* %31, align 4
  %32 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v1, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v2, i32 0, i32 1
  %35 = load float, float* %34, align 4
  %36 = fmul float %33, %35
  %37 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v1, i32 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %v2, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = fmul float %38, %40
  %42 = fsub float %36, %41
  %43 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 2
  store float %42, float* %43, align 4
  %44 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %45 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %44, align 4
  ret { <2 x float>, <2 x float> } %45
}

; Function Attrs: nounwind uwtable
define void @printInt(i32 %d) #0 {
  %1 = alloca i32, align 4
  store i32 %d, i32* %1, align 4
  call void asm sideeffect "    //begin printf\0A    .global .align 1 .b8 $$printf_str[4] = {37, 100, 10, 0};\0A    .local .align 8 .b8 \09__local_depot0[8];\0A    .reg .b64 \09%%SP;\0A    .reg .b64 \09%%SPL;\0A    .reg .s32 \09%%r<3>;\0A    .reg .s64 \09%%rd<4>;\0A    mov.u64 \09%%SPL, __local_depot0;\0A    cvta.local.u64 \09%%SP, %%SPL;\0A    add.u64 \09%%rd1, %%SP, 0;\0A    cvta.to.local.u64 \09%%rd2, %%rd1;\0A    cvta.global.u64 \09%%rd3, $$printf_str;\0A    st.local.u32 \09[%%rd2], %0;\0A    .reg .b32 temp_param_reg;\0A    .param .b64 param0;\0A    st.param.b64\09[param0+0], %%rd3;\0A    .param .b64 param1;\0A    st.param.b64\09[param1+0], %%rd1;\0A    .param .b32 retval0;\0A    call.uni (retval0), \0A    vprintf, \0A    (\0A    param0, \0A    param1\0A    );\0A    ld.param.b32\09%%r2, [retval0+0];\0A// end printf\0A", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @printFloat(float %f) #0 {
  %1 = alloca float, align 4
  store float %f, float* %1, align 4
  call void asm sideeffect "    //begin printf\0A    .global .align 1 .b8 $$printf_str[4] = {37, 102, 10, 0};\0A    .local .align 8 .b8 \09__local_depot0[8];\0A    .reg .b64 \09%%SP;\0A    .reg .b64 \09%%SPL;\0A    .reg .s32 \09%%r<3>;\0A    .reg .f32 \09%%f<2>;\0A    .reg .f64 \09%%fd<2>;\0A    .reg .s64 \09%%rd<4>;\0A    mov.u64 \09%%SPL, __local_depot0;\0A    cvta.local.u64 \09%%SP, %%SPL;\0A    add.u64 \09%%rd1, %%SP, 0;\0A    cvta.to.local.u64 \09%%rd2, %%rd1;\0A    cvta.global.u64 \09%%rd3, $$printf_str;\0A    cvt.f64.f32\09  %%fd0, %0;\0A    st.local.f64 \09[%%rd2], %%fd0;\0A    .reg .b32 temp_param_reg;\0A    .param .b64 param0;\0A    st.param.b64\09[param0+0], %%rd3;\0A    .param .b64 param1;\0A    st.param.b64\09[param1+0], %%rd1;\0A    .param .b32 retval0;\0A    call.uni (retval0), \0A    vprintf, \0A    (\0A    param0, \0A    param1\0A    );\0A    ld.param.b32\09%%r2, [retval0+0];\0A// end printf\0A", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !2
  ret void
}

; Function Attrs: uwtable
define void @_Z42__emitSpecializationAssignBinRasterStage__5PixelPvi(%struct.Pixel* byval align 8 %p, i8* %nextStg, i32 %outPortType) #1 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.Pixel, align 8
  store i8* %nextStg, i8** %1, align 8
  store i32 %outPortType, i32* %2, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.PikoScreen*
  %6 = bitcast %struct.Pixel* %3 to i8*
  %7 = bitcast %struct.Pixel* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 20, i32 4, i1 false)
  call void @_ZN10PikoScreen9assignBinE5Pixel(%class.PikoScreen* %5, %struct.Pixel* byval align 8 %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN10PikoScreen9assignBinE5Pixel(%class.PikoScreen* %this, %struct.Pixel* byval align 8 %p) #5 comdat align 2 {
  %1 = alloca %class.PikoScreen*, align 8
  %i = alloca i32, align 4
  store %class.PikoScreen* %this, %class.PikoScreen** %1, align 8
  %2 = load %class.PikoScreen*, %class.PikoScreen** %1, align 8
  %3 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %p, i32 0, i32 1
  %4 = getelementptr inbounds %struct.cvec2u, %struct.cvec2u* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %class.PikoScreen, %class.PikoScreen* %2, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = mul i32 %5, %7
  %9 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %p, i32 0, i32 1
  %10 = getelementptr inbounds %struct.cvec2u, %struct.cvec2u* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add i32 %8, %11
  store i32 %12, i32* %i, align 4
  %13 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %p, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %i, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %class.PikoScreen, %class.PikoScreen* %2, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 %16
  store i32 %14, i32* %19, align 4
  ret void
}

; Function Attrs: uwtable
define void @_Z40__emitSpecializationProcessRasterStage__5PixelPvi(%struct.Pixel* byval align 8 %p, i8* %nextStg, i32 %outPortType) #1 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.Pixel, align 8
  store i8* %nextStg, i8** %1, align 8
  store i32 %outPortType, i32* %2, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.PikoScreen*
  %6 = bitcast %struct.Pixel* %3 to i8*
  %7 = bitcast %struct.Pixel* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 20, i32 4, i1 false)
  call void @_ZN10PikoScreen7processE5Pixel(%class.PikoScreen* %5, %struct.Pixel* byval align 8 %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN10PikoScreen7processE5Pixel(%class.PikoScreen* %this, %struct.Pixel* byval align 8 %p) #5 comdat align 2 {
  %1 = alloca %class.PikoScreen*, align 8
  store %class.PikoScreen* %this, %class.PikoScreen** %1, align 8
  %2 = load %class.PikoScreen*, %class.PikoScreen** %1, align 8
  ret void
}

; Function Attrs: uwtable
define void @_ZN11RasterStage4emitE5Pixeli(%class.RasterStage* %this, %struct.Pixel* byval align 8 %p, i32 %outPortNum) #1 align 2 {
  %1 = alloca %class.RasterStage*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.Pixel, align 8
  store %class.RasterStage* %this, %class.RasterStage** %1, align 8
  store i32 %outPortNum, i32* %2, align 4
  %4 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  %5 = bitcast %struct.Pixel* %3 to i8*
  %6 = bitcast %struct.Pixel* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 20, i32 4, i1 false)
  %7 = bitcast %class.RasterStage* %4 to %class.Stage*
  %8 = getelementptr inbounds %class.Stage, %class.Stage* %7, i32 0, i32 12
  %9 = getelementptr inbounds [5 x %class.StageFloor*], [5 x %class.StageFloor*]* %8, i64 0, i64 0
  %10 = load %class.StageFloor*, %class.StageFloor** %9, align 8
  %11 = bitcast %class.StageFloor* %10 to i8*
  %12 = bitcast %class.RasterStage* %4 to %class.Stage*
  %13 = getelementptr inbounds %class.Stage, %class.Stage* %12, i32 0, i32 2
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %15 = load i32, i32* %14, align 8
  call void @_Z42__emitSpecializationAssignBinRasterStage__5PixelPvi(%struct.Pixel* byval align 8 %3, i8* %11, i32 %15)
  ret void
}

; Function Attrs: uwtable
define void @_Z48__emitSpecializationAssignBinVertexShaderStage__11raster_striPvi(%struct.raster_stri* byval align 8 %p, i8* %nextStg, i32 %outPortType) #1 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.raster_stri, align 8
  store i8* %nextStg, i8** %1, align 8
  store i32 %outPortType, i32* %2, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.RasterStage*
  %6 = bitcast %struct.raster_stri* %3 to i8*
  %7 = bitcast %struct.raster_stri* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 56, i32 4, i1 false)
  call void @_ZN11RasterStage9assignBinE11raster_stri(%class.RasterStage* %5, %struct.raster_stri* byval align 8 %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN11RasterStage9assignBinE11raster_stri(%class.RasterStage* %this, %struct.raster_stri* byval align 8 %p) #3 comdat align 2 {
  %1 = alloca %class.RasterStage*, align 8
  %bb = alloca %struct.boundingBoxFixPt, align 4
  %binsizebits = alloca i32, align 4
  %bx1 = alloca i32, align 4
  %bx2 = alloca i32, align 4
  %by1 = alloca i32, align 4
  %by2 = alloca i32, align 4
  %nBx = alloca i32, align 4
  %nBy = alloca i32, align 4
  %x1mx0 = alloca i32, align 4
  %x2mx1 = alloca i32, align 4
  %x0mx2 = alloca i32, align 4
  %y1my0 = alloca i32, align 4
  %y2my1 = alloca i32, align 4
  %y0my2 = alloca i32, align 4
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %step0x = alloca i32, align 4
  %step1x = alloca i32, align 4
  %step2x = alloca i32, align 4
  %step0y = alloca i32, align 4
  %step1y = alloca i32, align 4
  %step2y = alloca i32, align 4
  %TRoffset0 = alloca i32, align 4
  %TRoffset1 = alloca i32, align 4
  %TRoffset2 = alloca i32, align 4
  %rowsume0 = alloca i32, align 4
  %rowsume1 = alloca i32, align 4
  %rowsume2 = alloca i32, align 4
  %by = alloca i32, align 4
  %trivialRe0 = alloca i32, align 4
  %trivialRe1 = alloca i32, align 4
  %trivialRe2 = alloca i32, align 4
  %bx = alloca i32, align 4
  %2 = alloca %struct.raster_stri, align 8
  store %class.RasterStage* %this, %class.RasterStage** %1, align 8
  %3 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  call void @_Z28computePixelBoundingBoxFixPtR11raster_striR16boundingBoxFixPt(%struct.raster_stri* dereferenceable(56) %p, %struct.boundingBoxFixPt* dereferenceable(16) %bb)
  store i32 7, i32* %binsizebits, align 4
  %4 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %bb, i32 0, i32 1
  %5 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %binsizebits, align 4
  %8 = ashr i32 %6, %7
  store i32 %8, i32* %bx1, align 4
  %9 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %bb, i32 0, i32 0
  %10 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %binsizebits, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %bx2, align 4
  %14 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %bb, i32 0, i32 1
  %15 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %binsizebits, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %by1, align 4
  %19 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %bb, i32 0, i32 0
  %20 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %binsizebits, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %by2, align 4
  %24 = bitcast %class.RasterStage* %3 to %class.Stage*
  %25 = call i32 @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11getNumBinsXEv(%class.Stage* %24)
  store i32 %25, i32* %nBx, align 4
  %26 = bitcast %class.RasterStage* %3 to %class.Stage*
  %27 = call i32 @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11getNumBinsYEv(%class.Stage* %26)
  store i32 %27, i32* %nBy, align 4
  %28 = load i32, i32* %bx1, align 4
  %29 = call i32 @_ZN4piko4imaxEii(i32 0, i32 %28)
  store i32 %29, i32* %bx1, align 4
  %30 = load i32, i32* %by1, align 4
  %31 = call i32 @_ZN4piko4imaxEii(i32 0, i32 %30)
  store i32 %31, i32* %by1, align 4
  %32 = load i32, i32* %bx2, align 4
  %33 = load i32, i32* %nBx, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @_ZN4piko4iminEii(i32 %32, i32 %34)
  store i32 %35, i32* %bx2, align 4
  %36 = load i32, i32* %by2, align 4
  %37 = load i32, i32* %nBy, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @_ZN4piko4iminEii(i32 %36, i32 %38)
  store i32 %39, i32* %by2, align 4
  %40 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %x1mx0, align 4
  %45 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %46, %48
  store i32 %49, i32* %x2mx1, align 4
  %50 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %x0mx2, align 4
  %55 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %56, %58
  store i32 %59, i32* %y1my0, align 4
  %60 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %61, %63
  store i32 %64, i32* %y2my1, align 4
  %65 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %y0my2, align 4
  %70 = load i32, i32* %bx1, align 4
  %71 = load i32, i32* %binsizebits, align 4
  %72 = shl i32 %70, %71
  store i32 %72, i32* %startx, align 4
  %73 = load i32, i32* %by1, align 4
  %74 = load i32, i32* %binsizebits, align 4
  %75 = shl i32 %73, %74
  store i32 %75, i32* %starty, align 4
  %76 = load i32, i32* %y1my0, align 4
  %77 = load i32, i32* %binsizebits, align 4
  %78 = shl i32 %76, %77
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %step0x, align 4
  %80 = load i32, i32* %y2my1, align 4
  %81 = load i32, i32* %binsizebits, align 4
  %82 = shl i32 %80, %81
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %step1x, align 4
  %84 = load i32, i32* %y0my2, align 4
  %85 = load i32, i32* %binsizebits, align 4
  %86 = shl i32 %84, %85
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %step2x, align 4
  %88 = load i32, i32* %x1mx0, align 4
  %89 = load i32, i32* %binsizebits, align 4
  %90 = shl i32 %88, %89
  store i32 %90, i32* %step0y, align 4
  %91 = load i32, i32* %x2mx1, align 4
  %92 = load i32, i32* %binsizebits, align 4
  %93 = shl i32 %91, %92
  store i32 %93, i32* %step1y, align 4
  %94 = load i32, i32* %x0mx2, align 4
  %95 = load i32, i32* %binsizebits, align 4
  %96 = shl i32 %94, %95
  store i32 %96, i32* %step2y, align 4
  %97 = load i32, i32* %x1mx0, align 4
  %98 = load i32, i32* %y1my0, align 4
  %99 = load i32, i32* %step0x, align 4
  %100 = load i32, i32* %step0y, align 4
  %101 = call i32 @_Z22GetTrivialRejectOffsetiiii(i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %TRoffset0, align 4
  %102 = load i32, i32* %x2mx1, align 4
  %103 = load i32, i32* %y2my1, align 4
  %104 = load i32, i32* %step1x, align 4
  %105 = load i32, i32* %step1y, align 4
  %106 = call i32 @_Z22GetTrivialRejectOffsetiiii(i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %TRoffset1, align 4
  %107 = load i32, i32* %x0mx2, align 4
  %108 = load i32, i32* %y0my2, align 4
  %109 = load i32, i32* %step2x, align 4
  %110 = load i32, i32* %step2y, align 4
  %111 = call i32 @_Z22GetTrivialRejectOffsetiiii(i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %TRoffset2, align 4
  %112 = load i32, i32* %TRoffset0, align 4
  %113 = load i32, i32* %starty, align 4
  %114 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %113, %115
  %117 = load i32, i32* %x1mx0, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %112, %118
  %120 = load i32, i32* %startx, align 4
  %121 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %120, %122
  %124 = load i32, i32* %y1my0, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sub nsw i32 %119, %125
  store i32 %126, i32* %rowsume0, align 4
  %127 = load i32, i32* %TRoffset1, align 4
  %128 = load i32, i32* %starty, align 4
  %129 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %128, %130
  %132 = load i32, i32* %x2mx1, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %127, %133
  %135 = load i32, i32* %startx, align 4
  %136 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %135, %137
  %139 = load i32, i32* %y2my1, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sub nsw i32 %134, %140
  store i32 %141, i32* %rowsume1, align 4
  %142 = load i32, i32* %TRoffset2, align 4
  %143 = load i32, i32* %starty, align 4
  %144 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %143, %145
  %147 = load i32, i32* %x0mx2, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %142, %148
  %150 = load i32, i32* %startx, align 4
  %151 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %150, %152
  %154 = load i32, i32* %y0my2, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sub nsw i32 %149, %155
  store i32 %156, i32* %rowsume2, align 4
  %157 = load i32, i32* %by1, align 4
  store i32 %157, i32* %by, align 4
  br label %158

; <label>:158                                     ; preds = %210, %0
  %159 = load i32, i32* %by, align 4
  %160 = load i32, i32* %by2, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %213

; <label>:162                                     ; preds = %158
  %163 = load i32, i32* %rowsume0, align 4
  store i32 %163, i32* %trivialRe0, align 4
  %164 = load i32, i32* %rowsume1, align 4
  store i32 %164, i32* %trivialRe1, align 4
  %165 = load i32, i32* %rowsume2, align 4
  store i32 %165, i32* %trivialRe2, align 4
  %166 = load i32, i32* %bx1, align 4
  store i32 %166, i32* %bx, align 4
  br label %167

; <label>:167                                     ; preds = %197, %162
  %168 = load i32, i32* %bx, align 4
  %169 = load i32, i32* %bx2, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %200

; <label>:171                                     ; preds = %167
  %172 = load i32, i32* %trivialRe0, align 4
  %173 = load i32, i32* %trivialRe1, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %trivialRe2, align 4
  %176 = or i32 %174, %175
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %187

; <label>:178                                     ; preds = %171
  %179 = bitcast %class.RasterStage* %3 to %class.Stage*
  %180 = bitcast %struct.raster_stri* %2 to i8*
  %181 = bitcast %struct.raster_stri* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 56, i32 4, i1 false)
  %182 = load i32, i32* %by, align 4
  %183 = load i32, i32* %nBx, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load i32, i32* %bx, align 4
  %186 = add nsw i32 %184, %185
  call void @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11assignToBinES0_i(%class.Stage* %179, %struct.raster_stri* byval align 8 %2, i32 %186)
  br label %187

; <label>:187                                     ; preds = %178, %171
  %188 = load i32, i32* %step0x, align 4
  %189 = load i32, i32* %trivialRe0, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %trivialRe0, align 4
  %191 = load i32, i32* %step1x, align 4
  %192 = load i32, i32* %trivialRe1, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %trivialRe1, align 4
  %194 = load i32, i32* %step2x, align 4
  %195 = load i32, i32* %trivialRe2, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %trivialRe2, align 4
  br label %197

; <label>:197                                     ; preds = %187
  %198 = load i32, i32* %bx, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %bx, align 4
  br label %167

; <label>:200                                     ; preds = %167
  %201 = load i32, i32* %step0y, align 4
  %202 = load i32, i32* %rowsume0, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %rowsume0, align 4
  %204 = load i32, i32* %step1y, align 4
  %205 = load i32, i32* %rowsume1, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %rowsume1, align 4
  %207 = load i32, i32* %step2y, align 4
  %208 = load i32, i32* %rowsume2, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %rowsume2, align 4
  br label %210

; <label>:210                                     ; preds = %200
  %211 = load i32, i32* %by, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %by, align 4
  br label %158

; <label>:213                                     ; preds = %158
  ret void
}

; Function Attrs: uwtable
define void @_Z46__emitSpecializationProcessVertexShaderStage__11raster_striPvi(%struct.raster_stri* byval align 8 %p, i8* %nextStg, i32 %outPortType) #1 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.raster_stri, align 8
  store i8* %nextStg, i8** %1, align 8
  store i32 %outPortType, i32* %2, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.RasterStage*
  %6 = bitcast %struct.raster_stri* %3 to i8*
  %7 = bitcast %struct.raster_stri* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 56, i32 4, i1 false)
  call void @_ZN11RasterStage7processE11raster_stri(%class.RasterStage* %5, %struct.raster_stri* byval align 8 %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN11RasterStage7processE11raster_stri(%class.RasterStage* %this, %struct.raster_stri* byval align 8 %p) #3 comdat align 2 {
  %1 = alloca %class.RasterStage*, align 8
  %binID = alloca i32, align 4
  %bb = alloca %struct.boundingBoxFixPt, align 4
  %binBeg = alloca %struct.cvec2i, align 4
  %binEnd = alloca %struct.cvec2i, align 4
  %pixelBeg = alloca %struct.cvec2i, align 4
  %pixelEnd = alloca %struct.cvec2i, align 4
  %x1mx0 = alloca i32, align 4
  %x2mx1 = alloca i32, align 4
  %x0mx2 = alloca i32, align 4
  %y1my0 = alloca i32, align 4
  %y2my1 = alloca i32, align 4
  %y0my2 = alloca i32, align 4
  %barydenom = alloca i32, align 4
  %onebybary = alloca float, align 4
  %pixelBegCenter = alloca %struct.cvec2i, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %rowsume0 = alloca i32, align 4
  %rowsume1 = alloca i32, align 4
  %rowsume2 = alloca i32, align 4
  %vcol0 = alloca %struct.cvec3f, align 4
  %4 = alloca { <2 x float>, float }, align 8
  %vcol1 = alloca %struct.cvec3f, align 4
  %5 = alloca { <2 x float>, float }, align 8
  %vcol2 = alloca %struct.cvec3f, align 4
  %6 = alloca { <2 x float>, float }, align 8
  %step0x = alloca i32, align 4
  %step1x = alloca i32, align 4
  %step2x = alloca i32, align 4
  %step0y = alloca i32, align 4
  %step1y = alloca i32, align 4
  %step2y = alloca i32, align 4
  %bFullCov = alloca i8, align 1
  %TAoffset0 = alloca i32, align 4
  %TAoffset1 = alloca i32, align 4
  %TAoffset2 = alloca i32, align 4
  %trivialA0 = alloca i32, align 4
  %trivialA1 = alloca i32, align 4
  %trivialA2 = alloca i32, align 4
  %sampleMask = alloca i64, align 8
  %y = alloca i32, align 4
  %e0test = alloca i32, align 4
  %e1test = alloca i32, align 4
  %e2test = alloca i32, align 4
  %x = alloca i32, align 4
  %bitID = alloca i32, align 4
  %covCount = alloca i32, align 4
  %tempMask = alloca i64, align 8
  %rowsume11 = alloca i32, align 4
  %rowsume22 = alloca i32, align 4
  %z0mz2 = alloca float, align 4
  %z1mz2 = alloca float, align 4
  %dcol0mcol2 = alloca %struct.cvec3f, align 4
  %7 = alloca { <2 x float>, float }, align 8
  %dcol1mcol2 = alloca %struct.cvec3f, align 4
  %8 = alloca { <2 x float>, float }, align 8
  %fragID = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %e1test5 = alloca i32, align 4
  %e2test6 = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %_zbyw = alloca float, align 4
  %pixelID = alloca i32, align 4
  %remoteZi = alloca i32, align 4
  %_zbywi = alloca i32, align 4
  %depthintptr = alloca i32*, align 8
  %depthPassed = alloca i8, align 1
  %colorf = alloca %struct.cvec3f, align 4
  %pi = alloca %struct.Pixel, align 4
  %9 = alloca %struct.cvec3f, align 4
  %10 = alloca { <2 x float>, float }, align 4
  %11 = alloca %struct.Pixel, align 8
  store %class.RasterStage* %this, %class.RasterStage** %1, align 8
  %12 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  %13 = call i32 @_Z8getBinIDv()
  store i32 %13, i32* %binID, align 4
  call void @_Z28computePixelBoundingBoxFixPtR11raster_striR16boundingBoxFixPt(%struct.raster_stri* dereferenceable(56) %p, %struct.boundingBoxFixPt* dereferenceable(16) %bb)
  %14 = bitcast %class.RasterStage* %12 to %class.Stage*
  %15 = call i32 @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11getNumBinsXEv(%class.Stage* %14)
  %16 = load i32, i32* %binID, align 4
  call void @_Z16computeBinExtentR6cvec2iS0_iii(%struct.cvec2i* dereferenceable(8) %binBeg, %struct.cvec2i* dereferenceable(8) %binEnd, i32 128, i32 %15, i32 %16)
  %17 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %bb, i32 0, i32 1
  %18 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %bb, i32 0, i32 0
  call void @_Z12intersectBBiR6cvec2iS0_S0_S0_S0_S0_(%struct.cvec2i* dereferenceable(8) %17, %struct.cvec2i* dereferenceable(8) %18, %struct.cvec2i* dereferenceable(8) %binBeg, %struct.cvec2i* dereferenceable(8) %binEnd, %struct.cvec2i* dereferenceable(8) %pixelBeg, %struct.cvec2i* dereferenceable(8) %pixelEnd)
  %19 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %20, %22
  store i32 %23, i32* %x1mx0, align 4
  %24 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %25, %27
  store i32 %28, i32* %x2mx1, align 4
  %29 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %x0mx2, align 4
  %34 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %35, %37
  store i32 %38, i32* %y1my0, align 4
  %39 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %y2my1, align 4
  %44 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %45, %47
  store i32 %48, i32* %y0my2, align 4
  %49 = load i32, i32* %y0my2, align 4
  %50 = sub nsw i32 0, %49
  %51 = load i32, i32* %x1mx0, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %x0mx2, align 4
  %54 = load i32, i32* %y1my0, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %barydenom, align 4
  %57 = load i32, i32* %barydenom, align 4
  %58 = sitofp i32 %57 to float
  %59 = call float @_ZN4piko10rcp_approxEf(float %58)
  store float %59, float* %onebybary, align 4
  %60 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBeg, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %2, align 4
  %63 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBeg, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 8
  store i32 %65, i32* %3, align 4
  %66 = call i64 @_Z9gencvec2iRKiS0_(i32* dereferenceable(4) %2, i32* dereferenceable(4) %3)
  %67 = bitcast %struct.cvec2i* %pixelBegCenter to i64*
  store i64 %66, i64* %67, align 4
  %68 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBegCenter, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %69, %71
  %73 = load i32, i32* %x1mx0, align 4
  %74 = mul nsw i32 %72, %73
  %75 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBegCenter, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %76, %78
  %80 = load i32, i32* %y1my0, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sub nsw i32 %74, %81
  store i32 %82, i32* %rowsume0, align 4
  %83 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBegCenter, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %84, %86
  %88 = load i32, i32* %x2mx1, align 4
  %89 = mul nsw i32 %87, %88
  %90 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBegCenter, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %91, %93
  %95 = load i32, i32* %y2my1, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sub nsw i32 %89, %96
  store i32 %97, i32* %rowsume1, align 4
  %98 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBegCenter, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %99, %101
  %103 = load i32, i32* %x0mx2, align 4
  %104 = mul nsw i32 %102, %103
  %105 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBegCenter, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %106, %108
  %110 = load i32, i32* %y0my2, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sub nsw i32 %104, %111
  store i32 %112, i32* %rowsume2, align 4
  %113 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 10
  %114 = load i32, i32* %113, align 4
  %115 = call { <2 x float>, float } @_ZN4piko8fromABGREj(i32 %114)
  store { <2 x float>, float } %115, { <2 x float>, float }* %4, align 8
  %116 = bitcast { <2 x float>, float }* %4 to i8*
  %117 = bitcast %struct.cvec3f* %vcol0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %116, i64 12, i32 4, i1 false)
  %118 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 11
  %119 = load i32, i32* %118, align 8
  %120 = call { <2 x float>, float } @_ZN4piko8fromABGREj(i32 %119)
  store { <2 x float>, float } %120, { <2 x float>, float }* %5, align 8
  %121 = bitcast { <2 x float>, float }* %5 to i8*
  %122 = bitcast %struct.cvec3f* %vcol1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %121, i64 12, i32 4, i1 false)
  %123 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 12
  %124 = load i32, i32* %123, align 4
  %125 = call { <2 x float>, float } @_ZN4piko8fromABGREj(i32 %124)
  store { <2 x float>, float } %125, { <2 x float>, float }* %6, align 8
  %126 = bitcast { <2 x float>, float }* %6 to i8*
  %127 = bitcast %struct.cvec3f* %vcol2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %126, i64 12, i32 4, i1 false)
  %128 = load i32, i32* %y1my0, align 4
  %129 = shl i32 %128, 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %step0x, align 4
  %131 = load i32, i32* %y2my1, align 4
  %132 = shl i32 %131, 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %step1x, align 4
  %134 = load i32, i32* %y0my2, align 4
  %135 = shl i32 %134, 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %step2x, align 4
  %137 = load i32, i32* %x1mx0, align 4
  %138 = shl i32 %137, 4
  store i32 %138, i32* %step0y, align 4
  %139 = load i32, i32* %x2mx1, align 4
  %140 = shl i32 %139, 4
  store i32 %140, i32* %step1y, align 4
  %141 = load i32, i32* %x0mx2, align 4
  %142 = shl i32 %141, 4
  store i32 %142, i32* %step2y, align 4
  store i8 0, i8* %bFullCov, align 1
  %143 = load i32, i32* %x1mx0, align 4
  %144 = load i32, i32* %y1my0, align 4
  %145 = load i32, i32* %step0x, align 4
  %146 = load i32, i32* %step0y, align 4
  %147 = call i32 @_Z22GetTrivialAcceptOffsetiiii(i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %TAoffset0, align 4
  %148 = load i32, i32* %x2mx1, align 4
  %149 = load i32, i32* %y2my1, align 4
  %150 = load i32, i32* %step1x, align 4
  %151 = load i32, i32* %step1y, align 4
  %152 = call i32 @_Z22GetTrivialAcceptOffsetiiii(i32 %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %TAoffset1, align 4
  %153 = load i32, i32* %x0mx2, align 4
  %154 = load i32, i32* %y0my2, align 4
  %155 = load i32, i32* %step2x, align 4
  %156 = load i32, i32* %step2y, align 4
  %157 = call i32 @_Z22GetTrivialAcceptOffsetiiii(i32 %153, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %TAoffset2, align 4
  %158 = load i32, i32* %rowsume0, align 4
  %159 = load i32, i32* %TAoffset0, align 4
  %160 = shl i32 %159, 3
  %161 = add nsw i32 %158, %160
  store i32 %161, i32* %trivialA0, align 4
  %162 = load i32, i32* %rowsume1, align 4
  %163 = load i32, i32* %TAoffset1, align 4
  %164 = shl i32 %163, 3
  %165 = add nsw i32 %162, %164
  store i32 %165, i32* %trivialA1, align 4
  %166 = load i32, i32* %rowsume2, align 4
  %167 = load i32, i32* %TAoffset2, align 4
  %168 = shl i32 %167, 3
  %169 = add nsw i32 %166, %168
  store i32 %169, i32* %trivialA2, align 4
  %170 = load i32, i32* %trivialA0, align 4
  %171 = load i32, i32* %trivialA1, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %trivialA2, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %174, -2147483648
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %bFullCov, align 1
  %178 = load i8, i8* %bFullCov, align 1
  %179 = trunc i8 %178 to i1
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %0
  store i64 -1, i64* %sampleMask, align 8
  br label %251

; <label>:181                                     ; preds = %0
  store i64 0, i64* %sampleMask, align 8
  %182 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBeg, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %y, align 4
  br label %184

; <label>:184                                     ; preds = %247, %181
  %185 = load i32, i32* %y, align 4
  %186 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelEnd, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %250

; <label>:189                                     ; preds = %184
  %190 = load i32, i32* %rowsume0, align 4
  store i32 %190, i32* %e0test, align 4
  %191 = load i32, i32* %rowsume1, align 4
  store i32 %191, i32* %e1test, align 4
  %192 = load i32, i32* %rowsume2, align 4
  store i32 %192, i32* %e2test, align 4
  %193 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelBeg, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %x, align 4
  br label %195

; <label>:195                                     ; preds = %234, %189
  %196 = load i32, i32* %x, align 4
  %197 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %pixelEnd, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %237

; <label>:200                                     ; preds = %195
  %201 = load i32, i32* %e0test, align 4
  %202 = load i32, i32* %e1test, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* %e2test, align 4
  %205 = or i32 %203, %204
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %224

; <label>:207                                     ; preds = %200
  %208 = load i32, i32* %x, align 4
  %209 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %binBeg, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %208, %210
  %212 = load i32, i32* %y, align 4
  %213 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %binBeg, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %212, %214
  %216 = shl i32 %215, 3
  %217 = add nsw i32 %211, %216
  %218 = ashr i32 %217, 4
  store i32 %218, i32* %bitID, align 4
  %219 = load i32, i32* %bitID, align 4
  %220 = zext i32 %219 to i64
  %221 = shl i64 1, %220
  %222 = load i64, i64* %sampleMask, align 8
  %223 = or i64 %222, %221
  store i64 %223, i64* %sampleMask, align 8
  br label %224

; <label>:224                                     ; preds = %207, %200
  %225 = load i32, i32* %step0x, align 4
  %226 = load i32, i32* %e0test, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %e0test, align 4
  %228 = load i32, i32* %step1x, align 4
  %229 = load i32, i32* %e1test, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %e1test, align 4
  %231 = load i32, i32* %step2x, align 4
  %232 = load i32, i32* %e2test, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %e2test, align 4
  br label %234

; <label>:234                                     ; preds = %224
  %235 = load i32, i32* %x, align 4
  %236 = add nsw i32 %235, 16
  store i32 %236, i32* %x, align 4
  br label %195

; <label>:237                                     ; preds = %195
  %238 = load i32, i32* %step0y, align 4
  %239 = load i32, i32* %rowsume0, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %rowsume0, align 4
  %241 = load i32, i32* %step1y, align 4
  %242 = load i32, i32* %rowsume1, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %rowsume1, align 4
  %244 = load i32, i32* %step2y, align 4
  %245 = load i32, i32* %rowsume2, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %rowsume2, align 4
  br label %247

; <label>:247                                     ; preds = %237
  %248 = load i32, i32* %y, align 4
  %249 = add nsw i32 %248, 16
  store i32 %249, i32* %y, align 4
  br label %184

; <label>:250                                     ; preds = %184
  br label %251

; <label>:251                                     ; preds = %250, %180
  %252 = load i64, i64* %sampleMask, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %427

; <label>:254                                     ; preds = %251
  %255 = load i64, i64* %sampleMask, align 8
  %256 = call i32 @_ZN4piko6popcllEy(i64 %255)
  store i32 %256, i32* %covCount, align 4
  %257 = load i64, i64* %sampleMask, align 8
  store i64 %257, i64* %tempMask, align 8
  %258 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %binBeg, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 8
  %261 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = sub nsw i32 %260, %262
  %264 = load i32, i32* %x2mx1, align 4
  %265 = mul nsw i32 %263, %264
  %266 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %binBeg, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 8
  %269 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %268, %270
  %272 = load i32, i32* %y2my1, align 4
  %273 = mul nsw i32 %271, %272
  %274 = sub nsw i32 %265, %273
  store i32 %274, i32* %rowsume11, align 4
  %275 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %binBeg, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 8
  %278 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %277, %279
  %281 = load i32, i32* %x0mx2, align 4
  %282 = mul nsw i32 %280, %281
  %283 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %binBeg, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 8
  %286 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %285, %287
  %289 = load i32, i32* %y0my2, align 4
  %290 = mul nsw i32 %288, %289
  %291 = sub nsw i32 %282, %290
  store i32 %291, i32* %rowsume22, align 4
  %292 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 7
  %293 = load float, float* %292, align 8
  %294 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 9
  %295 = load float, float* %294, align 8
  %296 = fsub float %293, %295
  store float %296, float* %z0mz2, align 4
  %297 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 8
  %298 = load float, float* %297, align 4
  %299 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 9
  %300 = load float, float* %299, align 8
  %301 = fsub float %298, %300
  store float %301, float* %z1mz2, align 4
  %302 = call { <2 x float>, float } @_ZmiRK6cvec3fS1_(%struct.cvec3f* dereferenceable(12) %vcol0, %struct.cvec3f* dereferenceable(12) %vcol2)
  store { <2 x float>, float } %302, { <2 x float>, float }* %7, align 8
  %303 = bitcast { <2 x float>, float }* %7 to i8*
  %304 = bitcast %struct.cvec3f* %dcol0mcol2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %304, i8* %303, i64 12, i32 4, i1 false)
  %305 = call { <2 x float>, float } @_ZmiRK6cvec3fS1_(%struct.cvec3f* dereferenceable(12) %vcol1, %struct.cvec3f* dereferenceable(12) %vcol2)
  store { <2 x float>, float } %305, { <2 x float>, float }* %8, align 8
  %306 = bitcast { <2 x float>, float }* %8 to i8*
  %307 = bitcast %struct.cvec3f* %dcol1mcol2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %307, i8* %306, i64 12, i32 4, i1 false)
  store i32 0, i32* %fragID, align 4
  br label %308

; <label>:308                                     ; preds = %423, %254
  %309 = load i32, i32* %fragID, align 4
  %310 = load i32, i32* %covCount, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %426

; <label>:312                                     ; preds = %308
  call void @_Z19getSampleIdFromMaskRKyRiS1_(i64* dereferenceable(8) %tempMask, i32* dereferenceable(4) %x3, i32* dereferenceable(4) %y4)
  %313 = load i32, i32* %rowsume11, align 4
  %314 = load i32, i32* %x3, align 4
  %315 = load i32, i32* %step1x, align 4
  %316 = mul nsw i32 %314, %315
  %317 = add nsw i32 %313, %316
  %318 = load i32, i32* %y4, align 4
  %319 = load i32, i32* %step1y, align 4
  %320 = mul nsw i32 %318, %319
  %321 = add nsw i32 %317, %320
  store i32 %321, i32* %e1test5, align 4
  %322 = load i32, i32* %rowsume22, align 4
  %323 = load i32, i32* %x3, align 4
  %324 = load i32, i32* %step2x, align 4
  %325 = mul nsw i32 %323, %324
  %326 = add nsw i32 %322, %325
  %327 = load i32, i32* %y4, align 4
  %328 = load i32, i32* %step2y, align 4
  %329 = mul nsw i32 %327, %328
  %330 = add nsw i32 %326, %329
  store i32 %330, i32* %e2test6, align 4
  %331 = load i32, i32* %x3, align 4
  %332 = shl i32 %331, 4
  %333 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %binBeg, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %332, %334
  store i32 %335, i32* %x3, align 4
  %336 = load i32, i32* %y4, align 4
  %337 = shl i32 %336, 4
  %338 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %binBeg, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %337, %339
  store i32 %340, i32* %y4, align 4
  %341 = load i32, i32* %e1test5, align 4
  %342 = sitofp i32 %341 to float
  %343 = load float, float* %onebybary, align 4
  %344 = fmul float %342, %343
  store float %344, float* %alpha, align 4
  %345 = load i32, i32* %e2test6, align 4
  %346 = sitofp i32 %345 to float
  %347 = load float, float* %onebybary, align 4
  %348 = fmul float %346, %347
  store float %348, float* %beta, align 4
  %349 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %p, i32 0, i32 9
  %350 = call float @_Z21interpolate_alphabetaIfET_RKS0_S2_S2_RKfS4_(float* dereferenceable(4) %z0mz2, float* dereferenceable(4) %z1mz2, float* dereferenceable(4) %349, float* dereferenceable(4) %alpha, float* dereferenceable(4) %beta)
  store float %350, float* %_zbyw, align 4
  %351 = load i32, i32* %y4, align 4
  %352 = load i32, i32 addrspace(4)* getelementptr inbounds (%struct.ConstantState, %struct.ConstantState addrspace(4)* @constState, i32 0, i32 0), align 4
  %353 = load i32, i32* %x3, align 4
  %354 = call i32 @_ZN4piko4imadEiii(i32 %351, i32 %352, i32 %353)
  %355 = ashr i32 %354, 4
  store i32 %355, i32* %pixelID, align 4
  %356 = call i32 @float_as_int(float 1.000000e+00)
  store i32 %356, i32* %remoteZi, align 4
  %357 = load float, float* %_zbyw, align 4
  %358 = call i32 @float_as_int(float %357)
  store i32 %358, i32* %_zbywi, align 4
  %359 = load i32, i32* %pixelID, align 4
  %360 = sext i32 %359 to i64
  %361 = bitcast %class.RasterStage* %12 to %class.Stage*
  %362 = getelementptr inbounds %class.Stage, %class.Stage* %361, i32 0, i32 5
  %363 = load %struct.MutableState*, %struct.MutableState** %362, align 8
  %364 = getelementptr inbounds %struct.MutableState, %struct.MutableState* %363, i32 0, i32 0
  %365 = getelementptr inbounds [786432 x float], [786432 x float]* %364, i64 0, i64 %360
  %366 = bitcast float* %365 to i32*
  store i32* %366, i32** %depthintptr, align 8
  br label %367

; <label>:367                                     ; preds = %371, %312
  %368 = load i32*, i32** %depthintptr, align 8
  %369 = load i32, i32* %_zbywi, align 4
  %370 = call i32 @atomicMin(i32* %368, i32 %369)
  store i32 %370, i32* %remoteZi, align 4
  br label %371

; <label>:371                                     ; preds = %367
  %372 = load i32, i32* %remoteZi, align 4
  %373 = load i32, i32* %_zbywi, align 4
  %374 = icmp sgt i32 %372, %373
  br i1 %374, label %367, label %375

; <label>:375                                     ; preds = %371
  %376 = load i32, i32* %remoteZi, align 4
  %377 = load i32, i32* %_zbywi, align 4
  %378 = icmp sge i32 %376, %377
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %depthPassed, align 1
  %380 = load i8, i8* %depthPassed, align 1
  %381 = trunc i8 %380 to i1
  br i1 %381, label %382, label %418

; <label>:382                                     ; preds = %375
  %383 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %dcol0mcol2, i32 0, i32 0
  %384 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %dcol1mcol2, i32 0, i32 0
  %385 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vcol2, i32 0, i32 0
  %386 = call float @_Z21interpolate_alphabetaIfET_RKS0_S2_S2_RKfS4_(float* dereferenceable(4) %383, float* dereferenceable(4) %384, float* dereferenceable(4) %385, float* dereferenceable(4) %alpha, float* dereferenceable(4) %beta)
  %387 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %colorf, i32 0, i32 0
  store float %386, float* %387, align 4
  %388 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %dcol0mcol2, i32 0, i32 1
  %389 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %dcol1mcol2, i32 0, i32 1
  %390 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vcol2, i32 0, i32 1
  %391 = call float @_Z21interpolate_alphabetaIfET_RKS0_S2_S2_RKfS4_(float* dereferenceable(4) %388, float* dereferenceable(4) %389, float* dereferenceable(4) %390, float* dereferenceable(4) %alpha, float* dereferenceable(4) %beta)
  %392 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %colorf, i32 0, i32 1
  store float %391, float* %392, align 4
  %393 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %dcol0mcol2, i32 0, i32 2
  %394 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %dcol1mcol2, i32 0, i32 2
  %395 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %vcol2, i32 0, i32 2
  %396 = call float @_Z21interpolate_alphabetaIfET_RKS0_S2_S2_RKfS4_(float* dereferenceable(4) %393, float* dereferenceable(4) %394, float* dereferenceable(4) %395, float* dereferenceable(4) %alpha, float* dereferenceable(4) %beta)
  %397 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %colorf, i32 0, i32 2
  store float %396, float* %397, align 4
  call void @_ZN5PixelC2Ev(%struct.Pixel* %pi)
  %398 = load i32, i32* %x3, align 4
  %399 = ashr i32 %398, 4
  %400 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %pi, i32 0, i32 1
  %401 = getelementptr inbounds %struct.cvec2u, %struct.cvec2u* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 4
  %402 = load i32, i32* %y4, align 4
  %403 = ashr i32 %402, 4
  %404 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %pi, i32 0, i32 1
  %405 = getelementptr inbounds %struct.cvec2u, %struct.cvec2u* %404, i32 0, i32 1
  store i32 %403, i32* %405, align 4
  %406 = bitcast %struct.cvec3f* %9 to i8*
  %407 = bitcast %struct.cvec3f* %colorf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %406, i8* %407, i64 12, i32 4, i1 false)
  %408 = bitcast { <2 x float>, float }* %10 to i8*
  %409 = bitcast %struct.cvec3f* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %408, i8* %409, i64 12, i32 4, i1 false)
  %410 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %10, i32 0, i32 0
  %411 = load <2 x float>, <2 x float>* %410, align 4
  %412 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %10, i32 0, i32 1
  %413 = load float, float* %412, align 4
  %414 = call i32 @_ZN4piko6toABGRE6cvec3f(<2 x float> %411, float %413)
  %415 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %pi, i32 0, i32 2
  store i32 %414, i32* %415, align 4
  %416 = bitcast %struct.Pixel* %11 to i8*
  %417 = bitcast %struct.Pixel* %pi to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %416, i8* %417, i64 20, i32 4, i1 false)
  call void @_ZN11RasterStage4emitE5Pixeli(%class.RasterStage* %12, %struct.Pixel* byval align 8 %11, i32 0)
  br label %418

; <label>:418                                     ; preds = %382, %375
  %419 = load i64, i64* %tempMask, align 8
  %420 = sub i64 %419, 1
  %421 = load i64, i64* %tempMask, align 8
  %422 = and i64 %421, %420
  store i64 %422, i64* %tempMask, align 8
  br label %423

; <label>:423                                     ; preds = %418
  %424 = load i32, i32* %fragID, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %fragID, align 4
  br label %308

; <label>:426                                     ; preds = %308
  br label %427

; <label>:427                                     ; preds = %426, %251
  ret void
}

; Function Attrs: uwtable
define void @_ZN17VertexShaderStage4emitE11raster_strii(%class.VertexShaderStage* %this, %struct.raster_stri* byval align 8 %p, i32 %outPortNum) #1 align 2 {
  %1 = alloca %class.VertexShaderStage*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.raster_stri, align 8
  store %class.VertexShaderStage* %this, %class.VertexShaderStage** %1, align 8
  store i32 %outPortNum, i32* %2, align 4
  %4 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  %5 = bitcast %struct.raster_stri* %3 to i8*
  %6 = bitcast %struct.raster_stri* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 56, i32 4, i1 false)
  %7 = bitcast %class.VertexShaderStage* %4 to %class.Stage.1*
  %8 = getelementptr inbounds %class.Stage.1, %class.Stage.1* %7, i32 0, i32 12
  %9 = getelementptr inbounds [5 x %class.StageFloor*], [5 x %class.StageFloor*]* %8, i64 0, i64 0
  %10 = load %class.StageFloor*, %class.StageFloor** %9, align 8
  %11 = bitcast %class.StageFloor* %10 to i8*
  %12 = bitcast %class.VertexShaderStage* %4 to %class.Stage.1*
  %13 = getelementptr inbounds %class.Stage.1, %class.Stage.1* %12, i32 0, i32 2
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %15 = load i32, i32* %14, align 8
  call void @_Z48__emitSpecializationAssignBinVertexShaderStage__11raster_striPvi(%struct.raster_stri* byval align 8 %3, i8* %11, i32 %15)
  ret void
}

; Function Attrs: uwtable
define void @kernel0(%class.PikoArray* %input, %class.VertexShaderStage* %d_vertexShader) #1 {
  %1 = alloca %class.PikoArray*, align 8
  %2 = alloca %class.VertexShaderStage*, align 8
  %gid = alloca i32, align 4
  %3 = alloca %struct.raster_wtri, align 8
  store %class.PikoArray* %input, %class.PikoArray** %1, align 8
  store %class.VertexShaderStage* %d_vertexShader, %class.VertexShaderStage** %2, align 8
  %4 = call i32 @_Z6getGIDv()
  store i32 %4, i32* %gid, align 4
  %5 = load i32, i32* %gid, align 4
  %6 = load %class.PikoArray*, %class.PikoArray** %1, align 8
  %7 = bitcast %class.PikoArray* %6 to %class.PikoDataStructure*
  %8 = call i32 @_ZN17PikoDataStructureI11raster_wtriE11getNumPrimsEv(%class.PikoDataStructure* %7)
  %9 = icmp sge i32 %5, %8
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %18

; <label>:11                                      ; preds = %0
  %12 = load %class.VertexShaderStage*, %class.VertexShaderStage** %2, align 8
  %13 = load %class.PikoArray*, %class.PikoArray** %1, align 8
  %14 = load i32, i32* %gid, align 4
  %15 = call dereferenceable(60) %struct.raster_wtri* @_ZN9PikoArrayI11raster_wtriEixEj(%class.PikoArray* %13, i32 %14)
  %16 = bitcast %struct.raster_wtri* %3 to i8*
  %17 = bitcast %struct.raster_wtri* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 60, i32 4, i1 false)
  call void @_ZN17VertexShaderStage9assignBinE11raster_wtri(%class.VertexShaderStage* %12, %struct.raster_wtri* byval align 8 %3)
  br label %18

; <label>:18                                      ; preds = %11, %10
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32 @_Z6getGIDv() #3 comdat {
  %1 = call i32 @blockDim_x()
  %2 = call i32 @blockIdx_x()
  %3 = mul nsw i32 %1, %2
  %4 = call i32 @threadIdx_x()
  %5 = add nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN17PikoDataStructureI11raster_wtriE11getNumPrimsEv(%class.PikoDataStructure* %this) #0 comdat align 2 {
  %1 = alloca %class.PikoDataStructure*, align 8
  store %class.PikoDataStructure* %this, %class.PikoDataStructure** %1, align 8
  %2 = load %class.PikoDataStructure*, %class.PikoDataStructure** %1, align 8
  %3 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %2, i32 0, i32 3
  %4 = load i32, i32* %3, align 8
  ret i32 %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN17VertexShaderStage9assignBinE11raster_wtri(%class.VertexShaderStage* %this, %struct.raster_wtri* byval align 8 %p) #3 comdat align 2 {
  %1 = alloca %class.VertexShaderStage*, align 8
  %bi = alloca i32, align 4
  %2 = alloca %struct.raster_wtri, align 8
  store %class.VertexShaderStage* %this, %class.VertexShaderStage** %1, align 8
  %3 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  %4 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = sdiv i32 %5, 512
  %7 = bitcast %class.VertexShaderStage* %3 to %class.Stage.1*
  %8 = call i32 @_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE10getNumBinsEv(%class.Stage.1* %7)
  %9 = srem i32 %6, %8
  store i32 %9, i32* %bi, align 4
  %10 = bitcast %class.VertexShaderStage* %3 to %class.Stage.1*
  %11 = bitcast %struct.raster_wtri* %2 to i8*
  %12 = bitcast %struct.raster_wtri* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 60, i32 4, i1 false)
  %13 = load i32, i32* %bi, align 4
  call void @_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE11assignToBinES0_i(%class.Stage.1* %10, %struct.raster_wtri* byval align 8 %2, i32 %13)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(60) %struct.raster_wtri* @_ZN9PikoArrayI11raster_wtriEixEj(%class.PikoArray* %this, i32 %pos) #0 comdat align 2 {
  %1 = alloca %class.PikoArray*, align 8
  %2 = alloca i32, align 4
  store %class.PikoArray* %this, %class.PikoArray** %1, align 8
  store i32 %pos, i32* %2, align 4
  %3 = load %class.PikoArray*, %class.PikoArray** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = bitcast %class.PikoArray* %3 to %class.PikoDataStructure*
  %7 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %6, i32 0, i32 0
  %8 = load %struct.raster_wtri*, %struct.raster_wtri** %7, align 8
  %9 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %8, i64 %5
  ret %struct.raster_wtri* %9
}

; Function Attrs: uwtable
define void @kernel1(%class.VertexShaderStage* %d_vertexShader) #1 {
  %1 = alloca %class.VertexShaderStage*, align 8
  %gid = alloca i32, align 4
  store %class.VertexShaderStage* %d_vertexShader, %class.VertexShaderStage** %1, align 8
  %2 = call i32 @_Z6getGIDv()
  store i32 %2, i32* %gid, align 4
  %3 = load i32, i32* %gid, align 4
  %4 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  %5 = bitcast %class.VertexShaderStage* %4 to %class.Stage.1*
  %6 = call i32 @_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE10getNumBinsEv(%class.Stage.1* %5)
  %7 = icmp sge i32 %3, %6
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %12

; <label>:9                                       ; preds = %0
  %10 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  %11 = load i32, i32* %gid, align 4
  call void @_ZN17VertexShaderStage8scheduleEi(%class.VertexShaderStage* %10, i32 %11)
  br label %12

; <label>:12                                      ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE10getNumBinsEv(%class.Stage.1* %this) #0 comdat align 2 {
  %1 = alloca %class.Stage.1*, align 8
  store %class.Stage.1* %this, %class.Stage.1** %1, align 8
  %2 = load %class.Stage.1*, %class.Stage.1** %1, align 8
  %3 = getelementptr inbounds %class.Stage.1, %class.Stage.1* %2, i32 0, i32 6
  %4 = load i32, i32* %3, align 8
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN17VertexShaderStage8scheduleEi(%class.VertexShaderStage* %this, i32 %binID) #5 comdat align 2 {
  %1 = alloca %class.VertexShaderStage*, align 8
  %2 = alloca i32, align 4
  store %class.VertexShaderStage* %this, %class.VertexShaderStage** %1, align 8
  store i32 %binID, i32* %2, align 4
  %3 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  call void @_Z15specifySchedule14SchedulePolicyi(i32 0, i32 0)
  ret void
}

; Function Attrs: uwtable
define void @kernel2(%class.VertexShaderStage* %d_vertexShader) #1 {
  %1 = alloca %class.VertexShaderStage*, align 8
  %binID = alloca i32, align 4
  %bin = alloca %class.Bin.3*, align 8
  %numPrims = alloca i32, align 4
  %tid = alloca i32, align 4
  %numThreads = alloca i32, align 4
  %i = alloca i32, align 4
  %prim = alloca %struct.raster_wtri, align 4
  %2 = alloca %struct.raster_wtri, align 8
  store %class.VertexShaderStage* %d_vertexShader, %class.VertexShaderStage** %1, align 8
  store i32 -1, i32* @overrideBinID, align 4
  %3 = call i32 @_Z8getBinIDv()
  store i32 %3, i32* %binID, align 4
  %4 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  %5 = bitcast %class.VertexShaderStage* %4 to %class.Stage.1*
  %6 = load i32, i32* %binID, align 4
  %7 = call %class.Bin.3* @_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE6getBinEi(%class.Stage.1* %5, i32 %6)
  store %class.Bin.3* %7, %class.Bin.3** %bin, align 8
  %8 = load %class.Bin.3*, %class.Bin.3** %bin, align 8
  %9 = bitcast %class.Bin.3* %8 to %class.PikoDataStructure*
  %10 = call i32 @_ZN17PikoDataStructureI11raster_wtriE11getNumPrimsEv(%class.PikoDataStructure* %9)
  store i32 %10, i32* %numPrims, align 4
  %11 = call i32 @_Z6getTIDv()
  store i32 %11, i32* %tid, align 4
  %12 = call i32 @_Z13getNumThreadsv()
  store i32 %12, i32* %numThreads, align 4
  %13 = call i32 @_Z6getGIDv()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %0
  %16 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  %17 = bitcast %class.VertexShaderStage* %16 to %class.Stage.1*
  %18 = getelementptr inbounds %class.Stage.1, %class.Stage.1* %17, i32 0, i32 4
  store i8 0, i8* %18, align 1
  br label %19

; <label>:19                                      ; preds = %15, %0
  %20 = load i32, i32* %tid, align 4
  store i32 %20, i32* %i, align 4
  br label %21

; <label>:21                                      ; preds = %33, %19
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %numPrims, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

; <label>:25                                      ; preds = %21
  %26 = load %class.Bin.3*, %class.Bin.3** %bin, align 8
  call void @_ZN3BinI11raster_wtriE9fetchPrimEv(%struct.raster_wtri* sret %prim, %class.Bin.3* %26)
  %27 = load i32, i32* %i, align 4
  %28 = bitcast %struct.raster_wtri* %prim to %struct.Primitive*
  %29 = getelementptr inbounds %struct.Primitive, %struct.Primitive* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  %31 = bitcast %struct.raster_wtri* %2 to i8*
  %32 = bitcast %struct.raster_wtri* %prim to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 60, i32 4, i1 false)
  call void @_ZN17VertexShaderStage7processE11raster_wtri(%class.VertexShaderStage* %30, %struct.raster_wtri* byval align 8 %2)
  br label %33

; <label>:33                                      ; preds = %25
  %34 = load i32, i32* %numThreads, align 4
  %35 = load i32, i32* %i, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %i, align 4
  br label %21

; <label>:37                                      ; preds = %21
  call void @_ZN4piko14BinSynchronizeEv()
  %38 = load i32, i32* %tid, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %37
  %41 = load %class.Bin.3*, %class.Bin.3** %bin, align 8
  %42 = bitcast %class.Bin.3* %41 to %class.PikoDataStructure*
  %43 = load i32, i32* %numPrims, align 4
  %44 = sub nsw i32 0, %43
  call void @_ZN17PikoDataStructureI11raster_wtriE15updatePrimCountEi(%class.PikoDataStructure* %42, i32 %44)
  br label %45

; <label>:45                                      ; preds = %40, %37
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32 @_Z8getBinIDv() #3 comdat {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @overrideBinID, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = call i32 @blockIdx_x()
  store i32 %5, i32* %1, align 4
  br label %8

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @overrideBinID, align 4
  store i32 %7, i32* %1, align 4
  br label %8

; <label>:8                                       ; preds = %6, %4
  %9 = load i32, i32* %1, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Bin.3* @_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE6getBinEi(%class.Stage.1* %this, i32 %binID) #0 comdat align 2 {
  %1 = alloca %class.Stage.1*, align 8
  %2 = alloca i32, align 4
  store %class.Stage.1* %this, %class.Stage.1** %1, align 8
  store i32 %binID, i32* %2, align 4
  %3 = load %class.Stage.1*, %class.Stage.1** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %class.Stage.1, %class.Stage.1* %3, i32 0, i32 10
  %7 = load %class.Bin.3*, %class.Bin.3** %6, align 8
  %8 = getelementptr inbounds %class.Bin.3, %class.Bin.3* %7, i64 %5
  ret %class.Bin.3* %8
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32 @_Z6getTIDv() #3 comdat {
  %1 = call i32 @threadIdx_x()
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32 @_Z13getNumThreadsv() #3 comdat {
  %1 = call i32 @blockDim_x()
  ret i32 %1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN3BinI11raster_wtriE9fetchPrimEv(%struct.raster_wtri* noalias sret %agg.result, %class.Bin.3* %this) #1 comdat align 2 {
  %1 = alloca %class.Bin.3*, align 8
  %pos = alloca i32, align 4
  store %class.Bin.3* %this, %class.Bin.3** %1, align 8
  %2 = load %class.Bin.3*, %class.Bin.3** %1, align 8
  %3 = bitcast %class.Bin.3* %2 to %class.PikoDataStructure*
  %4 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %3, i32 0, i32 1
  %5 = call i32 @atomicIncrement(i32* %4)
  %6 = bitcast %class.Bin.3* %2 to %class.PikoDataStructure*
  %7 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = srem i32 %5, %8
  store i32 %9, i32* %pos, align 4
  %10 = load i32, i32* %pos, align 4
  %11 = sext i32 %10 to i64
  %12 = bitcast %class.Bin.3* %2 to %class.PikoDataStructure*
  %13 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %12, i32 0, i32 0
  %14 = load %struct.raster_wtri*, %struct.raster_wtri** %13, align 8
  %15 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %14, i64 %11
  %16 = bitcast %struct.raster_wtri* %agg.result to i8*
  %17 = bitcast %struct.raster_wtri* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 60, i32 4, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN17VertexShaderStage7processE11raster_wtri(%class.VertexShaderStage* %this, %struct.raster_wtri* byval align 8 %p) #3 comdat align 2 {
  %1 = alloca %class.VertexShaderStage*, align 8
  %W = alloca float, align 4
  %H = alloca float, align 4
  %ps = alloca %struct.raster_stri, align 4
  %maxZ = alloca float, align 4
  %minZ = alloca float, align 4
  %bb = alloca %struct.boundingBoxFixPt, align 4
  %2 = alloca %struct.raster_stri, align 8
  store %class.VertexShaderStage* %this, %class.VertexShaderStage** %1, align 8
  %3 = load %class.VertexShaderStage*, %class.VertexShaderStage** %1, align 8
  %4 = load i32, i32 addrspace(4)* getelementptr inbounds (%struct.ConstantState, %struct.ConstantState addrspace(4)* @constState, i32 0, i32 0), align 4
  %5 = sitofp i32 %4 to float
  store float %5, float* %W, align 4
  %6 = load i32, i32 addrspace(4)* getelementptr inbounds (%struct.ConstantState, %struct.ConstantState addrspace(4)* @constState, i32 0, i32 1), align 4
  %7 = sitofp i32 %6 to float
  store float %7, float* %H, align 4
  call void @_ZN11raster_striC2Ev(%struct.raster_stri* %ps)
  %8 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 2
  %9 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = fmul float %10, 1.600000e+01
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 2
  %15 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %16, 1.600000e+01
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 2
  %21 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %20, i32 0, i32 2
  %22 = load float, float* %21, align 4
  %23 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 7
  store float %22, float* %23, align 4
  %24 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 3
  %25 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %24, i32 0, i32 0
  %26 = load float, float* %25, align 8
  %27 = fmul float %26, 1.600000e+01
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 3
  %31 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = fmul float %32, 1.600000e+01
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 3
  %37 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %36, i32 0, i32 2
  %38 = load float, float* %37, align 8
  %39 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 8
  store float %38, float* %39, align 4
  %40 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 4
  %41 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %40, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = fmul float %42, 1.600000e+01
  %44 = fptosi float %43 to i32
  %45 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 4
  %47 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fmul float %48, 1.600000e+01
  %50 = fptosi float %49 to i32
  %51 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 6
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 4
  %53 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %52, i32 0, i32 2
  %54 = load float, float* %53, align 4
  %55 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 9
  store float %54, float* %55, align 4
  %56 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 10
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 11
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %p, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %ps, i32 0, i32 12
  store i32 %63, i32* %64, align 4
  %65 = call zeroext i1 @_Z18isFrontFacingFixPtR11raster_stri(%struct.raster_stri* dereferenceable(56) %ps)
  br i1 %65, label %66, label %82

; <label>:66                                      ; preds = %0
  %67 = load float, float* %minZ, align 4
  %68 = load float, float* %maxZ, align 4
  %69 = load float, float* %W, align 4
  %70 = fmul float %69, 1.600000e+01
  %71 = fptosi float %70 to i32
  %72 = load float, float* %H, align 4
  %73 = fmul float %72, 1.600000e+01
  %74 = fptosi float %73 to i32
  %75 = call zeroext i1 @_Z20isInsideFrustumFixPtR11raster_striffii(%struct.raster_stri* dereferenceable(56) %ps, float %67, float %68, i32 %71, i32 %74)
  br i1 %75, label %76, label %82

; <label>:76                                      ; preds = %66
  call void @_Z23computeBoundingBoxFixPtR11raster_striR16boundingBoxFixPt(%struct.raster_stri* dereferenceable(56) %ps, %struct.boundingBoxFixPt* dereferenceable(16) %bb)
  %77 = call zeroext i1 @_Z18isBBBetweenSamplesR16boundingBoxFixPt(%struct.boundingBoxFixPt* dereferenceable(16) %bb)
  br i1 %77, label %81, label %78

; <label>:78                                      ; preds = %76
  %79 = bitcast %struct.raster_stri* %2 to i8*
  %80 = bitcast %struct.raster_stri* %ps to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 56, i32 4, i1 false)
  call void @_ZN17VertexShaderStage4emitE11raster_strii(%class.VertexShaderStage* %3, %struct.raster_stri* byval align 8 %2, i32 0)
  br label %81

; <label>:81                                      ; preds = %78, %76
  br label %82

; <label>:82                                      ; preds = %81, %66, %0
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN4piko14BinSynchronizeEv() #3 comdat {
  call void @__syncthreads()
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN17PikoDataStructureI11raster_wtriE15updatePrimCountEi(%class.PikoDataStructure* %this, i32 %delta) #0 comdat align 2 {
  %1 = alloca %class.PikoDataStructure*, align 8
  %2 = alloca i32, align 4
  store %class.PikoDataStructure* %this, %class.PikoDataStructure** %1, align 8
  store i32 %delta, i32* %2, align 4
  %3 = load %class.PikoDataStructure*, %class.PikoDataStructure** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %3, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, %4
  store i32 %7, i32* %5, align 8
  ret void
}

; Function Attrs: uwtable
define void @kernel3(%class.RasterStage* %d_raster) #1 {
  %1 = alloca %class.RasterStage*, align 8
  %gid = alloca i32, align 4
  store %class.RasterStage* %d_raster, %class.RasterStage** %1, align 8
  %2 = call i32 @_Z6getGIDv()
  store i32 %2, i32* %gid, align 4
  %3 = load i32, i32* %gid, align 4
  %4 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  %5 = bitcast %class.RasterStage* %4 to %class.Stage*
  %6 = call i32 @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE10getNumBinsEv(%class.Stage* %5)
  %7 = icmp sge i32 %3, %6
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %12

; <label>:9                                       ; preds = %0
  %10 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  %11 = load i32, i32* %gid, align 4
  call void @_ZN11RasterStage8scheduleEi(%class.RasterStage* %10, i32 %11)
  br label %12

; <label>:12                                      ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE10getNumBinsEv(%class.Stage* %this) #0 comdat align 2 {
  %1 = alloca %class.Stage*, align 8
  store %class.Stage* %this, %class.Stage** %1, align 8
  %2 = load %class.Stage*, %class.Stage** %1, align 8
  %3 = getelementptr inbounds %class.Stage, %class.Stage* %2, i32 0, i32 6
  %4 = load i32, i32* %3, align 8
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN11RasterStage8scheduleEi(%class.RasterStage* %this, i32 %binID) #5 comdat align 2 {
  %1 = alloca %class.RasterStage*, align 8
  %2 = alloca i32, align 4
  store %class.RasterStage* %this, %class.RasterStage** %1, align 8
  store i32 %binID, i32* %2, align 4
  %3 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  call void @_Z15specifySchedule14SchedulePolicyi(i32 0, i32 0)
  ret void
}

; Function Attrs: uwtable
define void @kernel4(%class.RasterStage* %d_raster) #1 {
  %1 = alloca %class.RasterStage*, align 8
  %binID = alloca i32, align 4
  %bin = alloca %class.Bin*, align 8
  %numPrims = alloca i32, align 4
  %tid = alloca i32, align 4
  %numThreads = alloca i32, align 4
  %i = alloca i32, align 4
  %prim = alloca %struct.raster_stri, align 4
  %2 = alloca %struct.raster_stri, align 8
  store %class.RasterStage* %d_raster, %class.RasterStage** %1, align 8
  store i32 -1, i32* @overrideBinID, align 4
  %3 = call i32 @_Z8getBinIDv()
  store i32 %3, i32* %binID, align 4
  %4 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  %5 = bitcast %class.RasterStage* %4 to %class.Stage*
  %6 = load i32, i32* %binID, align 4
  %7 = call %class.Bin* @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE6getBinEi(%class.Stage* %5, i32 %6)
  store %class.Bin* %7, %class.Bin** %bin, align 8
  %8 = load %class.Bin*, %class.Bin** %bin, align 8
  %9 = bitcast %class.Bin* %8 to %class.PikoDataStructure.4*
  %10 = call i32 @_ZN17PikoDataStructureI11raster_striE11getNumPrimsEv(%class.PikoDataStructure.4* %9)
  store i32 %10, i32* %numPrims, align 4
  %11 = call i32 @_Z6getTIDv()
  store i32 %11, i32* %tid, align 4
  %12 = call i32 @_Z13getNumThreadsv()
  store i32 %12, i32* %numThreads, align 4
  %13 = call i32 @_Z6getGIDv()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %0
  %16 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  %17 = bitcast %class.RasterStage* %16 to %class.Stage*
  %18 = getelementptr inbounds %class.Stage, %class.Stage* %17, i32 0, i32 4
  store i8 0, i8* %18, align 1
  br label %19

; <label>:19                                      ; preds = %15, %0
  %20 = load i32, i32* %tid, align 4
  store i32 %20, i32* %i, align 4
  br label %21

; <label>:21                                      ; preds = %33, %19
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %numPrims, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

; <label>:25                                      ; preds = %21
  %26 = load %class.Bin*, %class.Bin** %bin, align 8
  call void @_ZN3BinI11raster_striE9fetchPrimEv(%struct.raster_stri* sret %prim, %class.Bin* %26)
  %27 = load i32, i32* %i, align 4
  %28 = bitcast %struct.raster_stri* %prim to %struct.Primitive*
  %29 = getelementptr inbounds %struct.Primitive, %struct.Primitive* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %class.RasterStage*, %class.RasterStage** %1, align 8
  %31 = bitcast %struct.raster_stri* %2 to i8*
  %32 = bitcast %struct.raster_stri* %prim to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 56, i32 4, i1 false)
  call void @_ZN11RasterStage7processE11raster_stri(%class.RasterStage* %30, %struct.raster_stri* byval align 8 %2)
  br label %33

; <label>:33                                      ; preds = %25
  %34 = load i32, i32* %numThreads, align 4
  %35 = load i32, i32* %i, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %i, align 4
  br label %21

; <label>:37                                      ; preds = %21
  call void @_ZN4piko14BinSynchronizeEv()
  %38 = load i32, i32* %tid, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %37
  %41 = load %class.Bin*, %class.Bin** %bin, align 8
  %42 = bitcast %class.Bin* %41 to %class.PikoDataStructure.4*
  %43 = load i32, i32* %numPrims, align 4
  %44 = sub nsw i32 0, %43
  call void @_ZN17PikoDataStructureI11raster_striE15updatePrimCountEi(%class.PikoDataStructure.4* %42, i32 %44)
  br label %45

; <label>:45                                      ; preds = %40, %37
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Bin* @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE6getBinEi(%class.Stage* %this, i32 %binID) #0 comdat align 2 {
  %1 = alloca %class.Stage*, align 8
  %2 = alloca i32, align 4
  store %class.Stage* %this, %class.Stage** %1, align 8
  store i32 %binID, i32* %2, align 4
  %3 = load %class.Stage*, %class.Stage** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %class.Stage, %class.Stage* %3, i32 0, i32 10
  %7 = load %class.Bin*, %class.Bin** %6, align 8
  %8 = getelementptr inbounds %class.Bin, %class.Bin* %7, i64 %5
  ret %class.Bin* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN17PikoDataStructureI11raster_striE11getNumPrimsEv(%class.PikoDataStructure.4* %this) #0 comdat align 2 {
  %1 = alloca %class.PikoDataStructure.4*, align 8
  store %class.PikoDataStructure.4* %this, %class.PikoDataStructure.4** %1, align 8
  %2 = load %class.PikoDataStructure.4*, %class.PikoDataStructure.4** %1, align 8
  %3 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %2, i32 0, i32 3
  %4 = load i32, i32* %3, align 8
  ret i32 %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN3BinI11raster_striE9fetchPrimEv(%struct.raster_stri* noalias sret %agg.result, %class.Bin* %this) #1 comdat align 2 {
  %1 = alloca %class.Bin*, align 8
  %pos = alloca i32, align 4
  store %class.Bin* %this, %class.Bin** %1, align 8
  %2 = load %class.Bin*, %class.Bin** %1, align 8
  %3 = bitcast %class.Bin* %2 to %class.PikoDataStructure.4*
  %4 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %3, i32 0, i32 1
  %5 = call i32 @atomicIncrement(i32* %4)
  %6 = bitcast %class.Bin* %2 to %class.PikoDataStructure.4*
  %7 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = srem i32 %5, %8
  store i32 %9, i32* %pos, align 4
  %10 = load i32, i32* %pos, align 4
  %11 = sext i32 %10 to i64
  %12 = bitcast %class.Bin* %2 to %class.PikoDataStructure.4*
  %13 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %12, i32 0, i32 0
  %14 = load %struct.raster_stri*, %struct.raster_stri** %13, align 8
  %15 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %14, i64 %11
  %16 = bitcast %struct.raster_stri* %agg.result to i8*
  %17 = bitcast %struct.raster_stri* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 56, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN17PikoDataStructureI11raster_striE15updatePrimCountEi(%class.PikoDataStructure.4* %this, i32 %delta) #0 comdat align 2 {
  %1 = alloca %class.PikoDataStructure.4*, align 8
  %2 = alloca i32, align 4
  store %class.PikoDataStructure.4* %this, %class.PikoDataStructure.4** %1, align 8
  store i32 %delta, i32* %2, align 4
  %3 = load %class.PikoDataStructure.4*, %class.PikoDataStructure.4** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %3, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, %4
  store i32 %7, i32* %5, align 8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 @main() #6 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr <2 x float> @_Z6subvecRK6cvec2fS1_(%struct.cvec2f* dereferenceable(8) %v1, %struct.cvec2f* dereferenceable(8) %v2) #5 comdat {
  %1 = alloca %struct.cvec2f, align 4
  %2 = alloca %struct.cvec2f*, align 8
  %3 = alloca %struct.cvec2f*, align 8
  store %struct.cvec2f* %v1, %struct.cvec2f** %2, align 8
  store %struct.cvec2f* %v2, %struct.cvec2f** %3, align 8
  %4 = load %struct.cvec2f*, %struct.cvec2f** %2, align 8
  %5 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %4, i32 0, i32 0
  %6 = load float, float* %5, align 4
  %7 = load %struct.cvec2f*, %struct.cvec2f** %3, align 8
  %8 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = fsub float %6, %9
  %11 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %1, i32 0, i32 0
  store float %10, float* %11, align 4
  %12 = load %struct.cvec2f*, %struct.cvec2f** %2, align 8
  %13 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %12, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = load %struct.cvec2f*, %struct.cvec2f** %3, align 8
  %16 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = fsub float %14, %17
  %19 = getelementptr inbounds %struct.cvec2f, %struct.cvec2f* %1, i32 0, i32 1
  store float %18, float* %19, align 4
  %20 = bitcast %struct.cvec2f* %1 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 4
  ret <2 x float> %21
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_Z6subvecRK6cvec4fS1_(%struct.cvec4f* dereferenceable(16) %v1, %struct.cvec4f* dereferenceable(16) %v2) #5 comdat {
  %1 = alloca %struct.cvec4f, align 4
  %2 = alloca %struct.cvec4f*, align 8
  %3 = alloca %struct.cvec4f*, align 8
  store %struct.cvec4f* %v1, %struct.cvec4f** %2, align 8
  store %struct.cvec4f* %v2, %struct.cvec4f** %3, align 8
  %4 = load %struct.cvec4f*, %struct.cvec4f** %2, align 8
  %5 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %4, i32 0, i32 0
  %6 = load float, float* %5, align 4
  %7 = load %struct.cvec4f*, %struct.cvec4f** %3, align 8
  %8 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = fsub float %6, %9
  %11 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 0
  store float %10, float* %11, align 4
  %12 = load %struct.cvec4f*, %struct.cvec4f** %2, align 8
  %13 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %12, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = load %struct.cvec4f*, %struct.cvec4f** %3, align 8
  %16 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = fsub float %14, %17
  %19 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 1
  store float %18, float* %19, align 4
  %20 = load %struct.cvec4f*, %struct.cvec4f** %2, align 8
  %21 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %20, i32 0, i32 2
  %22 = load float, float* %21, align 4
  %23 = load %struct.cvec4f*, %struct.cvec4f** %3, align 8
  %24 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %23, i32 0, i32 2
  %25 = load float, float* %24, align 4
  %26 = fsub float %22, %25
  %27 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 2
  store float %26, float* %27, align 4
  %28 = load %struct.cvec4f*, %struct.cvec4f** %2, align 8
  %29 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %28, i32 0, i32 3
  %30 = load float, float* %29, align 4
  %31 = load %struct.cvec4f*, %struct.cvec4f** %3, align 8
  %32 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %31, i32 0, i32 3
  %33 = load float, float* %32, align 4
  %34 = fsub float %30, %33
  %35 = getelementptr inbounds %struct.cvec4f, %struct.cvec4f* %1, i32 0, i32 3
  store float %34, float* %35, align 4
  %36 = bitcast %struct.cvec4f* %1 to { <2 x float>, <2 x float> }*
  %37 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %36, align 4
  ret { <2 x float>, <2 x float> } %37
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_Z28computePixelBoundingBoxFixPtR11raster_striR16boundingBoxFixPt(%struct.raster_stri* dereferenceable(56) %_p, %struct.boundingBoxFixPt* dereferenceable(16) %_bb) #3 comdat {
  %1 = alloca %struct.raster_stri*, align 8
  %2 = alloca %struct.boundingBoxFixPt*, align 8
  store %struct.raster_stri* %_p, %struct.raster_stri** %1, align 8
  store %struct.boundingBoxFixPt* %_bb, %struct.boundingBoxFixPt** %2, align 8
  %3 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %4 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %7 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %10 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @_ZN4piko7min_minEiii(i32 %5, i32 %8, i32 %11)
  %13 = call i32 @_Z14RoundDownFixPti(i32 %12)
  %14 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %2, align 8
  %15 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %18 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %21 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %24 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @_ZN4piko7min_minEiii(i32 %19, i32 %22, i32 %25)
  %27 = call i32 @_Z14RoundDownFixPti(i32 %26)
  %28 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %2, align 8
  %29 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %32 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %35 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %38 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @_ZN4piko7max_maxEiii(i32 %33, i32 %36, i32 %39)
  %41 = call i32 @_Z12RoundUpFixPti(i32 %40)
  %42 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %2, align 8
  %43 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %46 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %49 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %52 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @_ZN4piko7max_maxEiii(i32 %47, i32 %50, i32 %53)
  %55 = call i32 @_Z12RoundUpFixPti(i32 %54)
  %56 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %2, align 8
  %57 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11getNumBinsXEv(%class.Stage* %this) #0 comdat align 2 {
  %1 = alloca %class.Stage*, align 8
  store %class.Stage* %this, %class.Stage** %1, align 8
  %2 = load %class.Stage*, %class.Stage** %1, align 8
  %3 = getelementptr inbounds %class.Stage, %class.Stage* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11getNumBinsYEv(%class.Stage* %this) #0 comdat align 2 {
  %1 = alloca %class.Stage*, align 8
  store %class.Stage* %this, %class.Stage** %1, align 8
  %2 = load %class.Stage*, %class.Stage** %1, align 8
  %3 = getelementptr inbounds %class.Stage, %class.Stage* %2, i32 0, i32 8
  %4 = load i32, i32* %3, align 8
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_Z22GetTrivialRejectOffsetiiii(i32 %x1mx0, i32 %y1my0, i32 %step0x, i32 %step0y) #5 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 %x1mx0, i32* %1, align 4
  store i32 %y1my0, i32* %2, align 4
  store i32 %step0x, i32* %3, align 4
  store i32 %step0y, i32* %4, align 4
  store i32 0, i32* %offset, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %3, align 4
  br label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  %12 = load i32, i32* %offset, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %offset, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %10
  %17 = load i32, i32* %4, align 4
  br label %19

; <label>:18                                      ; preds = %10
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load i32, i32* %offset, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %offset, align 4
  %23 = load i32, i32* %offset, align 4
  ret i32 %23
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN5StageILi8ELi8ELi32E11raster_stri5PixelE11assignToBinES0_i(%class.Stage* %this, %struct.raster_stri* byval align 8 %p, i32 %binID) #3 comdat align 2 {
  %1 = alloca %class.Stage*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.raster_stri, align 8
  store %class.Stage* %this, %class.Stage** %1, align 8
  store i32 %binID, i32* %2, align 4
  %4 = load %class.Stage*, %class.Stage** %1, align 8
  %5 = getelementptr inbounds %class.Stage, %class.Stage* %4, i32 0, i32 4
  store i8 1, i8* %5, align 1
  %6 = load i32, i32* %2, align 4
  %7 = bitcast %struct.raster_stri* %p to %struct.Primitive*
  %8 = getelementptr inbounds %struct.Primitive, %struct.Primitive* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %class.Stage, %class.Stage* %4, i32 0, i32 10
  %12 = load %class.Bin*, %class.Bin** %11, align 8
  %13 = getelementptr inbounds %class.Bin, %class.Bin* %12, i64 %10
  %14 = bitcast %class.Bin* %13 to %class.PikoDataStructure.4*
  %15 = bitcast %struct.raster_stri* %3 to i8*
  %16 = bitcast %struct.raster_stri* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 56, i32 4, i1 false)
  call void @_ZN17PikoDataStructureI11raster_striE6insertES0_(%class.PikoDataStructure.4* %14, %struct.raster_stri* byval align 8 %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_Z14RoundDownFixPti(i32 %num) #5 comdat {
  %1 = alloca i32, align 4
  store i32 %num, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = and i32 %2, -256
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_ZN4piko7min_minEiii(i32 %a, i32 %b, i32 %c) #5 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %v = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 asm sideeffect "vmin.s32.s32.s32.min $0, $1, $2, $3;", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %4, i32 %5, i32 %6) #7, !srcloc !3
  store i32 %7, i32* %v, align 4
  %8 = load i32, i32* %v, align 4
  ret i32 %8
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_Z12RoundUpFixPti(i32 %num) #5 comdat {
  %1 = alloca i32, align 4
  store i32 %num, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = add nsw i32 %2, 255
  %4 = and i32 %3, -256
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_ZN4piko7max_maxEiii(i32 %a, i32 %b, i32 %c) #5 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %v = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 asm sideeffect "vmax.s32.s32.s32.max $0, $1, $2, $3;", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %4, i32 %5, i32 %6) #7, !srcloc !4
  store i32 %7, i32* %v, align 4
  %8 = load i32, i32* %v, align 4
  ret i32 %8
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN17PikoDataStructureI11raster_striE6insertES0_(%class.PikoDataStructure.4* %this, %struct.raster_stri* byval align 8 %prim) #1 comdat align 2 {
  %1 = alloca %class.PikoDataStructure.4*, align 8
  %pos = alloca i32, align 4
  store %class.PikoDataStructure.4* %this, %class.PikoDataStructure.4** %1, align 8
  %2 = load %class.PikoDataStructure.4*, %class.PikoDataStructure.4** %1, align 8
  %3 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %2, i32 0, i32 2
  %4 = call i32 @atomicIncrement(i32* %3)
  %5 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %2, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = srem i32 %4, %6
  store i32 %7, i32* %pos, align 4
  %8 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %2, i32 0, i32 3
  %9 = call i32 @atomicIncrement(i32* %8)
  %10 = load i32, i32* %pos, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %class.PikoDataStructure.4, %class.PikoDataStructure.4* %2, i32 0, i32 0
  %13 = load %struct.raster_stri*, %struct.raster_stri** %12, align 8
  %14 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %13, i64 %11
  %15 = call dereferenceable(56) %struct.raster_stri* @_ZN11raster_striaSERS_(%struct.raster_stri* %14, %struct.raster_stri* dereferenceable(56) %prim)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(56) %struct.raster_stri* @_ZN11raster_striaSERS_(%struct.raster_stri* %this, %struct.raster_stri* dereferenceable(56) %p) #0 comdat align 2 {
  %1 = alloca %struct.raster_stri*, align 8
  %2 = alloca %struct.raster_stri*, align 8
  store %struct.raster_stri* %this, %struct.raster_stri** %1, align 8
  store %struct.raster_stri* %p, %struct.raster_stri** %2, align 8
  %3 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %4 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %5 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 10
  store i32 %6, i32* %7, align 4
  %8 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %9 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 11
  store i32 %10, i32* %11, align 4
  %12 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %13 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 12
  store i32 %14, i32* %15, align 4
  %16 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %17 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %21 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %25 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %24, i32 0, i32 7
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 7
  store float %26, float* %27, align 4
  %28 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %29 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %33 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %37 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %36, i32 0, i32 8
  %38 = load float, float* %37, align 4
  %39 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 8
  store float %38, float* %39, align 4
  %40 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %41 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %45 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 6
  store i32 %46, i32* %47, align 4
  %48 = load %struct.raster_stri*, %struct.raster_stri** %2, align 8
  %49 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %48, i32 0, i32 9
  %50 = load float, float* %49, align 4
  %51 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 9
  store float %50, float* %51, align 4
  ret %struct.raster_stri* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_Z16computeBinExtentR6cvec2iS0_iii(%struct.cvec2i* dereferenceable(8) %_binBeg, %struct.cvec2i* dereferenceable(8) %_binEnd, i32 %_binSize, i32 %nBx, i32 %bID) #3 comdat {
  %1 = alloca %struct.cvec2i*, align 8
  %2 = alloca %struct.cvec2i*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %binIdx = alloca i32, align 4
  %binIdy = alloca i32, align 4
  store %struct.cvec2i* %_binBeg, %struct.cvec2i** %1, align 8
  store %struct.cvec2i* %_binEnd, %struct.cvec2i** %2, align 8
  store i32 %_binSize, i32* %3, align 4
  store i32 %nBx, i32* %4, align 4
  store i32 %bID, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = srem i32 %6, %7
  store i32 %8, i32* %binIdx, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @_ZN4piko9idiv_fastEjj(i32 %9, i32 %10)
  store i32 %11, i32* %binIdy, align 4
  %12 = load i32, i32* %binIdx, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul i32 %12, %13
  %15 = load %struct.cvec2i*, %struct.cvec2i** %1, align 8
  %16 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %binIdy, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul i32 %17, %18
  %20 = load %struct.cvec2i*, %struct.cvec2i** %1, align 8
  %21 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cvec2i*, %struct.cvec2i** %1, align 8
  %23 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.cvec2i*, %struct.cvec2i** %2, align 8
  %28 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cvec2i*, %struct.cvec2i** %1, align 8
  %30 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.cvec2i*, %struct.cvec2i** %2, align 8
  %35 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_Z12intersectBBiR6cvec2iS0_S0_S0_S0_S0_(%struct.cvec2i* dereferenceable(8) %_bb1_lo, %struct.cvec2i* dereferenceable(8) %_bb1_hi, %struct.cvec2i* dereferenceable(8) %_bb2_lo, %struct.cvec2i* dereferenceable(8) %_bb2_hi, %struct.cvec2i* dereferenceable(8) %_bbOut_lo, %struct.cvec2i* dereferenceable(8) %_bbOut_hi) #5 comdat {
  %1 = alloca %struct.cvec2i*, align 8
  %2 = alloca %struct.cvec2i*, align 8
  %3 = alloca %struct.cvec2i*, align 8
  %4 = alloca %struct.cvec2i*, align 8
  %5 = alloca %struct.cvec2i*, align 8
  %6 = alloca %struct.cvec2i*, align 8
  store %struct.cvec2i* %_bb1_lo, %struct.cvec2i** %1, align 8
  store %struct.cvec2i* %_bb1_hi, %struct.cvec2i** %2, align 8
  store %struct.cvec2i* %_bb2_lo, %struct.cvec2i** %3, align 8
  store %struct.cvec2i* %_bb2_hi, %struct.cvec2i** %4, align 8
  store %struct.cvec2i* %_bbOut_lo, %struct.cvec2i** %5, align 8
  store %struct.cvec2i* %_bbOut_hi, %struct.cvec2i** %6, align 8
  %7 = load %struct.cvec2i*, %struct.cvec2i** %1, align 8
  %8 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cvec2i*, %struct.cvec2i** %3, align 8
  %11 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @_ZN4piko4imaxEii(i32 %9, i32 %12)
  %14 = load %struct.cvec2i*, %struct.cvec2i** %5, align 8
  %15 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cvec2i*, %struct.cvec2i** %1, align 8
  %17 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cvec2i*, %struct.cvec2i** %3, align 8
  %20 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @_ZN4piko4imaxEii(i32 %18, i32 %21)
  %23 = load %struct.cvec2i*, %struct.cvec2i** %5, align 8
  %24 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cvec2i*, %struct.cvec2i** %2, align 8
  %26 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cvec2i*, %struct.cvec2i** %4, align 8
  %29 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @_ZN4piko4iminEii(i32 %27, i32 %30)
  %32 = load %struct.cvec2i*, %struct.cvec2i** %6, align 8
  %33 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cvec2i*, %struct.cvec2i** %2, align 8
  %35 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cvec2i*, %struct.cvec2i** %4, align 8
  %38 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @_ZN4piko4iminEii(i32 %36, i32 %39)
  %41 = load %struct.cvec2i*, %struct.cvec2i** %6, align 8
  %42 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr float @_ZN4piko10rcp_approxEf(float %a) #5 comdat {
  %1 = alloca float, align 4
  store float %a, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = fdiv float 1.000000e+00, %2
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_Z9gencvec2iRKiS0_(i32* dereferenceable(4) %x, i32* dereferenceable(4) %y) #5 comdat {
  %1 = alloca %struct.cvec2i, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %x, i32** %2, align 8
  store i32* %y, i32** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %1, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %1, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = bitcast %struct.cvec2i* %1 to i64*
  %11 = load i64, i64* %10, align 4
  ret i64 %11
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr { <2 x float>, float } @_ZN4piko8fromABGREj(i32 %color) #5 comdat {
  %1 = alloca %struct.cvec3f, align 4
  %2 = alloca i32, align 4
  %3 = alloca { <2 x float>, float }, align 8
  store i32 %color, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = lshr i32 %4, 0
  %6 = and i32 %5, 255
  %7 = uitofp i32 %6 to float
  %8 = fdiv float %7, 2.550000e+02
  %9 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %1, i32 0, i32 0
  store float %8, float* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = uitofp i32 %12 to float
  %14 = fdiv float %13, 2.550000e+02
  %15 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %1, i32 0, i32 1
  store float %14, float* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = uitofp i32 %18 to float
  %20 = fdiv float %19, 2.550000e+02
  %21 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %1, i32 0, i32 2
  store float %20, float* %21, align 4
  %22 = bitcast { <2 x float>, float }* %3 to i8*
  %23 = bitcast %struct.cvec3f* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 12, i32 4, i1 false)
  %24 = load { <2 x float>, float }, { <2 x float>, float }* %3, align 8
  ret { <2 x float>, float } %24
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_Z22GetTrivialAcceptOffsetiiii(i32 %x1mx0, i32 %y1my0, i32 %step0x, i32 %step0y) #5 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 %x1mx0, i32* %1, align 4
  store i32 %y1my0, i32* %2, align 4
  store i32 %step0x, i32* %3, align 4
  store i32 %step0y, i32* %4, align 4
  store i32 0, i32* %offset, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %3, align 4
  br label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  %12 = load i32, i32* %offset, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %offset, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %10
  %17 = load i32, i32* %4, align 4
  br label %19

; <label>:18                                      ; preds = %10
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load i32, i32* %offset, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %offset, align 4
  %23 = load i32, i32* %offset, align 4
  ret i32 %23
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { <2 x float>, float } @_ZmiRK6cvec3fS1_(%struct.cvec3f* dereferenceable(12) %v1, %struct.cvec3f* dereferenceable(12) %v2) #3 comdat {
  %1 = alloca %struct.cvec3f, align 4
  %2 = alloca %struct.cvec3f*, align 8
  %3 = alloca %struct.cvec3f*, align 8
  %4 = alloca { <2 x float>, float }, align 8
  %5 = alloca { <2 x float>, float }, align 8
  store %struct.cvec3f* %v1, %struct.cvec3f** %2, align 8
  store %struct.cvec3f* %v2, %struct.cvec3f** %3, align 8
  %6 = load %struct.cvec3f*, %struct.cvec3f** %2, align 8
  %7 = load %struct.cvec3f*, %struct.cvec3f** %3, align 8
  %8 = call { <2 x float>, float } @_Z6subvecRK6cvec3fS1_(%struct.cvec3f* dereferenceable(12) %6, %struct.cvec3f* dereferenceable(12) %7)
  store { <2 x float>, float } %8, { <2 x float>, float }* %4, align 8
  %9 = bitcast { <2 x float>, float }* %4 to i8*
  %10 = bitcast %struct.cvec3f* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %9, i64 12, i32 4, i1 false)
  %11 = bitcast { <2 x float>, float }* %5 to i8*
  %12 = bitcast %struct.cvec3f* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 12, i32 4, i1 false)
  %13 = load { <2 x float>, float }, { <2 x float>, float }* %5, align 8
  ret { <2 x float>, float } %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_Z19getSampleIdFromMaskRKyRiS1_(i64* dereferenceable(8) %mask, i32* dereferenceable(4) %x, i32* dereferenceable(4) %y) #3 comdat {
  %1 = alloca i64*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %lowBit = alloca i32, align 4
  store i64* %mask, i64** %1, align 8
  store i32* %x, i32** %2, align 8
  store i32* %y, i32** %3, align 8
  %4 = load i64*, i64** %1, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @_ZN4piko5ffsllEy(i64 %5)
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %lowBit, align 4
  %8 = load i32, i32* %lowBit, align 4
  %9 = and i32 %8, 7
  %10 = load i32*, i32** %2, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %lowBit, align 4
  %12 = ashr i32 %11, 3
  %13 = load i32*, i32** %3, align 8
  store i32 %12, i32* %13, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr float @_Z21interpolate_alphabetaIfET_RKS0_S2_S2_RKfS4_(float* dereferenceable(4) %f0mf2, float* dereferenceable(4) %f1mf2, float* dereferenceable(4) %f2, float* dereferenceable(4) %alpha, float* dereferenceable(4) %beta) #5 comdat {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  store float* %f0mf2, float** %1, align 8
  store float* %f1mf2, float** %2, align 8
  store float* %f2, float** %3, align 8
  store float* %alpha, float** %4, align 8
  store float* %beta, float** %5, align 8
  %6 = load float*, float** %3, align 8
  %7 = load float, float* %6, align 4
  %8 = load float*, float** %4, align 8
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %1, align 8
  %11 = load float, float* %10, align 4
  %12 = fmul float %9, %11
  %13 = fadd float %7, %12
  %14 = load float*, float** %5, align 8
  %15 = load float, float* %14, align 4
  %16 = load float*, float** %2, align 8
  %17 = load float, float* %16, align 4
  %18 = fmul float %15, %17
  %19 = fadd float %13, %18
  ret float %19
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_ZN4piko4imadEiii(i32 %a, i32 %b, i32 %c) #5 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %v = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 asm sideeffect "vmad.s32.s32.s32.sat $0, $1, $2, $3;", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %4, i32 %5, i32 %6) #7, !srcloc !5
  store i32 %7, i32* %v, align 4
  %8 = load i32, i32* %v, align 4
  ret i32 %8
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @float_as_int(float %f) #5 comdat {
  %1 = alloca float, align 4
  store float %f, float* %1, align 4
  %2 = bitcast float* %1 to i32*
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN5PixelC2Ev(%struct.Pixel* %this) unnamed_addr #1 comdat align 2 {
  %1 = alloca %struct.Pixel*, align 8
  store %struct.Pixel* %this, %struct.Pixel** %1, align 8
  %2 = load %struct.Pixel*, %struct.Pixel** %1, align 8
  %3 = bitcast %struct.Pixel* %2 to %struct.Primitive*
  call void @_ZN9PrimitiveC2Ev(%struct.Primitive* %3)
  %4 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %2, i32 0, i32 1
  call void @_ZN6cvec2uC2Ev(%struct.cvec2u* %4)
  %5 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %2, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cvec2u, %struct.cvec2u* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.Pixel, %struct.Pixel* %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.cvec2u, %struct.cvec2u* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32 @_ZN4piko6toABGRE6cvec3f(<2 x float> %color.coerce0, float %color.coerce1) #3 comdat {
  %color = alloca %struct.cvec3f, align 4
  %1 = alloca { <2 x float>, float }, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %w = alloca i32, align 4
  %2 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %1, i32 0, i32 0
  store <2 x float> %color.coerce0, <2 x float>* %2, align 4
  %3 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %1, i32 0, i32 1
  store float %color.coerce1, float* %3, align 4
  %4 = bitcast %struct.cvec3f* %color to i8*
  %5 = bitcast { <2 x float>, float }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 12, i32 4, i1 false)
  %6 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %color, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = call float @_ZN4piko6fma_rmEfff(float %7, float 0x41EFE00000000000, float 8.388608e+06)
  %9 = call i32 @_ZN4piko18f32_to_u32_sat_rmiEf(float %8)
  store i32 %9, i32* %x, align 4
  %10 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %color, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = call float @_ZN4piko6fma_rmEfff(float %11, float 0x41EFE00000000000, float 8.388608e+06)
  %13 = call i32 @_ZN4piko18f32_to_u32_sat_rmiEf(float %12)
  store i32 %13, i32* %y, align 4
  %14 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %color, i32 0, i32 2
  %15 = load float, float* %14, align 4
  %16 = call float @_ZN4piko6fma_rmEfff(float %15, float 0x41EFE00000000000, float 8.388608e+06)
  %17 = call i32 @_ZN4piko18f32_to_u32_sat_rmiEf(float %16)
  store i32 %17, i32* %z, align 4
  %18 = call float @_ZN4piko6fma_rmEfff(float 1.000000e+00, float 0x41EFE00000000000, float 8.388608e+06)
  %19 = call i32 @_ZN4piko18f32_to_u32_sat_rmiEf(float %18)
  store i32 %19, i32* %w, align 4
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %y, align 4
  %22 = call i32 @_ZN4piko4prmtEjjj(i32 %20, i32 %21, i32 115)
  %23 = load i32, i32* %z, align 4
  %24 = load i32, i32* %w, align 4
  %25 = call i32 @_ZN4piko4prmtEjjj(i32 %23, i32 %24, i32 115)
  %26 = call i32 @_ZN4piko4prmtEjjj(i32 %22, i32 %25, i32 21520)
  ret i32 %26
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32 @_ZN4piko9idiv_fastEjj(i32 %a, i32 %b) #3 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = uitofp i32 %3 to float
  %5 = fadd float %4, 5.000000e-01
  %6 = load i32, i32* %2, align 4
  %7 = uitofp i32 %6 to float
  %8 = fdiv float %5, %7
  %9 = call i32 @_ZN4piko18f32_to_u32_sat_rmiEf(float %8)
  ret i32 %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_ZN4piko18f32_to_u32_sat_rmiEf(float %a) #5 comdat {
  %1 = alloca float, align 4
  %v = alloca i32, align 4
  store float %a, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = call i32 asm sideeffect "cvt.rmi.sat.u32.f32 $0, $1;", "=r,f,~{dirflag},~{fpsr},~{flags}"(float %2) #7, !srcloc !6
  store i32 %3, i32* %v, align 4
  %4 = load i32, i32* %v, align 4
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr { <2 x float>, float } @_Z6subvecRK6cvec3fS1_(%struct.cvec3f* dereferenceable(12) %v1, %struct.cvec3f* dereferenceable(12) %v2) #5 comdat {
  %1 = alloca %struct.cvec3f, align 4
  %2 = alloca %struct.cvec3f*, align 8
  %3 = alloca %struct.cvec3f*, align 8
  %4 = alloca { <2 x float>, float }, align 8
  store %struct.cvec3f* %v1, %struct.cvec3f** %2, align 8
  store %struct.cvec3f* %v2, %struct.cvec3f** %3, align 8
  %5 = load %struct.cvec3f*, %struct.cvec3f** %2, align 8
  %6 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %5, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = load %struct.cvec3f*, %struct.cvec3f** %3, align 8
  %9 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = fsub float %7, %10
  %12 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %1, i32 0, i32 0
  store float %11, float* %12, align 4
  %13 = load %struct.cvec3f*, %struct.cvec3f** %2, align 8
  %14 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %13, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = load %struct.cvec3f*, %struct.cvec3f** %3, align 8
  %17 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %16, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = fsub float %15, %18
  %20 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %1, i32 0, i32 1
  store float %19, float* %20, align 4
  %21 = load %struct.cvec3f*, %struct.cvec3f** %2, align 8
  %22 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %21, i32 0, i32 2
  %23 = load float, float* %22, align 4
  %24 = load %struct.cvec3f*, %struct.cvec3f** %3, align 8
  %25 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %24, i32 0, i32 2
  %26 = load float, float* %25, align 4
  %27 = fsub float %23, %26
  %28 = getelementptr inbounds %struct.cvec3f, %struct.cvec3f* %1, i32 0, i32 2
  store float %27, float* %28, align 4
  %29 = bitcast { <2 x float>, float }* %4 to i8*
  %30 = bitcast %struct.cvec3f* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 12, i32 4, i1 false)
  %31 = load { <2 x float>, float }, { <2 x float>, float }* %4, align 8
  ret { <2 x float>, float } %31
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9PrimitiveC2Ev(%struct.Primitive* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %struct.Primitive*, align 8
  store %struct.Primitive* %this, %struct.Primitive** %1, align 8
  %2 = load %struct.Primitive*, %struct.Primitive** %1, align 8
  %3 = getelementptr inbounds %struct.Primitive, %struct.Primitive* %2, i32 0, i32 0
  store i32 0, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN6cvec2uC2Ev(%struct.cvec2u* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %struct.cvec2u*, align 8
  store %struct.cvec2u* %this, %struct.cvec2u** %1, align 8
  %2 = load %struct.cvec2u*, %struct.cvec2u** %1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr float @_ZN4piko6fma_rmEfff(float %a, float %b, float %c) #5 comdat {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %a, float* %1, align 4
  store float %b, float* %2, align 4
  store float %c, float* %3, align 4
  %4 = load float, float* %1, align 4
  %5 = load float, float* %2, align 4
  %6 = fmul float %4, %5
  %7 = load float, float* %3, align 4
  %8 = fadd float %6, %7
  ret float %8
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_ZN4piko4prmtEjjj(i32 %a, i32 %b, i32 %c) #5 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %v = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 asm sideeffect "prmt.b32 $0, $1, $2, $3;", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %4, i32 %5, i32 %6) #7, !srcloc !7
  store i32 %7, i32* %v, align 4
  %8 = load i32, i32* %v, align 4
  ret i32 %8
}

declare i32 @blockDim_x() #2

declare i32 @blockIdx_x() #2

declare i32 @threadIdx_x() #2

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN5StageILi32ELi32ELi512E11raster_wtri11raster_striE11assignToBinES0_i(%class.Stage.1* %this, %struct.raster_wtri* byval align 8 %p, i32 %binID) #3 comdat align 2 {
  %1 = alloca %class.Stage.1*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.raster_wtri, align 8
  store %class.Stage.1* %this, %class.Stage.1** %1, align 8
  store i32 %binID, i32* %2, align 4
  %4 = load %class.Stage.1*, %class.Stage.1** %1, align 8
  %5 = getelementptr inbounds %class.Stage.1, %class.Stage.1* %4, i32 0, i32 4
  store i8 1, i8* %5, align 1
  %6 = load i32, i32* %2, align 4
  %7 = bitcast %struct.raster_wtri* %p to %struct.Primitive*
  %8 = getelementptr inbounds %struct.Primitive, %struct.Primitive* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %class.Stage.1, %class.Stage.1* %4, i32 0, i32 10
  %12 = load %class.Bin.3*, %class.Bin.3** %11, align 8
  %13 = getelementptr inbounds %class.Bin.3, %class.Bin.3* %12, i64 %10
  %14 = bitcast %class.Bin.3* %13 to %class.PikoDataStructure*
  %15 = bitcast %struct.raster_wtri* %3 to i8*
  %16 = bitcast %struct.raster_wtri* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 60, i32 4, i1 false)
  call void @_ZN17PikoDataStructureI11raster_wtriE6insertES0_(%class.PikoDataStructure* %14, %struct.raster_wtri* byval align 8 %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN17PikoDataStructureI11raster_wtriE6insertES0_(%class.PikoDataStructure* %this, %struct.raster_wtri* byval align 8 %prim) #1 comdat align 2 {
  %1 = alloca %class.PikoDataStructure*, align 8
  %pos = alloca i32, align 4
  store %class.PikoDataStructure* %this, %class.PikoDataStructure** %1, align 8
  %2 = load %class.PikoDataStructure*, %class.PikoDataStructure** %1, align 8
  %3 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %2, i32 0, i32 2
  %4 = call i32 @atomicIncrement(i32* %3)
  %5 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %2, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = srem i32 %4, %6
  store i32 %7, i32* %pos, align 4
  %8 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %2, i32 0, i32 3
  %9 = call i32 @atomicIncrement(i32* %8)
  %10 = load i32, i32* %pos, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %class.PikoDataStructure, %class.PikoDataStructure* %2, i32 0, i32 0
  %13 = load %struct.raster_wtri*, %struct.raster_wtri** %12, align 8
  %14 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %13, i64 %11
  %15 = call dereferenceable(60) %struct.raster_wtri* @_ZN11raster_wtriaSERS_(%struct.raster_wtri* %14, %struct.raster_wtri* dereferenceable(60) %prim)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(60) %struct.raster_wtri* @_ZN11raster_wtriaSERS_(%struct.raster_wtri* %this, %struct.raster_wtri* dereferenceable(60) %p) #0 comdat align 2 {
  %1 = alloca %struct.raster_wtri*, align 8
  %2 = alloca %struct.raster_wtri*, align 8
  store %struct.raster_wtri* %this, %struct.raster_wtri** %1, align 8
  store %struct.raster_wtri* %p, %struct.raster_wtri** %2, align 8
  %3 = load %struct.raster_wtri*, %struct.raster_wtri** %1, align 8
  %4 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %3, i32 0, i32 2
  %5 = load %struct.raster_wtri*, %struct.raster_wtri** %2, align 8
  %6 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %5, i32 0, i32 2
  %7 = bitcast %struct.cvec3f* %4 to i8*
  %8 = bitcast %struct.cvec3f* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 12, i32 4, i1 false)
  %9 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %3, i32 0, i32 3
  %10 = load %struct.raster_wtri*, %struct.raster_wtri** %2, align 8
  %11 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %10, i32 0, i32 3
  %12 = bitcast %struct.cvec3f* %9 to i8*
  %13 = bitcast %struct.cvec3f* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 12, i32 4, i1 false)
  %14 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %3, i32 0, i32 4
  %15 = load %struct.raster_wtri*, %struct.raster_wtri** %2, align 8
  %16 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %15, i32 0, i32 4
  %17 = bitcast %struct.cvec3f* %14 to i8*
  %18 = bitcast %struct.cvec3f* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 12, i32 4, i1 false)
  %19 = load %struct.raster_wtri*, %struct.raster_wtri** %2, align 8
  %20 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %3, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = load %struct.raster_wtri*, %struct.raster_wtri** %2, align 8
  %24 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %3, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = load %struct.raster_wtri*, %struct.raster_wtri** %2, align 8
  %28 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.raster_wtri, %struct.raster_wtri* %3, i32 0, i32 7
  store i32 %29, i32* %30, align 4
  ret %struct.raster_wtri* %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN11raster_striC2Ev(%struct.raster_stri* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %struct.raster_stri*, align 8
  store %struct.raster_stri* %this, %struct.raster_stri** %1, align 8
  %2 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %3 = bitcast %struct.raster_stri* %2 to %struct.Primitive*
  call void @_ZN9PrimitiveC2Ev(%struct.Primitive* %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_Z18isFrontFacingFixPtR11raster_stri(%struct.raster_stri* dereferenceable(56) %p) #5 comdat {
  %1 = alloca %struct.raster_stri*, align 8
  store %struct.raster_stri* %p, %struct.raster_stri** %1, align 8
  %2 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %3 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %2, i32 0, i32 6
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %6 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %4, %7
  %9 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %10 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %13 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = mul nsw i32 %8, %15
  %17 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %18 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %21 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %25 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %28 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = mul nsw i32 %23, %30
  %32 = sub nsw i32 %16, %31
  %33 = icmp sgt i32 %32, 0
  ret i1 %33
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_Z20isInsideFrustumFixPtR11raster_striffii(%struct.raster_stri* dereferenceable(56) %p, float %min_Z, float %max_Z, i32 %W, i32 %H) #5 comdat {
  %1 = alloca %struct.raster_stri*, align 8
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %guard = alloca i32, align 4
  store %struct.raster_stri* %p, %struct.raster_stri** %1, align 8
  store float %min_Z, float* %2, align 4
  store float %max_Z, float* %3, align 4
  store i32 %W, i32* %4, align 4
  store i32 %H, i32* %5, align 4
  store i32 3600, i32* %guard, align 4
  %6 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %7 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %guard, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %97, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %14 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %guard, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %97, label %20

; <label>:20                                      ; preds = %12
  %21 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %22 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %guard, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %97, label %27

; <label>:27                                      ; preds = %20
  %28 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %29 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %guard, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %97, label %35

; <label>:35                                      ; preds = %27
  %36 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %37 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %guard, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %97, label %42

; <label>:42                                      ; preds = %35
  %43 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %44 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %guard, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %97, label %50

; <label>:50                                      ; preds = %42
  %51 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %52 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %guard, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %97, label %57

; <label>:57                                      ; preds = %50
  %58 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %59 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %guard, align 4
  %63 = add nsw i32 %61, %62
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %97, label %65

; <label>:65                                      ; preds = %57
  %66 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %67 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %guard, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %97, label %72

; <label>:72                                      ; preds = %65
  %73 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %74 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %guard, align 4
  %78 = add nsw i32 %76, %77
  %79 = icmp sge i32 %75, %78
  br i1 %79, label %97, label %80

; <label>:80                                      ; preds = %72
  %81 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %82 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %guard, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %95, label %87

; <label>:87                                      ; preds = %80
  %88 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %89 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %guard, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp sge i32 %90, %93
  br label %95

; <label>:95                                      ; preds = %87, %80
  %96 = phi i1 [ true, %80 ], [ %94, %87 ]
  br label %97

; <label>:97                                      ; preds = %95, %72, %65, %57, %50, %42, %35, %27, %20, %12, %0
  %98 = phi i1 [ true, %72 ], [ true, %65 ], [ true, %57 ], [ true, %50 ], [ true, %42 ], [ true, %35 ], [ true, %27 ], [ true, %20 ], [ true, %12 ], [ true, %0 ], [ %96, %95 ]
  %99 = xor i1 %98, true
  ret i1 %99
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_Z23computeBoundingBoxFixPtR11raster_striR16boundingBoxFixPt(%struct.raster_stri* dereferenceable(56) %_p, %struct.boundingBoxFixPt* dereferenceable(16) %_bb) #5 comdat {
  %1 = alloca %struct.raster_stri*, align 8
  %2 = alloca %struct.boundingBoxFixPt*, align 8
  store %struct.raster_stri* %_p, %struct.raster_stri** %1, align 8
  store %struct.boundingBoxFixPt* %_bb, %struct.boundingBoxFixPt** %2, align 8
  %3 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %4 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %7 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %10 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @_ZN4piko7min_minEiii(i32 %5, i32 %8, i32 %11)
  %13 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %2, align 8
  %14 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %17 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %20 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %23 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_ZN4piko7min_minEiii(i32 %18, i32 %21, i32 %24)
  %26 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %2, align 8
  %27 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %30 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %33 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %36 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @_ZN4piko7max_maxEiii(i32 %31, i32 %34, i32 %37)
  %39 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %2, align 8
  %40 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %43 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %46 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.raster_stri*, %struct.raster_stri** %1, align 8
  %49 = getelementptr inbounds %struct.raster_stri, %struct.raster_stri* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @_ZN4piko7max_maxEiii(i32 %44, i32 %47, i32 %50)
  %52 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %2, align 8
  %53 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_Z18isBBBetweenSamplesR16boundingBoxFixPt(%struct.boundingBoxFixPt* dereferenceable(16) %bb) #5 comdat {
  %1 = alloca %struct.boundingBoxFixPt*, align 8
  %bCullXaxis = alloca i8, align 1
  %bCullYaxis = alloca i8, align 1
  store %struct.boundingBoxFixPt* %bb, %struct.boundingBoxFixPt** %1, align 8
  %2 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %1, align 8
  %3 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sub nsw i32 %5, 8
  %7 = ashr i32 %6, 4
  %8 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %1, align 8
  %9 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 8
  %13 = ashr i32 %12, 4
  %14 = icmp eq i32 %7, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %bCullXaxis, align 1
  %16 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %1, align 8
  %17 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 8
  %21 = ashr i32 %20, 4
  %22 = load %struct.boundingBoxFixPt*, %struct.boundingBoxFixPt** %1, align 8
  %23 = getelementptr inbounds %struct.boundingBoxFixPt, %struct.boundingBoxFixPt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.cvec2i, %struct.cvec2i* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 8
  %27 = ashr i32 %26, 4
  %28 = icmp eq i32 %21, %27
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %bCullYaxis, align 1
  %30 = load i8, i8* %bCullYaxis, align 1
  %31 = trunc i8 %30 to i1
  br i1 %31, label %35, label %32

; <label>:32                                      ; preds = %0
  %33 = load i8, i8* %bCullYaxis, align 1
  %34 = trunc i8 %33 to i1
  br label %35

; <label>:35                                      ; preds = %32, %0
  %36 = phi i1 [ true, %0 ], [ %34, %32 ]
  ret i1 %36
}

declare void @__syncthreads() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{i32 470375, i32 470402, i32 470470, i32 470521, i32 470549, i32 470578, i32 470608, i32 470639, i32 470682, i32 470722, i32 470758, i32 470802, i32 470850, i32 470906, i32 470943, i32 470974, i32 471017, i32 471048, i32 471091, i32 471123, i32 471155, i32 471177, i32 471190, i32 471210, i32 471228, i32 471242, i32 471303}
!2 = !{i32 471432, i32 471459, i32 471527, i32 471578, i32 471606, i32 471635, i32 471665, i32 471695, i32 471726, i32 471757, i32 471800, i32 471840, i32 471876, i32 471920, i32 471968, i32 472004, i32 472063, i32 472100, i32 472131, i32 472174, i32 472205, i32 472248, i32 472280, i32 472312, i32 472334, i32 472347, i32 472367, i32 472385, i32 472399, i32 472460}
!3 = !{i32 450953}
!4 = !{i32 450777}
!5 = !{i32 453237}
!6 = !{i32 454357}
!7 = !{i32 454522}
