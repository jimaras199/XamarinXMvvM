; ModuleID = 'obj\Debug\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [232 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 62
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 90
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 20
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 85
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 76
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 76
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 43
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 77
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 41
	i32 220171995, ; 9: System.Diagnostics.Debug => 0xd1f8edb => 98
	i32 227681742, ; 10: XamarinXMvvm.Android.dll => 0xd9225ce => 0
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 57
	i32 231814094, ; 12: System.Globalization => 0xdd133ce => 106
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 114
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 46
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 61
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 55
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 33
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 28
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 59
	i32 382590210, ; 20: SkiaSharp.Extended.dll => 0x16cddd02 => 22
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 45
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 94
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 54
	i32 465846621, ; 24: mscorlib => 0x1bc4415d => 17
	i32 469710990, ; 25: System.dll => 0x1bff388e => 27
	i32 476646585, ; 26: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 55
	i32 486930444, ; 27: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 66
	i32 498788369, ; 28: System.ObjectModel => 0x1dbae811 => 105
	i32 520798577, ; 29: FFImageLoading.Platform => 0x1f0ac171 => 9
	i32 525008092, ; 30: SkiaSharp.dll => 0x1f4afcdc => 21
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 109
	i32 545304856, ; 32: System.Runtime.Extensions => 0x2080b118 => 101
	i32 559457235, ; 33: MvvmCross.Forms => 0x2158a3d3 => 19
	i32 581545823, ; 34: FFImageLoading.Svg.Forms => 0x22a9af5f => 10
	i32 605376203, ; 35: System.IO.Compression.FileSystem => 0x24154ecb => 112
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 50
	i32 630587553, ; 37: SkiaSharp.Extended.Svg.dll => 0x259600a1 => 23
	i32 663517072, ; 38: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 82
	i32 666292255, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 38
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 32
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 111
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 73
	i32 843871832, ; 44: FFImageLoading.Svg.Forms.dll => 0x324c7658 => 10
	i32 857149644, ; 45: MvvmCross.dll => 0x331710cc => 18
	i32 877678880, ; 46: System.Globalization.dll => 0x34505120 => 106
	i32 908085406, ; 47: XamarinXMvvm.UI.dll => 0x3620489e => 92
	i32 928116545, ; 48: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 90
	i32 955402788, ; 49: Newtonsoft.Json => 0x38f24a24 => 20
	i32 967690846, ; 50: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 59
	i32 974778368, ; 51: FormsViewGroup.dll => 0x3a19f000 => 12
	i32 992768348, ; 52: System.Collections.dll => 0x3b2c715c => 94
	i32 1012816738, ; 53: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 75
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 37
	i32 1042160112, ; 55: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 87
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 63
	i32 1098259244, ; 57: System => 0x41761b2c => 27
	i32 1175144683, ; 58: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 80
	i32 1178241025, ; 59: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 70
	i32 1204270330, ; 60: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 38
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 81
	i32 1278199979, ; 62: XamarinXMvvm.Android => 0x4c2fc8ab => 0
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 52
	i32 1324164729, ; 64: System.Linq => 0x4eed2679 => 104
	i32 1364015309, ; 65: System.IO => 0x514d38cd => 97
	i32 1365406463, ; 66: System.ServiceModel.Internals.dll => 0x516272ff => 93
	i32 1376866003, ; 67: Xamarin.AndroidX.SavedState => 0x52114ed3 => 75
	i32 1379779777, ; 68: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 69: Xamarin.AndroidX.Media.dll => 0x5333188f => 67
	i32 1406073936, ; 70: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 47
	i32 1457743152, ; 71: System.Runtime.Extensions.dll => 0x56e36530 => 101
	i32 1460219004, ; 72: Xamarin.Forms.Xaml => 0x57092c7c => 88
	i32 1462112819, ; 73: System.IO.Compression.dll => 0x57261233 => 111
	i32 1469204771, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 36
	i32 1530772511, ; 75: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 8
	i32 1543031311, ; 76: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 103
	i32 1550322496, ; 77: System.Reflection.Extensions.dll => 0x5c680b40 => 4
	i32 1582372066, ; 78: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 51
	i32 1592978981, ; 79: System.Runtime.Serialization.dll => 0x5ef2ee25 => 5
	i32 1622152042, ; 80: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 65
	i32 1624863272, ; 81: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 84
	i32 1636350590, ; 82: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 49
	i32 1639515021, ; 83: System.Net.Http.dll => 0x61b9038d => 3
	i32 1639986890, ; 84: System.Text.RegularExpressions => 0x61c036ca => 103
	i32 1657153582, ; 85: System.Runtime => 0x62c6282e => 30
	i32 1658241508, ; 86: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 78
	i32 1658251792, ; 87: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 89
	i32 1670060433, ; 88: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 46
	i32 1677501392, ; 89: System.Net.Primitives.dll => 0x63fca3d0 => 99
	i32 1701541528, ; 90: System.Diagnostics.Debug.dll => 0x656b7698 => 98
	i32 1722051300, ; 91: SkiaSharp.Views.Forms => 0x66a46ae4 => 25
	i32 1724472758, ; 92: SkiaSharp.Extended => 0x66c95db6 => 22
	i32 1726116996, ; 93: System.Reflection.dll => 0x66e27484 => 95
	i32 1729485958, ; 94: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 42
	i32 1746316138, ; 95: Mono.Android.Export => 0x6816ab6a => 16
	i32 1765942094, ; 96: System.Reflection.Extensions => 0x6942234e => 4
	i32 1766324549, ; 97: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 77
	i32 1776026572, ; 98: System.Core.dll => 0x69dc03cc => 26
	i32 1788241197, ; 99: Xamarin.AndroidX.Fragment => 0x6a96652d => 54
	i32 1793089559, ; 100: FFImageLoading.Forms.dll => 0x6ae06017 => 7
	i32 1808609942, ; 101: Xamarin.AndroidX.Loader => 0x6bcd3296 => 65
	i32 1813201214, ; 102: Xamarin.Google.Android.Material => 0x6c13413e => 89
	i32 1818569960, ; 103: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 71
	i32 1828688058, ; 104: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 14
	i32 1840964413, ; 105: FFImageLoading.Forms => 0x6dbae33d => 7
	i32 1878053835, ; 106: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 88
	i32 1885316902, ; 107: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 39
	i32 1900610850, ; 108: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 109: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 68
	i32 2019465201, ; 110: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 63
	i32 2055257422, ; 111: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 60
	i32 2066383596, ; 112: FFImageLoading.Svg.Platform => 0x7b2a82ec => 11
	i32 2079903147, ; 113: System.Runtime.dll => 0x7bf8cdab => 30
	i32 2090596640, ; 114: System.Numerics.Vectors => 0x7c9bf920 => 29
	i32 2097448633, ; 115: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 56
	i32 2126786730, ; 116: Xamarin.Forms.Platform.Android => 0x7ec430aa => 86
	i32 2192057212, ; 117: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 14
	i32 2193016926, ; 118: System.ObjectModel.dll => 0x82b6c85e => 105
	i32 2201231467, ; 119: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 120: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 80
	i32 2244775296, ; 121: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 66
	i32 2256548716, ; 122: Xamarin.AndroidX.MultiDex => 0x8680336c => 68
	i32 2261435625, ; 123: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 58
	i32 2279755925, ; 124: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 74
	i32 2315684594, ; 125: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 34
	i32 2340826669, ; 126: FFImageLoading.dll => 0x8b862e2d => 6
	i32 2353062107, ; 127: System.Net.Primitives => 0x8c40e0db => 99
	i32 2409053734, ; 128: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 72
	i32 2454642406, ; 129: System.Text.Encoding.dll => 0x924edee6 => 102
	i32 2465532216, ; 130: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 45
	i32 2471841756, ; 131: netstandard.dll => 0x93554fdc => 107
	i32 2475788418, ; 132: Java.Interop.dll => 0x93918882 => 13
	i32 2501346920, ; 133: System.Data.DataSetExtensions => 0x95178668 => 110
	i32 2505896520, ; 134: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 62
	i32 2581819634, ; 135: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 81
	i32 2620871830, ; 136: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 49
	i32 2624644809, ; 137: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 53
	i32 2633051222, ; 138: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 61
	i32 2693849962, ; 139: System.IO.dll => 0xa090e36a => 97
	i32 2701096212, ; 140: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 78
	i32 2712960405, ; 141: XamarinXMvvm.Core => 0xa1b47d95 => 91
	i32 2715334215, ; 142: System.Threading.Tasks.dll => 0xa1d8b647 => 96
	i32 2732626843, ; 143: Xamarin.AndroidX.Activity => 0xa2e0939b => 33
	i32 2737747696, ; 144: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 36
	i32 2766581644, ; 145: Xamarin.Forms.Core => 0xa4e6af8c => 85
	i32 2778768386, ; 146: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 83
	i32 2795602088, ; 147: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 24
	i32 2810250172, ; 148: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 47
	i32 2819470561, ; 149: System.Xml.dll => 0xa80db4e1 => 31
	i32 2819531718, ; 150: XamarinXMvvm.Core.dll => 0xa80ea3c6 => 91
	i32 2833695062, ; 151: XamarinXMvvm.UI => 0xa8e6c156 => 92
	i32 2842369275, ; 152: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 8
	i32 2853208004, ; 153: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 83
	i32 2854551965, ; 154: SkiaSharp.Extended.Svg => 0xaa25019d => 23
	i32 2855708567, ; 155: Xamarin.AndroidX.Transition => 0xaa36a797 => 79
	i32 2861098320, ; 156: Mono.Android.Export.dll => 0xaa88e550 => 16
	i32 2873222696, ; 157: FFImageLoading => 0xab41e628 => 6
	i32 2901442782, ; 158: System.Reflection => 0xacf080de => 95
	i32 2903344695, ; 159: System.ComponentModel.Composition => 0xad0d8637 => 113
	i32 2905242038, ; 160: mscorlib.dll => 0xad2a79b6 => 17
	i32 2912489636, ; 161: SkiaSharp.Views.Android => 0xad9910a4 => 24
	i32 2916838712, ; 162: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 84
	i32 2919462931, ; 163: System.Numerics.Vectors.dll => 0xae037813 => 29
	i32 2921128767, ; 164: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 35
	i32 2974793899, ; 165: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 25
	i32 2978675010, ; 166: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 52
	i32 3024354802, ; 167: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 57
	i32 3044182254, ; 168: FormsViewGroup => 0xb57288ee => 12
	i32 3057625584, ; 169: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 69
	i32 3075834255, ; 170: System.Threading.Tasks => 0xb755818f => 96
	i32 3111772706, ; 171: System.Runtime.Serialization => 0xb979e222 => 5
	i32 3204380047, ; 172: System.Data.dll => 0xbefef58f => 108
	i32 3211777861, ; 173: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 51
	i32 3220365878, ; 174: System.Threading => 0xbff2e236 => 100
	i32 3247949154, ; 175: Mono.Security => 0xc197c562 => 115
	i32 3258312781, ; 176: Xamarin.AndroidX.CardView => 0xc235e84d => 42
	i32 3267021929, ; 177: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 40
	i32 3299363146, ; 178: System.Text.Encoding => 0xc4a8494a => 102
	i32 3317135071, ; 179: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 50
	i32 3317144872, ; 180: System.Data => 0xc5b79d28 => 108
	i32 3340387945, ; 181: SkiaSharp => 0xc71a4669 => 21
	i32 3340431453, ; 182: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 39
	i32 3346324047, ; 183: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 70
	i32 3353484488, ; 184: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 56
	i32 3362522851, ; 185: Xamarin.AndroidX.Core => 0xc86c06e3 => 48
	i32 3366347497, ; 186: Java.Interop => 0xc8a662e9 => 13
	i32 3374999561, ; 187: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 74
	i32 3404865022, ; 188: System.ServiceModel.Internals => 0xcaf21dfe => 93
	i32 3429136800, ; 189: System.Xml => 0xcc6479a0 => 31
	i32 3430777524, ; 190: netstandard => 0xcc7d82b4 => 107
	i32 3441283291, ; 191: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 53
	i32 3476120550, ; 192: Mono.Android => 0xcf3163e6 => 15
	i32 3486566296, ; 193: System.Transactions => 0xcfd0c798 => 109
	i32 3493954962, ; 194: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 44
	i32 3501239056, ; 195: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 40
	i32 3509114376, ; 196: System.Xml.Linq => 0xd128d608 => 32
	i32 3536029504, ; 197: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 86
	i32 3567349600, ; 198: System.ComponentModel.Composition.dll => 0xd4a16f60 => 113
	i32 3608519521, ; 199: System.Linq.dll => 0xd715a361 => 104
	i32 3618140916, ; 200: Xamarin.AndroidX.Preference => 0xd7a872f4 => 72
	i32 3624345935, ; 201: MvvmCross => 0xd807214f => 18
	i32 3627220390, ; 202: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 73
	i32 3632359727, ; 203: Xamarin.Forms.Platform => 0xd881692f => 87
	i32 3633644679, ; 204: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 35
	i32 3641597786, ; 205: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 60
	i32 3672681054, ; 206: Mono.Android.dll => 0xdae8aa5e => 15
	i32 3676310014, ; 207: System.Web.Services.dll => 0xdb2009fe => 114
	i32 3682565725, ; 208: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 41
	i32 3684561358, ; 209: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 44
	i32 3689375977, ; 210: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3718780102, ; 211: Xamarin.AndroidX.Annotation => 0xdda814c6 => 34
	i32 3724971120, ; 212: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 69
	i32 3758932259, ; 213: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 58
	i32 3786282454, ; 214: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 43
	i32 3822602673, ; 215: Xamarin.AndroidX.Media => 0xe3d849b1 => 67
	i32 3829621856, ; 216: System.Numerics.dll => 0xe4436460 => 28
	i32 3885922214, ; 217: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 79
	i32 3896760992, ; 218: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 48
	i32 3912468689, ; 219: FFImageLoading.Svg.Platform.dll => 0xe93388d1 => 11
	i32 3920810846, ; 220: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 112
	i32 3921031405, ; 221: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 82
	i32 3931092270, ; 222: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 71
	i32 3945713374, ; 223: System.Data.DataSetExtensions.dll => 0xeb2ecede => 110
	i32 3955647286, ; 224: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 37
	i32 4073602200, ; 225: System.Threading.dll => 0xf2ce3c98 => 100
	i32 4105002889, ; 226: Mono.Security.dll => 0xf4ad5f89 => 115
	i32 4151237749, ; 227: System.Core => 0xf76edc75 => 26
	i32 4182413190, ; 228: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 64
	i32 4184283386, ; 229: FFImageLoading.Platform.dll => 0xf96718fa => 9
	i32 4218420098, ; 230: MvvmCross.Forms.dll => 0xfb6ffb82 => 19
	i32 4292120959 ; 231: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 64
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [232 x i32] [
	i32 62, i32 90, i32 20, i32 85, i32 76, i32 76, i32 43, i32 77, ; 0..7
	i32 41, i32 98, i32 0, i32 57, i32 106, i32 114, i32 46, i32 61, ; 8..15
	i32 55, i32 33, i32 28, i32 59, i32 22, i32 45, i32 94, i32 54, ; 16..23
	i32 17, i32 27, i32 55, i32 66, i32 105, i32 9, i32 21, i32 109, ; 24..31
	i32 101, i32 19, i32 10, i32 112, i32 50, i32 23, i32 82, i32 38, ; 32..39
	i32 32, i32 111, i32 1, i32 73, i32 10, i32 18, i32 106, i32 92, ; 40..47
	i32 90, i32 20, i32 59, i32 12, i32 94, i32 75, i32 37, i32 87, ; 48..55
	i32 63, i32 27, i32 80, i32 70, i32 38, i32 81, i32 0, i32 52, ; 56..63
	i32 104, i32 97, i32 93, i32 75, i32 2, i32 67, i32 47, i32 101, ; 64..71
	i32 88, i32 111, i32 36, i32 8, i32 103, i32 4, i32 51, i32 5, ; 72..79
	i32 65, i32 84, i32 49, i32 3, i32 103, i32 30, i32 78, i32 89, ; 80..87
	i32 46, i32 99, i32 98, i32 25, i32 22, i32 95, i32 42, i32 16, ; 88..95
	i32 4, i32 77, i32 26, i32 54, i32 7, i32 65, i32 89, i32 71, ; 96..103
	i32 14, i32 7, i32 88, i32 39, i32 2, i32 68, i32 63, i32 60, ; 104..111
	i32 11, i32 30, i32 29, i32 56, i32 86, i32 14, i32 105, i32 3, ; 112..119
	i32 80, i32 66, i32 68, i32 58, i32 74, i32 34, i32 6, i32 99, ; 120..127
	i32 72, i32 102, i32 45, i32 107, i32 13, i32 110, i32 62, i32 81, ; 128..135
	i32 49, i32 53, i32 61, i32 97, i32 78, i32 91, i32 96, i32 33, ; 136..143
	i32 36, i32 85, i32 83, i32 24, i32 47, i32 31, i32 91, i32 92, ; 144..151
	i32 8, i32 83, i32 23, i32 79, i32 16, i32 6, i32 95, i32 113, ; 152..159
	i32 17, i32 24, i32 84, i32 29, i32 35, i32 25, i32 52, i32 57, ; 160..167
	i32 12, i32 69, i32 96, i32 5, i32 108, i32 51, i32 100, i32 115, ; 168..175
	i32 42, i32 40, i32 102, i32 50, i32 108, i32 21, i32 39, i32 70, ; 176..183
	i32 56, i32 48, i32 13, i32 74, i32 93, i32 31, i32 107, i32 53, ; 184..191
	i32 15, i32 109, i32 44, i32 40, i32 32, i32 86, i32 113, i32 104, ; 192..199
	i32 72, i32 18, i32 73, i32 87, i32 35, i32 60, i32 15, i32 114, ; 200..207
	i32 41, i32 44, i32 1, i32 34, i32 69, i32 58, i32 43, i32 67, ; 208..215
	i32 28, i32 79, i32 48, i32 11, i32 112, i32 82, i32 71, i32 110, ; 216..223
	i32 37, i32 100, i32 115, i32 26, i32 64, i32 9, i32 19, i32 64 ; 232..231
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
