; ModuleID = 'pp-dasm output'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%_TYPEDEF_sigset_t = type { [1 x i32] }
%timespec = type { i64, i32 }
%tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%sigaction = type { void (i32)*, i32, void ()*, %_TYPEDEF_sigset_t }
%_IO_FILE = type { i32 }
%__dirstream = type { i32 }
%stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%option = type { i8*, i32, i32*, i32 }
%timeval = type { i64, i64 }
%dirent = type { i32, i32, i16, i8, [256 x i8] }
%z_stream_s = type { i64*, i32, i32, i8*, i32, i32, i8*, %internal_state*, i64* (i64*, i32, i32)*, void (i64*, i64*)*, i64*, i32, i32, i32 }
%internal_state = type { i32 }

@global_var_215fd0 = global i64 0
@global_var_215d58 = global i64 0
@global_var_215d60 = global i64 0
@global_var_216560 = global i64 0
@global_var_215fc0 = global i64 0
@global_var_215fd8 = global i64 0
@global_var_215fe0 = global i64 0
@global_var_21a420 = global i64 0
@global_var_25f4e0 = global i64 0
@global_var_24a8a0 = global i64 0
@global_var_10d84 = constant [15 x i8] c"bad pack level\00"
@global_var_22a880 = global i64 0
@global_var_2165b8 = global i64 0
@global_var_216042 = global i64 1125899906842624
@global_var_216040 = global i64 0
@global_var_216044 = global i64 1125917086711808
@global_var_216046 = global i64 2251816993816576
@global_var_21a428 = global i64 0
@global_var_21a430 = global i64 0
@global_var_24f4c0 = global i64 0
@global_var_21a52a = global i64 0
@global_var_21a880 = global i64 0
@global_var_2574c0 = global i64 0
@global_var_1000 = global [2 x i8] c"\08\00"
@global_var_21e598 = global i64 0
@global_var_10fc8 = constant [39 x i8] c"Try `%s --help' for more information.\0A\00"
@global_var_11b08 = constant [68 x i8] c"Compress or uncompress FILEs (by default, compress FILES in-place).\00"
@global_var_11b50 = constant [73 x i8] c"Mandatory arguments to long options are mandatory for short options too.\00"
@global_var_11ba0 = constant [76 x i8] c"  -c, --stdout      write on standard output, keep original files unchanged\00"
@global_var_11bf0 = constant [31 x i8] c"  -d, --decompress  decompress\00"
@global_var_11c10 = constant [70 x i8] c"  -f, --force       force overwrite of output file and compress links\00"
@global_var_11c58 = constant [35 x i8] c"  -h, --help        give this help\00"
@global_var_11c80 = constant [52 x i8] c"  -k, --keep        keep (don't delete) input files\00"
@global_var_11cb8 = constant [50 x i8] c"  -l, --list        list compressed file contents\00"
@global_var_11cf0 = constant [45 x i8] c"  -L, --license     display software license\00"
@global_var_11d20 = constant [75 x i8] c"  -n, --no-name     do not save or restore the original name and timestamp\00"
@global_var_11d70 = constant [68 x i8] c"  -N, --name        save or restore the original name and timestamp\00"
@global_var_11db8 = constant [42 x i8] c"  -q, --quiet       suppress all warnings\00"
@global_var_11de8 = constant [55 x i8] c"  -r, --recursive   operate recursively on directories\00"
@global_var_11e20 = constant [48 x i8] c"      --rsyncable   make rsync-friendly archive\00"
@global_var_11e50 = constant [55 x i8] c"  -S, --suffix=SUF  use suffix SUF on compressed files\00"
@global_var_11e88 = constant [77 x i8] c"      --synchronous synchronous output (safer if system crashes, but slower)\00"
@global_var_11ed8 = constant [51 x i8] c"  -t, --test        test compressed file integrity\00"
@global_var_11f10 = constant [33 x i8] c"  -v, --verbose     verbose mode\00"
@global_var_11f38 = constant [43 x i8] c"  -V, --version     display version number\00"
@global_var_11f68 = constant [36 x i8] c"  -1, --fast        compress faster\00"
@global_var_11f90 = constant [36 x i8] c"  -9, --best        compress better\00"
@global_var_11fb8 = constant [54 x i8] c"With no FILE, or when FILE is -, read standard input.\00"
@global_var_11ff0 = constant [35 x i8] c"Report bugs to <bug-gzip@gnu.org>.\00"
@global_var_215a20 = global [27 x i8*] [i8* getelementptr inbounds ([68 x i8]* @global_var_11b08, i32 0, i32 0), i8* bitcast (i64* @global_var_114ff to i8*), i8* getelementptr inbounds ([73 x i8]* @global_var_11b50, i32 0, i32 0), i8* bitcast (i64* @global_var_114ff to i8*), i8* getelementptr inbounds ([76 x i8]* @global_var_11ba0, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @global_var_11bf0, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @global_var_11c10, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8]* @global_var_11c58, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8]* @global_var_11c80, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8]* @global_var_11cb8, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @global_var_11cf0, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8]* @global_var_11d20, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @global_var_11d70, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8]* @global_var_11db8, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8]* @global_var_11de8, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8]* @global_var_11e20, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8]* @global_var_11e50, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8]* @global_var_11e88, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8]* @global_var_11ed8, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @global_var_11f10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8]* @global_var_11f38, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @global_var_11f68, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @global_var_11f90, i32 0, i32 0), i8* bitcast (i64* @global_var_114ff to i8*), i8* getelementptr inbounds ([54 x i8]* @global_var_11fb8, i32 0, i32 0), i8* bitcast (i64* @global_var_114ff to i8*), i8* getelementptr inbounds ([35 x i8]* @global_var_11ff0, i32 0, i32 0)]
@global_var_10ff0 = constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00"
@global_var_10da0 = constant [50 x i8] c"Copyright (C) 2018 Free Software Foundation, Inc.\00"
@global_var_10dd8 = constant [37 x i8] c"Copyright (C) 1993 Jean-loup Gailly.\00"
@global_var_10e00 = constant [77 x i8] c"This is free software.  You may redistribute copies of it under the terms of\00"
@global_var_10e50 = constant [72 x i8] c"the GNU General Public License <https://www.gnu.org/licenses/gpl.html>.\00"
@global_var_10e98 = constant [54 x i8] c"There is NO WARRANTY, to the extent permitted by law.\00"
@global_var_215680 = global [5 x i8*] [i8* getelementptr inbounds ([50 x i8]* @global_var_10da0, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @global_var_10dd8, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8]* @global_var_10e00, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @global_var_10e50, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8]* @global_var_10e98, i32 0, i32 0)]
@global_var_12d11 = constant [5 x i8] c"1.10\00"
@global_var_216558 = global [5 x i8]* @global_var_12d11
@global_var_11011 = constant [7 x i8] c"%s %s\0A\00"
@global_var_11018 = constant [29 x i8] c"Written by Jean-loup Gailly.\00"
@global_var_11035 = constant [5 x i8] c"%s: \00"
@global_var_1103a = constant [5 x i8] c".exe\00"
@global_var_1103f = constant [5 x i8] c"GZIP\00"
@global_var_216628 = global i64 0
@global_var_11044 = constant [4 x i8] c".gz\00"
@global_var_10f02 = constant [6 x i8] c"ascii\00"
@global_var_2156c0 = global [6 x i8]* @global_var_10f02
@global_var_10ee0 = constant [34 x i8] c"ab:cdfhH?klLmMnNqrS:tvVZ123456789\00"
@global_var_11050 = constant [49 x i8] c"%s: %s: non-option in GZIP environment variable\0A\00"
@global_var_11088 = constant [78 x i8] c"%s: warning: GZIP environment variable is deprecated; use an alias or script\0A\00"
@global_var_111ac = constant i64 -227822245302069
@global_var_110d8 = constant [34 x i8] c"%s: -b operand is not an integer\0A\00"
@global_var_11100 = constant [38 x i8] c"%s: -Z not supported in this version\0A\00"
@global_var_11126 = constant [6 x i8] c"-%c: \00"
@global_var_1112c = constant [7 x i8] c"--%s: \00"
@global_var_11138 = constant [47 x i8] c"option not valid in GZIP environment variable\0A\00"
@global_var_11168 = constant [43 x i8] c"%s: option --ascii ignored on this system\0A\00"
@global_var_11193 = constant [25 x i8] c"%s: invalid suffix '%s'\0A\00"
@global_var_2160d0 = global i64 58548
@global_var_21a464 = global i64 0
@global_var_24a890 = global i64 0
@global_var_25f4d8 = global i64 0
@global_var_216f30 = global i64 0
@global_var_114fc = constant [3 x i8] c"de\00"
@global_var_11500 = constant [10 x i8] c"read from\00"
@global_var_1150a = constant [11 x i8] c"written to\00"
@global_var_11518 = constant [93 x i8] c"%s: compressed data not %s a terminal. Use -f to force %scompression.\0AFor help, type: %s -h\0A\00"
@global_var_24f0c4 = global i64 0
@global_var_24f0c6 = global i64 0
@global_var_11575 = constant [15 x i8] c"standard input\00"
@global_var_21609c = global [2 x i8] c"\08\00"
@global_var_11584 = constant [5 x i8] c" OK\0A\00"
@global_var_267540 = global i64 0
@global_var_11589 = constant [3 x i8] c".-\00"
@global_var_216b00 = global i64 0
@global_var_1158a = constant [2 x i8] c"-\00"
@global_var_11590 = constant [34 x i8] c"%s: %s is a directory -- ignored\0A\00"
@global_var_115b8 = constant [55 x i8] c"%s: %s is not a directory or a regular file - ignored\0A\00"
@global_var_115f0 = constant [46 x i8] c"%s: %s is set-user-ID on execution - ignored\0A\00"
@global_var_11620 = constant [47 x i8] c"%s: %s is set-group-ID on execution - ignored\0A\00"
@global_var_11650 = constant [46 x i8] c"%s: %s has the sticky bit set - file ignored\0A\00"
@global_var_216f10 = global i64 0
@global_var_11680 = constant [42 x i8] c"%s: %s has %lu other link%c -- unchanged\0A\00"
@global_var_116aa = constant [25 x i8] c"%s: %s compressed to %s\0A\00"
@global_var_116c3 = constant [5 x i8] c"%s:\09\00"
@global_var_116c8 = constant [4 x i8] c" OK\00"
@global_var_116cc = constant [8 x i8] c"created\00"
@global_var_116d4 = constant [14 x i8] c"replaced with\00"
@global_var_116e2 = constant [10 x i8] c" -- %s %s\00"
@global_var_2166e0 = global i64 0
@global_var_116f0 = constant [33 x i8] c"%s: %s: warning, name truncated\0A\00"
@global_var_12013 = constant [3 x i8] c".z\00"
@global_var_11758 = constant [5 x i8] c".taz\00"
@global_var_11753 = constant [5 x i8] c".tgz\00"
@global_var_12016 = constant [4 x i8] c"-gz\00"
@global_var_1201a = constant [3 x i8] c"-z\00"
@global_var_1201d = constant [3 x i8] c"_z\00"
@global_var_2160e8 = global [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @global_var_11044, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @global_var_12013, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @global_var_11758, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @global_var_11753, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @global_var_12016, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @global_var_1201a, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @global_var_1201d, i32 0, i32 0)]
@global_var_2160e0 = global i64 0
@global_var_216140 = global i64 0
@global_var_12020 = constant [3 x i8] c".Z\00"
@global_var_216148 = global [4 x i8*] [i8* getelementptr inbounds ([4 x i8]* @global_var_11044, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @global_var_12013, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @global_var_1201a, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @global_var_12020, i32 0, i32 0)]
@global_var_11711 = constant [28 x i8] c"%s: %s: file name too long\0A\00"
@global_var_11730 = constant [35 x i8] c"%s: %s: unknown suffix -- ignored\0A\00"
@global_var_11760 = constant [43 x i8] c"%s: %s already has %s suffix -- unchanged\0A\00"
@global_var_25f500 = global i64 0
@global_var_1178b = constant i64 679124962079
@global_var_1178e = constant i64 40479
@global_var_11798 = constant [44 x i8] c"%s: %s: unknown method %d -- not supported\0A\00"
@global_var_117c8 = constant [38 x i8] c"%s: %s is encrypted -- not supported\0A\00"
@global_var_117f0 = constant [40 x i8] c"%s: %s has flags 0x%x -- not supported\0A\00"
@global_var_11818 = constant [50 x i8] c"%s: %s: MTIME %lu out of range for this platform\0A\00"
@global_var_11850 = constant [41 x i8] c"%s: %s: extra field of %u bytes ignored\0A\00"
@global_var_11880 = constant [39 x i8] c"corrupted input -- file name too large\00"
@global_var_118a8 = constant [60 x i8] c"%s: %s: header checksum 0x%04x != computed checksum 0x%04x\0A\00"
@global_var_118e4 = constant i64 8478334229105488
@global_var_118e9 = constant i64 -6908802628533084641
@global_var_118ec = constant i64 2668946416885341471
@global_var_118ef = constant i64 2322295160781709343
@global_var_118f2 = constant [29 x i8] c"\0A%s: %s: not in gzip format\0A\00"
@global_var_11910 = constant [56 x i8] c"\0A%s: %s: decompression OK, trailing zero bytes ignored\0A\00"
@global_var_11948 = constant [53 x i8] c"\0A%s: %s: decompression OK, trailing garbage ignored\0A\00"
@global_var_1197d = constant [29 x i8] c"method  crc     date  time  \00"
@global_var_119ce = constant [13 x i8] c"uncompressed\00"
@global_var_1199a = constant [11 x i8] c"compressed\00"
@global_var_119a8 = constant [38 x i8] c"%*.*s %*.*s  ratio uncompressed_name\0A\00"
@global_var_216ae8 = global i64 0
@global_var_216af0 = global i64 0
@global_var_119db = constant [29 x i8] c"                            \00"
@global_var_119f8 = constant [10 x i8] c" (totals)\00"
@global_var_12023 = constant [6 x i8] c"store\00"
@global_var_12029 = constant [6 x i8] c"compr\00"
@global_var_1202f = constant [6 x i8] c"pack \00"
@global_var_12035 = constant [6 x i8] c"lzh  \00"
@global_var_1203b = constant [6 x i8] c"defla\00"
@global_var_215b00 = global [9 x i8*] [i8* getelementptr inbounds ([6 x i8]* @global_var_12023, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @global_var_12029, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @global_var_1202f, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @global_var_12035, i32 0, i32 0), i8* bitcast (i64* @global_var_114ff to i8*), i8* bitcast (i64* @global_var_114ff to i8*), i8* bitcast (i64* @global_var_114ff to i8*), i8* bitcast (i64* @global_var_114ff to i8*), i8* getelementptr inbounds ([6 x i8]* @global_var_1203b, i32 0, i32 0)]
@global_var_11a02 = constant [11 x i8] c"%5s %08lx \00"
@global_var_12060 = constant [4 x i8] c"Jan\00"
@global_var_11a0d = constant [17 x i8] c"%s%3d %02d:%02d \00"
@global_var_11a1e = constant [14 x i8] c"??? ?? ??:?? \00"
@global_var_11a2c = constant [5 x i8] c" %s\0A\00"
@global_var_11a31 = constant [15 x i8] c"name too short\00"
@global_var_11a40 = constant [22 x i8] c"can't recover suffix\0A\00"
@global_var_11a56 = constant [5 x i8] c".tar\00"
@global_var_11a5b = constant [2 x i8] c".\00"
@global_var_11a60 = constant [31 x i8] c"internal error in shorten_name\00"
@global_var_11a7f = constant [23 x i8] c"%s: %s already exists;\00"
@global_var_11a98 = constant [37 x i8] c" do you wish to overwrite (y or n)? \00"
@global_var_11abd = constant [18 x i8] c"\09not overwritten\0A\00"
@global_var_11acf = constant [24 x i8] c"%s: timestamp restored\0A\00"
@global_var_11ae7 = constant [3 x i8] c"..\00"
@global_var_11aea = constant [30 x i8] c"%s: %s/%s: pathname too long\0A\00"
@global_var_2160b0 = global i64 4294967298
@global_var_216648 = global i64 0
@global_var_216650 = global i64 0
@global_var_216658 = global i64 0
@global_var_216660 = global i64 0
@global_var_216668 = global i64 0
@global_var_216670 = global i64 0
@global_var_216678 = global i64 0
@global_var_216680 = global i64 0
@global_var_216688 = global i64 0
@global_var_216690 = global i64 0
@global_var_216698 = global i64 0
@global_var_2166a0 = global i64 0
@global_var_2166a8 = global i64 0
@global_var_2166b0 = global i64 0
@global_var_2166b8 = global i64 0
@global_var_2162e0 = global i64 1970337721942016
@global_var_216220 = global i64 0
@global_var_2161e0 = global i64 1688871335362563
@global_var_2162a0 = global i64 0
@global_var_216260 = global i64 1125912791875585
@global_var_216180 = global i64 73014444048
@global_var_216304 = global [2 x i8] c"\09\00"
@global_var_12090 = constant [44 x i8] c"output in compress .Z format not supported\0A\00"
@global_var_219ef8 = global i64 0
@global_var_219ee8 = global i64 0
@global_var_218dc0 = global i64 0
@global_var_218ac0 = global i64 0
@global_var_216320 = global i64 0
@global_var_218e40 = global i64 0
@global_var_218bc0 = global i64 0
@global_var_2163a0 = global i64 0
@global_var_217f60 = global i64 0
@global_var_2179c2 = global i64 0
@global_var_2179c0 = global i64 0
@global_var_217e40 = global i64 0
@global_var_216fc0 = global i64 0
@global_var_2178c0 = global i64 0
@global_var_217ec0 = global i64 0
@global_var_2173c0 = global i64 0
@global_var_219ed8 = global i64 0
@global_var_219ed0 = global i64 0
@global_var_217f80 = global i64 0
@global_var_218880 = global i64 0
@global_var_23c = constant [24 x i8] c"64/ld-linux-x86-64.so.2\00"
@global_var_23d = constant [23 x i8] c"4/ld-linux-x86-64.so.2\00"
@global_var_217ec2 = global i64 0
@global_var_216520 = global i64* @global_var_217ec0
@global_var_216470 = global i64 434886569960280336
@global_var_218ec0 = global i64 0
@global_var_23a880 = global i64 0
@global_var_fff = global i64* @global_var_800
@global_var_120bc = constant [11 x i8] c"Bad table\0A\00"
@global_var_219f00 = global i64 0
@global_var_219f40 = global i64 0
@global_var_120c8 = constant [38 x i8] c"\0A%s: %s: warning, unknown flags 0x%x\0A\00"
@global_var_120f0 = constant [59 x i8] c"\0A%s: %s: compressed with %d bits, can only handle %d bits\0A\00"
@global_var_1212b = constant [15 x i8] c"corrupt input.\00"
@global_var_24a87e = global i64 0
@global_var_12140 = constant [46 x i8] c"corrupt input. Use zcat to recover some data.\00"
@global_var_12170 = constant [50 x i8] c"invalid compressed data -- unexpected end of file\00"
@global_var_21a160 = global i64 0
@global_var_121a8 = constant [64 x i8] c"invalid compressed data -- Huffman code bit length out of range\00"
@global_var_21a300 = global i64 0
@global_var_121e8 = constant [32 x i8] c"too many leaves in Huffman tree\00"
@global_var_21a280 = global i64 0
@global_var_21a180 = global i64 0
@global_var_21a380 = global i64 0
@global_var_12208 = constant [31 x i8] c"too few leaves in Huffman tree\00"
@global_var_12228 = constant [38 x i8] c"invalid compressed data--length error\00"
@global_var_12250 = constant [31 x i8] c"\0A%s: %s: not a valid zip file\0A\00"
@global_var_12270 = constant [58 x i8] c"\0A%s: %s: first entry not deflated or stored -- use unzip\0A\00"
@global_var_122b0 = constant [38 x i8] c"\0A%s: %s: encrypted file -- use unzip\0A\00"
@global_var_122d8 = constant [41 x i8] c"invalid compressed data--format violated\00"
@global_var_12301 = constant [18 x i8] c"len %lu, siz %lu\0A\00"
@global_var_12318 = constant [41 x i8] c"invalid compressed data--length mismatch\00"
@global_var_12348 = constant [31 x i8] c"internal error, invalid method\00"
@global_var_12368 = constant [45 x i8] c"\0A%s: %s: invalid compressed data--crc error\0A\00"
@global_var_12398 = constant [48 x i8] c"\0A%s: %s: invalid compressed data--length error\0A\00"
@global_var_24a886 = global i64 0
@global_var_24a887 = global i64 0
@global_var_123c8 = constant [46 x i8] c"%s: %s has more than one entry--rest ignored\0A\00"
@global_var_123f8 = constant [45 x i8] c"%s: %s has more than one entry -- unchanged\0A\00"
@global_var_12440 = constant i64 0
@global_var_12c40 = constant [3 x i8] c" \09\00"
@global_var_12c43 = constant [13 x i8] c"\0A%s: %s: %s\0A\00"
@global_var_12c50 = constant [23 x i8] c"\0A%s: memory_exhausted\0A\00"
@global_var_12c67 = constant [21 x i8] c"%s: %s: warning: %s\0A\00"
@global_var_12c7c = constant [6 x i8] c"\0A%s: \00"
@global_var_12c82 = constant [28 x i8] c"%s: unexpected end of file\0A\00"
@global_var_12ca8 = constant i64 4636737291354636288
@global_var_12cb0 = constant i64 0
@global_var_12c9e = constant [8 x i8] c"%5.1f%%\00"
@global_var_12cb8 = constant [44 x i8] c"file timestamp out of range for gzip format\00"
@global_var_12ce8 = constant [41 x i8] c"%s: %s: file size changed while zipping\0A\00"
@global_var_215b50 = global i64 0
@global_var_215670 = global i64 9568
@global_var_215678 = global i64 9504
@0 = external global i64
@global_var_216588 = global i64 0
@global_var_21658c = global i64 0
@global_var_216590 = global i64 0
@global_var_216594 = global i64 0
@global_var_25f4e1 = global i64 0
@global_var_2165a8 = global i64 0
@global_var_2165b0 = global i64 0
@global_var_2165a4 = global i64 0
@global_var_21a438 = global i64 0
@global_var_2165c0 = global i64 0
@global_var_21a43c = global i64 0
@global_var_2165a0 = global i64 0
@global_var_21659c = global i64 0
@global_var_216598 = global i64 0
@global_var_21a440 = global i64 0
@global_var_21a444 = global i64 0
@global_var_216020 = global i64 65536
@global_var_21a42a = global i64 0
@global_var_2165f4 = global i64 0
@global_var_21a429 = global i64 0
@global_var_21a441 = global i64 0
@global_var_25f4c8 = global i64 0
@global_var_216580 = global i64 0
@global_var_114ff = constant i64 8243311783451128320
@global_var_2165f0 = global i64 0
@global_var_216630 = global i64 0
@global_var_216638 = global i64 0
@global_var_216568 = global i64 0
@global_var_11048 = constant i64 11565
@global_var_2165e8 = global i64 0
@global_var_216094 = global i64 73014444031
@global_var_2165fc = global i64 0
@global_var_216570 = global i64 0
@global_var_216098 = global i64 34359738384
@global_var_2165e0 = global i64 0
@global_var_216600 = global i64 0
@global_var_216604 = global i64 0
@global_var_216605 = global i64 0
@global_var_216608 = global i64 0
@global_var_216610 = global i64 0
@global_var_216090 = global i64 -1
@global_var_2165f8 = global i64 0
@global_var_2165e4 = global i64 0
@global_var_21660c = global i64 0
@global_var_2165f9 = global i64 0
@global_var_2165ec = global i64 0
@global_var_2165e5 = global i64 0
@global_var_2160a0 = global i64 -4294967290
@global_var_216614 = global i64 0
@global_var_2166c0 = global i64 0
@global_var_216569 = global i64 0
@global_var_216ae0 = global i64 0
@global_var_21a460 = global i64 0
@global_var_21661c = global i64 0
@global_var_24a884 = global i64 0
@global_var_25f4e4 = global i64 0
@global_var_216f18 = global i64 0
@global_var_216f00 = global i64 0
@global_var_25f4d0 = global i64 0
@global_var_24f0c0 = global i64 0
@global_var_216620 = global i64 0
@global_var_24f0a0 = global i64 0
@global_var_25f4c0 = global i64 0
@global_var_21a860 = global i64 0
@global_var_2160a8 = global i64 4294967295
@global_var_800 = global i64 0
@global_var_400 = global i64 0
@global_var_24a880 = global i64 0
@global_var_24a888 = global i64 0
@global_var_216640 = global i64 0
@global_var_2160a4 = global i64 -1
@global_var_900 = global i64 77309411935
@global_var_24a885 = global i64 0
@global_var_216621 = global i64 0
@global_var_24a88c = global i64 0
@global_var_2160c8 = global i64 1
@global_var_216618 = global i64 0
@global_var_216f90 = global i64 0
@global_var_216fa4 = global i64 0
@global_var_216fa7 = global i64 0
@global_var_216f98 = global i64 0
@global_var_216fa0 = global i64 0
@global_var_216308 = global i64 6
@global_var_216fa8 = global i64 0
@global_var_219ef0 = global i64 0
@global_var_219ee0 = global i64 0
@global_var_217e42 = global i64 0
@global_var_217f70 = global i64 0
@global_var_217f71 = global i64 0
@global_var_217f72 = global i64 0
@global_var_217f73 = global i64 0
@global_var_217f6e = global i64 0
@global_var_217f6f = global i64 0
@global_var_219ec8 = global i64 0
@global_var_219ec4 = global i64 0
@global_var_219ec0 = global i64 0
@global_var_219ecc = global i64 0
@global_var_219ecd = global i64 0
@global_var_218874 = global i64 0
@global_var_218878 = global i64 0
@global_var_218879 = global i64 0
@global_var_218875 = global i64 0
@global_var_217f84 = global i64 0
@global_var_218873 = global i64 0
@global_var_217f00 = global i64 0
@global_var_217f01 = global i64 0
@global_var_217f04 = global i64 0
@global_var_217f05 = global i64 0
@global_var_217f08 = global i64 0
@global_var_217f09 = global i64 0
@global_var_217f02 = global i64 0
@global_var_217f06 = global i64 0
@global_var_217f0a = global i64 0
@global_var_2164c4 = global i64 0
@global_var_216504 = global i64 0
@global_var_216505 = global i64 0
@global_var_2164c5 = global i64 0
@global_var_219ec1 = global i64 0
@global_var_219ec5 = global i64 0
@global_var_219ec9 = global i64 0
@global_var_21a140 = global i64 0
@global_var_21a144 = global i64 0
@global_var_21a148 = global i64 0
@global_var_219f20 = global i64 0
@global_var_21a14c = global i64 0
@global_var_21a150 = global i64 0
@global_var_21a154 = global i64 0
@global_var_21a155 = global i64 0
@global_var_216548 = global i64 128
@global_var_21a168 = global i64 0
@global_var_21a3e8 = global i64 0
@global_var_21a3f8 = global i64 0
@global_var_21a3f0 = global i64 0
@global_var_21a400 = global i64 0
@global_var_21a3fc = global i64 0
@global_var_21a404 = global i64 0
@global_var_25f50e = global i64 0
@global_var_25f50f = global i64 0
@global_var_25f510 = global i64 0
@global_var_25f511 = global i64 0
@global_var_25f516 = global i64 0
@global_var_25f517 = global i64 0
@global_var_25f518 = global i64 0
@global_var_25f519 = global i64 0
@global_var_25f512 = global i64 0
@global_var_25f513 = global i64 0
@global_var_25f514 = global i64 0
@global_var_25f515 = global i64 0
@global_var_216550 = global i64 4294967295
@global_var_21a408 = global i64 0
@global_var_21a410 = global i64 0
@global_var_21a414 = global i64 0
@global_var_407 = global i64 19791209304576
@global_var_406 = global i64 5066549581971456
@global_var_409 = global i64 301989888
@global_var_21a418 = global i64 0

define i64 @_init(i64 %arg1) {
block_1f70:
  %tmp11 = load i64* @global_var_215fd0
  %tmp12 = icmp eq i64 %tmp11, 0
  br i1 %tmp12, label %block_1f82, label %block_1f80

block_1f80:                                       ; preds = %block_1f70
  call void @__gmon_start__()
  br label %block_1f82

block_1f82:                                       ; preds = %block_1f80, %block_1f70
  %rax.0 = phi i64 [ 0, %block_1f70 ], [ ptrtoint (i64* @0 to i64), %block_1f80 ]
  ret i64 %rax.0
}

define i64 @function_1f90() {
block_1f90:
  %0 = alloca i64
  %1 = load i64* %0
  %tmp3 = load i64* @global_var_215d60
  %tmp4 = call i64 @__pseudo_call(i64 %tmp3)
  ret i64 %1
}

define i8* @function_1fa0(i8* %name) {
block_1fa0:
  %tmp2 = call i8* @getenv(i8* %name)
  ret i8* %tmp2
}

define i64 @function_1fa6() {
block_1fa6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_1fb0(i32 %how, %_TYPEDEF_sigset_t* %set, %_TYPEDEF_sigset_t* %oset) {
block_1fb0:
  %tmp4 = call i32 @sigprocmask(i32 %how, %_TYPEDEF_sigset_t* %set, %_TYPEDEF_sigset_t* %oset)
  ret i32 %tmp4
}

define i64 @function_1fb6() {
block_1fb6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_1fc0(i32 %sig) {
block_1fc0:
  %tmp2 = call i32 @raise(i32 %sig)
  ret i32 %tmp2
}

define i64 @function_1fc6() {
block_1fc6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define void @function_1fd0(i64* %ptr) {
block_1fd0:
  call void @free(i64* %ptr)
  ret void
}

define i64 @function_1fd6() {
block_1fd6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_1fe0(i32 %fd, i8* %path, [2 x %timespec] %times, i32 %flags) {
block_1fe0:
  %tmp5 = call i32 @utimensat(i32 %fd, i8* %path, [2 x %timespec] %times, i32 %flags)
  ret i32 %tmp5
}

define i64 @function_1fe6() {
block_1fe6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_1ff0(i32 %c) {
block_1ff0:
  %tmp2 = call i32 @putchar(i32 %c)
  ret i32 %tmp2
}

define i64 @function_1ff6() {
block_1ff6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define %tm* @function_2000(i32* %timer) {
block_2000:
  %tmp2 = call %tm* @localtime(i32* %timer)
  ret %tm* %tmp2
}

define i64 @function_2006() {
block_2006:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32* @function_2010() {
block_2010:
  %tmp1 = call i32* @__errno_location()
  ret i32* %tmp1
}

define i64 @function_2016() {
block_2016:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2020(i32 %fildes) {
block_2020:
  %tmp2 = call i32 @fdatasync(i32 %fildes)
  ret i32 %tmp2
}

define i64 @function_2026() {
block_2026:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2030(i8* %name) {
block_2030:
  %tmp2 = call i32 @unlink(i8* %name)
  ret i32 %tmp2
}

define i64 @function_2036() {
block_2036:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define void @function_2040(i32 %status) {
block_2040:
  call void @_exit(i32 %status)
  ret void
}

define i64 @function_2046() {
block_2046:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i8* @function_2050(i8* %dest, i8* %src) {
block_2050:
  %tmp3 = call i8* @strcpy(i8* %dest, i8* %src)
  ret i8* %tmp3
}

define i64 @function_2056() {
block_2056:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2060(i32 %fd, i8* %name, i32 %flag) {
block_2060:
  %tmp4 = call i32 @unlinkat(i32 %fd, i8* %name, i32 %flag)
  ret i32 %tmp4
}

define i64 @function_2066() {
block_2066:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2070(i8* %s) {
block_2070:
  %tmp2 = call i32 @puts(i8* %s)
  ret i32 %tmp2
}

define i64 @function_2076() {
block_2076:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define void @function_2080(i64* %base, i32 %nmemb, i32 %size, i32 (i64*, i64*)* %compar) {
block_2080:
  call void @qsort(i64* %base, i32 %nmemb, i32 %size, i32 (i64*, i64*)* %compar)
  ret void
}

define i64 @function_2086() {
block_2086:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2090(i32 %fd) {
block_2090:
  %tmp2 = call i32 @isatty(i32 %fd)
  ret i32 %tmp2
}

define i64 @function_2096() {
block_2096:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_20a0(i32 %sig, %sigaction* %act, %sigaction* %oact) {
block_20a0:
  %tmp4 = call i32 @sigaction(i32 %sig, %sigaction* %act, %sigaction* %oact)
  ret i32 %tmp4
}

define i64 @function_20a6() {
block_20a6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_20b0(i32 %fd, i32 %cmd, ...) {
block_20b0:
  %tmp3 = call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 %cmd)
  ret i32 %tmp3
}

define i64 @function_20b6() {
block_20b6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_20c0(i32 %clock_id, %timespec* %tp) {
block_20c0:
  %tmp3 = call i32 @clock_gettime(i32 %clock_id, %timespec* %tp)
  ret i32 %tmp3
}

define i64 @function_20c6() {
block_20c6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_20d0(i32 %fd, i64* %buf, i32 %n) {
block_20d0:
  %tmp4 = call i32 @write(i32 %fd, i64* %buf, i32 %n)
  ret i32 %tmp4
}

define i64 @function_20d6() {
block_20d6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_20e0(%_IO_FILE* %stream) {
block_20e0:
  %tmp2 = call i32 @fclose(%_IO_FILE* %stream)
  ret i32 %tmp2
}

define i64 @function_20e6() {
block_20e6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define %__dirstream* @function_20f0(i8* %name) {
block_20f0:
  %tmp2 = call %__dirstream* @opendir(i8* %name)
  ret %__dirstream* %tmp2
}

define i64 @function_20f6() {
block_20f6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i8* @function_2100(i8* %dest, i8* %src) {
block_2100:
  %tmp3 = call i8* @stpcpy(i8* %dest, i8* %src)
  ret i8* %tmp3
}

define i64 @function_2106() {
block_2106:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2110(i8* %s) {
block_2110:
  %tmp2 = call i32 @strlen(i8* %s)
  ret i32 %tmp2
}

define i64 @function_2116() {
block_2116:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2120(i32 %ver, i8* %filename, %stat* %stat_buf) {
block_2120:
  %tmp4 = call i32 @__lxstat(i32 %ver, i8* %filename, %stat* %stat_buf)
  ret i32 %tmp4
}

define i64 @function_2126() {
block_2126:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2130(i32 %fd, i8* %file, i32 %oflag, ...) {
block_2130:
  %tmp4 = call i32 (i32, i8*, i32, ...)* @openat(i32 %fd, i8* %file, i32 %oflag)
  ret i32 %tmp4
}

define i64 @function_2136() {
block_2136:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define void @function_2140() {
block_2140:
  call void @__stack_chk_fail()
  ret void
}

define i64 @function_2146() {
block_2146:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2150(i32 %argc, i8** %argv, i8* %shortopts, %option* %longopts, i32* %longind) {
block_2150:
  %tmp6 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* %shortopts, %option* %longopts, i32* %longind)
  ret i32 %tmp6
}

define i64 @function_2156() {
block_2156:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2160(i8* %format, ...) {
block_2160:
  %tmp2 = call i32 (i8*, ...)* @printf(i8* %format)
  ret i32 %tmp2
}

define i64 @function_2166() {
block_2166:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2170(i32 %c, %_IO_FILE* %fp) {
block_2170:
  %tmp3 = call i32 @_IO_putc(i32 %c, %_IO_FILE* %fp)
  ret i32 %tmp3
}

define i64 @function_2176() {
block_2176:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i8* @function_2180(i8* %s, i32 %c) {
block_2180:
  %tmp3 = call i8* @strrchr(i8* %s, i32 %c)
  ret i8* %tmp3
}

define i64 @function_2186() {
block_2186:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2190(i32 %fd, i32 %offset, i32 %whence) {
block_2190:
  %tmp4 = call i32 @lseek(i32 %fd, i32 %offset, i32 %whence)
  ret i32 %tmp4
}

define i64 @function_2196() {
block_2196:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i64* @function_21a0(i64* %s, i32 %c, i32 %n) {
block_21a0:
  %tmp4 = call i64* @memset(i64* %s, i32 %c, i32 %n)
  ret i64* %tmp4
}

define i64 @function_21a6() {
block_21a6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_21b0(i32 %fd) {
block_21b0:
  %tmp2 = call i32 @close(i32 %fd)
  ret i32 %tmp2
}

define i64 @function_21b6() {
block_21b6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_21c0(i8* %s, i8* %accept) {
block_21c0:
  %tmp3 = call i32 @strspn(i8* %s, i8* %accept)
  ret i32 %tmp3
}

define i64 @function_21c6() {
block_21c6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_21d0(%__dirstream* %dirp) {
block_21d0:
  %tmp2 = call i32 @closedir(%__dirstream* %dirp)
  ret i32 %tmp2
}

define i64 @function_21d6() {
block_21d6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_21e0(i32 %c, %_IO_FILE* %stream) {
block_21e0:
  %tmp3 = call i32 @fputc(i32 %c, %_IO_FILE* %stream)
  ret i32 %tmp3
}

define i64 @function_21e6() {
block_21e6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_21f0(i8* %s, i8* %reject) {
block_21f0:
  %tmp3 = call i32 @strcspn(i8* %s, i8* %reject)
  ret i32 %tmp3
}

define i64 @function_21f6() {
block_21f6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2200(i32 %fd, i64* %buf, i32 %nbytes) {
block_2200:
  %tmp4 = call i32 @read(i32 %fd, i64* %buf, i32 %nbytes)
  ret i32 %tmp4
}

define i64 @function_2206() {
block_2206:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2210(i64* %s1, i64* %s2, i32 %n) {
block_2210:
  %tmp4 = call i32 @memcmp(i64* %s1, i64* %s2, i32 %n)
  ret i32 %tmp4
}

define i64 @function_2216() {
block_2216:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2220(i8* %file, [2 x %timeval] %tvp) {
block_2220:
  %tmp3 = call i32 @utimes(i8* %file, [2 x %timeval] %tvp)
  ret i32 %tmp3
}

define i64 @function_2226() {
block_2226:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i64* @function_2230(i32 %nmemb, i32 %size) {
block_2230:
  %tmp3 = call i64* @calloc(i32 %nmemb, i32 %size)
  ret i64* %tmp3
}

define i64 @function_2236() {
block_2236:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2240(i8* %s1, i8* %s2) {
block_2240:
  %tmp3 = call i32 @strcmp(i8* %s1, i8* %s2)
  ret i32 %tmp3
}

define i64 @function_2246() {
block_2246:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2250() {
block_2250:
  %tmp1 = call i32 @getchar()
  ret i32 %tmp1
}

define i64 @function_2256() {
block_2256:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define void (i32)* @function_2260(i32 %sig, void (i32)* %handler) {
block_2260:
  %tmp3 = call void (i32)* (i32, void (i32)*)* @signal(i32 %sig, void (i32)* %handler)
  ret void (i32)* %tmp3
}

define i64 @function_2266() {
block_2266:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2270(%__dirstream* %dirp) {
block_2270:
  %tmp2 = call i32 @dirfd(%__dirstream* %dirp)
  ret i32 %tmp2
}

define i64 @function_2276() {
block_2276:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2280(%_IO_FILE* %stream, i8* %format, ...) {
block_2280:
  %tmp3 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %stream, i8* %format)
  ret i32 %tmp3
}

define i64 @function_2286() {
block_2286:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2290(%_TYPEDEF_sigset_t* %set) {
block_2290:
  %tmp2 = call i32 @sigemptyset(%_TYPEDEF_sigset_t* %set)
  ret i32 %tmp2
}

define i64 @function_2296() {
block_2296:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i64* @function_22a0(i64* %dest, i64* %src, i32 %n) {
block_22a0:
  %tmp4 = call i64* @memcpy(i64* %dest, i64* %src, i32 %n)
  ret i64* %tmp4
}

define i64 @function_22a6() {
block_22a6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_22b0(%_IO_FILE* %stream) {
block_22b0:
  %tmp2 = call i32 @fileno(%_IO_FILE* %stream)
  ret i32 %tmp2
}

define i64 @function_22b6() {
block_22b6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_22c0(i32 %ver, i8* %filename, %stat* %stat_buf) {
block_22c0:
  %tmp4 = call i32 @__xstat(i32 %ver, i8* %filename, %stat* %stat_buf)
  ret i32 %tmp4
}

define i64 @function_22c6() {
block_22c6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define %dirent* @function_22d0(%__dirstream* %dirp) {
block_22d0:
  %tmp2 = call %dirent* @readdir(%__dirstream* %dirp)
  ret %dirent* %tmp2
}

define i64 @function_22d6() {
block_22d6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_22e0(i32 %c) {
block_22e0:
  %tmp2 = call i32 @tolower(i32 %c)
  ret i32 %tmp2
}

define i64 @function_22e6() {
block_22e6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i64* @function_22f0(i32 %size) {
block_22f0:
  %tmp2 = call i64* @malloc(i32 %size)
  ret i64* %tmp2
}

define i64 @function_22f6() {
block_22f6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2300(%_IO_FILE* %stream) {
block_2300:
  %tmp2 = call i32 @fflush(%_IO_FILE* %stream)
  ret i32 %tmp2
}

define i64 @function_2306() {
block_2306:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2310(i32 %ver, i32 %fildes, %stat* %stat_buf) {
block_2310:
  %tmp4 = call i32 @__fxstat(i32 %ver, i32 %fildes, %stat* %stat_buf)
  ret i32 %tmp4
}

define i64 @function_2316() {
block_2316:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2320(%_IO_FILE* %fp) {
block_2320:
  %tmp2 = call i32 @__freading(%_IO_FILE* %fp)
  ret i32 %tmp2
}

define i64 @function_2326() {
block_2326:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i64* @function_2330(i64* %ptr, i32 %size) {
block_2330:
  %tmp3 = call i64* @realloc(i64* %ptr, i32 %size)
  ret i64* %tmp3
}

define i64 @function_2336() {
block_2336:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2340(i32 %fd, i32 %mode) {
block_2340:
  %tmp3 = call i32 @fchmod(i32 %fd, i32 %mode)
  ret i32 %tmp3
}

define i64 @function_2346() {
block_2346:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i64* @function_2350(i64* %dest, i64* %src, i32 %n) {
block_2350:
  %tmp4 = call i64* @memmove(i64* %dest, i64* %src, i32 %n)
  ret i64* %tmp4
}

define i64 @function_2356() {
block_2356:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2360(i32 %fd) {
block_2360:
  %tmp2 = call i32 @fsync(i32 %fd)
  ret i32 %tmp2
}

define i64 @function_2366() {
block_2366:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2370(i8* %file, i32 %oflag, ...) {
block_2370:
  %tmp3 = call i32 (i8*, i32, ...)* @open(i8* %file, i32 %oflag)
  ret i32 %tmp3
}

define i64 @function_2376() {
block_2376:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2380(%_IO_FILE* %stream, i32 %off, i32 %whence) {
block_2380:
  %tmp4 = call i32 @fseeko(%_IO_FILE* %stream, i32 %off, i32 %whence)
  ret i32 %tmp4
}

define i64 @function_2386() {
block_2386:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2390(i32 %fd, i32 %owner, i32 %group) {
block_2390:
  %tmp4 = call i32 @fchown(i32 %fd, i32 %owner, i32 %group)
  ret i32 %tmp4
}

define i64 @function_2396() {
block_2396:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define void @function_23a0(i8* %s) {
block_23a0:
  call void @perror(i8* %s) #1
  ret void
}

define i64 @function_23a6() {
block_23a6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define %__dirstream* @function_23b0(i32 %fd) {
block_23b0:
  %tmp2 = call %__dirstream* @fdopendir(i32 %fd)
  ret %__dirstream* %tmp2
}

define i64 @function_23b6() {
block_23b6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_23c0(i32 %fd, [2 x %timespec] %times) {
block_23c0:
  %tmp3 = call i32 @futimens(i32 %fd, [2 x %timespec] %times)
  ret i32 %tmp3
}

define i64 @function_23c6() {
block_23c6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_23d0(i8* %nptr) {
block_23d0:
  %tmp2 = call i32 @atoi(i8* %nptr)
  ret i32 %tmp2
}

define i64 @function_23d6() {
block_23d6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i8* @function_23e0(i8* %dest, i8* %src) {
block_23e0:
  %tmp3 = call i8* @strcat(i8* %dest, i8* %src)
  ret i8* %tmp3
}

define i64 @function_23e6() {
block_23e6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_23f0(%_TYPEDEF_sigset_t* %set, i32 %signo) {
block_23f0:
  %tmp3 = call i32 @sigismember(%_TYPEDEF_sigset_t* %set, i32 %signo)
  ret i32 %tmp3
}

define i64 @function_23f6() {
block_23f6:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define void @function_2400(i32 %status) {
block_2400:
  call void @exit(i32 %status)
  ret void
}

define i64 @function_2406() {
block_2406:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2410(i64* %ptr, i32 %size, i32 %n, %_IO_FILE* %s) {
block_2410:
  %tmp5 = call i32 @fwrite(i64* %ptr, i32 %size, i32 %n, %_IO_FILE* %s)
  ret i32 %tmp5
}

define i64 @function_2416() {
block_2416:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2420(%_TYPEDEF_sigset_t* %set, i32 %signo) {
block_2420:
  %tmp3 = call i32 @sigaddset(%_TYPEDEF_sigset_t* %set, i32 %signo)
  ret i32 %tmp3
}

define i64 @function_2426() {
block_2426:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i32 @function_2430(i32 %fd, i8* %file, [2 x %timeval] %tvp) {
block_2430:
  %tmp4 = call i32 @futimesat(i32 %fd, i8* %file, [2 x %timeval] %tvp)
  ret i32 %tmp4
}

define i64 @function_2436() {
block_2436:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define i16** @function_2440() {
block_2440:
  %tmp1 = call i16** @__ctype_b_loc()
  ret i16** %tmp1
}

define i64 @function_2446() {
block_2446:
  %tmp3 = call i64 @function_1f90()
  ret i64 %tmp3
}

define void @function_2450(i64* %d) {
block_2450:
  call void @__cxa_finalize(i64* %d)
  ret void
}

define i64 @entrypoint(i64 %arg1, i64 %arg2, void ()* %arg3, i64 %arg4) {
block_2460:
  %stack_var_8 = alloca i64
  %tmp21 = trunc i64 %arg4 to i32
  %tmp22 = bitcast i64* %stack_var_8 to i8**
  %tmp23 = call i32 @__libc_start_main(i64 15714, i32 %tmp21, i8** %tmp22, void ()* inttoptr (i64 68784 to void ()*), void ()* inttoptr (i64 68896 to void ()*), void ()* %arg3)
  %tmp24 = call i64 @__asm_hlt()
  unreachable
}

define i64 @deregister_tm_clones() {
block_2490:
  br i1 icmp eq (i64 sub (i64 ptrtoint (i64* @global_var_216560 to i64), i64 ptrtoint (i64* @global_var_216560 to i64)), i64 0), label %block_24c0, label %block_24a7

block_24a7:                                       ; preds = %block_2490
  %tmp12 = load i64* @global_var_215fc0
  %tmp13 = icmp eq i64 %tmp12, 0
  br i1 %tmp13, label %block_24c0, label %block_24b3

block_24b3:                                       ; preds = %block_24a7
  %tmp14 = call i64 @_ITM_deregisterTMCloneTable(i64* @global_var_216560)
  ret i64 %tmp14

block_24c0:                                       ; preds = %block_24a7, %block_2490
  %rax.0 = phi i64 [ ptrtoint (i64* @global_var_216560 to i64), %block_2490 ], [ 0, %block_24a7 ]
  ret i64 %rax.0
}

define i64 @register_tm_clones() {
block_24d0:
  br i1 icmp eq (i64 ashr (i64 add (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_216560 to i64), i64 ptrtoint (i64* @global_var_216560 to i64)), i64 3), i64 lshr (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_216560 to i64), i64 ptrtoint (i64* @global_var_216560 to i64)), i64 3), i64 63)), i64 1), i64 0), label %block_2510, label %block_24f8

block_24f8:                                       ; preds = %block_24d0
  %tmp13 = load i64* @global_var_215fd8
  %tmp14 = icmp eq i64 %tmp13, 0
  br i1 %tmp14, label %block_2510, label %block_2504

block_2504:                                       ; preds = %block_24f8
  %tmp15 = call i64 @_ITM_registerTMCloneTable(i64* @global_var_216560, i64 ashr (i64 add (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_216560 to i64), i64 ptrtoint (i64* @global_var_216560 to i64)), i64 3), i64 lshr (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_216560 to i64), i64 ptrtoint (i64* @global_var_216560 to i64)), i64 3), i64 63)), i64 1))
  ret i64 %tmp15

block_2510:                                       ; preds = %block_24f8, %block_24d0
  %rax.0 = phi i64 [ lshr (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_216560 to i64), i64 ptrtoint (i64* @global_var_216560 to i64)), i64 3), i64 63), %block_24d0 ], [ 0, %block_24f8 ]
  ret i64 %rax.0
}

define i64 @__do_global_dtors_aux() {
block_2520:
  %0 = alloca i64
  %1 = load i64* %0
  %tmp12 = load i8* bitcast (i64* @global_var_216588 to i8*)
  %tmp13 = icmp eq i8 %tmp12, 0
  br i1 %tmp13, label %block_2529, label %block_2558

block_2529:                                       ; preds = %block_2520
  %tmp14 = load i64* @global_var_215fe0
  %tmp15 = icmp eq i64 %tmp14, 0
  br i1 %tmp15, label %block_2543, label %block_2537

block_2537:                                       ; preds = %block_2529
  %tmp16 = load i64* inttoptr (i64 2187272 to i64*)
  %tmp17 = inttoptr i64 %tmp16 to i64*
  call void @__cxa_finalize(i64* %tmp17)
  br label %block_2543

block_2543:                                       ; preds = %block_2537, %block_2529
  %tmp18 = call i64 @deregister_tm_clones()
  store i8 1, i8* bitcast (i64* @global_var_216588 to i8*)
  ret i64 %tmp18

block_2558:                                       ; preds = %block_2520
  ret i64 %1
}

define i64 @frame_dummy() {
block_2560:
  %tmp5 = call i64 @register_tm_clones()
  ret i64 %tmp5
}

define i64 @bi_init(i32 %arg1) {
block_256a:
  store i32 %arg1, i32* bitcast (i64* @global_var_21658c to i32*)
  store i16 0, i16* bitcast (i64* @global_var_216590 to i16*)
  store i32 0, i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp13 = zext i32 %arg1 to i64
  %tmp14 = icmp eq i32 %arg1, -1
  br i1 %tmp14, label %block_25a6, label %block_2598

block_2598:                                       ; preds = %block_256a
  store i64 60570, i64* @global_var_21a420
  br label %block_25a6

block_25a6:                                       ; preds = %block_2598, %block_256a
  %rax.0 = phi i64 [ %tmp13, %block_256a ], [ 60570, %block_2598 ]
  ret i64 %rax.0
}

define i64 @send_bits(i32 %arg1, i64 %arg2) {
block_25a9:
  %tmp13 = sext i32 %arg1 to i64
  %tmp23 = trunc i64 %arg2 to i32
  %tmp24 = sub i32 16, %tmp23
  %tmp25 = load i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp26 = icmp slt i32 %tmp24, %tmp25
  br i1 %tmp26, label %block_25cf, label %block_26f1

block_25cf:                                       ; preds = %block_25a9
  %tmp27 = load i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp28 = zext i32 %arg1 to i64
  %tmp29 = and i32 %tmp27, 31
  %tmp30 = icmp eq i32 %tmp29, 0
  br i1 %tmp30, label %bb33, label %bb

bb:                                               ; preds = %block_25cf
  %tmp31 = shl i32 %arg1, %tmp29
  %tmp32 = zext i32 %tmp31 to i64
  br label %bb33

bb33:                                             ; preds = %block_25cf, %bb
  %rdx.0 = phi i64 [ %tmp28, %block_25cf ], [ %tmp32, %bb ]
  %tmp34 = trunc i64 %rdx.0 to i32
  %tmp35 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp36 = zext i16 %tmp35 to i32
  %tmp37 = or i32 %tmp36, %tmp34
  %tmp38 = trunc i32 %tmp37 to i16
  store i16 %tmp38, i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp39 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp40 = icmp ugt i32 %tmp39, 16381
  br i1 %tmp40, label %block_2649, label %block_25fd

block_25fd:                                       ; preds = %bb33
  %tmp41 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp42 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp43 = zext i32 %tmp42 to i64
  %tmp44 = trunc i16 %tmp41 to i8
  %tmp45 = add i64 %tmp43, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp46 = inttoptr i64 %tmp45 to i8*
  store i8 %tmp44, i8* %tmp46
  %tmp47 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp48 = lshr i16 %tmp47, 8
  %tmp49 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp50 = zext i32 %tmp49 to i64
  %tmp51 = trunc i16 %tmp48 to i8
  %tmp52 = add i64 %tmp50, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp53 = inttoptr i64 %tmp52 to i8*
  store i8 %tmp51, i8* %tmp53
  br label %block_26b7

block_2649:                                       ; preds = %bb33
  %tmp54 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp55 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp56 = zext i32 %tmp55 to i64
  %tmp57 = trunc i16 %tmp54 to i8
  %tmp58 = add i64 %tmp56, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp59 = inttoptr i64 %tmp58 to i8*
  store i8 %tmp57, i8* %tmp59
  %tmp60 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp61 = icmp eq i32 %tmp60, 16384
  br i1 %tmp61, label %block_2678, label %block_267d

block_2678:                                       ; preds = %block_2649
  %tmp62 = call i64 @flush_outbuf(i64 %tmp13, i64 %arg2, i64 %tmp56, i16 %tmp54)
  br label %block_267d

block_267d:                                       ; preds = %block_2649, %block_2678
  %tmp63 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp64 = lshr i16 %tmp63, 8
  %tmp65 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp66 = zext i32 %tmp65 to i64
  %tmp67 = trunc i16 %tmp64 to i8
  %tmp68 = add i64 %tmp66, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp69 = inttoptr i64 %tmp68 to i8*
  store i8 %tmp67, i8* %tmp69
  %tmp70 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp71 = icmp eq i32 %tmp70, 16384
  br i1 %tmp71, label %block_26b2, label %block_26b7

block_26b2:                                       ; preds = %block_267d
  %tmp72 = call i64 @flush_outbuf(i64 %tmp13, i64 %arg2, i64 %tmp66, i16 %tmp64)
  br label %block_26b7

block_26b7:                                       ; preds = %block_267d, %block_26b2, %block_25fd
  %.mask = and i32 %arg1, 65535
  %tmp73 = zext i32 %.mask to i64
  %tmp74 = load i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp75 = sub i32 16, %tmp74
  %tmp76 = and i32 %tmp75, 31
  %tmp77 = icmp eq i32 %tmp76, 0
  br i1 %tmp77, label %bb81, label %bb78

bb78:                                             ; preds = %block_26b7
  %tmp79 = lshr i32 %.mask, %tmp76
  %tmp80 = zext i32 %tmp79 to i64
  br label %bb81

bb81:                                             ; preds = %block_26b7, %bb78
  %rdx.1 = phi i64 [ %tmp73, %block_26b7 ], [ %tmp80, %bb78 ]
  %tmp82 = trunc i64 %rdx.1 to i16
  store i16 %tmp82, i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp83 = load i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp84 = add i32 %tmp23, -16
  %tmp85 = add i32 %tmp84, %tmp83
  %tmp86 = zext i32 %tmp85 to i64
  store i32 %tmp85, i32* bitcast (i64* @global_var_216594 to i32*)
  br label %block_2723

block_26f1:                                       ; preds = %block_25a9
  %tmp87 = load i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp88 = zext i32 %arg1 to i64
  %tmp89 = and i32 %tmp87, 31
  %tmp90 = icmp eq i32 %tmp89, 0
  br i1 %tmp90, label %bb94, label %bb91

bb91:                                             ; preds = %block_26f1
  %tmp92 = shl i32 %arg1, %tmp89
  %tmp93 = zext i32 %tmp92 to i64
  br label %bb94

bb94:                                             ; preds = %block_26f1, %bb91
  %rdx.2 = phi i64 [ %tmp88, %block_26f1 ], [ %tmp93, %bb91 ]
  %tmp95 = trunc i64 %rdx.2 to i32
  %tmp96 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp97 = zext i16 %tmp96 to i32
  %tmp98 = or i32 %tmp97, %tmp95
  %tmp99 = trunc i32 %tmp98 to i16
  store i16 %tmp99, i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp100 = load i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp101 = add i32 %tmp100, %tmp23
  %tmp102 = zext i32 %tmp101 to i64
  store i32 %tmp101, i32* bitcast (i64* @global_var_216594 to i32*)
  br label %block_2723

block_2723:                                       ; preds = %bb94, %bb81
  %rax.0 = phi i64 [ %tmp102, %bb94 ], [ %tmp86, %bb81 ]
  ret i64 %rax.0
}

define i64 @bi_reverse(i32 %arg1, i64 %arg2) {
block_2726:
  %tmp18 = trunc i64 %arg2 to i32
  br label %block_2736

block_2736:                                       ; preds = %block_2736, %block_2726
  %rbx.0 = phi i64 [ 0, %block_2726 ], [ %tmp24, %block_2736 ]
  %stack_var_-24.0 = phi i32 [ %tmp18, %block_2726 ], [ %tmp25, %block_2736 ]
  %stack_var_-20.0 = phi i32 [ %arg1, %block_2726 ], [ %tmp22, %block_2736 ]
  %tmp19 = and i32 %stack_var_-20.0, 1
  %tmp20 = trunc i64 %rbx.0 to i32
  %tmp21 = or i32 %tmp19, %tmp20
  %tmp22 = lshr i32 %stack_var_-20.0, 1
  %tmp23 = shl i32 %tmp21, 1
  %tmp24 = zext i32 %tmp23 to i64
  %tmp25 = add i32 %stack_var_-24.0, -1
  %tmp26 = icmp sgt i32 %tmp25, -1
  %tmp27 = icmp ne i32 %tmp25, 0
  %tmp = icmp ne i1 %tmp26, %tmp27
  br i1 %tmp, label %block_274d, label %block_2736

block_274d:                                       ; preds = %block_2736
  %tmp28 = and i32 %tmp21, 2147483647
  %tmp29 = zext i32 %tmp28 to i64
  ret i64 %tmp29
}

define i64 @bi_windup() {
block_2754:
  %0 = alloca i64
  %1 = load i64* %0
  %2 = load i64* %0
  %tmp18 = load i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp19 = icmp slt i32 %tmp18, 9
  br i1 %tmp19, label %block_2833, label %block_2767

block_2767:                                       ; preds = %block_2754
  %tmp20 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp21 = icmp ugt i32 %tmp20, 16381
  br i1 %tmp21, label %block_27c3, label %block_2774

block_2774:                                       ; preds = %block_2767
  %tmp22 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp23 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp24 = zext i32 %tmp23 to i64
  %tmp25 = trunc i16 %tmp22 to i8
  %tmp26 = add i64 %tmp24, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp27 = inttoptr i64 %tmp26 to i8*
  store i8 %tmp25, i8* %tmp27
  %tmp28 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp29 = lshr i16 %tmp28, 8
  %tmp30 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp31 = zext i32 %tmp30 to i64
  %tmp32 = trunc i16 %tmp29 to i8
  %tmp33 = add i64 %tmp31, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp34 = inttoptr i64 %tmp33 to i8*
  store i8 %tmp32, i8* %tmp34
  br label %block_2871

block_27c3:                                       ; preds = %block_2767
  %tmp35 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp36 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp37 = zext i32 %tmp36 to i64
  %tmp38 = trunc i16 %tmp35 to i8
  %tmp39 = add i64 %tmp37, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp40 = inttoptr i64 %tmp39 to i8*
  store i8 %tmp38, i8* %tmp40
  %tmp41 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp42 = icmp eq i32 %tmp41, 16384
  br i1 %tmp42, label %block_27f2, label %block_27f7

block_27f2:                                       ; preds = %block_27c3
  %tmp43 = call i64 @flush_outbuf(i64 %1, i64 %2, i64 %tmp37, i16 %tmp35)
  br label %block_27f7

block_27f7:                                       ; preds = %block_27c3, %block_27f2
  %tmp44 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp45 = lshr i16 %tmp44, 8
  %tmp46 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp47 = zext i32 %tmp46 to i64
  %tmp48 = trunc i16 %tmp45 to i8
  %tmp49 = add i64 %tmp47, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp50 = inttoptr i64 %tmp49 to i8*
  store i8 %tmp48, i8* %tmp50
  %tmp51 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp52 = zext i32 %tmp51 to i64
  %tmp53 = icmp eq i32 %tmp51, 16384
  br i1 %tmp53, label %block_282c, label %block_2871

block_282c:                                       ; preds = %block_27f7
  %tmp54 = call i64 @flush_outbuf(i64 %1, i64 %2, i64 %tmp47, i16 %tmp45)
  br label %block_2871

block_2833:                                       ; preds = %block_2754
  %tmp55 = load i32* bitcast (i64* @global_var_216594 to i32*)
  %tmp56 = zext i32 %tmp55 to i64
  %tmp57 = icmp slt i32 %tmp55, 1
  br i1 %tmp57, label %block_2871, label %block_283d

block_283d:                                       ; preds = %block_2833
  %tmp58 = load i16* bitcast (i64* @global_var_216590 to i16*)
  %tmp59 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp60 = zext i32 %tmp59 to i64
  %tmp61 = trunc i16 %tmp58 to i8
  %tmp62 = add i64 %tmp60, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp63 = inttoptr i64 %tmp62 to i8*
  store i8 %tmp61, i8* %tmp63
  %tmp64 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp65 = zext i32 %tmp64 to i64
  %tmp66 = icmp eq i32 %tmp64, 16384
  br i1 %tmp66, label %block_286c, label %block_2871

block_286c:                                       ; preds = %block_283d
  %tmp67 = call i64 @flush_outbuf(i64 %1, i64 %2, i64 %tmp60, i16 %tmp58)
  br label %block_2871

block_2871:                                       ; preds = %block_283d, %block_27f7, %block_286c, %block_2833, %block_282c, %block_2774
  %rax.0 = phi i64 [ %tmp56, %block_2833 ], [ %tmp65, %block_283d ], [ %tmp67, %block_286c ], [ %tmp52, %block_27f7 ], [ %tmp54, %block_282c ], [ ptrtoint (i64* @global_var_24a8a0 to i64), %block_2774 ]
  store i16 0, i16* bitcast (i64* @global_var_216590 to i16*)
  store i32 0, i32* bitcast (i64* @global_var_216594 to i32*)
  ret i64 %rax.0
}

define i64 @copy_block(i8* %arg1, i64 %arg2, i64 %arg3) {
block_2887:
  %tmp17 = ptrtoint i8* %arg1 to i64
  %tmp25 = trunc i64 %arg2 to i32
  %tmp26 = trunc i64 %arg3 to i32
  %tmp27 = call i64 @bi_windup()
  %tmp29 = icmp eq i32 %tmp26, 0
  br i1 %tmp29, label %block_2a6b.preheader, label %block_28a8

block_28a8:                                       ; preds = %block_2887
  %tmp30 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp31 = icmp ugt i32 %tmp30, 16381
  br i1 %tmp31, label %block_28fb, label %block_28b5

block_28b5:                                       ; preds = %block_28a8
  %tmp32 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp33 = zext i32 %tmp32 to i64
  %tmp34 = trunc i64 %arg2 to i8
  %tmp35 = add i64 %tmp33, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp36 = inttoptr i64 %tmp35 to i8*
  store i8 %tmp34, i8* %tmp36
  %tmp37 = trunc i64 %arg2 to i16
  %tmp38 = lshr i16 %tmp37, 8
  %tmp39 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp40 = zext i32 %tmp39 to i64
  %tmp41 = trunc i16 %tmp38 to i8
  %tmp42 = add i64 %tmp40, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp43 = inttoptr i64 %tmp42 to i8*
  store i8 %tmp41, i8* %tmp43
  br label %block_2963thread-pre-split

block_28fb:                                       ; preds = %block_28a8
  %tmp44 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp45 = zext i32 %tmp44 to i64
  %tmp46 = trunc i64 %arg2 to i8
  %tmp47 = add i64 %tmp45, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp48 = inttoptr i64 %tmp47 to i8*
  store i8 %tmp46, i8* %tmp48
  %tmp49 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp50 = icmp eq i32 %tmp49, 16384
  br i1 %tmp50, label %block_2928, label %block_28fb.block_292d_crit_edge

block_28fb.block_292d_crit_edge:                  ; preds = %block_28fb
  %.pre = trunc i64 %arg2 to i16
  br label %block_292d

block_2928:                                       ; preds = %block_28fb
  %tmp51 = trunc i64 %arg2 to i16
  %tmp52 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 %tmp45, i16 %tmp51)
  br label %block_292d

block_292d:                                       ; preds = %block_28fb.block_292d_crit_edge, %block_2928
  %.pre-phi = phi i16 [ %.pre, %block_28fb.block_292d_crit_edge ], [ %tmp51, %block_2928 ]
  %tmp53 = lshr i16 %.pre-phi, 8
  %tmp54 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp55 = zext i32 %tmp54 to i64
  %tmp56 = trunc i16 %tmp53 to i8
  %tmp57 = add i64 %tmp55, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp58 = inttoptr i64 %tmp57 to i8*
  store i8 %tmp56, i8* %tmp58
  %tmp59 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp60 = icmp eq i32 %tmp59, 16384
  br i1 %tmp60, label %block_295e, label %block_2963

block_295e:                                       ; preds = %block_292d
  %tmp61 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 %tmp55, i16 %tmp53)
  br label %block_2963thread-pre-split

block_2963thread-pre-split:                       ; preds = %block_28b5, %block_295e
  %.pr = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  br label %block_2963

block_2963:                                       ; preds = %block_2963thread-pre-split, %block_292d
  %tmp62 = phi i32 [ %.pr, %block_2963thread-pre-split ], [ %tmp59, %block_292d ]
  %tmp63 = icmp ugt i32 %tmp62, 16381
  br i1 %tmp63, label %block_29bf, label %block_2970

block_2970:                                       ; preds = %block_2963
  %tmp64 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp65 = xor i32 %tmp25, 255
  %tmp66 = zext i32 %tmp64 to i64
  %tmp67 = trunc i32 %tmp65 to i8
  %tmp68 = add i64 %tmp66, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp69 = inttoptr i64 %tmp68 to i8*
  store i8 %tmp67, i8* %tmp69
  %tmp70 = xor i32 %tmp25, 65280
  %tmp71 = trunc i32 %tmp70 to i16
  %tmp72 = lshr i16 %tmp71, 8
  %tmp73 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp74 = zext i32 %tmp73 to i64
  %tmp75 = trunc i16 %tmp72 to i8
  %tmp76 = add i64 %tmp74, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp77 = inttoptr i64 %tmp76 to i8*
  store i8 %tmp75, i8* %tmp77
  br label %block_2a6b.preheader

block_29bf:                                       ; preds = %block_2963
  %tmp78 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp79 = xor i32 %tmp25, -1
  %tmp80 = zext i32 %tmp78 to i64
  %tmp81 = trunc i32 %tmp79 to i8
  %tmp82 = add i64 %tmp80, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp83 = inttoptr i64 %tmp82 to i8*
  store i8 %tmp81, i8* %tmp83
  %tmp84 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp85 = icmp eq i32 %tmp84, 16384
  br i1 %tmp85, label %block_29f0, label %block_29f5

block_29f0:                                       ; preds = %block_29bf
  %tmp86 = zext i32 %tmp79 to i64
  %tmp87 = trunc i32 %tmp78 to i16
  %tmp88 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 %tmp86, i16 %tmp87)
  br label %block_29f5

block_29f5:                                       ; preds = %block_29bf, %block_29f0
  %tmp89 = xor i32 %tmp25, 65280
  %tmp90 = trunc i32 %tmp89 to i16
  %tmp91 = lshr i16 %tmp90, 8
  %tmp92 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp93 = zext i32 %tmp92 to i64
  %tmp94 = trunc i16 %tmp91 to i8
  %tmp95 = add i64 %tmp93, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp96 = inttoptr i64 %tmp95 to i8*
  store i8 %tmp94, i8* %tmp96
  %tmp97 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp98 = icmp eq i32 %tmp97, 16384
  br i1 %tmp98, label %block_2a28, label %block_2a6b.preheader

block_2a28:                                       ; preds = %block_29f5
  %tmp99 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 %tmp93, i16 %tmp91)
  br label %block_2a6b.preheader

block_2a6b.preheader:                             ; preds = %block_2887, %block_2970, %block_2a28, %block_29f5
  %tmp100 = and i64 %arg2, 4294967295
  %tmp101 = icmp eq i32 %tmp25, 0
  br i1 %tmp101, label %block_2a78, label %block_2a2f.lr.ph

block_2a2f.lr.ph:                                 ; preds = %block_2a6b.preheader
  %tmp102 = add nuw nsw i64 %arg2, 4294967295
  %tmp103 = and i64 %tmp102, 4294967295
  br label %block_2a2f

block_2a2f:                                       ; preds = %block_2a2f.lr.ph, %block_2a6b.backedge
  %indvars.iv = phi i64 [ %tmp103, %block_2a2f.lr.ph ], [ %indvars.iv.next, %block_2a6b.backedge ]
  %stack_var_-16.03 = phi i8* [ %arg1, %block_2a2f.lr.ph ], [ %tmp106, %block_2a6b.backedge ]
  %tmp104 = ptrtoint i8* %stack_var_-16.03 to i64
  %tmp105 = add i64 %tmp104, 1
  %tmp106 = inttoptr i64 %tmp105 to i8*
  %tmp107 = load i8* %stack_var_-16.03
  %tmp108 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp109 = zext i32 %tmp108 to i64
  %tmp110 = add i64 %tmp109, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp111 = inttoptr i64 %tmp110 to i8*
  store i8 %tmp107, i8* %tmp111
  %tmp112 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp113 = icmp eq i32 %tmp112, 16384
  br i1 %tmp113, label %block_2a66, label %block_2a6b.backedge

block_2a66:                                       ; preds = %block_2a2f
  %tmp114 = zext i8 %tmp107 to i16
  %tmp115 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 %tmp109, i16 %tmp114)
  br label %block_2a6b.backedge

block_2a6b.backedge:                              ; preds = %block_2a66, %block_2a2f
  %tmp116 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %tmp116, label %block_2a78, label %block_2a2f

block_2a78:                                       ; preds = %block_2a6b.backedge, %block_2a6b.preheader
  %.lcssa = phi i64 [ %tmp100, %block_2a6b.preheader ], [ 0, %block_2a6b.backedge ]
  ret i64 %.lcssa
}

define i64 @lm_init(i32 %arg1, i16* %arg2) {
block_2a7b:
  %tmp29 = icmp slt i32 %arg1, 1
  br i1 %tmp29, label %block_2a97, label %block_2a91

block_2a91:                                       ; preds = %block_2a7b
  %tmp30 = icmp slt i32 %arg1, 10
  br i1 %tmp30, label %block_2aa3, label %block_2a97

block_2a97:                                       ; preds = %block_2a91, %block_2a7b
  %tmp31 = call i64 @gzip_error(i8* getelementptr inbounds ([15 x i8]* @global_var_10d84, i32 0, i32 0))
  unreachable

block_2aa3:                                       ; preds = %block_2a91
  store i32 %arg1, i32* bitcast (i64* @global_var_2165a8 to i32*)
  %tmp32 = call i64* @memset(i64* @global_var_22a880, i32 0, i32 65536)
  store i64 4294967295, i64* @global_var_2165b8
  store i64 0, i64* @global_var_2165b0
  %tmp33 = sext i32 %arg1 to i64
  %tmp34 = shl nsw i64 %tmp33, 3
  %tmp35 = add i64 %tmp34, ptrtoint (i64* @global_var_216042 to i64)
  %tmp36 = inttoptr i64 %tmp35 to i16*
  %tmp37 = load i16* %tmp36
  %tmp38 = zext i16 %tmp37 to i32
  store i32 %tmp38, i32* bitcast (i64* @global_var_2165a4 to i32*)
  %tmp39 = add i64 %tmp34, ptrtoint (i64* @global_var_216040 to i64)
  %tmp40 = inttoptr i64 %tmp39 to i16*
  %tmp41 = load i16* %tmp40
  %tmp42 = zext i16 %tmp41 to i32
  store i32 %tmp42, i32* bitcast (i64* @global_var_21a438 to i32*)
  %tmp43 = add i64 %tmp34, ptrtoint (i64* @global_var_216044 to i64)
  %tmp44 = inttoptr i64 %tmp43 to i16*
  %tmp45 = load i16* %tmp44
  %tmp46 = zext i16 %tmp45 to i32
  store i32 %tmp46, i32* bitcast (i64* @global_var_2165c0 to i32*)
  %tmp47 = add i64 %tmp34, ptrtoint (i64* @global_var_216046 to i64)
  %tmp48 = inttoptr i64 %tmp47 to i16*
  %tmp49 = load i16* %tmp48
  %tmp50 = zext i16 %tmp49 to i32
  store i32 %tmp50, i32* bitcast (i64* @global_var_21a43c to i32*)
  %tmp51 = icmp eq i32 %arg1, 1
  br i1 %tmp51, label %block_2b66, label %block_2b7b

block_2b66:                                       ; preds = %block_2aa3
  %tmp53 = load i16* %arg2
  %tmp54 = zext i16 %tmp53 to i32
  %tmp55 = or i32 %tmp54, 4
  %tmp57 = trunc i32 %tmp55 to i16
  store i16 %tmp57, i16* %arg2
  br label %block_2b94

block_2b7b:                                       ; preds = %block_2aa3
  %tmp58 = icmp eq i32 %arg1, 9
  br i1 %tmp58, label %block_2b81, label %block_2b94

block_2b81:                                       ; preds = %block_2b7b
  %tmp60 = load i16* %arg2
  %tmp61 = zext i16 %tmp60 to i32
  %tmp62 = or i32 %tmp61, 2
  %tmp64 = trunc i32 %tmp62 to i16
  store i16 %tmp64, i16* %arg2
  br label %block_2b94

block_2b94:                                       ; preds = %block_2b7b, %block_2b81, %block_2b66
  store i32 0, i32* bitcast (i64* @global_var_21a428 to i32*)
  store i64 0, i64* @global_var_21a430
  %tmp65 = load i64* @global_var_21a420
  call void @__ppdasm_undefined_function__store_0(i64 ptrtoint (i64* @global_var_24f4c0 to i64))
  %tmp66 = call i64 @__pseudo_call(i64 %tmp65)
  %tmp67 = trunc i64 %tmp66 to i32
  store i32 %tmp67, i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp68 = and i64 %tmp66, 4294967295
  %tmp69 = icmp eq i32 %tmp67, 0
  br i1 %tmp69, label %block_2bd9, label %block_2bce

block_2bce:                                       ; preds = %block_2b94
  %tmp70 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp71 = zext i32 %tmp70 to i64
  %tmp72 = icmp eq i32 %tmp70, -1
  br i1 %tmp72, label %block_2bd9, label %block_2bef

block_2bd9:                                       ; preds = %block_2bce, %block_2b94
  %rax.0 = phi i64 [ %tmp68, %block_2b94 ], [ %tmp71, %block_2bce ]
  store i32 1, i32* bitcast (i64* @global_var_21659c to i32*)
  store i32 0, i32* bitcast (i64* @global_var_2165a0 to i32*)
  br label %block_2c58

block_2bef:                                       ; preds = %block_2bce
  store i32 0, i32* bitcast (i64* @global_var_21659c to i32*)
  %tmp73 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp74 = icmp ugt i32 %tmp73, 261
  br i1 %tmp74, label %block_2c17, label %block_2c0d

block_2bfb:                                       ; preds = %block_2c0d
  %tmp75 = call i64 @fill_window()
  %tmp76 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp77 = icmp ugt i32 %tmp76, 261
  br i1 %tmp77, label %block_2c17, label %block_2c0d

block_2c0d:                                       ; preds = %block_2bef, %block_2bfb
  %tmp78 = load i32* bitcast (i64* @global_var_21659c to i32*)
  %tmp79 = icmp eq i32 %tmp78, 0
  br i1 %tmp79, label %block_2bfb, label %block_2c17

block_2c17:                                       ; preds = %block_2bfb, %block_2c0d, %block_2bef
  store i32 0, i32* bitcast (i64* @global_var_216598 to i32*)
  br label %block_2c28

block_2c28:                                       ; preds = %block_2c17, %block_2c28
  %rbx.02 = phi i64 [ 0, %block_2c17 ], [ %tmp89, %block_2c28 ]
  %tmp80 = load i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp81 = shl i32 %tmp80, 5
  %tmp82 = add i64 %rbx.02, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp83 = inttoptr i64 %tmp82 to i8*
  %tmp84 = load i8* %tmp83
  %tmp85 = zext i8 %tmp84 to i32
  %.masked = and i32 %tmp81, 32736
  %tmp86 = xor i32 %tmp85, %.masked
  store i32 %tmp86, i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp87 = trunc i64 %rbx.02 to i32
  %tmp88 = add i32 %tmp87, 1
  %tmp89 = zext i32 %tmp88 to i64
  %tmp90 = and i64 %tmp89, 4294967294
  %tmp91 = icmp eq i64 %tmp90, 0
  br i1 %tmp91, label %block_2c28, label %block_2c58.loopexit

block_2c58.loopexit:                              ; preds = %block_2c28
  %tmp92 = zext i32 %tmp86 to i64
  br label %block_2c58

block_2c58:                                       ; preds = %block_2c58.loopexit, %block_2bd9
  %rax.3 = phi i64 [ %rax.0, %block_2bd9 ], [ %tmp92, %block_2c58.loopexit ]
  ret i64 %rax.3
}

define i64 @longest_match(i32 %arg1) {
block_2c5f:
  %tmp37 = load i32* bitcast (i64* @global_var_21a43c to i32*)
  %tmp38 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp39 = zext i32 %tmp38 to i64
  %tmp40 = add i64 %tmp39, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp41 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp42 = inttoptr i32 %tmp41 to i8*
  %tmp43 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp44 = icmp ult i32 %tmp43, 32506
  %.op = add i32 %tmp43, -32506
  %tmp45 = select i1 %tmp44, i32 0, i32 %.op
  %tmp46 = ptrtoint i8* %tmp42 to i32
  %tmp47 = sext i32 %tmp46 to i64
  %tmp48 = add i64 %tmp39, add (i64 ptrtoint (i64* @global_var_24f4c0 to i64), i64 -1)
  %tmp49 = add i64 %tmp48, %tmp47
  %tmp50 = inttoptr i64 %tmp49 to i8*
  %tmp51 = load i8* %tmp50
  %tmp52 = zext i8 %tmp51 to i64
  %tmp53 = add i64 %tmp47, %tmp40
  %tmp54 = inttoptr i64 %tmp53 to i8*
  %tmp55 = load i8* %tmp54
  %tmp56 = zext i8 %tmp55 to i64
  %tmp57 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp58 = load i32* bitcast (i64* @global_var_21a438 to i32*)
  %tmp59 = icmp ult i32 %tmp57, %tmp58
  br i1 %tmp59, label %block_2cf9, label %block_2cf5

block_2cf5:                                       ; preds = %block_2c5f
  %tmp60 = lshr i32 %tmp37, 2
  br label %block_2cf9

block_2cf9:                                       ; preds = %block_2cf5, %block_2c5f, %block_2e95
  %stack_var_-68.0 = phi i32 [ %tmp172, %block_2e95 ], [ %arg1, %block_2c5f ], [ %arg1, %block_2cf5 ]
  %stack_var_-60.0 = phi i32 [ %tmp174, %block_2e95 ], [ %tmp37, %block_2c5f ], [ %tmp60, %block_2cf5 ]
  %stack_var_-56.0 = phi i8* [ %stack_var_-56.1, %block_2e95 ], [ %tmp42, %block_2c5f ], [ %tmp42, %block_2cf5 ]
  %rbx.0 = phi i64 [ %rbx.3, %block_2e95 ], [ %tmp40, %block_2c5f ], [ %tmp40, %block_2cf5 ]
  %r14.0 = phi i64 [ %r14.1, %block_2e95 ], [ %tmp52, %block_2c5f ], [ %tmp52, %block_2cf5 ]
  %r15.0 = phi i64 [ %r15.1, %block_2e95 ], [ %tmp56, %block_2c5f ], [ %tmp56, %block_2cf5 ]
  %tmp61 = zext i32 %stack_var_-68.0 to i64
  %tmp62 = add i64 %tmp61, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp63 = ptrtoint i8* %stack_var_-56.0 to i32
  %tmp64 = sext i32 %tmp63 to i64
  %tmp65 = add i64 %tmp64, %tmp62
  %tmp66 = inttoptr i64 %tmp65 to i8*
  %tmp67 = load i8* %tmp66
  %tmp68 = trunc i64 %r15.0 to i8
  %tmp69 = icmp eq i8 %tmp68, %tmp67
  br i1 %tmp69, label %block_2d1b, label %block_2e6d

block_2d1b:                                       ; preds = %block_2cf9
  %tmp70 = add i64 %tmp61, add (i64 ptrtoint (i64* @global_var_24f4c0 to i64), i64 -1)
  %tmp71 = add i64 %tmp70, %tmp64
  %tmp72 = inttoptr i64 %tmp71 to i8*
  %tmp73 = load i8* %tmp72
  %tmp74 = trunc i64 %r14.0 to i8
  %tmp75 = icmp eq i8 %tmp74, %tmp73
  br i1 %tmp75, label %block_2d33, label %block_2e6d

block_2d33:                                       ; preds = %block_2d1b
  %tmp76 = inttoptr i64 %tmp62 to i8*
  %tmp77 = load i8* %tmp76
  %tmp78 = inttoptr i64 %rbx.0 to i8*
  %tmp79 = load i8* %tmp78
  %tmp80 = icmp eq i8 %tmp77, %tmp79
  br i1 %tmp80, label %block_2d43, label %block_2e6d

block_2d43:                                       ; preds = %block_2d33
  %tmp81 = add i64 %tmp61, add (i64 ptrtoint (i64* @global_var_24f4c0 to i64), i64 1)
  %tmp82 = inttoptr i64 %tmp81 to i8*
  %tmp83 = load i8* %tmp82
  %tmp84 = add i64 %rbx.0, 1
  %tmp85 = inttoptr i64 %tmp84 to i8*
  %tmp86 = load i8* %tmp85
  %tmp87 = icmp eq i8 %tmp83, %tmp86
  br i1 %tmp87, label %block_2d5b, label %block_2e6d

block_2d5b:                                       ; preds = %block_2d43
  %tmp88 = add i64 %rbx.0, 2
  %tmp89 = add i64 %tmp61, add (i64 ptrtoint (i64* @global_var_24f4c0 to i64), i64 2)
  br label %block_2d63

block_2d63:                                       ; preds = %block_2e0b, %block_2d5b
  %rbx.1 = phi i64 [ %tmp88, %block_2d5b ], [ %tmp139, %block_2e0b ]
  %r12.0 = phi i64 [ %tmp89, %block_2d5b ], [ %tmp142, %block_2e0b ]
  %tmp90 = add i64 %rbx.1, 1
  %tmp91 = inttoptr i64 %tmp90 to i8*
  %tmp92 = load i8* %tmp91
  %tmp93 = add i64 %r12.0, 1
  %tmp94 = inttoptr i64 %tmp93 to i8*
  %tmp95 = load i8* %tmp94
  %tmp96 = icmp eq i8 %tmp92, %tmp95
  br i1 %tmp96, label %block_2d7b, label %block_2e14

block_2d7b:                                       ; preds = %block_2d63
  %tmp97 = add i64 %rbx.1, 2
  %tmp98 = inttoptr i64 %tmp97 to i8*
  %tmp99 = load i8* %tmp98
  %tmp100 = add i64 %r12.0, 2
  %tmp101 = inttoptr i64 %tmp100 to i8*
  %tmp102 = load i8* %tmp101
  %tmp103 = icmp eq i8 %tmp99, %tmp102
  br i1 %tmp103, label %block_2d93, label %block_2e14

block_2d93:                                       ; preds = %block_2d7b
  %tmp104 = add i64 %rbx.1, 3
  %tmp105 = inttoptr i64 %tmp104 to i8*
  %tmp106 = load i8* %tmp105
  %tmp107 = add i64 %r12.0, 3
  %tmp108 = inttoptr i64 %tmp107 to i8*
  %tmp109 = load i8* %tmp108
  %tmp110 = icmp eq i8 %tmp106, %tmp109
  br i1 %tmp110, label %block_2da7, label %block_2e14

block_2da7:                                       ; preds = %block_2d93
  %tmp111 = add i64 %rbx.1, 4
  %tmp112 = inttoptr i64 %tmp111 to i8*
  %tmp113 = load i8* %tmp112
  %tmp114 = add i64 %r12.0, 4
  %tmp115 = inttoptr i64 %tmp114 to i8*
  %tmp116 = load i8* %tmp115
  %tmp117 = icmp eq i8 %tmp113, %tmp116
  br i1 %tmp117, label %block_2dbb, label %block_2e14

block_2dbb:                                       ; preds = %block_2da7
  %tmp118 = add i64 %rbx.1, 5
  %tmp119 = inttoptr i64 %tmp118 to i8*
  %tmp120 = load i8* %tmp119
  %tmp121 = add i64 %r12.0, 5
  %tmp122 = inttoptr i64 %tmp121 to i8*
  %tmp123 = load i8* %tmp122
  %tmp124 = icmp eq i8 %tmp120, %tmp123
  br i1 %tmp124, label %block_2dcf, label %block_2e14

block_2dcf:                                       ; preds = %block_2dbb
  %tmp125 = add i64 %rbx.1, 6
  %tmp126 = inttoptr i64 %tmp125 to i8*
  %tmp127 = load i8* %tmp126
  %tmp128 = add i64 %r12.0, 6
  %tmp129 = inttoptr i64 %tmp128 to i8*
  %tmp130 = load i8* %tmp129
  %tmp131 = icmp eq i8 %tmp127, %tmp130
  br i1 %tmp131, label %block_2de3, label %block_2e14

block_2de3:                                       ; preds = %block_2dcf
  %tmp132 = add i64 %rbx.1, 7
  %tmp133 = inttoptr i64 %tmp132 to i8*
  %tmp134 = load i8* %tmp133
  %tmp135 = add i64 %r12.0, 7
  %tmp136 = inttoptr i64 %tmp135 to i8*
  %tmp137 = load i8* %tmp136
  %tmp138 = icmp eq i8 %tmp134, %tmp137
  br i1 %tmp138, label %block_2df7, label %block_2e14

block_2df7:                                       ; preds = %block_2de3
  %tmp139 = add i64 %rbx.1, 8
  %tmp140 = inttoptr i64 %tmp139 to i8*
  %tmp141 = load i8* %tmp140
  %tmp142 = add i64 %r12.0, 8
  %tmp143 = inttoptr i64 %tmp142 to i8*
  %tmp144 = load i8* %tmp143
  %tmp145 = icmp eq i8 %tmp141, %tmp144
  br i1 %tmp145, label %block_2e0b, label %block_2e14

block_2e0b:                                       ; preds = %block_2df7
  %tmp146 = icmp ult i64 %tmp139, add (i64 ptrtoint (i64* @global_var_21a52a to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64))
  br i1 %tmp146, label %block_2d63, label %block_2e14

block_2e14:                                       ; preds = %block_2df7, %block_2de3, %block_2dcf, %block_2dbb, %block_2da7, %block_2d93, %block_2d7b, %block_2d63, %block_2e0b
  %rbx.2 = phi i64 [ %tmp90, %block_2d63 ], [ %tmp97, %block_2d7b ], [ %tmp104, %block_2d93 ], [ %tmp111, %block_2da7 ], [ %tmp118, %block_2dbb ], [ %tmp125, %block_2dcf ], [ %tmp132, %block_2de3 ], [ %tmp139, %block_2df7 ], [ %tmp139, %block_2e0b ]
  %tmp147 = sub i64 add (i64 ptrtoint (i64* @global_var_21a52a to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)), %rbx.2
  %tmp148 = trunc i64 %tmp147 to i32
  %tmp149 = sub i32 258, %tmp148
  %tmp150 = icmp sgt i32 %tmp149, %tmp63
  br i1 %tmp150, label %block_2e37, label %block_2e6e

block_2e37:                                       ; preds = %block_2e14
  %tmp151 = zext i32 %tmp149 to i64
  store i32 %stack_var_-68.0, i32* bitcast (i64* @global_var_21a444 to i32*)
  %tmp152 = inttoptr i32 %tmp149 to i8*
  %tmp153 = load i32* bitcast (i64* @global_var_2165c0 to i32*)
  %tmp154 = sext i32 %tmp153 to i64
  %tmp155 = icmp slt i64 %tmp151, %tmp154
  br i1 %tmp155, label %block_2e4f, label %block_2ea5

block_2e4f:                                       ; preds = %block_2e37
  %tmp156 = ptrtoint i8* %tmp152 to i32
  %tmp157 = sext i32 %tmp156 to i64
  %tmp158 = add i64 %tmp157, add (i64 add (i64 ptrtoint (i64* @global_var_21a52a to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)), i64 -259)
  %tmp159 = inttoptr i64 %tmp158 to i8*
  %tmp160 = load i8* %tmp159
  %tmp161 = zext i8 %tmp160 to i64
  %tmp162 = add i64 %tmp157, add (i64 add (i64 ptrtoint (i64* @global_var_21a52a to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)), i64 -258)
  %tmp163 = inttoptr i64 %tmp162 to i8*
  %tmp164 = load i8* %tmp163
  %tmp165 = zext i8 %tmp164 to i64
  br label %block_2e6e

block_2e6d:                                       ; preds = %block_2d43, %block_2d33, %block_2d1b, %block_2cf9
  br label %block_2e6e

block_2e6e:                                       ; preds = %block_2e14, %block_2e6d, %block_2e4f
  %stack_var_-56.1 = phi i8* [ %stack_var_-56.0, %block_2e6d ], [ %stack_var_-56.0, %block_2e14 ], [ %tmp152, %block_2e4f ]
  %rbx.3 = phi i64 [ %rbx.0, %block_2e6d ], [ add (i64 add (i64 ptrtoint (i64* @global_var_21a52a to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)), i64 -258), %block_2e14 ], [ add (i64 add (i64 ptrtoint (i64* @global_var_21a52a to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)), i64 -258), %block_2e4f ]
  %r14.1 = phi i64 [ %r14.0, %block_2e6d ], [ %r14.0, %block_2e14 ], [ %tmp161, %block_2e4f ]
  %r15.1 = phi i64 [ %r15.0, %block_2e6d ], [ %r15.0, %block_2e14 ], [ %tmp165, %block_2e4f ]
  %tmp166 = and i32 %stack_var_-68.0, 32767
  %tmp167 = zext i32 %tmp166 to i64
  %tmp168 = shl nuw nsw i64 %tmp167, 1
  %tmp169 = add i64 %tmp168, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp170 = inttoptr i64 %tmp169 to i16*
  %tmp171 = load i16* %tmp170
  %tmp172 = zext i16 %tmp171 to i32
  %tmp173 = icmp ugt i32 %tmp172, %tmp45
  br i1 %tmp173, label %block_2e95, label %block_2ea6

block_2e95:                                       ; preds = %block_2e6e
  %tmp174 = add i32 %stack_var_-60.0, -1
  %tmp175 = icmp eq i32 %tmp174, 0
  br i1 %tmp175, label %block_2ea3, label %block_2cf9

block_2ea3:                                       ; preds = %block_2e95
  br label %block_2ea6

block_2ea5:                                       ; preds = %block_2e37
  br label %block_2ea6

block_2ea6:                                       ; preds = %block_2e6e, %block_2ea5, %block_2ea3
  %stack_var_-56.2 = phi i8* [ %stack_var_-56.1, %block_2ea3 ], [ %tmp152, %block_2ea5 ], [ %stack_var_-56.1, %block_2e6e ]
  %tmp176 = ptrtoint i8* %stack_var_-56.2 to i32
  %tmp177 = zext i32 %tmp176 to i64
  ret i64 %tmp177
}

define i64 @fill_window() {
block_2eb4:
  %tmp29 = load i64* @global_var_216020
  %tmp30 = trunc i64 %tmp29 to i32
  %tmp31 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp32 = sub i32 %tmp30, %tmp31
  %tmp33 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp34 = sub i32 %tmp32, %tmp33
  %tmp35 = inttoptr i32 %tmp34 to i64*
  %tmp36 = ptrtoint i64* %tmp35 to i32
  %tmp37 = icmp eq i32 %tmp36, -1
  br i1 %tmp37, label %block_2ee3, label %block_2eec

block_2ee3:                                       ; preds = %block_2eb4
  br label %block_302e

block_2eec:                                       ; preds = %block_2eb4
  %tmp38 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp39 = icmp ult i32 %tmp38, 65274
  br i1 %tmp39, label %block_302e, label %block_2efd

block_2efd:                                       ; preds = %block_2eec
  %tmp40 = call i64* @memcpy(i64* @global_var_24f4c0, i64* @global_var_2574c0, i32 32768)
  %tmp41 = load i32* bitcast (i64* @global_var_21a444 to i32*)
  %tmp42 = add i32 %tmp41, -32768
  store i32 %tmp42, i32* bitcast (i64* @global_var_21a444 to i32*)
  %tmp43 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp44 = add i32 %tmp43, -32768
  store i32 %tmp44, i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp45 = load i64* @global_var_2165b8
  %tmp46 = icmp eq i64 %tmp45, 4294967295
  br i1 %tmp46, label %block_2f5f, label %block_2f4b

block_2f4b:                                       ; preds = %block_2efd
  %tmp47 = load i64* @global_var_2165b8
  %tmp48 = add i64 %tmp47, -32768
  store i64 %tmp48, i64* @global_var_2165b8
  br label %block_2f5f

block_2f5f:                                       ; preds = %block_2f4b, %block_2efd
  %tmp49 = load i64* @global_var_21a430
  %tmp50 = add i64 %tmp49, -32768
  store i64 %tmp50, i64* @global_var_21a430
  br label %block_2f7a

block_2f7a:                                       ; preds = %block_2fb1, %block_2f5f
  %indvars.iv5 = phi i64 [ 0, %block_2f5f ], [ %indvars.iv.next6, %block_2fb1 ]
  %tmp51 = shl nuw nsw i64 %indvars.iv5, 1
  %tmp52 = add i64 %tmp51, add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 65536)
  %tmp53 = inttoptr i64 %tmp52 to i16*
  %tmp54 = load i16* %tmp53
  %tmp55 = icmp sgt i16 %tmp54, -1
  br i1 %tmp55, label %block_2fac, label %block_2fa0

block_2fa0:                                       ; preds = %block_2f7a
  %tmp56 = zext i16 %tmp54 to i64
  %tmp57 = add nuw nsw i64 %tmp56, 4294934528
  %tmp58 = and i64 %tmp57, 4294967295
  br label %block_2fb1

block_2fac:                                       ; preds = %block_2f7a
  br label %block_2fb1

block_2fb1:                                       ; preds = %block_2fac, %block_2fa0
  %rdx.0 = phi i64 [ 0, %block_2fac ], [ %tmp58, %block_2fa0 ]
  %tmp59 = trunc i64 %rdx.0 to i16
  store i16 %tmp59, i16* %tmp53
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 32768
  br i1 %exitcond7, label %block_2fd5, label %block_2f7a

block_2fd5:                                       ; preds = %block_2fb1
  br label %block_2fdc

block_2fdc:                                       ; preds = %block_300b, %block_2fd5
  %indvars.iv = phi i64 [ 0, %block_2fd5 ], [ %indvars.iv.next, %block_300b ]
  %tmp60 = shl nuw nsw i64 %indvars.iv, 1
  %tmp61 = add i64 %tmp60, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp62 = inttoptr i64 %tmp61 to i16*
  %tmp63 = load i16* %tmp62
  %tmp64 = icmp sgt i16 %tmp63, -1
  br i1 %tmp64, label %block_3006, label %block_2ffa

block_2ffa:                                       ; preds = %block_2fdc
  %tmp65 = zext i16 %tmp63 to i64
  %tmp66 = add nuw nsw i64 %tmp65, 4294934528
  %tmp67 = and i64 %tmp66, 4294967295
  br label %block_300b

block_3006:                                       ; preds = %block_2fdc
  br label %block_300b

block_300b:                                       ; preds = %block_3006, %block_2ffa
  %rcx.0 = phi i64 [ 0, %block_3006 ], [ %tmp67, %block_2ffa ]
  %tmp68 = trunc i64 %rcx.0 to i16
  store i16 %tmp68, i16* %tmp62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32768
  br i1 %exitcond, label %block_3027, label %block_2fdc

block_3027:                                       ; preds = %block_300b
  br label %block_302e

block_302e:                                       ; preds = %block_3027, %block_2eec, %block_2ee3
  %tmp69 = load i32* bitcast (i64* @global_var_21659c to i32*)
  %tmp70 = zext i32 %tmp69 to i64
  %tmp71 = icmp eq i32 %tmp69, 0
  br i1 %tmp71, label %block_303c, label %block_30be

block_303c:                                       ; preds = %block_302e
  %tmp72 = load i64* @global_var_21a420
  %tmp73 = call i64 @__pseudo_call(i64 %tmp72)
  %tmp74 = trunc i64 %tmp73 to i32
  %tmp75 = icmp eq i32 %tmp74, 0
  br i1 %tmp75, label %block_3075, label %block_3070

block_3070:                                       ; preds = %block_303c
  %tmp76 = icmp eq i32 %tmp74, -1
  br i1 %tmp76, label %block_3075, label %block_30b0

block_3075:                                       ; preds = %block_3070, %block_303c
  store i32 1, i32* bitcast (i64* @global_var_21659c to i32*)
  %tmp77 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp78 = zext i32 %tmp77 to i64
  %tmp79 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp80 = zext i32 %tmp79 to i64
  %tmp81 = add i64 %tmp78, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp82 = add i64 %tmp81, %tmp80
  %tmp83 = inttoptr i64 %tmp82 to i64*
  %tmp84 = call i64* @memset(i64* %tmp83, i32 0, i32 2)
  %tmp85 = ptrtoint i64* %tmp84 to i64
  br label %block_30be

block_30b0:                                       ; preds = %block_3070
  %tmp86 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp87 = add i32 %tmp86, %tmp74
  %tmp88 = zext i32 %tmp87 to i64
  store i32 %tmp87, i32* bitcast (i64* @global_var_2165a0 to i32*)
  br label %block_30be

block_30be:                                       ; preds = %block_302e, %block_30b0, %block_3075
  %rax.0 = phi i64 [ %tmp70, %block_302e ], [ %tmp85, %block_3075 ], [ %tmp88, %block_30b0 ]
  ret i64 %rax.0
}

define i64 @rsync_roll(i32 %arg1, i64 %arg2) {
block_30c8:
  %tmp24 = inttoptr i32 %arg1 to i8*
  %tmp25 = trunc i64 %arg2 to i32
  %tmp26 = inttoptr i32 %tmp25 to i8*
  %tmp27 = ptrtoint i8* %tmp24 to i32
  %tmp28 = icmp ugt i32 %tmp27, 4095
  br i1 %tmp28, label %block_313a, label %block_30db

block_30db:                                       ; preds = %block_30c8
  %tmp29 = ptrtoint i8* %tmp24 to i32
  %tmp30 = icmp ult i32 %tmp29, 4096
  %tmp31 = ptrtoint i8* %tmp26 to i32
  br i1 %tmp30, label %block_30e3.lr.ph, label %block_3123

block_30e3.lr.ph:                                 ; preds = %block_30db
  %tmp32 = add i32 %tmp31, %tmp27
  br label %block_30e3

block_30e3:                                       ; preds = %block_30e3.lr.ph, %block_30f4
  %tmp33 = phi i32 [ %tmp29, %block_30e3.lr.ph ], [ %tmp43, %block_30f4 ]
  %tmp34 = icmp eq i32 %tmp33, %tmp32
  br i1 %tmp34, label %block_31d3, label %block_30f4

block_30f4:                                       ; preds = %block_30e3
  %tmp35 = zext i32 %tmp33 to i64
  %tmp36 = add i64 %tmp35, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp37 = inttoptr i64 %tmp36 to i8*
  %tmp38 = load i8* %tmp37
  %tmp39 = zext i8 %tmp38 to i64
  %tmp40 = load i64* @global_var_2165b0
  %tmp41 = add i64 %tmp40, %tmp39
  store i64 %tmp41, i64* @global_var_2165b0
  %tmp42 = add i32 %tmp33, 1
  %stack_var_-12.0 = inttoptr i32 %tmp42 to i8*
  %tmp43 = ptrtoint i8* %stack_var_-12.0 to i32
  %tmp44 = icmp ult i32 %tmp43, 4096
  br i1 %tmp44, label %block_30e3, label %block_3123

block_3123:                                       ; preds = %block_30f4, %block_30db
  %tmp45 = add i32 %tmp27, sub (i32 0, i32 ptrtoint ([2 x i8]* @global_var_1000 to i32))
  %tmp46 = add i32 %tmp45, %tmp31
  %tmp47 = inttoptr i32 %tmp46 to i8*
  br label %block_313a

block_313a:                                       ; preds = %block_3123, %block_30c8
  %stack_var_-32.0 = phi i8* [ %tmp26, %block_30c8 ], [ %tmp47, %block_3123 ]
  %stack_var_-28.0 = phi i8* [ %tmp24, %block_30c8 ], [ inttoptr (i32 ptrtoint ([2 x i8]* @global_var_1000 to i32) to i8*), %block_3123 ]
  %tmp48 = ptrtoint i8* %stack_var_-28.0 to i32
  %tmp49 = ptrtoint i8* %stack_var_-32.0 to i32
  %tmp50 = add i32 %tmp48, %tmp49
  %tmp51 = ptrtoint i8* %stack_var_-28.0 to i32
  %tmp52 = icmp ult i32 %tmp51, %tmp50
  br i1 %tmp52, label %block_3142, label %block_31d1

block_3142:                                       ; preds = %block_313a, %block_31bc
  %tmp53 = phi i32 [ %tmp74, %block_31bc ], [ %tmp51, %block_313a ]
  %tmp54 = zext i32 %tmp53 to i64
  %tmp55 = add i64 %tmp54, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp56 = inttoptr i64 %tmp55 to i8*
  %tmp57 = load i8* %tmp56
  %tmp58 = zext i8 %tmp57 to i64
  %tmp59 = load i64* @global_var_2165b0
  %tmp60 = add i64 %tmp59, %tmp58
  store i64 %tmp60, i64* @global_var_2165b0
  %tmp61 = sub i32 %tmp53, ptrtoint ([2 x i8]* @global_var_1000 to i32)
  %tmp62 = zext i32 %tmp61 to i64
  %tmp63 = add i64 %tmp62, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp64 = inttoptr i64 %tmp63 to i8*
  %tmp65 = load i8* %tmp64
  %tmp66 = zext i8 %tmp65 to i64
  %tmp67 = sub i64 %tmp60, %tmp66
  store i64 %tmp67, i64* @global_var_2165b0
  %tmp68 = load i64* @global_var_2165b8
  %tmp69 = icmp eq i64 %tmp68, 4294967295
  br i1 %tmp69, label %block_31a1, label %block_31bc

block_31a1:                                       ; preds = %block_3142
  %tmp70 = load i64* @global_var_2165b0
  %tmp71 = and i64 %tmp70, 4095
  %tmp72 = icmp eq i64 %tmp71, 0
  br i1 %tmp72, label %block_31b2, label %block_31bc

block_31b2:                                       ; preds = %block_31a1
  store i64 %tmp54, i64* @global_var_2165b8
  br label %block_31bc

block_31bc:                                       ; preds = %block_31a1, %block_3142, %block_31b2
  %tmp73 = add i32 %tmp53, 1
  %stack_var_-12.1 = inttoptr i32 %tmp73 to i8*
  %tmp74 = ptrtoint i8* %stack_var_-12.1 to i32
  %tmp75 = icmp ult i32 %tmp74, %tmp50
  br i1 %tmp75, label %block_3142, label %block_31d1

block_31d1:                                       ; preds = %block_31bc, %block_313a
  %tmp76 = zext i32 %tmp50 to i64
  br label %block_31d4

block_31d3:                                       ; preds = %block_30e3
  %tmp77 = zext i32 %tmp32 to i64
  br label %block_31d4

block_31d4:                                       ; preds = %block_31d3, %block_31d1
  %rax.0 = phi i64 [ %tmp76, %block_31d1 ], [ %tmp77, %block_31d3 ]
  ret i64 %rax.0
}

define i64 @deflate_fast(%z_stream_s* %arg1, i32 %arg2) {
block_31d6:
  store i32 2, i32* bitcast (i64* @global_var_21a440 to i32*)
  %.pr9 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp31 = icmp eq i32 %.pr9, 0
  br i1 %tmp31, label %block_35ae, label %block_31fb

block_31fb:                                       ; preds = %block_35a0thread-pre-split.loopexit, %block_35a0.loopexit.thread, %block_31d6
  %stack_var_-16.36 = phi i32 [ 0, %block_31d6 ], [ %stack_var_-16.2, %block_35a0.loopexit.thread ], [ %stack_var_-16.2, %block_35a0thread-pre-split.loopexit ]
  %tmp32 = load i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp33 = shl i32 %tmp32, 5
  %tmp34 = load i8* inttoptr (i64 add (i64 zext (i32 ptrtoint (i64* @global_var_21a42a to i32) to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)) to i8*)
  %tmp35 = zext i8 %tmp34 to i32
  %.masked = and i32 %tmp33, 32736
  %tmp36 = xor i32 %tmp35, %.masked
  store i32 %tmp36, i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp37 = load i16* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 add (i64 ptrtoint (i64* @global_var_21e598 to i64), i64 ptrtoint (i64* @global_var_21e598 to i64))) to i16*)
  %tmp38 = zext i16 %tmp37 to i32
  %tmp39 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp40 = and i32 %tmp39, 32767
  %tmp41 = zext i32 %tmp40 to i64
  %tmp42 = shl nuw nsw i64 %tmp41, 1
  %tmp43 = add i64 %tmp42, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp44 = inttoptr i64 %tmp43 to i16*
  store i16 %tmp37, i16* %tmp44
  %tmp45 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp46 = trunc i32 %tmp45 to i16
  store i16 %tmp46, i16* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 add (i64 ptrtoint (i64* @global_var_21e598 to i64), i64 ptrtoint (i64* @global_var_21e598 to i64))) to i16*)
  %tmp47 = icmp eq i16 %tmp37, 0
  br i1 %tmp47, label %block_32ea, label %block_329f

block_329f:                                       ; preds = %block_31fb
  %tmp48 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp49 = sub i32 %tmp48, %tmp38
  %tmp50 = icmp ugt i32 %tmp49, 32506
  br i1 %tmp50, label %block_32ea, label %block_32af

block_32af:                                       ; preds = %block_329f
  %tmp51 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp52 = zext i32 %tmp51 to i64
  %tmp53 = load i64* @global_var_216020
  %tmp54 = add i64 %tmp53, -262
  %tmp55 = icmp ugt i64 %tmp52, %tmp54
  br i1 %tmp55, label %block_32ea, label %block_32c9

block_32c9:                                       ; preds = %block_32af
  %tmp56 = call i64 @longest_match(i32 %tmp38)
  %tmp57 = trunc i64 %tmp56 to i32
  %tmp58 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp59 = icmp ugt i32 %tmp57, %tmp58
  br i1 %tmp59, label %block_32e1, label %block_32ea

block_32e1:                                       ; preds = %block_32c9
  %tmp60 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  br label %block_32ea

block_32ea:                                       ; preds = %block_32c9, %block_32e1, %block_32af, %block_329f, %block_31fb
  %stack_var_-16.0 = phi i32 [ %stack_var_-16.36, %block_31fb ], [ %stack_var_-16.36, %block_329f ], [ %stack_var_-16.36, %block_32af ], [ %tmp57, %block_32c9 ], [ %tmp60, %block_32e1 ]
  %tmp61 = icmp ult i32 %stack_var_-16.0, 3
  br i1 %tmp61, label %block_348c, label %block_32f4

block_32f4:                                       ; preds = %block_32ea
  %tmp62 = add i32 %stack_var_-16.0, -3
  %tmp63 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp64 = load i32* bitcast (i64* @global_var_21a444 to i32*)
  %tmp65 = sub i32 %tmp63, %tmp64
  %tmp66 = zext i32 %tmp62 to i64
  %tmp67 = call i64 @ct_tally(i32 %tmp65, i64 %tmp66)
  %tmp68 = trunc i64 %tmp67 to i32
  %tmp69 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp70 = sub i32 %tmp69, %stack_var_-16.0
  store i32 %tmp70, i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp71 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp72 = icmp eq i32 %tmp71, 0
  br i1 %tmp72, label %block_3343, label %block_3331

block_3331:                                       ; preds = %block_32f4
  %tmp73 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp74 = zext i32 %stack_var_-16.0 to i64
  %tmp75 = call i64 @rsync_roll(i32 %tmp73, i64 %tmp74)
  br label %block_3343

block_3343:                                       ; preds = %block_3331, %block_32f4
  %tmp76 = load i32* bitcast (i64* @global_var_2165a4 to i32*)
  %tmp77 = icmp ugt i32 %stack_var_-16.0, %tmp76
  br i1 %tmp77, label %block_3425, label %block_3352

block_3352:                                       ; preds = %block_3343
  %tmp78 = add i32 %stack_var_-16.0, -1
  br label %block_3356

block_3356:                                       ; preds = %block_3356, %block_3352
  %stack_var_-16.1 = phi i32 [ %tmp78, %block_3352 ], [ %tmp93, %block_3356 ]
  store i32 ptrtoint (i64* @global_var_21a429 to i32), i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp79 = load i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp80 = shl i32 %tmp79, 5
  %tmp81 = load i8* inttoptr (i64 add (i64 zext (i32 ptrtoint (i64* @global_var_21a42a to i32) to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)) to i8*)
  %tmp82 = zext i8 %tmp81 to i32
  %.masked1 = and i32 %tmp80, 32736
  %tmp83 = xor i32 %tmp82, %.masked1
  store i32 %tmp83, i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp84 = load i16* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 add (i64 ptrtoint (i64* @global_var_21e598 to i64), i64 ptrtoint (i64* @global_var_21e598 to i64))) to i16*)
  %tmp85 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp86 = and i32 %tmp85, 32767
  %tmp87 = zext i32 %tmp86 to i64
  %tmp88 = shl nuw nsw i64 %tmp87, 1
  %tmp89 = add i64 %tmp88, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp90 = inttoptr i64 %tmp89 to i16*
  store i16 %tmp84, i16* %tmp90
  %tmp91 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp92 = trunc i32 %tmp91 to i16
  store i16 %tmp92, i16* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 add (i64 ptrtoint (i64* @global_var_21e598 to i64), i64 ptrtoint (i64* @global_var_21e598 to i64))) to i16*)
  %tmp93 = add i32 %stack_var_-16.1, -1
  %tmp94 = icmp eq i32 %tmp93, 0
  br i1 %tmp94, label %block_3411, label %block_3356

block_3411:                                       ; preds = %block_3356
  store i32 ptrtoint (i64* @global_var_21a429 to i32), i32* bitcast (i64* @global_var_21a428 to i32*)
  br label %block_34eb

block_3425:                                       ; preds = %block_3343
  %tmp95 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp96 = add i32 %tmp95, %stack_var_-16.0
  store i32 %tmp96, i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp97 = zext i32 %tmp96 to i64
  %tmp98 = add i64 %tmp97, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp99 = inttoptr i64 %tmp98 to i8*
  %tmp100 = load i8* %tmp99
  %tmp101 = zext i8 %tmp100 to i32
  store i32 %tmp101, i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp102 = shl nuw nsw i32 %tmp101, 5
  %tmp103 = load i8* inttoptr (i64 add (i64 zext (i32 ptrtoint (i64* @global_var_21a429 to i32) to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)) to i8*)
  %tmp104 = zext i8 %tmp103 to i32
  %tmp105 = xor i32 %tmp104, %tmp102
  store i32 %tmp105, i32* bitcast (i64* @global_var_216598 to i32*)
  br label %block_34eb

block_348c:                                       ; preds = %block_32ea
  %tmp106 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp107 = zext i32 %tmp106 to i64
  %tmp108 = add i64 %tmp107, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp109 = inttoptr i64 %tmp108 to i8*
  %tmp110 = load i8* %tmp109
  %tmp111 = zext i8 %tmp110 to i64
  %tmp112 = call i64 @ct_tally(i32 0, i64 %tmp111)
  %tmp113 = trunc i64 %tmp112 to i32
  %tmp114 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp115 = icmp eq i32 %tmp114, 0
  br i1 %tmp115, label %block_34cd, label %block_34bb

block_34bb:                                       ; preds = %block_348c
  %tmp116 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp117 = call i64 @rsync_roll(i32 %tmp116, i64 1)
  br label %block_34cd

block_34cd:                                       ; preds = %block_34bb, %block_348c
  %tmp118 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp119 = add i32 %tmp118, -1
  store i32 %tmp119, i32* bitcast (i64* @global_var_2165a0 to i32*)
  store i32 ptrtoint (i64* @global_var_21a429 to i32), i32* bitcast (i64* @global_var_21a428 to i32*)
  br label %block_34eb

block_34eb:                                       ; preds = %block_34cd, %block_3425, %block_3411
  %stack_var_-20.0 = phi i32 [ %tmp113, %block_34cd ], [ %tmp68, %block_3425 ], [ %tmp68, %block_3411 ]
  %stack_var_-16.2 = phi i32 [ %stack_var_-16.0, %block_34cd ], [ 0, %block_3425 ], [ 0, %block_3411 ]
  %tmp120 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp121 = icmp eq i32 %tmp120, 0
  br i1 %tmp121, label %block_351c, label %block_34f5

block_34f5:                                       ; preds = %block_34eb
  %tmp122 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp123 = zext i32 %tmp122 to i64
  %tmp124 = load i64* @global_var_2165b8
  %tmp125 = icmp ugt i64 %tmp123, %tmp124
  br i1 %tmp125, label %block_351c.thread, label %block_351c

block_351c.thread:                                ; preds = %block_34f5
  store i64 4294967295, i64* @global_var_2165b8
  br label %block_3522

block_351c:                                       ; preds = %block_34f5, %block_34eb
  %tmp126 = icmp eq i32 %stack_var_-20.0, 0
  br i1 %tmp126, label %block_3589.preheader, label %block_3522

block_3522:                                       ; preds = %block_351c.thread, %block_351c
  %stack_var_-20.12 = phi i32 [ 2, %block_351c.thread ], [ %stack_var_-20.0, %block_351c ]
  %tmp127 = zext i32 %stack_var_-20.12 to i64
  %tmp128 = add nuw nsw i64 %tmp127, 4294967295
  %tmp129 = and i64 %tmp128, 4294967295
  %tmp130 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp131 = zext i32 %tmp130 to i64
  %tmp132 = load i64* @global_var_21a430
  %tmp133 = sub i64 %tmp131, %tmp132
  %tmp134 = icmp slt i64 %tmp132, 0
  br i1 %tmp134, label %block_3561, label %block_354c

block_354c:                                       ; preds = %block_3522
  br label %block_3566

block_3561:                                       ; preds = %block_3522
  br label %block_3566

block_3566:                                       ; preds = %block_3561, %block_354c
  %rax.0 = phi i64 [ 0, %block_3561 ], [ ptrtoint (i64* @global_var_24f4c0 to i64), %block_354c ]
  %tmp135 = trunc i64 %tmp133 to i32
  %tmp136 = call i64 @flush_block(i64 %rax.0, i32 %tmp135, i64 %tmp129, i64 0)
  %tmp137 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp138 = zext i32 %tmp137 to i64
  store i64 %tmp138, i64* @global_var_21a430
  br label %block_3589.preheader

block_3589.preheader:                             ; preds = %block_351c, %block_3566
  %stack_var_-20.13.ph = phi i32 [ 0, %block_351c ], [ %stack_var_-20.12, %block_3566 ]
  %tmp139 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp140 = icmp ugt i32 %tmp139, 261
  br i1 %tmp140, label %block_35a0.loopexit.thread, label %block_3596

block_3584:                                       ; preds = %block_3596
  %tmp141 = call i64 @fill_window()
  %tmp142 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp143 = icmp ugt i32 %tmp142, 261
  br i1 %tmp143, label %block_35a0.loopexit.thread, label %block_3596

block_3596:                                       ; preds = %block_3589.preheader, %block_3584
  %tmp144 = load i32* bitcast (i64* @global_var_21659c to i32*)
  %tmp145 = icmp eq i32 %tmp144, 0
  br i1 %tmp145, label %block_3584, label %block_35a0thread-pre-split.loopexit

block_35a0thread-pre-split.loopexit:              ; preds = %block_3596
  %.pr = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp146 = icmp eq i32 %.pr, 0
  br i1 %tmp146, label %block_35ae, label %block_31fb

block_35a0.loopexit.thread:                       ; preds = %block_3584, %block_3589.preheader
  br label %block_31fb

block_35ae:                                       ; preds = %block_35a0thread-pre-split.loopexit, %block_31d6
  %stack_var_-20.2.lcssa = phi i32 [ 0, %block_31d6 ], [ %stack_var_-20.13.ph, %block_35a0thread-pre-split.loopexit ]
  %tmp147 = zext i32 %stack_var_-20.2.lcssa to i64
  %tmp148 = add nuw nsw i64 %tmp147, 4294967295
  %tmp149 = and i64 %tmp148, 4294967295
  %tmp150 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp151 = zext i32 %tmp150 to i64
  %tmp152 = load i64* @global_var_21a430
  %tmp153 = sub i64 %tmp151, %tmp152
  %tmp154 = icmp slt i64 %tmp152, 0
  br i1 %tmp154, label %block_35ed, label %block_35d8

block_35d8:                                       ; preds = %block_35ae
  br label %block_35f2

block_35ed:                                       ; preds = %block_35ae
  br label %block_35f2

block_35f2:                                       ; preds = %block_35ed, %block_35d8
  %rax.1 = phi i64 [ 0, %block_35ed ], [ ptrtoint (i64* @global_var_24f4c0 to i64), %block_35d8 ]
  %tmp155 = trunc i64 %tmp153 to i32
  %tmp156 = call i64 @flush_block(i64 %rax.1, i32 %tmp155, i64 %tmp149, i64 1)
  ret i64 %tmp156
}

define i32 @deflate(%z_stream_s* %strm, i32 %flush) {
block_3601:
  %tmp33 = load i32* bitcast (i64* @global_var_2165a8 to i32*)
  %tmp34 = icmp sgt i32 %tmp33, 3
  br i1 %tmp34, label %block_3b6e.preheader, label %block_362c

block_3b6e.preheader:                             ; preds = %block_3601
  %tmp35 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp36 = icmp eq i32 %tmp35, 0
  br i1 %tmp36, label %block_3b7c.thread, label %block_3636

block_3b7c.thread:                                ; preds = %block_3b6e.preheader
  br label %block_3ba7

block_362c:                                       ; preds = %block_3601
  %tmp37 = call i64 @deflate_fast(%z_stream_s* %strm, i32 %flush)
  br label %block_3bf8

block_3636:                                       ; preds = %block_3b6e.preheader, %block_3b6e.backedge
  %stack_var_-40.0 = phi i32 [ %stack_var_-40.8, %block_3b6e.backedge ], [ 0, %block_3b6e.preheader ]
  %rbx.48 = phi i64 [ %rbx.3, %block_3b6e.backedge ], [ 2, %block_3b6e.preheader ]
  %stack_var_-36.27 = phi i32 [ %stack_var_-36.1, %block_3b6e.backedge ], [ 0, %block_3b6e.preheader ]
  %tmp38 = load i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp39 = shl i32 %tmp38, 5
  %tmp40 = load i8* inttoptr (i64 add (i64 zext (i32 ptrtoint (i64* @global_var_21a42a to i32) to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)) to i8*)
  %tmp41 = zext i8 %tmp40 to i32
  %.masked = and i32 %tmp39, 32736
  %tmp42 = xor i32 %tmp41, %.masked
  store i32 %tmp42, i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp43 = load i16* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 add (i64 ptrtoint (i64* @global_var_21e598 to i64), i64 ptrtoint (i64* @global_var_21e598 to i64))) to i16*)
  %tmp44 = zext i16 %tmp43 to i32
  %tmp45 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp46 = and i32 %tmp45, 32767
  %tmp47 = zext i32 %tmp46 to i64
  %tmp48 = shl nuw nsw i64 %tmp47, 1
  %tmp49 = add i64 %tmp48, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp50 = inttoptr i64 %tmp49 to i16*
  store i16 %tmp43, i16* %tmp50
  %tmp51 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp52 = trunc i32 %tmp51 to i16
  store i16 %tmp52, i16* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 add (i64 ptrtoint (i64* @global_var_21e598 to i64), i64 ptrtoint (i64* @global_var_21e598 to i64))) to i16*)
  %tmp53 = trunc i64 %rbx.48 to i32
  store i32 %tmp53, i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp54 = load i32* bitcast (i64* @global_var_21a444 to i32*)
  %tmp55 = icmp eq i16 %tmp43, 0
  br i1 %tmp55, label %block_3763, label %block_36ee

block_36ee:                                       ; preds = %block_3636
  %tmp56 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp57 = load i32* bitcast (i64* @global_var_2165a4 to i32*)
  %tmp58 = icmp ult i32 %tmp56, %tmp57
  br i1 %tmp58, label %block_36fe, label %block_3763

block_36fe:                                       ; preds = %block_36ee
  %tmp59 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp60 = sub i32 %tmp59, %tmp44
  %tmp61 = icmp ugt i32 %tmp60, 32506
  br i1 %tmp61, label %block_3763, label %block_370e

block_370e:                                       ; preds = %block_36fe
  %tmp62 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp63 = zext i32 %tmp62 to i64
  %tmp64 = load i64* @global_var_216020
  %tmp65 = add i64 %tmp64, -262
  %tmp66 = icmp ugt i64 %tmp63, %tmp65
  br i1 %tmp66, label %block_3763, label %block_3728

block_3728:                                       ; preds = %block_370e
  %tmp67 = call i64 @longest_match(i32 %tmp44)
  %tmp68 = and i64 %tmp67, 4294967295
  %tmp69 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp70 = trunc i64 %tmp67 to i32
  %tmp71 = icmp ugt i32 %tmp70, %tmp69
  br i1 %tmp71, label %block_373e, label %block_3744

block_373e:                                       ; preds = %block_3728
  %tmp72 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp73 = zext i32 %tmp72 to i64
  br label %block_3744

block_3744:                                       ; preds = %block_3728, %block_373e
  %rbx.0 = phi i64 [ %tmp68, %block_3728 ], [ %tmp73, %block_373e ]
  %tmp74 = icmp eq i64 %rbx.0, 3
  br i1 %tmp74, label %block_3749, label %block_3763

block_3749:                                       ; preds = %block_3744
  %tmp75 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp76 = load i32* bitcast (i64* @global_var_21a444 to i32*)
  %tmp77 = sub i32 %tmp75, %tmp76
  %tmp78 = icmp ult i32 %tmp77, 4097
  br i1 %tmp78, label %block_3763, label %block_3760

block_3760:                                       ; preds = %block_3749
  br label %block_3763

block_3763:                                       ; preds = %block_3744, %block_36ee, %block_3760, %block_3749, %block_370e, %block_36fe, %block_3636
  %rbx.1 = phi i64 [ 2, %block_3636 ], [ 2, %block_36ee ], [ 2, %block_36fe ], [ 2, %block_370e ], [ %rbx.0, %block_3744 ], [ 3, %block_3749 ], [ 2, %block_3760 ]
  %tmp79 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp80 = icmp ult i32 %tmp79, 3
  br i1 %tmp80, label %block_3972, label %block_3772

block_3772:                                       ; preds = %block_3763
  %tmp81 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp82 = trunc i64 %rbx.1 to i32
  %tmp83 = icmp ugt i32 %tmp82, %tmp81
  br i1 %tmp83, label %block_3972, label %block_3780

block_3780:                                       ; preds = %block_3772
  %tmp84 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp85 = add i32 %tmp84, -3
  %tmp86 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp87 = xor i32 %tmp54, -1
  %tmp88 = add i32 %tmp86, %tmp87
  %tmp89 = zext i32 %tmp85 to i64
  %tmp90 = call i64 @ct_tally(i32 %tmp88, i64 %tmp89)
  %tmp91 = trunc i64 %tmp90 to i32
  %tmp92 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp93 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp94 = add i32 %tmp92, 1
  %tmp95 = sub i32 %tmp94, %tmp93
  store i32 %tmp95, i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp96 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp97 = add i32 %tmp96, -2
  store i32 %tmp97, i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp98 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp99 = icmp eq i32 %tmp98, 0
  br i1 %tmp99, label %block_37ed, label %block_37d5

block_37d5:                                       ; preds = %block_3780
  %tmp100 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp101 = call i64 @rsync_roll(i32 %tmp100, i64 zext (i32 ptrtoint (i64* @global_var_21a441 to i32) to i64))
  br label %block_37ed

block_37ed:                                       ; preds = %block_37d5, %block_3780, %block_37ed
  store i32 ptrtoint (i64* @global_var_21a429 to i32), i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp102 = load i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp103 = shl i32 %tmp102, 5
  %tmp104 = load i8* inttoptr (i64 add (i64 zext (i32 ptrtoint (i64* @global_var_21a42a to i32) to i64), i64 ptrtoint (i64* @global_var_24f4c0 to i64)) to i8*)
  %tmp105 = zext i8 %tmp104 to i32
  %.masked2 = and i32 %tmp103, 32736
  %tmp106 = xor i32 %tmp105, %.masked2
  store i32 %tmp106, i32* bitcast (i64* @global_var_216598 to i32*)
  %tmp107 = load i16* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 add (i64 ptrtoint (i64* @global_var_21e598 to i64), i64 ptrtoint (i64* @global_var_21e598 to i64))) to i16*)
  %tmp108 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp109 = and i32 %tmp108, 32767
  %tmp110 = zext i32 %tmp109 to i64
  %tmp111 = shl nuw nsw i64 %tmp110, 1
  %tmp112 = add i64 %tmp111, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp113 = inttoptr i64 %tmp112 to i16*
  store i16 %tmp107, i16* %tmp113
  %tmp114 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp115 = trunc i32 %tmp114 to i16
  store i16 %tmp115, i16* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 add (i64 ptrtoint (i64* @global_var_21e598 to i64), i64 ptrtoint (i64* @global_var_21e598 to i64))) to i16*)
  %tmp116 = load i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp117 = add i32 %tmp116, -1
  store i32 %tmp117, i32* bitcast (i64* @global_var_21a440 to i32*)
  %tmp118 = icmp eq i32 %tmp117, 0
  br i1 %tmp118, label %block_38b7, label %block_37ed

block_38b7:                                       ; preds = %block_37ed
  store i32 ptrtoint (i64* @global_var_21a429 to i32), i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp119 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp120 = icmp eq i32 %tmp119, 0
  br i1 %tmp120, label %block_3903, label %block_38dc

block_38dc:                                       ; preds = %block_38b7
  %tmp121 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp122 = zext i32 %tmp121 to i64
  %tmp123 = load i64* @global_var_2165b8
  %tmp124 = icmp ugt i64 %tmp122, %tmp123
  br i1 %tmp124, label %block_3903.thread, label %block_3903

block_3903.thread:                                ; preds = %block_38dc
  store i64 4294967295, i64* @global_var_2165b8
  br label %block_390d

block_3903:                                       ; preds = %block_38dc, %block_38b7
  %tmp125 = icmp eq i32 %tmp91, 0
  br i1 %tmp125, label %block_3b50, label %block_390d

block_390d:                                       ; preds = %block_3903.thread, %block_3903
  %stack_var_-40.1 = phi i32 [ %tmp91, %block_3903 ], [ 2, %block_3903.thread ]
  %tmp127 = zext i32 %stack_var_-40.1 to i64
  %tmp128 = add nuw nsw i64 %tmp127, 4294967295
  %tmp129 = and i64 %tmp128, 4294967295
  %tmp130 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp131 = zext i32 %tmp130 to i64
  %tmp132 = load i64* @global_var_21a430
  %tmp133 = sub i64 %tmp131, %tmp132
  %tmp134 = icmp slt i64 %tmp132, 0
  br i1 %tmp134, label %block_394c, label %block_3937

block_3937:                                       ; preds = %block_390d
  br label %block_3951

block_394c:                                       ; preds = %block_390d
  br label %block_3951

block_3951:                                       ; preds = %block_394c, %block_3937
  %rax.0 = phi i64 [ 0, %block_394c ], [ ptrtoint (i64* @global_var_24f4c0 to i64), %block_3937 ]
  %tmp135 = trunc i64 %tmp133 to i32
  %tmp136 = call i64 @flush_block(i64 %rax.0, i32 %tmp135, i64 %tmp129, i64 0)
  %tmp137 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp138 = zext i32 %tmp137 to i64
  store i64 %tmp138, i64* @global_var_21a430
  br label %block_3b50

block_3972:                                       ; preds = %block_3772, %block_3763
  %tmp139 = icmp eq i32 %stack_var_-36.27, 0
  br i1 %tmp139, label %block_3a7a, label %block_397c

block_397c:                                       ; preds = %block_3972
  %tmp140 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp141 = add i32 %tmp140, -1
  %tmp142 = zext i32 %tmp141 to i64
  %tmp143 = add i64 %tmp142, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp144 = inttoptr i64 %tmp143 to i8*
  %tmp145 = load i8* %tmp144
  %tmp146 = zext i8 %tmp145 to i64
  %tmp147 = call i64 @ct_tally(i32 0, i64 %tmp146)
  %tmp148 = trunc i64 %tmp147 to i32
  %tmp149 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp150 = icmp eq i32 %tmp149, 0
  br i1 %tmp150, label %block_39d5, label %block_39ae

block_39ae:                                       ; preds = %block_397c
  %tmp151 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp152 = zext i32 %tmp151 to i64
  %tmp153 = load i64* @global_var_2165b8
  %tmp154 = icmp ugt i64 %tmp152, %tmp153
  br i1 %tmp154, label %block_39d5.thread, label %block_39d5

block_39d5.thread:                                ; preds = %block_39ae
  store i64 4294967295, i64* @global_var_2165b8
  br label %block_39db

block_39d5:                                       ; preds = %block_39ae, %block_397c
  %tmp155 = icmp eq i32 %tmp148, 0
  br i1 %tmp155, label %block_3a3b, label %block_39db

block_39db:                                       ; preds = %block_39d5.thread, %block_39d5
  %stack_var_-40.2 = phi i32 [ %tmp148, %block_39d5 ], [ 2, %block_39d5.thread ]
  %tmp157 = zext i32 %stack_var_-40.2 to i64
  %tmp158 = add nuw nsw i64 %tmp157, 4294967295
  %tmp159 = and i64 %tmp158, 4294967295
  %tmp160 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp161 = zext i32 %tmp160 to i64
  %tmp162 = load i64* @global_var_21a430
  %tmp163 = sub i64 %tmp161, %tmp162
  %tmp164 = icmp slt i64 %tmp162, 0
  br i1 %tmp164, label %block_3a1a, label %block_3a05

block_3a05:                                       ; preds = %block_39db
  br label %block_3a1f

block_3a1a:                                       ; preds = %block_39db
  br label %block_3a1f

block_3a1f:                                       ; preds = %block_3a1a, %block_3a05
  %rax.1 = phi i64 [ 0, %block_3a1a ], [ ptrtoint (i64* @global_var_24f4c0 to i64), %block_3a05 ]
  %tmp165 = trunc i64 %tmp163 to i32
  %tmp166 = call i64 @flush_block(i64 %rax.1, i32 %tmp165, i64 %tmp159, i64 0)
  %tmp167 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp168 = zext i32 %tmp167 to i64
  store i64 %tmp168, i64* @global_var_21a430
  br label %block_3a3b

block_3a3b:                                       ; preds = %block_3a1f, %block_39d5
  %stack_var_-40.3 = phi i32 [ 0, %block_39d5 ], [ %stack_var_-40.2, %block_3a1f ]
  %tmp169 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp170 = icmp eq i32 %tmp169, 0
  br i1 %tmp170, label %block_3a57, label %block_3a45

block_3a45:                                       ; preds = %block_3a3b
  %tmp171 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp172 = call i64 @rsync_roll(i32 %tmp171, i64 1)
  br label %block_3a57

block_3a57:                                       ; preds = %block_3a45, %block_3a3b
  store i32 ptrtoint (i64* @global_var_21a429 to i32), i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp173 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp174 = add i32 %tmp173, -1
  store i32 %tmp174, i32* bitcast (i64* @global_var_2165a0 to i32*)
  br label %block_3b57

block_3a7a:                                       ; preds = %block_3972
  %tmp175 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp176 = icmp eq i32 %tmp175, 0
  br i1 %tmp176, label %block_3b0f.thread, label %block_3a88

block_3b0f.thread:                                ; preds = %block_3a7a
  br label %block_3b32

block_3a88:                                       ; preds = %block_3a7a
  %tmp177 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp178 = zext i32 %tmp177 to i64
  %tmp179 = load i64* @global_var_2165b8
  %tmp180 = icmp ugt i64 %tmp178, %tmp179
  br i1 %tmp180, label %block_3a9c, label %block_3b0f

block_3a9c:                                       ; preds = %block_3a88
  store i64 4294967295, i64* @global_var_2165b8
  %tmp181 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp182 = zext i32 %tmp181 to i64
  %tmp183 = load i64* @global_var_21a430
  %tmp184 = sub i64 %tmp182, %tmp183
  %tmp185 = icmp slt i64 %tmp183, 0
  br i1 %tmp185, label %block_3aee, label %block_3ad9

block_3ad9:                                       ; preds = %block_3a9c
  br label %block_3af3

block_3aee:                                       ; preds = %block_3a9c
  br label %block_3af3

block_3af3:                                       ; preds = %block_3aee, %block_3ad9
  %rax.2 = phi i64 [ 0, %block_3aee ], [ ptrtoint (i64* @global_var_24f4c0 to i64), %block_3ad9 ]
  %tmp186 = trunc i64 %tmp184 to i32
  %tmp187 = call i64 @flush_block(i64 %rax.2, i32 %tmp186, i64 1, i64 0)
  %tmp188 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp189 = zext i32 %tmp188 to i64
  store i64 %tmp189, i64* @global_var_21a430
  br label %block_3b0f

block_3b0f:                                       ; preds = %block_3a88, %block_3af3
  %stack_var_-40.4 = phi i32 [ 2, %block_3af3 ], [ %stack_var_-40.0, %block_3a88 ]
  %.pr4 = load i32* bitcast (i64* @global_var_2165f4 to i32*)
  %tmp190 = icmp eq i32 %.pr4, 0
  br i1 %tmp190, label %block_3b32, label %block_3b20

block_3b20:                                       ; preds = %block_3b0f
  %tmp191 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp192 = call i64 @rsync_roll(i32 %tmp191, i64 1)
  br label %block_3b32

block_3b32:                                       ; preds = %block_3b0f.thread, %block_3b20, %block_3b0f
  %stack_var_-40.5 = phi i32 [ %stack_var_-40.0, %block_3b0f.thread ], [ %stack_var_-40.4, %block_3b0f ], [ %stack_var_-40.4, %block_3b20 ]
  store i32 ptrtoint (i64* @global_var_21a429 to i32), i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp193 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp194 = add i32 %tmp193, -1
  store i32 %tmp194, i32* bitcast (i64* @global_var_2165a0 to i32*)
  br label %block_3b50

block_3b50:                                       ; preds = %block_3b32, %block_3951, %block_3903
  %stack_var_-40.6 = phi i32 [ %stack_var_-40.5, %block_3b32 ], [ 0, %block_3903 ], [ %stack_var_-40.1, %block_3951 ]
  %stack_var_-36.0 = phi i32 [ 1, %block_3b32 ], [ 0, %block_3903 ], [ 0, %block_3951 ]
  %rbx.2 = phi i64 [ %rbx.1, %block_3b32 ], [ 2, %block_3903 ], [ 2, %block_3951 ]
  br label %block_3b57thread-pre-split

block_3b52:                                       ; preds = %block_3b64
  %tmp195 = call i64 @fill_window()
  br label %block_3b57thread-pre-split

block_3b57thread-pre-split:                       ; preds = %block_3b50, %block_3b52
  %stack_var_-40.7 = phi i32 [ %stack_var_-40.6, %block_3b50 ], [ %stack_var_-40.8, %block_3b52 ]
  %stack_var_-36.1.ph = phi i32 [ %stack_var_-36.0, %block_3b50 ], [ %stack_var_-36.1, %block_3b52 ]
  %rbx.3.ph = phi i64 [ %rbx.2, %block_3b50 ], [ %rbx.3, %block_3b52 ]
  %.pr5 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  br label %block_3b57

block_3b57:                                       ; preds = %block_3b57thread-pre-split, %block_3a57
  %stack_var_-40.8 = phi i32 [ %stack_var_-40.7, %block_3b57thread-pre-split ], [ %stack_var_-40.3, %block_3a57 ]
  %tmp196 = phi i32 [ %.pr5, %block_3b57thread-pre-split ], [ %tmp174, %block_3a57 ]
  %stack_var_-36.1 = phi i32 [ %stack_var_-36.1.ph, %block_3b57thread-pre-split ], [ %stack_var_-36.27, %block_3a57 ]
  %rbx.3 = phi i64 [ %rbx.3.ph, %block_3b57thread-pre-split ], [ %rbx.1, %block_3a57 ]
  %tmp197 = icmp ugt i32 %tmp196, 261
  br i1 %tmp197, label %block_3b6e.backedge, label %block_3b64

block_3b6e.backedge:                              ; preds = %block_3b57, %block_3b64
  %tmp198 = load i32* bitcast (i64* @global_var_2165a0 to i32*)
  %tmp199 = icmp eq i32 %tmp198, 0
  br i1 %tmp199, label %block_3b7c, label %block_3636

block_3b64:                                       ; preds = %block_3b57
  %tmp200 = load i32* bitcast (i64* @global_var_21659c to i32*)
  %tmp201 = icmp eq i32 %tmp200, 0
  br i1 %tmp201, label %block_3b52, label %block_3b6e.backedge

block_3b7c:                                       ; preds = %block_3b6e.backedge
  %tmp202 = icmp eq i32 %stack_var_-36.1, 0
  br i1 %tmp202, label %block_3ba7, label %block_3b82

block_3b82:                                       ; preds = %block_3b7c
  %tmp203 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp204 = add i32 %tmp203, -1
  %tmp205 = zext i32 %tmp204 to i64
  %tmp206 = add i64 %tmp205, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp207 = inttoptr i64 %tmp206 to i8*
  %tmp208 = load i8* %tmp207
  %tmp209 = zext i8 %tmp208 to i64
  %tmp210 = call i64 @ct_tally(i32 0, i64 %tmp209)
  br label %block_3ba7

block_3ba7:                                       ; preds = %block_3b7c.thread, %block_3b82, %block_3b7c
  %stack_var_-40.9 = phi i32 [ 0, %block_3b7c.thread ], [ %stack_var_-40.8, %block_3b7c ], [ %stack_var_-40.8, %block_3b82 ]
  %tmp212 = zext i32 %stack_var_-40.9 to i64
  %tmp213 = add nuw nsw i64 %tmp212, 4294967295
  %tmp214 = and i64 %tmp213, 4294967295
  %tmp215 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp216 = zext i32 %tmp215 to i64
  %tmp217 = load i64* @global_var_21a430
  %tmp218 = sub i64 %tmp216, %tmp217
  %tmp219 = icmp slt i64 %tmp217, 0
  br i1 %tmp219, label %block_3be6, label %block_3bd1

block_3bd1:                                       ; preds = %block_3ba7
  br label %block_3beb

block_3be6:                                       ; preds = %block_3ba7
  br label %block_3beb

block_3beb:                                       ; preds = %block_3be6, %block_3bd1
  %rax.3 = phi i64 [ 0, %block_3be6 ], [ ptrtoint (i64* @global_var_24f4c0 to i64), %block_3bd1 ]
  %tmp220 = trunc i64 %tmp218 to i32
  %tmp221 = call i64 @flush_block(i64 %rax.3, i32 %tmp220, i64 %tmp214, i64 1)
  br label %block_3bf8

block_3bf8:                                       ; preds = %block_3beb, %block_362c
  %rax.4 = phi i64 [ %tmp221, %block_3beb ], [ %tmp37, %block_362c ]
  %tmp222 = trunc i64 %rax.4 to i32
  ret i32 %tmp222
}

define i64 @try_help() {
block_3bff:
  %tmp7 = load i64* @global_var_25f4c8
  %tmp8 = load i64* @global_var_216580
  %tmp9 = inttoptr i64 %tmp8 to %_IO_FILE*
  %tmp10 = inttoptr i64 %tmp7 to i8*
  %tmp11 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp9, i8* getelementptr inbounds ([39 x i8]* @global_var_10fc8, i32 0, i32 0), i8* %tmp10)
  %tmp12 = call i64 @do_exit(i32 1)
  ret i64 %tmp12
}

define i64 @help() {
block_3c2f:
  %tmp20 = load i64* @global_var_25f4c8
  %tmp21 = inttoptr i64 %tmp20 to i8*
  %tmp22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @global_var_10ff0, i32 0, i32 0), i8* %tmp21)
  %tmp23 = load i64* bitcast ([27 x i8*]* @global_var_215a20 to i64*)
  %tmp24 = icmp eq i64 %tmp23, 0
  br i1 %tmp24, label %block_3c82, label %block_3c5f

block_3c5f:                                       ; preds = %block_3c2f, %block_3c5f
  %tmp25 = phi i64* [ %tmp32, %block_3c5f ], [ bitcast ([27 x i8*]* @global_var_215a20 to i64*), %block_3c2f ]
  %stack_var_-16.02 = phi i8** [ %tmp28, %block_3c5f ], [ getelementptr inbounds ([27 x i8*]* @global_var_215a20, i32 0, i32 0), %block_3c2f ]
  %tmp26 = ptrtoint i8** %stack_var_-16.02 to i64
  %tmp27 = add i64 %tmp26, 8
  %tmp28 = inttoptr i64 %tmp27 to i8**
  %tmp29 = load i64* %tmp25
  %tmp30 = inttoptr i64 %tmp29 to i8*
  %tmp31 = call i32 @puts(i8* %tmp30)
  %tmp32 = bitcast i8** %tmp28 to i64*
  %0 = load i8** %tmp28
  %1 = ptrtoint i8* %0 to i64
  %tmp34 = icmp eq i64 %1, 0
  br i1 %tmp34, label %block_3c82, label %block_3c5f

block_3c82:                                       ; preds = %block_3c5f, %block_3c2f
  ret i64 0
}

define i64 @license() {
block_3c85:
  %0 = load [5 x i8]** @global_var_216558
  %1 = bitcast [5 x i8]* %0 to i8*
  %tmp21 = load i64* @global_var_25f4c8
  %tmp22 = inttoptr i64 %tmp21 to i8*
  %tmp23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @global_var_11011, i32 0, i32 0), i8* %tmp22, i8* %1)
  %tmp24 = load i64* bitcast ([5 x i8*]* @global_var_215680 to i64*)
  %tmp25 = icmp eq i64 %tmp24, 0
  br i1 %tmp25, label %block_3cdf, label %block_3cbc

block_3cbc:                                       ; preds = %block_3c85, %block_3cbc
  %tmp26 = phi i64* [ %tmp33, %block_3cbc ], [ bitcast ([5 x i8*]* @global_var_215680 to i64*), %block_3c85 ]
  %stack_var_-16.02 = phi i8** [ %tmp29, %block_3cbc ], [ getelementptr inbounds ([5 x i8*]* @global_var_215680, i32 0, i32 0), %block_3c85 ]
  %tmp27 = ptrtoint i8** %stack_var_-16.02 to i64
  %tmp28 = add i64 %tmp27, 8
  %tmp29 = inttoptr i64 %tmp28 to i8**
  %tmp30 = load i64* %tmp26
  %tmp31 = inttoptr i64 %tmp30 to i8*
  %tmp32 = call i32 @puts(i8* %tmp31)
  %tmp33 = bitcast i8** %tmp29 to i64*
  %2 = load i8** %tmp29
  %3 = ptrtoint i8* %2 to i64
  %tmp35 = icmp eq i64 %3, 0
  br i1 %tmp35, label %block_3cdf, label %block_3cbc

block_3cdf:                                       ; preds = %block_3cbc, %block_3c85
  ret i64 0
}

define i64 @version() {
block_3ce2:
  %tmp6 = call i64 @license()
  %tmp7 = call i32 @putchar(i32 10)
  %tmp8 = call i32 @puts(i8* getelementptr inbounds ([29 x i8]* @global_var_11018, i32 0, i32 0))
  %tmp9 = sext i32 %tmp8 to i64
  ret i64 %tmp9
}

define i64 @progerror(i8* %arg1) {
block_3d04:
  %tmp19 = call i32* @__errno_location()
  %tmp20 = load i32* %tmp19
  %tmp21 = load i64* @global_var_25f4c8
  %tmp22 = load i64* @global_var_216580
  %tmp23 = inttoptr i64 %tmp22 to %_IO_FILE*
  %tmp24 = inttoptr i64 %tmp21 to i8*
  %tmp25 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp23, i8* getelementptr inbounds ([5 x i8]* @global_var_11035, i32 0, i32 0), i8* %tmp24)
  %tmp26 = call i32* @__errno_location()
  store i32 %tmp20, i32* %tmp26
  call void @perror(i8* %arg1) #1
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  ret i64 ptrtoint (i64* @0 to i64)
}

define i64 @main(i32 %argc, i8** %argv) {
block_3d62:
  %0 = alloca i32
  %1 = load i32* %0
  %stack_var_-52 = alloca i32
  %stack_var_-56 = alloca i32
  %stack_var_-40 = alloca i8**
  %2 = load i8** %argv
  %3 = bitcast i8* %2 to i64*
  %tmp99 = call i64 @gzip_base_name(i64* %3)
  store i64 %tmp99, i64* @global_var_25f4c8
  %tmp100 = inttoptr i64 %tmp99 to i8*
  %tmp101 = call i32 @strlen(i8* %tmp100)
  %tmp102 = icmp ult i32 %tmp101, 5
  br i1 %tmp102, label %block_3dea, label %block_3db0

block_3db0:                                       ; preds = %block_3d62
  %tmp103 = sext i32 %tmp101 to i64
  %tmp104 = load i64* @global_var_25f4c8
  %tmp105 = add nsw i64 %tmp103, -4
  %tmp106 = add i64 %tmp104, %tmp105
  %tmp107 = inttoptr i64 %tmp106 to i8*
  %tmp108 = call i32 @strcmp(i8* %tmp107, i8* getelementptr inbounds ([5 x i8]* @global_var_1103a, i32 0, i32 0))
  %tmp109 = icmp eq i32 %tmp108, 0
  br i1 %tmp109, label %block_3dd5, label %block_3dea

block_3dd5:                                       ; preds = %block_3db0
  %tmp110 = load i64* @global_var_25f4c8
  %tmp111 = add i64 %tmp110, %tmp105
  %tmp112 = inttoptr i64 %tmp111 to i8*
  store i8 0, i8* %tmp112
  br label %block_3dea

block_3dea:                                       ; preds = %block_3db0, %block_3dd5, %block_3d62
  store i8** %argv, i8*** %stack_var_-40
  %tmp114 = ptrtoint i8*** %stack_var_-40 to i64
  %tmp115 = bitcast i8*** %stack_var_-40 to i64*
  %tmp116 = call i64 @add_envopt(i32* %stack_var_-56, i64* %tmp115, i8* getelementptr inbounds ([5 x i8]* @global_var_1103f, i32 0, i32 0))
  store i64 %tmp116, i64* @global_var_216628
  %tmp117 = icmp eq i64 %tmp116, 0
  br i1 %tmp117, label %block_3e25, label %block_3e1f

block_3e1f:                                       ; preds = %block_3dea
  %tmp118 = load i8*** %stack_var_-40
  %tmp119 = ptrtoint i8** %tmp118 to i64
  br label %block_3e2a

block_3e25:                                       ; preds = %block_3dea
  br label %block_3e2a

block_3e2a:                                       ; preds = %block_3e25, %block_3e1f
  %rax.0 = phi i64 [ 0, %block_3e25 ], [ %tmp119, %block_3e1f ]
  %tmp120 = inttoptr i64 %rax.0 to i8**
  store i64 ptrtoint ([4 x i8]* @global_var_11044 to i64), i64* @global_var_216630
  store i64 3, i64* @global_var_216638
  %tmp121 = zext i32 %argc to i64
  %tmp174 = ptrtoint i8** %argv to i64
  br label %block_3e52

block_3e52:                                       ; preds = %block_4348, %block_3e2a
  %stack_var_-32.0 = phi i8** [ %tmp120, %block_3e2a ], [ %stack_var_-32.1, %block_4348 ]
  %stack_var_-48.0 = phi i32 [ %1, %block_3e2a ], [ %stack_var_-48.4, %block_4348 ]
  %rsi.0 = phi i64 [ %tmp114, %block_3e2a ], [ %rsi.3, %block_4348 ]
  %rdi.0 = phi i64 [ ptrtoint ([4 x i8]* @global_var_11044 to i64), %block_3e2a ], [ %rdi.3, %block_4348 ]
  store i32 -1, i32* %stack_var_-52
  %tmp122 = ptrtoint i8** %stack_var_-32.0 to i64
  %tmp123 = icmp eq i64 %tmp122, 0
  br i1 %tmp123, label %block_3f9b, label %block_3e64

block_3e64:                                       ; preds = %block_3e52
  %tmp124 = load i32* bitcast (i64* @global_var_216568 to i32*)
  %tmp125 = sext i32 %tmp124 to i64
  %tmp126 = shl nsw i64 %tmp125, 3
  %tmp127 = add i64 %tmp126, %tmp122
  %tmp128 = inttoptr i64 %tmp127 to i64*
  %tmp129 = load i64* %tmp128
  %tmp130 = icmp eq i64 %tmp129, 0
  br i1 %tmp130, label %block_3ebc, label %block_3e83

block_3e83:                                       ; preds = %block_3e64
  %tmp131 = load i32* bitcast (i64* @global_var_216568 to i32*)
  %tmp132 = sext i32 %tmp131 to i64
  %tmp133 = shl nsw i64 %tmp132, 3
  %tmp134 = add i64 %tmp133, %tmp122
  %tmp135 = inttoptr i64 %tmp134 to i64*
  %tmp136 = load i64* %tmp135
  %tmp137 = inttoptr i64 %tmp136 to i8*
  %tmp138 = call i32 @strcmp(i8* %tmp137, i8* bitcast (i64* @global_var_11048 to i8*))
  %tmp139 = icmp eq i32 %tmp138, 0
  br i1 %tmp139, label %block_3eb0, label %block_3ebc

block_3eb0:                                       ; preds = %block_3e83
  br label %block_3f9b

block_3ebc:                                       ; preds = %block_3e83, %block_3e64
  %tmp140 = load i32* %stack_var_-56
  %tmp141 = call i32 @getopt_long(i32 %tmp140, i8** %stack_var_-32.0, i8* getelementptr inbounds ([34 x i8]* @global_var_10ee0, i32 0, i32 0), %option* bitcast ([6 x i8]** @global_var_2156c0 to %option*), i32* %stack_var_-52)
  %tmp142 = icmp slt i32 %tmp141, 0
  br i1 %tmp142, label %block_3ef4, label %block_3ee8

block_3ee8:                                       ; preds = %block_3ebc
  %tmp143 = zext i32 %tmp140 to i64
  %tmp144 = add i32 %tmp141, 131
  br label %block_3f9b

block_3ef4:                                       ; preds = %block_3ebc
  %tmp145 = load i32* bitcast (i64* @global_var_216568 to i32*)
  %tmp146 = load i32* %stack_var_-56
  %tmp147 = icmp eq i32 %tmp145, %tmp146
  br i1 %tmp147, label %block_3f42, label %block_3f01

block_3f01:                                       ; preds = %block_3ef4
  %tmp148 = load i32* bitcast (i64* @global_var_216568 to i32*)
  %tmp149 = sext i32 %tmp148 to i64
  %tmp150 = shl nsw i64 %tmp149, 3
  %tmp151 = add i64 %tmp150, %tmp122
  %tmp152 = inttoptr i64 %tmp151 to i64*
  %tmp153 = load i64* %tmp152
  %tmp154 = load i64* @global_var_25f4c8
  %tmp155 = load i64* @global_var_216580
  %tmp156 = inttoptr i64 %tmp155 to %_IO_FILE*
  %tmp157 = inttoptr i64 %tmp154 to i8*
  %tmp158 = inttoptr i64 %tmp153 to i8*
  %tmp159 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp156, i8* getelementptr inbounds ([49 x i8]* @global_var_11050, i32 0, i32 0), i8* %tmp157, i8* %tmp158)
  %tmp160 = call i64 @try_help()
  unreachable

block_3f42:                                       ; preds = %block_3ef4
  %tmp161 = load i32* %stack_var_-56
  %tmp162 = icmp eq i32 %tmp161, 1
  br i1 %tmp162, label %block_3f76, label %block_3f4a

block_3f4a:                                       ; preds = %block_3f42
  %tmp163 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp164 = icmp eq i32 %tmp163, 0
  br i1 %tmp164, label %block_3f54, label %block_3f76

block_3f54:                                       ; preds = %block_3f4a
  %tmp165 = load i64* @global_var_25f4c8
  %tmp166 = load i64* @global_var_216580
  %tmp167 = inttoptr i64 %tmp166 to %_IO_FILE*
  %tmp168 = inttoptr i64 %tmp165 to i8*
  %tmp169 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp167, i8* getelementptr inbounds ([78 x i8]* @global_var_11088, i32 0, i32 0), i8* %tmp168)
  br label %block_3f76

block_3f76:                                       ; preds = %block_3f4a, %block_3f54, %block_3f42
  %rsi.1 = phi i64 [ %tmp122, %block_3f42 ], [ %tmp122, %block_3f4a ], [ ptrtoint ([78 x i8]* @global_var_11088 to i64), %block_3f54 ]
  %tmp170 = bitcast i8** %stack_var_-32.0 to i64*
  call void @free(i64* %tmp170)
  store i32 1, i32* bitcast (i64* @global_var_216568 to i32*)
  store i32 -1, i32* %stack_var_-52
  br label %block_3f9b

block_3f9b:                                       ; preds = %block_3f76, %block_3ee8, %block_3eb0, %block_3e52
  %stack_var_-32.1 = phi i8** [ %stack_var_-32.0, %block_3e52 ], [ null, %block_3f76 ], [ %stack_var_-32.0, %block_3ee8 ], [ %stack_var_-32.0, %block_3eb0 ]
  %stack_var_-48.1 = phi i32 [ %stack_var_-48.0, %block_3e52 ], [ %tmp141, %block_3f76 ], [ %tmp144, %block_3ee8 ], [ 176, %block_3eb0 ]
  %rsi.2 = phi i64 [ %rsi.0, %block_3e52 ], [ %rsi.1, %block_3f76 ], [ %tmp122, %block_3ee8 ], [ ptrtoint (i64* @global_var_11048 to i64), %block_3eb0 ]
  %rdi.1 = phi i64 [ %rdi.0, %block_3e52 ], [ %tmp122, %block_3f76 ], [ %tmp143, %block_3ee8 ], [ %tmp136, %block_3eb0 ]
  %tmp171 = ptrtoint i8** %stack_var_-32.1 to i64
  %tmp172 = icmp eq i64 %tmp171, 0
  br i1 %tmp172, label %block_3fa2, label %block_3fc8

block_3fa2:                                       ; preds = %block_3f9b
  %tmp175 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([34 x i8]* @global_var_10ee0, i32 0, i32 0), %option* bitcast ([6 x i8]** @global_var_2156c0 to %option*), i32* %stack_var_-52)
  br label %block_3fc8

block_3fc8:                                       ; preds = %block_3f9b, %block_3fa2
  %stack_var_-48.2 = phi i32 [ %stack_var_-48.1, %block_3f9b ], [ %tmp175, %block_3fa2 ]
  %rsi.3 = phi i64 [ %rsi.2, %block_3f9b ], [ %tmp174, %block_3fa2 ]
  %rdi.2 = phi i64 [ %rdi.1, %block_3f9b ], [ %tmp121, %block_3fa2 ]
  %tmp176 = icmp slt i32 %stack_var_-48.2, 0
  br i1 %tmp176, label %block_3fce, label %block_3fe1

block_3fce:                                       ; preds = %block_3fc8
  %tmp177 = load i32* bitcast (i64* @global_var_216094 to i32*)
  %tmp178 = icmp slt i32 %tmp177, 0
  br i1 %tmp178, label %block_434d, label %block_3fdc

block_3fdc:                                       ; preds = %block_3fce
  br label %block_4359

block_3fe1:                                       ; preds = %block_3fc8
  %tmp179 = add i32 %stack_var_-48.2, -49
  %tmp180 = zext i32 %tmp179 to i64
  switch i64 %tmp180, label %block_4288 [
    i64 0, label %block_4277
    i64 1, label %block_4277
    i64 2, label %block_4277
    i64 3, label %block_4277
    i64 4, label %block_4277
    i64 5, label %block_4277
    i64 6, label %block_4277
    i64 7, label %block_4277
    i64 8, label %block_4277
    i64 23, label %block_40d5
    i64 27, label %block_411a
    i64 28, label %block_4138
    i64 29, label %block_4162
    i64 34, label %block_41c0
    i64 37, label %block_423a
    i64 41, label %block_4249
    i64 48, label %block_4015
    i64 49, label %block_4024
    i64 50, label %block_40a3
    i64 51, label %block_40b2
    i64 53, label %block_40c1
    i64 55, label %block_40d5
    i64 58, label %block_40e4
    i64 59, label %block_40f3
    i64 60, label %block_4129
    i64 61, label %block_4147
    i64 64, label %block_4189
    i64 65, label %block_41a2
    i64 67, label %block_41f5
    i64 69, label %block_421c
    i64 79, label %block_417d
    i64 80, label %block_41b1
    i64 81, label %block_41e9
    i64 131, label %block_4270
    i64 132, label %block_4270
    i64 133, label %block_4270
    i64 134, label %block_4270
    i64 135, label %block_4270
    i64 136, label %block_4270
    i64 137, label %block_4270
    i64 138, label %block_4270
    i64 139, label %block_4270
    i64 160, label %block_4162
    i64 192, label %block_4147
    i64 195, label %block_4189
    i64 200, label %block_421c
    i64 211, label %block_41b1
  ]

block_4015:                                       ; preds = %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_2165fc to i32*)
  br label %block_4348

block_4024:                                       ; preds = %block_3fe1
  %tmp181 = load i64* @global_var_216570
  %tmp182 = inttoptr i64 %tmp181 to i8*
  %tmp183 = call i32 @atoi(i8* %tmp182)
  store i32 %tmp183, i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp184 = load i64* @global_var_216570
  %tmp185 = inttoptr i64 %tmp184 to i8*
  %tmp186 = load i8* %tmp185
  %tmp187 = icmp eq i8 %tmp186, 0
  br i1 %tmp187, label %block_409e, label %block_403b

block_403b:                                       ; preds = %block_4024, %block_407e
  %tmp188 = load i64* @global_var_216570
  %tmp189 = inttoptr i64 %tmp188 to i8*
  %tmp190 = load i8* %tmp189
  %tmp191 = icmp slt i8 %tmp190, 48
  br i1 %tmp191, label %block_4057, label %block_4049

block_4049:                                       ; preds = %block_403b
  %tmp192 = load i64* @global_var_216570
  %tmp193 = inttoptr i64 %tmp192 to i8*
  %tmp194 = load i8* %tmp193
  %tmp195 = icmp slt i8 %tmp194, 58
  br i1 %tmp195, label %block_407e, label %block_4057

block_4057:                                       ; preds = %block_4049, %block_403b
  %tmp196 = load i64* @global_var_25f4c8
  %tmp197 = load i64* @global_var_216580
  %tmp198 = inttoptr i64 %tmp197 to %_IO_FILE*
  %tmp199 = inttoptr i64 %tmp196 to i8*
  %tmp200 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp198, i8* getelementptr inbounds ([34 x i8]* @global_var_110d8, i32 0, i32 0), i8* %tmp199)
  %tmp201 = call i64 @try_help()
  unreachable

block_407e:                                       ; preds = %block_4049
  %tmp202 = load i64* @global_var_216570
  %tmp203 = add i64 %tmp202, 1
  store i64 %tmp203, i64* @global_var_216570
  %tmp204 = inttoptr i64 %tmp203 to i8*
  %tmp205 = load i8* %tmp204
  %tmp206 = icmp eq i8 %tmp205, 0
  br i1 %tmp206, label %block_409e, label %block_403b

block_409e:                                       ; preds = %block_407e, %block_4024
  br label %block_4348

block_40a3:                                       ; preds = %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_2165e0 to i32*)
  br label %block_4348

block_40b2:                                       ; preds = %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_216600 to i32*)
  br label %block_4348

block_40c1:                                       ; preds = %block_3fe1
  store i32 ptrtoint (i64* @global_var_216605 to i32), i32* bitcast (i64* @global_var_216604 to i32*)
  br label %block_4348

block_40d5:                                       ; preds = %block_3fe1, %block_3fe1
  %tmp207 = call i64 @help()
  %tmp208 = call i64 @finish_out()
  unreachable

block_40e4:                                       ; preds = %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_216608 to i32*)
  br label %block_4348

block_40f3:                                       ; preds = %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_2165e0 to i32*)
  store i32 1, i32* bitcast (i64* @global_var_216600 to i32*)
  store i32 1, i32* bitcast (i64* @global_var_216610 to i32*)
  br label %block_4348

block_411a:                                       ; preds = %block_3fe1
  %tmp209 = call i64 @license()
  %tmp210 = call i64 @finish_out()
  unreachable

block_4129:                                       ; preds = %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_216094 to i32*)
  br label %block_4348

block_4138:                                       ; preds = %block_3fe1
  store i32 0, i32* bitcast (i64* @global_var_216094 to i32*)
  br label %block_4348

block_4147:                                       ; preds = %block_3fe1, %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_216094 to i32*)
  store i32 1, i32* bitcast (i64* @global_var_216090 to i32*)
  br label %block_4348

block_4162:                                       ; preds = %block_3fe1, %block_3fe1
  store i32 0, i32* bitcast (i64* @global_var_216094 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_216090 to i32*)
  br label %block_4348

block_417d:                                       ; preds = %block_3fe1
  store i8 1, i8* bitcast (i64* @global_var_2165f8 to i8*)
  br label %block_4348

block_4189:                                       ; preds = %block_3fe1, %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_2165e8 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_2165e4 to i32*)
  br label %block_4348

block_41a2:                                       ; preds = %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_21660c to i32*)
  br label %block_4348

block_41b1:                                       ; preds = %block_3fe1, %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_2165f4 to i32*)
  br label %block_4348

block_41c0:                                       ; preds = %block_3fe1
  %tmp211 = load i64* @global_var_216570
  %tmp212 = inttoptr i64 %tmp211 to i8*
  %tmp213 = call i32 @strlen(i8* %tmp212)
  %tmp214 = sext i32 %tmp213 to i64
  store i64 %tmp214, i64* @global_var_216638
  %tmp215 = load i64* @global_var_216570
  store i64 %tmp215, i64* @global_var_216630
  br label %block_4348

block_41e9:                                       ; preds = %block_3fe1
  store i8 1, i8* bitcast (i64* @global_var_2165f9 to i8*)
  br label %block_4348

block_41f5:                                       ; preds = %block_3fe1
  store i32 1, i32* bitcast (i64* @global_var_2165e0 to i32*)
  store i32 1, i32* bitcast (i64* @global_var_216600 to i32*)
  store i32 1, i32* bitcast (i64* @global_var_2165ec to i32*)
  br label %block_4348

block_421c:                                       ; preds = %block_3fe1, %block_3fe1
  store i32 ptrtoint (i64* @global_var_2165e5 to i32), i32* bitcast (i64* @global_var_2165e4 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_2165e8 to i32*)
  br label %block_4348

block_423a:                                       ; preds = %block_3fe1
  %tmp216 = call i64 @version()
  %tmp217 = call i64 @finish_out()
  unreachable

block_4249:                                       ; preds = %block_3fe1
  %tmp218 = load i64* @global_var_25f4c8
  %tmp219 = load i64* @global_var_216580
  %tmp220 = inttoptr i64 %tmp219 to %_IO_FILE*
  %tmp221 = inttoptr i64 %tmp218 to i8*
  %tmp222 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp220, i8* getelementptr inbounds ([38 x i8]* @global_var_11100, i32 0, i32 0), i8* %tmp221)
  %tmp223 = call i64 @try_help()
  unreachable

block_4270:                                       ; preds = %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1
  %tmp224 = add i32 %stack_var_-48.2, -131
  br label %block_4277

block_4277:                                       ; preds = %block_4270, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1, %block_3fe1
  %stack_var_-48.3 = phi i32 [ %tmp224, %block_4270 ], [ %stack_var_-48.2, %block_3fe1 ], [ %stack_var_-48.2, %block_3fe1 ], [ %stack_var_-48.2, %block_3fe1 ], [ %stack_var_-48.2, %block_3fe1 ], [ %stack_var_-48.2, %block_3fe1 ], [ %stack_var_-48.2, %block_3fe1 ], [ %stack_var_-48.2, %block_3fe1 ], [ %stack_var_-48.2, %block_3fe1 ], [ %stack_var_-48.2, %block_3fe1 ]
  %tmp225 = add i32 %stack_var_-48.3, -48
  store i32 %tmp225, i32* bitcast (i64* @global_var_2160a0 to i32*)
  br label %block_4348

block_4288:                                       ; preds = %block_3fe1
  %tmp226 = icmp slt i32 %stack_var_-48.2, 131
  br i1 %tmp226, label %block_4343, label %block_4295

block_4295:                                       ; preds = %block_4288
  %tmp227 = icmp eq i32 %stack_var_-48.2, 194
  br i1 %tmp227, label %block_4343, label %block_42a2

block_42a2:                                       ; preds = %block_4295
  %tmp228 = load i64* @global_var_25f4c8
  %tmp229 = load i64* @global_var_216580
  %tmp230 = inttoptr i64 %tmp229 to %_IO_FILE*
  %tmp231 = inttoptr i64 %tmp228 to i8*
  %tmp232 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp230, i8* getelementptr inbounds ([5 x i8]* @global_var_11035, i32 0, i32 0), i8* %tmp231)
  %tmp233 = load i32* %stack_var_-52
  %tmp234 = icmp slt i32 %tmp233, 0
  br i1 %tmp234, label %block_42cb, label %block_42f1

block_42cb:                                       ; preds = %block_42a2
  %tmp235 = zext i32 %stack_var_-48.2 to i64
  %tmp236 = add nuw nsw i64 %tmp235, 125
  %tmp237 = load i64* @global_var_216580
  %tmp238 = inttoptr i64 %tmp237 to %_IO_FILE*
  %tmp239 = trunc i64 %tmp236 to i8
  %tmp240 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp238, i8* getelementptr inbounds ([6 x i8]* @global_var_11126, i32 0, i32 0), i8 %tmp239)
  br label %block_4323

block_42f1:                                       ; preds = %block_42a2
  %tmp241 = load i32* %stack_var_-52
  %tmp242 = sext i32 %tmp241 to i64
  %tmp243 = shl nsw i64 %tmp242, 5
  %tmp244 = add i64 %tmp243, ptrtoint ([6 x i8]** @global_var_2156c0 to i64)
  %tmp245 = inttoptr i64 %tmp244 to i64*
  %tmp246 = load i64* %tmp245
  %tmp247 = load i64* @global_var_216580
  %tmp248 = inttoptr i64 %tmp247 to %_IO_FILE*
  %tmp249 = inttoptr i64 %tmp246 to i8*
  %tmp250 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp248, i8* getelementptr inbounds ([7 x i8]* @global_var_1112c, i32 0, i32 0), i8* %tmp249)
  br label %block_4323

block_4323:                                       ; preds = %block_42f1, %block_42cb
  %tmp251 = load i64* @global_var_216580
  %tmp252 = inttoptr i64 %tmp251 to %_IO_FILE*
  %tmp253 = call i32 @fwrite(i64* bitcast ([47 x i8]* @global_var_11138 to i64*), i32 1, i32 46, %_IO_FILE* %tmp252)
  br label %block_4343

block_4343:                                       ; preds = %block_4323, %block_4295, %block_4288
  %tmp254 = call i64 @try_help()
  unreachable

block_4348:                                       ; preds = %block_4277, %block_421c, %block_41f5, %block_41e9, %block_41c0, %block_41b1, %block_41a2, %block_4189, %block_417d, %block_4162, %block_4147, %block_4138, %block_4129, %block_40f3, %block_40e4, %block_40c1, %block_40b2, %block_40a3, %block_409e, %block_4015
  %stack_var_-48.4 = phi i32 [ %stack_var_-48.3, %block_4277 ], [ %stack_var_-48.2, %block_41e9 ], [ %stack_var_-48.2, %block_41b1 ], [ %stack_var_-48.2, %block_417d ], [ %stack_var_-48.2, %block_421c ], [ %stack_var_-48.2, %block_41f5 ], [ %stack_var_-48.2, %block_41a2 ], [ %stack_var_-48.2, %block_4189 ], [ %stack_var_-48.2, %block_4147 ], [ %stack_var_-48.2, %block_4129 ], [ %stack_var_-48.2, %block_40f3 ], [ %stack_var_-48.2, %block_40e4 ], [ %stack_var_-48.2, %block_40c1 ], [ %stack_var_-48.2, %block_40b2 ], [ %stack_var_-48.2, %block_40a3 ], [ %stack_var_-48.2, %block_409e ], [ %stack_var_-48.2, %block_4015 ], [ %stack_var_-48.2, %block_41c0 ], [ %stack_var_-48.2, %block_4162 ], [ %stack_var_-48.2, %block_4138 ]
  %rdi.3 = phi i64 [ %rdi.2, %block_4277 ], [ %rdi.2, %block_41e9 ], [ %rdi.2, %block_41b1 ], [ %rdi.2, %block_417d ], [ %rdi.2, %block_421c ], [ %rdi.2, %block_41f5 ], [ %rdi.2, %block_41a2 ], [ %rdi.2, %block_4189 ], [ %rdi.2, %block_4147 ], [ %rdi.2, %block_4129 ], [ %rdi.2, %block_40f3 ], [ %rdi.2, %block_40e4 ], [ %rdi.2, %block_40c1 ], [ %rdi.2, %block_40b2 ], [ %rdi.2, %block_40a3 ], [ %tmp181, %block_409e ], [ %rdi.2, %block_4015 ], [ %tmp211, %block_41c0 ], [ %rdi.2, %block_4162 ], [ %rdi.2, %block_4138 ]
  br label %block_3e52

block_434d:                                       ; preds = %block_3fce
  %tmp255 = load i32* bitcast (i64* @global_var_216600 to i32*)
  store i32 %tmp255, i32* bitcast (i64* @global_var_216094 to i32*)
  br label %block_4359

block_4359:                                       ; preds = %block_434d, %block_3fdc
  %tmp256 = load i32* bitcast (i64* @global_var_216090 to i32*)
  %tmp257 = icmp slt i32 %tmp256, 0
  br i1 %tmp257, label %block_4363, label %block_436f

block_4363:                                       ; preds = %block_4359
  %tmp258 = load i32* bitcast (i64* @global_var_216600 to i32*)
  store i32 %tmp258, i32* bitcast (i64* @global_var_216090 to i32*)
  br label %block_436f

block_436f:                                       ; preds = %block_4359, %block_4363
  %tmp259 = load i32* bitcast (i64* @global_var_216568 to i32*)
  %tmp260 = sub i32 %argc, %tmp259
  %tmp261 = zext i32 %tmp260 to i64
  %tmp262 = load i32* bitcast (i64* @global_var_2165fc to i32*)
  %tmp263 = icmp eq i32 %tmp262, 0
  br i1 %tmp263, label %block_43b5, label %block_4389

block_4389:                                       ; preds = %block_436f
  %tmp264 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp265 = icmp eq i32 %tmp264, 0
  br i1 %tmp265, label %block_4393, label %block_43b5

block_4393:                                       ; preds = %block_4389
  %tmp266 = load i64* @global_var_25f4c8
  %tmp267 = load i64* @global_var_216580
  %tmp268 = inttoptr i64 %tmp267 to %_IO_FILE*
  %tmp269 = inttoptr i64 %tmp266 to i8*
  %tmp270 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp268, i8* getelementptr inbounds ([43 x i8]* @global_var_11168, i32 0, i32 0), i8* %tmp269)
  br label %block_43b5

block_43b5:                                       ; preds = %block_4389, %block_4393, %block_436f
  %rdx.0 = phi i64 [ %tmp261, %block_436f ], [ %tmp261, %block_4389 ], [ %tmp266, %block_4393 ]
  %rsi.4 = phi i64 [ %rsi.3, %block_436f ], [ %rsi.3, %block_4389 ], [ ptrtoint ([43 x i8]* @global_var_11168 to i64), %block_4393 ]
  %rdi.4 = phi i64 [ %rdi.2, %block_436f ], [ %rdi.2, %block_4389 ], [ %tmp267, %block_4393 ]
  %tmp271 = load i64* @global_var_216638
  %tmp272 = icmp eq i64 %tmp271, 0
  br i1 %tmp272, label %block_43ce, label %block_43c1

block_43c1:                                       ; preds = %block_43b5
  %tmp273 = load i64* @global_var_216638
  %tmp274 = icmp ult i64 %tmp273, 31
  br i1 %tmp274, label %block_4401, label %block_43ce

block_43ce:                                       ; preds = %block_43c1, %block_43b5
  %tmp275 = load i64* @global_var_216630
  %tmp276 = load i64* @global_var_25f4c8
  %tmp277 = load i64* @global_var_216580
  %tmp278 = inttoptr i64 %tmp277 to %_IO_FILE*
  %tmp279 = inttoptr i64 %tmp276 to i8*
  %tmp280 = inttoptr i64 %tmp275 to i8*
  %tmp281 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp278, i8* getelementptr inbounds ([25 x i8]* @global_var_11193, i32 0, i32 0), i8* %tmp279, i8* %tmp280)
  %tmp282 = call i64 @do_exit(i32 1)
  unreachable

block_4401:                                       ; preds = %block_43c1
  %tmp283 = load i32* bitcast (i64* @global_var_216614 to i32*)
  %tmp284 = icmp eq i32 %tmp283, 0
  br i1 %tmp284, label %block_4423, label %block_440b

block_440b:                                       ; preds = %block_4401
  %tmp285 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp286 = icmp eq i32 %tmp285, 0
  br i1 %tmp286, label %block_4415, label %block_4423

block_4415:                                       ; preds = %block_440b
  store i64 38699, i64* @global_var_2160d0
  br label %block_4423

block_4423:                                       ; preds = %block_440b, %block_4415, %block_4401
  %tmp287 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp288 = icmp eq i32 %tmp287, 0
  br i1 %tmp288, label %block_4434, label %block_442d

block_442d:                                       ; preds = %block_4423
  br label %block_4439

block_4434:                                       ; preds = %block_4423
  br label %block_4439

block_4439:                                       ; preds = %block_4434, %block_442d
  %rax.1 = phi i64 [ 0, %block_4434 ], [ 13, %block_442d ]
  %tmp289 = trunc i64 %rax.1 to i32
  store i32 %tmp289, i32* bitcast (i64* @global_var_2166c0 to i32*)
  %tmp290 = call i64 @install_signal_handlers()
  %tmp291 = icmp eq i32 %tmp259, %argc
  br i1 %tmp291, label %block_44aa, label %block_444a

block_444a:                                       ; preds = %block_4439
  %tmp292 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp293 = icmp eq i32 %tmp292, 0
  br i1 %tmp293, label %block_449d.preheader, label %block_4454

block_4454:                                       ; preds = %block_444a
  %tmp294 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp295 = icmp eq i32 %tmp294, 0
  br i1 %tmp295, label %block_445e, label %block_449d.preheader

block_445e:                                       ; preds = %block_4454
  %tmp296 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp297 = icmp eq i32 %tmp296, 0
  br i1 %tmp297, label %block_4468, label %block_449d.preheader

block_4468:                                       ; preds = %block_445e
  br label %block_449d.preheader

block_449d.preheader:                             ; preds = %block_444a, %block_4468, %block_4454, %block_445e
  %tmp298 = load i32* bitcast (i64* @global_var_216568 to i32*)
  %tmp299 = icmp slt i32 %tmp298, %argc
  br i1 %tmp299, label %block_4472, label %block_44a8

block_4472:                                       ; preds = %block_449d.preheader, %block_4472
  %tmp300 = load i32* bitcast (i64* @global_var_216568 to i32*)
  store i32 ptrtoint (i64* @global_var_216569 to i32), i32* bitcast (i64* @global_var_216568 to i32*)
  %tmp301 = sext i32 %tmp300 to i64
  %tmp302 = shl nsw i64 %tmp301, 3
  %tmp305 = add i64 %tmp302, %tmp174
  %tmp306 = inttoptr i64 %tmp305 to i64*
  %tmp307 = load i64* %tmp306
  %tmp308 = inttoptr i64 %tmp307 to i8*
  %tmp309 = call i64 @treat_file(i8* %tmp308)
  %tmp310 = load i32* bitcast (i64* @global_var_216568 to i32*)
  %tmp311 = icmp slt i32 %tmp310, %argc
  br i1 %tmp311, label %block_4472, label %block_44a8

block_44a8:                                       ; preds = %block_4472, %block_449d.preheader
  br label %block_44af

block_44aa:                                       ; preds = %block_4439
  %tmp312 = call i64 @treat_stdin(i64 %rdi.4, i64 %rsi.4, i64 %rdx.0)
  br label %block_44af

block_44af:                                       ; preds = %block_44aa, %block_44a8
  %tmp313 = load i8* bitcast (i64* @global_var_216ae0 to i8*)
  %tmp314 = icmp eq i8 %tmp313, 0
  br i1 %tmp314, label %block_44e0, label %block_44ba

block_44ba:                                       ; preds = %block_44af
  %tmp315 = call i32 @close(i32 0)
  %tmp316 = icmp eq i32 %tmp315, 0
  br i1 %tmp316, label %block_44e0, label %block_44c8

block_44c8:                                       ; preds = %block_44ba
  store i32 1768191091, i32* bitcast (i64* @global_var_21a460 to i32*)
  store i16 110, i16* bitcast (i64* @global_var_21a464 to i16*)
  %tmp317 = call i64 @read_error()
  unreachable

block_44e0:                                       ; preds = %block_44ba, %block_44af
  %tmp318 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp319 = icmp eq i32 %tmp318, 0
  br i1 %tmp319, label %block_4521, label %block_44ea

block_44ea:                                       ; preds = %block_44e0
  %tmp320 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp321 = icmp eq i32 %tmp320, 0
  br i1 %tmp321, label %block_44f4, label %block_4509

block_44f4:                                       ; preds = %block_44ea
  %tmp322 = icmp slt i32 %tmp260, 2
  br i1 %tmp322, label %block_4509, label %block_44fa

block_44fa:                                       ; preds = %block_44f4
  %tmp323 = call i64 @do_list(i32 -1, i64 4294967295)
  br label %block_4509

block_4509:                                       ; preds = %block_44ea, %block_44fa, %block_44f4
  %tmp324 = load i64* @global_var_216560
  %tmp325 = inttoptr i64 %tmp324 to %_IO_FILE*
  %tmp326 = call i64 @rpl_fflush(%_IO_FILE* %tmp325)
  %tmp327 = trunc i64 %tmp326 to i32
  %tmp328 = icmp eq i32 %tmp327, 0
  br i1 %tmp328, label %block_4521, label %block_451c

block_451c:                                       ; preds = %block_4509
  %tmp329 = call i64 @write_error()
  unreachable

block_4521:                                       ; preds = %block_4509, %block_44e0
  %tmp330 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp331 = icmp eq i32 %tmp330, 0
  br i1 %tmp331, label %block_456f, label %block_452b

block_452b:                                       ; preds = %block_4521
  %tmp332 = load i8* bitcast (i64* @global_var_2165f9 to i8*)
  %tmp333 = icmp eq i8 %tmp332, 0
  br i1 %tmp333, label %block_4550, label %block_4536

block_4536:                                       ; preds = %block_452b
  %tmp334 = call i32 @fdatasync(i32 1)
  %tmp335 = icmp eq i32 %tmp334, 0
  br i1 %tmp335, label %block_4550, label %block_4544

block_4544:                                       ; preds = %block_4536
  %tmp336 = call i32* @__errno_location()
  %tmp337 = load i32* %tmp336
  %tmp338 = icmp eq i32 %tmp337, 22
  br i1 %tmp338, label %block_4550, label %block_455e

block_4550:                                       ; preds = %block_4544, %block_4536, %block_452b
  %tmp339 = call i32 @close(i32 1)
  %tmp340 = icmp eq i32 %tmp339, 0
  br i1 %tmp340, label %block_456f, label %block_455e

block_455e:                                       ; preds = %block_4544, %block_4550
  %tmp341 = call i32* @__errno_location()
  %tmp342 = load i32* %tmp341
  %tmp343 = icmp eq i32 %tmp342, 9
  br i1 %tmp343, label %block_456f, label %block_456a

block_456a:                                       ; preds = %block_455e
  %tmp344 = call i64 @write_error()
  unreachable

block_456f:                                       ; preds = %block_455e, %block_4550, %block_4521
  %tmp345 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp346 = call i64 @do_exit(i32 %tmp345)
  ret i64 %tmp346
}

define i64 @input_eof() {
block_457c:
  %tmp13 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp14 = icmp eq i32 %tmp13, 0
  br i1 %tmp14, label %block_4594, label %block_458a

block_458a:                                       ; preds = %block_457c
  %tmp15 = load i32* bitcast (i64* @global_var_21661c to i32*)
  %tmp16 = icmp eq i32 %tmp15, 0
  br i1 %tmp16, label %block_459b, label %block_4594

block_4594:                                       ; preds = %block_458a, %block_457c
  br label %block_45dd

block_459b:                                       ; preds = %block_458a
  %tmp17 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp18 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp19 = icmp eq i32 %tmp17, %tmp18
  br i1 %tmp19, label %block_45ab, label %block_45d8

block_45ab:                                       ; preds = %block_459b
  %tmp20 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp21 = icmp eq i32 %tmp20, 32768
  br i1 %tmp21, label %block_45b8, label %block_45c7

block_45b8:                                       ; preds = %block_45ab
  %tmp22 = call i64 @fill_inbuf(i32 1)
  %tmp23 = trunc i64 %tmp22 to i32
  %tmp24 = icmp eq i32 %tmp23, -1
  br i1 %tmp24, label %block_45c7, label %block_45ce

block_45c7:                                       ; preds = %block_45b8, %block_45ab
  br label %block_45dd

block_45ce:                                       ; preds = %block_45b8
  store i32 0, i32* bitcast (i64* @global_var_24a884 to i32*)
  br label %block_45d8

block_45d8:                                       ; preds = %block_459b, %block_45ce
  br label %block_45dd

block_45dd:                                       ; preds = %block_45d8, %block_45c7, %block_4594
  %rax.0 = phi i64 [ 1, %block_4594 ], [ 0, %block_45d8 ], [ 1, %block_45c7 ]
  ret i64 %rax.0
}

define i64 @get_input_size_and_time(i64 %arg1, i64 %arg2, i64 %arg3) {
block_45df:
  store i64 -1, i64* @global_var_24a890
  store i64 -1, i64* @global_var_25f4d8
  %tmp14 = load i32* bitcast (i64* @global_var_216f18 to i32*)
  %tmp15 = and i32 %tmp14, 61440
  %tmp16 = zext i32 %tmp15 to i64
  %tmp17 = icmp eq i32 %tmp15, 32768
  br i1 %tmp17, label %block_460b, label %block_4647

block_460b:                                       ; preds = %block_45df
  %tmp18 = load i64* @global_var_216f30
  store i64 %tmp18, i64* @global_var_24a890
  %tmp19 = load i32* bitcast (i64* @global_var_216094 to i32*)
  %tmp20 = icmp eq i32 %tmp19, 0
  br i1 %tmp20, label %block_462d, label %block_4623

block_4623:                                       ; preds = %block_460b
  %tmp21 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp22 = zext i32 %tmp21 to i64
  %tmp23 = icmp eq i32 %tmp21, 0
  br i1 %tmp23, label %block_4647, label %block_462d

block_462d:                                       ; preds = %block_4623, %block_460b
  %tmp24 = call i64 @get_stat_mtime(i64* @global_var_216f00)
  store i64 %tmp24, i64* @global_var_25f4d0
  store i64 %arg3, i64* @global_var_25f4d8
  br label %block_4647

block_4647:                                       ; preds = %block_45df, %block_462d, %block_4623
  %rax.0 = phi i64 [ %tmp16, %block_45df ], [ %tmp24, %block_462d ], [ %tmp22, %block_4623 ]
  ret i64 %rax.0
}

define i64 @treat_stdin(i64 %arg1, i64 %arg2, i64 %arg3) {
block_464a:
  %tmp23 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp24 = icmp eq i32 %tmp23, 0
  br i1 %tmp24, label %block_465c, label %block_4708

block_465c:                                       ; preds = %block_464a
  %tmp25 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp26 = icmp eq i32 %tmp25, 0
  br i1 %tmp26, label %block_466a, label %block_4708

block_466a:                                       ; preds = %block_465c
  %tmp27 = load i8* bitcast (i64* @global_var_2165f8 to i8*)
  %tmp28 = icmp eq i8 %tmp27, 0
  br i1 %tmp28, label %block_4675, label %block_468e

block_4675:                                       ; preds = %block_466a
  %tmp29 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp30 = icmp eq i32 %tmp29, 0
  %tmp31 = zext i1 %tmp30 to i32
  %tmp32 = call i32 @isatty(i32 %tmp31)
  %tmp33 = icmp eq i32 %tmp32, 0
  br i1 %tmp33, label %block_4708, label %block_468e

block_468e:                                       ; preds = %block_466a, %block_4675
  %tmp34 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp35 = icmp eq i32 %tmp34, 0
  br i1 %tmp35, label %block_4698, label %block_46fe

block_4698:                                       ; preds = %block_468e
  %tmp36 = load i64* @global_var_25f4c8
  %tmp37 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp38 = icmp eq i32 %tmp37, 0
  br i1 %tmp38, label %block_46b2, label %block_46a9

block_46a9:                                       ; preds = %block_4698
  br label %block_46b9

block_46b2:                                       ; preds = %block_4698
  br label %block_46b9

block_46b9:                                       ; preds = %block_46b2, %block_46a9
  %rdx.0 = phi i64 [ ptrtoint (i64* @global_var_114ff to i64), %block_46b2 ], [ ptrtoint ([3 x i8]* @global_var_114fc to i64), %block_46a9 ]
  %tmp39 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp40 = icmp eq i32 %tmp39, 0
  br i1 %tmp40, label %block_46cc, label %block_46c3

block_46c3:                                       ; preds = %block_46b9
  br label %block_46d3

block_46cc:                                       ; preds = %block_46b9
  br label %block_46d3

block_46d3:                                       ; preds = %block_46cc, %block_46c3
  %rax.0 = phi i64 [ ptrtoint ([11 x i8]* @global_var_1150a to i64), %block_46cc ], [ ptrtoint ([10 x i8]* @global_var_11500 to i64), %block_46c3 ]
  %tmp41 = load i64* @global_var_25f4c8
  %tmp42 = load i64* @global_var_216580
  %tmp43 = inttoptr i64 %tmp42 to %_IO_FILE*
  %tmp44 = inttoptr i64 %tmp41 to i8*
  %tmp45 = inttoptr i64 %rax.0 to i8*
  %tmp46 = inttoptr i64 %rdx.0 to i8*
  %tmp47 = inttoptr i64 %tmp36 to i8*
  %tmp48 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp43, i8* getelementptr inbounds ([93 x i8]* @global_var_11518, i32 0, i32 0), i8* %tmp44, i8* %tmp45, i8* %tmp46, i8* %tmp47)
  br label %block_46fe

block_46fe:                                       ; preds = %block_468e, %block_46d3
  %tmp49 = call i64 @do_exit(i32 1)
  unreachable

block_4708:                                       ; preds = %block_465c, %block_464a, %block_4675
  %tmp50 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp51 = icmp eq i32 %tmp50, 0
  br i1 %tmp51, label %block_471a, label %block_472c

block_471a:                                       ; preds = %block_4708
  %tmp52 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp53 = icmp eq i32 %tmp52, 0
  br i1 %tmp53, label %block_4724, label %block_472c

block_4724:                                       ; preds = %block_471a
  br label %block_472c

block_472c:                                       ; preds = %block_471a, %block_4708, %block_4724
  store i32 1768191091, i32* bitcast (i64* @global_var_21a460 to i32*)
  store i16 110, i16* bitcast (i64* @global_var_21a464 to i16*)
  store i32 1868854387, i32* bitcast (i64* @global_var_24f0c0 to i32*)
  store i16 29813, i16* bitcast (i64* @global_var_24f0c4 to i16*)
  store i8 0, i8* bitcast (i64* @global_var_24f0c6 to i8*)
  %tmp54 = call i32 @fstat(i32 0, %stat* bitcast (i64* @global_var_216f00 to %stat*))
  %tmp55 = icmp eq i32 %tmp54, 0
  br i1 %tmp55, label %block_4784, label %block_476e

block_476e:                                       ; preds = %block_472c
  %tmp56 = call i64 @progerror(i8* getelementptr inbounds ([15 x i8]* @global_var_11575, i32 0, i32 0))
  %tmp57 = call i64 @do_exit(i32 1)
  unreachable

block_4784:                                       ; preds = %block_472c
  %tmp58 = call i64 @get_input_size_and_time(i64 0, i64 ptrtoint (i64* @global_var_216f00 to i64), i64 %arg3)
  %tmp59 = call i64 @clear_bufs()
  store i32 1, i32* bitcast (i64* @global_var_2165e0 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_216620 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_24f0a0 to i32*)
  store i8 1, i8* bitcast (i64* @global_var_216ae0 to i8*)
  %tmp60 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp61 = icmp eq i32 %tmp60, 0
  br i1 %tmp61, label %block_47e7, label %block_47bd

block_47bd:                                       ; preds = %block_4784
  %tmp62 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp63 = call i64 @get_method(i32 %tmp62)
  %tmp64 = trunc i64 %tmp63 to i32
  store i32 %tmp64, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp65 = icmp slt i32 %tmp64, 0
  br i1 %tmp65, label %block_47da, label %block_47e7

block_47da:                                       ; preds = %block_47bd
  %tmp66 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp67 = call i64 @do_exit(i32 %tmp66)
  unreachable

block_47e7:                                       ; preds = %block_47bd, %block_4784
  %tmp68 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp69 = icmp eq i32 %tmp68, 0
  br i1 %tmp69, label %block_480b.preheader, label %block_47f1

block_480b.preheader:                             ; preds = %block_47e7
  %tmp70 = call i64 @zip(i32 0, i64 1)
  %tmp71 = trunc i64 %tmp70 to i32
  %tmp72 = icmp eq i32 %tmp71, 0
  br i1 %tmp72, label %block_4826, label %block_48ef

block_47f1:                                       ; preds = %block_47e7
  %tmp73 = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp74 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp75 = zext i32 %tmp73 to i64
  %tmp76 = call i64 @do_list(i32 %tmp74, i64 %tmp75)
  br label %block_48f3

block_4826:                                       ; preds = %block_480b.preheader, %block_4850
  %tmp77 = call i64 @input_eof()
  %tmp78 = trunc i64 %tmp77 to i32
  %tmp79 = icmp eq i32 %tmp78, 0
  br i1 %tmp79, label %block_482f, label %block_485d

block_482f:                                       ; preds = %block_4826
  %tmp80 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp81 = call i64 @get_method(i32 %tmp80)
  %tmp82 = trunc i64 %tmp81 to i32
  store i32 %tmp82, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp83 = icmp slt i32 %tmp82, 0
  br i1 %tmp83, label %block_48f2, label %block_4850

block_4850:                                       ; preds = %block_482f
  store i64 0, i64* @global_var_25f4c0
  %tmp84 = call i64 @zip(i32 0, i64 1)
  %tmp85 = trunc i64 %tmp84 to i32
  %tmp86 = icmp eq i32 %tmp85, 0
  br i1 %tmp86, label %block_4826, label %block_48ef

block_485d:                                       ; preds = %block_4826
  %tmp87 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp88 = zext i32 %tmp87 to i64
  %tmp89 = icmp eq i32 %tmp87, 0
  br i1 %tmp89, label %block_48f3, label %block_486c

block_486c:                                       ; preds = %block_485d
  %tmp90 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp91 = icmp eq i32 %tmp90, 0
  br i1 %tmp91, label %block_4898, label %block_4876

block_4876:                                       ; preds = %block_486c
  %tmp92 = load i64* @global_var_216580
  %tmp93 = inttoptr i64 %tmp92 to %_IO_FILE*
  %tmp94 = call i32 @fwrite(i64* bitcast ([5 x i8]* @global_var_11584 to i64*), i32 1, i32 4, %_IO_FILE* %tmp93)
  %tmp95 = sext i32 %tmp94 to i64
  br label %block_48f3

block_4898:                                       ; preds = %block_486c
  %tmp96 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp97 = zext i32 %tmp96 to i64
  %tmp98 = icmp eq i32 %tmp96, 0
  br i1 %tmp98, label %block_48a2, label %block_48f3

block_48a2:                                       ; preds = %block_4898
  %tmp99 = load i64* @global_var_216580
  %tmp100 = load i64* @global_var_21a860
  %tmp101 = load i64* @global_var_25f4c0
  %tmp102 = load i64* @global_var_267540
  %tmp103 = sub i64 %tmp100, %tmp101
  %tmp104 = add i64 %tmp103, %tmp102
  %tmp105 = inttoptr i64 %tmp99 to %_IO_FILE*
  %tmp106 = call i64 @display_ratio(i64 %tmp104, i64 %tmp100, %_IO_FILE* %tmp105)
  %tmp107 = load i64* @global_var_216580
  %tmp108 = inttoptr i64 %tmp107 to %_IO_FILE*
  %tmp109 = call i32 @fputc(i32 10, %_IO_FILE* %tmp108)
  %tmp110 = sext i32 %tmp109 to i64
  br label %block_48f3

block_48ef:                                       ; preds = %block_4850, %block_480b.preheader
  %.lcssa = phi i64 [ %tmp70, %block_480b.preheader ], [ %tmp84, %block_4850 ]
  br label %block_48f3

block_48f2:                                       ; preds = %block_482f
  %tmp111 = and i64 %tmp81, 4294967295
  br label %block_48f3

block_48f3:                                       ; preds = %block_4898, %block_48f2, %block_48ef, %block_48a2, %block_4876, %block_485d, %block_47f1
  %rax.1 = phi i64 [ %.lcssa, %block_48ef ], [ %tmp88, %block_485d ], [ %tmp97, %block_4898 ], [ %tmp110, %block_48a2 ], [ %tmp95, %block_4876 ], [ %tmp111, %block_48f2 ], [ %tmp76, %block_47f1 ]
  ret i64 %rax.1
}

define i64 @atdir_eq(i64 %arg1, i32 %arg2) {
block_48f5:
  %tmp17 = icmp eq i32 %arg2, 0
  br i1 %tmp17, label %block_490c, label %block_491f

block_490c:                                       ; preds = %block_48f5
  br label %block_491f

block_491f:                                       ; preds = %block_48f5, %block_490c
  %stack_var_-24.0 = phi i32 [ 1, %block_490c ], [ %arg2, %block_48f5 ]
  %stack_var_-16.0 = phi i64 [ ptrtoint ([3 x i8]* @global_var_11589 to i64), %block_490c ], [ %arg1, %block_48f5 ]
  %tmp19 = inttoptr i64 %stack_var_-16.0 to i64*
  %tmp20 = call i32 @memcmp(i64* @global_var_216b00, i64* %tmp19, i32 %stack_var_-24.0)
  %tmp21 = icmp eq i32 %tmp20, 0
  br i1 %tmp21, label %block_493a, label %block_4956

block_493a:                                       ; preds = %block_491f
  %tmp23 = sext i32 %stack_var_-24.0 to i64
  %tmp24 = add i64 %tmp23, ptrtoint (i64* @global_var_216b00 to i64)
  %tmp25 = inttoptr i64 %tmp24 to i8*
  %tmp26 = load i8* %tmp25
  %tmp27 = icmp eq i8 %tmp26, 0
  br i1 %tmp27, label %block_494f, label %block_4956

block_494f:                                       ; preds = %block_493a
  br label %block_495b

block_4956:                                       ; preds = %block_493a, %block_491f
  br label %block_495b

block_495b:                                       ; preds = %block_4956, %block_494f
  %rax.0 = phi i64 [ 0, %block_4956 ], [ 1, %block_494f ]
  ret i64 %rax.0
}

define i64 @atdir_set(i64* %arg1, i32 %arg2) {
block_4960:
  %0 = alloca i64
  %1 = load i64* %0
  %2 = load i64* %0
  %3 = load i64* %0
  %tmp15 = ptrtoint i64* %arg1 to i64
  %tmp21 = call i64 @atdir_eq(i64 %tmp15, i32 %arg2)
  %tmp22 = trunc i64 %tmp21 to i32
  %tmp23 = xor i32 %tmp22, 1
  %tmp24 = trunc i32 %tmp23 to i8
  %tmp25 = icmp eq i8 %tmp24, 0
  br i1 %tmp25, label %block_49ff, label %block_498a

block_498a:                                       ; preds = %block_4960
  %tmp26 = load i32* bitcast (i64* @global_var_2160a8 to i32*)
  %tmp27 = icmp slt i32 %tmp26, 0
  br i1 %tmp27, label %block_49a1, label %block_4994

block_4994:                                       ; preds = %block_498a
  %tmp28 = load i32* bitcast (i64* @global_var_2160a8 to i32*)
  %tmp29 = call i32 @close(i32 %tmp28)
  br label %block_49a1

block_49a1:                                       ; preds = %block_4994, %block_498a
  %tmp31 = icmp eq i32 %arg2, 0
  br i1 %tmp31, label %block_49a8, label %block_49bb

block_49a8:                                       ; preds = %block_49a1
  br label %block_49bb

block_49bb:                                       ; preds = %block_49a1, %block_49a8
  %stack_var_-24.0 = phi i32 [ 1, %block_49a8 ], [ %arg2, %block_49a1 ]
  %stack_var_-16.0 = phi i64 [ ptrtoint ([3 x i8]* @global_var_11589 to i64), %block_49a8 ], [ %tmp15, %block_49a1 ]
  %tmp33 = inttoptr i64 %stack_var_-16.0 to i64*
  %tmp34 = call i64* @memcpy(i64* @global_var_216b00, i64* %tmp33, i32 %stack_var_-24.0)
  %tmp36 = sext i32 %stack_var_-24.0 to i64
  %tmp37 = add i64 %tmp36, ptrtoint (i64* @global_var_216b00 to i64)
  %tmp38 = inttoptr i64 %tmp37 to i8*
  store i8 0, i8* %tmp38
  %tmp39 = call i64 @open_safer(i8* bitcast (i64* @global_var_216b00 to i8*), i64 65536, i64* @global_var_216b00, i64 %3, i64 %2, i64 %1)
  %tmp40 = trunc i64 %tmp39 to i32
  store i32 %tmp40, i32* bitcast (i64* @global_var_2160a8 to i32*)
  br label %block_49ff

block_49ff:                                       ; preds = %block_49bb, %block_4960
  %tmp41 = load i32* bitcast (i64* @global_var_2160a8 to i32*)
  %tmp42 = zext i32 %tmp41 to i64
  ret i64 %tmp42
}

define i64 @treat_file(i8* %arg1) {
block_4a07:
  %0 = alloca i64
  %1 = load i64* %0
  %2 = load i64* %0
  %3 = load i64* %0
  %4 = load i64* %0
  %stack_var_-152 = alloca i64
  %tmp43 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp44 = call i32 @strcmp(i8* %arg1, i8* getelementptr inbounds ([2 x i8]* @global_var_1158a, i32 0, i32 0))
  %tmp45 = icmp eq i32 %tmp44, 0
  br i1 %tmp45, label %block_4a42, label %block_4a64

block_4a42:                                       ; preds = %block_4a07
  %tmp46 = ptrtoint i8* %arg1 to i64
  %tmp47 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp48 = call i64 @treat_stdin(i64 %tmp46, i64 ptrtoint ([2 x i8]* @global_var_1158a to i64), i64 %3)
  store i32 %tmp47, i32* bitcast (i64* @global_var_2165e0 to i32*)
  br label %block_52bc

block_4a64:                                       ; preds = %block_4a07
  %tmp49 = ptrtoint i8* %arg1 to i64
  %tmp50 = call i64 @open_input_file(i8* %arg1, i64* @global_var_216f00)
  %tmp51 = trunc i64 %tmp50 to i32
  store i32 %tmp51, i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp52 = icmp slt i32 %tmp51, 0
  br i1 %tmp52, label %block_52af, label %block_4a8e

block_4a8e:                                       ; preds = %block_4a64
  %tmp53 = load i32* bitcast (i64* @global_var_216f18 to i32*)
  %tmp54 = and i32 %tmp53, 61440
  %tmp55 = icmp eq i32 %tmp54, 16384
  br i1 %tmp55, label %block_4aa4, label %block_4b27

block_4aa4:                                       ; preds = %block_4a8e
  %tmp56 = load i32* bitcast (i64* @global_var_21660c to i32*)
  %tmp57 = icmp eq i32 %tmp56, 0
  br i1 %tmp57, label %block_4aca, label %block_4aae

block_4aae:                                       ; preds = %block_4aa4
  %tmp58 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp59 = call i64 @treat_dir(i32 %tmp58, i64 %tmp49)
  br label %block_52bc

block_4aca:                                       ; preds = %block_4aa4
  %tmp60 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp61 = call i32 @close(i32 %tmp60)
  %tmp62 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp63 = icmp eq i32 %tmp62, 0
  br i1 %tmp63, label %block_4ae1, label %block_4b0a

block_4ae1:                                       ; preds = %block_4aca
  %tmp64 = load i64* @global_var_25f4c8
  %tmp65 = load i64* @global_var_216580
  %tmp66 = inttoptr i64 %tmp65 to %_IO_FILE*
  %tmp67 = inttoptr i64 %tmp64 to i8*
  %tmp68 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp66, i8* getelementptr inbounds ([34 x i8]* @global_var_11590, i32 0, i32 0), i8* %tmp67, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_4b0a

block_4b0a:                                       ; preds = %block_4aca, %block_4ae1
  %tmp69 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp70 = icmp eq i32 %tmp69, 0
  br i1 %tmp70, label %block_4b18, label %block_52b2

block_4b18:                                       ; preds = %block_4b0a
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_52b2

block_4b27:                                       ; preds = %block_4a8e
  %tmp71 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp72 = icmp eq i32 %tmp71, 0
  br i1 %tmp72, label %block_4b35, label %block_4d7a

block_4b35:                                       ; preds = %block_4b27
  %tmp73 = load i32* bitcast (i64* @global_var_216f18 to i32*)
  %tmp74 = and i32 %tmp73, 61440
  %tmp75 = icmp eq i32 %tmp74, 32768
  br i1 %tmp75, label %block_4ba0, label %block_4b47

block_4b47:                                       ; preds = %block_4b35
  %tmp76 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp77 = icmp eq i32 %tmp76, 0
  br i1 %tmp77, label %block_4b51, label %block_4b7a

block_4b51:                                       ; preds = %block_4b47
  %tmp78 = load i64* @global_var_25f4c8
  %tmp79 = load i64* @global_var_216580
  %tmp80 = inttoptr i64 %tmp79 to %_IO_FILE*
  %tmp81 = inttoptr i64 %tmp78 to i8*
  %tmp82 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp80, i8* getelementptr inbounds ([55 x i8]* @global_var_115b8, i32 0, i32 0), i8* %tmp81, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_4b7a

block_4b7a:                                       ; preds = %block_4b47, %block_4b51
  %tmp83 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp84 = icmp eq i32 %tmp83, 0
  br i1 %tmp84, label %block_4b84, label %block_4b8e

block_4b84:                                       ; preds = %block_4b7a
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_4b8e

block_4b8e:                                       ; preds = %block_4b7a, %block_4b84
  %tmp85 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp86 = call i32 @close(i32 %tmp85)
  br label %block_52bc

block_4ba0:                                       ; preds = %block_4b35
  %tmp87 = load i32* bitcast (i64* @global_var_216f18 to i32*)
  %tmp88 = and i32 %tmp87, ptrtoint (i64* @global_var_800 to i32)
  %tmp89 = icmp eq i32 %tmp88, 0
  br i1 %tmp89, label %block_4c08, label %block_4baf

block_4baf:                                       ; preds = %block_4ba0
  %tmp90 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp91 = icmp eq i32 %tmp90, 0
  br i1 %tmp91, label %block_4bb9, label %block_4be2

block_4bb9:                                       ; preds = %block_4baf
  %tmp92 = load i64* @global_var_25f4c8
  %tmp93 = load i64* @global_var_216580
  %tmp94 = inttoptr i64 %tmp93 to %_IO_FILE*
  %tmp95 = inttoptr i64 %tmp92 to i8*
  %tmp96 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp94, i8* getelementptr inbounds ([46 x i8]* @global_var_115f0, i32 0, i32 0), i8* %tmp95, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_4be2

block_4be2:                                       ; preds = %block_4baf, %block_4bb9
  %tmp97 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp98 = icmp eq i32 %tmp97, 0
  br i1 %tmp98, label %block_4bec, label %block_4bf6

block_4bec:                                       ; preds = %block_4be2
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_4bf6

block_4bf6:                                       ; preds = %block_4be2, %block_4bec
  %tmp99 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp100 = call i32 @close(i32 %tmp99)
  br label %block_52bc

block_4c08:                                       ; preds = %block_4ba0
  %tmp101 = load i32* bitcast (i64* @global_var_216f18 to i32*)
  %tmp102 = and i32 %tmp101, ptrtoint (i64* @global_var_400 to i32)
  %tmp103 = icmp eq i32 %tmp102, 0
  br i1 %tmp103, label %block_4c70, label %block_4c17

block_4c17:                                       ; preds = %block_4c08
  %tmp104 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp105 = icmp eq i32 %tmp104, 0
  br i1 %tmp105, label %block_4c21, label %block_4c4a

block_4c21:                                       ; preds = %block_4c17
  %tmp106 = load i64* @global_var_25f4c8
  %tmp107 = load i64* @global_var_216580
  %tmp108 = inttoptr i64 %tmp107 to %_IO_FILE*
  %tmp109 = inttoptr i64 %tmp106 to i8*
  %tmp110 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp108, i8* getelementptr inbounds ([47 x i8]* @global_var_11620, i32 0, i32 0), i8* %tmp109, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_4c4a

block_4c4a:                                       ; preds = %block_4c17, %block_4c21
  %tmp111 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp112 = icmp eq i32 %tmp111, 0
  br i1 %tmp112, label %block_4c54, label %block_4c5e

block_4c54:                                       ; preds = %block_4c4a
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_4c5e

block_4c5e:                                       ; preds = %block_4c4a, %block_4c54
  %tmp113 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp114 = call i32 @close(i32 %tmp113)
  br label %block_52bc

block_4c70:                                       ; preds = %block_4c08
  %tmp115 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp116 = icmp eq i32 %tmp115, 0
  br i1 %tmp116, label %block_4c7e, label %block_4d7a

block_4c7e:                                       ; preds = %block_4c70
  %tmp117 = load i32* bitcast (i64* @global_var_216f18 to i32*)
  %tmp118 = and i32 %tmp117, 512
  %tmp119 = icmp eq i32 %tmp118, 0
  br i1 %tmp119, label %block_4ce6, label %block_4c8d

block_4c8d:                                       ; preds = %block_4c7e
  %tmp120 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp121 = icmp eq i32 %tmp120, 0
  br i1 %tmp121, label %block_4c97, label %block_4cc0

block_4c97:                                       ; preds = %block_4c8d
  %tmp122 = load i64* @global_var_25f4c8
  %tmp123 = load i64* @global_var_216580
  %tmp124 = inttoptr i64 %tmp123 to %_IO_FILE*
  %tmp125 = inttoptr i64 %tmp122 to i8*
  %tmp126 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp124, i8* getelementptr inbounds ([46 x i8]* @global_var_11650, i32 0, i32 0), i8* %tmp125, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_4cc0

block_4cc0:                                       ; preds = %block_4c8d, %block_4c97
  %tmp127 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp128 = icmp eq i32 %tmp127, 0
  br i1 %tmp128, label %block_4cca, label %block_4cd4

block_4cca:                                       ; preds = %block_4cc0
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_4cd4

block_4cd4:                                       ; preds = %block_4cc0, %block_4cca
  %tmp129 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp130 = call i32 @close(i32 %tmp129)
  br label %block_52bc

block_4ce6:                                       ; preds = %block_4c7e
  %tmp131 = load i64* @global_var_216f10
  %tmp132 = icmp ult i64 %tmp131, 2
  br i1 %tmp132, label %block_4d7a, label %block_4cf7

block_4cf7:                                       ; preds = %block_4ce6
  %tmp133 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp134 = icmp eq i32 %tmp133, 0
  br i1 %tmp134, label %block_4d01, label %block_4d54

block_4d01:                                       ; preds = %block_4cf7
  %tmp135 = load i64* @global_var_216f10
  %tmp136 = icmp eq i64 %tmp135, 2
  br i1 %tmp136, label %block_4d0e, label %block_4d15

block_4d0e:                                       ; preds = %block_4d01
  br label %block_4d1a

block_4d15:                                       ; preds = %block_4d01
  br label %block_4d1a

block_4d1a:                                       ; preds = %block_4d15, %block_4d0e
  %rsi.0 = phi i64 [ 115, %block_4d15 ], [ 32, %block_4d0e ]
  %tmp137 = load i64* @global_var_216f10
  %tmp138 = add i64 %tmp137, 4294967295
  %tmp139 = load i64* @global_var_25f4c8
  %tmp140 = load i64* @global_var_216580
  %tmp141 = inttoptr i64 %tmp140 to %_IO_FILE*
  %tmp142 = inttoptr i64 %tmp139 to i8*
  %tmp143 = trunc i64 %tmp138 to i32
  %tmp144 = trunc i64 %rsi.0 to i8
  %tmp145 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp141, i8* getelementptr inbounds ([42 x i8]* @global_var_11680, i32 0, i32 0), i8* %tmp142, i8* bitcast (i64* @global_var_21a460 to i8*), i32 %tmp143, i8 %tmp144)
  br label %block_4d54

block_4d54:                                       ; preds = %block_4cf7, %block_4d1a
  %tmp146 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp147 = icmp eq i32 %tmp146, 0
  br i1 %tmp147, label %block_4d5e, label %block_4d68

block_4d5e:                                       ; preds = %block_4d54
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_4d68

block_4d68:                                       ; preds = %block_4d54, %block_4d5e
  %tmp148 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp149 = call i32 @close(i32 %tmp148)
  br label %block_52bc

block_4d7a:                                       ; preds = %block_4c70, %block_4b27, %block_4ce6
  %tmp150 = call i64 @get_input_size_and_time(i64 %tmp49, i64 ptrtoint (i64* @global_var_216f00 to i64), i64 %3)
  %tmp151 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp152 = icmp eq i32 %tmp151, 0
  br i1 %tmp152, label %block_4db9, label %block_4d89

block_4d89:                                       ; preds = %block_4d7a
  %tmp153 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp154 = icmp eq i32 %tmp153, 0
  br i1 %tmp154, label %block_4d93, label %block_4db9

block_4d93:                                       ; preds = %block_4d89
  %tmp155 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp156 = icmp eq i32 %tmp155, 0
  br i1 %tmp156, label %block_4d9d, label %block_4db9

block_4d9d:                                       ; preds = %block_4d93
  store i32 1868854387, i32* bitcast (i64* @global_var_24f0c0 to i32*)
  store i16 29813, i16* bitcast (i64* @global_var_24f0c4 to i16*)
  store i8 0, i8* bitcast (i64* @global_var_24f0c6 to i8*)
  br label %block_4dd4

block_4db9:                                       ; preds = %block_4d93, %block_4d89, %block_4d7a
  %tmp157 = call i64 @make_ofname()
  %tmp158 = trunc i64 %tmp157 to i32
  %tmp159 = icmp eq i32 %tmp158, 0
  br i1 %tmp159, label %block_4dd4, label %block_4dc2

block_4dc2:                                       ; preds = %block_4db9
  %tmp160 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp161 = call i32 @close(i32 %tmp160)
  br label %block_52bc

block_4dd4:                                       ; preds = %block_4db9, %block_4d9d
  %tmp162 = call i64 @clear_bufs()
  store i32 0, i32* bitcast (i64* @global_var_216620 to i32*)
  %tmp163 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp164 = icmp eq i32 %tmp163, 0
  br i1 %tmp164, label %block_4e1c, label %block_4ded

block_4ded:                                       ; preds = %block_4dd4
  %tmp165 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp166 = zext i32 %tmp165 to i64
  %tmp167 = call i64 @get_method(i32 %tmp165)
  %tmp168 = trunc i64 %tmp167 to i32
  store i32 %tmp168, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp169 = icmp slt i32 %tmp168, 0
  br i1 %tmp169, label %block_4e0a, label %block_4e1c

block_4e0a:                                       ; preds = %block_4ded
  %tmp170 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp171 = call i32 @close(i32 %tmp170)
  br label %block_52bc

block_4e1c:                                       ; preds = %block_4ded, %block_4dd4
  %rdi.0 = phi i64 [ %tmp49, %block_4dd4 ], [ %tmp166, %block_4ded ]
  %tmp172 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp173 = icmp eq i32 %tmp172, 0
  br i1 %tmp173, label %block_4e55, label %block_4e26

block_4e26:                                       ; preds = %block_4e1c
  %tmp174 = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp175 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp176 = zext i32 %tmp174 to i64
  %tmp177 = call i64 @do_list(i32 %tmp175, i64 %tmp176)
  %tmp178 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp179 = call i32 @close(i32 %tmp178)
  %tmp180 = icmp eq i32 %tmp179, 0
  br i1 %tmp180, label %block_52b5, label %block_4e50

block_4e50:                                       ; preds = %block_4e26
  %tmp181 = call i64 @read_error()
  unreachable

block_4e55:                                       ; preds = %block_4e1c
  %tmp182 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp183 = icmp eq i32 %tmp182, 0
  br i1 %tmp183, label %block_4e6b, label %block_4e5f

block_4e5f:                                       ; preds = %block_4e55
  store i32 1, i32* bitcast (i64* @global_var_24a880 to i32*)
  br label %block_4ed0

block_4e6b:                                       ; preds = %block_4e55
  %tmp184 = call i64 @create_outfile(i64 %rdi.0, i64 ptrtoint (i64* @global_var_216f00 to i64), i64 %3, i64 %4, i64 %2, i64 %1)
  %tmp185 = trunc i64 %tmp184 to i32
  %tmp186 = icmp eq i32 %tmp185, 0
  br i1 %tmp186, label %block_4e78, label %block_52b8

block_4e78:                                       ; preds = %block_4e6b
  %tmp187 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp188 = icmp eq i32 %tmp187, 0
  br i1 %tmp188, label %block_4e82, label %block_4ed0

block_4e82:                                       ; preds = %block_4e78
  %tmp189 = load i32* bitcast (i64* @global_var_24a888 to i32*)
  %tmp190 = icmp eq i32 %tmp189, 0
  br i1 %tmp190, label %block_4ed0.thread, label %block_4e8c

block_4ed0.thread:                                ; preds = %block_4e82
  br label %block_4eda

block_4e8c:                                       ; preds = %block_4e82
  %tmp191 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp192 = icmp eq i32 %tmp191, 0
  br i1 %tmp192, label %block_4e96, label %block_4ed0

block_4e96:                                       ; preds = %block_4e8c
  %tmp193 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp194 = icmp eq i32 %tmp193, 0
  br i1 %tmp194, label %block_4ea0, label %block_4ed0

block_4ea0:                                       ; preds = %block_4e96
  %tmp195 = load i64* @global_var_25f4c8
  %tmp196 = load i64* @global_var_216580
  %tmp197 = inttoptr i64 %tmp196 to %_IO_FILE*
  %tmp198 = inttoptr i64 %tmp195 to i8*
  %tmp199 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp197, i8* getelementptr inbounds ([25 x i8]* @global_var_116aa, i32 0, i32 0), i8* %tmp198, i8* bitcast (i64* @global_var_21a460 to i8*), i8* bitcast (i64* @global_var_24f0c0 to i8*))
  br label %block_4ed0

block_4ed0:                                       ; preds = %block_4e96, %block_4e8c, %block_4e78, %block_4ea0, %block_4e5f
  %.pr = load i32* bitcast (i64* @global_var_24a888 to i32*)
  %tmp200 = icmp eq i32 %.pr, 0
  br i1 %tmp200, label %block_4eda, label %block_4eee

block_4eda:                                       ; preds = %block_4ed0.thread, %block_4ed0
  %tmp201 = load i32* bitcast (i64* @global_var_216090 to i32*)
  %tmp202 = icmp eq i32 %tmp201, 0
  %tmp203 = zext i1 %tmp202 to i32
  store i32 %tmp203, i32* bitcast (i64* @global_var_24a888 to i32*)
  br label %block_4eee

block_4eee:                                       ; preds = %block_4ed0, %block_4eda
  %tmp204 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp205 = icmp eq i32 %tmp204, 0
  br i1 %tmp205, label %block_4f1a, label %block_4ef8

block_4ef8:                                       ; preds = %block_4eee
  %tmp206 = load i64* @global_var_216580
  %tmp207 = inttoptr i64 %tmp206 to %_IO_FILE*
  %tmp208 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp207, i8* getelementptr inbounds ([5 x i8]* @global_var_116c3, i32 0, i32 0), i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_4f1a

block_4f1a:                                       ; preds = %block_4ef8, %block_4eee, %block_4f69
  %tmp209 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp210 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp211 = zext i32 %tmp209 to i64
  %tmp212 = call i64 @zip(i32 %tmp210, i64 %tmp211)
  %tmp213 = trunc i64 %tmp212 to i32
  %tmp214 = icmp eq i32 %tmp213, 0
  br i1 %tmp214, label %block_4f43, label %block_4f37

block_4f37:                                       ; preds = %block_4f1a
  %tmp215 = zext i32 %tmp210 to i64
  store i32 -1, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  br label %block_4f7a

block_4f43:                                       ; preds = %block_4f1a
  %tmp216 = call i64 @input_eof()
  %tmp217 = trunc i64 %tmp216 to i32
  %tmp218 = icmp eq i32 %tmp217, 0
  br i1 %tmp218, label %block_4f4c, label %block_4f76

block_4f4c:                                       ; preds = %block_4f43
  %tmp219 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp220 = call i64 @get_method(i32 %tmp219)
  %tmp221 = trunc i64 %tmp220 to i32
  store i32 %tmp221, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp222 = icmp slt i32 %tmp221, 0
  br i1 %tmp222, label %block_4f79, label %block_4f69

block_4f69:                                       ; preds = %block_4f4c
  store i64 0, i64* @global_var_25f4c0
  br label %block_4f1a

block_4f76:                                       ; preds = %block_4f43
  %tmp223 = zext i32 %tmp210 to i64
  br label %block_4f7a

block_4f79:                                       ; preds = %block_4f4c
  %tmp224 = zext i32 %tmp210 to i64
  br label %block_4f7a

block_4f7a:                                       ; preds = %block_4f79, %block_4f76, %block_4f37
  %tmp225 = phi i64 [ %tmp224, %block_4f79 ], [ %tmp223, %block_4f76 ], [ %tmp215, %block_4f37 ]
  %tmp226 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp227 = call i32 @close(i32 %tmp226)
  %tmp228 = icmp eq i32 %tmp227, 0
  br i1 %tmp228, label %block_4f90, label %block_4f8b

block_4f8b:                                       ; preds = %block_4f7a
  %tmp229 = call i64 @read_error()
  unreachable

block_4f90:                                       ; preds = %block_4f7a
  %tmp230 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp231 = icmp eq i32 %tmp230, 0
  br i1 %tmp231, label %block_4f9e, label %block_516d

block_4f9e:                                       ; preds = %block_4f90
  %tmp232 = call i64 @copy_stat(i64* @global_var_216f00, i64 %tmp211, i64 %tmp225)
  %tmp233 = load i8* bitcast (i64* @global_var_2165f9 to i8*)
  %tmp234 = icmp eq i8 %tmp233, 0
  br i1 %tmp234, label %block_4ff9, label %block_4fb5

block_4fb5:                                       ; preds = %block_4f9e
  %tmp235 = load i32* bitcast (i64* @global_var_2160a8 to i32*)
  %tmp236 = icmp slt i32 %tmp235, 0
  br i1 %tmp236, label %block_4fdc, label %block_4fbf

block_4fbf:                                       ; preds = %block_4fb5
  %tmp237 = load i32* bitcast (i64* @global_var_2160a8 to i32*)
  %tmp238 = call i32 @fdatasync(i32 %tmp237)
  %tmp239 = icmp eq i32 %tmp238, 0
  br i1 %tmp239, label %block_4fdc, label %block_4fd0

block_4fd0:                                       ; preds = %block_4fbf
  %tmp240 = call i32* @__errno_location()
  %tmp241 = load i32* %tmp240
  %tmp242 = icmp eq i32 %tmp241, 22
  br i1 %tmp242, label %block_4fdc, label %block_500a

block_4fdc:                                       ; preds = %block_4fd0, %block_4fbf, %block_4fb5
  %tmp243 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp244 = call i32 @fsync(i32 %tmp243)
  %tmp245 = icmp eq i32 %tmp244, 0
  br i1 %tmp245, label %block_4ff9, label %block_4fed

block_4fed:                                       ; preds = %block_4fdc
  %tmp246 = call i32* @__errno_location()
  %tmp247 = load i32* %tmp246
  %tmp248 = icmp eq i32 %tmp247, 22
  br i1 %tmp248, label %block_4ff9, label %block_500a

block_4ff9:                                       ; preds = %block_4fed, %block_4fdc, %block_4f9e
  %tmp249 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp250 = call i32 @close(i32 %tmp249)
  %tmp251 = icmp eq i32 %tmp250, 0
  br i1 %tmp251, label %block_500f, label %block_500a

block_500a:                                       ; preds = %block_4fed, %block_4fd0, %block_4ff9
  %tmp252 = call i64 @write_error()
  unreachable

block_500f:                                       ; preds = %block_4ff9
  %tmp253 = load i32* bitcast (i64* @global_var_216608 to i32*)
  %tmp254 = icmp eq i32 %tmp253, 0
  br i1 %tmp254, label %block_501d, label %block_516d

block_501d:                                       ; preds = %block_500f
  %tmp255 = call i64 @last_component(i8* bitcast (i64* @global_var_21a460 to i8*))
  %tmp256 = inttoptr i64 %tmp255 to i8*
  %tmp257 = ptrtoint i8* %tmp256 to i64
  %tmp258 = sub i64 %tmp257, ptrtoint (i64* @global_var_21a460 to i64)
  %tmp259 = trunc i64 %tmp258 to i32
  %tmp260 = call i64 @atdir_eq(i64 ptrtoint (i64* @global_var_21a460 to i64), i32 %tmp259)
  %tmp261 = trunc i64 %tmp260 to i8
  %tmp262 = icmp eq i8 %tmp261, 0
  br i1 %tmp262, label %block_505f, label %block_5057

block_5057:                                       ; preds = %block_501d
  %tmp263 = load i32* bitcast (i64* @global_var_2160a8 to i32*)
  %tmp264 = zext i32 %tmp263 to i64
  br label %block_5064

block_505f:                                       ; preds = %block_501d
  br label %block_5064

block_5064:                                       ; preds = %block_505f, %block_5057
  %rax.0 = phi i64 [ 4294967295, %block_505f ], [ %tmp264, %block_5057 ]
  %tmp265 = trunc i64 %rax.0 to i32
  %tmp266 = bitcast i64* %stack_var_-152 to %_TYPEDEF_sigset_t*
  %tmp267 = call i32 @sigprocmask(i32 0, %_TYPEDEF_sigset_t* bitcast (i64* @global_var_216640 to %_TYPEDEF_sigset_t*), %_TYPEDEF_sigset_t* %tmp266)
  store i32 -1, i32* bitcast (i64* @global_var_2160a4 to i32*)
  %tmp268 = icmp slt i32 %tmp265, 0
  br i1 %tmp268, label %block_5098, label %block_50a6

block_5098:                                       ; preds = %block_5064
  %tmp269 = call i64 @xunlink(i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_50c2

block_50a6:                                       ; preds = %block_5064
  %tmp270 = call i32 @unlinkat(i32 %tmp265, i8* %tmp256, i32 0)
  %tmp271 = sext i32 %tmp270 to i64
  br label %block_50c2

block_50c2:                                       ; preds = %block_50a6, %block_5098
  %rax.1 = phi i64 [ %tmp271, %block_50a6 ], [ %tmp269, %block_5098 ]
  %tmp272 = trunc i64 %rax.1 to i32
  %tmp273 = icmp eq i32 %tmp272, 0
  br i1 %tmp273, label %block_50da, label %block_50d1

block_50d1:                                       ; preds = %block_50c2
  %tmp274 = call i32* @__errno_location()
  %tmp275 = load i32* %tmp274
  %tmp276 = zext i32 %tmp275 to i64
  br label %block_50df

block_50da:                                       ; preds = %block_50c2
  br label %block_50df

block_50df:                                       ; preds = %block_50da, %block_50d1
  %rax.2 = phi i64 [ 0, %block_50da ], [ %tmp276, %block_50d1 ]
  %tmp277 = trunc i64 %rax.2 to i32
  %tmp278 = call i32 @sigprocmask(i32 2, %_TYPEDEF_sigset_t* %tmp266, %_TYPEDEF_sigset_t* null)
  %tmp279 = icmp eq i32 %tmp277, 0
  br i1 %tmp279, label %block_516d, label %block_5107

block_5107:                                       ; preds = %block_50df
  %tmp280 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp281 = icmp eq i32 %tmp280, 0
  br i1 %tmp281, label %block_5111, label %block_5133

block_5111:                                       ; preds = %block_5107
  %tmp282 = load i64* @global_var_25f4c8
  %tmp283 = load i64* @global_var_216580
  %tmp284 = inttoptr i64 %tmp283 to %_IO_FILE*
  %tmp285 = inttoptr i64 %tmp282 to i8*
  %tmp286 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp284, i8* getelementptr inbounds ([5 x i8]* @global_var_11035, i32 0, i32 0), i8* %tmp285)
  br label %block_5133

block_5133:                                       ; preds = %block_5107, %block_5111
  %tmp287 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp288 = icmp eq i32 %tmp287, 0
  br i1 %tmp288, label %block_513d, label %block_5147

block_513d:                                       ; preds = %block_5133
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_5147

block_5147:                                       ; preds = %block_5133, %block_513d
  %tmp289 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp290 = icmp eq i32 %tmp289, 0
  br i1 %tmp290, label %block_5151, label %block_516d

block_5151:                                       ; preds = %block_5147
  %tmp291 = call i32* @__errno_location()
  store i32 %tmp277, i32* %tmp291
  call void @perror(i8* bitcast (i64* @global_var_21a460 to i8*)) #1
  br label %block_516d

block_516d:                                       ; preds = %block_5147, %block_500f, %block_4f90, %block_5151, %block_50df
  %tmp292 = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp293 = icmp eq i32 %tmp292, -1
  br i1 %tmp293, label %block_5178, label %block_5195

block_5178:                                       ; preds = %block_516d
  %tmp294 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp295 = icmp eq i32 %tmp294, 0
  br i1 %tmp295, label %block_5186, label %block_52bb

block_5186:                                       ; preds = %block_5178
  %tmp296 = call i64 @remove_output_file(i32 0)
  br label %block_52bb

block_5195:                                       ; preds = %block_516d
  %tmp297 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp298 = icmp eq i32 %tmp297, 0
  br i1 %tmp298, label %block_52bc, label %block_51a3

block_51a3:                                       ; preds = %block_5195
  %tmp299 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp300 = icmp eq i32 %tmp299, 0
  br i1 %tmp300, label %block_51cf, label %block_51ad

block_51ad:                                       ; preds = %block_51a3
  %tmp301 = load i64* @global_var_216580
  %tmp302 = inttoptr i64 %tmp301 to %_IO_FILE*
  %tmp303 = call i32 @fwrite(i64* bitcast ([4 x i8]* @global_var_116c8 to i64*), i32 1, i32 3, %_IO_FILE* %tmp302)
  br label %block_5249

block_51cf:                                       ; preds = %block_51a3
  %tmp304 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp305 = icmp eq i32 %tmp304, 0
  br i1 %tmp305, label %block_5212, label %block_51d9

block_51d9:                                       ; preds = %block_51cf
  %tmp306 = load i64* @global_var_216580
  %tmp307 = load i64* @global_var_25f4c0
  %tmp308 = load i64* @global_var_21a860
  %tmp309 = load i64* @global_var_267540
  %tmp310 = sub i64 %tmp307, %tmp308
  %tmp311 = add i64 %tmp310, %tmp309
  %tmp312 = inttoptr i64 %tmp306 to %_IO_FILE*
  %tmp313 = call i64 @display_ratio(i64 %tmp311, i64 %tmp307, %_IO_FILE* %tmp312)
  br label %block_5249

block_5212:                                       ; preds = %block_51cf
  %tmp314 = load i64* @global_var_216580
  %tmp315 = load i64* @global_var_21a860
  %tmp316 = load i64* @global_var_25f4c0
  %tmp317 = load i64* @global_var_267540
  %tmp318 = sub i64 %tmp315, %tmp316
  %tmp319 = add i64 %tmp318, %tmp317
  %tmp320 = inttoptr i64 %tmp314 to %_IO_FILE*
  %tmp321 = call i64 @display_ratio(i64 %tmp319, i64 %tmp315, %_IO_FILE* %tmp320)
  br label %block_5249

block_5249:                                       ; preds = %block_5212, %block_51d9, %block_51ad
  %tmp322 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp323 = icmp eq i32 %tmp322, 0
  br i1 %tmp323, label %block_5253, label %block_5299

block_5253:                                       ; preds = %block_5249
  %tmp324 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp325 = icmp eq i32 %tmp324, 0
  br i1 %tmp325, label %block_525d, label %block_5299

block_525d:                                       ; preds = %block_5253
  %tmp326 = load i32* bitcast (i64* @global_var_216608 to i32*)
  %tmp327 = icmp eq i32 %tmp326, 0
  br i1 %tmp327, label %block_5270, label %block_5267

block_5267:                                       ; preds = %block_525d
  br label %block_5277

block_5270:                                       ; preds = %block_525d
  br label %block_5277

block_5277:                                       ; preds = %block_5270, %block_5267
  %rax.3 = phi i64 [ ptrtoint ([14 x i8]* @global_var_116d4 to i64), %block_5270 ], [ ptrtoint ([8 x i8]* @global_var_116cc to i64), %block_5267 ]
  %tmp328 = load i64* @global_var_216580
  %tmp329 = inttoptr i64 %tmp328 to %_IO_FILE*
  %tmp330 = inttoptr i64 %rax.3 to i8*
  %tmp331 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp329, i8* getelementptr inbounds ([10 x i8]* @global_var_116e2, i32 0, i32 0), i8* %tmp330, i8* bitcast (i64* @global_var_24f0c0 to i8*))
  br label %block_5299

block_5299:                                       ; preds = %block_5253, %block_5249, %block_5277
  %tmp332 = load i64* @global_var_216580
  %tmp333 = inttoptr i64 %tmp332 to %_IO_FILE*
  %tmp334 = call i32 @fputc(i32 10, %_IO_FILE* %tmp333)
  br label %block_52bc

block_52af:                                       ; preds = %block_4a64
  br label %block_52bc

block_52b2:                                       ; preds = %block_4b0a, %block_4b18
  br label %block_52bc

block_52b5:                                       ; preds = %block_4e26
  br label %block_52bc

block_52b8:                                       ; preds = %block_4e6b
  br label %block_52bc

block_52bb:                                       ; preds = %block_5178, %block_5186
  br label %block_52bc

block_52bc:                                       ; preds = %block_52bb, %block_52b8, %block_52b5, %block_52b2, %block_52af, %block_5299, %block_5195, %block_4e0a, %block_4dc2, %block_4d68, %block_4cd4, %block_4c5e, %block_4bf6, %block_4b8e, %block_4aae, %block_4a42
  %tmp335 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp336 = icmp eq i64 %tmp43, %tmp335
  br i1 %tmp336, label %block_52d0, label %block_52cb

block_52cb:                                       ; preds = %block_52bc
  call void @__stack_chk_fail()
  unreachable

block_52d0:                                       ; preds = %block_52bc
  ret i64 0
}

define i64 @volatile_strcpy(i8* %arg1, i64* %arg2) {
block_52d2:
  %tmp23 = bitcast i64* %arg2 to i8*
  %tmp24 = load i8* %tmp23
  store i8 %tmp24, i8* %arg1
  %tmp25 = icmp eq i8 %tmp24, 0
  br i1 %tmp25, label %block_5302, label %block_52e0

block_52e0:                                       ; preds = %block_52d2, %block_52e0
  %stack_var_-16.03 = phi i8* [ %tmp29, %block_52e0 ], [ %arg1, %block_52d2 ]
  %stack_var_-24.02 = phi i8* [ %tmp31, %block_52e0 ], [ %tmp23, %block_52d2 ]
  %tmp26 = ptrtoint i8* %stack_var_-16.03 to i64
  %tmp27 = ptrtoint i8* %stack_var_-24.02 to i64
  %tmp28 = add i64 %tmp26, 1
  %tmp29 = inttoptr i64 %tmp28 to i8*
  %tmp30 = add i64 %tmp27, 1
  %tmp31 = inttoptr i64 %tmp30 to i8*
  %tmp32 = load i8* %tmp31
  store i8 %tmp32, i8* %tmp29
  %tmp33 = icmp eq i8 %tmp32, 0
  br i1 %tmp33, label %block_5302, label %block_52e0

block_5302:                                       ; preds = %block_52e0, %block_52d2
  ret i64 0
}

define i64 @create_outfile(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6) {
block_5305:
  %stack_var_-152 = alloca i64
  %tmp33 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp34 = load i32* bitcast (i64* @global_var_216608 to i32*)
  %tmp35 = icmp eq i32 %tmp34, 0
  br i1 %tmp35, label %block_5355, label %block_53b4.preheader

block_5355:                                       ; preds = %block_5305
  %tmp36 = call i64 @last_component(i8* bitcast (i64* @global_var_24f0c0 to i8*))
  %tmp37 = sub i64 %tmp36, ptrtoint (i64* @global_var_24f0c0 to i64)
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = call i64 @atdir_set(i64* @global_var_24f0c0, i32 %tmp38)
  %tmp40 = trunc i64 %tmp39 to i32
  %tmp41 = icmp slt i32 %tmp40, 0
  br i1 %tmp41, label %block_53b4.preheader, label %block_539a

block_539a:                                       ; preds = %block_5355
  %tmp42 = inttoptr i64 %tmp36 to i8*
  br label %block_53b4.preheader

block_53b4.preheader:                             ; preds = %block_5355, %block_539a, %block_5305
  %stack_var_-168.0.ph = phi i8* [ %tmp42, %block_539a ], [ bitcast (i64* @global_var_24f0c0 to i8*), %block_5355 ], [ bitcast (i64* @global_var_24f0c0 to i8*), %block_5305 ]
  %stack_var_-184.0.ph = phi i32 [ %tmp40, %block_539a ], [ -100, %block_5355 ], [ -100, %block_5305 ]
  %tmp43 = bitcast i64* %stack_var_-152 to %_TYPEDEF_sigset_t*
  %tmp44 = ptrtoint i8* %stack_var_-168.0.ph to i64
  br label %block_53b4

block_53b4:                                       ; preds = %block_53b4.preheader, %block_54bc
  %stack_var_-188.0 = phi i32 [ %stack_var_-188.1, %block_54bc ], [ 0, %block_53b4.preheader ]
  %tmp45 = call i64 @volatile_strcpy(i8* bitcast (i64* @global_var_2166e0 to i8*), i64* @global_var_24f0c0)
  %tmp46 = call i32 @sigprocmask(i32 0, %_TYPEDEF_sigset_t* bitcast (i64* @global_var_216640 to %_TYPEDEF_sigset_t*), %_TYPEDEF_sigset_t* %tmp43)
  %tmp47 = call i64 @openat_safer(i32 %stack_var_-184.0.ph, i64 %tmp44, i32 193, i64 384, i64 %arg5, i64 %arg6)
  %tmp48 = trunc i64 %tmp47 to i32
  store i32 %tmp48, i32* bitcast (i64* @global_var_24a880 to i32*)
  store i32 %tmp48, i32* bitcast (i64* @global_var_2160a4 to i32*)
  %tmp49 = call i32* @__errno_location()
  %tmp50 = load i32* %tmp49
  %tmp51 = call i32 @sigprocmask(i32 2, %_TYPEDEF_sigset_t* %tmp43, %_TYPEDEF_sigset_t* null)
  %tmp52 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp53 = icmp slt i32 %tmp52, 0
  br i1 %tmp53, label %block_5456, label %block_5448

block_5448:                                       ; preds = %block_53b4
  %tmp54 = icmp eq i32 %stack_var_-188.0, 0
  br i1 %tmp54, label %block_5451, label %block_54c1

block_5451:                                       ; preds = %block_5448
  br label %block_5512

block_5456:                                       ; preds = %block_53b4
  %tmp55 = icmp eq i32 %tmp50, 17
  br i1 %tmp55, label %block_547e, label %block_5461

block_5461:                                       ; preds = %block_5456
  %tmp56 = icmp eq i32 %tmp50, 36
  br i1 %tmp56, label %block_5466, label %block_549b

block_5466:                                       ; preds = %block_5461
  %tmp57 = call i64 @shorten_name(i8* bitcast (i64* @global_var_24f0c0 to i8*))
  br label %block_54bc

block_547e:                                       ; preds = %block_5456
  %tmp58 = call i64 @check_ofname()
  %tmp59 = trunc i64 %tmp58 to i32
  %tmp60 = icmp eq i32 %tmp59, 0
  br i1 %tmp60, label %block_54bb, label %block_5487

block_5487:                                       ; preds = %block_547e
  %tmp61 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp62 = call i32 @close(i32 %tmp61)
  br label %block_5517

block_549b:                                       ; preds = %block_5461
  %tmp63 = call i64 @progerror(i8* bitcast (i64* @global_var_24f0c0 to i8*))
  %tmp64 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp65 = call i32 @close(i32 %tmp64)
  br label %block_5517

block_54bb:                                       ; preds = %block_547e
  br label %block_54bc

block_54bc:                                       ; preds = %block_54bb, %block_5466
  %stack_var_-188.1 = phi i32 [ %stack_var_-188.0, %block_54bb ], [ 1, %block_5466 ]
  br label %block_53b4

block_54c1:                                       ; preds = %block_5448
  %tmp66 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp67 = icmp eq i32 %tmp66, 0
  br i1 %tmp67, label %block_5512, label %block_54cb

block_54cb:                                       ; preds = %block_54c1
  %tmp68 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp69 = icmp eq i32 %tmp68, 0
  br i1 %tmp69, label %block_54d5, label %block_54fe

block_54d5:                                       ; preds = %block_54cb
  %tmp70 = load i64* @global_var_25f4c8
  %tmp71 = load i64* @global_var_216580
  %tmp72 = inttoptr i64 %tmp71 to %_IO_FILE*
  %tmp73 = inttoptr i64 %tmp70 to i8*
  %tmp74 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp72, i8* getelementptr inbounds ([33 x i8]* @global_var_116f0, i32 0, i32 0), i8* %tmp73, i8* bitcast (i64* @global_var_24f0c0 to i8*))
  br label %block_54fe

block_54fe:                                       ; preds = %block_54cb, %block_54d5
  %tmp75 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp76 = icmp eq i32 %tmp75, 0
  br i1 %tmp76, label %block_5508, label %block_5512

block_5508:                                       ; preds = %block_54fe
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_5512

block_5512:                                       ; preds = %block_54fe, %block_5508, %block_54c1, %block_5451
  br label %block_5517

block_5517:                                       ; preds = %block_5512, %block_549b, %block_5487
  %rax.0 = phi i64 [ 1, %block_5487 ], [ 1, %block_549b ], [ 0, %block_5512 ]
  %tmp77 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp78 = icmp eq i64 %tmp33, %tmp77
  br i1 %tmp78, label %block_552b, label %block_5526

block_5526:                                       ; preds = %block_5517
  call void @__stack_chk_fail()
  unreachable

block_552b:                                       ; preds = %block_5517
  ret i64 %rax.0
}

define i64 @get_suffix(i8* %arg1) {
block_552d:
  %stack_var_-56 = alloca i64
  %stack_var_-8 = alloca i64
  %tmp43 = ptrtoint i64* %stack_var_-8 to i64
  %tmp44 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp45 = load i64* bitcast ([7 x i8*]* @global_var_2160e8 to i64*)
  %tmp46 = icmp eq i64 %tmp45, 0
  br i1 %tmp46, label %block_55c1, label %block_5559

block_5559:                                       ; preds = %block_552d, %block_55b0
  %tmp47 = phi i64* [ %tmp66, %block_55b0 ], [ bitcast ([7 x i8*]* @global_var_2160e8 to i64*), %block_552d ]
  %stack_var_-88.06 = phi i8** [ %tmp65, %block_55b0 ], [ getelementptr inbounds ([7 x i8*]* @global_var_2160e8, i32 0, i32 0), %block_552d ]
  %tmp48 = load i64* %tmp47
  %tmp49 = inttoptr i64 %tmp48 to i8*
  %tmp50 = call i32 @strlen(i8* %tmp49)
  %tmp51 = sext i32 %tmp50 to i64
  %tmp52 = load i64* @global_var_216638
  %tmp53 = icmp ugt i64 %tmp51, %tmp52
  br i1 %tmp53, label %block_5579, label %block_55b0

block_5579:                                       ; preds = %block_5559
  %tmp54 = load i64* %tmp47
  %tmp55 = load i64* @global_var_216638
  %tmp56 = add i64 %tmp54, %tmp51
  %tmp57 = sub i64 %tmp56, %tmp55
  %tmp58 = load i64* @global_var_216630
  %tmp59 = inttoptr i64 %tmp58 to i8*
  %tmp60 = inttoptr i64 %tmp57 to i8*
  %tmp61 = call i32 @strcmp(i8* %tmp59, i8* %tmp60)
  %tmp62 = icmp eq i32 %tmp61, 0
  br i1 %tmp62, label %block_55aa, label %block_55b0

block_55aa:                                       ; preds = %block_5579
  br label %block_55c1

block_55b0:                                       ; preds = %block_5579, %block_5559
  %tmp63 = ptrtoint i8** %stack_var_-88.06 to i64
  %tmp64 = add i64 %tmp63, 8
  %tmp65 = inttoptr i64 %tmp64 to i8**
  %tmp66 = bitcast i8** %tmp65 to i64*
  %0 = load i8** %tmp65
  %1 = ptrtoint i8* %0 to i64
  %tmp68 = icmp eq i64 %1, 0
  br i1 %tmp68, label %block_55c1, label %block_5559

block_55c1:                                       ; preds = %block_55b0, %block_552d, %block_55aa
  %stack_var_-101.0 = phi i8 [ 1, %block_55aa ], [ 0, %block_552d ], [ 0, %block_55b0 ]
  %tmp69 = load i64* @global_var_216630
  %tmp70 = inttoptr i64 %tmp69 to i8*
  %tmp71 = call i64 @xstrdup(i8* %tmp70)
  %tmp72 = inttoptr i64 %tmp71 to i8*
  %tmp73 = call i64 @strlwr(i8* %tmp72)
  %tmp74 = icmp eq i8 %stack_var_-101.0, 0
  br i1 %tmp74, label %block_55ed, label %block_55e6

block_55e6:                                       ; preds = %block_55c1
  br label %block_55f2

block_55ed:                                       ; preds = %block_55c1
  br label %block_55f2

block_55f2:                                       ; preds = %block_55ed, %block_55e6
  %rax.0 = phi i64 [ ptrtoint (i64* @global_var_2160e0 to i64), %block_55ed ], [ add (i64 ptrtoint (i64* @global_var_2160e0 to i64), i64 64), %block_55e6 ]
  %tmp75 = inttoptr i64 %rax.0 to i64*
  store i64 %tmp71, i64* %tmp75
  %tmp76 = zext i8 %stack_var_-101.0 to i64
  %tmp77 = shl nuw nsw i64 %tmp76, 3
  %tmp78 = add i64 %tmp77, ptrtoint (i64* @global_var_2160e0 to i64)
  %tmp79 = inttoptr i64 %tmp78 to i8**
  %tmp80 = call i32 @strlen(i8* %arg1)
  %tmp81 = icmp sgt i32 %tmp80, 32
  br i1 %tmp81, label %block_564d, label %block_5638

block_5638:                                       ; preds = %block_55f2
  %tmp82 = bitcast i64* %stack_var_-56 to i8*
  %tmp83 = call i8* @strcpy(i8* %tmp82, i8* %arg1)
  br label %block_566c

block_564d:                                       ; preds = %block_55f2
  %tmp84 = sext i32 %tmp80 to i64
  %tmp85 = ptrtoint i8* %arg1 to i64
  %tmp86 = add i64 %tmp85, -32
  %tmp87 = add i64 %tmp86, %tmp84
  %tmp88 = bitcast i64* %stack_var_-56 to i8*
  %tmp89 = inttoptr i64 %tmp87 to i8*
  %tmp90 = call i8* @strcpy(i8* %tmp88, i8* %tmp89)
  br label %block_566c

block_566c:                                       ; preds = %block_564d, %block_5638
  %tmp91 = ptrtoint i64* %stack_var_-56 to i64
  %tmp92 = bitcast i64* %stack_var_-56 to i8*
  %tmp93 = call i64 @strlwr(i8* %tmp92)
  %tmp94 = call i32 @strlen(i8* %tmp92)
  %tmp95 = add i32 %tmp94, -1
  %tmp96 = add i64 %tmp43, -48
  %tmp97 = sext i32 %tmp94 to i64
  %tmp98 = add i64 %tmp97, %tmp91
  br label %block_568f

block_568f:                                       ; preds = %block_5704, %block_566c
  %stack_var_-88.1 = phi i8** [ %tmp79, %block_566c ], [ %tmp126, %block_5704 ]
  %2 = load i8** %stack_var_-88.1
  %tmp102 = call i32 @strlen(i8* %2)
  %tmp103 = inttoptr i32 %tmp102 to i8*
  %tmp104 = ptrtoint i8* %tmp103 to i32
  %tmp105 = icmp sgt i32 %tmp94, %tmp104
  br i1 %tmp105, label %block_56a9, label %block_5704

block_56a9:                                       ; preds = %block_568f
  %tmp106 = sub i32 %tmp95, %tmp104
  %tmp107 = sext i32 %tmp106 to i64
  %tmp108 = add i64 %tmp96, %tmp107
  %tmp109 = inttoptr i64 %tmp108 to i8*
  %tmp110 = load i8* %tmp109
  %tmp111 = icmp eq i8 %tmp110, 47
  br i1 %tmp111, label %block_5704, label %block_56bd

block_56bd:                                       ; preds = %block_56a9
  %3 = load i8** %stack_var_-88.1
  %tmp113 = sext i32 %tmp104 to i64
  %tmp114 = sub i64 %tmp98, %tmp113
  %tmp115 = inttoptr i64 %tmp114 to i8*
  %tmp117 = call i32 @strcmp(i8* %tmp115, i8* %3)
  %tmp118 = icmp eq i32 %tmp117, 0
  br i1 %tmp118, label %block_56e9, label %block_5704

block_56e9:                                       ; preds = %block_56bd
  %tmp119 = sext i32 %tmp80 to i64
  %tmp120 = ptrtoint i8* %arg1 to i64
  %tmp121 = add i64 %tmp119, %tmp120
  %tmp122 = sub i64 %tmp121, %tmp113
  %tmp123 = inttoptr i64 %tmp122 to i8*
  %phitmp = ptrtoint i8* %tmp123 to i64
  br label %block_5719

block_5704:                                       ; preds = %block_56bd, %block_568f, %block_56a9
  %tmp124 = ptrtoint i8** %stack_var_-88.1 to i64
  %tmp125 = add i64 %tmp124, 8
  %tmp126 = inttoptr i64 %tmp125 to i8**
  %4 = load i8** %tmp126
  %5 = ptrtoint i8* %4 to i64
  %tmp129 = icmp eq i64 %5, 0
  br i1 %tmp129, label %block_5719, label %block_568f

block_5719:                                       ; preds = %block_5704, %block_56e9
  %stack_var_-80.0 = phi i64 [ %phitmp, %block_56e9 ], [ 0, %block_5704 ]
  %tmp130 = inttoptr i64 %tmp71 to i64*
  call void @free(i64* %tmp130)
  %tmp131 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp132 = icmp eq i64 %tmp44, %tmp131
  br i1 %tmp132, label %block_573d, label %block_5738

block_5738:                                       ; preds = %block_5719
  call void @__stack_chk_fail()
  unreachable

block_573d:                                       ; preds = %block_5719
  ret i64 %stack_var_-80.0
}

define i64 @open_and_stat(i64* %arg1, i32 %arg2, i64 %arg3) {
block_573f:
  %0 = alloca i64
  %1 = load i64* %0
  %2 = load i64* %0
  %tmp16 = ptrtoint i64* %arg1 to i64
  %tmp30 = inttoptr i64 %arg3 to %stat*
  %tmp31 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp32 = icmp eq i32 %tmp31, 0
  br i1 %tmp32, label %block_576b, label %block_577c

block_576b:                                       ; preds = %block_573f
  %tmp33 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp34 = icmp eq i32 %tmp33, 0
  br i1 %tmp34, label %block_5775, label %block_577c

block_5775:                                       ; preds = %block_576b
  %tmp35 = or i32 %arg2, 131072
  br label %block_577c

block_577c:                                       ; preds = %block_576b, %block_573f, %block_5775
  %stack_var_-52.0 = phi i32 [ %arg2, %block_573f ], [ %arg2, %block_576b ], [ %tmp35, %block_5775 ]
  %tmp36 = load i32* bitcast (i64* @global_var_216608 to i32*)
  %tmp37 = icmp eq i32 %tmp36, 0
  br i1 %tmp37, label %block_5786, label %block_57c7

block_5786:                                       ; preds = %block_577c
  %tmp38 = bitcast i64* %arg1 to i8*
  %tmp39 = call i64 @last_component(i8* %tmp38)
  %tmp40 = sub i64 %tmp39, %tmp16
  %tmp41 = trunc i64 %tmp40 to i32
  %tmp42 = call i64 @atdir_set(i64* %arg1, i32 %tmp41)
  %tmp43 = trunc i64 %tmp42 to i32
  %tmp44 = icmp slt i32 %tmp43, 0
  br i1 %tmp44, label %block_57c7, label %block_57b9

block_57b9:                                       ; preds = %block_5786
  br label %block_57c7

block_57c7:                                       ; preds = %block_577c, %block_57b9, %block_5786
  %stack_var_-40.0 = phi i32 [ -100, %block_577c ], [ -100, %block_5786 ], [ %tmp43, %block_57b9 ]
  %stack_var_-24.0 = phi i64 [ %tmp16, %block_577c ], [ %tmp16, %block_5786 ], [ %tmp39, %block_57b9 ]
  %tmp45 = call i64 @openat_safer(i32 %stack_var_-40.0, i64 %stack_var_-24.0, i32 %stack_var_-52.0, i64 %stack_var_-24.0, i64 %2, i64 %1)
  %tmp46 = trunc i64 %tmp45 to i32
  %tmp47 = icmp slt i32 %tmp46, 0
  br i1 %tmp47, label %block_5826, label %block_57e9

block_57e9:                                       ; preds = %block_57c7
  %tmp48 = call i32 @fstat(i32 %tmp46, %stat* %tmp30)
  %tmp49 = icmp eq i32 %tmp48, 0
  br i1 %tmp49, label %block_5826, label %block_57fe

block_57fe:                                       ; preds = %block_57e9
  %tmp50 = call i32* @__errno_location()
  %tmp51 = load i32* %tmp50
  %tmp52 = call i32 @close(i32 %tmp46)
  %tmp53 = call i32* @__errno_location()
  store i32 %tmp51, i32* %tmp53
  br label %block_5829

block_5826:                                       ; preds = %block_57e9, %block_57c7
  %tmp54 = and i64 %tmp45, 4294967295
  br label %block_5829

block_5829:                                       ; preds = %block_5826, %block_57fe
  %rax.0 = phi i64 [ %tmp54, %block_5826 ], [ 4294967295, %block_57fe ]
  ret i64 %rax.0
}

define i64 @open_input_file(i8* %arg1, i64* %arg2) {
block_582b:
  %tmp20 = ptrtoint i64* %arg2 to i64
  %tmp36 = load i64* @global_var_216630
  store i64 %tmp36, i64* @global_var_216140
  %tmp37 = call i32 @strlen(i8* %arg1)
  %tmp38 = icmp ugt i32 %tmp37, 1022
  br i1 %tmp38, label %block_5a5f, label %block_587b

block_587b:                                       ; preds = %block_582b
  %tmp39 = call i8* @strcpy(i8* bitcast (i64* @global_var_21a460 to i8*), i8* %arg1)
  %tmp41 = call i64 @open_and_stat(i64* @global_var_21a460, i32 ptrtoint (i64* @global_var_900 to i32), i64 %tmp20)
  %tmp42 = trunc i64 %tmp41 to i32
  %tmp43 = icmp slt i32 %tmp42, 0
  br i1 %tmp43, label %block_58b4, label %block_58ac

block_58ac:                                       ; preds = %block_587b
  %tmp44 = and i64 %tmp41, 4294967295
  br label %block_5a98

block_58b4:                                       ; preds = %block_587b
  %tmp45 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp46 = icmp eq i32 %tmp45, 0
  br i1 %tmp46, label %block_58ca, label %block_58be

block_58be:                                       ; preds = %block_58b4
  %tmp47 = call i32* @__errno_location()
  %tmp48 = load i32* %tmp47
  %tmp49 = icmp eq i32 %tmp48, 2
  br i1 %tmp49, label %block_58e0, label %block_58ca

block_58ca:                                       ; preds = %block_58be, %block_58b4
  %tmp50 = call i64 @progerror(i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_5a98

block_58e0:                                       ; preds = %block_58be
  %tmp51 = call i64 @get_suffix(i8* bitcast (i64* @global_var_21a460 to i8*))
  %tmp52 = inttoptr i64 %tmp51 to i8*
  %tmp53 = ptrtoint i8* %tmp52 to i64
  %tmp54 = icmp eq i64 %tmp53, 0
  br i1 %tmp54, label %block_590d, label %block_58f7

block_58f7:                                       ; preds = %block_58e0
  %tmp55 = call i64 @progerror(i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_5a98

block_590d:                                       ; preds = %block_58e0
  %tmp56 = call i32 @strlen(i8* bitcast (i64* @global_var_21a460 to i8*))
  %tmp57 = load i64* @global_var_216630
  %tmp58 = inttoptr i64 %tmp57 to i8*
  %tmp59 = call i32 @strcmp(i8* %tmp58, i8* getelementptr inbounds ([4 x i8]* @global_var_11044, i32 0, i32 0))
  %tmp60 = icmp eq i32 %tmp59, 0
  br i1 %tmp60, label %block_5936, label %block_593b.preheader

block_5936:                                       ; preds = %block_590d
  br label %block_593b.preheader

block_593b.preheader:                             ; preds = %block_5936, %block_590d
  %stack_var_-48.0.ph = phi i64 [ ptrtoint ([4 x i8*]* @global_var_216148 to i64), %block_5936 ], [ ptrtoint (i64* @global_var_216140 to i64), %block_590d ]
  %tmp61 = sext i32 %tmp56 to i64
  br label %block_593b

block_593b:                                       ; preds = %block_593b.preheader, %block_5a01
  %stack_var_-48.0 = phi i64 [ %tmp86, %block_5a01 ], [ %stack_var_-48.0.ph, %block_593b.preheader ]
  %stack_var_-64.0 = phi i32 [ %stack_var_-64.1, %block_5a01 ], [ 0, %block_593b.preheader ]
  %tmp62 = inttoptr i64 %stack_var_-48.0 to i64*
  %tmp63 = load i64* %tmp62
  %tmp64 = inttoptr i64 %tmp63 to i8*
  %tmp65 = call i8* @strcpy(i8* bitcast (i64* @global_var_21a460 to i8*), i8* %arg1)
  %tmp66 = call i32 @strlen(i8* %tmp64)
  %tmp67 = sext i32 %tmp66 to i64
  %tmp68 = add nsw i64 %tmp67, %tmp61
  %tmp69 = icmp ugt i64 %tmp68, 1023
  br i1 %tmp69, label %block_5a62, label %block_5982

block_5982:                                       ; preds = %block_593b
  %tmp70 = call i8* @strcat(i8* bitcast (i64* @global_var_21a460 to i8*), i8* %tmp64)
  %tmp72 = call i64 @open_and_stat(i64* @global_var_21a460, i32 ptrtoint (i64* @global_var_900 to i32), i64 %tmp20)
  %tmp73 = trunc i64 %tmp72 to i32
  %tmp74 = icmp slt i32 %tmp73, 0
  br i1 %tmp74, label %block_59bb, label %block_59b3

block_59b3:                                       ; preds = %block_5982
  %tmp75 = and i64 %tmp72, 4294967295
  br label %block_5a98

block_59bb:                                       ; preds = %block_5982
  %tmp76 = call i32* @__errno_location()
  %tmp77 = load i32* %tmp76
  %tmp78 = icmp eq i32 %tmp77, 2
  br i1 %tmp78, label %block_59dd, label %block_59c7

block_59c7:                                       ; preds = %block_59bb
  %tmp79 = call i64 @progerror(i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_5a98

block_59dd:                                       ; preds = %block_59bb
  %tmp80 = load i64* @global_var_216630
  %tmp81 = inttoptr i64 %tmp80 to i8*
  %tmp82 = call i32 @strcmp(i8* %tmp64, i8* %tmp81)
  %tmp83 = icmp eq i32 %tmp82, 0
  br i1 %tmp83, label %block_59f7, label %block_5a01

block_59f7:                                       ; preds = %block_59dd
  %tmp84 = call i32* @__errno_location()
  %tmp85 = load i32* %tmp84
  br label %block_5a01

block_5a01:                                       ; preds = %block_59dd, %block_59f7
  %stack_var_-64.1 = phi i32 [ %stack_var_-64.0, %block_59dd ], [ %tmp85, %block_59f7 ]
  %tmp86 = add i64 %stack_var_-48.0, 8
  %tmp87 = inttoptr i64 %tmp86 to i64*
  %tmp88 = load i64* %tmp87
  %tmp89 = icmp eq i64 %tmp88, 0
  br i1 %tmp89, label %block_5a16, label %block_593b

block_5a16:                                       ; preds = %block_5a01
  %tmp90 = call i8* @strcpy(i8* bitcast (i64* @global_var_21a460 to i8*), i8* %arg1)
  %tmp91 = load i64* @global_var_216630
  %tmp92 = inttoptr i64 %tmp91 to i8*
  %tmp93 = call i8* @strcat(i8* bitcast (i64* @global_var_21a460 to i8*), i8* %tmp92)
  %tmp94 = call i32* @__errno_location()
  store i32 %stack_var_-64.1, i32* %tmp94
  %tmp95 = call i64 @progerror(i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_5a98

block_5a5f:                                       ; preds = %block_582b
  br label %block_5a63

block_5a62:                                       ; preds = %block_593b
  br label %block_5a63

block_5a63:                                       ; preds = %block_5a62, %block_5a5f
  %tmp96 = load i64* @global_var_25f4c8
  %tmp97 = load i64* @global_var_216580
  %tmp98 = inttoptr i64 %tmp97 to %_IO_FILE*
  %tmp99 = inttoptr i64 %tmp96 to i8*
  %tmp100 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp98, i8* getelementptr inbounds ([28 x i8]* @global_var_11711, i32 0, i32 0), i8* %tmp99, i8* %arg1)
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_5a98

block_5a98:                                       ; preds = %block_5a63, %block_5a16, %block_59c7, %block_59b3, %block_58f7, %block_58ca, %block_58ac
  %rax.0 = phi i64 [ 4294967295, %block_5a63 ], [ 4294967295, %block_58ca ], [ 4294967295, %block_5a16 ], [ 4294967295, %block_59c7 ], [ %tmp75, %block_59b3 ], [ 4294967295, %block_58f7 ], [ %tmp44, %block_58ac ]
  ret i64 %rax.0
}

define i64 @make_ofname() {
block_5a9f:
  %tmp20 = call i8* @strcpy(i8* bitcast (i64* @global_var_24f0c0 to i8*), i8* bitcast (i64* @global_var_21a460 to i8*))
  %tmp21 = call i64 @get_suffix(i8* bitcast (i64* @global_var_24f0c0 to i8*))
  %tmp22 = inttoptr i64 %tmp21 to i8*
  %tmp23 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp24 = icmp eq i32 %tmp23, 0
  br i1 %tmp24, label %block_5bd3, label %block_5ad8

block_5ad8:                                       ; preds = %block_5a9f
  %tmp25 = ptrtoint i8* %tmp22 to i64
  %tmp26 = icmp eq i64 %tmp25, 0
  br i1 %tmp26, label %block_5ae3, label %block_5b7a

block_5ae3:                                       ; preds = %block_5ad8
  %tmp27 = load i32* bitcast (i64* @global_var_21660c to i32*)
  %tmp28 = icmp eq i32 %tmp27, 0
  br i1 %tmp28, label %block_5aed, label %block_5b0b

block_5aed:                                       ; preds = %block_5ae3
  %tmp29 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp30 = icmp eq i32 %tmp29, 0
  br i1 %tmp30, label %block_5af7, label %block_5b01

block_5af7:                                       ; preds = %block_5aed
  %tmp31 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp32 = icmp eq i32 %tmp31, 0
  br i1 %tmp32, label %block_5b0b, label %block_5b01

block_5b01:                                       ; preds = %block_5aed, %block_5af7
  br label %block_5cd1

block_5b0b:                                       ; preds = %block_5ae3, %block_5af7
  %tmp33 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp34 = icmp eq i32 %tmp33, 0
  br i1 %tmp34, label %block_5b15, label %block_5b29

block_5b15:                                       ; preds = %block_5b0b
  %tmp35 = load i32* bitcast (i64* @global_var_21660c to i32*)
  %tmp36 = icmp eq i32 %tmp35, 0
  br i1 %tmp36, label %block_5b1f, label %block_5b70

block_5b1f:                                       ; preds = %block_5b15
  %tmp37 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp38 = icmp eq i32 %tmp37, 0
  br i1 %tmp38, label %block_5b29.thread, label %block_5b70

block_5b29.thread:                                ; preds = %block_5b1f
  br label %block_5b33

block_5b29:                                       ; preds = %block_5b0b
  %.pr = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp39 = icmp eq i32 %.pr, 0
  br i1 %tmp39, label %block_5b33, label %block_5b5c

block_5b33:                                       ; preds = %block_5b29.thread, %block_5b29
  %tmp40 = load i64* @global_var_25f4c8
  %tmp41 = load i64* @global_var_216580
  %tmp42 = inttoptr i64 %tmp41 to %_IO_FILE*
  %tmp43 = inttoptr i64 %tmp40 to i8*
  %tmp44 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp42, i8* getelementptr inbounds ([35 x i8]* @global_var_11730, i32 0, i32 0), i8* %tmp43, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_5b5c

block_5b5c:                                       ; preds = %block_5b29, %block_5b33
  %tmp45 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp46 = icmp eq i32 %tmp45, 0
  br i1 %tmp46, label %block_5b66, label %block_5b70

block_5b66:                                       ; preds = %block_5b5c
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_5b70

block_5b70:                                       ; preds = %block_5b5c, %block_5b1f, %block_5b15, %block_5b66
  br label %block_5cd1

block_5b7a:                                       ; preds = %block_5ad8
  %tmp47 = call i64 @strlwr(i8* %tmp22)
  %tmp48 = call i32 @strcmp(i8* %tmp22, i8* getelementptr inbounds ([5 x i8]* @global_var_11753, i32 0, i32 0))
  %tmp49 = icmp eq i32 %tmp48, 0
  br i1 %tmp49, label %block_5bb4, label %block_5b9d

block_5b9d:                                       ; preds = %block_5b7a
  %tmp50 = call i32 @strcmp(i8* %tmp22, i8* getelementptr inbounds ([5 x i8]* @global_var_11758, i32 0, i32 0))
  %tmp51 = icmp eq i32 %tmp50, 0
  br i1 %tmp51, label %block_5bb4, label %block_5bc7

block_5bb4:                                       ; preds = %block_5b9d, %block_5b7a
  %tmp52 = bitcast i8* %tmp22 to i32*
  store i32 1918989358, i32* %tmp52
  %tmp53 = add i64 %tmp25, 4
  %tmp54 = inttoptr i64 %tmp53 to i8*
  store i8 0, i8* %tmp54
  br label %block_5c7d

block_5bc7:                                       ; preds = %block_5b9d
  store i8 0, i8* %tmp22
  br label %block_5c7d

block_5bd3:                                       ; preds = %block_5a9f
  %tmp55 = ptrtoint i8* %tmp22 to i64
  %tmp56 = icmp eq i64 %tmp55, 0
  br i1 %tmp56, label %block_5c3c, label %block_5bda

block_5bda:                                       ; preds = %block_5bd3
  %tmp57 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp58 = icmp eq i32 %tmp57, 0
  br i1 %tmp58, label %block_5be4, label %block_5c3c

block_5be4:                                       ; preds = %block_5bda
  %tmp59 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp60 = icmp eq i32 %tmp59, 0
  br i1 %tmp60, label %block_5bee, label %block_5c02

block_5bee:                                       ; preds = %block_5be4
  %tmp61 = load i32* bitcast (i64* @global_var_21660c to i32*)
  %tmp62 = icmp eq i32 %tmp61, 0
  br i1 %tmp62, label %block_5bf8, label %block_5c32

block_5bf8:                                       ; preds = %block_5bee
  %tmp63 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp64 = icmp eq i32 %tmp63, 0
  br i1 %tmp64, label %block_5c02, label %block_5c32

block_5c02:                                       ; preds = %block_5bf8, %block_5be4
  %tmp65 = load i64* @global_var_25f4c8
  %tmp66 = load i64* @global_var_216580
  %tmp67 = inttoptr i64 %tmp66 to %_IO_FILE*
  %tmp68 = inttoptr i64 %tmp65 to i8*
  %tmp69 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp67, i8* getelementptr inbounds ([43 x i8]* @global_var_11760, i32 0, i32 0), i8* %tmp68, i8* bitcast (i64* @global_var_21a460 to i8*), i8* %tmp22)
  br label %block_5c32

block_5c32:                                       ; preds = %block_5bf8, %block_5bee, %block_5c02
  br label %block_5cd1

block_5c3c:                                       ; preds = %block_5bda, %block_5bd3
  store i32 0, i32* bitcast (i64* @global_var_24a888 to i32*)
  %tmp70 = call i32 @strlen(i8* bitcast (i64* @global_var_24f0c0 to i8*))
  %tmp71 = sext i32 %tmp70 to i64
  %tmp72 = load i64* @global_var_216638
  %tmp73 = add i64 %tmp72, %tmp71
  %tmp74 = icmp ugt i64 %tmp73, 1023
  br i1 %tmp74, label %block_5c84, label %block_5c67

block_5c67:                                       ; preds = %block_5c3c
  %tmp75 = load i64* @global_var_216630
  %tmp76 = inttoptr i64 %tmp75 to i8*
  %tmp77 = call i8* @strcat(i8* bitcast (i64* @global_var_24f0c0 to i8*), i8* %tmp76)
  br label %block_5c7d

block_5c7d:                                       ; preds = %block_5c67, %block_5bc7, %block_5bb4
  br label %block_5cd1

block_5c84:                                       ; preds = %block_5c3c
  %tmp78 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp79 = icmp eq i32 %tmp78, 0
  br i1 %tmp79, label %block_5c8f, label %block_5cb8

block_5c8f:                                       ; preds = %block_5c84
  %tmp80 = load i64* @global_var_25f4c8
  %tmp81 = load i64* @global_var_216580
  %tmp82 = inttoptr i64 %tmp81 to %_IO_FILE*
  %tmp83 = inttoptr i64 %tmp80 to i8*
  %tmp84 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp82, i8* getelementptr inbounds ([28 x i8]* @global_var_11711, i32 0, i32 0), i8* %tmp83, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_5cb8

block_5cb8:                                       ; preds = %block_5c84, %block_5c8f
  %tmp85 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp86 = icmp eq i32 %tmp85, 0
  br i1 %tmp86, label %block_5cc2, label %block_5ccc

block_5cc2:                                       ; preds = %block_5cb8
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_5ccc

block_5ccc:                                       ; preds = %block_5cb8, %block_5cc2
  br label %block_5cd1

block_5cd1:                                       ; preds = %block_5ccc, %block_5c7d, %block_5c32, %block_5b70, %block_5b01
  %rax.0 = phi i64 [ 2, %block_5ccc ], [ 0, %block_5c7d ], [ 2, %block_5c32 ], [ 2, %block_5b70 ], [ 0, %block_5b01 ]
  ret i64 %rax.0
}

define i64 @discard_input_bytes(i64 %arg1, i32 %arg2) {
block_5cd3:
  %stack_var_-17 = alloca i8
  %tmp20 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp21 = icmp eq i64 %arg1, 0
  br i1 %tmp21, label %block_5d69, label %block_5cf3.lr.ph

block_5cf3.lr.ph:                                 ; preds = %block_5cd3
  %tmp22 = and i32 %arg2, 2
  %tmp23 = icmp eq i32 %tmp22, 0
  br label %block_5cf3

block_5cf3:                                       ; preds = %block_5d62.backedge.thread, %block_5d62.backedge, %block_5cf3.lr.ph
  %stack_var_-32.01 = phi i64 [ %arg1, %block_5cf3.lr.ph ], [ %tmp37, %block_5d62.backedge ], [ -1, %block_5d62.backedge.thread ]
  %tmp24 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp25 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp26 = icmp ult i32 %tmp24, %tmp25
  br i1 %tmp26, label %block_5d03, label %block_5d21

block_5d03:                                       ; preds = %block_5cf3
  %tmp27 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp28 = zext i32 %tmp27 to i64
  %tmp29 = add i64 %tmp28, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp30 = inttoptr i64 %tmp29 to i8*
  %tmp31 = load i8* %tmp30
  %tmp32 = zext i8 %tmp31 to i64
  br label %block_5d2b

block_5d21:                                       ; preds = %block_5cf3
  %tmp33 = call i64 @fill_inbuf(i32 0)
  br label %block_5d2b

block_5d2b:                                       ; preds = %block_5d21, %block_5d03
  %rax.0 = phi i64 [ %tmp33, %block_5d21 ], [ %tmp32, %block_5d03 ]
  %tmp34 = trunc i64 %rax.0 to i8
  store i8 %tmp34, i8* %stack_var_-17
  br i1 %tmp23, label %block_5d49, label %block_5d38

block_5d38:                                       ; preds = %block_5d2b
  %tmp35 = call i64 @updcrc(i8* %stack_var_-17, i32 1)
  br label %block_5d49

block_5d49:                                       ; preds = %block_5d38, %block_5d2b
  %tmp36 = icmp eq i64 %stack_var_-32.01, -1
  br i1 %tmp36, label %block_5d57, label %block_5d62.backedge

block_5d62.backedge:                              ; preds = %block_5d49
  %tmp37 = add i64 %stack_var_-32.01, -1
  %tmp38 = icmp eq i64 %tmp37, 0
  br i1 %tmp38, label %block_5d69, label %block_5cf3

block_5d57:                                       ; preds = %block_5d49
  %tmp39 = load i8* %stack_var_-17
  %tmp40 = icmp eq i8 %tmp39, 0
  br i1 %tmp40, label %block_5d5f, label %block_5d62.backedge.thread

block_5d62.backedge.thread:                       ; preds = %block_5d57
  br label %block_5cf3

block_5d5f:                                       ; preds = %block_5d57
  br label %block_5d69

block_5d69:                                       ; preds = %block_5d62.backedge, %block_5cd3, %block_5d5f
  %tmp41 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp42 = icmp eq i64 %tmp20, %tmp41
  br i1 %tmp42, label %block_5d7e, label %block_5d79

block_5d79:                                       ; preds = %block_5d69
  call void @__stack_chk_fail()
  unreachable

block_5d7e:                                       ; preds = %block_5d69
  ret i64 0
}

define i64 @get_method(i32 %arg1) {
block_5d80:
  %stack_var_-28 = alloca i32
  %stack_var_-26 = alloca i8
  %tmp69 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp70 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp71 = icmp eq i32 %tmp70, 0
  br i1 %tmp71, label %block_5e43, label %block_5da8

block_5da8:                                       ; preds = %block_5d80
  %tmp72 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp73 = icmp eq i32 %tmp72, 0
  br i1 %tmp73, label %block_5e43, label %block_5db6

block_5db6:                                       ; preds = %block_5da8
  %tmp74 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp75 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp76 = icmp ult i32 %tmp74, %tmp75
  br i1 %tmp76, label %block_5dc6, label %block_5de7

block_5dc6:                                       ; preds = %block_5db6
  %tmp77 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp78 = zext i32 %tmp77 to i64
  %tmp79 = add i64 %tmp78, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp80 = inttoptr i64 %tmp79 to i8*
  %tmp81 = load i8* %tmp80
  %tmp82 = zext i8 %tmp81 to i64
  br label %block_5df1

block_5de7:                                       ; preds = %block_5db6
  %tmp83 = call i64 @fill_inbuf(i32 1)
  br label %block_5df1

block_5df1:                                       ; preds = %block_5de7, %block_5dc6
  %rax.0 = phi i64 [ %tmp83, %block_5de7 ], [ %tmp82, %block_5dc6 ]
  %tmp84 = trunc i64 %rax.0 to i32
  %tmp85 = trunc i64 %rax.0 to i8
  store i8 %tmp85, i8* %stack_var_-26
  %tmp86 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp87 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp88 = icmp ult i32 %tmp86, %tmp87
  br i1 %tmp88, label %block_5e0a, label %block_5e2b

block_5e0a:                                       ; preds = %block_5df1
  %tmp89 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp90 = zext i32 %tmp89 to i64
  %tmp91 = add i64 %tmp90, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp92 = inttoptr i64 %tmp91 to i8*
  %tmp93 = load i8* %tmp92
  %tmp94 = zext i8 %tmp93 to i64
  br label %block_5e35

block_5e2b:                                       ; preds = %block_5df1
  %tmp95 = call i64 @fill_inbuf(i32 1)
  br label %block_5e35

block_5e35:                                       ; preds = %block_5e2b, %block_5e0a
  %rax.1 = phi i64 [ %tmp95, %block_5e2b ], [ %tmp94, %block_5e0a ]
  %tmp96 = trunc i64 %rax.1 to i32
  %phitmp = add i32 %tmp84, 1
  br label %block_5f15

block_5e43:                                       ; preds = %block_5da8, %block_5d80
  %tmp97 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp98 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp99 = icmp ult i32 %tmp97, %tmp98
  br i1 %tmp99, label %block_5e53, label %block_5e71

block_5e53:                                       ; preds = %block_5e43
  %tmp100 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp101 = zext i32 %tmp100 to i64
  %tmp102 = add i64 %tmp101, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp103 = inttoptr i64 %tmp102 to i8*
  %tmp104 = load i8* %tmp103
  %tmp105 = zext i8 %tmp104 to i64
  br label %block_5e7b

block_5e71:                                       ; preds = %block_5e43
  %tmp106 = call i64 @fill_inbuf(i32 0)
  br label %block_5e7b

block_5e7b:                                       ; preds = %block_5e71, %block_5e53
  %rax.2 = phi i64 [ %tmp106, %block_5e71 ], [ %tmp105, %block_5e53 ]
  %tmp107 = trunc i64 %rax.2 to i8
  store i8 %tmp107, i8* %stack_var_-26
  %tmp108 = icmp eq i8 %tmp107, 0
  br i1 %tmp108, label %block_5ed1, label %block_5e8d

block_5e8d:                                       ; preds = %block_5e7b
  %tmp109 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp110 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp111 = icmp ult i32 %tmp109, %tmp110
  br i1 %tmp111, label %block_5e9d, label %block_5ebb

block_5e9d:                                       ; preds = %block_5e8d
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  br label %block_5ec5

block_5ebb:                                       ; preds = %block_5e8d
  %tmp112 = call i64 @fill_inbuf(i32 0)
  br label %block_5ec5

block_5ec5:                                       ; preds = %block_5ebb, %block_5e9d
  br label %block_5f15

block_5ed1:                                       ; preds = %block_5e7b
  %tmp113 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp114 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp115 = icmp ult i32 %tmp113, %tmp114
  br i1 %tmp115, label %block_5ee1, label %block_5f02

block_5ee1:                                       ; preds = %block_5ed1
  %tmp116 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp117 = zext i32 %tmp116 to i64
  %tmp118 = add i64 %tmp117, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp119 = inttoptr i64 %tmp118 to i8*
  %tmp120 = load i8* %tmp119
  %tmp121 = zext i8 %tmp120 to i64
  br label %block_5f0c

block_5f02:                                       ; preds = %block_5ed1
  %tmp122 = call i64 @fill_inbuf(i32 1)
  br label %block_5f0c

block_5f0c:                                       ; preds = %block_5f02, %block_5ee1
  %rax.4 = phi i64 [ %tmp122, %block_5f02 ], [ %tmp121, %block_5ee1 ]
  %tmp123 = trunc i64 %rax.4 to i32
  br label %block_5f15

block_5f15:                                       ; preds = %block_5f0c, %block_5ec5, %block_5e35
  %stack_var_-80.0 = phi i32 [ 1, %block_5f0c ], [ 1, %block_5ec5 ], [ %phitmp, %block_5e35 ]
  %stack_var_-76.0 = phi i32 [ %tmp123, %block_5f0c ], [ 0, %block_5ec5 ], [ %tmp96, %block_5e35 ]
  store i32 -1, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  store i32 ptrtoint (i64* @global_var_216621 to i32), i32* bitcast (i64* @global_var_216620 to i32*)
  store i64 0, i64* @global_var_267540
  store i32 0, i32* bitcast (i64* @global_var_21661c to i32*)
  %tmp124 = bitcast i8* %stack_var_-26 to i64*
  %tmp125 = call i32 @memcmp(i64* %tmp124, i64* @global_var_1178b, i32 2)
  %tmp126 = icmp eq i32 %tmp125, 0
  br i1 %tmp126, label %block_5f7f, label %block_5f5f

block_5f5f:                                       ; preds = %block_5f15
  %tmp127 = call i32 @memcmp(i64* %tmp124, i64* @global_var_1178e, i32 2)
  %tmp128 = icmp eq i32 %tmp127, 0
  br i1 %tmp128, label %block_5f7f, label %block_672a

block_5f7f:                                       ; preds = %block_5f5f, %block_5f15
  %tmp129 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp130 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp131 = icmp ult i32 %tmp129, %tmp130
  br i1 %tmp131, label %block_5f8f, label %block_5fb0

block_5f8f:                                       ; preds = %block_5f7f
  %tmp132 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp133 = zext i32 %tmp132 to i64
  %tmp134 = add i64 %tmp133, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp135 = inttoptr i64 %tmp134 to i8*
  %tmp136 = load i8* %tmp135
  %tmp137 = zext i8 %tmp136 to i64
  br label %block_5fba

block_5fb0:                                       ; preds = %block_5f7f
  %tmp138 = call i64 @fill_inbuf(i32 0)
  br label %block_5fba

block_5fba:                                       ; preds = %block_5fb0, %block_5f8f
  %rax.5 = phi i64 [ %tmp138, %block_5fb0 ], [ %tmp137, %block_5f8f ]
  %tmp139 = trunc i64 %rax.5 to i32
  store i32 %tmp139, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp140 = icmp eq i32 %tmp139, 8
  br i1 %tmp140, label %block_6011, label %block_5fcb

block_5fcb:                                       ; preds = %block_5fba
  %tmp141 = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp142 = load i64* @global_var_25f4c8
  %tmp143 = load i64* @global_var_216580
  %tmp144 = zext i32 %tmp141 to i64
  %tmp145 = inttoptr i64 %tmp143 to %_IO_FILE*
  %tmp146 = inttoptr i64 %tmp142 to i8*
  %tmp147 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp145, i8* getelementptr inbounds ([44 x i8]* @global_var_11798, i32 0, i32 0), i8* %tmp146, i8* bitcast (i64* @global_var_21a460 to i8*), i64 %tmp144)
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_6a4d

block_6011:                                       ; preds = %block_5fba
  store i64 54102, i64* @global_var_2160d0
  %tmp148 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp149 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp150 = icmp ult i32 %tmp148, %tmp149
  br i1 %tmp150, label %block_602f, label %block_604d

block_602f:                                       ; preds = %block_6011
  %tmp151 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp152 = zext i32 %tmp151 to i64
  %tmp153 = add i64 %tmp152, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp154 = inttoptr i64 %tmp153 to i8*
  %tmp155 = load i8* %tmp154
  %tmp156 = zext i8 %tmp155 to i64
  br label %block_6057

block_604d:                                       ; preds = %block_6011
  %tmp157 = call i64 @fill_inbuf(i32 0)
  br label %block_6057

block_6057:                                       ; preds = %block_604d, %block_602f
  %rax.6 = phi i64 [ %tmp157, %block_604d ], [ %tmp156, %block_602f ]
  %tmp158 = and i64 %rax.6, 32
  %tmp159 = icmp eq i64 %tmp158, 0
  br i1 %tmp159, label %block_60a2, label %block_6065

block_6065:                                       ; preds = %block_6057
  %tmp160 = load i64* @global_var_25f4c8
  %tmp161 = load i64* @global_var_216580
  %tmp162 = inttoptr i64 %tmp161 to %_IO_FILE*
  %tmp163 = inttoptr i64 %tmp160 to i8*
  %tmp164 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp162, i8* getelementptr inbounds ([38 x i8]* @global_var_117c8, i32 0, i32 0), i8* %tmp163, i8* bitcast (i64* @global_var_21a460 to i8*))
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_6a4d

block_60a2:                                       ; preds = %block_6057
  %tmp165 = and i64 %rax.6, 192
  %tmp166 = icmp eq i64 %tmp165, 0
  br i1 %tmp166, label %block_60fe, label %block_60af

block_60af:                                       ; preds = %block_60a2
  %tmp167 = load i64* @global_var_25f4c8
  %tmp168 = load i64* @global_var_216580
  %tmp169 = trunc i64 %rax.6 to i32
  %tmp170 = and i32 %tmp169, 255
  %tmp171 = inttoptr i64 %tmp168 to %_IO_FILE*
  %tmp172 = inttoptr i64 %tmp167 to i8*
  %tmp173 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp171, i8* getelementptr inbounds ([40 x i8]* @global_var_117f0, i32 0, i32 0), i8* %tmp172, i8* bitcast (i64* @global_var_21a460 to i8*), i32 %tmp170)
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp174 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp175 = icmp sgt i32 %tmp174, 1
  br i1 %tmp175, label %block_60fe, label %block_60f4

block_60f4:                                       ; preds = %block_60af
  br label %block_6a4d

block_60fe:                                       ; preds = %block_60af, %block_60a2
  %tmp176 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp177 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp178 = icmp ult i32 %tmp176, %tmp177
  br i1 %tmp178, label %block_610e, label %block_612f

block_610e:                                       ; preds = %block_60fe
  %tmp179 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp180 = zext i32 %tmp179 to i64
  %tmp181 = add i64 %tmp180, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp182 = inttoptr i64 %tmp181 to i8*
  %tmp183 = load i8* %tmp182
  %tmp184 = zext i8 %tmp183 to i64
  br label %block_613b

block_612f:                                       ; preds = %block_60fe
  %tmp185 = call i64 @fill_inbuf(i32 0)
  %sext10 = shl i64 %tmp185, 32
  %tmp186 = ashr exact i64 %sext10, 32
  br label %block_613b

block_613b:                                       ; preds = %block_612f, %block_610e
  %rax.7 = phi i64 [ %tmp186, %block_612f ], [ %tmp184, %block_610e ]
  %tmp187 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp188 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp189 = icmp ult i32 %tmp187, %tmp188
  br i1 %tmp189, label %block_614f, label %block_6174

block_614f:                                       ; preds = %block_613b
  %tmp190 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp191 = zext i32 %tmp190 to i64
  %tmp192 = add i64 %tmp191, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp193 = inttoptr i64 %tmp192 to i8*
  %tmp194 = load i8* %tmp193
  %tmp195 = zext i8 %tmp194 to i64
  %tmp196 = shl nuw nsw i64 %tmp195, 8
  br label %block_6184

block_6174:                                       ; preds = %block_613b
  %tmp197 = call i64 @fill_inbuf(i32 0)
  %sext9 = shl i64 %tmp197, 32
  %tmp198 = ashr exact i64 %sext9, 24
  br label %block_6184

block_6184:                                       ; preds = %block_6174, %block_614f
  %rax.8 = phi i64 [ %tmp198, %block_6174 ], [ %tmp196, %block_614f ]
  %tmp199 = or i64 %rax.8, %rax.7
  %tmp200 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp201 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp202 = icmp ult i32 %tmp200, %tmp201
  br i1 %tmp202, label %block_6198, label %block_61bd

block_6198:                                       ; preds = %block_6184
  %tmp203 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp204 = zext i32 %tmp203 to i64
  %tmp205 = add i64 %tmp204, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp206 = inttoptr i64 %tmp205 to i8*
  %tmp207 = load i8* %tmp206
  %tmp208 = zext i8 %tmp207 to i64
  %tmp209 = shl nuw nsw i64 %tmp208, 16
  br label %block_61cd

block_61bd:                                       ; preds = %block_6184
  %tmp210 = call i64 @fill_inbuf(i32 0)
  %sext8 = shl i64 %tmp210, 32
  %tmp211 = ashr exact i64 %sext8, 16
  br label %block_61cd

block_61cd:                                       ; preds = %block_61bd, %block_6198
  %rax.9 = phi i64 [ %tmp211, %block_61bd ], [ %tmp209, %block_6198 ]
  %tmp212 = or i64 %tmp199, %rax.9
  %tmp213 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp214 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp215 = icmp ult i32 %tmp213, %tmp214
  br i1 %tmp215, label %block_61e1, label %block_6206

block_61e1:                                       ; preds = %block_61cd
  %tmp216 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp217 = zext i32 %tmp216 to i64
  %tmp218 = add i64 %tmp217, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp219 = inttoptr i64 %tmp218 to i8*
  %tmp220 = load i8* %tmp219
  %tmp221 = zext i8 %tmp220 to i64
  %tmp222 = shl nuw nsw i64 %tmp221, 24
  br label %block_6216

block_6206:                                       ; preds = %block_61cd
  %tmp223 = call i64 @fill_inbuf(i32 0)
  %sext7 = shl i64 %tmp223, 32
  %tmp224 = ashr exact i64 %sext7, 8
  br label %block_6216

block_6216:                                       ; preds = %block_6206, %block_61e1
  %rax.10 = phi i64 [ %tmp224, %block_6206 ], [ %tmp222, %block_61e1 ]
  %tmp225 = or i64 %tmp212, %rax.10
  %tmp226 = trunc i64 %tmp225 to i32
  %tmp227 = icmp eq i32 %tmp226, 0
  br i1 %tmp227, label %block_62be, label %block_6225

block_6225:                                       ; preds = %block_6216
  %tmp228 = load i32* bitcast (i64* @global_var_216094 to i32*)
  %tmp229 = icmp eq i32 %tmp228, 0
  br i1 %tmp229, label %block_6233, label %block_62be

block_6233:                                       ; preds = %block_6225
  %tmp230 = icmp slt i32 %tmp226, 0
  br i1 %tmp230, label %block_6254, label %block_623c

block_623c:                                       ; preds = %block_6233
  %tmp231 = sext i32 %tmp226 to i64
  store i64 %tmp231, i64* @global_var_25f4d0
  store i64 0, i64* @global_var_25f4d8
  br label %block_62be

block_6254:                                       ; preds = %block_6233
  %tmp232 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp233 = icmp eq i32 %tmp232, 0
  br i1 %tmp233, label %block_625e, label %block_628e

block_625e:                                       ; preds = %block_6254
  %tmp234 = load i64* @global_var_25f4c8
  %tmp235 = load i64* @global_var_216580
  %tmp236 = inttoptr i64 %tmp235 to %_IO_FILE*
  %tmp237 = inttoptr i64 %tmp234 to i8*
  %tmp238 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp236, i8* getelementptr inbounds ([50 x i8]* @global_var_11818, i32 0, i32 0), i8* %tmp237, i8* bitcast (i64* @global_var_21a460 to i8*), i32 %tmp226)
  br label %block_628e

block_628e:                                       ; preds = %block_6254, %block_625e
  %tmp239 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp240 = icmp eq i32 %tmp239, 0
  br i1 %tmp240, label %block_6298, label %block_62a2

block_6298:                                       ; preds = %block_628e
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_62a2

block_62a2:                                       ; preds = %block_628e, %block_6298
  store i64 9223372036854775807, i64* @global_var_25f4d0
  store i64 999999999, i64* @global_var_25f4d8
  br label %block_62be

block_62be:                                       ; preds = %block_6225, %block_62a2, %block_623c, %block_6216
  %tmp241 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp242 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp243 = icmp ult i32 %tmp241, %tmp242
  br i1 %tmp243, label %block_62ce, label %block_62ec

block_62ce:                                       ; preds = %block_62be
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  br label %block_62f6

block_62ec:                                       ; preds = %block_62be
  %tmp244 = call i64 @fill_inbuf(i32 0)
  br label %block_62f6

block_62f6:                                       ; preds = %block_62ec, %block_62ce
  %tmp245 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp246 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp247 = icmp ult i32 %tmp245, %tmp246
  br i1 %tmp247, label %block_6309, label %block_6327

block_6309:                                       ; preds = %block_62f6
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  br label %block_6331

block_6327:                                       ; preds = %block_62f6
  %tmp248 = call i64 @fill_inbuf(i32 0)
  br label %block_6331

block_6331:                                       ; preds = %block_6327, %block_6309
  %tmp249 = and i64 %rax.6, 2
  %tmp250 = icmp eq i64 %tmp249, 0
  br i1 %tmp250, label %block_6392, label %block_633f

block_633f:                                       ; preds = %block_6331
  %tmp251 = call i64 @updcrc(i8* null, i32 0)
  %tmp252 = call i64 @updcrc(i8* %stack_var_-26, i32 10)
  br label %block_6392

block_6392:                                       ; preds = %block_633f, %block_6331
  %tmp253 = and i64 %rax.6, 4
  %tmp254 = icmp eq i64 %tmp253, 0
  br i1 %tmp254, label %block_6494, label %block_63a1

block_63a1:                                       ; preds = %block_6392
  %tmp255 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp256 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp257 = icmp ult i32 %tmp255, %tmp256
  br i1 %tmp257, label %block_63b1, label %block_63cf

block_63b1:                                       ; preds = %block_63a1
  %tmp258 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp259 = zext i32 %tmp258 to i64
  %tmp260 = add i64 %tmp259, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp261 = inttoptr i64 %tmp260 to i8*
  %tmp262 = load i8* %tmp261
  %tmp263 = zext i8 %tmp262 to i64
  br label %block_63d9

block_63cf:                                       ; preds = %block_63a1
  %tmp264 = call i64 @fill_inbuf(i32 0)
  br label %block_63d9

block_63d9:                                       ; preds = %block_63cf, %block_63b1
  %rax.13 = phi i64 [ %tmp264, %block_63cf ], [ %tmp263, %block_63b1 ]
  %tmp265 = trunc i64 %rax.13 to i8
  %tmp266 = sext i8 %tmp265 to i32
  store i32 %tmp266, i32* %stack_var_-28
  %tmp267 = trunc i64 %rax.13 to i32
  %tmp268 = and i32 %tmp267, 255
  %tmp269 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp270 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp271 = icmp ult i32 %tmp269, %tmp270
  br i1 %tmp271, label %block_63f6, label %block_6414

block_63f6:                                       ; preds = %block_63d9
  %tmp272 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp273 = zext i32 %tmp272 to i64
  %tmp274 = add i64 %tmp273, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp275 = inttoptr i64 %tmp274 to i8*
  %tmp276 = load i8* %tmp275
  %tmp277 = zext i8 %tmp276 to i64
  br label %block_641e

block_6414:                                       ; preds = %block_63d9
  %tmp278 = call i64 @fill_inbuf(i32 0)
  br label %block_641e

block_641e:                                       ; preds = %block_6414, %block_63f6
  %rax.14 = phi i64 [ %tmp278, %block_6414 ], [ %tmp277, %block_63f6 ]
  %tmp279 = trunc i64 %rax.14 to i32
  %tmp280 = shl i32 %tmp279, 8
  %tmp281 = and i32 %tmp280, 65280
  %tmp282 = or i32 %tmp281, %tmp268
  %tmp283 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp284 = icmp eq i32 %tmp283, 0
  br i1 %tmp284, label %block_6467, label %block_6438

block_6438:                                       ; preds = %block_641e
  %tmp285 = load i64* @global_var_25f4c8
  %tmp286 = load i64* @global_var_216580
  %tmp287 = inttoptr i64 %tmp286 to %_IO_FILE*
  %tmp288 = inttoptr i64 %tmp285 to i8*
  %tmp289 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp287, i8* getelementptr inbounds ([41 x i8]* @global_var_11850, i32 0, i32 0), i8* %tmp288, i8* bitcast (i64* @global_var_21a460 to i8*), i32 %tmp282)
  br label %block_6467

block_6467:                                       ; preds = %block_6438, %block_641e
  br i1 %tmp250, label %block_6483, label %block_6472

block_6472:                                       ; preds = %block_6467
  %tmp290 = bitcast i32* %stack_var_-28 to i8*
  %tmp291 = call i64 @updcrc(i8* %tmp290, i32 2)
  br label %block_6483

block_6483:                                       ; preds = %block_6472, %block_6467
  %tmp292 = zext i32 %tmp282 to i64
  %tmp293 = trunc i64 %rax.6 to i32
  %tmp294 = and i32 %tmp293, 255
  %tmp295 = call i64 @discard_input_bytes(i64 %tmp292, i32 %tmp294)
  br label %block_6494

block_6494:                                       ; preds = %block_6483, %block_6392
  %tmp296 = and i64 %rax.6, 8
  %tmp297 = icmp eq i64 %tmp296, 0
  br i1 %tmp297, label %block_65e1, label %block_64a3

block_64a3:                                       ; preds = %block_6494
  %tmp298 = load i32* bitcast (i64* @global_var_216090 to i32*)
  %tmp299 = icmp eq i32 %tmp298, 0
  br i1 %tmp299, label %block_64ad, label %block_64cc

block_64ad:                                       ; preds = %block_64a3
  %tmp300 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp301 = icmp eq i32 %tmp300, 0
  br i1 %tmp301, label %block_64c1, label %block_64b7

block_64b7:                                       ; preds = %block_64ad
  %tmp302 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp303 = icmp eq i32 %tmp302, 0
  br i1 %tmp303, label %block_64cc, label %block_64c1

block_64c1:                                       ; preds = %block_64b7, %block_64ad
  %tmp304 = load i32* bitcast (i64* @global_var_216620 to i32*)
  %tmp305 = icmp slt i32 %tmp304, 2
  br i1 %tmp305, label %block_64e3, label %block_64cc

block_64cc:                                       ; preds = %block_64a3, %block_64c1, %block_64b7
  %tmp306 = trunc i64 %rax.6 to i32
  %tmp307 = and i32 %tmp306, 255
  %tmp308 = call i64 @discard_input_bytes(i64 -1, i32 %tmp307)
  br label %block_65e1

block_64e3:                                       ; preds = %block_64c1
  %tmp309 = call i64 @gzip_base_name(i64* @global_var_24f0c0)
  %tmp310 = inttoptr i64 %tmp309 to i8*
  %tmp311 = ptrtoint i8* %tmp310 to i64
  br label %block_64fb

block_64fb:                                       ; preds = %block_6550, %block_64e3
  %stack_var_-56.0 = phi i8* [ %tmp310, %block_64e3 ], [ %tmp326, %block_6550 ]
  %tmp312 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp313 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp314 = icmp ult i32 %tmp312, %tmp313
  br i1 %tmp314, label %block_650b, label %block_652b

block_650b:                                       ; preds = %block_64fb
  %tmp315 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp316 = zext i32 %tmp315 to i64
  %tmp317 = add i64 %tmp316, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp318 = inttoptr i64 %tmp317 to i8*
  %tmp319 = load i8* %tmp318
  %tmp320 = zext i8 %tmp319 to i64
  br label %block_6537

block_652b:                                       ; preds = %block_64fb
  %tmp321 = call i64 @fill_inbuf(i32 0)
  %tmp322 = and i64 %tmp321, 4294967295
  br label %block_6537

block_6537:                                       ; preds = %block_652b, %block_650b
  %rdx.0 = phi i64 [ %tmp322, %block_652b ], [ %tmp320, %block_650b ]
  %tmp323 = trunc i64 %rdx.0 to i8
  store i8 %tmp323, i8* %stack_var_-56.0
  %tmp324 = ptrtoint i8* %stack_var_-56.0 to i64
  %tmp325 = add i64 %tmp324, 1
  %tmp326 = inttoptr i64 %tmp325 to i8*
  %tmp327 = load i8* %stack_var_-56.0
  %tmp328 = icmp eq i8 %tmp327, 0
  br i1 %tmp328, label %block_6569, label %block_6550

block_6550:                                       ; preds = %block_6537
  %tmp329 = ptrtoint i8* %tmp326 to i64
  %tmp330 = icmp ult i64 %tmp329, ptrtoint (i64* @global_var_24f4c0 to i64)
  br i1 %tmp330, label %block_64fb, label %block_655d

block_655d:                                       ; preds = %block_6550
  %tmp331 = call i64 @gzip_error(i8* getelementptr inbounds ([39 x i8]* @global_var_11880, i32 0, i32 0))
  unreachable

block_6569:                                       ; preds = %block_6537
  br i1 %tmp250, label %block_6593, label %block_6575

block_6575:                                       ; preds = %block_6569
  %tmp332 = ptrtoint i8* %tmp326 to i64
  %tmp333 = sub i64 %tmp332, %tmp311
  %tmp334 = trunc i64 %tmp333 to i32
  %tmp335 = call i64 @updcrc(i8* %tmp310, i32 %tmp334)
  br label %block_6593

block_6593:                                       ; preds = %block_6575, %block_6569
  %tmp336 = bitcast i8* %tmp310 to i64*
  %tmp337 = call i64 @gzip_base_name(i64* %tmp336)
  %tmp338 = inttoptr i64 %tmp337 to i8*
  %tmp339 = call i32 @strlen(i8* %tmp338)
  %tmp340 = zext i32 %tmp339 to i64
  %tmp341 = add nuw nsw i64 %tmp340, 1
  %tmp342 = bitcast i8* %tmp338 to i64*
  %tmp343 = trunc i64 %tmp341 to i32
  %tmp344 = call i64* @memmove(i64* %tmp336, i64* %tmp342, i32 %tmp343)
  %tmp345 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp346 = icmp eq i32 %tmp345, 0
  br i1 %tmp346, label %block_65d0, label %block_65e1

block_65d0:                                       ; preds = %block_6593
  %tmp347 = icmp eq i64 %tmp311, 0
  br i1 %tmp347, label %block_65e1, label %block_65d7

block_65d7:                                       ; preds = %block_65d0
  store i32 0, i32* bitcast (i64* @global_var_216610 to i32*)
  br label %block_65e1

block_65e1:                                       ; preds = %block_6593, %block_65d7, %block_65d0, %block_64cc, %block_6494
  %tmp348 = and i64 %rax.6, 16
  %tmp349 = icmp eq i64 %tmp348, 0
  br i1 %tmp349, label %block_65fe, label %block_65ec

block_65ec:                                       ; preds = %block_65e1
  %tmp350 = trunc i64 %rax.6 to i32
  %tmp351 = and i32 %tmp350, 255
  %tmp352 = call i64 @discard_input_bytes(i64 -1, i32 %tmp351)
  br label %block_65fe

block_65fe:                                       ; preds = %block_65ec, %block_65e1
  br i1 %tmp250, label %block_6704, label %block_660d

block_660d:                                       ; preds = %block_65fe
  %tmp353 = call i64 @updcrc(i8* %stack_var_-26, i32 0)
  %tmp354 = trunc i64 %tmp353 to i32
  %tmp355 = and i32 %tmp354, 65535
  %tmp356 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp357 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp358 = icmp ult i32 %tmp356, %tmp357
  br i1 %tmp358, label %block_6636, label %block_6657

block_6636:                                       ; preds = %block_660d
  %tmp359 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp360 = zext i32 %tmp359 to i64
  %tmp361 = add i64 %tmp360, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp362 = inttoptr i64 %tmp361 to i8*
  %tmp363 = load i8* %tmp362
  %tmp364 = zext i8 %tmp363 to i64
  br label %block_6661

block_6657:                                       ; preds = %block_660d
  %tmp365 = call i64 @fill_inbuf(i32 0)
  br label %block_6661

block_6661:                                       ; preds = %block_6657, %block_6636
  %rax.15 = phi i64 [ %tmp365, %block_6657 ], [ %tmp364, %block_6636 ]
  %tmp366 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp367 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp368 = icmp ult i32 %tmp366, %tmp367
  br i1 %tmp368, label %block_6674, label %block_6698

block_6674:                                       ; preds = %block_6661
  %tmp369 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp370 = zext i32 %tmp369 to i64
  %tmp371 = add i64 %tmp370, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp372 = inttoptr i64 %tmp371 to i8*
  %tmp373 = load i8* %tmp372
  %tmp374 = zext i8 %tmp373 to i32
  %tmp375 = shl nuw nsw i32 %tmp374, 8
  %tmp376 = zext i32 %tmp375 to i64
  br label %block_66a5

block_6698:                                       ; preds = %block_6661
  %tmp377 = call i64 @fill_inbuf(i32 0)
  %tmp378 = trunc i64 %tmp377 to i32
  %tmp379 = shl i32 %tmp378, 8
  %tmp380 = zext i32 %tmp379 to i64
  br label %block_66a5

block_66a5:                                       ; preds = %block_6698, %block_6674
  %rax.16 = phi i64 [ %tmp380, %block_6698 ], [ %tmp376, %block_6674 ]
  %tmp381 = or i64 %rax.16, %rax.15
  %tmp382 = trunc i64 %tmp381 to i32
  %tmp383 = icmp eq i32 %tmp382, %tmp355
  br i1 %tmp383, label %block_6704, label %block_66b0

block_66b0:                                       ; preds = %block_66a5
  %tmp384 = load i64* @global_var_25f4c8
  %tmp385 = load i64* @global_var_216580
  %tmp386 = inttoptr i64 %tmp385 to %_IO_FILE*
  %tmp387 = inttoptr i64 %tmp384 to i8*
  %tmp388 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp386, i8* getelementptr inbounds ([60 x i8]* @global_var_118a8, i32 0, i32 0), i8* %tmp387, i8* bitcast (i64* @global_var_21a460 to i8*), i32 %tmp382, i32 %tmp355)
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp389 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp390 = icmp sgt i32 %tmp389, 1
  br i1 %tmp390, label %block_6704, label %block_66fa

block_66fa:                                       ; preds = %block_66b0
  br label %block_6a4d

block_6704:                                       ; preds = %block_66b0, %block_66a5, %block_65fe
  %tmp391 = load i32* bitcast (i64* @global_var_216620 to i32*)
  %tmp392 = icmp eq i32 %tmp391, 1
  br i1 %tmp392, label %block_6713, label %block_68ee

block_6713:                                       ; preds = %block_6704
  store i64 zext (i32 ptrtoint (i64* @global_var_24a88c to i32) to i64), i64* @global_var_267540
  br label %block_68ee

block_672a:                                       ; preds = %block_5f5f
  %tmp393 = call i32 @memcmp(i64* %tmp124, i64* @global_var_118e4, i32 2)
  %tmp394 = icmp eq i32 %tmp393, 0
  br i1 %tmp394, label %block_6746, label %block_67ac

block_6746:                                       ; preds = %block_672a
  %tmp395 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp396 = icmp eq i32 %tmp395, 2
  br i1 %tmp396, label %block_6751, label %block_67ac

block_6751:                                       ; preds = %block_6746
  %tmp397 = call i32 @memcmp(i64* @global_var_25f500, i64* @global_var_118e4, i32 4)
  %tmp398 = icmp eq i32 %tmp397, 0
  br i1 %tmp398, label %block_676d, label %block_67ac

block_676d:                                       ; preds = %block_6751
  store i32 0, i32* bitcast (i64* @global_var_24a884 to i32*)
  store i64 54102, i64* @global_var_2160d0
  %tmp399 = call i64 @check_zipfile(i32 %arg1)
  %tmp400 = trunc i64 %tmp399 to i32
  %tmp401 = icmp eq i32 %tmp400, 0
  br i1 %tmp401, label %block_679d, label %block_6793

block_6793:                                       ; preds = %block_676d
  br label %block_6a4d

block_679d:                                       ; preds = %block_676d
  store i32 1, i32* bitcast (i64* @global_var_21661c to i32*)
  br label %block_68ee

block_67ac:                                       ; preds = %block_6751, %block_6746, %block_672a
  %tmp402 = call i32 @memcmp(i64* %tmp124, i64* @global_var_118e9, i32 2)
  %tmp403 = icmp eq i32 %tmp402, 0
  br i1 %tmp403, label %block_67c8, label %block_67e5

block_67c8:                                       ; preds = %block_67ac
  store i64 52977, i64* @global_var_2160d0
  store i32 2, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  br label %block_68ee.thread

block_67e5:                                       ; preds = %block_67ac
  %tmp404 = call i32 @memcmp(i64* %tmp124, i64* @global_var_118ec, i32 2)
  %tmp405 = icmp eq i32 %tmp404, 0
  br i1 %tmp405, label %block_6801, label %block_6828

block_6801:                                       ; preds = %block_67e5
  store i64 49898, i64* @global_var_2160d0
  store i32 1, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  store i32 1, i32* bitcast (i64* @global_var_21661c to i32*)
  br label %block_68ee.thread

block_6828:                                       ; preds = %block_67e5
  %tmp406 = call i32 @memcmp(i64* %tmp124, i64* @global_var_118ef, i32 2)
  %tmp407 = icmp eq i32 %tmp406, 0
  br i1 %tmp407, label %block_6844, label %block_686b

block_6844:                                       ; preds = %block_6828
  store i64 49786, i64* @global_var_2160d0
  store i32 3, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  store i32 1, i32* bitcast (i64* @global_var_21661c to i32*)
  br label %block_68ee.thread

block_686b:                                       ; preds = %block_6828
  %tmp408 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp409 = icmp eq i32 %tmp408, 0
  br i1 %tmp409, label %block_68ee, label %block_6875

block_6875:                                       ; preds = %block_686b
  %tmp410 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp411 = icmp eq i32 %tmp410, 0
  br i1 %tmp411, label %block_68ee, label %block_687f

block_687f:                                       ; preds = %block_6875
  %tmp412 = load i32* bitcast (i64* @global_var_216610 to i32*)
  %tmp413 = icmp eq i32 %tmp412, 0
  br i1 %tmp413, label %block_6889, label %block_68ee

block_6889:                                       ; preds = %block_687f
  store i32 0, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  store i64 55791, i64* @global_var_2160d0
  %tmp414 = icmp eq i32 %stack_var_-76.0, -1
  br i1 %tmp414, label %block_68b6, label %block_68a7

block_68a7:                                       ; preds = %block_6889
  %tmp415 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp416 = add i32 %tmp415, -1
  store i32 %tmp416, i32* bitcast (i64* @global_var_24a884 to i32*)
  br label %block_68b6

block_68b6:                                       ; preds = %block_68a7, %block_6889
  store i32 1, i32* bitcast (i64* @global_var_21661c to i32*)
  %tmp417 = icmp eq i32 %stack_var_-80.0, 0
  br i1 %tmp417, label %block_68ee, label %block_68c6

block_68c6:                                       ; preds = %block_68b6
  %tmp418 = call i64 @write_buf(i32 1, i8* %stack_var_-26, i64 1)
  %tmp419 = load i64* @global_var_25f4c0
  %tmp420 = add i64 %tmp419, 1
  store i64 %tmp420, i64* @global_var_25f4c0
  br label %block_68ee

block_68ee.thread:                                ; preds = %block_6844, %block_6801, %block_67c8
  br label %block_68f8

block_68ee:                                       ; preds = %block_687f, %block_6704, %block_68c6, %block_68b6, %block_6875, %block_686b, %block_679d, %block_6713
  %.pr = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp421 = icmp slt i32 %.pr, 0
  br i1 %tmp421, label %block_6903, label %block_68f8

block_68f8:                                       ; preds = %block_68ee.thread, %block_68ee
  %tmp422 = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp423 = zext i32 %tmp422 to i64
  br label %block_6a4d

block_6903:                                       ; preds = %block_68ee
  %tmp424 = load i32* bitcast (i64* @global_var_216620 to i32*)
  %tmp425 = icmp eq i32 %tmp424, 1
  br i1 %tmp425, label %block_690e, label %block_694b

block_690e:                                       ; preds = %block_6903
  %tmp426 = load i64* @global_var_25f4c8
  %tmp427 = load i64* @global_var_216580
  %tmp428 = inttoptr i64 %tmp427 to %_IO_FILE*
  %tmp429 = inttoptr i64 %tmp426 to i8*
  %tmp430 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp428, i8* getelementptr inbounds ([29 x i8]* @global_var_118f2, i32 0, i32 0), i8* %tmp429, i8* bitcast (i64* @global_var_21a460 to i8*))
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_6a4d

block_694b:                                       ; preds = %block_6903
  %tmp431 = load i8* %stack_var_-26
  %tmp432 = icmp eq i8 %tmp431, 0
  br i1 %tmp432, label %block_6957, label %block_6a01

block_6957:                                       ; preds = %block_694b
  %tmp433 = icmp eq i32 %stack_var_-76.0, 0
  br i1 %tmp433, label %block_695f, label %block_69a3

block_695f:                                       ; preds = %block_6957, %block_699a
  %tmp434 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp435 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp436 = icmp ult i32 %tmp434, %tmp435
  br i1 %tmp436, label %block_696f, label %block_6990

block_696f:                                       ; preds = %block_695f
  %tmp437 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp438 = zext i32 %tmp437 to i64
  %tmp439 = add i64 %tmp438, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp440 = inttoptr i64 %tmp439 to i8*
  %tmp441 = load i8* %tmp440
  %tmp442 = zext i8 %tmp441 to i64
  br label %block_699a

block_6990:                                       ; preds = %block_695f
  %tmp443 = call i64 @fill_inbuf(i32 1)
  br label %block_699a

block_699a:                                       ; preds = %block_6990, %block_696f
  %rax.17 = phi i64 [ %tmp443, %block_6990 ], [ %tmp442, %block_696f ]
  %tmp444 = trunc i64 %rax.17 to i32
  %tmp445 = icmp eq i32 %tmp444, 0
  br i1 %tmp445, label %block_695f, label %block_69a3

block_69a3:                                       ; preds = %block_699a, %block_6957
  %stack_var_-72.0.lcssa = phi i32 [ %stack_var_-76.0, %block_6957 ], [ %tmp444, %block_699a ]
  %tmp446 = icmp eq i32 %stack_var_-72.0.lcssa, -1
  br i1 %tmp446, label %block_69a9, label %block_6a01

block_69a9:                                       ; preds = %block_69a3
  %tmp447 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp448 = icmp eq i32 %tmp447, 0
  br i1 %tmp448, label %block_69fa, label %block_69b3

block_69b3:                                       ; preds = %block_69a9
  %tmp449 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp450 = icmp eq i32 %tmp449, 0
  br i1 %tmp450, label %block_69bd, label %block_69e6

block_69bd:                                       ; preds = %block_69b3
  %tmp451 = load i64* @global_var_25f4c8
  %tmp452 = load i64* @global_var_216580
  %tmp453 = inttoptr i64 %tmp452 to %_IO_FILE*
  %tmp454 = inttoptr i64 %tmp451 to i8*
  %tmp455 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp453, i8* getelementptr inbounds ([56 x i8]* @global_var_11910, i32 0, i32 0), i8* %tmp454, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_69e6

block_69e6:                                       ; preds = %block_69b3, %block_69bd
  %tmp456 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp457 = icmp eq i32 %tmp456, 0
  br i1 %tmp457, label %block_69f0, label %block_69fa

block_69f0:                                       ; preds = %block_69e6
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_69fa

block_69fa:                                       ; preds = %block_69e6, %block_69f0, %block_69a9
  br label %block_6a4d

block_6a01:                                       ; preds = %block_69a3, %block_694b
  %tmp458 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp459 = icmp eq i32 %tmp458, 0
  br i1 %tmp459, label %block_6a0b, label %block_6a34

block_6a0b:                                       ; preds = %block_6a01
  %tmp460 = load i64* @global_var_25f4c8
  %tmp461 = load i64* @global_var_216580
  %tmp462 = inttoptr i64 %tmp461 to %_IO_FILE*
  %tmp463 = inttoptr i64 %tmp460 to i8*
  %tmp464 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp462, i8* getelementptr inbounds ([53 x i8]* @global_var_11948, i32 0, i32 0), i8* %tmp463, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_6a34

block_6a34:                                       ; preds = %block_6a01, %block_6a0b
  %tmp465 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp466 = icmp eq i32 %tmp465, 0
  br i1 %tmp466, label %block_6a3e, label %block_6a48

block_6a3e:                                       ; preds = %block_6a34
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_6a48

block_6a48:                                       ; preds = %block_6a34, %block_6a3e
  br label %block_6a4d

block_6a4d:                                       ; preds = %block_6a48, %block_69fa, %block_690e, %block_68f8, %block_6793, %block_66fa, %block_60f4, %block_6065, %block_5fcb
  %rax.18 = phi i64 [ 4294967294, %block_6a48 ], [ 4294967293, %block_69fa ], [ 4294967295, %block_690e ], [ %tmp423, %block_68f8 ], [ 4294967295, %block_66fa ], [ 4294967295, %block_60f4 ], [ 4294967295, %block_6065 ], [ 4294967295, %block_5fcb ], [ 4294967295, %block_6793 ]
  %tmp467 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp468 = icmp eq i64 %tmp69, %tmp467
  br i1 %tmp468, label %block_6a61, label %block_6a5c

block_6a5c:                                       ; preds = %block_6a4d
  call void @__stack_chk_fail()
  unreachable

block_6a61:                                       ; preds = %block_6a4d
  ret i64 %rax.18
}

define i64 @do_list(i32 %arg1, i64 %arg2) {
block_6a63:
  %0 = alloca i32
  %1 = load i32* %0
  %2 = load i32* %0
  %3 = load i32* %0
  %4 = load i32* %0
  %5 = load i32* %0
  %6 = load i32* %0
  %7 = load i32* %0
  %stack_var_-24 = alloca i32
  %tmp55 = trunc i64 %arg2 to i32
  %tmp56 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp57 = load i32* bitcast (i64* @global_var_2160c8 to i32*)
  %tmp58 = icmp eq i32 %tmp57, 0
  br i1 %tmp58, label %block_6b0b, label %block_6a91

block_6a91:                                       ; preds = %block_6a63
  %tmp59 = icmp slt i32 %tmp55, 0
  br i1 %tmp59, label %block_6b0b.thread, label %block_6a97

block_6b0b.thread:                                ; preds = %block_6a91
  br label %block_6b15

block_6a97:                                       ; preds = %block_6a91
  store i32 0, i32* bitcast (i64* @global_var_2160c8 to i32*)
  %tmp60 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp61 = icmp eq i32 %tmp60, 0
  br i1 %tmp61, label %block_6abc, label %block_6aab

block_6aab:                                       ; preds = %block_6a97
  %tmp62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @global_var_1197d, i32 0, i32 0))
  br label %block_6abc

block_6abc:                                       ; preds = %block_6aab, %block_6a97
  %tmp63 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp64 = icmp eq i32 %tmp63, 0
  br i1 %tmp64, label %block_6aca, label %block_6bf8

block_6aca:                                       ; preds = %block_6abc
  %tmp66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @global_var_119a8, i32 0, i32 0), i64 19, i64 19, i8* getelementptr inbounds ([11 x i8]* @global_var_1199a, i32 0, i32 0), i64 19, i64 19, i8* getelementptr inbounds ([13 x i8]* @global_var_119ce, i32 0, i32 0))
  br label %block_6bf8

block_6b0b:                                       ; preds = %block_6a63
  %tmp67 = icmp slt i32 %tmp55, 0
  br i1 %tmp67, label %block_6b15, label %block_6bf8

block_6b15:                                       ; preds = %block_6b0b.thread, %block_6b0b
  %tmp68 = load i64* @global_var_216ae8
  %tmp69 = icmp slt i64 %tmp68, 1
  br i1 %tmp69, label %block_6f19, label %block_6b25

block_6b25:                                       ; preds = %block_6b15
  %tmp70 = load i64* @global_var_216af0
  %tmp71 = icmp slt i64 %tmp70, 1
  br i1 %tmp71, label %block_6f19, label %block_6b35

block_6b35:                                       ; preds = %block_6b25
  %tmp72 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp73 = icmp eq i32 %tmp72, 0
  br i1 %tmp73, label %block_6b50.thread, label %block_6b50

block_6b50.thread:                                ; preds = %block_6b35
  br label %block_6b5a

block_6b50:                                       ; preds = %block_6b35
  %tmp74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @global_var_119db, i32 0, i32 0))
  %.pr = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp75 = icmp eq i32 %.pr, 0
  br i1 %tmp75, label %block_6b5a, label %block_6b64

block_6b5a:                                       ; preds = %block_6b50.thread, %block_6b50
  %tmp76 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp77 = icmp eq i32 %tmp76, 0
  br i1 %tmp77, label %block_6b64, label %block_6bb0

block_6b64:                                       ; preds = %block_6b5a, %block_6b50
  %tmp78 = load i64* @global_var_216ae8
  %tmp79 = load i64* @global_var_216560
  %tmp80 = inttoptr i64 %tmp79 to %_IO_FILE*
  %tmp81 = call i64 @fprint_off(%_IO_FILE* %tmp80, i64 %tmp78, i32 19)
  %tmp82 = call i32 @putchar(i32 32)
  %tmp83 = load i64* @global_var_216af0
  %tmp84 = load i64* @global_var_216560
  %tmp85 = inttoptr i64 %tmp84 to %_IO_FILE*
  %tmp86 = call i64 @fprint_off(%_IO_FILE* %tmp85, i64 %tmp83, i32 19)
  %tmp87 = call i32 @putchar(i32 32)
  br label %block_6bb0

block_6bb0:                                       ; preds = %block_6b5a, %block_6b64
  %tmp88 = load i64* @global_var_216560
  %tmp89 = load i64* @global_var_216af0
  %tmp90 = load i64* @global_var_216ae8
  %tmp91 = load i64* @global_var_267540
  %tmp92 = sub i64 %tmp89, %tmp90
  %tmp93 = add i64 %tmp92, %tmp91
  %tmp94 = inttoptr i64 %tmp88 to %_IO_FILE*
  %tmp95 = call i64 @display_ratio(i64 %tmp93, i64 %tmp89, %_IO_FILE* %tmp94)
  %tmp96 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @global_var_119f8, i32 0, i32 0))
  br label %block_6f1a

block_6bf8:                                       ; preds = %block_6b0b, %block_6abc, %block_6aca
  store i64 -1, i64* @global_var_25f4c0
  %tmp97 = load i64* @global_var_24a890
  store i64 %tmp97, i64* @global_var_21a860
  %tmp98 = icmp eq i32 %tmp55, 8
  br i1 %tmp98, label %block_6c23, label %block_6d01

block_6c23:                                       ; preds = %block_6bf8
  %tmp99 = load i32* bitcast (i64* @global_var_21661c to i32*)
  %tmp100 = icmp eq i32 %tmp99, 0
  br i1 %tmp100, label %block_6c31, label %block_6d01

block_6c31:                                       ; preds = %block_6c23
  %tmp101 = call i32 @lseek(i32 %arg1, i32 -8, i32 2)
  %tmp102 = sext i32 %tmp101 to i64
  store i64 %tmp102, i64* @global_var_21a860
  %tmp103 = icmp eq i32 %tmp101, -1
  br i1 %tmp103, label %block_6d01, label %block_6c5f

block_6c5f:                                       ; preds = %block_6c31
  %tmp104 = load i64* @global_var_21a860
  %tmp105 = add i64 %tmp104, 8
  store i64 %tmp105, i64* @global_var_21a860
  %tmp106 = bitcast i32* %stack_var_-24 to i64*
  %tmp107 = call i32 @read(i32 %arg1, i64* %tmp106, i32 8)
  %tmp108 = icmp eq i32 %tmp107, 8
  br i1 %tmp108, label %block_6c92, label %block_6c8d

block_6c8d:                                       ; preds = %block_6c5f
  %tmp109 = call i64 @read_error()
  unreachable

block_6c92:                                       ; preds = %block_6c5f
  %tmp110 = load i32* %stack_var_-24
  %tmp111 = shl i32 %7, 8
  %tmp112 = and i32 %tmp111, 65280
  %tmp113 = and i32 %tmp110, 255
  %tmp114 = or i32 %tmp113, %tmp112
  %tmp115 = zext i32 %tmp114 to i64
  %tmp116 = shl i32 %5, 8
  %tmp117 = and i32 %tmp116, 65280
  %tmp118 = and i32 %6, 255
  %tmp119 = or i32 %tmp118, %tmp117
  %tmp120 = zext i32 %tmp119 to i64
  %tmp121 = shl nuw nsw i64 %tmp120, 16
  %tmp122 = or i64 %tmp115, %tmp121
  %tmp123 = trunc i64 %tmp122 to i32
  %tmp124 = shl i32 %3, 8
  %tmp125 = and i32 %tmp124, 65280
  %tmp126 = and i32 %4, 255
  %tmp127 = or i32 %tmp126, %tmp125
  %tmp128 = zext i32 %tmp127 to i64
  %tmp129 = shl i32 %1, 8
  %tmp130 = and i32 %tmp129, 65280
  %tmp131 = and i32 %2, 255
  %tmp132 = or i32 %tmp131, %tmp130
  %tmp133 = zext i32 %tmp132 to i64
  %tmp134 = shl nuw nsw i64 %tmp133, 16
  %tmp135 = or i64 %tmp128, %tmp134
  store i64 %tmp135, i64* @global_var_25f4c0
  br label %block_6d01

block_6d01:                                       ; preds = %block_6c23, %block_6bf8, %block_6c92, %block_6c31
  %stack_var_-40.0 = phi i32 [ -1, %block_6bf8 ], [ -1, %block_6c23 ], [ -1, %block_6c31 ], [ %tmp123, %block_6c92 ]
  %tmp136 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp137 = icmp eq i32 %tmp136, 0
  br i1 %tmp137, label %block_6db2, label %block_6d0f

block_6d0f:                                       ; preds = %block_6d01
  %tmp138 = call %tm* @localtime(i32* bitcast (i64* @global_var_25f4d0 to i32*))
  %tmp139 = ptrtoint %tm* %tmp138 to i64
  %tmp140 = sext i32 %tmp55 to i64
  %tmp141 = shl nsw i64 %tmp140, 3
  %tmp142 = add i64 %tmp141, ptrtoint ([9 x i8*]* @global_var_215b00 to i64)
  %tmp143 = inttoptr i64 %tmp142 to i64*
  %tmp144 = load i64* %tmp143
  %tmp145 = inttoptr i64 %tmp144 to i8*
  %tmp146 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @global_var_11a02, i32 0, i32 0), i8* %tmp145, i32 %stack_var_-40.0)
  %tmp147 = icmp eq i64 %tmp139, 0
  br i1 %tmp147, label %block_6da1, label %block_6d56

block_6d56:                                       ; preds = %block_6d0f
  %tmp148 = add i64 %tmp139, 4
  %tmp149 = inttoptr i64 %tmp148 to i32*
  %tmp150 = load i32* %tmp149
  %tmp151 = add i64 %tmp139, 8
  %tmp152 = inttoptr i64 %tmp151 to i32*
  %tmp153 = load i32* %tmp152
  %tmp154 = add i64 %tmp139, 12
  %tmp155 = inttoptr i64 %tmp154 to i32*
  %tmp156 = load i32* %tmp155
  %tmp157 = add i64 %tmp139, 16
  %tmp158 = inttoptr i64 %tmp157 to i32*
  %tmp159 = load i32* %tmp158
  %tmp160 = sext i32 %tmp159 to i64
  %tmp161 = shl nsw i64 %tmp160, 2
  %tmp162 = add i64 %tmp161, ptrtoint ([4 x i8]* @global_var_12060 to i64)
  %tmp163 = zext i32 %tmp150 to i64
  %tmp164 = zext i32 %tmp153 to i64
  %tmp165 = zext i32 %tmp156 to i64
  %tmp166 = inttoptr i64 %tmp162 to i8*
  %tmp167 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @global_var_11a0d, i32 0, i32 0), i8* %tmp166, i64 %tmp165, i64 %tmp164, i64 %tmp163)
  br label %block_6db2

block_6da1:                                       ; preds = %block_6d0f
  %tmp168 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @global_var_11a1e, i32 0, i32 0))
  br label %block_6db2

block_6db2:                                       ; preds = %block_6da1, %block_6d56, %block_6d01
  %tmp169 = load i64* @global_var_21a860
  %tmp170 = load i64* @global_var_216560
  %tmp171 = inttoptr i64 %tmp170 to %_IO_FILE*
  %tmp172 = call i64 @fprint_off(%_IO_FILE* %tmp171, i64 %tmp169, i32 19)
  %tmp173 = call i32 @putchar(i32 32)
  %tmp174 = load i64* @global_var_25f4c0
  %tmp175 = load i64* @global_var_216560
  %tmp176 = inttoptr i64 %tmp175 to %_IO_FILE*
  %tmp177 = call i64 @fprint_off(%_IO_FILE* %tmp176, i64 %tmp174, i32 19)
  %tmp178 = call i32 @putchar(i32 32)
  %tmp179 = load i64* @global_var_21a860
  %tmp180 = icmp eq i64 %tmp179, -1
  br i1 %tmp180, label %block_6e63.thread, label %block_6e3f

block_6e63.thread:                                ; preds = %block_6db2
  store i64 -1, i64* @global_var_216ae8
  store i64 0, i64* @global_var_267540
  store i64 0, i64* @global_var_25f4c0
  store i64 0, i64* @global_var_21a860
  br label %block_6ea4

block_6e3f:                                       ; preds = %block_6db2
  %tmp181 = load i64* @global_var_216ae8
  %tmp182 = icmp slt i64 %tmp181, 0
  br i1 %tmp182, label %block_6e63, label %block_6e4b

block_6e4b:                                       ; preds = %block_6e3f
  %tmp183 = load i64* @global_var_216ae8
  %tmp184 = load i64* @global_var_21a860
  %tmp185 = add i64 %tmp184, %tmp183
  store i64 %tmp185, i64* @global_var_216ae8
  br label %block_6e63

block_6e63:                                       ; preds = %block_6e4b, %block_6e3f
  %.pr10 = load i64* @global_var_25f4c0
  %tmp186 = icmp eq i64 %.pr10, -1
  br i1 %tmp186, label %block_6e70, label %block_6ea4

block_6e70:                                       ; preds = %block_6e63
  store i64 -1, i64* @global_var_216af0
  store i64 0, i64* @global_var_267540
  store i64 0, i64* @global_var_25f4c0
  store i64 0, i64* @global_var_21a860
  br label %block_6ec8

block_6ea4:                                       ; preds = %block_6e63.thread, %block_6e63
  %tmp187 = load i64* @global_var_216af0
  %tmp188 = icmp slt i64 %tmp187, 0
  br i1 %tmp188, label %block_6ec8, label %block_6eb0

block_6eb0:                                       ; preds = %block_6ea4
  %tmp189 = load i64* @global_var_216af0
  %tmp190 = load i64* @global_var_25f4c0
  %tmp191 = add i64 %tmp190, %tmp189
  store i64 %tmp191, i64* @global_var_216af0
  br label %block_6ec8

block_6ec8:                                       ; preds = %block_6eb0, %block_6ea4, %block_6e70
  %tmp192 = load i64* @global_var_216560
  %tmp193 = load i64* @global_var_25f4c0
  %tmp194 = load i64* @global_var_21a860
  %tmp195 = load i64* @global_var_267540
  %tmp196 = sub i64 %tmp193, %tmp194
  %tmp197 = add i64 %tmp196, %tmp195
  %tmp198 = inttoptr i64 %tmp192 to %_IO_FILE*
  %tmp199 = call i64 @display_ratio(i64 %tmp197, i64 %tmp193, %_IO_FILE* %tmp198)
  %tmp200 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @global_var_11a2c, i32 0, i32 0), i8* bitcast (i64* @global_var_24f0c0 to i8*))
  br label %block_6f1a

block_6f19:                                       ; preds = %block_6b25, %block_6b15
  br label %block_6f1a

block_6f1a:                                       ; preds = %block_6f19, %block_6ec8, %block_6bb0
  %tmp201 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp202 = icmp eq i64 %tmp56, %tmp201
  br i1 %tmp202, label %block_6f2e, label %block_6f29

block_6f29:                                       ; preds = %block_6f1a
  call void @__stack_chk_fail()
  unreachable

block_6f2e:                                       ; preds = %block_6f1a
  ret i64 0
}

define i64 @shorten_name(i8* %arg1) {
block_6f30:
  %tmp40 = call i32 @strlen(i8* %arg1)
  %tmp41 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp42 = icmp eq i32 %tmp41, 0
  br i1 %tmp42, label %block_6f8e, label %block_6f64

block_6f64:                                       ; preds = %block_6f30
  %tmp43 = icmp sgt i32 %tmp40, 1
  br i1 %tmp43, label %block_6f76, label %block_6f6a

block_6f6a:                                       ; preds = %block_6f64
  %tmp44 = call i64 @gzip_error(i8* getelementptr inbounds ([15 x i8]* @global_var_11a31, i32 0, i32 0))
  unreachable

block_6f76:                                       ; preds = %block_6f64
  %tmp45 = sext i32 %tmp40 to i64
  %tmp46 = ptrtoint i8* %arg1 to i64
  %tmp47 = add i64 %tmp46, -1
  %tmp48 = add i64 %tmp47, %tmp45
  %tmp49 = inttoptr i64 %tmp48 to i8*
  store i8 0, i8* %tmp49
  br label %block_70f1

block_6f8e:                                       ; preds = %block_6f30
  %tmp50 = call i64 @get_suffix(i8* %arg1)
  %tmp51 = inttoptr i64 %tmp50 to i8*
  %tmp52 = ptrtoint i8* %tmp51 to i64
  %tmp53 = icmp eq i64 %tmp52, 0
  br i1 %tmp53, label %block_6fa5, label %block_6fb1

block_6fa5:                                       ; preds = %block_6f8e
  %tmp54 = call i64 @gzip_error(i8* getelementptr inbounds ([22 x i8]* @global_var_11a40, i32 0, i32 0))
  unreachable

block_6fb1:                                       ; preds = %block_6f8e
  store i8 0, i8* %tmp51
  store i32 1, i32* bitcast (i64* @global_var_24a888 to i32*)
  %tmp55 = icmp slt i32 %tmp40, 5
  br i1 %tmp55, label %block_6ffa, label %block_6fc8

block_6fc8:                                       ; preds = %block_6fb1
  %tmp56 = add i64 %tmp52, -4
  %tmp57 = inttoptr i64 %tmp56 to i8*
  %tmp58 = call i32 @strcmp(i8* %tmp57, i8* getelementptr inbounds ([5 x i8]* @global_var_11a56, i32 0, i32 0))
  %tmp59 = icmp eq i32 %tmp58, 0
  br i1 %tmp59, label %block_6fe3, label %block_6ffa

block_6fe3:                                       ; preds = %block_6fc8
  %tmp60 = inttoptr i64 %tmp56 to i32*
  store i32 2053600302, i32* %tmp60
  store i8 0, i8* %tmp51
  br label %block_70f1

block_6ffa:                                       ; preds = %block_6fc8, %block_6fb1, %block_7061
  %stack_var_-24.0 = phi i8* [ %stack_var_-24.2.lcssa, %block_7061 ], [ null, %block_6fb1 ], [ null, %block_6fc8 ]
  %stack_var_-36.0 = phi i32 [ %tmp91, %block_7061 ], [ 3, %block_6fb1 ], [ 3, %block_6fc8 ]
  %tmp61 = call i64 @last_component(i8* %arg1)
  %tmp62 = inttoptr i64 %tmp61 to i8*
  %tmp63 = load i8* %tmp62
  %tmp64 = icmp eq i8 %tmp63, 0
  br i1 %tmp64, label %block_705a, label %block_700c.lr.ph

block_700c.lr.ph:                                 ; preds = %block_6ffa
  %tmp65 = inttoptr i32 %stack_var_-36.0 to i8*
  %tmp66 = ptrtoint i8* %tmp65 to i32
  br label %block_700c

block_700c:                                       ; preds = %block_700c.lr.ph, %block_704f.backedge
  %stack_var_-16.06 = phi i8* [ %tmp62, %block_700c.lr.ph ], [ %stack_var_-16.0.be, %block_704f.backedge ]
  %stack_var_-24.25 = phi i8* [ %stack_var_-24.0, %block_700c.lr.ph ], [ %stack_var_-24.1, %block_704f.backedge ]
  %tmp67 = call i32 @strcspn(i8* %stack_var_-16.06, i8* getelementptr inbounds ([2 x i8]* @global_var_11a5b, i32 0, i32 0))
  %tmp68 = inttoptr i32 %tmp67 to i8*
  %tmp69 = ptrtoint i8* %tmp68 to i32
  %tmp70 = sext i32 %tmp69 to i64
  %tmp71 = ptrtoint i8* %stack_var_-16.06 to i64
  %tmp72 = add i64 %tmp70, %tmp71
  %tmp73 = inttoptr i64 %tmp72 to i8*
  %tmp74 = zext i32 %tmp69 to i64
  %tmp76 = ptrtoint i8* %tmp68 to i64
  %tmp77 = trunc i64 %tmp76 to i32
  %tmp78 = icmp sgt i32 %tmp77, %tmp66
  br i1 %tmp78, label %block_7033, label %block_703f

block_7033:                                       ; preds = %block_700c
  %tmp79 = ptrtoint i8* %tmp73 to i64
  %tmp80 = add i64 %tmp79, -1
  %tmp81 = inttoptr i64 %tmp80 to i8*
  br label %block_703f

block_703f:                                       ; preds = %block_700c, %block_7033
  %stack_var_-24.1 = phi i8* [ %stack_var_-24.25, %block_700c ], [ %tmp81, %block_7033 ]
  %tmp82 = load i8* %tmp73
  %tmp83 = icmp eq i8 %tmp82, 0
  br i1 %tmp83, label %block_704f.backedge, label %block_704a

block_704f.backedge:                              ; preds = %block_703f, %block_704a
  %stack_var_-16.0.be = phi i8* [ %tmp73, %block_703f ], [ %tmp88, %block_704a ]
  %tmp84 = load i8* %stack_var_-16.0.be
  %tmp85 = icmp eq i8 %tmp84, 0
  br i1 %tmp85, label %block_705a, label %block_700c

block_704a:                                       ; preds = %block_703f
  %tmp86 = ptrtoint i8* %tmp73 to i64
  %tmp87 = add i64 %tmp86, 1
  %tmp88 = inttoptr i64 %tmp87 to i8*
  br label %block_704f.backedge

block_705a:                                       ; preds = %block_704f.backedge, %block_6ffa
  %stack_var_-24.2.lcssa = phi i8* [ %stack_var_-24.0, %block_6ffa ], [ %stack_var_-24.1, %block_704f.backedge ]
  %tmp89 = ptrtoint i8* %stack_var_-24.2.lcssa to i64
  %tmp90 = icmp eq i64 %tmp89, 0
  br i1 %tmp90, label %block_7061, label %block_706b

block_7061:                                       ; preds = %block_705a
  %tmp91 = add nsw i32 %stack_var_-36.0, -1
  %tmp92 = icmp eq i32 %tmp91, 0
  br i1 %tmp92, label %block_709a, label %block_6ffa

block_706b:                                       ; preds = %block_705a
  br label %block_7072

block_7072:                                       ; preds = %block_706b, %block_7072
  %stack_var_-24.3 = phi i8* [ %stack_var_-24.2.lcssa, %block_706b ], [ %tmp95, %block_7072 ]
  %tmp93 = ptrtoint i8* %stack_var_-24.3 to i64
  %tmp94 = add i64 %tmp93, 1
  %tmp95 = inttoptr i64 %tmp94 to i8*
  %tmp96 = load i8* %tmp95
  store i8 %tmp96, i8* %stack_var_-24.3
  %tmp97 = load i8* %stack_var_-24.3
  %tmp98 = icmp eq i8 %tmp97, 0
  br i1 %tmp98, label %block_7093, label %block_7072

block_7093:                                       ; preds = %block_7072
  %tmp99 = ptrtoint i8* %tmp95 to i64
  %tmp100 = add i64 %tmp99, -1
  %tmp101 = inttoptr i64 %tmp100 to i8*
  br label %block_70db

block_709a:                                       ; preds = %block_7061
  %tmp102 = call i8* @strrchr(i8* %arg1, i32 46)
  %tmp103 = ptrtoint i8* %tmp102 to i64
  %tmp104 = icmp eq i64 %tmp103, 0
  br i1 %tmp104, label %block_70bb, label %block_70c7

block_70bb:                                       ; preds = %block_709a
  %tmp105 = call i64 @gzip_error(i8* getelementptr inbounds ([31 x i8]* @global_var_11a60, i32 0, i32 0))
  unreachable

block_70c7:                                       ; preds = %block_709a
  %tmp106 = add i64 %tmp103, 1
  %tmp107 = inttoptr i64 %tmp106 to i8*
  %tmp108 = load i8* %tmp107
  %tmp109 = icmp eq i8 %tmp108, 0
  br i1 %tmp109, label %block_70d6, label %block_70db

block_70d6:                                       ; preds = %block_70c7
  %tmp110 = add i64 %tmp103, -1
  %tmp111 = inttoptr i64 %tmp110 to i8*
  br label %block_70db

block_70db:                                       ; preds = %block_70c7, %block_70d6, %block_7093
  %stack_var_-24.4 = phi i8* [ %tmp102, %block_70c7 ], [ %tmp111, %block_70d6 ], [ %tmp101, %block_7093 ]
  %tmp112 = load i64* @global_var_216630
  %tmp113 = inttoptr i64 %tmp112 to i8*
  %tmp114 = call i8* @strcpy(i8* %stack_var_-24.4, i8* %tmp113)
  %tmp115 = ptrtoint i8* %tmp114 to i64
  br label %block_70f1

block_70f1:                                       ; preds = %block_70db, %block_6fe3, %block_6f76
  %rax.0 = phi i64 [ %tmp115, %block_70db ], [ %tmp56, %block_6fe3 ], [ %tmp48, %block_6f76 ]
  ret i64 %rax.0
}

define i64 @check_ofname() {
block_70f3:
  %tmp18 = load i32* bitcast (i64* @global_var_216604 to i32*)
  %tmp19 = icmp eq i32 %tmp18, 0
  br i1 %tmp19, label %block_7109, label %block_71d7

block_7109:                                       ; preds = %block_70f3
  %tmp20 = load i64* @global_var_25f4c8
  %tmp21 = load i64* @global_var_216580
  %tmp22 = inttoptr i64 %tmp21 to %_IO_FILE*
  %tmp23 = inttoptr i64 %tmp20 to i8*
  %tmp24 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp22, i8* getelementptr inbounds ([23 x i8]* @global_var_11a7f, i32 0, i32 0), i8* %tmp23, i8* bitcast (i64* @global_var_24f0c0 to i8*))
  %tmp25 = load i32* bitcast (i64* @global_var_216618 to i32*)
  %tmp26 = icmp eq i32 %tmp25, 0
  br i1 %tmp26, label %block_719c.critedge, label %block_7143

block_7143:                                       ; preds = %block_7109
  %tmp27 = load i8* bitcast (i64* @global_var_2165f8 to i8*)
  %tmp28 = icmp eq i8 %tmp27, 0
  br i1 %tmp28, label %block_714e, label %block_715c

block_714e:                                       ; preds = %block_7143
  %tmp29 = call i32 @isatty(i32 0)
  %tmp30 = icmp eq i32 %tmp29, 0
  br i1 %tmp30, label %block_719c.critedge1, label %block_715c

block_715c:                                       ; preds = %block_7143, %block_714e
  %tmp31 = load i64* @global_var_216580
  %tmp32 = inttoptr i64 %tmp31 to %_IO_FILE*
  %tmp33 = call i32 @fwrite(i64* bitcast ([37 x i8]* @global_var_11a98 to i64*), i32 1, i32 36, %_IO_FILE* %tmp32)
  %tmp34 = load i64* @global_var_216580
  %tmp35 = inttoptr i64 %tmp34 to %_IO_FILE*
  %tmp36 = call i64 @rpl_fflush(%_IO_FILE* %tmp35)
  %tmp37 = call i64 @yesno()
  %tmp38 = and i64 %tmp37, 255
  %phitmp = icmp eq i64 %tmp38, 0
  br i1 %phitmp, label %block_719c, label %block_71d7

block_719c.critedge:                              ; preds = %block_7109
  br label %block_719c

block_719c.critedge1:                             ; preds = %block_714e
  br label %block_719c

block_719c:                                       ; preds = %block_719c.critedge1, %block_719c.critedge, %block_715c
  %tmp39 = load i64* @global_var_216580
  %tmp40 = inttoptr i64 %tmp39 to %_IO_FILE*
  %tmp41 = call i32 @fwrite(i64* bitcast ([18 x i8]* @global_var_11abd to i64*), i32 1, i32 17, %_IO_FILE* %tmp40)
  %tmp42 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp43 = icmp eq i32 %tmp42, 0
  br i1 %tmp43, label %block_71c6, label %block_71d0

block_71c6:                                       ; preds = %block_719c
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_71d0

block_71d0:                                       ; preds = %block_719c, %block_71c6
  br label %block_71ff

block_71d7:                                       ; preds = %block_715c, %block_70f3
  %tmp44 = call i64 @xunlink(i8* bitcast (i64* @global_var_24f0c0 to i8*))
  %tmp45 = trunc i64 %tmp44 to i32
  %tmp46 = icmp eq i32 %tmp45, 0
  br i1 %tmp46, label %block_71fa, label %block_71e7

block_71e7:                                       ; preds = %block_71d7
  %tmp47 = call i64 @progerror(i8* bitcast (i64* @global_var_24f0c0 to i8*))
  br label %block_71ff

block_71fa:                                       ; preds = %block_71d7
  br label %block_71ff

block_71ff:                                       ; preds = %block_71fa, %block_71e7, %block_71d0
  %rax.0 = phi i64 [ 0, %block_71fa ], [ 1, %block_71e7 ], [ 1, %block_71d0 ]
  ret i64 %rax.0
}

define i64 @do_chown(i32 %arg1, i64* %arg2, i64 %arg3, i64 %arg4) {
block_7201:
  %tmp21 = trunc i64 %arg3 to i32
  %tmp22 = trunc i64 %arg4 to i32
  %tmp23 = call i32 @fchown(i32 %arg1, i32 %tmp21, i32 %tmp22)
  %tmp24 = sext i32 %tmp23 to i64
  ret i64 %tmp24
}

define i64 @copy_stat(i64* %arg1, i64 %arg2, i64 %arg3) {
block_722e:
  %tmp15 = ptrtoint i64* %arg1 to i64
  %stack_var_-56 = alloca i64
  %tmp34 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp35 = add i64 %tmp15, 24
  %tmp36 = inttoptr i64 %tmp35 to i32*
  %tmp37 = load i32* %tmp36
  %tmp38 = and i32 %tmp37, 511
  %tmp39 = call i64 @get_stat_atime(i64 %tmp15)
  store i64 %tmp39, i64* %stack_var_-56
  %tmp40 = call i64 @get_stat_mtime(i64* %arg1)
  %tmp41 = inttoptr i64 %tmp40 to i32*
  %tmp42 = load i32* bitcast (i64* @global_var_216600 to i32*)
  %tmp43 = icmp eq i32 %tmp42, 0
  br i1 %tmp43, label %block_72c2.thread, label %block_728a

block_728a:                                       ; preds = %block_722e
  %tmp44 = load i64* @global_var_25f4d8
  %tmp45 = icmp slt i64 %tmp44, 0
  br i1 %tmp45, label %block_72c2.thread, label %block_7296

block_7296:                                       ; preds = %block_728a
  %tmp46 = ptrtoint i32* %tmp41 to i64
  %tmp47 = load i64* @global_var_25f4d0
  %tmp48 = icmp eq i64 %tmp46, %tmp47
  br i1 %tmp48, label %block_72a6, label %block_72cf

block_72a6:                                       ; preds = %block_7296
  %tmp49 = load i64* @global_var_25f4d8
  %tmp50 = icmp eq i64 %tmp49, %arg3
  br i1 %tmp50, label %block_72c2.thread, label %block_72cf

block_72c2.thread:                                ; preds = %block_722e, %block_728a, %block_72a6
  br label %block_72e5

block_72cf:                                       ; preds = %block_7296, %block_72a6
  br label %block_72e5

block_72e5:                                       ; preds = %block_72c2.thread, %block_72cf
  %rax.02 = phi i1 [ true, %block_72c2.thread ], [ false, %block_72cf ]
  %tmp51 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp52 = call i64 @fdutimens(i32 %tmp51, i64* @global_var_24f0c0, i64* %stack_var_-56)
  %tmp53 = trunc i64 %tmp52 to i32
  %tmp54 = icmp eq i32 %tmp53, 0
  br i1 %tmp54, label %block_7301, label %block_733e

block_7301:                                       ; preds = %block_72e5
  br i1 %rax.02, label %block_73ab, label %block_730b

block_730b:                                       ; preds = %block_7301
  %tmp55 = load i32* bitcast (i64* @global_var_2165e4 to i32*)
  %tmp56 = icmp slt i32 %tmp55, 2
  br i1 %tmp56, label %block_73ab, label %block_731a

block_731a:                                       ; preds = %block_730b
  %tmp57 = load i64* @global_var_216580
  %tmp58 = inttoptr i64 %tmp57 to %_IO_FILE*
  %tmp59 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp58, i8* getelementptr inbounds ([24 x i8]* @global_var_11acf, i32 0, i32 0), i8* bitcast (i64* @global_var_24f0c0 to i8*))
  br label %block_73ab

block_733e:                                       ; preds = %block_72e5
  %tmp60 = call i32* @__errno_location()
  %tmp61 = load i32* %tmp60
  %tmp62 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp63 = icmp eq i32 %tmp62, 0
  br i1 %tmp63, label %block_7352, label %block_7374

block_7352:                                       ; preds = %block_733e
  %tmp64 = load i64* @global_var_25f4c8
  %tmp65 = load i64* @global_var_216580
  %tmp66 = inttoptr i64 %tmp65 to %_IO_FILE*
  %tmp67 = inttoptr i64 %tmp64 to i8*
  %tmp68 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp66, i8* getelementptr inbounds ([5 x i8]* @global_var_11035, i32 0, i32 0), i8* %tmp67)
  br label %block_7374

block_7374:                                       ; preds = %block_733e, %block_7352
  %tmp69 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp70 = icmp eq i32 %tmp69, 0
  br i1 %tmp70, label %block_737e, label %block_7388

block_737e:                                       ; preds = %block_7374
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_7388

block_7388:                                       ; preds = %block_7374, %block_737e
  %tmp71 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp72 = icmp eq i32 %tmp71, 0
  br i1 %tmp72, label %block_7392, label %block_73ab

block_7392:                                       ; preds = %block_7388
  %tmp73 = call i32* @__errno_location()
  store i32 %tmp61, i32* %tmp73
  call void @perror(i8* bitcast (i64* @global_var_24f0c0 to i8*)) #1
  br label %block_73ab

block_73ab:                                       ; preds = %block_7388, %block_7392, %block_731a, %block_730b, %block_7301
  %tmp74 = add i64 %tmp15, 32
  %tmp75 = inttoptr i64 %tmp74 to i32*
  %tmp76 = load i32* %tmp75
  %tmp77 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp78 = zext i32 %tmp76 to i64
  %tmp79 = call i64 @do_chown(i32 %tmp77, i64* @global_var_24f0c0, i64 4294967295, i64 %tmp78)
  %tmp80 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp81 = call i32 @fchmod(i32 %tmp80, i32 %tmp38)
  %tmp82 = icmp eq i32 %tmp81, 0
  br i1 %tmp82, label %block_7455, label %block_73e8

block_73e8:                                       ; preds = %block_73ab
  %tmp83 = call i32* @__errno_location()
  %tmp84 = load i32* %tmp83
  %tmp85 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp86 = icmp eq i32 %tmp85, 0
  br i1 %tmp86, label %block_73fc, label %block_741e

block_73fc:                                       ; preds = %block_73e8
  %tmp87 = load i64* @global_var_25f4c8
  %tmp88 = load i64* @global_var_216580
  %tmp89 = inttoptr i64 %tmp88 to %_IO_FILE*
  %tmp90 = inttoptr i64 %tmp87 to i8*
  %tmp91 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp89, i8* getelementptr inbounds ([5 x i8]* @global_var_11035, i32 0, i32 0), i8* %tmp90)
  br label %block_741e

block_741e:                                       ; preds = %block_73e8, %block_73fc
  %tmp92 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp93 = icmp eq i32 %tmp92, 0
  br i1 %tmp93, label %block_7428, label %block_7432

block_7428:                                       ; preds = %block_741e
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_7432

block_7432:                                       ; preds = %block_741e, %block_7428
  %tmp94 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp95 = icmp eq i32 %tmp94, 0
  br i1 %tmp95, label %block_743c, label %block_7455

block_743c:                                       ; preds = %block_7432
  %tmp96 = call i32* @__errno_location()
  store i32 %tmp84, i32* %tmp96
  call void @perror(i8* bitcast (i64* @global_var_24f0c0 to i8*)) #1
  br label %block_7455

block_7455:                                       ; preds = %block_7432, %block_743c, %block_73ab
  %tmp97 = add i64 %tmp15, 28
  %tmp98 = inttoptr i64 %tmp97 to i32*
  %tmp99 = load i32* %tmp98
  %tmp100 = zext i32 %tmp99 to i64
  %tmp101 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp102 = call i64 @do_chown(i32 %tmp101, i64* @global_var_24f0c0, i64 %tmp100, i64 4294967295)
  %tmp103 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp104 = icmp eq i64 %tmp34, %tmp103
  br i1 %tmp104, label %block_748a, label %block_7485

block_7485:                                       ; preds = %block_7455
  call void @__stack_chk_fail()
  unreachable

block_748a:                                       ; preds = %block_7455
  ret i64 0
}

define i64 @treat_dir(i32 %arg1, i64 %arg2) {
block_748c:
  %stack_var_-1048 = alloca i64
  %stack_var_-8 = alloca i64
  %tmp38 = ptrtoint i64* %stack_var_-8 to i64
  %tmp39 = inttoptr i64 %arg2 to i8*
  %tmp40 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp41 = call %__dirstream* @fdopendir(i32 %arg1)
  %tmp42 = ptrtoint %__dirstream* %tmp41 to i64
  %tmp43 = icmp eq i64 %tmp42, 0
  br i1 %tmp43, label %block_74d1, label %block_74f2

block_74d1:                                       ; preds = %block_748c
  %tmp45 = call i64 @progerror(i8* %tmp39)
  %tmp46 = call i32 @close(i32 %arg1)
  br label %block_76f8

block_74f2:                                       ; preds = %block_748c
  %tmp47 = call i64 @streamsavedir(%__dirstream* %tmp41, i64 0)
  %tmp48 = icmp eq i64 %tmp47, 0
  br i1 %tmp48, label %block_7517, label %block_7526

block_7517:                                       ; preds = %block_74f2
  %tmp50 = call i64 @progerror(i8* %tmp39)
  br label %block_7526

block_7526:                                       ; preds = %block_74f2, %block_7517
  %tmp51 = call i32 @closedir(%__dirstream* %tmp41)
  %tmp52 = icmp eq i32 %tmp51, 0
  br i1 %tmp52, label %block_7548, label %block_7539

block_7539:                                       ; preds = %block_7526
  %tmp54 = call i64 @progerror(i8* %tmp39)
  br label %block_7548

block_7548:                                       ; preds = %block_7539, %block_7526
  br i1 %tmp48, label %block_76f7, label %block_7556

block_7556:                                       ; preds = %block_7548
  %stack_var_-1088.06 = inttoptr i64 %tmp47 to i8*
  %tmp55 = load i8* %stack_var_-1088.06
  %tmp56 = icmp eq i8 %tmp55, 0
  br i1 %tmp56, label %block_76e6, label %block_7569.lr.ph

block_7569.lr.ph:                                 ; preds = %block_7556
  %tmp57 = ptrtoint i64* %stack_var_-1048 to i64
  %tmp58 = bitcast i64* %stack_var_-1048 to i8*
  %tmp59 = add i64 %tmp38, -1041
  %tmp60 = add i64 %tmp38, -1040
  br label %block_7569

block_7569:                                       ; preds = %block_7569.lr.ph, %block_76c2
  %stack_var_-1088.07 = phi i8* [ %stack_var_-1088.06, %block_7569.lr.ph ], [ %stack_var_-1088.0, %block_76c2 ]
  %tmp62 = call i32 @strlen(i8* %tmp39)
  %tmp63 = sext i32 %tmp62 to i64
  %tmp64 = inttoptr i64 %tmp63 to i8*
  %tmp65 = call i32 @strlen(i8* %stack_var_-1088.07)
  %tmp66 = sext i32 %tmp65 to i64
  %tmp67 = inttoptr i64 %tmp66 to i8*
  %tmp68 = call i32 @strcmp(i8* %stack_var_-1088.07, i8* getelementptr inbounds ([2 x i8]* @global_var_11a5b, i32 0, i32 0))
  %tmp69 = icmp eq i32 %tmp68, 0
  br i1 %tmp69, label %block_76c1, label %block_75b3

block_75b3:                                       ; preds = %block_7569
  %tmp70 = call i32 @strcmp(i8* %stack_var_-1088.07, i8* getelementptr inbounds ([3 x i8]* @global_var_11ae7, i32 0, i32 0))
  %tmp71 = icmp eq i32 %tmp70, 0
  br i1 %tmp71, label %block_76c1, label %block_75d1

block_75d1:                                       ; preds = %block_75b3
  %tmp72 = ptrtoint i8* %tmp64 to i64
  %tmp73 = ptrtoint i8* %tmp67 to i64
  %tmp74 = add i64 %tmp73, %tmp72
  %tmp75 = icmp ugt i64 %tmp74, 1021
  br i1 %tmp75, label %block_7682, label %block_75ee

block_75ee:                                       ; preds = %block_75d1
  %tmp77 = call i8* @strcpy(i8* %tmp58, i8* %tmp39)
  %tmp78 = call i64 @last_component(i8* %tmp58)
  %tmp79 = inttoptr i64 %tmp78 to i8*
  %tmp80 = load i8* %tmp79
  %tmp81 = icmp eq i8 %tmp80, 0
  br i1 %tmp81, label %block_764e, label %block_761d

block_761d:                                       ; preds = %block_75ee
  %tmp82 = add i64 %tmp59, %tmp72
  %tmp83 = inttoptr i64 %tmp82 to i8*
  %tmp84 = load i8* %tmp83
  %tmp85 = icmp eq i8 %tmp84, 47
  br i1 %tmp85, label %block_764e, label %block_7634

block_7634:                                       ; preds = %block_761d
  %tmp86 = add i64 %tmp72, 1
  %tmp87 = inttoptr i64 %tmp86 to i8*
  %tmp88 = add i64 %tmp60, %tmp72
  %tmp89 = inttoptr i64 %tmp88 to i8*
  store i8 47, i8* %tmp89
  br label %block_764e

block_764e:                                       ; preds = %block_7634, %block_761d, %block_75ee
  %stack_var_-1080.0 = phi i8* [ %tmp64, %block_75ee ], [ %tmp64, %block_761d ], [ %tmp87, %block_7634 ]
  %tmp90 = ptrtoint i8* %stack_var_-1080.0 to i64
  %tmp91 = add i64 %tmp90, %tmp57
  %tmp92 = inttoptr i64 %tmp91 to i8*
  %tmp93 = call i8* @strcpy(i8* %tmp92, i8* %stack_var_-1088.07)
  %tmp94 = call i64 @treat_file(i8* %tmp58)
  br label %block_76c2

block_7682:                                       ; preds = %block_75d1
  %tmp95 = load i64* @global_var_25f4c8
  %tmp96 = load i64* @global_var_216580
  %tmp98 = inttoptr i64 %tmp96 to %_IO_FILE*
  %tmp99 = inttoptr i64 %tmp95 to i8*
  %tmp100 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp98, i8* getelementptr inbounds ([30 x i8]* @global_var_11aea, i32 0, i32 0), i8* %tmp99, i8* %tmp39, i8* %stack_var_-1088.07)
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_76c2

block_76c1:                                       ; preds = %block_75b3, %block_7569
  %.pre = ptrtoint i8* %tmp67 to i64
  br label %block_76c2

block_76c2:                                       ; preds = %block_76c1, %block_7682, %block_764e
  %.pre-phi = phi i64 [ %.pre, %block_76c1 ], [ %tmp73, %block_7682 ], [ %tmp73, %block_764e ]
  %tmp101 = ptrtoint i8* %stack_var_-1088.07 to i64
  %tmp102 = add i64 %tmp101, 1
  %tmp103 = add i64 %tmp102, %.pre-phi
  %stack_var_-1088.0 = inttoptr i64 %tmp103 to i8*
  %tmp104 = load i8* %stack_var_-1088.0
  %tmp105 = icmp eq i8 %tmp104, 0
  br i1 %tmp105, label %block_76e6, label %block_7569

block_76e6:                                       ; preds = %block_76c2, %block_7556
  %tmp106 = inttoptr i64 %tmp47 to i64*
  call void @free(i64* %tmp106)
  br label %block_76f8

block_76f7:                                       ; preds = %block_7548
  br label %block_76f8

block_76f8:                                       ; preds = %block_76f7, %block_76e6, %block_74d1
  %tmp107 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp108 = icmp eq i64 %tmp40, %tmp107
  br i1 %tmp108, label %block_770c, label %block_7707

block_7707:                                       ; preds = %block_76f8
  call void @__stack_chk_fail()
  unreachable

block_770c:                                       ; preds = %block_76f8
  ret i64 0
}

define i64 @install_signal_handlers() {
block_770e:
  %stack_var_-168 = alloca i64
  %tmp50 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp51 = call i32 @sigemptyset(%_TYPEDEF_sigset_t* bitcast (i64* @global_var_216640 to %_TYPEDEF_sigset_t*))
  %tmp52 = bitcast i64* %stack_var_-168 to %sigaction*
  br label %block_774a

block_774a:                                       ; preds = %block_77ac, %block_770e
  %indvars.iv4 = phi i64 [ 0, %block_770e ], [ %indvars.iv.next5, %block_77ac ]
  %tmp53 = shl i64 %indvars.iv4, 2
  %tmp54 = add i64 %tmp53, ptrtoint (i64* @global_var_2160b0 to i64)
  %tmp55 = inttoptr i64 %tmp54 to i32*
  %tmp56 = load i32* %tmp55
  %tmp57 = call i32 @sigaction(i32 %tmp56, %sigaction* null, %sigaction* %tmp52)
  %tmp58 = load i64* %stack_var_-168
  %tmp59 = icmp eq i64 %tmp58, 1
  br i1 %tmp59, label %block_77ac, label %block_7784

block_7784:                                       ; preds = %block_774a
  %tmp60 = load i32* %tmp55
  %tmp61 = call i32 @sigaddset(%_TYPEDEF_sigset_t* bitcast (i64* @global_var_216640 to %_TYPEDEF_sigset_t*), i32 %tmp60)
  br label %block_77ac

block_77ac:                                       ; preds = %block_7784, %block_774a
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 6
  br i1 %exitcond6, label %block_77c1, label %block_774a

block_77c1:                                       ; preds = %block_77ac
  store i64 31391, i64* %stack_var_-168
  br label %block_789b

block_789b:                                       ; preds = %block_790a, %block_77c1
  %indvars.iv = phi i64 [ 0, %block_77c1 ], [ %indvars.iv.next, %block_790a ]
  %tmp62 = shl i64 %indvars.iv, 2
  %tmp63 = add i64 %tmp62, ptrtoint (i64* @global_var_2160b0 to i64)
  %tmp64 = inttoptr i64 %tmp63 to i32*
  %tmp65 = load i32* %tmp64
  %tmp66 = call i32 @sigismember(%_TYPEDEF_sigset_t* bitcast (i64* @global_var_216640 to %_TYPEDEF_sigset_t*), i32 %tmp65)
  %tmp67 = icmp eq i32 %tmp66, 0
  br i1 %tmp67, label %block_790a, label %block_78c7

block_78c7:                                       ; preds = %block_789b
  %tmp68 = trunc i64 %indvars.iv to i32
  %tmp69 = icmp eq i32 %tmp68, 0
  br i1 %tmp69, label %block_78d0, label %block_78da

block_78d0:                                       ; preds = %block_78c7
  store i32 1, i32* bitcast (i64* @global_var_216618 to i32*)
  br label %block_78da

block_78da:                                       ; preds = %block_78c7, %block_78d0
  %tmp70 = load i32* %tmp64
  %tmp71 = call i32 @sigaction(i32 %tmp70, %sigaction* %tmp52, %sigaction* null)
  br label %block_790a

block_790a:                                       ; preds = %block_78da, %block_789b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %block_7923, label %block_789b

block_7923:                                       ; preds = %block_790a
  %tmp72 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp73 = icmp eq i64 %tmp50, %tmp72
  br i1 %tmp73, label %block_7938, label %block_7933

block_7933:                                       ; preds = %block_7923
  call void @__stack_chk_fail()
  unreachable

block_7938:                                       ; preds = %block_7923
  ret i64 0
}

define i64 @do_exit(i32 %arg1) {
block_793a:
  %tmp13 = load i32* bitcast (i64* @global_var_216f90 to i32*)
  %tmp14 = icmp eq i32 %tmp13, 0
  br i1 %tmp14, label %block_7959, label %block_794f

block_794f:                                       ; preds = %block_793a
  call void @exit(i32 %arg1)
  unreachable

block_7959:                                       ; preds = %block_793a
  store i32 1, i32* bitcast (i64* @global_var_216f90 to i32*)
  %tmp15 = load i64* @global_var_216628
  %tmp16 = inttoptr i64 %tmp15 to i64*
  call void @free(i64* %tmp16)
  store i64 0, i64* @global_var_216628
  call void @exit(i32 %arg1)
  ret i64 ptrtoint (i64* @0 to i64)
}

define i64 @finish_out() {
block_7987:
  %tmp11 = load i64* @global_var_216560
  %tmp12 = inttoptr i64 %tmp11 to %_IO_FILE*
  %tmp13 = call i64 @rpl_fclose(%_IO_FILE* %tmp12)
  %tmp14 = trunc i64 %tmp13 to i32
  %tmp15 = icmp eq i32 %tmp14, 0
  br i1 %tmp15, label %block_79a3, label %block_799e

block_799e:                                       ; preds = %block_7987
  %tmp16 = call i64 @write_error()
  unreachable

block_79a3:                                       ; preds = %block_7987
  %tmp17 = call i64 @do_exit(i32 0)
  ret i64 %tmp17
}

define i64 @remove_output_file(i32 %arg1) {
block_79ad:
  %stack_var_-1048 = alloca i64
  %stack_var_-1176 = alloca i64
  %tmp21 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp22 = xor i32 %arg1, 1
  %tmp23 = trunc i32 %tmp22 to i8
  %tmp24 = icmp eq i8 %tmp23, 0
  br i1 %tmp24, label %block_79f8, label %block_79dd

block_79dd:                                       ; preds = %block_79ad
  %tmp25 = bitcast i64* %stack_var_-1176 to %_TYPEDEF_sigset_t*
  %tmp26 = call i32 @sigprocmask(i32 0, %_TYPEDEF_sigset_t* bitcast (i64* @global_var_216640 to %_TYPEDEF_sigset_t*), %_TYPEDEF_sigset_t* %tmp25)
  br label %block_79f8

block_79f8:                                       ; preds = %block_79dd, %block_79ad
  %tmp27 = load i32* bitcast (i64* @global_var_2160a4 to i32*)
  %tmp28 = icmp slt i32 %tmp27, 0
  br i1 %tmp28, label %block_7a49, label %block_7a0d

block_7a0d:                                       ; preds = %block_79f8
  store i32 -1, i32* bitcast (i64* @global_var_2160a4 to i32*)
  %tmp29 = call i32 @close(i32 %tmp27)
  %tmp30 = bitcast i64* %stack_var_-1048 to i8*
  %tmp31 = call i64 @volatile_strcpy(i8* %tmp30, i64* @global_var_2166e0)
  %tmp32 = call i64 @xunlink(i8* %tmp30)
  br label %block_7a49

block_7a49:                                       ; preds = %block_7a0d, %block_79f8
  br i1 %tmp24, label %block_7a70, label %block_7a57

block_7a57:                                       ; preds = %block_7a49
  %tmp33 = bitcast i64* %stack_var_-1176 to %_TYPEDEF_sigset_t*
  %tmp34 = call i32 @sigprocmask(i32 2, %_TYPEDEF_sigset_t* %tmp33, %_TYPEDEF_sigset_t* null)
  br label %block_7a70

block_7a70:                                       ; preds = %block_7a57, %block_7a49
  %tmp35 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp36 = icmp eq i64 %tmp21, %tmp35
  br i1 %tmp36, label %block_7a85, label %block_7a80

block_7a80:                                       ; preds = %block_7a70
  call void @__stack_chk_fail()
  unreachable

block_7a85:                                       ; preds = %block_7a70
  ret i64 0
}

define i64 @abort_gzip() {
block_7a87:
  %tmp5 = call i64 @remove_output_file(i32 0)
  %tmp6 = call i64 @do_exit(i32 1)
  ret i64 %tmp6
}

define i64 @abort_gzip_signal(i32 %arg1) {
block_7a9f:
  %tmp15 = call i64 @remove_output_file(i32 1)
  %tmp16 = load i32* bitcast (i64* @global_var_2166c0 to i32*)
  %tmp17 = icmp eq i32 %tmp16, %arg1
  br i1 %tmp17, label %block_7abf, label %block_7ac9

block_7abf:                                       ; preds = %block_7a9f
  call void @_exit(i32 2)
  unreachable

block_7ac9:                                       ; preds = %block_7a9f
  %tmp18 = call void (i32)* (i32, void (i32)*)* @signal(i32 %arg1, void (i32)* null)
  %tmp19 = call i32 @raise(i32 %arg1)
  %tmp20 = sext i32 %tmp19 to i64
  ret i64 %tmp20
}

define i64 @huft_build(i32* %arg1, i64 %arg2, i64 %arg3, i64* %arg4, i64* %arg5, i64* %arg6, i32* %arg7) {
block_7ae5:
  %0 = alloca i64
  %1 = load i64* %0
  %stack_var_-1224 = alloca i64
  %stack_var_-1424 = alloca i64
  %stack_var_-1508 = alloca i64
  %stack_var_-1512 = alloca i32
  %stack_var_-8 = alloca i64
  %tmp203 = ptrtoint i64* %stack_var_-8 to i64
  %tmp204 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp205 = bitcast i32* %stack_var_-1512 to i64*
  %tmp206 = call i64* @memset(i64* %tmp205, i32 0, i32 68)
  %tmp207 = ptrtoint i32* %arg1 to i64
  %tmp208 = and i64 %arg2, 4294967295
  %tmp209 = add i64 %tmp203, -1504
  br label %block_7b62

block_7b62:                                       ; preds = %block_7b62, %block_7ae5
  %r12.0 = phi i64 [ %tmp208, %block_7ae5 ], [ %tmp221, %block_7b62 ]
  %r13.0 = phi i64 [ %tmp207, %block_7ae5 ], [ %tmp218, %block_7b62 ]
  %tmp210 = inttoptr i64 %r13.0 to i32*
  %tmp211 = load i32* %tmp210
  %tmp212 = zext i32 %tmp211 to i64
  %tmp213 = shl nuw nsw i64 %tmp212, 2
  %tmp214 = add i64 %tmp213, %tmp209
  %tmp215 = inttoptr i64 %tmp214 to i32*
  %tmp216 = load i32* %tmp215
  %tmp217 = add i32 %tmp216, 1
  store i32 %tmp217, i32* %tmp215
  %tmp218 = add i64 %r13.0, 4
  %tmp219 = trunc i64 %r12.0 to i32
  %tmp220 = add i32 %tmp219, -1
  %tmp221 = zext i32 %tmp220 to i64
  %tmp222 = icmp eq i32 %tmp220, 0
  br i1 %tmp222, label %block_7b88, label %block_7b62

block_7b88:                                       ; preds = %block_7b62
  %tmp223 = ptrtoint i64* %arg6 to i64
  %tmp224 = trunc i64 %arg2 to i32
  %tmp225 = trunc i64 %arg3 to i32
  %tmp226 = bitcast i64* %arg4 to i16*
  %tmp227 = bitcast i64* %arg5 to i16*
  %tmp228 = ptrtoint i32* %stack_var_-1512 to i64
  %tmp229 = load i32* %stack_var_-1512
  %tmp230 = icmp eq i32 %tmp224, %tmp229
  br i1 %tmp230, label %block_7b96, label %block_7c0c

block_7b96:                                       ; preds = %block_7b88
  %tmp231 = call i64* @malloc(i32 48)
  %tmp232 = ptrtoint i64* %tmp231 to i64
  %tmp233 = icmp eq i64 %tmp232, 0
  br i1 %tmp233, label %block_7ba8, label %block_7bb2

block_7ba8:                                       ; preds = %block_7b96
  br label %block_821b

block_7bb2:                                       ; preds = %block_7b96
  store i32 ptrtoint (i64* @global_var_216fa7 to i32), i32* bitcast (i64* @global_var_216fa4 to i32*)
  %tmp234 = add i64 %tmp232, 8
  %tmp235 = inttoptr i64 %tmp234 to i64*
  store i64 0, i64* %tmp235
  %tmp236 = add i64 %tmp232, 16
  %tmp237 = inttoptr i64 %tmp236 to i8*
  store i8 99, i8* %tmp237
  %tmp238 = add i64 %tmp232, 17
  %tmp239 = inttoptr i64 %tmp238 to i8*
  store i8 1, i8* %tmp239
  %tmp240 = add i64 %tmp232, 32
  %tmp241 = inttoptr i64 %tmp240 to i8*
  store i8 99, i8* %tmp241
  %tmp242 = add i64 %tmp232, 33
  %tmp243 = inttoptr i64 %tmp242 to i8*
  store i8 1, i8* %tmp243
  store i64 %tmp236, i64* %arg6
  store i32 1, i32* %arg7
  br label %block_821b

block_7c0c:                                       ; preds = %block_7b88
  %tmp244 = load i32* %arg7
  br label %block_7c22

block_7c22:                                       ; preds = %block_7c0c, %block_7c2f
  %indvars.iv133 = phi i64 [ 1, %block_7c0c ], [ %indvars.iv.next134, %block_7c2f ]
  %tmp245 = shl nuw nsw i64 %indvars.iv133, 2
  %tmp246 = add i64 %tmp245, %tmp209
  %tmp247 = inttoptr i64 %tmp246 to i32*
  %tmp248 = load i32* %tmp247
  %tmp249 = icmp eq i32 %tmp248, 0
  br i1 %tmp249, label %block_7c2f, label %block_7c39

block_7c2f:                                       ; preds = %block_7c22
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %tmp250 = icmp ult i64 %indvars.iv.next134, 17
  br i1 %tmp250, label %block_7c22, label %block_7c37

block_7c37:                                       ; preds = %block_7c2f
  %tmp251 = trunc i64 %indvars.iv.next134 to i32
  br label %block_7c3a

block_7c39:                                       ; preds = %block_7c22
  %tmp252 = trunc i64 %indvars.iv133 to i32
  br label %block_7c3a

block_7c3a:                                       ; preds = %block_7c39, %block_7c37
  %tmp253 = phi i32 [ %tmp252, %block_7c39 ], [ %tmp251, %block_7c37 ]
  %rbx.047 = phi i64 [ %indvars.iv133, %block_7c39 ], [ %indvars.iv.next134, %block_7c37 ]
  %tmp254 = icmp ugt i32 %tmp253, %tmp244
  br i1 %tmp254, label %block_7c4a, label %block_7c50

block_7c4a:                                       ; preds = %block_7c3a
  br label %block_7c50

block_7c50:                                       ; preds = %block_7c3a, %block_7c4a
  %stack_var_-1552.0 = phi i32 [ %tmp244, %block_7c3a ], [ %tmp253, %block_7c4a ]
  br label %block_7c58

block_7c58:                                       ; preds = %block_7c50, %block_7c66
  %r12.190 = phi i64 [ 16, %block_7c50 ], [ %tmp262, %block_7c66 ]
  %tmp255 = shl nuw nsw i64 %r12.190, 2
  %tmp256 = add i64 %tmp255, %tmp209
  %tmp257 = inttoptr i64 %tmp256 to i32*
  %tmp258 = load i32* %tmp257
  %tmp259 = icmp eq i32 %tmp258, 0
  br i1 %tmp259, label %block_7c66, label %block_7c71

block_7c66:                                       ; preds = %block_7c58
  %tmp260 = trunc i64 %r12.190 to i32
  %tmp261 = add i32 %tmp260, -1
  %tmp262 = zext i32 %tmp261 to i64
  %tmp263 = icmp eq i32 %tmp261, 0
  br i1 %tmp263, label %block_7c6f, label %block_7c58

block_7c6f:                                       ; preds = %block_7c66
  br label %block_7c72

block_7c71:                                       ; preds = %block_7c58
  br label %block_7c72

block_7c72:                                       ; preds = %block_7c71, %block_7c6f
  %r12.145 = phi i64 [ %r12.190, %block_7c71 ], [ %tmp262, %block_7c6f ]
  %tmp264 = trunc i64 %r12.145 to i32
  %tmp265 = icmp ult i32 %tmp264, %stack_var_-1552.0
  br i1 %tmp265, label %block_7c84, label %block_7c8b

block_7c84:                                       ; preds = %block_7c72
  br label %block_7c8b

block_7c8b:                                       ; preds = %block_7c72, %block_7c84
  %stack_var_-1552.1 = phi i32 [ %stack_var_-1552.0, %block_7c72 ], [ %tmp264, %block_7c84 ]
  store i32 %stack_var_-1552.1, i32* %arg7
  %tmp266 = and i32 %tmp253, 31
  %tmp267 = icmp eq i32 %tmp266, 0
  br i1 %tmp267, label %bb270, label %bb

bb:                                               ; preds = %block_7c8b
  %tmp268 = shl i32 1, %tmp266
  %tmp269 = zext i32 %tmp268 to i64
  br label %bb270

bb270:                                            ; preds = %block_7c8b, %bb
  %rax.0 = phi i64 [ 1, %block_7c8b ], [ %tmp269, %bb ]
  %tmp271 = trunc i64 %rax.0 to i32
  %tmp272 = trunc i64 %rbx.047 to i32
  %tmp273 = icmp ult i32 %tmp272, %tmp264
  br i1 %tmp273, label %block_7cab.preheader, label %block_7ce5

block_7cab.preheader:                             ; preds = %bb270
  %tmp274 = and i64 %rbx.047, 4294967295
  %tmp275 = and i64 %r12.145, 4294967295
  br label %block_7cab

block_7cab:                                       ; preds = %block_7cab.preheader, %block_7cd7
  %indvars.iv131 = phi i64 [ %tmp274, %block_7cab.preheader ], [ %indvars.iv.next132, %block_7cd7 ]
  %rbx.188 = phi i64 [ %rbx.047, %block_7cab.preheader ], [ %indvars.iv.next132, %block_7cd7 ]
  %stack_var_-1548.087 = phi i32 [ %tmp271, %block_7cab.preheader ], [ %tmp283, %block_7cd7 ]
  %tmp276 = shl nsw i64 %rbx.188, 2
  %tmp277 = and i64 %tmp276, 17179869180
  %tmp278 = add i64 %tmp277, %tmp209
  %tmp279 = inttoptr i64 %tmp278 to i32*
  %tmp280 = load i32* %tmp279
  %tmp281 = sub i32 %stack_var_-1548.087, %tmp280
  %tmp282 = icmp slt i32 %tmp281, 0
  br i1 %tmp282, label %block_7ccd, label %block_7cd7

block_7ccd:                                       ; preds = %block_7cab
  br label %block_821b

block_7cd7:                                       ; preds = %block_7cab
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %tmp283 = shl i32 %tmp281, 1
  %tmp284 = icmp ult i64 %indvars.iv.next132, %tmp275
  br i1 %tmp284, label %block_7cab, label %block_7ce5

block_7ce5:                                       ; preds = %block_7cd7, %bb270
  %stack_var_-1548.0.lcssa = phi i32 [ %tmp271, %bb270 ], [ %tmp283, %block_7cd7 ]
  %tmp285 = shl nuw nsw i64 %r12.145, 2
  %tmp286 = add i64 %tmp285, %tmp209
  %tmp287 = inttoptr i64 %tmp286 to i32*
  %tmp288 = load i32* %tmp287
  %tmp289 = sub i32 %stack_var_-1548.0.lcssa, %tmp288
  %tmp290 = icmp slt i32 %tmp289, 0
  br i1 %tmp290, label %block_7d08, label %block_7d12

block_7d08:                                       ; preds = %block_7ce5
  br label %block_821b

block_7d12:                                       ; preds = %block_7ce5
  %tmp291 = load i32* %tmp287
  %tmp292 = add i32 %tmp291, %tmp289
  store i32 %tmp292, i32* %tmp287
  %tmp293 = add i32 %tmp264, -1
  %tmp294 = icmp eq i32 %tmp293, 0
  br i1 %tmp294, label %block_7d80, label %block_7d58.lr.ph

block_7d58.lr.ph:                                 ; preds = %block_7d12
  %tmp295 = bitcast i64* %stack_var_-1424 to i32*
  %tmp296 = ptrtoint i64* %stack_var_-1508 to i64
  br label %block_7d58

block_7d58:                                       ; preds = %block_7d58.lr.ph, %block_7d58
  %tmp297 = phi i32 [ %tmp293, %block_7d58.lr.ph ], [ %tmp307, %block_7d58 ]
  %r13.186 = phi i64 [ %tmp296, %block_7d58.lr.ph ], [ %tmp298, %block_7d58 ]
  %rbx.285 = phi i64 [ 0, %block_7d58.lr.ph ], [ %tmp303, %block_7d58 ]
  %stack_var_-1536.084 = phi i32* [ %tmp295, %block_7d58.lr.ph ], [ %tmp306, %block_7d58 ]
  %tmp298 = add i64 %r13.186, 4
  %tmp299 = inttoptr i64 %r13.186 to i32*
  %tmp300 = load i32* %tmp299
  %tmp301 = trunc i64 %rbx.285 to i32
  %tmp302 = add i32 %tmp300, %tmp301
  %tmp303 = zext i32 %tmp302 to i64
  %tmp304 = ptrtoint i32* %stack_var_-1536.084 to i64
  %tmp305 = add i64 %tmp304, 4
  %tmp306 = inttoptr i64 %tmp305 to i32*
  store i32 %tmp302, i32* %stack_var_-1536.084
  %tmp307 = add i32 %tmp297, -1
  %tmp308 = icmp eq i32 %tmp307, 0
  br i1 %tmp308, label %block_7d80, label %block_7d58

block_7d80:                                       ; preds = %block_7d58, %block_7d12
  %tmp309 = add i64 %tmp203, -1424
  %tmp310 = add i64 %tmp203, -1216
  br label %block_7d8d

block_7d8d:                                       ; preds = %block_7db9, %block_7d80
  %r12.3 = phi i64 [ 0, %block_7d80 ], [ %tmp328, %block_7db9 ]
  %r13.2 = phi i64 [ %tmp207, %block_7d80 ], [ %tmp311, %block_7db9 ]
  %tmp311 = add i64 %r13.2, 4
  %tmp312 = inttoptr i64 %r13.2 to i32*
  %tmp313 = load i32* %tmp312
  %tmp314 = icmp eq i32 %tmp313, 0
  br i1 %tmp314, label %block_7d8d.block_7db9_crit_edge, label %block_7d9a

block_7d8d.block_7db9_crit_edge:                  ; preds = %block_7d8d
  %.pre = trunc i64 %r12.3 to i32
  br label %block_7db9

block_7d9a:                                       ; preds = %block_7d8d
  %tmp315 = zext i32 %tmp313 to i64
  %tmp316 = shl nuw nsw i64 %tmp315, 2
  %tmp317 = add i64 %tmp316, %tmp309
  %tmp318 = inttoptr i64 %tmp317 to i32*
  %tmp319 = load i32* %tmp318
  %tmp320 = zext i32 %tmp319 to i64
  %tmp321 = add nuw nsw i64 %tmp320, 1
  %tmp322 = trunc i64 %tmp321 to i32
  store i32 %tmp322, i32* %tmp318
  %tmp323 = trunc i64 %r12.3 to i32
  %tmp324 = shl nuw nsw i64 %tmp320, 2
  %tmp325 = add i64 %tmp310, %tmp324
  %tmp326 = inttoptr i64 %tmp325 to i32*
  store i32 %tmp323, i32* %tmp326
  br label %block_7db9

block_7db9:                                       ; preds = %block_7d8d.block_7db9_crit_edge, %block_7d9a
  %.pre-phi = phi i32 [ %.pre, %block_7d8d.block_7db9_crit_edge ], [ %tmp323, %block_7d9a ]
  %tmp327 = add i32 %.pre-phi, 1
  %tmp328 = zext i32 %tmp327 to i64
  %tmp329 = icmp ult i32 %tmp327, %tmp224
  br i1 %tmp329, label %block_7d8d, label %block_7dc6

block_7dc6:                                       ; preds = %block_7db9
  %tmp330 = sext i32 %tmp264 to i64
  %tmp331 = shl nsw i64 %tmp330, 2
  %tmp332 = add i64 %tmp331, %tmp309
  %tmp333 = inttoptr i64 %tmp332 to i32*
  %tmp334 = load i32* %tmp333
  %tmp335 = ptrtoint i64* %stack_var_-1224 to i64
  %tmp336 = icmp sgt i32 %tmp253, %tmp264
  br i1 %tmp336, label %block_81fd, label %block_7e24.lr.ph

block_7e24.lr.ph:                                 ; preds = %block_7dc6
  %tmp337 = sub i32 0, %stack_var_-1552.1
  %tmp338 = zext i32 %tmp337 to i64
  %tmp339 = zext i32 %stack_var_-1552.1 to i64
  %tmp340 = add i64 %tmp203, -1344
  %tmp341 = zext i32 %tmp334 to i64
  %tmp342 = shl nuw nsw i64 %tmp341, 2
  %tmp343 = add i64 %tmp342, %tmp335
  %tmp344 = ptrtoint i16* %tmp227 to i64
  %tmp345 = ptrtoint i16* %tmp226 to i64
  br label %block_7e24

block_7e24:                                       ; preds = %block_7e24.lr.ph, %block_81e4
  %r15.383 = phi i64 [ %tmp338, %block_7e24.lr.ph ], [ %r15.2.lcssa, %block_81e4 ]
  %r14.282 = phi i64 [ 0, %block_7e24.lr.ph ], [ %r14.1.lcssa, %block_81e4 ]
  %r13.581 = phi i64 [ %tmp335, %block_7e24.lr.ph ], [ %r13.4.lcssa, %block_81e4 ]
  %r12.680 = phi i64 [ 0, %block_7e24.lr.ph ], [ %r12.5.lcssa, %block_81e4 ]
  %stack_var_-1520.379 = phi i64 [ %1, %block_7e24.lr.ph ], [ %stack_var_-1520.2.lcssa, %block_81e4 ]
  %stack_var_-1544.278 = phi i32 [ 0, %block_7e24.lr.ph ], [ %stack_var_-1544.1.lcssa, %block_81e4 ]
  %stack_var_-1556.377 = phi i32 [ -1, %block_7e24.lr.ph ], [ %stack_var_-1556.2.lcssa, %block_81e4 ]
  %stack_var_-1628.075 = phi i32 [ %tmp253, %block_7e24.lr.ph ], [ %tmp546, %block_81e4 ]
  %stack_var_-1616.274 = phi i64 [ %tmp223, %block_7e24.lr.ph ], [ %stack_var_-1616.1.lcssa, %block_81e4 ]
  %tmp346 = sext i32 %stack_var_-1628.075 to i64
  %tmp347 = shl nsw i64 %tmp346, 2
  %tmp348 = add i64 %tmp347, %tmp209
  %tmp349 = inttoptr i64 %tmp348 to i32*
  %tmp350 = load i32* %tmp349
  %tmp351 = icmp eq i32 %tmp350, 0
  br i1 %tmp351, label %block_81e4, label %block_8042.preheader.lr.ph

block_8042.preheader.lr.ph:                       ; preds = %block_7e24
  %tmp352 = zext i32 %tmp350 to i64
  %tmp353 = add nuw nsw i64 %tmp352, 4294967295
  %tmp354 = trunc i64 %tmp353 to i32
  %tmp355 = add i64 %tmp347, %tmp228
  %tmp356 = inttoptr i64 %tmp355 to i32*
  %tmp357 = add i32 %stack_var_-1628.075, 31
  %tmp358 = and i32 %tmp357, 31
  %tmp359 = icmp eq i32 %tmp358, 0
  %tmp360 = shl i32 1, %tmp358
  %tmp361 = zext i32 %tmp360 to i64
  %tmp362 = add i32 %tmp350, -1
  %tmp363 = zext i32 %tmp362 to i64
  %. = select i1 %tmp359, i64 1, i64 %tmp361
  br label %block_8042.preheader

block_7e3d:                                       ; preds = %block_8042
  %tmp364 = add i32 %stack_var_-1556.0, 1
  %tmp365 = zext i32 %tmp449 to i64
  %tmp366 = sub i32 %tmp264, %tmp449
  %tmp367 = icmp ugt i32 %tmp366, %stack_var_-1552.1
  br i1 %tmp367, label %block_7e6d, label %block_7e75

block_7e6d:                                       ; preds = %block_7e3d
  br label %block_7e7b

block_7e75:                                       ; preds = %block_7e3d
  %tmp368 = zext i32 %tmp366 to i64
  br label %block_7e7b

block_7e7b:                                       ; preds = %block_7e75, %block_7e6d
  %rax.1 = phi i64 [ %tmp368, %block_7e75 ], [ %tmp339, %block_7e6d ]
  %tmp369 = trunc i64 %rax.1 to i32
  %tmp370 = sub i32 %stack_var_-1628.075, %tmp449
  %tmp371 = zext i32 %tmp370 to i64
  %tmp372 = and i32 %tmp370, 31
  %tmp373 = icmp eq i32 %tmp372, 0
  br i1 %tmp373, label %bb377, label %bb374

bb374:                                            ; preds = %block_7e7b
  %tmp375 = shl i32 1, %tmp372
  %tmp376 = zext i32 %tmp375 to i64
  br label %bb377

bb377:                                            ; preds = %block_7e7b, %bb374
  %rax.2 = phi i64 [ 1, %block_7e7b ], [ %tmp376, %bb374 ]
  %tmp378 = trunc i64 %rax.2 to i32
  %tmp379 = icmp ugt i32 %tmp378, %tmp541
  br i1 %tmp379, label %block_7eac, label %block_7f27

block_7eac:                                       ; preds = %bb377
  %tmp380 = icmp ult i32 %tmp370, %tmp369
  br i1 %tmp380, label %block_7ee9, label %block_7f27

block_7ee9:                                       ; preds = %block_7eac
  %tmp381 = add i32 %tmp370, 1
  %tmp382 = zext i32 %tmp381 to i64
  %tmp383 = icmp ult i32 %tmp381, %tmp369
  br i1 %tmp383, label %block_7eeb.lr.ph, label %block_7f24

block_7eeb.lr.ph:                                 ; preds = %block_7ee9
  %tmp384 = add i32 %tmp378, %tmp543
  br label %block_7eeb

block_7eeb:                                       ; preds = %block_7eeb.lr.ph, %block_7f0a
  %tmp385 = phi i64 [ %tmp382, %block_7eeb.lr.ph ], [ %tmp396, %block_7f0a ]
  %stack_var_-1560.052 = phi i32 [ %tmp384, %block_7eeb.lr.ph ], [ %tmp393, %block_7f0a ]
  %stack_var_-1536.151 = phi i32* [ %tmp356, %block_7eeb.lr.ph ], [ %tmp389, %block_7f0a ]
  %tmp386 = shl i32 %stack_var_-1560.052, 1
  %tmp387 = ptrtoint i32* %stack_var_-1536.151 to i64
  %tmp388 = add i64 %tmp387, 4
  %tmp389 = inttoptr i64 %tmp388 to i32*
  %tmp390 = load i32* %tmp389
  %tmp391 = icmp ugt i32 %tmp386, %tmp390
  br i1 %tmp391, label %block_7f0a, label %block_7f26

block_7f0a:                                       ; preds = %block_7eeb
  %tmp392 = load i32* %tmp389
  %tmp393 = sub i32 %tmp386, %tmp392
  %tmp394 = trunc i64 %tmp385 to i32
  %tmp395 = add i32 %tmp394, 1
  %tmp396 = zext i32 %tmp395 to i64
  %tmp397 = icmp ult i32 %tmp395, %tmp369
  br i1 %tmp397, label %block_7eeb, label %block_7f24

block_7f24:                                       ; preds = %block_7f0a, %block_7ee9
  %.lcssa = phi i64 [ %tmp382, %block_7ee9 ], [ %tmp396, %block_7f0a ]
  br label %block_7f27

block_7f26:                                       ; preds = %block_7eeb
  br label %block_7f27

block_7f27:                                       ; preds = %block_7eac, %bb377, %block_7f26, %block_7f24
  %rbx.4 = phi i64 [ %tmp371, %bb377 ], [ %tmp371, %block_7eac ], [ %tmp385, %block_7f26 ], [ %.lcssa, %block_7f24 ]
  %tmp398 = trunc i64 %rbx.4 to i32
  %tmp399 = and i32 %tmp398, 31
  %tmp400 = icmp eq i32 %tmp399, 0
  br i1 %tmp400, label %bb404, label %bb401

bb401:                                            ; preds = %block_7f27
  %tmp402 = shl i32 1, %tmp399
  %tmp403 = zext i32 %tmp402 to i64
  br label %bb404

bb404:                                            ; preds = %block_7f27, %bb401
  %rax.3 = phi i64 [ 1, %block_7f27 ], [ %tmp403, %bb401 ]
  %tmp405 = trunc i64 %rax.3 to i32
  %tmp406 = add i32 %tmp405, 1
  %tmp407 = zext i32 %tmp406 to i64
  %tmp408 = shl nuw nsw i64 %tmp407, 4
  %tmp409 = trunc i64 %tmp408 to i32
  %tmp410 = call i64* @malloc(i32 %tmp409)
  %tmp411 = ptrtoint i64* %tmp410 to i64
  %tmp412 = icmp eq i64 %tmp411, 0
  br i1 %tmp412, label %block_7f55, label %block_7f77

block_7f55:                                       ; preds = %bb404
  %tmp413 = icmp eq i32 %tmp364, 0
  br i1 %tmp413, label %block_7f6d, label %block_7f5e

block_7f5e:                                       ; preds = %block_7f55
  %tmp414 = call i64 @huft_free(i64* null)
  br label %block_7f6d

block_7f6d:                                       ; preds = %block_7f5e, %block_7f55
  br label %block_821b

block_7f77:                                       ; preds = %bb404
  %tmp415 = load i32* bitcast (i64* @global_var_216fa4 to i32*)
  %tmp416 = add i32 %tmp415, %tmp406
  store i32 %tmp416, i32* bitcast (i64* @global_var_216fa4 to i32*)
  %tmp417 = add i64 %tmp411, 16
  %tmp418 = inttoptr i64 %stack_var_-1616.0 to i64*
  store i64 %tmp417, i64* %tmp418
  %tmp419 = add i64 %tmp411, 8
  %tmp420 = inttoptr i64 %tmp419 to i64*
  store i64 0, i64* %tmp420
  %tmp421 = sext i32 %tmp364 to i64
  %tmp422 = shl nsw i64 %tmp421, 3
  %tmp423 = add i64 %tmp422, %tmp340
  %tmp424 = inttoptr i64 %tmp423 to i64*
  store i64 %tmp417, i64* %tmp424
  %tmp425 = icmp eq i32 %tmp364, 0
  br i1 %tmp425, label %block_8042, label %block_7fd2

block_7fd2:                                       ; preds = %block_7f77
  %tmp426 = shl nsw i64 %tmp421, 2
  %tmp427 = add i64 %tmp426, %tmp309
  %tmp428 = inttoptr i64 %tmp427 to i32*
  store i32 %tmp544, i32* %tmp428
  %tmp429 = add i32 %tmp398, 16
  %tmp430 = trunc i32 %tmp429 to i8
  %tmp431 = and i32 %tmp448, 31
  %tmp432 = icmp eq i32 %tmp431, 0
  br i1 %tmp432, label %bb436, label %bb433

bb433:                                            ; preds = %block_7fd2
  %tmp434 = lshr i32 %tmp544, %tmp431
  %tmp435 = zext i32 %tmp434 to i64
  br label %bb436

bb436:                                            ; preds = %block_7fd2, %bb433
  %rbx.5 = phi i64 [ %tmp545, %block_7fd2 ], [ %tmp435, %bb433 ]
  %tmp437 = sext i32 %stack_var_-1556.0 to i64
  %tmp438 = shl nsw i64 %tmp437, 3
  %tmp439 = add i64 %tmp438, %tmp340
  %tmp440 = inttoptr i64 %tmp439 to i64*
  %tmp441 = load i64* %tmp440
  %tmp442 = shl nuw nsw i64 %rbx.5, 4
  %tmp443 = add i64 %tmp441, %tmp442
  %tmp444 = sext i8 %tmp430 to i64
  %tmp445 = inttoptr i64 %tmp443 to i64*
  store i64 %tmp444, i64* %tmp445
  %tmp446 = add i64 %tmp443, 8
  %tmp447 = inttoptr i64 %tmp446 to i64*
  store i64 %tmp417, i64* %tmp447
  br label %block_8042.outer

block_8042.outer:                                 ; preds = %block_8042.preheader, %bb436
  %stack_var_-1616.0.ph = phi i64 [ %stack_var_-1616.158, %block_8042.preheader ], [ %tmp419, %bb436 ]
  %stack_var_-1556.0.ph = phi i32 [ %stack_var_-1556.259, %block_8042.preheader ], [ %tmp364, %bb436 ]
  %stack_var_-1544.0.ph = phi i32 [ %stack_var_-1544.160, %block_8042.preheader ], [ %tmp405, %bb436 ]
  %stack_var_-1520.0.ph = phi i64 [ %stack_var_-1520.261, %block_8042.preheader ], [ %tmp417, %bb436 ]
  %r14.0.ph = phi i64 [ %r14.164, %block_8042.preheader ], [ %tmp417, %bb436 ]
  %r15.0.ph = phi i64 [ %r15.265, %block_8042.preheader ], [ %tmp365, %bb436 ]
  br label %block_8042

block_8042:                                       ; preds = %block_8042.outer, %block_7f77
  %stack_var_-1616.0 = phi i64 [ %tmp419, %block_7f77 ], [ %stack_var_-1616.0.ph, %block_8042.outer ]
  %stack_var_-1556.0 = phi i32 [ 0, %block_7f77 ], [ %stack_var_-1556.0.ph, %block_8042.outer ]
  %stack_var_-1544.0 = phi i32 [ %tmp405, %block_7f77 ], [ %stack_var_-1544.0.ph, %block_8042.outer ]
  %r14.0 = phi i64 [ %tmp417, %block_7f77 ], [ %r14.0.ph, %block_8042.outer ]
  %r15.0 = phi i64 [ %tmp365, %block_7f77 ], [ %r15.0.ph, %block_8042.outer ]
  %tmp448 = trunc i64 %r15.0 to i32
  %tmp449 = add i32 %tmp448, %stack_var_-1552.1
  %tmp450 = icmp sgt i32 %stack_var_-1628.075, %tmp449
  br i1 %tmp450, label %block_7e3d, label %block_8057

block_8057:                                       ; preds = %block_8042
  %tmp451 = icmp ult i64 %r13.463, %tmp343
  br i1 %tmp451, label %block_8094, label %block_8088

block_8088:                                       ; preds = %block_8057
  br label %block_811a

block_8094:                                       ; preds = %block_8057
  %tmp452 = inttoptr i64 %r13.463 to i32*
  %tmp453 = load i32* %tmp452
  %tmp454 = icmp ugt i32 %tmp225, %tmp453
  br i1 %tmp454, label %block_80a0, label %block_80ce

block_80a0:                                       ; preds = %block_8094
  %tmp455 = load i32* %tmp452
  %tmp456 = icmp ugt i32 %tmp455, 255
  br i1 %tmp456, label %block_80b2, label %block_80ab

block_80ab:                                       ; preds = %block_80a0
  br label %block_80b7

block_80b2:                                       ; preds = %block_80a0
  br label %block_80b7

block_80b7:                                       ; preds = %block_80b2, %block_80ab
  %rax.4 = phi i64 [ 15, %block_80b2 ], [ 16, %block_80ab ]
  %tmp457 = trunc i64 %rax.4 to i8
  %tmp458 = load i32* %tmp452
  %tmp459 = trunc i32 %tmp458 to i16
  %tmp460 = sext i16 %tmp459 to i64
  %tmp461 = add i64 %r13.463, 4
  br label %block_811a

block_80ce:                                       ; preds = %block_8094
  %tmp462 = load i32* %tmp452
  %tmp463 = sub i32 %tmp462, %tmp225
  %tmp464 = zext i32 %tmp463 to i64
  %tmp465 = shl nuw nsw i64 %tmp464, 1
  %tmp466 = add i64 %tmp465, %tmp344
  %tmp467 = inttoptr i64 %tmp466 to i16*
  %tmp468 = load i16* %tmp467
  %tmp469 = trunc i16 %tmp468 to i8
  %tmp470 = add i64 %r13.463, 4
  %tmp471 = load i32* %tmp452
  %tmp472 = sub i32 %tmp471, %tmp225
  %tmp473 = zext i32 %tmp472 to i64
  %tmp474 = shl nuw nsw i64 %tmp473, 1
  %tmp475 = add i64 %tmp474, %tmp345
  %tmp476 = inttoptr i64 %tmp475 to i16*
  %tmp477 = load i16* %tmp476
  %tmp478 = sext i16 %tmp477 to i64
  br label %block_811a

block_811a:                                       ; preds = %block_80ce, %block_80b7, %block_8088
  %stack_var_-1528.0 = phi i8 [ %tmp469, %block_80ce ], [ %tmp457, %block_80b7 ], [ 99, %block_8088 ]
  %stack_var_-1520.1 = phi i64 [ %tmp478, %block_80ce ], [ %tmp460, %block_80b7 ], [ %stack_var_-1520.0.ph, %block_8088 ]
  %r13.3 = phi i64 [ %tmp470, %block_80ce ], [ %tmp461, %block_80b7 ], [ %r13.463, %block_8088 ]
  %tmp479 = sub i32 %stack_var_-1628.075, %tmp448
  %tmp480 = and i32 %tmp479, 31
  %tmp481 = icmp eq i32 %tmp480, 0
  br i1 %tmp481, label %bb485, label %bb482

bb482:                                            ; preds = %block_811a
  %tmp483 = shl i32 1, %tmp480
  %tmp484 = zext i32 %tmp483 to i64
  br label %bb485

bb485:                                            ; preds = %block_811a, %bb482
  %rdx.0 = phi i64 [ 1, %block_811a ], [ %tmp484, %bb482 ]
  %tmp486 = trunc i64 %rdx.0 to i32
  %tmp487 = and i32 %tmp448, 31
  %tmp488 = icmp eq i32 %tmp487, 0
  br i1 %tmp488, label %bb492, label %bb489

bb489:                                            ; preds = %bb485
  %tmp490 = lshr i32 %tmp544, %tmp487
  %tmp491 = zext i32 %tmp490 to i64
  br label %bb492

bb492:                                            ; preds = %bb485, %bb489
  %rbx.6 = phi i64 [ %tmp545, %bb485 ], [ %tmp491, %bb489 ]
  %tmp493 = trunc i64 %rbx.6 to i32
  %tmp494 = icmp ult i32 %tmp493, %stack_var_-1544.0
  br i1 %tmp494, label %block_813e.lr.ph, label %block_816f

block_813e.lr.ph:                                 ; preds = %bb492
  %tmp495 = sext i8 %stack_var_-1528.0 to i64
  br label %block_813e

block_813e:                                       ; preds = %block_813e.lr.ph, %block_813e
  %tmp496 = phi i32 [ %tmp493, %block_813e.lr.ph ], [ %tmp503, %block_813e ]
  %rbx.753 = phi i64 [ %rbx.6, %block_813e.lr.ph ], [ %tmp504, %block_813e ]
  %tmp497 = shl nsw i64 %rbx.753, 4
  %tmp498 = and i64 %tmp497, 68719476720
  %tmp499 = add i64 %tmp498, %r14.0
  %tmp500 = inttoptr i64 %tmp499 to i64*
  store i64 %tmp495, i64* %tmp500
  %tmp501 = add i64 %tmp499, 8
  %tmp502 = inttoptr i64 %tmp501 to i64*
  store i64 %stack_var_-1520.1, i64* %tmp502
  %tmp503 = add i32 %tmp496, %tmp486
  %tmp504 = zext i32 %tmp503 to i64
  %tmp505 = icmp ult i32 %tmp503, %stack_var_-1544.0
  br i1 %tmp505, label %block_813e, label %block_816f

block_816f:                                       ; preds = %block_813e, %bb492
  %tmp506 = and i64 %r12.562, %.
  %tmp507 = icmp eq i64 %tmp506, 0
  br i1 %tmp507, label %block_8195, label %block_8187

block_8187:                                       ; preds = %block_816f, %block_8187
  %r12.455 = phi i64 [ %tmp509, %block_8187 ], [ %r12.562, %block_816f ]
  %rbx.854 = phi i64 [ %tmp512, %block_8187 ], [ %., %block_816f ]
  %tmp508 = xor i64 %rbx.854, %r12.455
  %tmp509 = and i64 %tmp508, 4294967295
  %tmp510 = trunc i64 %rbx.854 to i32
  %tmp511 = lshr i32 %tmp510, 1
  %tmp512 = zext i32 %tmp511 to i64
  %tmp513 = and i64 %tmp512, %tmp508
  %tmp514 = icmp eq i64 %tmp513, 0
  br i1 %tmp514, label %block_8195, label %block_8187

block_8195:                                       ; preds = %block_8187, %block_816f
  %r12.4.lcssa = phi i64 [ %r12.562, %block_816f ], [ %tmp509, %block_8187 ]
  %rbx.8.lcssa = phi i64 [ %., %block_816f ], [ %tmp512, %block_8187 ]
  %tmp515 = xor i64 %rbx.8.lcssa, %r12.4.lcssa
  %tmp516 = trunc i64 %tmp515 to i32
  br label %block_81a8

block_819a:                                       ; preds = %bb526
  %tmp517 = add i32 %stack_var_-1556.1, -1
  %tmp518 = sub i32 %tmp520, %stack_var_-1552.1
  %tmp519 = zext i32 %tmp518 to i64
  br label %block_81a8

block_81a8:                                       ; preds = %block_819a, %block_8195
  %stack_var_-1556.1 = phi i32 [ %stack_var_-1556.0, %block_8195 ], [ %tmp517, %block_819a ]
  %r15.1 = phi i64 [ %r15.0, %block_8195 ], [ %tmp519, %block_819a ]
  %tmp520 = trunc i64 %r15.1 to i32
  %tmp521 = and i32 %tmp520, 31
  %tmp522 = icmp eq i32 %tmp521, 0
  br i1 %tmp522, label %bb526, label %bb523

bb523:                                            ; preds = %block_81a8
  %tmp524 = shl i32 1, %tmp521
  %tmp525 = zext i32 %tmp524 to i64
  br label %bb526

bb526:                                            ; preds = %block_81a8, %bb523
  %rax.5 = phi i64 [ 1, %block_81a8 ], [ %tmp525, %bb523 ]
  %tmp527 = trunc i64 %rax.5 to i32
  %tmp528 = add i32 %tmp527, -1
  %tmp529 = and i32 %tmp528, %tmp516
  %tmp530 = sext i32 %stack_var_-1556.1 to i64
  %tmp531 = shl nsw i64 %tmp530, 2
  %tmp532 = add i64 %tmp531, %tmp309
  %tmp533 = inttoptr i64 %tmp532 to i32*
  %tmp534 = load i32* %tmp533
  %tmp535 = icmp eq i32 %tmp529, %tmp534
  br i1 %tmp535, label %block_81cd.loopexit, label %block_819a

block_81cd.loopexit:                              ; preds = %bb526
  %tmp536 = and i64 %tmp515, 4294967295
  %tmp537 = add nuw nsw i64 %indvars.iv, 4294967295
  %tmp538 = trunc i64 %tmp537 to i32
  %tmp539 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %tmp539, label %block_81e4, label %block_8042.preheader

block_8042.preheader:                             ; preds = %block_8042.preheader.lr.ph, %block_81cd.loopexit
  %indvars.iv = phi i64 [ %tmp363, %block_8042.preheader.lr.ph ], [ %indvars.iv.next, %block_81cd.loopexit ]
  %tmp540 = phi i32 [ %tmp354, %block_8042.preheader.lr.ph ], [ %tmp538, %block_81cd.loopexit ]
  %r15.265 = phi i64 [ %r15.383, %block_8042.preheader.lr.ph ], [ %r15.1, %block_81cd.loopexit ]
  %r14.164 = phi i64 [ %r14.282, %block_8042.preheader.lr.ph ], [ %r14.0, %block_81cd.loopexit ]
  %r13.463 = phi i64 [ %r13.581, %block_8042.preheader.lr.ph ], [ %r13.3, %block_81cd.loopexit ]
  %r12.562 = phi i64 [ %r12.680, %block_8042.preheader.lr.ph ], [ %tmp536, %block_81cd.loopexit ]
  %stack_var_-1520.261 = phi i64 [ %stack_var_-1520.379, %block_8042.preheader.lr.ph ], [ %stack_var_-1520.1, %block_81cd.loopexit ]
  %stack_var_-1544.160 = phi i32 [ %stack_var_-1544.278, %block_8042.preheader.lr.ph ], [ %stack_var_-1544.0, %block_81cd.loopexit ]
  %stack_var_-1556.259 = phi i32 [ %stack_var_-1556.377, %block_8042.preheader.lr.ph ], [ %stack_var_-1556.1, %block_81cd.loopexit ]
  %stack_var_-1616.158 = phi i64 [ %stack_var_-1616.274, %block_8042.preheader.lr.ph ], [ %stack_var_-1616.0, %block_81cd.loopexit ]
  %tmp541 = add i32 %tmp540, 1
  %tmp542 = trunc i64 %indvars.iv to i32
  %tmp543 = xor i32 %tmp542, -1
  %tmp544 = trunc i64 %r12.562 to i32
  %tmp545 = and i64 %r12.562, 4294967295
  br label %block_8042.outer

block_81e4:                                       ; preds = %block_81cd.loopexit, %block_7e24
  %r15.2.lcssa = phi i64 [ %r15.383, %block_7e24 ], [ %r15.1, %block_81cd.loopexit ]
  %r14.1.lcssa = phi i64 [ %r14.282, %block_7e24 ], [ %r14.0, %block_81cd.loopexit ]
  %r13.4.lcssa = phi i64 [ %r13.581, %block_7e24 ], [ %r13.3, %block_81cd.loopexit ]
  %r12.5.lcssa = phi i64 [ %r12.680, %block_7e24 ], [ %tmp536, %block_81cd.loopexit ]
  %stack_var_-1520.2.lcssa = phi i64 [ %stack_var_-1520.379, %block_7e24 ], [ %stack_var_-1520.1, %block_81cd.loopexit ]
  %stack_var_-1544.1.lcssa = phi i32 [ %stack_var_-1544.278, %block_7e24 ], [ %stack_var_-1544.0, %block_81cd.loopexit ]
  %stack_var_-1556.2.lcssa = phi i32 [ %stack_var_-1556.377, %block_7e24 ], [ %stack_var_-1556.1, %block_81cd.loopexit ]
  %stack_var_-1616.1.lcssa = phi i64 [ %stack_var_-1616.274, %block_7e24 ], [ %stack_var_-1616.0, %block_81cd.loopexit ]
  %tmp546 = add i32 %stack_var_-1628.075, 1
  %tmp547 = icmp sgt i32 %tmp546, %tmp264
  br i1 %tmp547, label %block_81fd, label %block_7e24

block_81fd:                                       ; preds = %block_81e4, %block_7dc6
  %tmp548 = icmp eq i32 %stack_var_-1548.0.lcssa, %tmp288
  br i1 %tmp548, label %block_8216, label %block_8206

block_8206:                                       ; preds = %block_81fd
  %tmp549 = icmp eq i32 %tmp264, 1
  br i1 %tmp549, label %block_8216, label %block_820f

block_820f:                                       ; preds = %block_8206
  br label %block_821b

block_8216:                                       ; preds = %block_8206, %block_81fd
  br label %block_821b

block_821b:                                       ; preds = %block_8216, %block_7f6d, %block_820f, %block_7ccd, %block_7d08, %block_7bb2, %block_7ba8
  %rax.6 = phi i64 [ 2, %block_7ccd ], [ 3, %block_7f6d ], [ 0, %block_8216 ], [ 1, %block_820f ], [ 2, %block_7d08 ], [ 0, %block_7bb2 ], [ 3, %block_7ba8 ]
  %tmp550 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp551 = icmp eq i64 %tmp204, %tmp550
  br i1 %tmp551, label %block_822f, label %block_822a

block_822a:                                       ; preds = %block_821b
  call void @__stack_chk_fail()
  unreachable

block_822f:                                       ; preds = %block_821b
  ret i64 %rax.6
}

define i64 @huft_free(i64* %arg1) {
block_8241:
  %tmp13 = ptrtoint i64* %arg1 to i64
  %tmp20 = icmp eq i64 %tmp13, 0
  br i1 %tmp20, label %block_826e, label %block_8256

block_8256:                                       ; preds = %block_8241, %block_8256
  %rbx.01 = phi i64 [ %tmp24, %block_8256 ], [ %tmp13, %block_8241 ]
  %tmp21 = add i64 %rbx.01, -16
  %tmp22 = add i64 %rbx.01, -8
  %tmp23 = inttoptr i64 %tmp22 to i64*
  %tmp24 = load i64* %tmp23
  %tmp25 = inttoptr i64 %tmp21 to i64*
  call void @free(i64* %tmp25)
  %tmp26 = icmp eq i64 %tmp24, 0
  br i1 %tmp26, label %block_826e, label %block_8256

block_826e:                                       ; preds = %block_8256, %block_8241
  ret i64 0
}

define i64 @inflate_codes(i8* %arg1, i64 %arg2, i32 %arg3, i32 %arg4) {
block_827c:
  %tmp103 = load i64* @global_var_216f98
  %tmp104 = load i32* bitcast (i64* @global_var_216fa0 to i32*)
  %tmp105 = zext i32 %tmp104 to i64
  %tmp106 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp107 = inttoptr i32 %tmp106 to i64*
  %tmp108 = sext i32 %arg3 to i64
  %tmp109 = shl nsw i64 %tmp108, 1
  %tmp110 = add i64 %tmp109, ptrtoint (i64* @global_var_2162e0 to i64)
  %tmp111 = inttoptr i64 %tmp110 to i16*
  %tmp112 = load i16* %tmp111
  %tmp113 = zext i16 %tmp112 to i32
  %tmp114 = sext i32 %arg4 to i64
  %tmp115 = shl nsw i64 %tmp114, 1
  %tmp116 = add i64 %tmp115, ptrtoint (i64* @global_var_2162e0 to i64)
  %tmp117 = inttoptr i64 %tmp116 to i16*
  %tmp118 = load i16* %tmp117
  %tmp119 = zext i16 %tmp118 to i32
  %tmp120 = ptrtoint i8* %arg1 to i64
  br label %block_8335.outer

block_8335.outer:                                 ; preds = %block_8486, %block_845c, %block_8824, %block_827c
  %stack_var_-60.0.ph = phi i64* [ %tmp107, %block_827c ], [ null, %block_8486 ], [ %tmp224, %block_845c ], [ %stack_var_-60.4, %block_8824 ]
  %rbx.0.ph = phi i64 [ %tmp105, %block_827c ], [ %tmp215, %block_8486 ], [ %tmp215, %block_845c ], [ %tmp461, %block_8824 ]
  %r13.0.ph = phi i64 [ %tmp103, %block_827c ], [ %tmp210, %block_8486 ], [ %tmp210, %block_845c ], [ %tmp460, %block_8824 ]
  %tmp121 = trunc i64 %rbx.0.ph to i32
  %tmp122 = icmp ult i32 %tmp121, %arg3
  br i1 %tmp122, label %block_82e3.lr.ph, label %block_833c

block_82e3.lr.ph:                                 ; preds = %block_8335.outer
  %tmp123 = ptrtoint i64* %stack_var_-60.0.ph to i32
  br label %block_82e3

block_82e3:                                       ; preds = %block_82e3.lr.ph, %block_832a
  %tmp124 = phi i32 [ %tmp121, %block_82e3.lr.ph ], [ %tmp139, %block_832a ]
  %r13.020 = phi i64 [ %r13.0.ph, %block_82e3.lr.ph ], [ %tmp138, %block_832a ]
  %rbx.019 = phi i64 [ %rbx.0.ph, %block_82e3.lr.ph ], [ %tmp140, %block_832a ]
  %tmp125 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp126 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp127 = icmp ult i32 %tmp125, %tmp126
  br i1 %tmp127, label %block_82f3, label %block_8314

block_82f3:                                       ; preds = %block_82e3
  %tmp128 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp129 = zext i32 %tmp128 to i64
  %tmp130 = add i64 %tmp129, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp131 = inttoptr i64 %tmp130 to i8*
  %tmp132 = load i8* %tmp131
  %tmp133 = zext i8 %tmp132 to i64
  br label %block_832a

block_8314:                                       ; preds = %block_82e3
  store i32 %tmp123, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp134 = call i64 @fill_inbuf(i32 0)
  %tmp135 = and i64 %tmp134, 255
  br label %block_832a

block_832a:                                       ; preds = %block_8314, %block_82f3
  %rax.0 = phi i64 [ %tmp135, %block_8314 ], [ %tmp133, %block_82f3 ]
  %tmp136 = and i64 %rbx.019, 63
  %tmp137 = shl i64 %rax.0, %tmp136
  %tmp138 = or i64 %tmp137, %r13.020
  %tmp139 = add i32 %tmp124, 8
  %tmp140 = zext i32 %tmp139 to i64
  %tmp141 = icmp ult i32 %tmp139, %arg3
  br i1 %tmp141, label %block_82e3, label %block_833c

block_833c:                                       ; preds = %block_832a, %block_8335.outer
  %r13.0.lcssa = phi i64 [ %r13.0.ph, %block_8335.outer ], [ %tmp138, %block_832a ]
  %rbx.0.lcssa = phi i64 [ %rbx.0.ph, %block_8335.outer ], [ %tmp140, %block_832a ]
  %tmp142 = trunc i64 %r13.0.lcssa to i32
  %tmp143 = and i32 %tmp142, %tmp113
  %tmp144 = zext i32 %tmp143 to i64
  %tmp145 = shl nuw nsw i64 %tmp144, 4
  %tmp146 = add i64 %tmp145, %tmp120
  %tmp147 = inttoptr i64 %tmp146 to i8*
  %tmp148 = load i8* %tmp147
  %tmp149 = zext i8 %tmp148 to i64
  %tmp150 = icmp ult i8 %tmp148, 17
  br i1 %tmp150, label %block_8439, label %block_836b.preheader

block_836b.preheader:                             ; preds = %block_833c
  %tmp151 = ptrtoint i64* %stack_var_-60.0.ph to i32
  br label %block_836b

block_836b:                                       ; preds = %block_836b.preheader, %block_83f5
  %stack_var_-48.0 = phi i8* [ %tmp200, %block_83f5 ], [ %tmp147, %block_836b.preheader ]
  %rbx.1 = phi i64 [ %rbx.2.lcssa, %block_83f5 ], [ %rbx.0.lcssa, %block_836b.preheader ]
  %r12.0 = phi i64 [ %tmp202, %block_83f5 ], [ %tmp149, %block_836b.preheader ]
  %r13.1 = phi i64 [ %r13.3.lcssa, %block_83f5 ], [ %r13.0.lcssa, %block_836b.preheader ]
  %tmp152 = icmp eq i64 %r12.0, 99
  br i1 %tmp152, label %block_8371, label %block_837b

block_8371:                                       ; preds = %block_836b
  br label %block_8845

block_837b:                                       ; preds = %block_836b
  %tmp153 = ptrtoint i8* %stack_var_-48.0 to i64
  %tmp154 = add i64 %tmp153, 1
  %tmp155 = inttoptr i64 %tmp154 to i8*
  %tmp156 = load i8* %tmp155
  %tmp157 = zext i8 %tmp156 to i64
  %tmp158 = and i64 %tmp157, 63
  %tmp159 = lshr i64 %r13.1, %tmp158
  %tmp160 = load i8* %tmp155
  %tmp161 = trunc i64 %rbx.1 to i32
  %tmp162 = zext i8 %tmp160 to i32
  %tmp163 = sub i32 %tmp161, %tmp162
  %tmp164 = zext i32 %tmp163 to i64
  %tmp165 = trunc i64 %r12.0 to i32
  %tmp166 = add nsw i32 %tmp165, -16
  %tmp167 = icmp ult i32 %tmp163, %tmp166
  br i1 %tmp167, label %block_839e, label %block_83f5

block_839e:                                       ; preds = %block_837b, %block_83e5
  %tmp168 = phi i32 [ %tmp183, %block_83e5 ], [ %tmp163, %block_837b ]
  %r13.323 = phi i64 [ %tmp182, %block_83e5 ], [ %tmp159, %block_837b ]
  %rbx.222 = phi i64 [ %tmp184, %block_83e5 ], [ %tmp164, %block_837b ]
  %tmp169 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp170 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp171 = icmp ult i32 %tmp169, %tmp170
  br i1 %tmp171, label %block_83ae, label %block_83cf

block_83ae:                                       ; preds = %block_839e
  %tmp172 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp173 = zext i32 %tmp172 to i64
  %tmp174 = add i64 %tmp173, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp175 = inttoptr i64 %tmp174 to i8*
  %tmp176 = load i8* %tmp175
  %tmp177 = zext i8 %tmp176 to i64
  br label %block_83e5

block_83cf:                                       ; preds = %block_839e
  store i32 %tmp151, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp178 = call i64 @fill_inbuf(i32 0)
  %tmp179 = and i64 %tmp178, 255
  br label %block_83e5

block_83e5:                                       ; preds = %block_83cf, %block_83ae
  %rax.2 = phi i64 [ %tmp179, %block_83cf ], [ %tmp177, %block_83ae ]
  %tmp180 = and i64 %rbx.222, 63
  %tmp181 = shl i64 %rax.2, %tmp180
  %tmp182 = or i64 %tmp181, %r13.323
  %tmp183 = add i32 %tmp168, 8
  %tmp184 = zext i32 %tmp183 to i64
  %tmp185 = icmp ult i32 %tmp183, %tmp166
  br i1 %tmp185, label %block_839e, label %block_83f5

block_83f5:                                       ; preds = %block_83e5, %block_837b
  %r13.3.lcssa = phi i64 [ %tmp159, %block_837b ], [ %tmp182, %block_83e5 ]
  %rbx.2.lcssa = phi i64 [ %tmp164, %block_837b ], [ %tmp184, %block_83e5 ]
  %tmp186 = add i64 %tmp153, 8
  %tmp187 = inttoptr i64 %tmp186 to i64*
  %tmp188 = load i64* %tmp187
  %tmp189 = trunc i64 %r13.3.lcssa to i32
  %tmp190 = zext i32 %tmp166 to i64
  %tmp191 = shl nuw nsw i64 %tmp190, 1
  %tmp192 = add i64 %tmp191, ptrtoint (i64* @global_var_2162e0 to i64)
  %tmp193 = inttoptr i64 %tmp192 to i16*
  %tmp194 = load i16* %tmp193
  %tmp195 = zext i16 %tmp194 to i32
  %tmp196 = and i32 %tmp195, %tmp189
  %tmp197 = zext i32 %tmp196 to i64
  %tmp198 = shl nuw nsw i64 %tmp197, 4
  %tmp199 = add i64 %tmp198, %tmp188
  %tmp200 = inttoptr i64 %tmp199 to i8*
  %tmp201 = load i8* %tmp200
  %tmp202 = zext i8 %tmp201 to i64
  %tmp203 = icmp ugt i8 %tmp201, 16
  br i1 %tmp203, label %block_836b, label %block_8439

block_8439:                                       ; preds = %block_83f5, %block_833c
  %stack_var_-48.1 = phi i8* [ %tmp147, %block_833c ], [ %tmp200, %block_83f5 ]
  %rbx.3 = phi i64 [ %rbx.0.lcssa, %block_833c ], [ %rbx.2.lcssa, %block_83f5 ]
  %r12.1 = phi i64 [ %tmp149, %block_833c ], [ %tmp202, %block_83f5 ]
  %r13.4 = phi i64 [ %r13.0.lcssa, %block_833c ], [ %r13.3.lcssa, %block_83f5 ]
  %tmp204 = ptrtoint i8* %stack_var_-48.1 to i64
  %tmp205 = add i64 %tmp204, 1
  %tmp206 = inttoptr i64 %tmp205 to i8*
  %tmp207 = load i8* %tmp206
  %tmp208 = zext i8 %tmp207 to i64
  %tmp209 = and i64 %tmp208, 63
  %tmp210 = lshr i64 %r13.4, %tmp209
  %tmp211 = load i8* %tmp206
  %tmp212 = trunc i64 %rbx.3 to i32
  %tmp213 = zext i8 %tmp211 to i32
  %tmp214 = sub i32 %tmp212, %tmp213
  %tmp215 = zext i32 %tmp214 to i64
  %tmp216 = icmp eq i64 %r12.1, 16
  br i1 %tmp216, label %block_845c, label %block_84a0

block_845c:                                       ; preds = %block_8439
  %tmp217 = add i64 %tmp204, 8
  %tmp218 = inttoptr i64 %tmp217 to i16*
  %tmp219 = load i16* %tmp218
  %tmp220 = ptrtoint i64* %stack_var_-60.0.ph to i32
  %tmp221 = zext i32 %tmp220 to i64
  %tmp222 = add nuw nsw i64 %tmp221, 1
  %tmp223 = trunc i64 %tmp222 to i32
  %tmp224 = inttoptr i32 %tmp223 to i64*
  %tmp225 = trunc i16 %tmp219 to i8
  %tmp226 = add i64 %tmp221, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp227 = inttoptr i64 %tmp226 to i8*
  store i8 %tmp225, i8* %tmp227
  %tmp228 = ptrtoint i64* %tmp224 to i32
  %tmp229 = icmp eq i32 %tmp228, 32768
  br i1 %tmp229, label %block_8486, label %block_8335.outer

block_8486:                                       ; preds = %block_845c
  store i32 32768, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp230 = call i64 @flush_window()
  br label %block_8335.outer

block_84a0:                                       ; preds = %block_8439
  %tmp231 = icmp eq i64 %r12.1, 15
  br i1 %tmp231, label %block_8829, label %block_84aa

block_84aa:                                       ; preds = %block_84a0
  %tmp232 = trunc i64 %r12.1 to i32
  %tmp233 = icmp ult i32 %tmp214, %tmp232
  br i1 %tmp233, label %block_84ac.lr.ph, label %block_8503

block_84ac.lr.ph:                                 ; preds = %block_84aa
  %tmp234 = ptrtoint i64* %stack_var_-60.0.ph to i32
  br label %block_84ac

block_84ac:                                       ; preds = %block_84ac.lr.ph, %block_84f3
  %tmp235 = phi i32 [ %tmp214, %block_84ac.lr.ph ], [ %tmp250, %block_84f3 ]
  %r13.627 = phi i64 [ %tmp210, %block_84ac.lr.ph ], [ %tmp249, %block_84f3 ]
  %rbx.426 = phi i64 [ %tmp215, %block_84ac.lr.ph ], [ %tmp251, %block_84f3 ]
  %tmp236 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp237 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp238 = icmp ult i32 %tmp236, %tmp237
  br i1 %tmp238, label %block_84bc, label %block_84dd

block_84bc:                                       ; preds = %block_84ac
  %tmp239 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp240 = zext i32 %tmp239 to i64
  %tmp241 = add i64 %tmp240, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp242 = inttoptr i64 %tmp241 to i8*
  %tmp243 = load i8* %tmp242
  %tmp244 = zext i8 %tmp243 to i64
  br label %block_84f3

block_84dd:                                       ; preds = %block_84ac
  store i32 %tmp234, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp245 = call i64 @fill_inbuf(i32 0)
  %tmp246 = and i64 %tmp245, 255
  br label %block_84f3

block_84f3:                                       ; preds = %block_84dd, %block_84bc
  %rax.4 = phi i64 [ %tmp246, %block_84dd ], [ %tmp244, %block_84bc ]
  %tmp247 = and i64 %rbx.426, 63
  %tmp248 = shl i64 %rax.4, %tmp247
  %tmp249 = or i64 %tmp248, %r13.627
  %tmp250 = add i32 %tmp235, 8
  %tmp251 = zext i32 %tmp250 to i64
  %tmp252 = icmp ult i32 %tmp250, %tmp232
  br i1 %tmp252, label %block_84ac, label %block_8503

block_8503:                                       ; preds = %block_84f3, %block_84aa
  %.lcssa5 = phi i32 [ %tmp214, %block_84aa ], [ %tmp250, %block_84f3 ]
  %r13.6.lcssa = phi i64 [ %tmp210, %block_84aa ], [ %tmp249, %block_84f3 ]
  %tmp253 = add i64 %tmp204, 8
  %tmp254 = inttoptr i64 %tmp253 to i16*
  %tmp255 = load i16* %tmp254
  %tmp256 = trunc i64 %r13.6.lcssa to i32
  %tmp257 = shl nuw nsw i64 %r12.1, 1
  %tmp258 = add i64 %tmp257, ptrtoint (i64* @global_var_2162e0 to i64)
  %tmp259 = inttoptr i64 %tmp258 to i16*
  %tmp260 = load i16* %tmp259
  %tmp261 = zext i16 %tmp260 to i32
  %tmp262 = and i32 %tmp261, %tmp256
  %tmp263 = zext i16 %tmp255 to i32
  %tmp264 = add nuw nsw i32 %tmp262, %tmp263
  %tmp265 = inttoptr i32 %tmp264 to i64*
  %tmp266 = and i64 %r12.1, 63
  %tmp267 = lshr i64 %r13.6.lcssa, %tmp266
  %tmp268 = sub i32 %.lcssa5, %tmp232
  %tmp269 = zext i32 %tmp268 to i64
  %tmp270 = icmp ult i32 %tmp268, %arg4
  br i1 %tmp270, label %block_8538.lr.ph, label %block_8591

block_8538.lr.ph:                                 ; preds = %block_8503
  %tmp271 = ptrtoint i64* %stack_var_-60.0.ph to i32
  br label %block_8538

block_8538:                                       ; preds = %block_8538.lr.ph, %block_857f
  %tmp272 = phi i32 [ %tmp268, %block_8538.lr.ph ], [ %tmp287, %block_857f ]
  %r13.832 = phi i64 [ %tmp267, %block_8538.lr.ph ], [ %tmp286, %block_857f ]
  %rbx.531 = phi i64 [ %tmp269, %block_8538.lr.ph ], [ %tmp288, %block_857f ]
  %tmp273 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp274 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp275 = icmp ult i32 %tmp273, %tmp274
  br i1 %tmp275, label %block_8548, label %block_8569

block_8548:                                       ; preds = %block_8538
  %tmp276 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp277 = zext i32 %tmp276 to i64
  %tmp278 = add i64 %tmp277, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp279 = inttoptr i64 %tmp278 to i8*
  %tmp280 = load i8* %tmp279
  %tmp281 = zext i8 %tmp280 to i64
  br label %block_857f

block_8569:                                       ; preds = %block_8538
  store i32 %tmp271, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp282 = call i64 @fill_inbuf(i32 0)
  %tmp283 = and i64 %tmp282, 255
  br label %block_857f

block_857f:                                       ; preds = %block_8569, %block_8548
  %rax.6 = phi i64 [ %tmp283, %block_8569 ], [ %tmp281, %block_8548 ]
  %tmp284 = and i64 %rbx.531, 63
  %tmp285 = shl i64 %rax.6, %tmp284
  %tmp286 = or i64 %tmp285, %r13.832
  %tmp287 = add i32 %tmp272, 8
  %tmp288 = zext i32 %tmp287 to i64
  %tmp289 = icmp ult i32 %tmp287, %arg4
  br i1 %tmp289, label %block_8538, label %block_8591

block_8591:                                       ; preds = %block_857f, %block_8503
  %r13.8.lcssa = phi i64 [ %tmp267, %block_8503 ], [ %tmp286, %block_857f ]
  %rbx.5.lcssa = phi i64 [ %tmp269, %block_8503 ], [ %tmp288, %block_857f ]
  %tmp290 = trunc i64 %r13.8.lcssa to i32
  %tmp291 = and i32 %tmp290, %tmp119
  %tmp292 = zext i32 %tmp291 to i64
  %tmp293 = shl nuw nsw i64 %tmp292, 4
  %tmp294 = add i64 %tmp293, %arg2
  %tmp295 = inttoptr i64 %tmp294 to i8*
  %tmp296 = load i8* %tmp295
  %tmp297 = zext i8 %tmp296 to i64
  %tmp298 = icmp ult i8 %tmp296, 17
  br i1 %tmp298, label %block_868e, label %block_85c0.preheader

block_85c0.preheader:                             ; preds = %block_8591
  %tmp299 = ptrtoint i64* %stack_var_-60.0.ph to i32
  br label %block_85c0

block_85c0:                                       ; preds = %block_85c0.preheader, %block_864a
  %stack_var_-48.2 = phi i8* [ %tmp348, %block_864a ], [ %tmp295, %block_85c0.preheader ]
  %rbx.6 = phi i64 [ %rbx.7.lcssa, %block_864a ], [ %rbx.5.lcssa, %block_85c0.preheader ]
  %r12.2 = phi i64 [ %tmp350, %block_864a ], [ %tmp297, %block_85c0.preheader ]
  %r13.9 = phi i64 [ %r13.11.lcssa, %block_864a ], [ %r13.8.lcssa, %block_85c0.preheader ]
  %tmp300 = icmp eq i64 %r12.2, 99
  br i1 %tmp300, label %block_85c6, label %block_85d0

block_85c6:                                       ; preds = %block_85c0
  br label %block_8845

block_85d0:                                       ; preds = %block_85c0
  %tmp301 = ptrtoint i8* %stack_var_-48.2 to i64
  %tmp302 = add i64 %tmp301, 1
  %tmp303 = inttoptr i64 %tmp302 to i8*
  %tmp304 = load i8* %tmp303
  %tmp305 = zext i8 %tmp304 to i64
  %tmp306 = and i64 %tmp305, 63
  %tmp307 = lshr i64 %r13.9, %tmp306
  %tmp308 = load i8* %tmp303
  %tmp309 = trunc i64 %rbx.6 to i32
  %tmp310 = zext i8 %tmp308 to i32
  %tmp311 = sub i32 %tmp309, %tmp310
  %tmp312 = zext i32 %tmp311 to i64
  %tmp313 = trunc i64 %r12.2 to i32
  %tmp314 = add nsw i32 %tmp313, -16
  %tmp315 = icmp ult i32 %tmp311, %tmp314
  br i1 %tmp315, label %block_85f3, label %block_864a

block_85f3:                                       ; preds = %block_85d0, %block_863a
  %tmp316 = phi i32 [ %tmp331, %block_863a ], [ %tmp311, %block_85d0 ]
  %r13.1136 = phi i64 [ %tmp330, %block_863a ], [ %tmp307, %block_85d0 ]
  %rbx.735 = phi i64 [ %tmp332, %block_863a ], [ %tmp312, %block_85d0 ]
  %tmp317 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp318 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp319 = icmp ult i32 %tmp317, %tmp318
  br i1 %tmp319, label %block_8603, label %block_8624

block_8603:                                       ; preds = %block_85f3
  %tmp320 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp321 = zext i32 %tmp320 to i64
  %tmp322 = add i64 %tmp321, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp323 = inttoptr i64 %tmp322 to i8*
  %tmp324 = load i8* %tmp323
  %tmp325 = zext i8 %tmp324 to i64
  br label %block_863a

block_8624:                                       ; preds = %block_85f3
  store i32 %tmp299, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp326 = call i64 @fill_inbuf(i32 0)
  %tmp327 = and i64 %tmp326, 255
  br label %block_863a

block_863a:                                       ; preds = %block_8624, %block_8603
  %rax.8 = phi i64 [ %tmp327, %block_8624 ], [ %tmp325, %block_8603 ]
  %tmp328 = and i64 %rbx.735, 63
  %tmp329 = shl i64 %rax.8, %tmp328
  %tmp330 = or i64 %tmp329, %r13.1136
  %tmp331 = add i32 %tmp316, 8
  %tmp332 = zext i32 %tmp331 to i64
  %tmp333 = icmp ult i32 %tmp331, %tmp314
  br i1 %tmp333, label %block_85f3, label %block_864a

block_864a:                                       ; preds = %block_863a, %block_85d0
  %r13.11.lcssa = phi i64 [ %tmp307, %block_85d0 ], [ %tmp330, %block_863a ]
  %rbx.7.lcssa = phi i64 [ %tmp312, %block_85d0 ], [ %tmp332, %block_863a ]
  %tmp334 = add i64 %tmp301, 8
  %tmp335 = inttoptr i64 %tmp334 to i64*
  %tmp336 = load i64* %tmp335
  %tmp337 = trunc i64 %r13.11.lcssa to i32
  %tmp338 = zext i32 %tmp314 to i64
  %tmp339 = shl nuw nsw i64 %tmp338, 1
  %tmp340 = add i64 %tmp339, ptrtoint (i64* @global_var_2162e0 to i64)
  %tmp341 = inttoptr i64 %tmp340 to i16*
  %tmp342 = load i16* %tmp341
  %tmp343 = zext i16 %tmp342 to i32
  %tmp344 = and i32 %tmp343, %tmp337
  %tmp345 = zext i32 %tmp344 to i64
  %tmp346 = shl nuw nsw i64 %tmp345, 4
  %tmp347 = add i64 %tmp346, %tmp336
  %tmp348 = inttoptr i64 %tmp347 to i8*
  %tmp349 = load i8* %tmp348
  %tmp350 = zext i8 %tmp349 to i64
  %tmp351 = icmp ugt i8 %tmp349, 16
  br i1 %tmp351, label %block_85c0, label %block_868e

block_868e:                                       ; preds = %block_864a, %block_8591
  %stack_var_-48.3 = phi i8* [ %tmp295, %block_8591 ], [ %tmp348, %block_864a ]
  %rbx.8 = phi i64 [ %rbx.5.lcssa, %block_8591 ], [ %rbx.7.lcssa, %block_864a ]
  %r12.3 = phi i64 [ %tmp297, %block_8591 ], [ %tmp350, %block_864a ]
  %r13.12 = phi i64 [ %r13.8.lcssa, %block_8591 ], [ %r13.11.lcssa, %block_864a ]
  %tmp352 = ptrtoint i8* %stack_var_-48.3 to i64
  %tmp353 = add i64 %tmp352, 1
  %tmp354 = inttoptr i64 %tmp353 to i8*
  %tmp355 = load i8* %tmp354
  %tmp356 = zext i8 %tmp355 to i64
  %tmp357 = and i64 %tmp356, 63
  %tmp358 = lshr i64 %r13.12, %tmp357
  %tmp359 = load i8* %tmp354
  %tmp360 = trunc i64 %rbx.8 to i32
  %tmp361 = zext i8 %tmp359 to i32
  %tmp362 = sub i32 %tmp360, %tmp361
  %tmp363 = trunc i64 %r12.3 to i32
  %tmp364 = icmp ult i32 %tmp362, %tmp363
  br i1 %tmp364, label %block_86ad.lr.ph, label %block_868e.block_8704_crit_edge

block_868e.block_8704_crit_edge:                  ; preds = %block_868e
  %.pre = ptrtoint i64* %stack_var_-60.0.ph to i32
  br label %block_8704

block_86ad.lr.ph:                                 ; preds = %block_868e
  %tmp365 = zext i32 %tmp362 to i64
  %tmp366 = ptrtoint i64* %stack_var_-60.0.ph to i32
  br label %block_86ad

block_86ad:                                       ; preds = %block_86ad.lr.ph, %block_86f4
  %tmp367 = phi i32 [ %tmp362, %block_86ad.lr.ph ], [ %tmp382, %block_86f4 ]
  %r13.1440 = phi i64 [ %tmp358, %block_86ad.lr.ph ], [ %tmp381, %block_86f4 ]
  %rbx.939 = phi i64 [ %tmp365, %block_86ad.lr.ph ], [ %tmp383, %block_86f4 ]
  %tmp368 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp369 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp370 = icmp ult i32 %tmp368, %tmp369
  br i1 %tmp370, label %block_86bd, label %block_86de

block_86bd:                                       ; preds = %block_86ad
  %tmp371 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp372 = zext i32 %tmp371 to i64
  %tmp373 = add i64 %tmp372, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp374 = inttoptr i64 %tmp373 to i8*
  %tmp375 = load i8* %tmp374
  %tmp376 = zext i8 %tmp375 to i64
  br label %block_86f4

block_86de:                                       ; preds = %block_86ad
  store i32 %tmp366, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp377 = call i64 @fill_inbuf(i32 0)
  %tmp378 = and i64 %tmp377, 255
  br label %block_86f4

block_86f4:                                       ; preds = %block_86de, %block_86bd
  %rax.10 = phi i64 [ %tmp378, %block_86de ], [ %tmp376, %block_86bd ]
  %tmp379 = and i64 %rbx.939, 63
  %tmp380 = shl i64 %rax.10, %tmp379
  %tmp381 = or i64 %tmp380, %r13.1440
  %tmp382 = add i32 %tmp367, 8
  %tmp383 = zext i32 %tmp382 to i64
  %tmp384 = icmp ult i32 %tmp382, %tmp363
  br i1 %tmp384, label %block_86ad, label %block_8704

block_8704:                                       ; preds = %block_86f4, %block_868e.block_8704_crit_edge
  %.pre-phi = phi i32 [ %.pre, %block_868e.block_8704_crit_edge ], [ %tmp366, %block_86f4 ]
  %.lcssa9 = phi i32 [ %tmp362, %block_868e.block_8704_crit_edge ], [ %tmp382, %block_86f4 ]
  %r13.14.lcssa = phi i64 [ %tmp358, %block_868e.block_8704_crit_edge ], [ %tmp381, %block_86f4 ]
  %tmp385 = add i64 %tmp352, 8
  %tmp386 = inttoptr i64 %tmp385 to i16*
  %tmp387 = load i16* %tmp386
  %tmp388 = zext i16 %tmp387 to i32
  %tmp389 = sub i32 %.pre-phi, %tmp388
  %tmp390 = trunc i64 %r13.14.lcssa to i32
  %tmp391 = shl nuw nsw i64 %r12.3, 1
  %tmp392 = add i64 %tmp391, ptrtoint (i64* @global_var_2162e0 to i64)
  %tmp393 = inttoptr i64 %tmp392 to i16*
  %tmp394 = load i16* %tmp393
  %tmp395 = zext i16 %tmp394 to i32
  %tmp396 = and i32 %tmp395, %tmp390
  %tmp397 = sub i32 %tmp389, %tmp396
  %tmp398 = inttoptr i32 %tmp397 to i64*
  br label %block_8740

block_8740:                                       ; preds = %block_881a, %block_8704
  %stack_var_-60.1 = phi i64* [ %stack_var_-60.0.ph, %block_8704 ], [ %stack_var_-60.4, %block_881a ]
  %stack_var_-68.0 = phi i64* [ %tmp265, %block_8704 ], [ %tmp417, %block_881a ]
  %stack_var_-64.0 = phi i64* [ %tmp398, %block_8704 ], [ %stack_var_-64.2, %block_881a ]
  %tmp401 = ptrtoint i64* %stack_var_-64.0 to i32
  %tmp402 = and i32 %tmp401, 32767
  %tmp403 = inttoptr i32 %tmp402 to i64*
  %tmp404 = ptrtoint i64* %tmp403 to i32
  %tmp405 = ptrtoint i64* %stack_var_-60.1 to i32
  %tmp406 = icmp ugt i32 %tmp404, %tmp405
  br i1 %tmp406, label %block_874f, label %block_8759

block_874f:                                       ; preds = %block_8740
  %tmp407 = sub i32 32768, %tmp404
  %tmp408 = zext i32 %tmp407 to i64
  br label %block_8761

block_8759:                                       ; preds = %block_8740
  %tmp409 = sub i32 32768, %tmp405
  %tmp410 = zext i32 %tmp409 to i64
  br label %block_8761

block_8761:                                       ; preds = %block_8759, %block_874f
  %rax.12 = phi i64 [ %tmp410, %block_8759 ], [ %tmp408, %block_874f ]
  %tmp411 = trunc i64 %rax.12 to i32
  %tmp412 = ptrtoint i64* %stack_var_-68.0 to i32
  %tmp413 = icmp ugt i32 %tmp411, %tmp412
  br i1 %tmp413, label %block_876a, label %block_876f

block_876a:                                       ; preds = %block_8761
  %tmp414 = zext i32 %tmp412 to i64
  br label %block_8772

block_876f:                                       ; preds = %block_8761
  br label %block_8772

block_8772:                                       ; preds = %block_876f, %block_876a
  %rax.13 = phi i64 [ %rax.12, %block_876f ], [ %tmp414, %block_876a ]
  %tmp415 = trunc i64 %rax.13 to i32
  %tmp416 = sub i32 %tmp412, %tmp415
  %tmp417 = inttoptr i32 %tmp416 to i64*
  %tmp418 = icmp ult i32 %tmp404, %tmp405
  br i1 %tmp418, label %block_8783, label %block_878b

block_8783:                                       ; preds = %block_8772
  %tmp419 = sub i32 %tmp405, %tmp404
  %tmp420 = zext i32 %tmp419 to i64
  br label %block_8791

block_878b:                                       ; preds = %block_8772
  %tmp421 = sub i32 %tmp404, %tmp405
  %tmp422 = zext i32 %tmp421 to i64
  br label %block_8791

block_8791:                                       ; preds = %block_878b, %block_8783
  %rax.14 = phi i64 [ %tmp422, %block_878b ], [ %tmp420, %block_8783 ]
  %tmp423 = trunc i64 %rax.14 to i32
  %tmp424 = icmp ult i32 %tmp423, %tmp415
  br i1 %tmp424, label %block_87c8, label %block_8796

block_8796:                                       ; preds = %block_8791
  %tmp425 = zext i32 %tmp404 to i64
  %tmp426 = add i64 %tmp425, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp427 = zext i32 %tmp405 to i64
  %tmp428 = add i64 %tmp427, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp429 = inttoptr i64 %tmp428 to i64*
  %tmp430 = inttoptr i64 %tmp426 to i64*
  %tmp431 = call i64* @memcpy(i64* %tmp429, i64* %tmp430, i32 %tmp415)
  %tmp432 = add i32 %tmp415, %tmp405
  %tmp433 = inttoptr i32 %tmp432 to i64*
  %tmp434 = add i32 %tmp415, %tmp404
  %tmp435 = inttoptr i32 %tmp434 to i64*
  br label %block_87fc

block_87c8:                                       ; preds = %block_8791, %block_87c8
  %stack_var_-60.2 = phi i64* [ %tmp445, %block_87c8 ], [ %stack_var_-60.1, %block_8791 ]
  %stack_var_-64.1 = phi i64* [ %tmp440, %block_87c8 ], [ %tmp403, %block_8791 ]
  %r12.4 = phi i64 [ %tmp453, %block_87c8 ], [ %rax.13, %block_8791 ]
  %tmp436 = ptrtoint i64* %stack_var_-64.1 to i32
  %tmp437 = zext i32 %tmp436 to i64
  %tmp438 = add nuw nsw i64 %tmp437, 1
  %tmp439 = trunc i64 %tmp438 to i32
  %tmp440 = inttoptr i32 %tmp439 to i64*
  %tmp441 = ptrtoint i64* %stack_var_-60.2 to i32
  %tmp442 = zext i32 %tmp441 to i64
  %tmp443 = add nuw nsw i64 %tmp442, 1
  %tmp444 = trunc i64 %tmp443 to i32
  %tmp445 = inttoptr i32 %tmp444 to i64*
  %tmp446 = add i64 %tmp437, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp447 = inttoptr i64 %tmp446 to i8*
  %tmp448 = load i8* %tmp447
  %tmp449 = add i64 %tmp442, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp450 = inttoptr i64 %tmp449 to i8*
  store i8 %tmp448, i8* %tmp450
  %tmp451 = trunc i64 %r12.4 to i32
  %tmp452 = add i32 %tmp451, -1
  %tmp453 = zext i32 %tmp452 to i64
  %tmp454 = icmp eq i32 %tmp452, 0
  br i1 %tmp454, label %block_87fc, label %block_87c8

block_87fc:                                       ; preds = %block_87c8, %block_8796
  %stack_var_-60.3 = phi i64* [ %tmp433, %block_8796 ], [ %tmp445, %block_87c8 ]
  %stack_var_-64.2 = phi i64* [ %tmp435, %block_8796 ], [ %tmp440, %block_87c8 ]
  %tmp455 = ptrtoint i64* %stack_var_-60.3 to i32
  %tmp456 = icmp eq i32 %tmp455, 32768
  br i1 %tmp456, label %block_8805, label %block_881a

block_8805:                                       ; preds = %block_87fc
  store i32 32768, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp457 = call i64 @flush_window()
  br label %block_881a

block_881a:                                       ; preds = %block_87fc, %block_8805
  %stack_var_-60.4 = phi i64* [ %stack_var_-60.3, %block_87fc ], [ null, %block_8805 ]
  %tmp458 = ptrtoint i64* %tmp417 to i32
  %tmp459 = icmp eq i32 %tmp458, 0
  br i1 %tmp459, label %block_8824, label %block_8740

block_8824:                                       ; preds = %block_881a
  %tmp399 = and i64 %r12.3, 63
  %tmp400 = sub i32 %.lcssa9, %tmp363
  %tmp460 = lshr i64 %r13.14.lcssa, %tmp399
  %tmp461 = zext i32 %tmp400 to i64
  br label %block_8335.outer

block_8829:                                       ; preds = %block_84a0
  %tmp462 = ptrtoint i64* %stack_var_-60.0.ph to i32
  store i32 %tmp462, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i64 %tmp210, i64* @global_var_216f98
  store i32 %tmp214, i32* bitcast (i64* @global_var_216fa0 to i32*)
  br label %block_8845

block_8845:                                       ; preds = %block_8829, %block_85c6, %block_8371
  %rax.15 = phi i64 [ 0, %block_8829 ], [ 1, %block_85c6 ], [ 1, %block_8371 ]
  ret i64 %rax.15
}

define i64 @inflate_stored() {
block_8850:
  %tmp54 = load i64* @global_var_216f98
  %tmp55 = load i32* bitcast (i64* @global_var_216fa0 to i32*)
  %tmp56 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp57 = inttoptr i32 %tmp56 to i64*
  %tmp58 = and i32 %tmp55, 7
  %tmp59 = icmp eq i32 %tmp58, 0
  br i1 %tmp59, label %bb62, label %bb

bb:                                               ; preds = %block_8850
  %tmp60 = zext i32 %tmp58 to i64
  %tmp61 = lshr i64 %tmp54, %tmp60
  br label %bb62

bb62:                                             ; preds = %block_8850, %bb
  %r12.0 = phi i64 [ %tmp54, %block_8850 ], [ %tmp61, %bb ]
  %tmp63 = sub i32 %tmp55, %tmp58
  %tmp64 = icmp ult i32 %tmp63, 16
  br i1 %tmp64, label %block_8886.lr.ph, label %block_88dd

block_8886.lr.ph:                                 ; preds = %bb62
  %tmp65 = zext i32 %tmp63 to i64
  %tmp66 = ptrtoint i64* %tmp57 to i32
  %tmp68 = sub i32 15, %tmp55
  %tmp69 = add i32 %tmp68, %tmp58
  br label %block_8886

block_8886:                                       ; preds = %block_8886.lr.ph, %block_88cd
  %tmp73 = phi i32 [ %tmp63, %block_8886.lr.ph ], [ %tmp88, %block_88cd ]
  %r12.118 = phi i64 [ %r12.0, %block_8886.lr.ph ], [ %tmp87, %block_88cd ]
  %rbx.017 = phi i64 [ %tmp65, %block_8886.lr.ph ], [ %tmp89, %block_88cd ]
  %tmp74 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp75 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp76 = icmp ult i32 %tmp74, %tmp75
  br i1 %tmp76, label %block_8896, label %block_88b7

block_8896:                                       ; preds = %block_8886
  %tmp77 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp78 = zext i32 %tmp77 to i64
  %tmp79 = add i64 %tmp78, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp80 = inttoptr i64 %tmp79 to i8*
  %tmp81 = load i8* %tmp80
  %tmp82 = zext i8 %tmp81 to i64
  br label %block_88cd

block_88b7:                                       ; preds = %block_8886
  store i32 %tmp66, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp83 = call i64 @fill_inbuf(i32 0)
  %tmp84 = and i64 %tmp83, 255
  br label %block_88cd

block_88cd:                                       ; preds = %block_88b7, %block_8896
  %rax.0 = phi i64 [ %tmp84, %block_88b7 ], [ %tmp82, %block_8896 ]
  %tmp85 = and i64 %rbx.017, 63
  %tmp86 = shl i64 %rax.0, %tmp85
  %tmp87 = or i64 %tmp86, %r12.118
  %tmp88 = add nuw i32 %tmp73, 8
  %tmp89 = zext i32 %tmp88 to i64
  %tmp90 = icmp ult i32 %tmp88, 16
  br i1 %tmp90, label %block_8886, label %block_88dd.loopexit

block_88dd.loopexit:                              ; preds = %block_88cd
  %tmp70 = and i32 %tmp69, -8
  %tmp71 = add i32 %tmp55, 8
  %tmp72 = sub i32 %tmp71, %tmp58
  %tmp91 = add i32 %tmp72, %tmp70
  br label %block_88dd

block_88dd:                                       ; preds = %block_88dd.loopexit, %bb62
  %.lcssa3 = phi i32 [ %tmp63, %bb62 ], [ %tmp91, %block_88dd.loopexit ]
  %r12.1.lcssa = phi i64 [ %r12.0, %bb62 ], [ %tmp87, %block_88dd.loopexit ]
  %tmp92 = trunc i64 %r12.1.lcssa to i32
  %tmp93 = and i32 %tmp92, 65535
  %tmp94 = lshr i64 %r12.1.lcssa, 16
  %tmp95 = add i32 %.lcssa3, -16
  %tmp96 = icmp ult i32 %tmp95, 16
  br i1 %tmp96, label %block_88f1.lr.ph, label %block_8948

block_88f1.lr.ph:                                 ; preds = %block_88dd
  %tmp97 = zext i32 %tmp95 to i64
  %tmp98 = ptrtoint i64* %tmp57 to i32
  %tmp99 = sub i32 31, %.lcssa3
  br label %block_88f1

block_88f1:                                       ; preds = %block_88f1.lr.ph, %block_8938
  %tmp102 = phi i32 [ %tmp95, %block_88f1.lr.ph ], [ %tmp117, %block_8938 ]
  %r12.214 = phi i64 [ %tmp94, %block_88f1.lr.ph ], [ %tmp116, %block_8938 ]
  %rbx.113 = phi i64 [ %tmp97, %block_88f1.lr.ph ], [ %tmp118, %block_8938 ]
  %tmp103 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp104 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp105 = icmp ult i32 %tmp103, %tmp104
  br i1 %tmp105, label %block_8901, label %block_8922

block_8901:                                       ; preds = %block_88f1
  %tmp106 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp107 = zext i32 %tmp106 to i64
  %tmp108 = add i64 %tmp107, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp109 = inttoptr i64 %tmp108 to i8*
  %tmp110 = load i8* %tmp109
  %tmp111 = zext i8 %tmp110 to i64
  br label %block_8938

block_8922:                                       ; preds = %block_88f1
  store i32 %tmp98, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp112 = call i64 @fill_inbuf(i32 0)
  %tmp113 = and i64 %tmp112, 255
  br label %block_8938

block_8938:                                       ; preds = %block_8922, %block_8901
  %rax.2 = phi i64 [ %tmp113, %block_8922 ], [ %tmp111, %block_8901 ]
  %tmp114 = and i64 %rbx.113, 63
  %tmp115 = shl i64 %rax.2, %tmp114
  %tmp116 = or i64 %tmp115, %r12.214
  %tmp117 = add nuw i32 %tmp102, 8
  %tmp118 = zext i32 %tmp117 to i64
  %tmp119 = icmp ult i32 %tmp117, 16
  br i1 %tmp119, label %block_88f1, label %block_8948.loopexit

block_8948.loopexit:                              ; preds = %block_8938
  %tmp100 = and i32 %tmp99, -8
  %tmp101 = add i32 %.lcssa3, -8
  %tmp120 = add i32 %tmp101, %tmp100
  br label %block_8948

block_8948:                                       ; preds = %block_8948.loopexit, %block_88dd
  %.lcssa2 = phi i32 [ %tmp95, %block_88dd ], [ %tmp120, %block_8948.loopexit ]
  %r12.2.lcssa = phi i64 [ %tmp94, %block_88dd ], [ %tmp116, %block_8948.loopexit ]
  %tmp121 = trunc i64 %r12.2.lcssa to i32
  %tmp122 = and i32 %tmp121, 65535
  %tmp123 = xor i32 %tmp122, 65535
  %tmp124 = icmp eq i32 %tmp93, %tmp123
  br i1 %tmp124, label %block_895f, label %block_8955

block_8955:                                       ; preds = %block_8948
  br label %block_8a27

block_895f:                                       ; preds = %block_8948
  %tmp125 = lshr i64 %r12.2.lcssa, 16
  %tmp126 = add i32 %.lcssa2, -16
  %tmp127 = zext i32 %tmp126 to i64
  %tmp128 = icmp eq i32 %tmp93, 0
  br i1 %tmp128, label %block_8a0c, label %block_89bd.preheader.lr.ph

block_89bd.preheader.lr.ph:                       ; preds = %block_895f
  %tmp131 = add nsw i32 %tmp93, -1
  %tmp132 = zext i32 %tmp131 to i64
  br label %block_89bd.preheader

block_896b:                                       ; preds = %block_89bd.preheader, %block_89b2
  %tmp133 = phi i32 [ %tmp148, %block_89b2 ], [ %tmp165, %block_89bd.preheader ]
  %r12.35 = phi i64 [ %tmp147, %block_89b2 ], [ %r12.49, %block_89bd.preheader ]
  %rbx.24 = phi i64 [ %tmp149, %block_89b2 ], [ %rbx.38, %block_89bd.preheader ]
  %tmp134 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp135 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp136 = icmp ult i32 %tmp134, %tmp135
  br i1 %tmp136, label %block_897b, label %block_899c

block_897b:                                       ; preds = %block_896b
  %tmp137 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp138 = zext i32 %tmp137 to i64
  %tmp139 = add i64 %tmp138, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp140 = inttoptr i64 %tmp139 to i8*
  %tmp141 = load i8* %tmp140
  %tmp142 = zext i8 %tmp141 to i64
  br label %block_89b2

block_899c:                                       ; preds = %block_896b
  store i32 %tmp167, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp143 = call i64 @fill_inbuf(i32 0)
  %tmp144 = and i64 %tmp143, 255
  br label %block_89b2

block_89b2:                                       ; preds = %block_899c, %block_897b
  %rax.4 = phi i64 [ %tmp144, %block_899c ], [ %tmp142, %block_897b ]
  %tmp145 = and i64 %rbx.24, 63
  %tmp146 = shl i64 %rax.4, %tmp145
  %tmp147 = or i64 %tmp146, %r12.35
  %tmp148 = add i32 %tmp133, 8
  %tmp149 = zext i32 %tmp148 to i64
  %tmp150 = icmp ugt i32 %tmp133, -9
  br i1 %tmp150, label %block_896b, label %block_89c2

block_89c2:                                       ; preds = %block_89b2, %block_89bd.preheader
  %.lcssa = phi i32 [ %tmp165, %block_89bd.preheader ], [ %tmp148, %block_89b2 ]
  %r12.3.lcssa = phi i64 [ %r12.49, %block_89bd.preheader ], [ %tmp147, %block_89b2 ]
  %tmp151 = zext i32 %tmp167 to i64
  %tmp152 = add nuw nsw i64 %tmp151, 1
  %tmp153 = trunc i64 %tmp152 to i32
  %tmp154 = inttoptr i32 %tmp153 to i64*
  %tmp155 = trunc i64 %r12.3.lcssa to i8
  %tmp156 = add i64 %tmp151, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp157 = inttoptr i64 %tmp156 to i8*
  store i8 %tmp155, i8* %tmp157
  %tmp158 = ptrtoint i64* %tmp154 to i32
  %tmp159 = icmp eq i32 %tmp158, 32768
  br i1 %tmp159, label %block_89e3, label %block_89f8

block_89e3:                                       ; preds = %block_89c2
  store i32 32768, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp160 = call i64 @flush_window()
  br label %block_89f8

block_89f8:                                       ; preds = %block_89c2, %block_89e3
  %stack_var_-28.0 = phi i64* [ %tmp154, %block_89c2 ], [ null, %block_89e3 ]
  %tmp161 = lshr i64 %r12.3.lcssa, 8
  %tmp162 = add i32 %.lcssa, -8
  %tmp163 = zext i32 %tmp162 to i64
  %tmp164 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %tmp164, label %block_8a0c, label %block_89bd.preheader

block_89bd.preheader:                             ; preds = %block_89bd.preheader.lr.ph, %block_89f8
  %indvars.iv = phi i64 [ %tmp132, %block_89bd.preheader.lr.ph ], [ %indvars.iv.next, %block_89f8 ]
  %r12.49 = phi i64 [ %tmp125, %block_89bd.preheader.lr.ph ], [ %tmp161, %block_89f8 ]
  %rbx.38 = phi i64 [ %tmp127, %block_89bd.preheader.lr.ph ], [ %tmp163, %block_89f8 ]
  %stack_var_-28.17 = phi i64* [ %tmp57, %block_89bd.preheader.lr.ph ], [ %stack_var_-28.0, %block_89f8 ]
  %tmp165 = trunc i64 %rbx.38 to i32
  %tmp166 = icmp ult i32 %tmp165, 8
  %tmp167 = ptrtoint i64* %stack_var_-28.17 to i32
  br i1 %tmp166, label %block_896b, label %block_89c2

block_8a0c:                                       ; preds = %block_89f8, %block_895f
  %r12.4.lcssa = phi i64 [ %tmp125, %block_895f ], [ %tmp161, %block_89f8 ]
  %rbx.3.lcssa = phi i64 [ %tmp127, %block_895f ], [ %tmp163, %block_89f8 ]
  %stack_var_-28.1.lcssa = phi i64* [ %tmp57, %block_895f ], [ %stack_var_-28.0, %block_89f8 ]
  %tmp168 = ptrtoint i64* %stack_var_-28.1.lcssa to i32
  store i32 %tmp168, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i64 %r12.4.lcssa, i64* @global_var_216f98
  %tmp169 = trunc i64 %rbx.3.lcssa to i32
  store i32 %tmp169, i32* bitcast (i64* @global_var_216fa0 to i32*)
  br label %block_8a27

block_8a27:                                       ; preds = %block_8a0c, %block_8955
  %rax.6 = phi i64 [ 0, %block_8a0c ], [ 1, %block_8955 ]
  ret i64 %rax.6
}

define i64 @inflate_fixed() {
block_8a30:
  %stack_var_-1184 = alloca i64
  %stack_var_-1200 = alloca i32
  %stack_var_-1176 = alloca i64
  %stack_var_-1192 = alloca i64
  %stack_var_-1204 = alloca i32
  %stack_var_-8 = alloca i64
  %tmp63 = ptrtoint i64* %stack_var_-8 to i64
  %tmp64 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp65 = add i64 %tmp63, -1168
  br label %block_8a56

block_8a56:                                       ; preds = %block_8a56, %block_8a30
  %indvars.iv21 = phi i64 [ 0, %block_8a30 ], [ %indvars.iv.next22, %block_8a56 ]
  %tmp66 = shl i64 %indvars.iv21, 2
  %tmp67 = add i64 %tmp66, %tmp65
  %tmp68 = inttoptr i64 %tmp67 to i32*
  store i32 8, i32* %tmp68
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 144
  br i1 %exitcond23, label %block_8a7e.lr.ph, label %block_8a56

block_8a7e.lr.ph:                                 ; preds = %block_8a56
  br label %block_8a7e

block_8a7e:                                       ; preds = %block_8a7e, %block_8a7e.lr.ph
  %indvars.iv17 = phi i64 [ 144, %block_8a7e.lr.ph ], [ %indvars.iv.next18, %block_8a7e ]
  %tmp69 = shl i64 %indvars.iv17, 2
  %tmp70 = add i64 %tmp69, %tmp65
  %tmp71 = inttoptr i64 %tmp70 to i32*
  store i32 9, i32* %tmp71
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond113 = icmp eq i64 %indvars.iv.next18, 256
  br i1 %exitcond113, label %block_8aa6.lr.ph, label %block_8a7e

block_8aa6.lr.ph:                                 ; preds = %block_8a7e
  br label %block_8aa6

block_8aa6:                                       ; preds = %block_8aa6, %block_8aa6.lr.ph
  %indvars.iv13 = phi i64 [ 256, %block_8aa6.lr.ph ], [ %indvars.iv.next14, %block_8aa6 ]
  %tmp72 = shl i64 %indvars.iv13, 2
  %tmp73 = add i64 %tmp72, %tmp65
  %tmp74 = inttoptr i64 %tmp73 to i32*
  store i32 7, i32* %tmp74
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond112 = icmp eq i64 %indvars.iv.next14, 280
  br i1 %exitcond112, label %block_8ace.lr.ph, label %block_8aa6

block_8ace.lr.ph:                                 ; preds = %block_8aa6
  br label %block_8ace

block_8ace:                                       ; preds = %block_8ace, %block_8ace.lr.ph
  %indvars.iv10 = phi i64 [ 280, %block_8ace.lr.ph ], [ %indvars.iv.next11, %block_8ace ]
  %tmp75 = shl i64 %indvars.iv10, 2
  %tmp76 = add i64 %tmp75, %tmp65
  %tmp77 = inttoptr i64 %tmp76 to i32*
  store i32 8, i32* %tmp77
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond111 = icmp eq i64 %indvars.iv.next11, 288
  br i1 %exitcond111, label %block_8af4, label %block_8ace

block_8af4:                                       ; preds = %block_8ace
  store i32 7, i32* %stack_var_-1204
  %tmp79 = bitcast i64* %stack_var_-1176 to i32*
  %tmp80 = call i64 @huft_build(i32* %tmp79, i64 288, i64 257, i64* @global_var_2161e0, i64* @global_var_216220, i64* %stack_var_-1192, i32* %stack_var_-1204)
  %tmp81 = trunc i64 %tmp80 to i32
  %tmp82 = icmp eq i32 %tmp81, 0
  br i1 %tmp82, label %block_8b59, label %block_8b4e

block_8b4e:                                       ; preds = %block_8af4
  %tmp83 = and i64 %tmp80, 4294967295
  br label %block_8c49

block_8b59:                                       ; preds = %block_8af4
  br label %block_8b65

block_8b65:                                       ; preds = %block_8b65, %block_8b59
  %indvars.iv = phi i64 [ 0, %block_8b59 ], [ %indvars.iv.next, %block_8b65 ]
  %tmp84 = shl i64 %indvars.iv, 2
  %tmp85 = add i64 %tmp84, %tmp65
  %tmp86 = inttoptr i64 %tmp85 to i32*
  store i32 5, i32* %tmp86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond, label %block_8b88, label %block_8b65

block_8b88:                                       ; preds = %block_8b65
  store i32 5, i32* %stack_var_-1200
  %tmp88 = call i64 @huft_build(i32* %tmp79, i64 30, i64 0, i64* @global_var_216260, i64* @global_var_2162a0, i64* %stack_var_-1184, i32* %stack_var_-1200)
  %tmp89 = trunc i64 %tmp88 to i32
  %tmp90 = icmp slt i32 %tmp89, 2
  br i1 %tmp90, label %block_8bf9, label %block_8be2

block_8be2:                                       ; preds = %block_8b88
  %tmp91 = load i64* %stack_var_-1192
  %tmp92 = inttoptr i64 %tmp91 to i64*
  %tmp93 = call i64 @huft_free(i64* %tmp92)
  %tmp94 = and i64 %tmp88, 4294967295
  br label %block_8c49

block_8bf9:                                       ; preds = %block_8b88
  %tmp95 = load i32* %stack_var_-1200
  %tmp96 = load i32* %stack_var_-1204
  %tmp97 = load i64* %stack_var_-1184
  %tmp98 = load i64* %stack_var_-1192
  %tmp99 = inttoptr i64 %tmp98 to i8*
  %tmp100 = call i64 @inflate_codes(i8* %tmp99, i64 %tmp97, i32 %tmp96, i32 %tmp95)
  %tmp101 = trunc i64 %tmp100 to i32
  %tmp102 = icmp eq i32 %tmp101, 0
  br i1 %tmp102, label %block_8c26, label %block_8c1f

block_8c1f:                                       ; preds = %block_8bf9
  br label %block_8c49

block_8c26:                                       ; preds = %block_8bf9
  %tmp103 = load i64* %stack_var_-1192
  %tmp104 = inttoptr i64 %tmp103 to i64*
  %tmp105 = call i64 @huft_free(i64* %tmp104)
  %tmp106 = load i64* %stack_var_-1184
  %tmp107 = inttoptr i64 %tmp106 to i64*
  %tmp108 = call i64 @huft_free(i64* %tmp107)
  br label %block_8c49

block_8c49:                                       ; preds = %block_8c26, %block_8c1f, %block_8be2, %block_8b4e
  %rax.0 = phi i64 [ 0, %block_8c26 ], [ 1, %block_8c1f ], [ %tmp94, %block_8be2 ], [ %tmp83, %block_8b4e ]
  %tmp109 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp110 = icmp eq i64 %tmp64, %tmp109
  br i1 %tmp110, label %block_8c5d, label %block_8c58

block_8c58:                                       ; preds = %block_8c49
  call void @__stack_chk_fail()
  unreachable

block_8c5d:                                       ; preds = %block_8c49
  ret i64 %rax.0
}

define i64 @inflate_dynamic() {
block_8c5f:
  %stack_var_-1364 = alloca i32
  %stack_var_-1312 = alloca i8*
  %stack_var_-1384 = alloca i32*
  %stack_var_-1304 = alloca i64
  %stack_var_-1320 = alloca i64
  %stack_var_-1368 = alloca i8*
  %stack_var_-8 = alloca i64
  %tmp197 = ptrtoint i64* %stack_var_-8 to i64
  %tmp198 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp199 = load i64* @global_var_216f98
  %tmp200 = load i32* bitcast (i64* @global_var_216fa0 to i32*)
  %tmp201 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp202 = inttoptr i32 %tmp201 to i64*
  %tmp203 = icmp ult i32 %tmp200, 5
  br i1 %tmp203, label %block_8c97.lr.ph, label %block_8cf1

block_8c97.lr.ph:                                 ; preds = %block_8c5f
  %tmp204 = zext i32 %tmp200 to i64
  %tmp205 = ptrtoint i64* %tmp202 to i32
  %tmp206 = sub i32 4, %tmp200
  br label %block_8c97

block_8c97:                                       ; preds = %block_8c97.lr.ph, %block_8ce1
  %tmp209 = phi i32 [ %tmp200, %block_8c97.lr.ph ], [ %tmp224, %block_8ce1 ]
  %r12.089 = phi i64 [ %tmp199, %block_8c97.lr.ph ], [ %tmp223, %block_8ce1 ]
  %rbx.088 = phi i64 [ %tmp204, %block_8c97.lr.ph ], [ %tmp225, %block_8ce1 ]
  %tmp210 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp211 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp212 = icmp ult i32 %tmp210, %tmp211
  br i1 %tmp212, label %block_8ca7, label %block_8cc8

block_8ca7:                                       ; preds = %block_8c97
  %tmp213 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp214 = zext i32 %tmp213 to i64
  %tmp215 = add i64 %tmp214, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp216 = inttoptr i64 %tmp215 to i8*
  %tmp217 = load i8* %tmp216
  %tmp218 = zext i8 %tmp217 to i64
  br label %block_8ce1

block_8cc8:                                       ; preds = %block_8c97
  store i32 %tmp205, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp219 = call i64 @fill_inbuf(i32 0)
  %tmp220 = and i64 %tmp219, 255
  br label %block_8ce1

block_8ce1:                                       ; preds = %block_8cc8, %block_8ca7
  %rax.0 = phi i64 [ %tmp220, %block_8cc8 ], [ %tmp218, %block_8ca7 ]
  %tmp221 = and i64 %rbx.088, 63
  %tmp222 = shl i64 %rax.0, %tmp221
  %tmp223 = or i64 %tmp222, %r12.089
  %tmp224 = add nuw i32 %tmp209, 8
  %tmp225 = zext i32 %tmp224 to i64
  %tmp226 = icmp ult i32 %tmp224, 5
  br i1 %tmp226, label %block_8c97, label %block_8cf1.loopexit

block_8cf1.loopexit:                              ; preds = %block_8ce1
  %tmp207 = and i32 %tmp206, -8
  %tmp208 = add i32 %tmp200, 8
  %tmp227 = add i32 %tmp208, %tmp207
  br label %block_8cf1

block_8cf1:                                       ; preds = %block_8cf1.loopexit, %block_8c5f
  %.lcssa39 = phi i32 [ %tmp200, %block_8c5f ], [ %tmp227, %block_8cf1.loopexit ]
  %r12.0.lcssa = phi i64 [ %tmp199, %block_8c5f ], [ %tmp223, %block_8cf1.loopexit ]
  %tmp228 = trunc i64 %r12.0.lcssa to i32
  %tmp229 = and i32 %tmp228, 31
  %tmp230 = add nuw nsw i32 %tmp229, 257
  %tmp231 = lshr i64 %r12.0.lcssa, 5
  %tmp232 = add i32 %.lcssa39, -5
  %tmp233 = icmp ult i32 %tmp232, 5
  br i1 %tmp233, label %block_8d0b.lr.ph, label %block_8d65

block_8d0b.lr.ph:                                 ; preds = %block_8cf1
  %tmp234 = zext i32 %tmp232 to i64
  %tmp235 = ptrtoint i64* %tmp202 to i32
  %tmp236 = sub i32 9, %.lcssa39
  br label %block_8d0b

block_8d0b:                                       ; preds = %block_8d0b.lr.ph, %block_8d55
  %tmp239 = phi i32 [ %tmp232, %block_8d0b.lr.ph ], [ %tmp254, %block_8d55 ]
  %r12.185 = phi i64 [ %tmp231, %block_8d0b.lr.ph ], [ %tmp253, %block_8d55 ]
  %rbx.184 = phi i64 [ %tmp234, %block_8d0b.lr.ph ], [ %tmp255, %block_8d55 ]
  %tmp240 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp241 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp242 = icmp ult i32 %tmp240, %tmp241
  br i1 %tmp242, label %block_8d1b, label %block_8d3c

block_8d1b:                                       ; preds = %block_8d0b
  %tmp243 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp244 = zext i32 %tmp243 to i64
  %tmp245 = add i64 %tmp244, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp246 = inttoptr i64 %tmp245 to i8*
  %tmp247 = load i8* %tmp246
  %tmp248 = zext i8 %tmp247 to i64
  br label %block_8d55

block_8d3c:                                       ; preds = %block_8d0b
  store i32 %tmp235, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp249 = call i64 @fill_inbuf(i32 0)
  %tmp250 = and i64 %tmp249, 255
  br label %block_8d55

block_8d55:                                       ; preds = %block_8d3c, %block_8d1b
  %rax.2 = phi i64 [ %tmp250, %block_8d3c ], [ %tmp248, %block_8d1b ]
  %tmp251 = and i64 %rbx.184, 63
  %tmp252 = shl i64 %rax.2, %tmp251
  %tmp253 = or i64 %tmp252, %r12.185
  %tmp254 = add nuw i32 %tmp239, 8
  %tmp255 = zext i32 %tmp254 to i64
  %tmp256 = icmp ult i32 %tmp254, 5
  br i1 %tmp256, label %block_8d0b, label %block_8d65.loopexit

block_8d65.loopexit:                              ; preds = %block_8d55
  %tmp237 = and i32 %tmp236, -8
  %tmp238 = add i32 %.lcssa39, 3
  %tmp257 = add i32 %tmp238, %tmp237
  br label %block_8d65

block_8d65:                                       ; preds = %block_8d65.loopexit, %block_8cf1
  %.lcssa38 = phi i32 [ %tmp232, %block_8cf1 ], [ %tmp257, %block_8d65.loopexit ]
  %r12.1.lcssa = phi i64 [ %tmp231, %block_8cf1 ], [ %tmp253, %block_8d65.loopexit ]
  %tmp258 = trunc i64 %r12.1.lcssa to i32
  %tmp259 = and i32 %tmp258, 31
  %tmp260 = add nuw nsw i32 %tmp259, 1
  %tmp261 = lshr i64 %r12.1.lcssa, 5
  %tmp262 = add i32 %.lcssa38, -5
  %tmp263 = icmp ult i32 %tmp262, 4
  br i1 %tmp263, label %block_8d7d.lr.ph, label %block_8dd7

block_8d7d.lr.ph:                                 ; preds = %block_8d65
  %tmp264 = zext i32 %tmp262 to i64
  %tmp265 = ptrtoint i64* %tmp202 to i32
  %tmp266 = sub i32 8, %.lcssa38
  br label %block_8d7d

block_8d7d:                                       ; preds = %block_8d7d.lr.ph, %block_8dc7
  %tmp269 = phi i32 [ %tmp262, %block_8d7d.lr.ph ], [ %tmp284, %block_8dc7 ]
  %r12.281 = phi i64 [ %tmp261, %block_8d7d.lr.ph ], [ %tmp283, %block_8dc7 ]
  %rbx.280 = phi i64 [ %tmp264, %block_8d7d.lr.ph ], [ %tmp285, %block_8dc7 ]
  %tmp270 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp271 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp272 = icmp ult i32 %tmp270, %tmp271
  br i1 %tmp272, label %block_8d8d, label %block_8dae

block_8d8d:                                       ; preds = %block_8d7d
  %tmp273 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp274 = zext i32 %tmp273 to i64
  %tmp275 = add i64 %tmp274, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp276 = inttoptr i64 %tmp275 to i8*
  %tmp277 = load i8* %tmp276
  %tmp278 = zext i8 %tmp277 to i64
  br label %block_8dc7

block_8dae:                                       ; preds = %block_8d7d
  store i32 %tmp265, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp279 = call i64 @fill_inbuf(i32 0)
  %tmp280 = and i64 %tmp279, 255
  br label %block_8dc7

block_8dc7:                                       ; preds = %block_8dae, %block_8d8d
  %rax.4 = phi i64 [ %tmp280, %block_8dae ], [ %tmp278, %block_8d8d ]
  %tmp281 = and i64 %rbx.280, 63
  %tmp282 = shl i64 %rax.4, %tmp281
  %tmp283 = or i64 %tmp282, %r12.281
  %tmp284 = add nuw i32 %tmp269, 8
  %tmp285 = zext i32 %tmp284 to i64
  %tmp286 = icmp ult i32 %tmp284, 4
  br i1 %tmp286, label %block_8d7d, label %block_8dd7.loopexit

block_8dd7.loopexit:                              ; preds = %block_8dc7
  %tmp267 = and i32 %tmp266, -8
  %tmp268 = add i32 %.lcssa38, 3
  %tmp287 = add i32 %tmp268, %tmp267
  br label %block_8dd7

block_8dd7:                                       ; preds = %block_8dd7.loopexit, %block_8d65
  %.lcssa37 = phi i32 [ %tmp262, %block_8d65 ], [ %tmp287, %block_8dd7.loopexit ]
  %r12.2.lcssa = phi i64 [ %tmp261, %block_8d65 ], [ %tmp283, %block_8dd7.loopexit ]
  %tmp288 = lshr i64 %r12.2.lcssa, 4
  %tmp289 = add i32 %.lcssa37, -4
  %tmp290 = zext i32 %tmp289 to i64
  %notlhs = icmp ugt i32 %tmp230, 285
  %notrhs = icmp ne i32 %tmp229, 29
  %tmp291 = icmp eq i1 %notrhs, %notlhs
  br i1 %tmp291, label %block_8e02, label %block_8df9

block_8df9:                                       ; preds = %block_8dd7
  %tmp292 = icmp ult i32 %tmp260, 31
  br i1 %tmp292, label %block_8e0c, label %block_8e02

block_8e02:                                       ; preds = %block_8df9, %block_8dd7
  br label %block_94ff

block_8e0c:                                       ; preds = %block_8df9
  %tmp293 = ptrtoint i64* %tmp202 to i32
  %tmp294 = add i64 %tmp197, -1296
  %tmp295 = trunc i64 %r12.2.lcssa to i32
  %tmp296 = and i32 %tmp295, 15
  %tmp297 = add nuw nsw i32 %tmp296, 3
  %tmp693 = trunc i64 %r12.2.lcssa to i32
  %tmp694 = and i32 %tmp693, 15
  %tmp695 = add nuw nsw i32 %tmp694, 3
  br label %block_8e70.preheader

block_8e1b:                                       ; preds = %block_8e1b.preheader, %block_8e65
  %tmp299 = phi i32 [ %tmp314, %block_8e65 ], [ %tmp331, %block_8e1b.preheader ]
  %r12.374 = phi i64 [ %tmp313, %block_8e65 ], [ %r12.479, %block_8e1b.preheader ]
  %rbx.373 = phi i64 [ %tmp315, %block_8e65 ], [ %rbx.478, %block_8e1b.preheader ]
  %tmp300 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp301 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp302 = icmp ult i32 %tmp300, %tmp301
  br i1 %tmp302, label %block_8e2b, label %block_8e4c

block_8e2b:                                       ; preds = %block_8e1b
  %tmp303 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp304 = zext i32 %tmp303 to i64
  %tmp305 = add i64 %tmp304, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp306 = inttoptr i64 %tmp305 to i8*
  %tmp307 = load i8* %tmp306
  %tmp308 = zext i8 %tmp307 to i64
  br label %block_8e65

block_8e4c:                                       ; preds = %block_8e1b
  store i32 %tmp293, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp309 = call i64 @fill_inbuf(i32 0)
  %tmp310 = and i64 %tmp309, 255
  br label %block_8e65

block_8e65:                                       ; preds = %block_8e4c, %block_8e2b
  %rax.6 = phi i64 [ %tmp310, %block_8e4c ], [ %tmp308, %block_8e2b ]
  %tmp311 = and i64 %rbx.373, 63
  %tmp312 = shl i64 %rax.6, %tmp311
  %tmp313 = or i64 %tmp312, %r12.374
  %tmp314 = add nuw i32 %tmp299, 8
  %tmp315 = zext i32 %tmp314 to i64
  %tmp316 = icmp ult i32 %tmp314, 3
  br i1 %tmp316, label %block_8e1b, label %block_8e75.loopexit

block_8e75.loopexit:                              ; preds = %block_8e65
  %tmp335 = and i32 %tmp334, -8
  %tmp317 = add i32 %tmp335, %tmp331
  br label %block_8e75

block_8e75:                                       ; preds = %block_8e75.loopexit, %block_8e70.preheader
  %.lcssa36 = phi i32 [ %tmp331, %block_8e70.preheader ], [ %tmp317, %block_8e75.loopexit ]
  %r12.3.lcssa = phi i64 [ %r12.479, %block_8e70.preheader ], [ %tmp313, %block_8e75.loopexit ]
  %tmp318 = trunc i64 %r12.3.lcssa to i32
  %tmp319 = shl nuw nsw i64 %indvars.iv145, 2
  %tmp320 = add i64 %tmp319, ptrtoint (i64* @global_var_216180 to i64)
  %tmp321 = inttoptr i64 %tmp320 to i32*
  %tmp322 = load i32* %tmp321
  %tmp323 = and i32 %tmp318, 7
  %tmp324 = zext i32 %tmp322 to i64
  %tmp325 = shl nuw nsw i64 %tmp324, 2
  %tmp326 = add i64 %tmp325, %tmp294
  %tmp327 = inttoptr i64 %tmp326 to i32*
  store i32 %tmp323, i32* %tmp327
  %tmp328 = lshr i64 %r12.3.lcssa, 3
  %tmp329 = add i32 %.lcssa36, -3
  %tmp330 = zext i32 %tmp329 to i64
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %lftr.wideiv682 = trunc i64 %indvars.iv145 to i32
  %exitcond683 = icmp eq i32 %lftr.wideiv682, %tmp695
  br i1 %exitcond683, label %block_8eba, label %block_8e70.preheader

block_8e70.preheader:                             ; preds = %block_8e75, %block_8e0c
  %indvars.iv145 = phi i64 [ 0, %block_8e0c ], [ %indvars.iv.next146, %block_8e75 ]
  %r12.479 = phi i64 [ %tmp288, %block_8e0c ], [ %tmp328, %block_8e75 ]
  %rbx.478 = phi i64 [ %tmp290, %block_8e0c ], [ %tmp330, %block_8e75 ]
  %tmp331 = trunc i64 %rbx.478 to i32
  %tmp332 = icmp ult i32 %tmp331, 3
  br i1 %tmp332, label %block_8e1b.preheader, label %block_8e75

block_8e1b.preheader:                             ; preds = %block_8e70.preheader
  %tmp334 = sub i32 10, %tmp331
  br label %block_8e1b

block_8eba:                                       ; preds = %block_8e75
  %tmp298 = zext i32 %tmp297 to i64
  %tmp336 = add nuw nsw i64 %tmp298, 1
  %tmp337 = trunc i64 %tmp336 to i32
  %tmp338 = icmp ult i32 %tmp337, 19
  br i1 %tmp338, label %block_8ebc, label %block_8ef1

block_8ebc:                                       ; preds = %block_8eba, %block_8ebc
  %indvars.iv = phi i64 [ %indvars.iv.next, %block_8ebc ], [ %tmp336, %block_8eba ]
  %tmp339 = shl nuw nsw i64 %indvars.iv, 2
  %tmp340 = add i64 %tmp339, ptrtoint (i64* @global_var_216180 to i64)
  %tmp341 = inttoptr i64 %tmp340 to i32*
  %tmp342 = load i32* %tmp341
  %tmp343 = zext i32 %tmp342 to i64
  %tmp344 = shl nuw nsw i64 %tmp343, 2
  %tmp345 = add i64 %tmp344, %tmp294
  %tmp346 = inttoptr i64 %tmp345 to i32*
  store i32 0, i32* %tmp346
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 18
  br i1 %exitcond, label %block_8ef1, label %block_8ebc

block_8ef1:                                       ; preds = %block_8ebc, %block_8eba
  store i8* inttoptr (i64 7 to i8*), i8** %stack_var_-1368
  %tmp347 = ptrtoint i64* %stack_var_-1304 to i64
  %tmp348 = bitcast i32** %stack_var_-1384 to i8***
  store i8** %stack_var_-1368, i8*** %tmp348
  %tmp349 = load i32** %stack_var_-1384
  %tmp350 = bitcast i64* %stack_var_-1304 to i32*
  %tmp351 = call i64 @huft_build(i32* %tmp350, i64 19, i64 19, i64* null, i64* null, i64* %stack_var_-1320, i32* %tmp349)
  %tmp352 = trunc i64 %tmp351 to i32
  %tmp353 = icmp eq i32 %tmp352, 0
  br i1 %tmp353, label %block_8f6b, label %block_8f48

block_8f48:                                       ; preds = %block_8ef1
  %tmp354 = icmp eq i32 %tmp352, 1
  br i1 %tmp354, label %block_8f51, label %block_8f60

block_8f51:                                       ; preds = %block_8f48
  %tmp355 = load i64* %stack_var_-1320
  %tmp356 = inttoptr i64 %tmp355 to i64*
  %tmp357 = call i64 @huft_free(i64* %tmp356)
  br label %block_8f60

block_8f60:                                       ; preds = %block_8f48, %block_8f51
  %tmp358 = and i64 %tmp351, 4294967295
  br label %block_94ff

block_8f6b:                                       ; preds = %block_8ef1
  %tmp359 = load i64* %stack_var_-1320
  %tmp360 = icmp eq i64 %tmp359, 0
  br i1 %tmp360, label %block_8f77, label %block_8f81

block_8f77:                                       ; preds = %block_8f6b
  br label %block_94ff

block_8f81:                                       ; preds = %block_8f6b
  %tmp361 = add nuw nsw i32 %tmp260, %tmp230
  %tmp362 = load i8** %stack_var_-1368
  %tmp363 = ptrtoint i8* %tmp362 to i64
  %sext = shl i64 %tmp363, 32
  %tmp364 = ashr exact i64 %sext, 31
  %tmp365 = add i64 %tmp364, ptrtoint (i64* @global_var_2162e0 to i64)
  %tmp366 = inttoptr i64 %tmp365 to i16*
  %tmp367 = load i16* %tmp366
  %tmp368 = zext i16 %tmp367 to i32
  br label %block_9023.preheader.lr.ph

block_8fce:                                       ; preds = %block_9023.preheader, %block_9018
  %tmp369 = phi i32 [ %tmp384, %block_9018 ], [ %tmp571, %block_9023.preheader ]
  %r12.541 = phi i64 [ %tmp383, %block_9018 ], [ %r12.1051, %block_9023.preheader ]
  %rbx.540 = phi i64 [ %tmp385, %block_9018 ], [ %rbx.950, %block_9023.preheader ]
  %tmp370 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp371 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp372 = icmp ult i32 %tmp370, %tmp371
  br i1 %tmp372, label %block_8fde, label %block_8fff

block_8fde:                                       ; preds = %block_8fce
  %tmp373 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp374 = zext i32 %tmp373 to i64
  %tmp375 = add i64 %tmp374, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp376 = inttoptr i64 %tmp375 to i8*
  %tmp377 = load i8* %tmp376
  %tmp378 = zext i8 %tmp377 to i64
  br label %block_9018

block_8fff:                                       ; preds = %block_8fce
  store i32 %tmp293, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp379 = call i64 @fill_inbuf(i32 0)
  %tmp380 = and i64 %tmp379, 255
  br label %block_9018

block_9018:                                       ; preds = %block_8fff, %block_8fde
  %rax.8 = phi i64 [ %tmp380, %block_8fff ], [ %tmp378, %block_8fde ]
  %tmp381 = and i64 %rbx.540, 63
  %tmp382 = shl i64 %rax.8, %tmp381
  %tmp383 = or i64 %tmp382, %r12.541
  %tmp384 = add i32 %tmp369, 8
  %tmp385 = zext i32 %tmp384 to i64
  %tmp386 = load i8** %stack_var_-1368
  %tmp387 = ptrtoint i8* %tmp386 to i64
  %tmp388 = trunc i64 %tmp387 to i32
  %tmp389 = icmp ult i32 %tmp384, %tmp388
  br i1 %tmp389, label %block_8fce, label %block_902d

block_902d:                                       ; preds = %block_9018, %block_9023.preheader
  %.lcssa = phi i32 [ %tmp571, %block_9023.preheader ], [ %tmp384, %block_9018 ]
  %r12.5.lcssa = phi i64 [ %r12.1051, %block_9023.preheader ], [ %tmp383, %block_9018 ]
  %tmp390 = load i64* %stack_var_-1320
  %tmp391 = trunc i64 %r12.5.lcssa to i32
  %tmp392 = and i32 %tmp391, %tmp368
  %tmp393 = zext i32 %tmp392 to i64
  %tmp394 = shl nuw nsw i64 %tmp393, 4
  %tmp395 = add i64 %tmp394, %tmp390
  %tmp396 = inttoptr i64 %tmp395 to i8*
  store i8* %tmp396, i8** %stack_var_-1312
  %tmp397 = ptrtoint i8* %tmp396 to i64
  %tmp398 = add i64 %tmp397, 1
  %tmp399 = inttoptr i64 %tmp398 to i8*
  %tmp400 = load i8* %tmp399
  %tmp401 = zext i8 %tmp400 to i32
  %tmp402 = zext i8 %tmp400 to i64
  %tmp403 = and i64 %tmp402, 63
  %tmp404 = lshr i64 %r12.5.lcssa, %tmp403
  %tmp405 = sub i32 %.lcssa, %tmp401
  %tmp406 = zext i32 %tmp405 to i64
  %tmp407 = load i8** %stack_var_-1312
  %tmp408 = load i8* %tmp407
  %tmp409 = icmp eq i8 %tmp408, 99
  br i1 %tmp409, label %block_9080, label %block_9099

block_9080:                                       ; preds = %block_902d
  %tmp410 = load i64* %stack_var_-1320
  %tmp411 = inttoptr i64 %tmp410 to i64*
  %tmp412 = call i64 @huft_free(i64* %tmp411)
  br label %block_94ff

block_9099:                                       ; preds = %block_902d
  %tmp413 = load i8** %stack_var_-1312
  %tmp414 = ptrtoint i8* %tmp413 to i64
  %tmp415 = add i64 %tmp414, 8
  %tmp416 = inttoptr i64 %tmp415 to i16*
  %tmp417 = load i16* %tmp416
  %tmp418 = icmp ugt i16 %tmp417, 15
  br i1 %tmp418, label %block_90e5, label %block_90b6

block_90b6:                                       ; preds = %block_9099
  %tmp419 = zext i16 %tmp417 to i32
  %tmp420 = zext i32 %stack_var_-1360.349 to i64
  %tmp421 = add nuw nsw i64 %tmp420, 1
  %tmp422 = trunc i64 %tmp421 to i32
  %tmp423 = sext i32 %stack_var_-1360.349 to i64
  %tmp424 = shl nsw i64 %tmp423, 2
  %tmp425 = add i64 %tmp424, %tmp294
  %tmp426 = inttoptr i64 %tmp425 to i32*
  store i32 %tmp419, i32* %tmp426
  br label %block_9360.outer.backedge

block_90e5:                                       ; preds = %block_9099
  %tmp427 = icmp eq i16 %tmp417, 16
  br i1 %tmp427, label %block_90f2, label %block_91ba

block_90f2:                                       ; preds = %block_90e5
  %tmp428 = and i64 %tmp406, 4294967294
  %tmp429 = icmp eq i64 %tmp428, 0
  br i1 %tmp429, label %block_90f4, label %block_914e

block_90f4:                                       ; preds = %block_90f2, %block_913e
  %r12.744 = phi i64 [ %tmp443, %block_913e ], [ %tmp404, %block_90f2 ]
  %rbx.643 = phi i64 [ %tmp446, %block_913e ], [ %tmp406, %block_90f2 ]
  %tmp430 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp431 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp432 = icmp ult i32 %tmp430, %tmp431
  br i1 %tmp432, label %block_9104, label %block_9125

block_9104:                                       ; preds = %block_90f4
  %tmp433 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp434 = zext i32 %tmp433 to i64
  %tmp435 = add i64 %tmp434, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp436 = inttoptr i64 %tmp435 to i8*
  %tmp437 = load i8* %tmp436
  %tmp438 = zext i8 %tmp437 to i64
  br label %block_913e

block_9125:                                       ; preds = %block_90f4
  store i32 %tmp293, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp439 = call i64 @fill_inbuf(i32 0)
  %tmp440 = and i64 %tmp439, 255
  br label %block_913e

block_913e:                                       ; preds = %block_9125, %block_9104
  %rax.10 = phi i64 [ %tmp440, %block_9125 ], [ %tmp438, %block_9104 ]
  %tmp441 = and i64 %rbx.643, 63
  %tmp442 = shl i64 %rax.10, %tmp441
  %tmp443 = or i64 %tmp442, %r12.744
  %tmp444 = trunc i64 %rbx.643 to i32
  %tmp445 = add i32 %tmp444, 8
  %tmp446 = zext i32 %tmp445 to i64
  %tmp447 = and i64 %tmp446, 4294967294
  %tmp448 = icmp eq i64 %tmp447, 0
  br i1 %tmp448, label %block_90f4, label %block_914e

block_914e:                                       ; preds = %block_913e, %block_90f2
  %r12.7.lcssa = phi i64 [ %tmp404, %block_90f2 ], [ %tmp443, %block_913e ]
  %rbx.6.lcssa = phi i64 [ %tmp406, %block_90f2 ], [ %tmp446, %block_913e ]
  %tmp449 = trunc i64 %r12.7.lcssa to i32
  %tmp450 = and i32 %tmp449, 3
  %tmp451 = add nuw nsw i32 %tmp450, 3
  %tmp452 = lshr i64 %r12.7.lcssa, 2
  %tmp453 = trunc i64 %rbx.6.lcssa to i32
  %tmp454 = add i32 %tmp453, -2
  %tmp455 = zext i32 %tmp454 to i64
  %tmp456 = add i32 %tmp451, %stack_var_-1360.349
  %tmp457 = icmp ult i32 %tmp361, %tmp456
  br i1 %tmp457, label %block_917a, label %block_91a2.preheader

block_91a2.preheader:                             ; preds = %block_914e
  br label %block_9184

block_917a:                                       ; preds = %block_914e
  br label %block_94ff

block_9184:                                       ; preds = %block_91a2.preheader, %block_9184
  %stack_var_-1360.048 = phi i32 [ %stack_var_-1360.349, %block_91a2.preheader ], [ %tmp465, %block_9184 ]
  %stack_var_-1356.247 = phi i32 [ %tmp451, %block_91a2.preheader ], [ %tmp462, %block_9184 ]
  %tmp460 = zext i32 %stack_var_-1356.247 to i64
  %tmp461 = add nuw nsw i64 %tmp460, 4294967295
  %tmp462 = trunc i64 %tmp461 to i32
  %tmp463 = zext i32 %stack_var_-1360.048 to i64
  %tmp464 = add nuw nsw i64 %tmp463, 1
  %tmp465 = trunc i64 %tmp464 to i32
  %tmp466 = sext i32 %stack_var_-1360.048 to i64
  %tmp467 = shl nsw i64 %tmp466, 2
  %tmp468 = add i64 %tmp467, %tmp294
  %tmp469 = inttoptr i64 %tmp468 to i32*
  store i32 %stack_var_-1352.0.ph69, i32* %tmp469
  %tmp470 = icmp eq i32 %tmp462, 0
  br i1 %tmp470, label %block_91b5, label %block_9184

block_91b5:                                       ; preds = %block_9184
  %tmp471 = add i32 %stack_var_-1360.349, 3
  %tmp472 = add i32 %tmp471, %tmp450
  %tmp473 = icmp ugt i32 %tmp361, %tmp472
  br i1 %tmp473, label %block_9023.preheader, label %block_9372

block_91ba:                                       ; preds = %block_90e5
  %tmp474 = icmp eq i16 %tmp417, 17
  br i1 %tmp474, label %block_91c7, label %block_92ec.preheader

block_92ec.preheader:                             ; preds = %block_91ba
  %tmp475 = icmp ult i32 %tmp405, 7
  br i1 %tmp475, label %block_9297.preheader, label %block_92f1

block_9297.preheader:                             ; preds = %block_92ec.preheader
  %tmp476 = sub i32 6, %tmp405
  br label %block_9297

block_91c7:                                       ; preds = %block_91ba
  %tmp478 = icmp ult i32 %tmp405, 3
  br i1 %tmp478, label %block_91c9.preheader, label %block_9223

block_91c9.preheader:                             ; preds = %block_91c7
  %tmp479 = sub i32 2, %tmp405
  br label %block_91c9

block_91c9:                                       ; preds = %block_91c9.preheader, %block_9213
  %tmp481 = phi i32 [ %tmp496, %block_9213 ], [ %tmp405, %block_91c9.preheader ]
  %r12.863 = phi i64 [ %tmp495, %block_9213 ], [ %tmp404, %block_91c9.preheader ]
  %rbx.762 = phi i64 [ %tmp497, %block_9213 ], [ %tmp406, %block_91c9.preheader ]
  %tmp482 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp483 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp484 = icmp ult i32 %tmp482, %tmp483
  br i1 %tmp484, label %block_91d9, label %block_91fa

block_91d9:                                       ; preds = %block_91c9
  %tmp485 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp486 = zext i32 %tmp485 to i64
  %tmp487 = add i64 %tmp486, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp488 = inttoptr i64 %tmp487 to i8*
  %tmp489 = load i8* %tmp488
  %tmp490 = zext i8 %tmp489 to i64
  br label %block_9213

block_91fa:                                       ; preds = %block_91c9
  store i32 %tmp293, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp491 = call i64 @fill_inbuf(i32 0)
  %tmp492 = and i64 %tmp491, 255
  br label %block_9213

block_9213:                                       ; preds = %block_91fa, %block_91d9
  %rax.12 = phi i64 [ %tmp492, %block_91fa ], [ %tmp490, %block_91d9 ]
  %tmp493 = and i64 %rbx.762, 63
  %tmp494 = shl i64 %rax.12, %tmp493
  %tmp495 = or i64 %tmp494, %r12.863
  %tmp496 = add nuw i32 %tmp481, 8
  %tmp497 = zext i32 %tmp496 to i64
  %tmp498 = icmp ult i32 %tmp496, 3
  br i1 %tmp498, label %block_91c9, label %block_9223.loopexit

block_9223.loopexit:                              ; preds = %block_9213
  %tmp480 = and i32 %tmp479, -8
  %tmp499 = add i32 %tmp405, 8
  %tmp500 = add i32 %tmp499, %tmp480
  br label %block_9223

block_9223:                                       ; preds = %block_9223.loopexit, %block_91c7
  %.lcssa35 = phi i32 [ %tmp405, %block_91c7 ], [ %tmp500, %block_9223.loopexit ]
  %r12.8.lcssa = phi i64 [ %tmp404, %block_91c7 ], [ %tmp495, %block_9223.loopexit ]
  %tmp501 = trunc i64 %r12.8.lcssa to i32
  %tmp502 = and i32 %tmp501, 7
  %tmp503 = add nuw nsw i32 %tmp502, 3
  %tmp504 = lshr i64 %r12.8.lcssa, 3
  %tmp505 = add i32 %.lcssa35, -3
  %tmp506 = zext i32 %tmp505 to i64
  %tmp507 = add i32 %tmp503, %stack_var_-1360.349
  %tmp508 = icmp ult i32 %tmp361, %tmp507
  br i1 %tmp508, label %block_924f, label %block_9275.preheader

block_9275.preheader:                             ; preds = %block_9223
  br label %block_9259

block_924f:                                       ; preds = %block_9223
  br label %block_94ff

block_9259:                                       ; preds = %block_9275.preheader, %block_9259
  %stack_var_-1360.167 = phi i32 [ %stack_var_-1360.349, %block_9275.preheader ], [ %tmp516, %block_9259 ]
  %stack_var_-1356.366 = phi i32 [ %tmp503, %block_9275.preheader ], [ %tmp513, %block_9259 ]
  %tmp511 = zext i32 %stack_var_-1356.366 to i64
  %tmp512 = add nuw nsw i64 %tmp511, 4294967295
  %tmp513 = trunc i64 %tmp512 to i32
  %tmp514 = zext i32 %stack_var_-1360.167 to i64
  %tmp515 = add nuw nsw i64 %tmp514, 1
  %tmp516 = trunc i64 %tmp515 to i32
  %tmp517 = sext i32 %stack_var_-1360.167 to i64
  %tmp518 = shl nsw i64 %tmp517, 2
  %tmp519 = add i64 %tmp518, %tmp294
  %tmp520 = inttoptr i64 %tmp519 to i32*
  store i32 0, i32* %tmp520
  %tmp521 = icmp eq i32 %tmp513, 0
  br i1 %tmp521, label %block_9288, label %block_9259

block_9288:                                       ; preds = %block_9259
  %tmp522 = add i32 %stack_var_-1360.349, 3
  %tmp523 = add i32 %tmp522, %tmp502
  br label %block_9360.outer.backedge

block_9297:                                       ; preds = %block_9297.preheader, %block_92e1
  %tmp524 = phi i32 [ %tmp539, %block_92e1 ], [ %tmp405, %block_9297.preheader ]
  %r12.957 = phi i64 [ %tmp538, %block_92e1 ], [ %tmp404, %block_9297.preheader ]
  %rbx.856 = phi i64 [ %tmp540, %block_92e1 ], [ %tmp406, %block_9297.preheader ]
  %tmp525 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp526 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp527 = icmp ult i32 %tmp525, %tmp526
  br i1 %tmp527, label %block_92a7, label %block_92c8

block_92a7:                                       ; preds = %block_9297
  %tmp528 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp529 = zext i32 %tmp528 to i64
  %tmp530 = add i64 %tmp529, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp531 = inttoptr i64 %tmp530 to i8*
  %tmp532 = load i8* %tmp531
  %tmp533 = zext i8 %tmp532 to i64
  br label %block_92e1

block_92c8:                                       ; preds = %block_9297
  store i32 %tmp293, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp534 = call i64 @fill_inbuf(i32 0)
  %tmp535 = and i64 %tmp534, 255
  br label %block_92e1

block_92e1:                                       ; preds = %block_92c8, %block_92a7
  %rax.14 = phi i64 [ %tmp535, %block_92c8 ], [ %tmp533, %block_92a7 ]
  %tmp536 = and i64 %rbx.856, 63
  %tmp537 = shl i64 %rax.14, %tmp536
  %tmp538 = or i64 %tmp537, %r12.957
  %tmp539 = add nuw i32 %tmp524, 8
  %tmp540 = zext i32 %tmp539 to i64
  %tmp541 = icmp ult i32 %tmp539, 7
  br i1 %tmp541, label %block_9297, label %block_92f1.loopexit

block_92f1.loopexit:                              ; preds = %block_92e1
  %tmp477 = and i32 %tmp476, -8
  %tmp542 = add i32 %tmp405, 8
  %tmp543 = add i32 %tmp542, %tmp477
  br label %block_92f1

block_92f1:                                       ; preds = %block_92f1.loopexit, %block_92ec.preheader
  %.lcssa34 = phi i32 [ %tmp405, %block_92ec.preheader ], [ %tmp543, %block_92f1.loopexit ]
  %r12.9.lcssa = phi i64 [ %tmp404, %block_92ec.preheader ], [ %tmp538, %block_92f1.loopexit ]
  %tmp544 = trunc i64 %r12.9.lcssa to i32
  %tmp545 = and i32 %tmp544, 127
  %tmp546 = add nuw nsw i32 %tmp545, 11
  %tmp547 = lshr i64 %r12.9.lcssa, 7
  %tmp548 = add i32 %.lcssa34, -7
  %tmp549 = zext i32 %tmp548 to i64
  %tmp550 = add i32 %tmp546, %stack_var_-1360.349
  %tmp551 = icmp ult i32 %tmp361, %tmp550
  br i1 %tmp551, label %block_931d, label %block_9343.preheader

block_9343.preheader:                             ; preds = %block_92f1
  br label %block_9327

block_931d:                                       ; preds = %block_92f1
  br label %block_94ff

block_9327:                                       ; preds = %block_9343.preheader, %block_9327
  %stack_var_-1360.261 = phi i32 [ %stack_var_-1360.349, %block_9343.preheader ], [ %tmp559, %block_9327 ]
  %stack_var_-1356.460 = phi i32 [ %tmp546, %block_9343.preheader ], [ %tmp556, %block_9327 ]
  %tmp554 = zext i32 %stack_var_-1356.460 to i64
  %tmp555 = add nuw nsw i64 %tmp554, 4294967295
  %tmp556 = trunc i64 %tmp555 to i32
  %tmp557 = zext i32 %stack_var_-1360.261 to i64
  %tmp558 = add nuw nsw i64 %tmp557, 1
  %tmp559 = trunc i64 %tmp558 to i32
  %tmp560 = sext i32 %stack_var_-1360.261 to i64
  %tmp561 = shl nsw i64 %tmp560, 2
  %tmp562 = add i64 %tmp561, %tmp294
  %tmp563 = inttoptr i64 %tmp562 to i32*
  store i32 0, i32* %tmp563
  %tmp564 = icmp eq i32 %tmp556, 0
  br i1 %tmp564, label %block_9356, label %block_9327

block_9356:                                       ; preds = %block_9327
  %tmp565 = add i32 %stack_var_-1360.349, 11
  %tmp566 = add i32 %tmp565, %tmp545
  br label %block_9360.outer.backedge

block_9360.outer.backedge:                        ; preds = %block_9356, %block_9288, %block_90b6
  %stack_var_-1360.3.ph.be = phi i32 [ %tmp422, %block_90b6 ], [ %tmp523, %block_9288 ], [ %tmp566, %block_9356 ]
  %stack_var_-1352.0.ph.be = phi i32 [ %tmp419, %block_90b6 ], [ 0, %block_9288 ], [ 0, %block_9356 ]
  %rbx.9.ph.be = phi i64 [ %tmp406, %block_90b6 ], [ %tmp506, %block_9288 ], [ %tmp549, %block_9356 ]
  %r12.10.ph.be = phi i64 [ %tmp404, %block_90b6 ], [ %tmp504, %block_9288 ], [ %tmp547, %block_9356 ]
  %tmp567 = icmp ugt i32 %tmp361, %stack_var_-1360.3.ph.be
  br i1 %tmp567, label %block_9023.preheader.lr.ph, label %block_9372

block_9023.preheader.lr.ph:                       ; preds = %block_8f81, %block_9360.outer.backedge
  %r12.10.ph71 = phi i64 [ %tmp328, %block_8f81 ], [ %r12.10.ph.be, %block_9360.outer.backedge ]
  %rbx.9.ph70 = phi i64 [ %tmp330, %block_8f81 ], [ %rbx.9.ph.be, %block_9360.outer.backedge ]
  %stack_var_-1352.0.ph69 = phi i32 [ 0, %block_8f81 ], [ %stack_var_-1352.0.ph.be, %block_9360.outer.backedge ]
  %stack_var_-1360.3.ph68 = phi i32 [ 0, %block_8f81 ], [ %stack_var_-1360.3.ph.be, %block_9360.outer.backedge ]
  br label %block_9023.preheader

block_9023.preheader:                             ; preds = %block_9023.preheader.lr.ph, %block_91b5
  %r12.1051 = phi i64 [ %r12.10.ph71, %block_9023.preheader.lr.ph ], [ %tmp452, %block_91b5 ]
  %rbx.950 = phi i64 [ %rbx.9.ph70, %block_9023.preheader.lr.ph ], [ %tmp455, %block_91b5 ]
  %stack_var_-1360.349 = phi i32 [ %stack_var_-1360.3.ph68, %block_9023.preheader.lr.ph ], [ %tmp472, %block_91b5 ]
  %tmp568 = load i8** %stack_var_-1368
  %tmp569 = ptrtoint i8* %tmp568 to i64
  %tmp570 = trunc i64 %tmp569 to i32
  %tmp571 = trunc i64 %rbx.950 to i32
  %tmp572 = icmp ult i32 %tmp571, %tmp570
  br i1 %tmp572, label %block_8fce, label %block_902d

block_9372:                                       ; preds = %block_9360.outer.backedge, %block_91b5
  %r12.10.lcssa = phi i64 [ %tmp452, %block_91b5 ], [ %r12.10.ph.be, %block_9360.outer.backedge ]
  %rbx.9.lcssa = phi i64 [ %tmp455, %block_91b5 ], [ %rbx.9.ph.be, %block_9360.outer.backedge ]
  %tmp573 = load i64* %stack_var_-1320
  %tmp574 = inttoptr i64 %tmp573 to i64*
  %tmp575 = call i64 @huft_free(i64* %tmp574)
  store i64 %r12.10.lcssa, i64* @global_var_216f98
  %tmp576 = trunc i64 %rbx.9.lcssa to i32
  store i32 %tmp576, i32* bitcast (i64* @global_var_216fa0 to i32*)
  %tmp577 = load i32* bitcast ([2 x i8]* @global_var_216304 to i32*)
  %tmp578 = sext i32 %tmp577 to i64
  %tmp579 = inttoptr i64 %tmp578 to i8*
  store i8* %tmp579, i8** %stack_var_-1368
  %tmp580 = zext i32 %tmp230 to i64
  store i8** %stack_var_-1368, i8*** %tmp348
  %tmp581 = load i32** %stack_var_-1384
  %tmp582 = call i64 @huft_build(i32* %tmp350, i64 %tmp580, i64 257, i64* @global_var_2161e0, i64* @global_var_216220, i64* %stack_var_-1320, i32* %tmp581)
  %tmp583 = trunc i64 %tmp582 to i32
  %tmp584 = icmp eq i32 %tmp583, 0
  br i1 %tmp584, label %block_940e, label %block_93eb

block_93eb:                                       ; preds = %block_9372
  %tmp585 = icmp eq i32 %tmp583, 1
  br i1 %tmp585, label %block_93f4, label %block_9403

block_93f4:                                       ; preds = %block_93eb
  %tmp586 = load i64* %stack_var_-1320
  %tmp587 = inttoptr i64 %tmp586 to i64*
  %tmp588 = call i64 @huft_free(i64* %tmp587)
  br label %block_9403

block_9403:                                       ; preds = %block_93eb, %block_93f4
  %tmp589 = and i64 %tmp582, 4294967295
  br label %block_94ff

block_940e:                                       ; preds = %block_9372
  %tmp590 = load i32* bitcast (i64* @global_var_216308 to i32*)
  store i32 %tmp590, i32* %stack_var_-1364
  %tmp591 = shl nuw nsw i64 %tmp580, 2
  %tmp592 = add i64 %tmp591, %tmp347
  store i32* %stack_var_-1364, i32** %stack_var_-1384
  %tmp593 = zext i32 %tmp260 to i64
  %tmp594 = inttoptr i64 %tmp592 to i64*
  %tmp595 = bitcast i8** %stack_var_-1312 to i64*
  %tmp596 = load i32** %stack_var_-1384
  %tmp597 = bitcast i64* %tmp594 to i32*
  %tmp598 = call i64 @huft_build(i32* %tmp597, i64 %tmp593, i64 0, i64* @global_var_216260, i64* @global_var_2162a0, i64* %tmp595, i32* %tmp596)
  %tmp599 = trunc i64 %tmp598 to i32
  %tmp600 = icmp eq i32 %tmp599, 0
  br i1 %tmp600, label %block_94ab, label %block_947c

block_947c:                                       ; preds = %block_940e
  %tmp601 = icmp eq i32 %tmp599, 1
  br i1 %tmp601, label %block_9485, label %block_9494

block_9485:                                       ; preds = %block_947c
  %0 = load i8** %stack_var_-1312
  %1 = bitcast i8* %0 to i64*
  %tmp604 = call i64 @huft_free(i64* %1)
  br label %block_9494

block_9494:                                       ; preds = %block_947c, %block_9485
  %tmp605 = load i64* %stack_var_-1320
  %tmp606 = inttoptr i64 %tmp605 to i64*
  %tmp607 = call i64 @huft_free(i64* %tmp606)
  %tmp608 = and i64 %tmp598, 4294967295
  br label %block_94ff

block_94ab:                                       ; preds = %block_940e
  %tmp609 = load i32* %stack_var_-1364
  %tmp610 = load i8** %stack_var_-1368
  %tmp611 = ptrtoint i8* %tmp610 to i64
  %tmp612 = trunc i64 %tmp611 to i32
  %tmp613 = load i8** %stack_var_-1312
  %tmp614 = ptrtoint i8* %tmp613 to i64
  %tmp615 = load i64* %stack_var_-1320
  %tmp616 = inttoptr i64 %tmp615 to i8*
  %tmp617 = call i64 @inflate_codes(i8* %tmp616, i64 %tmp614, i32 %tmp612, i32 %tmp609)
  %tmp618 = trunc i64 %tmp617 to i32
  %tmp619 = icmp ne i32 %tmp618, 0
  %tmp620 = load i64* %stack_var_-1320
  %tmp621 = inttoptr i64 %tmp620 to i64*
  %tmp622 = call i64 @huft_free(i64* %tmp621)
  %2 = load i8** %stack_var_-1312
  %3 = bitcast i8* %2 to i64*
  %tmp625 = call i64 @huft_free(i64* %3)
  %tmp626 = zext i1 %tmp619 to i64
  br label %block_94ff

block_94ff:                                       ; preds = %block_94ab, %block_9494, %block_9403, %block_931d, %block_924f, %block_917a, %block_9080, %block_8f77, %block_8f60, %block_8e02
  %rax.16 = phi i64 [ 1, %block_8e02 ], [ 1, %block_931d ], [ 1, %block_924f ], [ 1, %block_917a ], [ 2, %block_9080 ], [ %tmp626, %block_94ab ], [ %tmp608, %block_9494 ], [ %tmp589, %block_9403 ], [ 2, %block_8f77 ], [ %tmp358, %block_8f60 ]
  %tmp627 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp628 = icmp eq i64 %tmp198, %tmp627
  br i1 %tmp628, label %block_9513, label %block_950e

block_950e:                                       ; preds = %block_94ff
  call void @__stack_chk_fail()
  unreachable

block_9513:                                       ; preds = %block_94ff
  ret i64 %rax.16
}

define i64 @inflate_block(i32* %arg1) {
block_951c:
  %tmp32 = load i64* @global_var_216f98
  %tmp33 = load i32* bitcast (i64* @global_var_216fa0 to i32*)
  %tmp34 = zext i32 %tmp33 to i64
  %tmp35 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp36 = inttoptr i32 %tmp35 to i64*
  %tmp37 = icmp eq i32 %tmp33, 0
  br i1 %tmp37, label %block_9543.lr.ph, label %block_9599

block_9543.lr.ph:                                 ; preds = %block_951c
  %phitmp = and i64 %tmp34, 63
  %tmp38 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp39 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp40 = icmp ult i32 %tmp38, %tmp39
  br i1 %tmp40, label %block_9553, label %block_9574

block_9553:                                       ; preds = %block_9543.lr.ph
  %tmp41 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp42 = zext i32 %tmp41 to i64
  %tmp43 = add i64 %tmp42, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp44 = inttoptr i64 %tmp43 to i8*
  %tmp45 = load i8* %tmp44
  %tmp46 = zext i8 %tmp45 to i64
  br label %block_958a

block_9574:                                       ; preds = %block_9543.lr.ph
  %tmp47 = ptrtoint i64* %tmp36 to i32
  store i32 %tmp47, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp48 = call i64 @fill_inbuf(i32 0)
  %tmp49 = and i64 %tmp48, 255
  br label %block_958a

block_958a:                                       ; preds = %block_9574, %block_9553
  %rax.0 = phi i64 [ %tmp49, %block_9574 ], [ %tmp46, %block_9553 ]
  %tmp50 = shl i64 %rax.0, %phitmp
  %tmp51 = or i64 %tmp50, %tmp32
  br label %block_9599

block_9599:                                       ; preds = %block_958a, %block_951c
  %r12.0.lcssa = phi i64 [ %tmp51, %block_958a ], [ %tmp32, %block_951c ]
  %rbx.0.lcssa = phi i64 [ 8, %block_958a ], [ %tmp34, %block_951c ]
  %tmp52 = trunc i64 %r12.0.lcssa to i32
  %tmp53 = and i32 %tmp52, 1
  store i32 %tmp53, i32* %arg1
  %tmp54 = lshr i64 %r12.0.lcssa, 1
  %tmp55 = trunc i64 %rbx.0.lcssa to i32
  %tmp56 = add i32 %tmp55, -1
  %tmp57 = zext i32 %tmp56 to i64
  %tmp58 = and i64 %tmp57, 4294967294
  %tmp59 = icmp eq i64 %tmp58, 0
  br i1 %tmp59, label %block_95af.lr.ph, label %block_9606

block_95af.lr.ph:                                 ; preds = %block_9599
  %tmp60 = ptrtoint i64* %tmp36 to i32
  br label %block_95af

block_95af:                                       ; preds = %block_95af.lr.ph, %block_95f6
  %r12.12 = phi i64 [ %tmp54, %block_95af.lr.ph ], [ %tmp74, %block_95f6 ]
  %rbx.11 = phi i64 [ %tmp57, %block_95af.lr.ph ], [ %tmp77, %block_95f6 ]
  %tmp61 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp62 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp63 = icmp ult i32 %tmp61, %tmp62
  br i1 %tmp63, label %block_95bf, label %block_95e0

block_95bf:                                       ; preds = %block_95af
  %tmp64 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp65 = zext i32 %tmp64 to i64
  %tmp66 = add i64 %tmp65, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp67 = inttoptr i64 %tmp66 to i8*
  %tmp68 = load i8* %tmp67
  %tmp69 = zext i8 %tmp68 to i64
  br label %block_95f6

block_95e0:                                       ; preds = %block_95af
  store i32 %tmp60, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp70 = call i64 @fill_inbuf(i32 0)
  %tmp71 = and i64 %tmp70, 255
  br label %block_95f6

block_95f6:                                       ; preds = %block_95e0, %block_95bf
  %rax.2 = phi i64 [ %tmp71, %block_95e0 ], [ %tmp69, %block_95bf ]
  %tmp72 = and i64 %rbx.11, 63
  %tmp73 = shl i64 %rax.2, %tmp72
  %tmp74 = or i64 %tmp73, %r12.12
  %tmp75 = trunc i64 %rbx.11 to i32
  %tmp76 = add i32 %tmp75, 8
  %tmp77 = zext i32 %tmp76 to i64
  %tmp78 = and i64 %tmp77, 4294967294
  %tmp79 = icmp eq i64 %tmp78, 0
  br i1 %tmp79, label %block_95af, label %block_9606

block_9606:                                       ; preds = %block_95f6, %block_9599
  %r12.1.lcssa = phi i64 [ %tmp54, %block_9599 ], [ %tmp74, %block_95f6 ]
  %rbx.1.lcssa = phi i64 [ %tmp57, %block_9599 ], [ %tmp77, %block_95f6 ]
  %tmp80 = trunc i64 %r12.1.lcssa to i32
  %tmp81 = and i32 %tmp80, 3
  %tmp82 = lshr i64 %r12.1.lcssa, 2
  %tmp83 = trunc i64 %rbx.1.lcssa to i32
  %tmp84 = add i32 %tmp83, -2
  store i64 %tmp82, i64* @global_var_216f98
  store i32 %tmp84, i32* bitcast (i64* @global_var_216fa0 to i32*)
  %tmp85 = icmp eq i32 %tmp81, 2
  br i1 %tmp85, label %block_9629, label %block_9630

block_9629:                                       ; preds = %block_9606
  %tmp86 = call i64 @inflate_dynamic()
  br label %block_964f

block_9630:                                       ; preds = %block_9606
  %tmp87 = icmp eq i32 %tmp81, 0
  br i1 %tmp87, label %block_9636, label %block_963d

block_9636:                                       ; preds = %block_9630
  %tmp88 = call i64 @inflate_stored()
  br label %block_964f

block_963d:                                       ; preds = %block_9630
  %tmp89 = icmp eq i32 %tmp81, 1
  br i1 %tmp89, label %block_9643, label %block_964a

block_9643:                                       ; preds = %block_963d
  %tmp90 = call i64 @inflate_fixed()
  br label %block_964f

block_964a:                                       ; preds = %block_963d
  br label %block_964f

block_964f:                                       ; preds = %block_964a, %block_9643, %block_9636, %block_9629
  %rax.4 = phi i64 [ 2, %block_964a ], [ %tmp90, %block_9643 ], [ %tmp88, %block_9636 ], [ %tmp86, %block_9629 ]
  ret i64 %rax.4
}

define i32 @inflate(%z_stream_s* %strm, i32 %flush) {
block_9658:
  %stack_var_-28 = alloca i32
  %tmp28 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  store i32 0, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_216fa0 to i32*)
  store i64 0, i64* @global_var_216f98
  br label %block_9695

block_9695:                                       ; preds = %block_96cd, %block_9658
  %stack_var_-24.0 = phi i32 [ 0, %block_9658 ], [ %stack_var_-24.1, %block_96cd ]
  store i32 0, i32* bitcast (i64* @global_var_216fa4 to i32*)
  %tmp29 = call i64 @inflate_block(i32* %stack_var_-28)
  %tmp30 = trunc i64 %tmp29 to i32
  %tmp31 = icmp eq i32 %tmp30, 0
  br i1 %tmp31, label %block_96b9, label %block_96b4

block_96b4:                                       ; preds = %block_9695
  %tmp32 = and i64 %tmp29, 4294967295
  br label %block_9715

block_96b9:                                       ; preds = %block_9695
  %tmp33 = load i32* bitcast (i64* @global_var_216fa4 to i32*)
  %tmp34 = icmp ult i32 %stack_var_-24.0, %tmp33
  br i1 %tmp34, label %block_96c4, label %block_96cd

block_96c4:                                       ; preds = %block_96b9
  %tmp35 = load i32* bitcast (i64* @global_var_216fa4 to i32*)
  br label %block_96cd

block_96cd:                                       ; preds = %block_96b9, %block_96c4
  %stack_var_-24.1 = phi i32 [ %stack_var_-24.0, %block_96b9 ], [ %tmp35, %block_96c4 ]
  %tmp36 = load i32* %stack_var_-28
  %tmp37 = icmp eq i32 %tmp36, 0
  br i1 %tmp37, label %block_9695, label %block_96d4

block_96d4:                                       ; preds = %block_96cd
  %tmp38 = load i32* bitcast (i64* @global_var_216fa0 to i32*)
  %tmp39 = icmp ugt i32 %tmp38, 7
  br i1 %tmp39, label %block_96d6.lr.ph, label %block_96ff

block_96d6.lr.ph:                                 ; preds = %block_96d4
  %.promoted = load i32* bitcast (i64* @global_var_216fa0 to i32*)
  %.promoted4 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp40 = add i32 %.promoted4, -1
  %tmp41 = sub i32 7, %.promoted
  %tmp42 = icmp ugt i32 %tmp41, -8
  %umax = select i1 %tmp42, i32 %tmp41, i32 -8
  %tmp43 = add i32 %umax, %.promoted
  %tmp44 = lshr i32 %tmp43, 3
  %tmp45 = sub i32 %tmp40, %tmp44
  br label %block_96d6

block_96d6:                                       ; preds = %block_96d6.lr.ph, %block_96d6
  %tmp47 = phi i32 [ %.promoted, %block_96d6.lr.ph ], [ %tmp48, %block_96d6 ]
  %tmp48 = add i32 %tmp47, -8
  %tmp49 = icmp ugt i32 %tmp48, 7
  br i1 %tmp49, label %block_96d6, label %block_96f4.block_96ff_crit_edge

block_96f4.block_96ff_crit_edge:                  ; preds = %block_96d6
  %tmp46 = shl nuw i32 %tmp44, 3
  %tmp50 = add i32 %.promoted, -8
  %tmp51 = sub i32 %tmp50, %tmp46
  store i32 %tmp51, i32* bitcast (i64* @global_var_216fa0 to i32*)
  store i32 %tmp45, i32* bitcast (i64* @global_var_24a884 to i32*)
  br label %block_96ff

block_96ff:                                       ; preds = %block_96f4.block_96ff_crit_edge, %block_96d4
  %tmp52 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 %tmp52, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp53 = call i64 @flush_window()
  br label %block_9715

block_9715:                                       ; preds = %block_96ff, %block_96b4
  %rax.0 = phi i64 [ 0, %block_96ff ], [ %tmp32, %block_96b4 ]
  %tmp54 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp55 = icmp eq i64 %tmp28, %tmp54
  br i1 %tmp55, label %block_9729, label %block_9724

block_9724:                                       ; preds = %block_9715
  call void @__stack_chk_fail()
  unreachable

block_9729:                                       ; preds = %block_9715
  %tmp56 = trunc i64 %rax.0 to i32
  ret i32 %tmp56
}

define i64 @lzw(i32 %arg1, i64 %arg2) {
block_972b:
  %tmp18 = load i32* bitcast (i64* @global_var_216fa8 to i32*)
  %tmp19 = icmp eq i32 %tmp18, 0
  br i1 %tmp19, label %block_974a, label %block_9743

block_9743:                                       ; preds = %block_972b
  br label %block_978b

block_974a:                                       ; preds = %block_972b
  %tmp20 = trunc i64 %arg2 to i32
  store i32 1, i32* bitcast (i64* @global_var_216fa8 to i32*)
  %tmp21 = load i64* @global_var_216580
  %tmp22 = inttoptr i64 %tmp21 to %_IO_FILE*
  %tmp23 = call i32 @fwrite(i64* bitcast ([44 x i8]* @global_var_12090 to i64*), i32 1, i32 43, %_IO_FILE* %tmp22)
  %tmp24 = icmp eq i32 %tmp20, %arg1
  br i1 %tmp24, label %block_9786, label %block_977c

block_977c:                                       ; preds = %block_974a
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_9786

block_9786:                                       ; preds = %block_977c, %block_974a
  br label %block_978b

block_978b:                                       ; preds = %block_9786, %block_9743
  ret i64 1
}

define i64 @ct_init(i16* %arg1, i8* %arg2) {
block_978d:
  %tmp86 = ptrtoint i16* %arg1 to i64
  store i64 %tmp86, i64* @global_var_219ef0
  %tmp87 = ptrtoint i8* %arg2 to i64
  store i64 %tmp87, i64* @global_var_219ef8
  store i64 0, i64* @global_var_219ee8
  store i64 0, i64* @global_var_219ee0
  %tmp88 = load i16* bitcast (i64* @global_var_217e42 to i16*)
  %tmp89 = icmp eq i16 %tmp88, 0
  br i1 %tmp89, label %block_97dc, label %block_9b13

block_97dc:                                       ; preds = %block_978d
  br label %block_97ec

block_97ec:                                       ; preds = %block_9855, %block_97dc
  %indvars.iv36 = phi i64 [ 0, %block_97dc ], [ %indvars.iv.next37, %block_9855 ]
  %stack_var_-16.016 = phi i32 [ 0, %block_97dc ], [ %tmp111, %block_9855 ]
  %stack_var_-20.115 = phi i32 [ 0, %block_97dc ], [ %stack_var_-20.0, %block_9855 ]
  %tmp90 = shl nsw i64 %indvars.iv36, 2
  %tmp91 = add i64 %tmp90, ptrtoint (i64* @global_var_218dc0 to i64)
  %tmp92 = inttoptr i64 %tmp91 to i32*
  store i32 %stack_var_-20.115, i32* %tmp92
  %tmp93 = add i64 %tmp90, ptrtoint (i64* @global_var_216320 to i64)
  %tmp94 = inttoptr i64 %tmp93 to i32*
  %tmp95 = trunc i32 %stack_var_-16.016 to i8
  br label %block_982e

block_980f:                                       ; preds = %bb108
  %tmp96 = zext i32 %stack_var_-20.0 to i64
  %tmp97 = add nuw nsw i64 %tmp96, 1
  %tmp98 = trunc i64 %tmp97 to i32
  %tmp99 = sext i32 %stack_var_-20.0 to i64
  %tmp100 = add i64 %tmp99, ptrtoint (i64* @global_var_218ac0 to i64)
  %tmp101 = inttoptr i64 %tmp100 to i8*
  store i8 %tmp95, i8* %tmp101
  %tmp102 = add i32 %stack_var_-28.0, 1
  br label %block_982e

block_982e:                                       ; preds = %block_980f, %block_97ec
  %stack_var_-20.0 = phi i32 [ %stack_var_-20.115, %block_97ec ], [ %tmp98, %block_980f ]
  %stack_var_-28.0 = phi i32 [ 0, %block_97ec ], [ %tmp102, %block_980f ]
  %tmp103 = load i32* %tmp94
  %tmp104 = and i32 %tmp103, 31
  %tmp105 = icmp eq i32 %tmp104, 0
  br i1 %tmp105, label %bb108, label %bb

bb:                                               ; preds = %block_982e
  %tmp106 = shl i32 1, %tmp104
  %tmp107 = zext i32 %tmp106 to i64
  br label %bb108

bb108:                                            ; preds = %block_982e, %bb
  %rdx.0 = phi i64 [ 1, %block_982e ], [ %tmp107, %bb ]
  %tmp109 = sext i32 %stack_var_-28.0 to i64
  %tmp110 = icmp slt i64 %tmp109, %rdx.0
  br i1 %tmp110, label %block_980f, label %block_9855

block_9855:                                       ; preds = %bb108
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %tmp111 = add nuw nsw i32 %stack_var_-16.016, 1
  %exitcond38 = icmp eq i64 %indvars.iv.next37, 28
  br i1 %exitcond38, label %block_985f, label %block_97ec

block_985f:                                       ; preds = %block_9855
  %tmp112 = zext i32 %stack_var_-20.0 to i64
  %tmp113 = shl nuw i64 %tmp112, 32
  %sext = add i64 %tmp113, -4294967296
  %tmp114 = ashr exact i64 %sext, 32
  %tmp115 = add i64 %tmp114, ptrtoint (i64* @global_var_218ac0 to i64)
  %tmp116 = inttoptr i64 %tmp115 to i8*
  store i8 28, i8* %tmp116
  br label %block_9887

block_9887:                                       ; preds = %block_98f0, %block_985f
  %indvars.iv33 = phi i64 [ 0, %block_985f ], [ %indvars.iv.next34, %block_98f0 ]
  %stack_var_-12.114 = phi i32 [ 0, %block_985f ], [ %stack_var_-12.0, %block_98f0 ]
  %stack_var_-16.113 = phi i32 [ 0, %block_985f ], [ %tmp139, %block_98f0 ]
  %tmp117 = shl nsw i64 %indvars.iv33, 2
  %tmp118 = add i64 %tmp117, ptrtoint (i64* @global_var_218e40 to i64)
  %tmp119 = inttoptr i64 %tmp118 to i32*
  store i32 %stack_var_-12.114, i32* %tmp119
  %tmp120 = add i64 %tmp117, ptrtoint (i64* @global_var_2163a0 to i64)
  %tmp121 = inttoptr i64 %tmp120 to i32*
  %tmp122 = trunc i32 %stack_var_-16.113 to i8
  br label %block_98c9

block_98aa:                                       ; preds = %bb136
  %tmp123 = zext i32 %stack_var_-12.0 to i64
  %tmp124 = add nuw nsw i64 %tmp123, 1
  %tmp125 = trunc i64 %tmp124 to i32
  %tmp126 = sext i32 %stack_var_-12.0 to i64
  %tmp127 = add i64 %tmp126, ptrtoint (i64* @global_var_218bc0 to i64)
  %tmp128 = inttoptr i64 %tmp127 to i8*
  store i8 %tmp122, i8* %tmp128
  %tmp129 = add i32 %stack_var_-28.1, 1
  br label %block_98c9

block_98c9:                                       ; preds = %block_98aa, %block_9887
  %stack_var_-28.1 = phi i32 [ 0, %block_9887 ], [ %tmp129, %block_98aa ]
  %stack_var_-12.0 = phi i32 [ %stack_var_-12.114, %block_9887 ], [ %tmp125, %block_98aa ]
  %tmp130 = load i32* %tmp121
  %tmp131 = and i32 %tmp130, 31
  %tmp132 = icmp eq i32 %tmp131, 0
  br i1 %tmp132, label %bb136, label %bb133

bb133:                                            ; preds = %block_98c9
  %tmp134 = shl i32 1, %tmp131
  %tmp135 = zext i32 %tmp134 to i64
  br label %bb136

bb136:                                            ; preds = %block_98c9, %bb133
  %rdx.1 = phi i64 [ 1, %block_98c9 ], [ %tmp135, %bb133 ]
  %tmp137 = sext i32 %stack_var_-28.1 to i64
  %tmp138 = icmp slt i64 %tmp137, %rdx.1
  br i1 %tmp138, label %block_98aa, label %block_98f0

block_98f0:                                       ; preds = %bb136
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %tmp139 = add nuw nsw i32 %stack_var_-16.113, 1
  %exitcond35 = icmp eq i64 %indvars.iv.next34, 16
  br i1 %exitcond35, label %block_9900.lr.ph, label %block_9887

block_9900.lr.ph:                                 ; preds = %block_98f0
  %tmp140 = ashr i32 %stack_var_-12.0, 7
  br label %block_9900

block_9900:                                       ; preds = %block_9977, %block_9900.lr.ph
  %indvars.iv30 = phi i64 [ 16, %block_9900.lr.ph ], [ %indvars.iv.next31, %block_9977 ]
  %stack_var_-12.312 = phi i32 [ %tmp140, %block_9900.lr.ph ], [ %stack_var_-12.2, %block_9977 ]
  %tmp141 = shl i32 %stack_var_-12.312, 7
  %tmp142 = shl nsw i64 %indvars.iv30, 2
  %tmp143 = add i64 %tmp142, ptrtoint (i64* @global_var_218e40 to i64)
  %tmp144 = inttoptr i64 %tmp143 to i32*
  store i32 %tmp141, i32* %tmp144
  %tmp145 = add i64 %tmp142, ptrtoint (i64* @global_var_2163a0 to i64)
  %tmp146 = inttoptr i64 %tmp145 to i32*
  %tmp148 = trunc i64 %indvars.iv30 to i8
  br label %block_994d

block_9928:                                       ; preds = %bb164
  %tmp149 = zext i32 %stack_var_-12.2 to i64
  %tmp150 = add nuw nsw i64 %tmp149, 1
  %tmp151 = trunc i64 %tmp150 to i32
  %tmp152 = shl nuw i64 %tmp149, 32
  %sext3 = add i64 %tmp152, 1099511627776
  %tmp153 = ashr exact i64 %sext3, 32
  %tmp154 = add i64 %tmp153, ptrtoint (i64* @global_var_218bc0 to i64)
  %tmp155 = inttoptr i64 %tmp154 to i8*
  store i8 %tmp148, i8* %tmp155
  %tmp156 = add i32 %stack_var_-28.2, 1
  br label %block_994d

block_994d:                                       ; preds = %block_9928, %block_9900
  %stack_var_-28.2 = phi i32 [ 0, %block_9900 ], [ %tmp156, %block_9928 ]
  %stack_var_-12.2 = phi i32 [ %stack_var_-12.312, %block_9900 ], [ %tmp151, %block_9928 ]
  %tmp157 = load i32* %tmp146
  %tmp158 = add i32 %tmp157, 25
  %tmp159 = and i32 %tmp158, 31
  %tmp160 = icmp eq i32 %tmp159, 0
  br i1 %tmp160, label %bb164, label %bb161

bb161:                                            ; preds = %block_994d
  %tmp162 = shl i32 1, %tmp159
  %tmp163 = zext i32 %tmp162 to i64
  br label %bb164

bb164:                                            ; preds = %block_994d, %bb161
  %rdx.2 = phi i64 [ 1, %block_994d ], [ %tmp163, %bb161 ]
  %tmp165 = sext i32 %stack_var_-28.2 to i64
  %tmp166 = icmp slt i64 %tmp165, %rdx.2
  br i1 %tmp166, label %block_9928, label %block_9977

block_9977:                                       ; preds = %bb164
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond210 = icmp eq i64 %indvars.iv.next31, 30
  br i1 %exitcond210, label %block_9985, label %block_9900

block_9985:                                       ; preds = %block_9977
  br label %block_998e

block_998e:                                       ; preds = %block_998e, %block_9985
  %indvars.iv27 = phi i64 [ 0, %block_9985 ], [ %indvars.iv.next28, %block_998e ]
  %tmp167 = shl i64 %indvars.iv27, 1
  %tmp168 = add i64 %tmp167, ptrtoint (i64* @global_var_217f60 to i64)
  %tmp169 = inttoptr i64 %tmp168 to i16*
  store i16 0, i16* %tmp169
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond29 = icmp eq i64 %indvars.iv.next28, 16
  br i1 %exitcond29, label %block_99ae, label %block_998e

block_99ae:                                       ; preds = %block_998e
  br label %block_99b7

block_99b7:                                       ; preds = %block_99ae, %block_99b7
  %stack_var_-28.39 = phi i32 [ 0, %block_99ae ], [ %tmp172, %block_99b7 ]
  %tmp170 = zext i32 %stack_var_-28.39 to i64
  %tmp171 = add nuw nsw i64 %tmp170, 1
  %tmp172 = trunc i64 %tmp171 to i32
  %tmp173 = sext i32 %stack_var_-28.39 to i64
  %tmp174 = shl nsw i64 %tmp173, 2
  %tmp175 = add i64 %tmp174, ptrtoint (i64* @global_var_2179c2 to i64)
  %tmp176 = inttoptr i64 %tmp175 to i16*
  store i16 8, i16* %tmp176
  store i16 ptrtoint (i64* @global_var_217f71 to i16), i16* bitcast (i64* @global_var_217f70 to i16*)
  %tmp177 = icmp slt i32 %tmp172, 144
  br i1 %tmp177, label %block_99b7, label %block_99f3.preheader

block_99f3.preheader:                             ; preds = %block_99b7
  br label %block_99f3

block_99f3:                                       ; preds = %block_99f3, %block_99f3.preheader
  %indvars.iv25 = phi i64 [ 144, %block_99f3.preheader ], [ %indvars.iv.next26, %block_99f3 ]
  %tmp180 = shl i64 %indvars.iv25, 2
  %tmp181 = add i64 %tmp180, ptrtoint (i64* @global_var_2179c2 to i64)
  %tmp182 = inttoptr i64 %tmp181 to i16*
  store i16 9, i16* %tmp182
  store i16 ptrtoint (i64* @global_var_217f73 to i16), i16* bitcast (i64* @global_var_217f72 to i16*)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond209 = icmp eq i64 %indvars.iv.next26, 256
  br i1 %exitcond209, label %block_9a2f.preheader, label %block_99f3

block_9a2f.preheader:                             ; preds = %block_99f3
  br label %block_9a2f

block_9a2f:                                       ; preds = %block_9a2f, %block_9a2f.preheader
  %indvars.iv23 = phi i64 [ 256, %block_9a2f.preheader ], [ %indvars.iv.next24, %block_9a2f ]
  %tmp186 = shl i64 %indvars.iv23, 2
  %tmp187 = add i64 %tmp186, ptrtoint (i64* @global_var_2179c2 to i64)
  %tmp188 = inttoptr i64 %tmp187 to i16*
  store i16 7, i16* %tmp188
  store i16 ptrtoint (i64* @global_var_217f6f to i16), i16* bitcast (i64* @global_var_217f6e to i16*)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond208 = icmp eq i64 %indvars.iv.next24, 280
  br i1 %exitcond208, label %block_9a6b.preheader, label %block_9a2f

block_9a6b.preheader:                             ; preds = %block_9a2f
  br label %block_9a6b

block_9a6b:                                       ; preds = %block_9a6b, %block_9a6b.preheader
  %indvars.iv21 = phi i64 [ 280, %block_9a6b.preheader ], [ %indvars.iv.next22, %block_9a6b ]
  %tmp192 = shl i64 %indvars.iv21, 2
  %tmp193 = add i64 %tmp192, ptrtoint (i64* @global_var_2179c2 to i64)
  %tmp194 = inttoptr i64 %tmp193 to i16*
  store i16 8, i16* %tmp194
  store i16 ptrtoint (i64* @global_var_217f71 to i16), i16* bitcast (i64* @global_var_217f70 to i16*)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond207 = icmp eq i64 %indvars.iv.next22, 288
  br i1 %exitcond207, label %block_9aa5, label %block_9a6b

block_9aa5:                                       ; preds = %block_9a6b
  %tmp196 = call i64 @gen_codes(i16* bitcast (i64* @global_var_2179c0 to i16*), i64 287)
  br label %block_9abf

block_9abf:                                       ; preds = %block_9abf, %block_9aa5
  %indvars.iv = phi i64 [ 0, %block_9aa5 ], [ %indvars.iv.next, %block_9abf ]
  %tmp197 = shl nsw i64 %indvars.iv, 2
  %tmp198 = add i64 %tmp197, ptrtoint (i64* @global_var_217e42 to i64)
  %tmp199 = inttoptr i64 %tmp198 to i16*
  store i16 5, i16* %tmp199
  %tmp200 = trunc i64 %indvars.iv to i32
  %tmp201 = call i64 @bi_reverse(i32 %tmp200, i64 5)
  %tmp202 = trunc i64 %tmp201 to i16
  %tmp203 = add i64 %tmp197, ptrtoint (i64* @global_var_217e40 to i64)
  %tmp204 = inttoptr i64 %tmp203 to i16*
  store i16 %tmp202, i16* %tmp204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond, label %block_9b0c, label %block_9abf

block_9b0c:                                       ; preds = %block_9abf
  %tmp205 = call i64 @init_block()
  br label %block_9b14

block_9b13:                                       ; preds = %block_978d
  %tmp206 = zext i16 %tmp88 to i64
  br label %block_9b14

block_9b14:                                       ; preds = %block_9b13, %block_9b0c
  %rax.0 = phi i64 [ %tmp206, %block_9b13 ], [ %tmp205, %block_9b0c ]
  ret i64 %rax.0
}

define i64 @init_block() {
block_9b16:
  br label %block_9b23

block_9b23:                                       ; preds = %block_9b23, %block_9b16
  %indvars.iv7 = phi i64 [ 0, %block_9b16 ], [ %indvars.iv.next8, %block_9b23 ]
  %tmp28 = shl i64 %indvars.iv7, 2
  %tmp29 = add i64 %tmp28, ptrtoint (i64* @global_var_216fc0 to i64)
  %tmp30 = inttoptr i64 %tmp29 to i16*
  store i16 0, i16* %tmp30
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 286
  br i1 %exitcond9, label %block_9b4a, label %block_9b23

block_9b4a:                                       ; preds = %block_9b23
  br label %block_9b53

block_9b53:                                       ; preds = %block_9b53, %block_9b4a
  %indvars.iv4 = phi i64 [ 0, %block_9b4a ], [ %indvars.iv.next5, %block_9b53 ]
  %tmp31 = shl i64 %indvars.iv4, 2
  %tmp32 = add i64 %tmp31, ptrtoint (i64* @global_var_2178c0 to i64)
  %tmp33 = inttoptr i64 %tmp32 to i16*
  store i16 0, i16* %tmp33
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 30
  br i1 %exitcond6, label %block_9b77, label %block_9b53

block_9b77:                                       ; preds = %block_9b53
  br label %block_9b80

block_9b80:                                       ; preds = %block_9b80, %block_9b77
  %indvars.iv = phi i64 [ 0, %block_9b77 ], [ %indvars.iv.next, %block_9b80 ]
  %tmp34 = shl i64 %indvars.iv, 2
  %tmp35 = add i64 %tmp34, ptrtoint (i64* @global_var_217ec0 to i64)
  %tmp36 = inttoptr i64 %tmp35 to i16*
  store i16 0, i16* %tmp36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond, label %block_9ba4, label %block_9b80

block_9ba4:                                       ; preds = %block_9b80
  store i16 1, i16* bitcast (i64* @global_var_2173c0 to i16*)
  store i64 0, i64* @global_var_219ed8
  store i64 0, i64* @global_var_219ed0
  store i32 0, i32* bitcast (i64* @global_var_219ec8 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_219ec4 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_219ec0 to i32*)
  store i8 0, i8* bitcast (i64* @global_var_219ecc to i8*)
  store i8 1, i8* bitcast (i64* @global_var_219ecd to i8*)
  ret i64 0
}

define i64 @pqdownheap(i16* %arg1, i64 %arg2) {
block_9bf9:
  %tmp31 = trunc i64 %arg2 to i32
  %tmp32 = sext i32 %tmp31 to i64
  %tmp33 = shl nsw i64 %tmp32, 2
  %tmp34 = add i64 %tmp33, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp35 = inttoptr i64 %tmp34 to i32*
  %tmp36 = load i32* %tmp35
  %stack_var_-16.11 = shl i32 %tmp31, 1
  %tmp37 = load i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp38 = icmp sgt i32 %stack_var_-16.11, %tmp37
  br i1 %tmp38, label %block_9e61, label %block_9c2b.lr.ph

block_9c2b.lr.ph:                                 ; preds = %block_9bf9
  %tmp39 = ptrtoint i16* %arg1 to i64
  %tmp40 = sext i32 %tmp36 to i64
  %tmp41 = shl nsw i64 %tmp40, 2
  %tmp42 = add i64 %tmp41, %tmp39
  %tmp43 = inttoptr i64 %tmp42 to i16*
  %tmp44 = add i64 %tmp40, ptrtoint (i64* @global_var_218880 to i64)
  %tmp45 = inttoptr i64 %tmp44 to i8*
  br label %block_9c2b

block_9c2b:                                       ; preds = %block_9c2b.lr.ph, %block_9e1b
  %stack_var_-16.13 = phi i32 [ %stack_var_-16.11, %block_9c2b.lr.ph ], [ %stack_var_-16.1, %block_9e1b ]
  %stack_var_-36.02 = phi i32 [ %tmp31, %block_9c2b.lr.ph ], [ %stack_var_-16.0, %block_9e1b ]
  %tmp46 = load i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp47 = icmp slt i32 %stack_var_-16.13, %tmp46
  br i1 %tmp47, label %block_9c3a, label %block_9d4f

block_9c3a:                                       ; preds = %block_9c2b
  %tmp48 = or i32 %stack_var_-16.13, 1
  %tmp49 = sext i32 %tmp48 to i64
  %tmp50 = shl nsw i64 %tmp49, 2
  %tmp51 = add i64 %tmp50, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp52 = inttoptr i64 %tmp51 to i32*
  %tmp53 = load i32* %tmp52
  %tmp54 = sext i32 %tmp53 to i64
  %tmp55 = shl nsw i64 %tmp54, 2
  %tmp56 = add i64 %tmp55, %tmp39
  %tmp57 = inttoptr i64 %tmp56 to i16*
  %tmp58 = load i16* %tmp57
  %tmp59 = sext i32 %stack_var_-16.13 to i64
  %tmp60 = shl nsw i64 %tmp59, 2
  %tmp61 = add i64 %tmp60, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp62 = inttoptr i64 %tmp61 to i32*
  %tmp63 = load i32* %tmp62
  %tmp64 = sext i32 %tmp63 to i64
  %tmp65 = shl nsw i64 %tmp64, 2
  %tmp66 = add i64 %tmp65, %tmp39
  %tmp67 = inttoptr i64 %tmp66 to i16*
  %tmp68 = load i16* %tmp67
  %tmp69 = icmp ult i16 %tmp58, %tmp68
  br i1 %tmp69, label %block_9d4b, label %block_9c9c

block_9c9c:                                       ; preds = %block_9c3a
  %tmp70 = load i32* %tmp52
  %tmp71 = sext i32 %tmp70 to i64
  %tmp72 = shl nsw i64 %tmp71, 2
  %tmp73 = add i64 %tmp72, %tmp39
  %tmp74 = inttoptr i64 %tmp73 to i16*
  %tmp75 = load i16* %tmp74
  %tmp76 = load i32* %tmp62
  %tmp77 = sext i32 %tmp76 to i64
  %tmp78 = shl nsw i64 %tmp77, 2
  %tmp79 = add i64 %tmp78, %tmp39
  %tmp80 = inttoptr i64 %tmp79 to i16*
  %tmp81 = load i16* %tmp80
  %tmp82 = icmp eq i16 %tmp75, %tmp81
  br i1 %tmp82, label %block_9cfa, label %block_9d4f

block_9cfa:                                       ; preds = %block_9c9c
  %tmp83 = load i32* %tmp52
  %tmp84 = sext i32 %tmp83 to i64
  %tmp85 = add i64 %tmp84, ptrtoint (i64* @global_var_218880 to i64)
  %tmp86 = inttoptr i64 %tmp85 to i8*
  %tmp87 = load i8* %tmp86
  %tmp88 = load i32* %tmp62
  %tmp89 = sext i32 %tmp88 to i64
  %tmp90 = add i64 %tmp89, ptrtoint (i64* @global_var_218880 to i64)
  %tmp91 = inttoptr i64 %tmp90 to i8*
  %tmp92 = load i8* %tmp91
  %tmp93 = icmp ugt i8 %tmp87, %tmp92
  br i1 %tmp93, label %block_9d4f, label %block_9d4b

block_9d4b:                                       ; preds = %block_9cfa, %block_9c3a
  br label %block_9d4f

block_9d4f:                                       ; preds = %block_9c9c, %block_9c2b, %block_9d4b, %block_9cfa
  %stack_var_-16.0 = phi i32 [ %stack_var_-16.13, %block_9c2b ], [ %tmp48, %block_9d4b ], [ %stack_var_-16.13, %block_9c9c ], [ %stack_var_-16.13, %block_9cfa ]
  %tmp94 = load i16* %tmp43
  %tmp95 = sext i32 %stack_var_-16.0 to i64
  %tmp96 = shl nsw i64 %tmp95, 2
  %tmp97 = add i64 %tmp96, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp98 = inttoptr i64 %tmp97 to i32*
  %tmp99 = load i32* %tmp98
  %tmp100 = sext i32 %tmp99 to i64
  %tmp101 = shl nsw i64 %tmp100, 2
  %tmp102 = add i64 %tmp101, %tmp39
  %tmp103 = inttoptr i64 %tmp102 to i16*
  %tmp104 = load i16* %tmp103
  %tmp105 = icmp ult i16 %tmp94, %tmp104
  br i1 %tmp105, label %block_9e61, label %block_9d9a

block_9d9a:                                       ; preds = %block_9d4f
  %tmp106 = load i16* %tmp43
  %tmp107 = load i32* %tmp98
  %tmp108 = sext i32 %tmp107 to i64
  %tmp109 = shl nsw i64 %tmp108, 2
  %tmp110 = add i64 %tmp109, %tmp39
  %tmp111 = inttoptr i64 %tmp110 to i16*
  %tmp112 = load i16* %tmp111
  %tmp113 = icmp eq i16 %tmp106, %tmp112
  br i1 %tmp113, label %block_9de1, label %block_9e1b

block_9de1:                                       ; preds = %block_9d9a
  %tmp114 = load i8* %tmp45
  %tmp115 = load i32* %tmp98
  %tmp116 = sext i32 %tmp115 to i64
  %tmp117 = add i64 %tmp116, ptrtoint (i64* @global_var_218880 to i64)
  %tmp118 = inttoptr i64 %tmp117 to i8*
  %tmp119 = load i8* %tmp118
  %tmp120 = icmp ugt i8 %tmp114, %tmp119
  br i1 %tmp120, label %block_9e1b, label %block_9e61

block_9e1b:                                       ; preds = %block_9de1, %block_9d9a
  %tmp121 = load i32* %tmp98
  %tmp122 = sext i32 %stack_var_-36.02 to i64
  %tmp123 = shl nsw i64 %tmp122, 2
  %tmp124 = add i64 %tmp123, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp125 = inttoptr i64 %tmp124 to i32*
  store i32 %tmp121, i32* %tmp125
  %stack_var_-16.1 = shl i32 %stack_var_-16.0, 1
  %tmp126 = load i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp127 = icmp sgt i32 %stack_var_-16.1, %tmp126
  br i1 %tmp127, label %block_9e61, label %block_9c2b

block_9e61:                                       ; preds = %block_9d4f, %block_9e1b, %block_9de1, %block_9bf9
  %stack_var_-36.0.lcssa = phi i32 [ %tmp31, %block_9bf9 ], [ %stack_var_-36.02, %block_9d4f ], [ %stack_var_-16.0, %block_9e1b ], [ %stack_var_-36.02, %block_9de1 ]
  %tmp128 = sext i32 %stack_var_-36.0.lcssa to i64
  %tmp129 = shl nsw i64 %tmp128, 2
  %tmp130 = add i64 %tmp129, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp131 = inttoptr i64 %tmp130 to i32*
  store i32 %tmp36, i32* %tmp131
  ret i64 ptrtoint (i64* @global_var_217f80 to i64)
}

define i64 @gen_bitlen(i64* %arg1) {
block_9e7e:
  %tmp50 = ptrtoint i64* %arg1 to i64
  %tmp90 = load i64* %arg1
  %tmp91 = add i64 %tmp50, 16
  %tmp92 = inttoptr i64 %tmp91 to i64*
  %tmp93 = load i64* %tmp92
  %tmp94 = add i64 %tmp50, 24
  %tmp95 = inttoptr i64 %tmp94 to i32*
  %tmp96 = load i32* %tmp95
  %tmp97 = add i64 %tmp50, 36
  %tmp98 = inttoptr i64 %tmp97 to i32*
  %tmp99 = load i32* %tmp98
  %tmp100 = add i64 %tmp50, 32
  %tmp101 = inttoptr i64 %tmp100 to i32*
  %tmp102 = load i32* %tmp101
  %tmp103 = add i64 %tmp50, 8
  %tmp104 = inttoptr i64 %tmp103 to i64*
  %tmp105 = load i64* %tmp104
  br label %block_9ed7

block_9ed7:                                       ; preds = %block_9ed7, %block_9e7e
  %indvars.iv = phi i64 [ 0, %block_9e7e ], [ %indvars.iv.next, %block_9ed7 ]
  %tmp106 = shl i64 %indvars.iv, 1
  %tmp107 = add i64 %tmp106, ptrtoint (i64* @global_var_217f60 to i64)
  %tmp108 = inttoptr i64 %tmp107 to i16*
  store i16 0, i16* %tmp108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond, label %block_9ef7, label %block_9ed7

block_9ef7:                                       ; preds = %block_9ed7
  %tmp109 = inttoptr i64 %tmp90 to i16*
  %tmp110 = load i32* bitcast (i64* @global_var_218878 to i32*)
  %tmp111 = sext i32 %tmp110 to i64
  %tmp112 = shl nsw i64 %tmp111, 2
  %tmp113 = add i64 %tmp112, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp114 = inttoptr i64 %tmp113 to i32*
  %tmp115 = load i32* %tmp114
  %tmp116 = sext i32 %tmp115 to i64
  %tmp117 = shl nsw i64 %tmp116, 2
  %tmp118 = ptrtoint i16* %tmp109 to i64
  %tmp119 = add i64 %tmp118, 2
  %tmp120 = add i64 %tmp117, %tmp119
  %tmp121 = inttoptr i64 %tmp120 to i16*
  store i16 0, i16* %tmp121
  br i1 icmp sgt (i32 ptrtoint (i64* @global_var_218879 to i32), i32 ptrtoint ([24 x i8]* @global_var_23c to i32)), label %block_a0ad.thread, label %block_9f39.lr.ph

block_a0ad.thread:                                ; preds = %block_9ef7
  br label %block_a27b

block_9f39.lr.ph:                                 ; preds = %block_9ef7
  %tmp122 = inttoptr i64 %tmp93 to i32*
  %tmp123 = icmp eq i64 %tmp105, 0
  %tmp124 = add i64 %tmp105, 2
  %tmp125 = ptrtoint i32* %tmp122 to i64
  %tmp126 = sext i32 %tmp102 to i128
  br label %block_9f39

block_9f39:                                       ; preds = %block_9f39.lr.ph, %block_a09c
  %stack_var_-68.026 = phi i32 [ ptrtoint (i64* @global_var_218879 to i32), %block_9f39.lr.ph ], [ %tmp186, %block_a09c ]
  %stack_var_-52.125 = phi i32 [ 0, %block_9f39.lr.ph ], [ %stack_var_-52.0, %block_a09c ]
  %tmp127 = sext i32 %stack_var_-68.026 to i64
  %tmp128 = shl nsw i64 %tmp127, 2
  %tmp129 = add i64 %tmp128, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp130 = inttoptr i64 %tmp129 to i32*
  %tmp131 = load i32* %tmp130
  %tmp132 = sext i32 %tmp131 to i64
  %tmp133 = shl nsw i64 %tmp132, 2
  %tmp134 = add i64 %tmp133, %tmp118
  %tmp135 = add i64 %tmp134, 2
  %tmp136 = inttoptr i64 %tmp135 to i16*
  %tmp137 = load i16* %tmp136
  %tmp138 = zext i16 %tmp137 to i64
  %tmp139 = shl nuw nsw i64 %tmp138, 2
  %tmp140 = add i64 %tmp139, %tmp119
  %tmp141 = inttoptr i64 %tmp140 to i16*
  %tmp142 = load i16* %tmp141
  %tmp143 = zext i16 %tmp142 to i32
  %tmp144 = add nuw nsw i32 %tmp143, 1
  %tmp145 = zext i32 %tmp144 to i128
  %tmp146 = icmp slt i32 %tmp143, %tmp102
  br i1 %tmp146, label %block_9f9c, label %block_9f92

block_9f92:                                       ; preds = %block_9f39
  %tmp147 = add i32 %stack_var_-52.125, 1
  br label %block_9f9c

block_9f9c:                                       ; preds = %block_9f92, %block_9f39
  %stack_var_-52.0 = phi i32 [ %stack_var_-52.125, %block_9f39 ], [ %tmp147, %block_9f92 ]
  %stack_var_-60.1 = phi i128 [ %tmp145, %block_9f39 ], [ %tmp126, %block_9f92 ]
  %tmp148 = trunc i128 %stack_var_-60.1 to i16
  store i16 %tmp148, i16* %tmp136
  %tmp149 = icmp sgt i32 %tmp131, %tmp99
  br i1 %tmp149, label %block_a09b, label %block_9fc3

block_9fc3:                                       ; preds = %block_9f9c
  %tmp150 = trunc i128 %stack_var_-60.1 to i32
  %tmp151 = sext i32 %tmp150 to i64
  %tmp152 = shl nsw i64 %tmp151, 1
  %tmp153 = add i64 %tmp152, ptrtoint (i64* @global_var_217f60 to i64)
  %tmp154 = inttoptr i64 %tmp153 to i16*
  %tmp155 = load i16* %tmp154
  %tmp156 = zext i16 %tmp155 to i64
  %tmp157 = add nuw nsw i64 %tmp156, 1
  %tmp158 = trunc i64 %tmp157 to i16
  store i16 %tmp158, i16* %tmp154
  %tmp159 = icmp slt i32 %tmp131, %tmp96
  br i1 %tmp159, label %block_a019, label %block_9ffd

block_9ffd:                                       ; preds = %block_9fc3
  %tmp160 = sub i32 %tmp131, %tmp96
  %tmp161 = sext i32 %tmp160 to i64
  %tmp162 = shl nsw i64 %tmp161, 2
  %tmp163 = add i64 %tmp162, %tmp125
  %tmp164 = inttoptr i64 %tmp163 to i32*
  %tmp165 = load i32* %tmp164
  br label %block_a019

block_a019:                                       ; preds = %block_9ffd, %block_9fc3
  %stack_var_-56.0 = phi i32 [ 0, %block_9fc3 ], [ %tmp165, %block_9ffd ]
  %tmp166 = inttoptr i64 %tmp134 to i16*
  %tmp167 = load i16* %tmp166
  %tmp168 = add i32 %stack_var_-56.0, %tmp150
  %tmp169 = zext i16 %tmp167 to i128
  %tmp170 = sext i32 %tmp168 to i128
  %tmp171 = mul nsw i128 %tmp169, %tmp170
  %tmp172 = trunc i128 %tmp171 to i64
  %tmp173 = load i64* @global_var_219ed0
  %tmp174 = add i64 %tmp172, %tmp173
  store i64 %tmp174, i64* @global_var_219ed0
  br i1 %tmp123, label %block_a09c, label %block_a05e

block_a05e:                                       ; preds = %block_a019
  %tmp175 = add i64 %tmp124, %tmp133
  %tmp176 = inttoptr i64 %tmp175 to i16*
  %tmp177 = load i16* %tmp176
  %tmp178 = zext i16 %tmp177 to i32
  %tmp179 = add i32 %tmp178, %stack_var_-56.0
  %tmp180 = sext i32 %tmp179 to i128
  %tmp181 = mul nsw i128 %tmp180, %tmp169
  %tmp182 = trunc i128 %tmp181 to i64
  %tmp183 = load i64* @global_var_219ed8
  %tmp184 = add i64 %tmp182, %tmp183
  store i64 %tmp184, i64* @global_var_219ed8
  br label %block_a09c

block_a09b:                                       ; preds = %block_9f9c
  %tmp185 = zext i32 %tmp131 to i64
  br label %block_a09c

block_a09c:                                       ; preds = %block_a09b, %block_a05e, %block_a019
  %rax.0 = phi i64 [ %tmp185, %block_a09b ], [ %tmp174, %block_a019 ], [ %tmp184, %block_a05e ]
  %tmp186 = add i32 %stack_var_-68.026, 1
  %tmp187 = icmp sgt i32 %tmp186, ptrtoint ([24 x i8]* @global_var_23c to i32)
  br i1 %tmp187, label %block_a0ad, label %block_9f39

block_a0ad:                                       ; preds = %block_a09c
  %tmp188 = icmp eq i32 %stack_var_-52.0, 0
  br i1 %tmp188, label %block_a27b, label %block_a0b7.preheader

block_a0b7.preheader:                             ; preds = %block_a0ad
  %tmp189 = add i32 %tmp102, -1
  %tmp190 = sext i32 %tmp189 to i64
  %tmp191 = shl nsw i64 %tmp190, 1
  %tmp192 = add i64 %tmp191, ptrtoint (i64* @global_var_217f60 to i64)
  %tmp193 = inttoptr i64 %tmp192 to i16*
  %tmp194 = sext i32 %tmp102 to i64
  %tmp195 = shl nsw i64 %tmp194, 1
  %tmp196 = add i64 %tmp195, ptrtoint (i64* @global_var_217f60 to i64)
  %tmp197 = inttoptr i64 %tmp196 to i16*
  br label %block_a0b7

block_a0b7:                                       ; preds = %block_a0b7.preheader, %block_a0df
  %stack_var_-52.2 = phi i32 [ %tmp225, %block_a0df ], [ %stack_var_-52.0, %block_a0b7.preheader ]
  %tmp198 = load i16* %tmp193
  %tmp199 = icmp eq i16 %tmp198, 0
  br i1 %tmp199, label %block_a0c2, label %block_a0df

block_a0c2:                                       ; preds = %block_a0b7, %block_a0c2
  %tmp200 = phi i32 [ %tmp201, %block_a0c2 ], [ %tmp189, %block_a0b7 ]
  %tmp201 = add i32 %tmp200, -1
  %tmp202 = sext i32 %tmp201 to i64
  %tmp203 = shl nsw i64 %tmp202, 1
  %tmp204 = add i64 %tmp203, ptrtoint (i64* @global_var_217f60 to i64)
  %tmp205 = inttoptr i64 %tmp204 to i16*
  %tmp206 = load i16* %tmp205
  %tmp207 = icmp eq i16 %tmp206, 0
  br i1 %tmp207, label %block_a0c2, label %block_a0df

block_a0df:                                       ; preds = %block_a0c2, %block_a0b7
  %.lcssa11 = phi i16* [ %tmp193, %block_a0b7 ], [ %tmp205, %block_a0c2 ]
  %.lcssa10 = phi i32 [ %tmp189, %block_a0b7 ], [ %tmp201, %block_a0c2 ]
  %tmp208 = load i16* %.lcssa11
  %tmp209 = zext i16 %tmp208 to i64
  %tmp210 = add nuw nsw i64 %tmp209, 65535
  %tmp211 = trunc i64 %tmp210 to i16
  store i16 %tmp211, i16* %.lcssa11
  %tmp212 = add i32 %.lcssa10, 1
  %tmp213 = sext i32 %tmp212 to i64
  %tmp214 = shl nsw i64 %tmp213, 1
  %tmp215 = add i64 %tmp214, ptrtoint (i64* @global_var_217f60 to i64)
  %tmp216 = inttoptr i64 %tmp215 to i16*
  %tmp217 = load i16* %tmp216
  %tmp218 = zext i16 %tmp217 to i64
  %tmp219 = add nuw nsw i64 %tmp218, 2
  %tmp220 = trunc i64 %tmp219 to i16
  store i16 %tmp220, i16* %tmp216
  %tmp221 = load i16* %tmp197
  %tmp222 = zext i16 %tmp221 to i64
  %tmp223 = add nuw nsw i64 %tmp222, 65535
  %tmp224 = trunc i64 %tmp223 to i16
  store i16 %tmp224, i16* %tmp197
  %tmp225 = add i32 %stack_var_-52.2, -2
  %tmp226 = icmp sgt i32 %tmp225, -1
  %tmp227 = icmp ne i32 %tmp225, 0
  %tmp = icmp ne i1 %tmp226, %tmp227
  br i1 %tmp, label %block_a175, label %block_a0b7

block_a175:                                       ; preds = %block_a0df
  %tmp228 = zext i32 %tmp102 to i64
  %tmp229 = icmp eq i32 %tmp102, 0
  br i1 %tmp229, label %block_a279, label %block_a180

block_a180:                                       ; preds = %block_a175, %block_a26b
  %tmp231 = phi i32 [ %tmp271, %block_a26b ], [ %tmp102, %block_a175 ]
  %stack_var_-68.221 = phi i32 [ %stack_var_-68.1.lcssa, %block_a26b ], [ %tmp186, %block_a175 ]
  %stack_var_-60.320 = phi i128 [ %tmp272, %block_a26b ], [ %tmp126, %block_a175 ]
  %tmp232 = sext i32 %tmp231 to i64
  %tmp233 = shl nsw i64 %tmp232, 1
  %tmp234 = add i64 %tmp233, ptrtoint (i64* @global_var_217f60 to i64)
  %tmp235 = inttoptr i64 %tmp234 to i16*
  %tmp236 = load i16* %tmp235
  %tmp237 = zext i16 %tmp236 to i64
  %tmp238 = icmp eq i16 %tmp236, 0
  br i1 %tmp238, label %block_a26b, label %block_a19f.lr.ph.lr.ph

block_a19f.lr.ph.lr.ph:                           ; preds = %block_a180
  %tmp239 = zext i16 %tmp236 to i32
  %tmp240 = trunc i128 %stack_var_-60.320 to i64
  %tmp241 = and i64 %tmp240, 4294967295
  %tmp242 = trunc i128 %stack_var_-60.320 to i16
  br label %block_a19f.lr.ph

block_a19f:                                       ; preds = %block_a1c5, %block_a19f.lr.ph
  %stack_var_-68.112 = phi i32 [ %stack_var_-68.1.ph16, %block_a19f.lr.ph ], [ %tmp243, %block_a1c5 ]
  %tmp243 = add i32 %stack_var_-68.112, -1
  %tmp244 = sext i32 %tmp243 to i64
  %tmp245 = shl nsw i64 %tmp244, 2
  %tmp246 = add i64 %tmp245, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp247 = inttoptr i64 %tmp246 to i32*
  %tmp248 = load i32* %tmp247
  %tmp249 = icmp sgt i32 %tmp248, %tmp99
  br i1 %tmp249, label %block_a1c5, label %block_a1ca

block_a1c5:                                       ; preds = %block_a19f
  br label %block_a19f

block_a1ca:                                       ; preds = %block_a19f
  %tmp250 = sext i32 %tmp248 to i64
  %tmp251 = shl nsw i64 %tmp250, 2
  %tmp252 = add i64 %tmp251, %tmp118
  %tmp253 = add i64 %tmp252, 2
  %tmp254 = inttoptr i64 %tmp253 to i16*
  %tmp255 = load i16* %tmp254
  %tmp256 = zext i16 %tmp255 to i32
  %tmp257 = icmp eq i32 %tmp256, %tmp231
  br i1 %tmp257, label %block_a25d, label %block_a1ec

block_a1ec:                                       ; preds = %block_a1ca
  %tmp258 = load i16* %tmp254
  %tmp259 = zext i16 %tmp258 to i64
  %tmp260 = sub nsw i64 %tmp232, %tmp259
  %tmp261 = inttoptr i64 %tmp252 to i16*
  %tmp262 = load i16* %tmp261
  %tmp263 = zext i16 %tmp262 to i128
  %tmp264 = sext i64 %tmp260 to i128
  %tmp265 = mul nsw i128 %tmp264, %tmp263
  %tmp266 = trunc i128 %tmp265 to i64
  %tmp267 = load i64* @global_var_219ed0
  %tmp268 = add i64 %tmp266, %tmp267
  store i64 %tmp268, i64* @global_var_219ed0
  store i16 %tmp242, i16* %tmp254
  br label %block_a25d

block_a25d:                                       ; preds = %block_a1ec, %block_a1ca
  %rax.2 = phi i64 [ %tmp241, %block_a1ca ], [ %tmp252, %block_a1ec ]
  %tmp269 = add i32 %stack_var_-64.0.ph17, -1
  %tmp270 = icmp eq i32 %tmp269, 0
  br i1 %tmp270, label %block_a26b, label %block_a19f.lr.ph

block_a19f.lr.ph:                                 ; preds = %block_a19f.lr.ph.lr.ph, %block_a25d
  %stack_var_-64.0.ph17 = phi i32 [ %tmp239, %block_a19f.lr.ph.lr.ph ], [ %tmp269, %block_a25d ]
  %stack_var_-68.1.ph16 = phi i32 [ %stack_var_-68.221, %block_a19f.lr.ph.lr.ph ], [ %tmp243, %block_a25d ]
  br label %block_a19f

block_a26b:                                       ; preds = %block_a25d, %block_a180
  %rax.3.lcssa = phi i64 [ %tmp237, %block_a180 ], [ %rax.2, %block_a25d ]
  %stack_var_-68.1.lcssa = phi i32 [ %stack_var_-68.221, %block_a180 ], [ %tmp243, %block_a25d ]
  %tmp271 = add i32 %tmp231, -1
  %tmp272 = sext i32 %tmp271 to i128
  %tmp273 = icmp eq i32 %tmp271, 0
  br i1 %tmp273, label %block_a279, label %block_a180

block_a279:                                       ; preds = %block_a26b, %block_a175
  %rax.4.lcssa = phi i64 [ %tmp228, %block_a175 ], [ %rax.3.lcssa, %block_a26b ]
  br label %block_a27c

block_a27b:                                       ; preds = %block_a0ad.thread, %block_a0ad
  %rax.1.lcssa37 = phi i64 [ ptrtoint (i64* @global_var_218879 to i64), %block_a0ad.thread ], [ %rax.0, %block_a0ad ]
  br label %block_a27c

block_a27c:                                       ; preds = %block_a27b, %block_a279
  %rax.5 = phi i64 [ %rax.1.lcssa37, %block_a27b ], [ %rax.4.lcssa, %block_a279 ]
  ret i64 %rax.5
}

define i64 @gen_codes(i16* %arg1, i64 %arg2) {
block_a27e:
  %stack_var_-8 = alloca i64
  %tmp34 = ptrtoint i64* %stack_var_-8 to i64
  %tmp35 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp36 = add i64 %tmp34, -48
  br label %block_a2ab

block_a2ab:                                       ; preds = %block_a2ab, %block_a27e
  %indvars.iv = phi i64 [ 1, %block_a27e ], [ %indvars.iv.next, %block_a2ab ]
  %stack_var_-70.03 = phi i32 [ 0, %block_a27e ], [ %tmp44, %block_a2ab ]
  %tmp37 = shl i64 %indvars.iv, 1
  %tmp38 = add i64 %tmp37, add (i64 ptrtoint (i64* @global_var_217f60 to i64), i64 -2)
  %tmp39 = inttoptr i64 %tmp38 to i16*
  %tmp40 = load i16* %tmp39
  %tmp41 = zext i16 %tmp40 to i32
  %tmp42 = add nuw nsw i32 %tmp41, %stack_var_-70.03
  %tmp43 = shl i32 %tmp42, 17
  %tmp44 = ashr exact i32 %tmp43, 16
  %tmp45 = trunc i32 %tmp44 to i16
  %tmp47 = add i64 %tmp37, %tmp36
  %tmp48 = inttoptr i64 %tmp47 to i16*
  store i16 %tmp45, i16* %tmp48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond, label %block_a2e6, label %block_a2ab

block_a2e6:                                       ; preds = %block_a2ab
  %tmp49 = trunc i64 %arg2 to i32
  %tmp50 = icmp slt i32 %tmp49, 0
  br i1 %tmp50, label %block_a364, label %block_a2ef.lr.ph

block_a2ef.lr.ph:                                 ; preds = %block_a2e6
  %tmp51 = ptrtoint i16* %arg1 to i64
  br label %block_a2ef

block_a2ef:                                       ; preds = %block_a2ef.lr.ph, %block_a358
  %stack_var_-64.02 = phi i32 [ 0, %block_a2ef.lr.ph ], [ %tmp71, %block_a358 ]
  %tmp52 = sext i32 %stack_var_-64.02 to i64
  %tmp53 = shl nsw i64 %tmp52, 2
  %tmp54 = add i64 %tmp53, %tmp51
  %tmp55 = add i64 %tmp54, 2
  %tmp56 = inttoptr i64 %tmp55 to i16*
  %tmp57 = load i16* %tmp56
  %tmp58 = icmp eq i16 %tmp57, 0
  br i1 %tmp58, label %block_a357, label %block_a313

block_a313:                                       ; preds = %block_a2ef
  %tmp59 = zext i16 %tmp57 to i64
  %tmp60 = shl nuw nsw i64 %tmp59, 1
  %tmp61 = add i64 %tmp60, %tmp36
  %tmp62 = inttoptr i64 %tmp61 to i16*
  %tmp63 = load i16* %tmp62
  %tmp64 = zext i16 %tmp63 to i64
  %tmp65 = add nuw nsw i64 %tmp64, 1
  %tmp66 = trunc i64 %tmp65 to i16
  store i16 %tmp66, i16* %tmp62
  %tmp67 = zext i16 %tmp63 to i32
  %tmp68 = call i64 @bi_reverse(i32 %tmp67, i64 %tmp59)
  %tmp69 = trunc i64 %tmp68 to i16
  %tmp70 = inttoptr i64 %tmp54 to i16*
  store i16 %tmp69, i16* %tmp70
  br label %block_a358

block_a357:                                       ; preds = %block_a2ef
  br label %block_a358

block_a358:                                       ; preds = %block_a357, %block_a313
  %tmp71 = add i32 %stack_var_-64.02, 1
  %tmp72 = icmp sgt i32 %tmp71, %tmp49
  br i1 %tmp72, label %block_a364, label %block_a2ef

block_a364:                                       ; preds = %block_a358, %block_a2e6
  %tmp73 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp74 = icmp eq i64 %tmp35, %tmp73
  br i1 %tmp74, label %block_a379, label %block_a374

block_a374:                                       ; preds = %block_a364
  call void @__stack_chk_fail()
  unreachable

block_a379:                                       ; preds = %block_a364
  ret i64 0
}

define i64 @build_tree(i64** %arg1) {
block_a37b:
  %tmp21 = ptrtoint i64** %arg1 to i64
  %tmp46 = bitcast i64** %arg1 to i64*
  %0 = load i64** %arg1
  %1 = bitcast i64* %0 to i16*
  %tmp49 = add i64 %tmp21, 8
  %tmp50 = inttoptr i64 %tmp49 to i64*
  %tmp51 = load i64* %tmp50
  %tmp52 = add i64 %tmp21, 28
  %tmp53 = inttoptr i64 %tmp52 to i32*
  %tmp54 = load i32* %tmp53
  store i32 0, i32* bitcast (i64* @global_var_218874 to i32*)
  store i32 ptrtoint ([23 x i8]* @global_var_23d to i32), i32* bitcast (i64* @global_var_218878 to i32*)
  call void @__ppdasm_undefined_function__store_1(i32 ptrtoint ([23 x i8]* @global_var_23d to i32))
  %tmp55 = icmp sgt i32 %tmp54, 0
  br i1 %tmp55, label %block_a3d2.lr.ph, label %block_a45d

block_a3d2.lr.ph:                                 ; preds = %block_a37b
  %tmp56 = ptrtoint i16* %1 to i64
  %tmp57 = add i32 %tmp54, -1
  br label %block_a3d2

block_a3d2:                                       ; preds = %block_a44d, %block_a3d2.lr.ph
  %indvars.iv = phi i64 [ 0, %block_a3d2.lr.ph ], [ %indvars.iv.next, %block_a44d ]
  %stack_var_-44.15 = phi i32 [ -1, %block_a3d2.lr.ph ], [ %stack_var_-44.0, %block_a44d ]
  %tmp58 = shl nsw i64 %indvars.iv, 2
  %tmp59 = add i64 %tmp58, %tmp56
  %tmp60 = inttoptr i64 %tmp59 to i16*
  %tmp61 = load i16* %tmp60
  %tmp62 = icmp eq i16 %tmp61, 0
  br i1 %tmp62, label %block_a433, label %block_a3ee

block_a3ee:                                       ; preds = %block_a3d2
  store i32 ptrtoint (i64* @global_var_218875 to i32), i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp63 = trunc i64 %indvars.iv to i32
  store i32 %tmp63, i32* inttoptr (i64 add (i64 mul (i64 sext (i32 ptrtoint (i64* @global_var_218875 to i32) to i64), i64 4), i64 ptrtoint (i64* @global_var_217f80 to i64)) to i32*)
  %tmp64 = add i64 %indvars.iv, ptrtoint (i64* @global_var_218880 to i64)
  %tmp65 = inttoptr i64 %tmp64 to i8*
  store i8 0, i8* %tmp65
  br label %block_a44d

block_a433:                                       ; preds = %block_a3d2
  %tmp66 = add i64 %tmp59, 2
  %tmp67 = inttoptr i64 %tmp66 to i16*
  store i16 0, i16* %tmp67
  %lftr.wideiv.pre = trunc i64 %indvars.iv to i32
  br label %block_a44d

block_a44d:                                       ; preds = %block_a433, %block_a3ee
  %lftr.wideiv.pre-phi = phi i32 [ %lftr.wideiv.pre, %block_a433 ], [ %tmp63, %block_a3ee ]
  %stack_var_-44.0 = phi i32 [ %stack_var_-44.15, %block_a433 ], [ %tmp63, %block_a3ee ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %tmp57
  br i1 %exitcond, label %block_a45d, label %block_a3d2

block_a45d:                                       ; preds = %block_a44d, %block_a37b
  %stack_var_-44.1.lcssa = phi i32 [ -1, %block_a37b ], [ %stack_var_-44.0, %block_a44d ]
  %tmp68 = load i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp69 = icmp slt i32 %tmp68, 2
  br i1 %tmp69, label %block_a462.lr.ph, label %block_a538

block_a462.lr.ph:                                 ; preds = %block_a45d
  %tmp70 = ptrtoint i16* %1 to i64
  %tmp71 = icmp eq i64 %tmp51, 0
  %tmp72 = add i64 %tmp51, 2
  br label %block_a462

block_a462:                                       ; preds = %block_a462.lr.ph, %block_a529.backedge
  %stack_var_-44.34 = phi i32 [ %stack_var_-44.1.lcssa, %block_a462.lr.ph ], [ %stack_var_-44.2, %block_a529.backedge ]
  %tmp73 = icmp sgt i32 %stack_var_-44.34, 1
  br i1 %tmp73, label %block_a471, label %block_a468

block_a468:                                       ; preds = %block_a462
  %tmp74 = add i32 %stack_var_-44.34, 1
  %tmp75 = zext i32 %tmp74 to i64
  br label %block_a476

block_a471:                                       ; preds = %block_a462
  br label %block_a476

block_a476:                                       ; preds = %block_a471, %block_a468
  %stack_var_-44.2 = phi i32 [ %stack_var_-44.34, %block_a471 ], [ %tmp74, %block_a468 ]
  %rdx.0 = phi i64 [ 0, %block_a471 ], [ %tmp75, %block_a468 ]
  store i32 ptrtoint (i64* @global_var_218875 to i32), i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp76 = trunc i64 %rdx.0 to i32
  store i32 %tmp76, i32* inttoptr (i64 add (i64 mul (i64 sext (i32 ptrtoint (i64* @global_var_218875 to i32) to i64), i64 4), i64 ptrtoint (i64* @global_var_217f80 to i64)) to i32*)
  %tmp77 = load i32* inttoptr (i64 add (i64 mul (i64 sext (i32 ptrtoint (i64* @global_var_218875 to i32) to i64), i64 4), i64 ptrtoint (i64* @global_var_217f80 to i64)) to i32*)
  %tmp78 = sext i32 %tmp77 to i64
  %tmp79 = shl nsw i64 %tmp78, 2
  %tmp80 = add i64 %tmp79, %tmp70
  %tmp81 = inttoptr i64 %tmp80 to i16*
  store i16 1, i16* %tmp81
  %tmp82 = add i64 %tmp78, ptrtoint (i64* @global_var_218880 to i64)
  %tmp83 = inttoptr i64 %tmp82 to i8*
  store i8 0, i8* %tmp83
  %tmp84 = load i64* @global_var_219ed0
  %tmp85 = add i64 %tmp84, -1
  store i64 %tmp85, i64* @global_var_219ed0
  br i1 %tmp71, label %block_a529.backedge, label %block_a4fa

block_a529.backedge:                              ; preds = %block_a476, %block_a4fa
  %tmp86 = load i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp87 = icmp slt i32 %tmp86, 2
  br i1 %tmp87, label %block_a462, label %block_a538

block_a4fa:                                       ; preds = %block_a476
  %tmp88 = load i64* @global_var_219ed8
  %tmp89 = add i64 %tmp72, %tmp79
  %tmp90 = inttoptr i64 %tmp89 to i16*
  %tmp91 = load i16* %tmp90
  %tmp92 = zext i16 %tmp91 to i64
  %tmp93 = sub i64 %tmp88, %tmp92
  store i64 %tmp93, i64* @global_var_219ed8
  br label %block_a529.backedge

block_a538:                                       ; preds = %block_a529.backedge, %block_a45d
  %stack_var_-44.3.lcssa = phi i32 [ %stack_var_-44.1.lcssa, %block_a45d ], [ %stack_var_-44.2, %block_a529.backedge ]
  %tmp94 = add i64 %tmp21, 36
  %tmp95 = inttoptr i64 %tmp94 to i32*
  store i32 %stack_var_-44.3.lcssa, i32* %tmp95
  %tmp96 = load i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp97 = lshr i32 %tmp96, 31
  %tmp98 = add i32 %tmp97, %tmp96
  %tmp99 = ashr i32 %tmp98, 1
  %tmp100 = icmp sgt i32 %tmp99, -1
  %tmp101 = icmp ne i32 %tmp99, 0
  %tmp2 = icmp ne i1 %tmp100, %tmp101
  br i1 %tmp2, label %block_a571.preheader, label %block_a556

block_a556:                                       ; preds = %block_a538, %block_a556
  %stack_var_-48.13 = phi i32 [ %tmp104, %block_a556 ], [ %tmp99, %block_a538 ]
  %tmp102 = zext i32 %stack_var_-48.13 to i64
  %tmp103 = call i64 @pqdownheap(i16* %1, i64 %tmp102)
  %tmp104 = add i32 %stack_var_-48.13, -1
  %tmp105 = icmp sgt i32 %tmp104, -1
  %tmp106 = icmp ne i32 %tmp104, 0
  %tmp = icmp ne i1 %tmp105, %tmp106
  br i1 %tmp, label %block_a571.preheader, label %block_a556

block_a571.preheader:                             ; preds = %block_a556, %block_a538
  %tmp107 = ptrtoint i16* %1 to i64
  br label %block_a571

block_a571:                                       ; preds = %block_a571.preheader, %block_a6ac
  %stack_var_-40.0 = phi i32 [ %tmp173, %block_a6ac ], [ %tmp54, %block_a571.preheader ]
  %tmp108 = load i32* bitcast (i64* @global_var_217f84 to i32*)
  %tmp109 = load i32* bitcast (i64* @global_var_218874 to i32*)
  store i32 ptrtoint (i64* @global_var_218873 to i32), i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp110 = sext i32 %tmp109 to i64
  %tmp111 = shl nsw i64 %tmp110, 2
  %tmp112 = add i64 %tmp111, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp113 = inttoptr i64 %tmp112 to i32*
  %tmp114 = load i32* %tmp113
  store i32 %tmp114, i32* bitcast (i64* @global_var_217f84 to i32*)
  %tmp115 = call i64 @pqdownheap(i16* %1, i64 1)
  %tmp116 = load i32* bitcast (i64* @global_var_217f84 to i32*)
  %tmp117 = load i32* bitcast (i64* @global_var_218878 to i32*)
  %tmp118 = add i32 %tmp117, -1
  store i32 %tmp118, i32* bitcast (i64* @global_var_218878 to i32*)
  %tmp119 = sext i32 %tmp118 to i64
  %tmp120 = shl nsw i64 %tmp119, 2
  %tmp121 = add i64 %tmp120, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp122 = inttoptr i64 %tmp121 to i32*
  store i32 %tmp108, i32* %tmp122
  %tmp123 = load i32* bitcast (i64* @global_var_218878 to i32*)
  %tmp124 = add i32 %tmp123, -1
  store i32 %tmp124, i32* bitcast (i64* @global_var_218878 to i32*)
  %tmp125 = sext i32 %tmp124 to i64
  %tmp126 = shl nsw i64 %tmp125, 2
  %tmp127 = add i64 %tmp126, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp128 = inttoptr i64 %tmp127 to i32*
  store i32 %tmp116, i32* %tmp128
  %tmp129 = sext i32 %tmp108 to i64
  %tmp130 = shl nsw i64 %tmp129, 2
  %tmp131 = add i64 %tmp130, %tmp107
  %tmp132 = inttoptr i64 %tmp131 to i16*
  %tmp133 = load i16* %tmp132
  %tmp134 = sext i32 %tmp116 to i64
  %tmp135 = shl nsw i64 %tmp134, 2
  %tmp136 = add i64 %tmp135, %tmp107
  %tmp137 = inttoptr i64 %tmp136 to i16*
  %tmp138 = load i16* %tmp137
  %tmp139 = sext i32 %stack_var_-40.0 to i64
  %tmp140 = shl nsw i64 %tmp139, 2
  %tmp141 = add i64 %tmp140, %tmp107
  %tmp142 = zext i16 %tmp138 to i32
  %tmp143 = zext i16 %tmp133 to i32
  %tmp144 = add nuw nsw i32 %tmp142, %tmp143
  %tmp145 = trunc i32 %tmp144 to i16
  %tmp146 = inttoptr i64 %tmp141 to i16*
  store i16 %tmp145, i16* %tmp146
  %tmp147 = add i64 %tmp129, ptrtoint (i64* @global_var_218880 to i64)
  %tmp148 = inttoptr i64 %tmp147 to i8*
  %tmp149 = load i8* %tmp148
  %tmp150 = add i64 %tmp134, ptrtoint (i64* @global_var_218880 to i64)
  %tmp151 = inttoptr i64 %tmp150 to i8*
  %tmp152 = load i8* %tmp151
  %tmp153 = icmp ult i8 %tmp149, %tmp152
  br i1 %tmp153, label %block_a698, label %block_a682

block_a682:                                       ; preds = %block_a571
  %tmp154 = load i8* %tmp148
  %tmp155 = zext i8 %tmp154 to i32
  %tmp156 = add nuw nsw i32 %tmp155, 1
  %tmp157 = zext i32 %tmp156 to i64
  br label %block_a6ac

block_a698:                                       ; preds = %block_a571
  %tmp158 = load i8* %tmp151
  %tmp159 = zext i8 %tmp158 to i32
  %tmp160 = add nuw nsw i32 %tmp159, 1
  %tmp161 = zext i32 %tmp160 to i64
  br label %block_a6ac

block_a6ac:                                       ; preds = %block_a698, %block_a682
  %rax.0 = phi i64 [ %tmp161, %block_a698 ], [ %tmp157, %block_a682 ]
  %tmp162 = trunc i64 %rax.0 to i8
  %tmp163 = add i64 %tmp139, ptrtoint (i64* @global_var_218880 to i64)
  %tmp164 = inttoptr i64 %tmp163 to i8*
  store i8 %tmp162, i8* %tmp164
  %tmp165 = trunc i32 %stack_var_-40.0 to i16
  %tmp166 = add i64 %tmp136, 2
  %tmp167 = inttoptr i64 %tmp166 to i16*
  store i16 %tmp165, i16* %tmp167
  %tmp168 = load i16* %tmp167
  %tmp169 = add i64 %tmp131, 2
  %tmp170 = inttoptr i64 %tmp169 to i16*
  store i16 %tmp168, i16* %tmp170
  %tmp171 = zext i32 %stack_var_-40.0 to i64
  %tmp172 = add nuw nsw i64 %tmp171, 1
  %tmp173 = trunc i64 %tmp172 to i32
  store i32 %stack_var_-40.0, i32* bitcast (i64* @global_var_217f84 to i32*)
  %tmp174 = call i64 @pqdownheap(i16* %1, i64 1)
  %tmp175 = load i32* bitcast (i64* @global_var_218874 to i32*)
  %tmp176 = icmp sgt i32 %tmp175, 1
  br i1 %tmp176, label %block_a571, label %block_a723

block_a723:                                       ; preds = %block_a6ac
  %tmp177 = load i32* bitcast (i64* @global_var_218878 to i32*)
  %tmp178 = add i32 %tmp177, -1
  store i32 %tmp178, i32* bitcast (i64* @global_var_218878 to i32*)
  %tmp179 = load i32* bitcast (i64* @global_var_217f84 to i32*)
  %tmp180 = sext i32 %tmp178 to i64
  %tmp181 = shl nsw i64 %tmp180, 2
  %tmp182 = add i64 %tmp181, ptrtoint (i64* @global_var_217f80 to i64)
  %tmp183 = inttoptr i64 %tmp182 to i32*
  store i32 %tmp179, i32* %tmp183
  %tmp184 = call i64 @gen_bitlen(i64* %tmp46)
  %tmp185 = zext i32 %stack_var_-44.3.lcssa to i64
  %tmp186 = call i64 @gen_codes(i16* %1, i64 %tmp185)
  ret i64 %tmp186
}

define i64 @scan_tree(i64* %arg1, i32 %arg2) {
block_a772:
  %tmp19 = ptrtoint i64* %arg1 to i64
  %tmp42 = add i64 %tmp19, 2
  %tmp43 = inttoptr i64 %tmp42 to i16*
  %tmp44 = load i16* %tmp43
  %tmp45 = zext i16 %tmp44 to i32
  %tmp46 = icmp eq i16 %tmp44, 0
  br i1 %tmp46, label %block_a7ad, label %block_a7bb

block_a7ad:                                       ; preds = %block_a772
  br label %block_a7bb

block_a7bb:                                       ; preds = %block_a772, %block_a7ad
  %stack_var_-20.0 = phi i32 [ 7, %block_a772 ], [ 138, %block_a7ad ]
  %stack_var_-16.0 = phi i32 [ 4, %block_a772 ], [ 3, %block_a7ad ]
  %tmp47 = sext i32 %arg2 to i64
  %tmp48 = shl nsw i64 %tmp47, 2
  %tmp49 = add i64 %tmp19, 6
  %tmp50 = add i64 %tmp48, %tmp49
  %tmp51 = inttoptr i64 %tmp50 to i16*
  store i16 -1, i16* %tmp51
  %tmp52 = icmp slt i32 %arg2, 0
  br i1 %tmp52, label %block_a93f, label %block_a7e5

block_a7e5:                                       ; preds = %block_a7bb, %block_a92f
  %stack_var_-36.06 = phi i32 [ %tmp85, %block_a92f ], [ 0, %block_a7bb ]
  %stack_var_-16.25 = phi i32 [ %stack_var_-16.1, %block_a92f ], [ %stack_var_-16.0, %block_a7bb ]
  %stack_var_-20.24 = phi i32 [ %stack_var_-20.1, %block_a92f ], [ %stack_var_-20.0, %block_a7bb ]
  %stack_var_-24.13 = phi i32 [ %stack_var_-24.0, %block_a92f ], [ 0, %block_a7bb ]
  %stack_var_-28.02 = phi i32 [ %tmp58, %block_a92f ], [ %tmp45, %block_a7bb ]
  %stack_var_-32.11 = phi i32 [ %stack_var_-32.0, %block_a92f ], [ -1, %block_a7bb ]
  %tmp53 = sext i32 %stack_var_-36.06 to i64
  %tmp54 = shl nsw i64 %tmp53, 2
  %tmp55 = add i64 %tmp54, %tmp49
  %tmp56 = inttoptr i64 %tmp55 to i16*
  %tmp57 = load i16* %tmp56
  %tmp58 = zext i16 %tmp57 to i32
  %tmp59 = add i32 %stack_var_-24.13, 1
  %tmp60 = icmp slt i32 %tmp59, %stack_var_-20.24
  br i1 %tmp60, label %block_a819, label %block_a825

block_a819:                                       ; preds = %block_a7e5
  %tmp61 = icmp eq i32 %stack_var_-28.02, %tmp58
  br i1 %tmp61, label %block_a92e, label %block_a825

block_a825:                                       ; preds = %block_a7e5, %block_a819
  %tmp62 = icmp slt i32 %tmp59, %stack_var_-16.25
  br i1 %tmp62, label %block_a82d, label %block_a865

block_a82d:                                       ; preds = %block_a825
  %tmp63 = zext i32 %stack_var_-28.02 to i64
  %tmp64 = shl nuw nsw i64 %tmp63, 2
  %tmp65 = add i64 %tmp64, ptrtoint (i64* @global_var_217ec0 to i64)
  %tmp66 = inttoptr i64 %tmp65 to i16*
  %tmp67 = load i16* %tmp66
  %tmp68 = zext i16 %tmp67 to i64
  %tmp69 = zext i32 %tmp59 to i64
  %tmp70 = add nuw nsw i64 %tmp68, %tmp69
  %tmp71 = trunc i64 %tmp70 to i16
  store i16 %tmp71, i16* %tmp66
  br label %block_a8e3

block_a865:                                       ; preds = %block_a825
  %tmp72 = icmp eq i32 %stack_var_-28.02, 0
  br i1 %tmp72, label %block_a8b9, label %block_a86b

block_a86b:                                       ; preds = %block_a865
  %tmp73 = icmp eq i32 %stack_var_-28.02, %stack_var_-32.11
  br i1 %tmp73, label %block_a8a6, label %block_a873

block_a873:                                       ; preds = %block_a86b
  %tmp74 = zext i32 %stack_var_-28.02 to i64
  %tmp75 = shl nuw nsw i64 %tmp74, 2
  %tmp76 = add i64 %tmp75, ptrtoint (i64* @global_var_217ec0 to i64)
  %tmp77 = inttoptr i64 %tmp76 to i16*
  %tmp78 = load i16* %tmp77
  %tmp79 = zext i16 %tmp78 to i64
  %tmp80 = add nuw nsw i64 %tmp79, 1
  %tmp81 = trunc i64 %tmp80 to i16
  store i16 %tmp81, i16* %tmp77
  br label %block_a8a6

block_a8a6:                                       ; preds = %block_a873, %block_a86b
  store i16 ptrtoint (i64* @global_var_217f01 to i16), i16* bitcast (i64* @global_var_217f00 to i16*)
  br label %block_a8e3

block_a8b9:                                       ; preds = %block_a865
  %tmp82 = icmp sgt i32 %tmp59, 10
  br i1 %tmp82, label %block_a8d2, label %block_a8bf

block_a8bf:                                       ; preds = %block_a8b9
  store i16 ptrtoint (i64* @global_var_217f05 to i16), i16* bitcast (i64* @global_var_217f04 to i16*)
  br label %block_a8e3

block_a8d2:                                       ; preds = %block_a8b9
  store i16 ptrtoint (i64* @global_var_217f09 to i16), i16* bitcast (i64* @global_var_217f08 to i16*)
  br label %block_a8e3

block_a8e3:                                       ; preds = %block_a8d2, %block_a8bf, %block_a8a6, %block_a82d
  %tmp83 = icmp eq i16 %tmp57, 0
  br i1 %tmp83, label %block_a8f6, label %block_a906

block_a8f6:                                       ; preds = %block_a8e3
  br label %block_a92f

block_a906:                                       ; preds = %block_a8e3
  %tmp84 = icmp eq i32 %stack_var_-28.02, %tmp58
  br i1 %tmp84, label %block_a90e, label %block_a91e

block_a90e:                                       ; preds = %block_a906
  br label %block_a92f

block_a91e:                                       ; preds = %block_a906
  br label %block_a92f

block_a92e:                                       ; preds = %block_a819
  br label %block_a92f

block_a92f:                                       ; preds = %block_a92e, %block_a91e, %block_a90e, %block_a8f6
  %stack_var_-32.0 = phi i32 [ %stack_var_-28.02, %block_a91e ], [ %stack_var_-28.02, %block_a90e ], [ %stack_var_-28.02, %block_a8f6 ], [ %stack_var_-32.11, %block_a92e ]
  %stack_var_-24.0 = phi i32 [ 0, %block_a91e ], [ 0, %block_a90e ], [ 0, %block_a8f6 ], [ %tmp59, %block_a92e ]
  %stack_var_-20.1 = phi i32 [ 7, %block_a91e ], [ 6, %block_a90e ], [ 138, %block_a8f6 ], [ %stack_var_-20.24, %block_a92e ]
  %stack_var_-16.1 = phi i32 [ 4, %block_a91e ], [ 3, %block_a90e ], [ 3, %block_a8f6 ], [ %stack_var_-16.25, %block_a92e ]
  %tmp85 = add i32 %stack_var_-36.06, 1
  %tmp86 = icmp sgt i32 %tmp85, %arg2
  br i1 %tmp86, label %block_a93f, label %block_a7e5

block_a93f:                                       ; preds = %block_a92f, %block_a7bb
  %stack_var_-36.0.lcssa = phi i32 [ 0, %block_a7bb ], [ %tmp85, %block_a92f ]
  %tmp87 = zext i32 %stack_var_-36.0.lcssa to i64
  ret i64 %tmp87
}

define i64 @send_tree(i64* %arg1, i32 %arg2) {
block_a942:
  %tmp19 = ptrtoint i64* %arg1 to i64
  %tmp43 = add i64 %tmp19, 2
  %tmp44 = inttoptr i64 %tmp43 to i16*
  %tmp45 = load i16* %tmp44
  %tmp46 = zext i16 %tmp45 to i32
  %tmp47 = icmp eq i16 %tmp45, 0
  br i1 %tmp47, label %block_a981, label %block_a98f

block_a981:                                       ; preds = %block_a942
  br label %block_a98f

block_a98f:                                       ; preds = %block_a942, %block_a981
  %stack_var_-20.0 = phi i32 [ 7, %block_a942 ], [ 138, %block_a981 ]
  %stack_var_-16.0 = phi i32 [ 4, %block_a942 ], [ 3, %block_a981 ]
  %tmp48 = icmp slt i32 %arg2, 0
  br i1 %tmp48, label %block_ab75, label %block_a99b.lr.ph

block_a99b.lr.ph:                                 ; preds = %block_a98f
  %tmp49 = add i64 %tmp19, 6
  br label %block_a99b

block_a99b:                                       ; preds = %block_a99b.lr.ph, %block_ab65
  %stack_var_-36.06 = phi i32 [ 0, %block_a99b.lr.ph ], [ %tmp110, %block_ab65 ]
  %stack_var_-16.25 = phi i32 [ %stack_var_-16.0, %block_a99b.lr.ph ], [ %stack_var_-16.1, %block_ab65 ]
  %stack_var_-20.24 = phi i32 [ %stack_var_-20.0, %block_a99b.lr.ph ], [ %stack_var_-20.1, %block_ab65 ]
  %stack_var_-24.33 = phi i32 [ 0, %block_a99b.lr.ph ], [ %stack_var_-24.2, %block_ab65 ]
  %stack_var_-28.02 = phi i32 [ %tmp46, %block_a99b.lr.ph ], [ %tmp55, %block_ab65 ]
  %stack_var_-32.11 = phi i32 [ -1, %block_a99b.lr.ph ], [ %stack_var_-32.0, %block_ab65 ]
  %tmp50 = sext i32 %stack_var_-36.06 to i64
  %tmp51 = shl nsw i64 %tmp50, 2
  %tmp52 = add i64 %tmp49, %tmp51
  %tmp53 = inttoptr i64 %tmp52 to i16*
  %tmp54 = load i16* %tmp53
  %tmp55 = zext i16 %tmp54 to i32
  %tmp56 = add i32 %stack_var_-24.33, 1
  %tmp57 = icmp slt i32 %tmp56, %stack_var_-20.24
  br i1 %tmp57, label %block_a9cf, label %block_a9db

block_a9cf:                                       ; preds = %block_a99b
  %tmp58 = icmp eq i32 %stack_var_-28.02, %tmp55
  br i1 %tmp58, label %block_ab64, label %block_a9db

block_a9db:                                       ; preds = %block_a99b, %block_a9cf
  %tmp59 = icmp slt i32 %tmp56, %stack_var_-16.25
  br i1 %tmp59, label %block_a9e3.preheader, label %block_aa31

block_a9e3.preheader:                             ; preds = %block_a9db
  %tmp60 = zext i32 %stack_var_-28.02 to i64
  %tmp61 = shl nuw nsw i64 %tmp60, 2
  %tmp62 = add i64 %tmp61, ptrtoint (i64* @global_var_217ec2 to i64)
  %tmp63 = inttoptr i64 %tmp62 to i16*
  %tmp64 = add i64 %tmp61, ptrtoint (i64* @global_var_217ec0 to i64)
  %tmp65 = inttoptr i64 %tmp64 to i16*
  br label %block_a9e3

block_a9e3:                                       ; preds = %block_a9e3.preheader, %block_a9e3
  %stack_var_-24.0 = phi i32 [ %tmp71, %block_a9e3 ], [ %tmp56, %block_a9e3.preheader ]
  %tmp66 = load i16* %tmp63
  %tmp67 = load i16* %tmp65
  %tmp68 = zext i16 %tmp66 to i64
  %tmp69 = zext i16 %tmp67 to i32
  %tmp70 = call i64 @send_bits(i32 %tmp69, i64 %tmp68)
  %tmp71 = add i32 %stack_var_-24.0, -1
  %tmp72 = icmp eq i32 %tmp71, 0
  br i1 %tmp72, label %block_aa2c, label %block_a9e3

block_aa2c:                                       ; preds = %block_a9e3
  br label %block_ab19

block_aa31:                                       ; preds = %block_a9db
  %tmp73 = icmp eq i32 %stack_var_-28.02, 0
  br i1 %tmp73, label %block_aab3, label %block_aa37

block_aa37:                                       ; preds = %block_aa31
  %tmp74 = icmp eq i32 %stack_var_-28.02, %stack_var_-32.11
  br i1 %tmp74, label %block_aa82, label %block_aa3f

block_aa3f:                                       ; preds = %block_aa37
  %tmp75 = zext i32 %stack_var_-28.02 to i64
  %tmp76 = shl nuw nsw i64 %tmp75, 2
  %tmp77 = add i64 %tmp76, ptrtoint (i64* @global_var_217ec2 to i64)
  %tmp78 = inttoptr i64 %tmp77 to i16*
  %tmp79 = load i16* %tmp78
  %tmp80 = add i64 %tmp76, ptrtoint (i64* @global_var_217ec0 to i64)
  %tmp81 = inttoptr i64 %tmp80 to i16*
  %tmp82 = load i16* %tmp81
  %tmp83 = zext i16 %tmp79 to i64
  %tmp84 = zext i16 %tmp82 to i32
  %tmp85 = call i64 @send_bits(i32 %tmp84, i64 %tmp83)
  br label %block_aa82

block_aa82:                                       ; preds = %block_aa3f, %block_aa37
  %stack_var_-24.1 = phi i32 [ %tmp56, %block_aa37 ], [ %stack_var_-24.33, %block_aa3f ]
  %tmp86 = load i16* bitcast (i64* @global_var_217f02 to i16*)
  %tmp87 = load i16* bitcast (i64* @global_var_217f00 to i16*)
  %tmp88 = zext i16 %tmp86 to i64
  %tmp89 = zext i16 %tmp87 to i32
  %tmp90 = call i64 @send_bits(i32 %tmp89, i64 %tmp88)
  %tmp91 = add i32 %stack_var_-24.1, -3
  %tmp92 = call i64 @send_bits(i32 %tmp91, i64 2)
  br label %block_ab19

block_aab3:                                       ; preds = %block_aa31
  %tmp93 = icmp sgt i32 %tmp56, 10
  br i1 %tmp93, label %block_aaea, label %block_aab9

block_aab9:                                       ; preds = %block_aab3
  %tmp94 = load i16* bitcast (i64* @global_var_217f06 to i16*)
  %tmp95 = load i16* bitcast (i64* @global_var_217f04 to i16*)
  %tmp96 = zext i16 %tmp94 to i64
  %tmp97 = zext i16 %tmp95 to i32
  %tmp98 = call i64 @send_bits(i32 %tmp97, i64 %tmp96)
  %tmp99 = add i32 %stack_var_-24.33, -2
  %tmp100 = call i64 @send_bits(i32 %tmp99, i64 3)
  br label %block_ab19

block_aaea:                                       ; preds = %block_aab3
  %tmp101 = load i16* bitcast (i64* @global_var_217f0a to i16*)
  %tmp102 = load i16* bitcast (i64* @global_var_217f08 to i16*)
  %tmp103 = zext i16 %tmp101 to i64
  %tmp104 = zext i16 %tmp102 to i32
  %tmp105 = call i64 @send_bits(i32 %tmp104, i64 %tmp103)
  %tmp106 = add i32 %stack_var_-24.33, -10
  %tmp107 = call i64 @send_bits(i32 %tmp106, i64 7)
  br label %block_ab19

block_ab19:                                       ; preds = %block_aaea, %block_aab9, %block_aa82, %block_aa2c
  %tmp108 = icmp eq i16 %tmp54, 0
  br i1 %tmp108, label %block_ab2c, label %block_ab3c

block_ab2c:                                       ; preds = %block_ab19
  br label %block_ab65

block_ab3c:                                       ; preds = %block_ab19
  %tmp109 = icmp eq i32 %stack_var_-28.02, %tmp55
  br i1 %tmp109, label %block_ab44, label %block_ab54

block_ab44:                                       ; preds = %block_ab3c
  br label %block_ab65

block_ab54:                                       ; preds = %block_ab3c
  br label %block_ab65

block_ab64:                                       ; preds = %block_a9cf
  br label %block_ab65

block_ab65:                                       ; preds = %block_ab64, %block_ab54, %block_ab44, %block_ab2c
  %stack_var_-32.0 = phi i32 [ %stack_var_-28.02, %block_ab54 ], [ %stack_var_-28.02, %block_ab44 ], [ %stack_var_-28.02, %block_ab2c ], [ %stack_var_-32.11, %block_ab64 ]
  %stack_var_-24.2 = phi i32 [ 0, %block_ab54 ], [ 0, %block_ab44 ], [ 0, %block_ab2c ], [ %tmp56, %block_ab64 ]
  %stack_var_-20.1 = phi i32 [ 7, %block_ab54 ], [ 6, %block_ab44 ], [ 138, %block_ab2c ], [ %stack_var_-20.24, %block_ab64 ]
  %stack_var_-16.1 = phi i32 [ 4, %block_ab54 ], [ 3, %block_ab44 ], [ 3, %block_ab2c ], [ %stack_var_-16.25, %block_ab64 ]
  %tmp110 = add i32 %stack_var_-36.06, 1
  %tmp111 = icmp sgt i32 %tmp110, %arg2
  br i1 %tmp111, label %block_ab75, label %block_a99b

block_ab75:                                       ; preds = %block_ab65, %block_a98f
  %stack_var_-36.0.lcssa = phi i32 [ 0, %block_a98f ], [ %tmp110, %block_ab65 ]
  %tmp112 = zext i32 %stack_var_-36.0.lcssa to i64
  ret i64 %tmp112
}

define i64 @build_bl_tree() {
block_ab78:
  %tmp22 = load i32* bitcast (i64* @global_var_2164c4 to i32*)
  %tmp23 = call i64 @scan_tree(i64* @global_var_216fc0, i32 %tmp22)
  %tmp24 = load i32* bitcast (i64* @global_var_216504 to i32*)
  %tmp25 = call i64 @scan_tree(i64* @global_var_2178c0, i32 %tmp24)
  %tmp26 = call i64 @build_tree(i64** @global_var_216520)
  br label %block_abbd

block_abbd:                                       ; preds = %block_ab78, %block_abeb
  %indvars.iv = phi i64 [ 18, %block_ab78 ], [ %indvars.iv.next, %block_abeb ]
  %tmp28 = add i64 %indvars.iv, ptrtoint (i64* @global_var_216470 to i64)
  %tmp29 = inttoptr i64 %tmp28 to i8*
  %tmp30 = load i8* %tmp29
  %tmp31 = zext i8 %tmp30 to i64
  %tmp32 = shl nuw nsw i64 %tmp31, 2
  %tmp33 = add i64 %tmp32, ptrtoint (i64* @global_var_217ec2 to i64)
  %tmp34 = inttoptr i64 %tmp33 to i16*
  %tmp35 = load i16* %tmp34
  %tmp36 = icmp eq i16 %tmp35, 0
  br i1 %tmp36, label %block_abeb, label %block_abf7

block_abeb:                                       ; preds = %block_abbd
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %tmp38 = icmp sgt i64 %indvars.iv.next, 2
  br i1 %tmp38, label %block_abbd, label %block_abf5

block_abf5:                                       ; preds = %block_abeb
  %tmp49 = trunc i64 %indvars.iv.next to i32
  br label %block_abf8

block_abf7:                                       ; preds = %block_abbd
  %tmp50 = trunc i64 %indvars.iv to i32
  br label %block_abf8

block_abf8:                                       ; preds = %block_abf7, %block_abf5
  %stack_var_-12.02 = phi i32 [ %tmp50, %block_abf7 ], [ %tmp49, %block_abf5 ]
  %tmp39 = zext i32 %stack_var_-12.02 to i64
  %tmp40 = add nuw nsw i64 %tmp39, 1
  %tmp41 = trunc i64 %tmp40 to i32
  %tmp42 = mul i32 %tmp41, 3
  %tmp43 = add i32 %tmp42, 14
  %tmp44 = sext i32 %tmp43 to i64
  %tmp45 = load i64* @global_var_219ed0
  %tmp46 = add i64 %tmp44, %tmp45
  store i64 %tmp46, i64* @global_var_219ed0
  ret i64 %tmp39
}

define i64 @send_all_trees(i32 %arg1, i64 %arg2, i64 %arg3) {
block_ac20:
  %tmp23 = trunc i64 %arg2 to i32
  %tmp24 = trunc i64 %arg3 to i32
  %tmp25 = add i32 %arg1, -257
  %tmp26 = call i64 @send_bits(i32 %tmp25, i64 5)
  %tmp27 = add i32 %tmp23, -1
  %tmp28 = call i64 @send_bits(i32 %tmp27, i64 5)
  %tmp29 = add i32 %tmp24, -4
  %tmp30 = call i64 @send_bits(i32 %tmp29, i64 4)
  %tmp31 = icmp sgt i32 %tmp24, 0
  br i1 %tmp31, label %block_ac72.preheader, label %block_acb6

block_ac72.preheader:                             ; preds = %block_ac20
  %tmp48 = add i32 %tmp24, -1
  br label %block_ac72

block_ac72:                                       ; preds = %block_ac72, %block_ac72.preheader
  %indvars.iv = phi i64 [ 0, %block_ac72.preheader ], [ %indvars.iv.next, %block_ac72 ]
  %tmp33 = add i64 %indvars.iv, ptrtoint (i64* @global_var_216470 to i64)
  %tmp34 = inttoptr i64 %tmp33 to i8*
  %tmp35 = load i8* %tmp34
  %tmp36 = zext i8 %tmp35 to i64
  %tmp37 = shl nuw nsw i64 %tmp36, 2
  %tmp38 = add i64 %tmp37, ptrtoint (i64* @global_var_217ec2 to i64)
  %tmp39 = inttoptr i64 %tmp38 to i16*
  %tmp40 = load i16* %tmp39
  %tmp41 = zext i16 %tmp40 to i32
  %tmp42 = call i64 @send_bits(i32 %tmp41, i64 3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv46 = trunc i64 %indvars.iv to i32
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %tmp48
  br i1 %exitcond47, label %block_acb6, label %block_ac72

block_acb6:                                       ; preds = %block_ac72, %block_ac20
  %tmp43 = add i32 %arg1, -1
  %tmp44 = call i64 @send_tree(i64* @global_var_216fc0, i32 %tmp43)
  %tmp45 = call i64 @send_tree(i64* @global_var_2178c0, i32 %tmp27)
  ret i64 %tmp45
}

define i64 @flush_block(i64 %arg1, i32 %arg2, i64 %arg3, i64 %arg4) {
block_ace1:
  %tmp24 = trunc i64 %arg3 to i32
  %tmp25 = trunc i64 %arg4 to i32
  %tmp26 = load i32* bitcast (i64* @global_var_219ec8 to i32*)
  %tmp27 = load i8* bitcast (i64* @global_var_219ecc to i8*)
  %tmp28 = zext i32 %tmp26 to i64
  %tmp29 = add i64 %tmp28, ptrtoint (i64* @global_var_218ec0 to i64)
  %tmp30 = inttoptr i64 %tmp29 to i8*
  store i8 %tmp27, i8* %tmp30
  %tmp31 = load i64* @global_var_219ef0
  %tmp32 = inttoptr i64 %tmp31 to i16*
  %tmp33 = load i16* %tmp32
  %tmp34 = icmp eq i16 %tmp33, -1
  br i1 %tmp34, label %block_ad20, label %block_ad25

block_ad20:                                       ; preds = %block_ace1
  %tmp35 = call i64 @set_file_type()
  br label %block_ad25

block_ad25:                                       ; preds = %block_ace1, %block_ad20
  %tmp36 = call i64 @build_tree(i64** inttoptr (i64 2188448 to i64**))
  %tmp37 = call i64 @build_tree(i64** inttoptr (i64 2188512 to i64**))
  %tmp38 = call i64 @build_bl_tree()
  %tmp39 = load i64* @global_var_219ed0
  %tmp40 = add i64 %tmp39, 10
  %tmp41 = lshr i64 %tmp40, 3
  %tmp42 = load i64* @global_var_219ed8
  %tmp43 = add i64 %tmp42, 10
  %tmp44 = lshr i64 %tmp43, 3
  %tmp45 = load i64* @global_var_219ee8
  %tmp46 = sext i32 %arg2 to i64
  %tmp47 = add i64 %tmp45, %tmp46
  store i64 %tmp47, i64* @global_var_219ee8
  %tmp48 = icmp ugt i64 %tmp44, %tmp41
  br i1 %tmp48, label %block_ad95, label %block_ad8d

block_ad8d:                                       ; preds = %block_ad25
  br label %block_ad95

block_ad95:                                       ; preds = %block_ad8d, %block_ad25
  %stack_var_-24.0 = phi i64 [ %tmp41, %block_ad25 ], [ %tmp44, %block_ad8d ]
  %tmp49 = add nsw i64 %tmp46, 4
  %tmp50 = icmp ult i64 %stack_var_-24.0, %tmp49
  br i1 %tmp50, label %block_ae0e, label %block_ada3

block_ada3:                                       ; preds = %block_ad95
  %tmp51 = icmp eq i64 %arg1, 0
  br i1 %tmp51, label %block_ae0e, label %block_adaa

block_adaa:                                       ; preds = %block_ada3
  %tmp52 = call i64 @send_bits(i32 %tmp25, i64 3)
  %tmp53 = load i64* @global_var_219ee0
  %tmp54 = add i64 %tmp53, 10
  %tmp55 = and i64 %tmp54, -8
  store i64 %tmp55, i64* @global_var_219ee0
  %tmp56 = shl nsw i64 %tmp46, 3
  %tmp57 = add nsw i64 %tmp56, 32
  %tmp58 = load i64* @global_var_219ee0
  %tmp59 = add i64 %tmp57, %tmp58
  store i64 %tmp59, i64* @global_var_219ee0
  %tmp60 = zext i32 %arg2 to i64
  %tmp61 = inttoptr i64 %arg1 to i8*
  %tmp62 = call i64 @copy_block(i8* %tmp61, i64 %tmp60, i64 1)
  br label %block_aebd

block_ae0e:                                       ; preds = %block_ada3, %block_ad95
  %tmp63 = icmp eq i64 %tmp44, %stack_var_-24.0
  br i1 %tmp63, label %block_ae18, label %block_ae5b

block_ae18:                                       ; preds = %block_ae0e
  %tmp64 = add i32 %tmp25, 2
  %tmp65 = call i64 @send_bits(i32 %tmp64, i64 3)
  %tmp66 = call i64 @compress_block(i16* bitcast (i64* @global_var_2179c0 to i16*), i64* @global_var_217e40)
  %tmp67 = load i64* @global_var_219ed8
  %tmp68 = load i64* @global_var_219ee0
  %tmp69 = add i64 %tmp67, 3
  %tmp70 = add i64 %tmp69, %tmp68
  store i64 %tmp70, i64* @global_var_219ee0
  br label %block_aebd

block_ae5b:                                       ; preds = %block_ae0e
  %tmp71 = add i32 %tmp25, 4
  %tmp72 = call i64 @send_bits(i32 %tmp71, i64 3)
  %tmp73 = add nuw nsw i64 %tmp38, 1
  %tmp74 = and i64 %tmp73, 4294967295
  %tmp75 = call i64 @send_all_trees(i32 ptrtoint (i64* @global_var_2164c5 to i32), i64 zext (i32 ptrtoint (i64* @global_var_216505 to i32) to i64), i64 %tmp74)
  %tmp76 = call i64 @compress_block(i16* bitcast (i64* @global_var_216fc0 to i16*), i64* @global_var_2178c0)
  %tmp77 = load i64* @global_var_219ed0
  %tmp78 = load i64* @global_var_219ee0
  %tmp79 = add i64 %tmp77, 3
  %tmp80 = add i64 %tmp79, %tmp78
  store i64 %tmp80, i64* @global_var_219ee0
  br label %block_aebd

block_aebd:                                       ; preds = %block_ae5b, %block_ae18, %block_adaa
  %tmp81 = call i64 @init_block()
  %tmp82 = icmp eq i32 %tmp25, 0
  br i1 %tmp82, label %block_aee1, label %block_aec8

block_aec8:                                       ; preds = %block_aebd
  %tmp83 = call i64 @bi_windup()
  %tmp84 = load i64* @global_var_219ee0
  %tmp85 = add i64 %tmp84, 7
  store i64 %tmp85, i64* @global_var_219ee0
  br label %block_af31

block_aee1:                                       ; preds = %block_aebd
  %tmp86 = icmp eq i32 %tmp24, 0
  br i1 %tmp86, label %block_af31, label %block_aee7

block_aee7:                                       ; preds = %block_aee1
  %tmp87 = load i64* @global_var_219ee0
  %tmp88 = and i64 %tmp87, 7
  %tmp89 = icmp eq i64 %tmp88, 0
  br i1 %tmp89, label %block_af31, label %block_aef6

block_aef6:                                       ; preds = %block_aee7
  %tmp90 = call i64 @send_bits(i32 0, i64 3)
  %tmp91 = load i64* @global_var_219ee0
  %tmp92 = add i64 %tmp91, 10
  %tmp93 = and i64 %tmp92, -8
  store i64 %tmp93, i64* @global_var_219ee0
  %tmp94 = inttoptr i64 %arg1 to i8*
  %tmp95 = call i64 @copy_block(i8* %tmp94, i64 0, i64 1)
  br label %block_af31

block_af31:                                       ; preds = %block_aef6, %block_aee7, %block_aee1, %block_aec8
  %tmp96 = load i64* @global_var_219ee0
  %tmp97 = ashr i64 %tmp96, 3
  ret i64 %tmp97
}

define i64 @ct_tally(i32 %arg1, i64 %arg2) {
block_af3e:
  %tmp29 = trunc i64 %arg2 to i32
  %tmp30 = load i32* bitcast (i64* @global_var_219ec0 to i32*)
  store i32 ptrtoint (i64* @global_var_219ec1 to i32), i32* bitcast (i64* @global_var_219ec0 to i32*)
  %tmp31 = zext i32 %tmp30 to i64
  %tmp32 = trunc i64 %arg2 to i8
  %tmp33 = add i64 %tmp31, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp34 = inttoptr i64 %tmp33 to i8*
  store i8 %tmp32, i8* %tmp34
  %tmp35 = icmp eq i32 %arg1, 0
  br i1 %tmp35, label %block_af6e, label %block_afa6

block_af6e:                                       ; preds = %block_af3e
  %tmp36 = sext i32 %tmp29 to i64
  %tmp37 = shl nsw i64 %tmp36, 2
  %tmp38 = add i64 %tmp37, ptrtoint (i64* @global_var_216fc0 to i64)
  %tmp39 = inttoptr i64 %tmp38 to i16*
  %tmp40 = load i16* %tmp39
  %tmp41 = zext i16 %tmp40 to i64
  %tmp42 = add nuw nsw i64 %tmp41, 1
  %tmp43 = trunc i64 %tmp42 to i16
  store i16 %tmp43, i16* %tmp39
  br label %block_b095

block_afa6:                                       ; preds = %block_af3e
  %tmp44 = add i32 %arg1, -1
  %tmp45 = sext i32 %tmp29 to i64
  %tmp46 = add i64 %tmp45, ptrtoint (i64* @global_var_218ac0 to i64)
  %tmp47 = inttoptr i64 %tmp46 to i8*
  %tmp48 = load i8* %tmp47
  %tmp49 = zext i8 %tmp48 to i32
  %tmp50 = add nuw nsw i32 %tmp49, 257
  %tmp51 = zext i32 %tmp50 to i64
  %tmp52 = shl nuw nsw i64 %tmp51, 2
  %tmp53 = add i64 %tmp52, ptrtoint (i64* @global_var_216fc0 to i64)
  %tmp54 = inttoptr i64 %tmp53 to i16*
  %tmp55 = load i16* %tmp54
  %tmp56 = zext i16 %tmp55 to i64
  %tmp57 = add nuw nsw i64 %tmp56, 1
  %tmp58 = trunc i64 %tmp57 to i16
  store i16 %tmp58, i16* %tmp54
  %tmp59 = icmp sgt i32 %tmp44, 255
  br i1 %tmp59, label %block_b010, label %block_affa

block_affa:                                       ; preds = %block_afa6
  %tmp60 = sext i32 %tmp44 to i64
  %tmp61 = add i64 %tmp60, ptrtoint (i64* @global_var_218bc0 to i64)
  %tmp62 = inttoptr i64 %tmp61 to i8*
  %tmp63 = load i8* %tmp62
  %tmp64 = zext i8 %tmp63 to i64
  br label %block_b02c

block_b010:                                       ; preds = %block_afa6
  %tmp65 = ashr i32 %tmp44, 7
  %tmp66 = add nsw i32 %tmp65, 256
  %tmp67 = sext i32 %tmp66 to i64
  %tmp68 = add i64 %tmp67, ptrtoint (i64* @global_var_218bc0 to i64)
  %tmp69 = inttoptr i64 %tmp68 to i8*
  %tmp70 = load i8* %tmp69
  %tmp71 = zext i8 %tmp70 to i64
  br label %block_b02c

block_b02c:                                       ; preds = %block_b010, %block_affa
  %rax.0 = phi i64 [ %tmp71, %block_b010 ], [ %tmp64, %block_affa ]
  %tmp72 = shl nuw nsw i64 %rax.0, 2
  %tmp73 = add i64 %tmp72, ptrtoint (i64* @global_var_2178c0 to i64)
  %tmp74 = inttoptr i64 %tmp73 to i16*
  %tmp75 = load i16* %tmp74
  %tmp76 = zext i16 %tmp75 to i64
  %tmp77 = add nuw nsw i64 %tmp76, 1
  %tmp78 = trunc i64 %tmp77 to i16
  store i16 %tmp78, i16* %tmp74
  %tmp79 = load i32* bitcast (i64* @global_var_219ec4 to i32*)
  store i32 ptrtoint (i64* @global_var_219ec5 to i32), i32* bitcast (i64* @global_var_219ec4 to i32*)
  %tmp80 = zext i32 %tmp79 to i64
  %tmp81 = shl nuw nsw i64 %tmp80, 1
  %tmp82 = trunc i32 %tmp44 to i16
  %tmp83 = add i64 %tmp81, ptrtoint (i64* @global_var_23a880 to i64)
  %tmp84 = inttoptr i64 %tmp83 to i16*
  store i16 %tmp82, i16* %tmp84
  %tmp85 = load i8* bitcast (i64* @global_var_219ecc to i8*)
  %tmp86 = load i8* bitcast (i64* @global_var_219ecd to i8*)
  %tmp87 = or i8 %tmp86, %tmp85
  store i8 %tmp87, i8* bitcast (i64* @global_var_219ecc to i8*)
  br label %block_b095

block_b095:                                       ; preds = %block_b02c, %block_af6e
  %tmp88 = load i8* bitcast (i64* @global_var_219ecd to i8*)
  %tmp89 = zext i8 %tmp88 to i32
  %tmp90 = shl nuw nsw i32 %tmp89, 1
  %tmp91 = trunc i32 %tmp90 to i8
  store i8 %tmp91, i8* bitcast (i64* @global_var_219ecd to i8*)
  %tmp92 = load i32* bitcast (i64* @global_var_219ec0 to i32*)
  %tmp93 = and i32 %tmp92, 7
  %tmp94 = icmp eq i32 %tmp93, 0
  br i1 %tmp94, label %block_b0b1, label %block_b0e1

block_b0b1:                                       ; preds = %block_b095
  %tmp95 = load i32* bitcast (i64* @global_var_219ec8 to i32*)
  store i32 ptrtoint (i64* @global_var_219ec9 to i32), i32* bitcast (i64* @global_var_219ec8 to i32*)
  %tmp96 = load i8* bitcast (i64* @global_var_219ecc to i8*)
  %tmp97 = zext i32 %tmp95 to i64
  %tmp98 = add i64 %tmp97, ptrtoint (i64* @global_var_218ec0 to i64)
  %tmp99 = inttoptr i64 %tmp98 to i8*
  store i8 %tmp96, i8* %tmp99
  store i8 0, i8* bitcast (i64* @global_var_219ecc to i8*)
  store i8 1, i8* bitcast (i64* @global_var_219ecd to i8*)
  br label %block_b0e1

block_b0e1:                                       ; preds = %block_b095, %block_b0b1
  %tmp100 = load i32* bitcast (i64* @global_var_2160a0 to i32*)
  %tmp101 = zext i32 %tmp100 to i64
  %tmp102 = inttoptr i64 %tmp101 to %z_stream_s*
  %tmp103 = ptrtoint %z_stream_s* %tmp102 to i64
  %tmp104 = trunc i64 %tmp103 to i32
  %tmp105 = icmp slt i32 %tmp104, 3
  br i1 %tmp105, label %block_b1ac, label %block_b0f0

block_b0f0:                                       ; preds = %block_b0e1
  %tmp106 = load i32* bitcast (i64* @global_var_219ec0 to i32*)
  %tmp107 = and i32 %tmp106, ptrtoint (i64** @global_var_fff to i32)
  %tmp108 = icmp eq i32 %tmp107, 0
  br i1 %tmp108, label %block_b103, label %block_b1ac

block_b103:                                       ; preds = %block_b0f0
  %tmp109 = load i32* bitcast (i64* @global_var_219ec0 to i32*)
  %tmp110 = zext i32 %tmp109 to i64
  %tmp111 = shl nuw nsw i64 %tmp110, 3
  %tmp112 = load i32* bitcast (i64* @global_var_21a428 to i32*)
  %tmp113 = load i64* @global_var_21a430
  br label %block_b135

block_b135:                                       ; preds = %block_b135, %block_b103
  %indvars.iv = phi i64 [ 0, %block_b103 ], [ %indvars.iv.next, %block_b135 ]
  %stack_var_-24.01 = phi i64 [ %tmp111, %block_b103 ], [ %tmp127, %block_b135 ]
  %tmp114 = shl nsw i64 %indvars.iv, 2
  %tmp115 = add i64 %tmp114, ptrtoint (i64* @global_var_2178c0 to i64)
  %tmp116 = inttoptr i64 %tmp115 to i16*
  %tmp117 = load i16* %tmp116
  %tmp118 = add i64 %tmp114, ptrtoint (i64* @global_var_2163a0 to i64)
  %tmp119 = inttoptr i64 %tmp118 to i32*
  %tmp120 = load i32* %tmp119
  %tmp121 = sext i32 %tmp120 to i64
  %tmp122 = add nsw i64 %tmp121, 5
  %tmp123 = sext i64 %tmp122 to i128
  %tmp124 = zext i16 %tmp117 to i128
  %tmp125 = mul nsw i128 %tmp123, %tmp124
  %tmp126 = trunc i128 %tmp125 to i64
  %tmp127 = add i64 %tmp126, %stack_var_-24.01
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond, label %block_b17f, label %block_b135

block_b17f:                                       ; preds = %block_b135
  %tmp128 = load i32* bitcast (i64* @global_var_219ec0 to i32*)
  %tmp129 = lshr i32 %tmp128, 1
  %tmp130 = load i32* bitcast (i64* @global_var_219ec4 to i32*)
  %tmp131 = icmp ugt i32 %tmp129, %tmp130
  br i1 %tmp131, label %block_b198, label %block_b1ac

block_b198:                                       ; preds = %block_b17f
  %tmp132 = zext i32 %tmp112 to i64
  %tmp133 = sub i64 %tmp132, %tmp113
  %tmp134 = lshr i64 %tmp127, 3
  %tmp135 = lshr i64 %tmp133, 1
  %tmp136 = icmp ult i64 %tmp134, %tmp135
  br i1 %tmp136, label %block_b1a5, label %block_b1ac

block_b1a5:                                       ; preds = %block_b198
  br label %block_b1d2

block_b1ac:                                       ; preds = %block_b198, %block_b17f, %block_b0f0, %block_b0e1
  %tmp137 = load i32* bitcast (i64* @global_var_219ec0 to i32*)
  %tmp138 = icmp eq i32 %tmp137, 32767
  br i1 %tmp138, label %block_b1c6, label %block_b1b9

block_b1b9:                                       ; preds = %block_b1ac
  %tmp139 = load i32* bitcast (i64* @global_var_219ec4 to i32*)
  %tmp140 = icmp eq i32 %tmp139, 32768
  br i1 %tmp140, label %block_b1c6, label %block_b1cd

block_b1c6:                                       ; preds = %block_b1b9, %block_b1ac
  br label %block_b1d2

block_b1cd:                                       ; preds = %block_b1b9
  br label %block_b1d2

block_b1d2:                                       ; preds = %block_b1cd, %block_b1c6, %block_b1a5
  %rax.1 = phi i64 [ 1, %block_b1c6 ], [ 0, %block_b1cd ], [ 1, %block_b1a5 ]
  ret i64 %rax.1
}

define i64 @compress_block(i16* %arg1, i64* %arg2) {
block_b1d4:
  %stack_var_-56 = alloca i16*
  %tmp31 = bitcast i16** %stack_var_-56 to i64**
  store i64* %arg2, i64** %tmp31
  %tmp32 = load i32* bitcast (i64* @global_var_219ec0 to i32*)
  %tmp33 = icmp eq i32 %tmp32, 0
  %.pre = ptrtoint i16* %arg1 to i64
  br i1 %tmp33, label %block_b427, label %block_b20b

block_b20b:                                       ; preds = %block_b1d4, %block_b415
  %stack_var_-36.0 = phi i32 [ %tmp45, %block_b415 ], [ 0, %block_b1d4 ]
  %stack_var_-32.0 = phi i32 [ %stack_var_-32.1, %block_b415 ], [ 0, %block_b1d4 ]
  %stack_var_-28.0 = phi i32 [ %stack_var_-28.1, %block_b415 ], [ 0, %block_b1d4 ]
  %stack_var_-37.0 = phi i32 [ %tmp140, %block_b415 ], [ 0, %block_b1d4 ]
  %tmp34 = and i32 %stack_var_-36.0, 7
  %tmp35 = icmp eq i32 %tmp34, 0
  br i1 %tmp35, label %block_b215, label %block_b22e

block_b215:                                       ; preds = %block_b20b
  %tmp36 = zext i32 %stack_var_-28.0 to i64
  %tmp37 = add nuw nsw i64 %tmp36, 1
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = add i64 %tmp36, ptrtoint (i64* @global_var_218ec0 to i64)
  %tmp40 = inttoptr i64 %tmp39 to i8*
  %tmp41 = load i8* %tmp40
  %tmp42 = sext i8 %tmp41 to i32
  br label %block_b22e

block_b22e:                                       ; preds = %block_b20b, %block_b215
  %stack_var_-28.1 = phi i32 [ %stack_var_-28.0, %block_b20b ], [ %tmp38, %block_b215 ]
  %stack_var_-37.1 = phi i32 [ %stack_var_-37.0, %block_b20b ], [ %tmp42, %block_b215 ]
  %tmp43 = zext i32 %stack_var_-36.0 to i64
  %tmp44 = add nuw nsw i64 %tmp43, 1
  %tmp45 = trunc i64 %tmp44 to i32
  %tmp46 = add i64 %tmp43, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp47 = inttoptr i64 %tmp46 to i8*
  %tmp48 = load i8* %tmp47
  %tmp49 = zext i8 %tmp48 to i32
  %tmp50 = and i32 %stack_var_-37.1, 1
  %tmp51 = icmp eq i32 %tmp50, 0
  br i1 %tmp51, label %block_b255, label %block_b298

block_b255:                                       ; preds = %block_b22e
  %tmp52 = zext i8 %tmp48 to i64
  %tmp53 = shl nuw nsw i64 %tmp52, 2
  %tmp54 = add i64 %tmp53, %.pre
  %tmp55 = add i64 %tmp54, 2
  %tmp56 = inttoptr i64 %tmp55 to i16*
  %tmp57 = load i16* %tmp56
  %tmp58 = inttoptr i64 %tmp54 to i16*
  %tmp59 = load i16* %tmp58
  %tmp60 = zext i16 %tmp57 to i64
  %tmp61 = zext i16 %tmp59 to i32
  %tmp62 = call i64 @send_bits(i32 %tmp61, i64 %tmp60)
  br label %block_b415

block_b298:                                       ; preds = %block_b22e
  %tmp63 = zext i8 %tmp48 to i64
  %tmp64 = add i64 %tmp63, ptrtoint (i64* @global_var_218ac0 to i64)
  %tmp65 = inttoptr i64 %tmp64 to i8*
  %tmp66 = load i8* %tmp65
  %tmp67 = zext i8 %tmp66 to i32
  %tmp68 = add nuw nsw i32 %tmp67, 257
  %tmp69 = zext i32 %tmp68 to i64
  %tmp70 = shl nuw nsw i64 %tmp69, 2
  %tmp71 = add i64 %tmp70, %.pre
  %tmp72 = add i64 %tmp71, 2
  %tmp73 = inttoptr i64 %tmp72 to i16*
  %tmp74 = load i16* %tmp73
  %tmp75 = inttoptr i64 %tmp71 to i16*
  %tmp76 = load i16* %tmp75
  %tmp77 = zext i16 %tmp74 to i64
  %tmp78 = zext i16 %tmp76 to i32
  %tmp79 = call i64 @send_bits(i32 %tmp78, i64 %tmp77)
  %tmp80 = zext i8 %tmp66 to i64
  %tmp81 = shl nuw nsw i64 %tmp80, 2
  %tmp82 = add i64 %tmp81, ptrtoint (i64* @global_var_216320 to i64)
  %tmp83 = inttoptr i64 %tmp82 to i32*
  %tmp84 = load i32* %tmp83
  %tmp85 = icmp eq i32 %tmp84, 0
  br i1 %tmp85, label %block_b33c, label %block_b315

block_b315:                                       ; preds = %block_b298
  %tmp86 = add i64 %tmp81, ptrtoint (i64* @global_var_218dc0 to i64)
  %tmp87 = inttoptr i64 %tmp86 to i32*
  %tmp88 = load i32* %tmp87
  %tmp89 = sub i32 %tmp49, %tmp88
  %tmp90 = zext i32 %tmp84 to i64
  %tmp91 = call i64 @send_bits(i32 %tmp89, i64 %tmp90)
  br label %block_b33c

block_b33c:                                       ; preds = %block_b315, %block_b298
  %tmp92 = zext i32 %stack_var_-32.0 to i64
  %tmp93 = add nuw nsw i64 %tmp92, 1
  %tmp94 = trunc i64 %tmp93 to i32
  %tmp95 = shl nuw nsw i64 %tmp92, 1
  %tmp96 = add i64 %tmp95, ptrtoint (i64* @global_var_23a880 to i64)
  %tmp97 = inttoptr i64 %tmp96 to i16*
  %tmp98 = load i16* %tmp97
  %tmp99 = zext i16 %tmp98 to i32
  %tmp100 = icmp ugt i16 %tmp98, 255
  br i1 %tmp100, label %block_b378, label %block_b365

block_b365:                                       ; preds = %block_b33c
  %tmp101 = zext i16 %tmp98 to i64
  %tmp102 = add i64 %tmp101, ptrtoint (i64* @global_var_218bc0 to i64)
  %tmp103 = inttoptr i64 %tmp102 to i8*
  %tmp104 = load i8* %tmp103
  %tmp105 = zext i8 %tmp104 to i64
  br label %block_b393

block_b378:                                       ; preds = %block_b33c
  %tmp106 = lshr i32 %tmp99, 7
  %tmp107 = add nuw nsw i32 %tmp106, 256
  %tmp108 = zext i32 %tmp107 to i64
  %tmp109 = add i64 %tmp108, ptrtoint (i64* @global_var_218bc0 to i64)
  %tmp110 = inttoptr i64 %tmp109 to i8*
  %tmp111 = load i8* %tmp110
  %tmp112 = zext i8 %tmp111 to i64
  br label %block_b393

block_b393:                                       ; preds = %block_b378, %block_b365
  %rax.0 = phi i64 [ %tmp112, %block_b378 ], [ %tmp105, %block_b365 ]
  %tmp113 = shl nuw nsw i64 %rax.0, 2
  %tmp114 = load i16** %stack_var_-56
  %tmp115 = ptrtoint i16* %tmp114 to i64
  %tmp116 = or i64 %tmp113, 2
  %tmp117 = add i64 %tmp116, %tmp115
  %tmp118 = inttoptr i64 %tmp117 to i16*
  %tmp119 = load i16* %tmp118
  %tmp120 = load i16** %stack_var_-56
  %tmp121 = ptrtoint i16* %tmp120 to i64
  %tmp122 = add i64 %tmp121, %tmp113
  %tmp123 = inttoptr i64 %tmp122 to i16*
  %tmp124 = load i16* %tmp123
  %tmp125 = zext i16 %tmp119 to i64
  %tmp126 = zext i16 %tmp124 to i32
  %tmp127 = call i64 @send_bits(i32 %tmp126, i64 %tmp125)
  %tmp128 = add i64 %tmp113, ptrtoint (i64* @global_var_2163a0 to i64)
  %tmp129 = inttoptr i64 %tmp128 to i32*
  %tmp130 = load i32* %tmp129
  %tmp131 = icmp eq i32 %tmp130, 0
  br i1 %tmp131, label %block_b415, label %block_b3ee

block_b3ee:                                       ; preds = %block_b393
  %tmp132 = add i64 %tmp113, ptrtoint (i64* @global_var_218e40 to i64)
  %tmp133 = inttoptr i64 %tmp132 to i32*
  %tmp134 = load i32* %tmp133
  %tmp135 = sub i32 %tmp99, %tmp134
  %tmp136 = zext i32 %tmp130 to i64
  %tmp137 = call i64 @send_bits(i32 %tmp135, i64 %tmp136)
  br label %block_b415

block_b415:                                       ; preds = %block_b3ee, %block_b393, %block_b255
  %stack_var_-32.1 = phi i32 [ %tmp94, %block_b393 ], [ %tmp94, %block_b3ee ], [ %stack_var_-32.0, %block_b255 ]
  %tmp138 = trunc i32 %stack_var_-37.1 to i8
  %tmp139 = lshr i8 %tmp138, 1
  %tmp140 = zext i8 %tmp139 to i32
  %tmp141 = load i32* bitcast (i64* @global_var_219ec0 to i32*)
  %tmp142 = icmp ult i32 %tmp45, %tmp141
  br i1 %tmp142, label %block_b20b, label %block_b427

block_b427:                                       ; preds = %block_b415, %block_b1d4
  %tmp143 = add i64 %.pre, add (i64 ptrtoint (i64* @global_var_400 to i64), i64 2)
  %tmp144 = inttoptr i64 %tmp143 to i16*
  %tmp145 = load i16* %tmp144
  %tmp146 = add i64 %.pre, ptrtoint (i64* @global_var_400 to i64)
  %tmp147 = inttoptr i64 %tmp146 to i16*
  %tmp148 = load i16* %tmp147
  %tmp149 = zext i16 %tmp145 to i64
  %tmp150 = zext i16 %tmp148 to i32
  %tmp151 = call i64 @send_bits(i32 %tmp150, i64 %tmp149)
  ret i64 %tmp151
}

define i64 @set_file_type() {
block_b454:
  br label %block_b46f

block_b46f:                                       ; preds = %block_b454, %block_b46f
  %stack_var_-12.08 = phi i32 [ 0, %block_b454 ], [ %tmp44, %block_b46f ]
  %stack_var_-20.07 = phi i32 [ 0, %block_b454 ], [ %tmp37, %block_b46f ]
  %tmp35 = zext i32 %stack_var_-20.07 to i64
  %tmp36 = add nuw nsw i64 %tmp35, 1
  %tmp37 = trunc i64 %tmp36 to i32
  %tmp38 = sext i32 %stack_var_-20.07 to i64
  %tmp39 = shl nsw i64 %tmp38, 2
  %tmp40 = add i64 %tmp39, ptrtoint (i64* @global_var_216fc0 to i64)
  %tmp41 = inttoptr i64 %tmp40 to i16*
  %tmp42 = load i16* %tmp41
  %tmp43 = zext i16 %tmp42 to i32
  %tmp44 = add i32 %tmp43, %stack_var_-12.08
  %tmp45 = icmp slt i32 %tmp37, 7
  br i1 %tmp45, label %block_b46f, label %block_b49b.preheader

block_b49b.preheader:                             ; preds = %block_b46f
  br label %block_b49b

block_b49b:                                       ; preds = %block_b49b, %block_b49b.preheader
  %indvars.iv13 = phi i64 [ 7, %block_b49b.preheader ], [ %indvars.iv.next14, %block_b49b ]
  %stack_var_-16.04 = phi i32 [ 0, %block_b49b.preheader ], [ %tmp53, %block_b49b ]
  %tmp48 = shl i64 %indvars.iv13, 2
  %tmp49 = add i64 %tmp48, ptrtoint (i64* @global_var_216fc0 to i64)
  %tmp50 = inttoptr i64 %tmp49 to i16*
  %tmp51 = load i16* %tmp50
  %tmp52 = zext i16 %tmp51 to i32
  %tmp53 = add i32 %tmp52, %stack_var_-16.04
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond68 = icmp eq i64 %indvars.iv.next14, 128
  br i1 %exitcond68, label %block_b4c7.preheader, label %block_b49b

block_b4c7.preheader:                             ; preds = %block_b49b
  br label %block_b4c7

block_b4c7:                                       ; preds = %block_b4c7, %block_b4c7.preheader
  %indvars.iv = phi i64 [ 128, %block_b4c7.preheader ], [ %indvars.iv.next, %block_b4c7 ]
  %stack_var_-12.12 = phi i32 [ %tmp44, %block_b4c7.preheader ], [ %tmp62, %block_b4c7 ]
  %tmp57 = shl i64 %indvars.iv, 2
  %tmp58 = add i64 %tmp57, ptrtoint (i64* @global_var_216fc0 to i64)
  %tmp59 = inttoptr i64 %tmp58 to i16*
  %tmp60 = load i16* %tmp59
  %tmp61 = zext i16 %tmp60 to i32
  %tmp62 = add i32 %tmp61, %stack_var_-12.12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %block_b4f4, label %block_b4c7

block_b4f4:                                       ; preds = %block_b4c7
  %phitmp = lshr i32 %tmp53, 2
  %tmp64 = icmp ule i32 %tmp62, %phitmp
  %tmp65 = load i64* @global_var_219ef0
  %tmp66 = zext i1 %tmp64 to i16
  %tmp67 = inttoptr i64 %tmp65 to i16*
  store i16 %tmp66, i16* %tmp67
  ret i64 %tmp65
}

define i64 @fillbuf(i32 %arg1) {
block_b510:
  %tmp20 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp21 = zext i16 %tmp20 to i64
  %tmp22 = and i32 %arg1, 31
  %tmp23 = icmp eq i32 %tmp22, 0
  br i1 %tmp23, label %bb27, label %bb

bb:                                               ; preds = %block_b510
  %tmp24 = zext i16 %tmp20 to i32
  %tmp25 = shl i32 %tmp24, %tmp22
  %tmp26 = zext i32 %tmp25 to i64
  br label %bb27

bb27:                                             ; preds = %block_b510, %bb
  %rdx.0 = phi i64 [ %tmp21, %block_b510 ], [ %tmp26, %bb ]
  %tmp28 = trunc i64 %rdx.0 to i16
  store i16 %tmp28, i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp29 = load i32* bitcast (i64* @global_var_21a148 to i32*)
  %tmp30 = icmp slt i32 %tmp29, %arg1
  br i1 %tmp30, label %block_b53a, label %block_b5d3

block_b53a:                                       ; preds = %bb27, %block_b5ba
  %stack_var_-12.01 = phi i32 [ %tmp34, %block_b5ba ], [ %arg1, %bb27 ]
  %tmp31 = load i32* bitcast (i64* @global_var_21a144 to i32*)
  %tmp32 = zext i32 %tmp31 to i64
  %tmp33 = load i32* bitcast (i64* @global_var_21a148 to i32*)
  %tmp34 = sub i32 %stack_var_-12.01, %tmp33
  %tmp35 = and i32 %tmp34, 31
  %tmp36 = icmp eq i32 %tmp35, 0
  br i1 %tmp36, label %bb40, label %bb37

bb37:                                             ; preds = %block_b53a
  %tmp38 = shl i32 %tmp31, %tmp35
  %tmp39 = zext i32 %tmp38 to i64
  br label %bb40

bb40:                                             ; preds = %block_b53a, %bb37
  %rdx.1 = phi i64 [ %tmp32, %block_b53a ], [ %tmp39, %bb37 ]
  %tmp41 = trunc i64 %rdx.1 to i32
  %tmp42 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp43 = zext i16 %tmp42 to i32
  %tmp44 = or i32 %tmp43, %tmp41
  %tmp45 = trunc i32 %tmp44 to i16
  store i16 %tmp45, i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp46 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp47 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp48 = icmp ult i32 %tmp46, %tmp47
  br i1 %tmp48, label %block_b574, label %block_b595

block_b574:                                       ; preds = %bb40
  %tmp49 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp50 = zext i32 %tmp49 to i64
  %tmp51 = add i64 %tmp50, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp52 = inttoptr i64 %tmp51 to i8*
  %tmp53 = load i8* %tmp52
  %tmp54 = zext i8 %tmp53 to i64
  br label %block_b59f

block_b595:                                       ; preds = %bb40
  %tmp55 = call i64 @fill_inbuf(i32 1)
  br label %block_b59f

block_b59f:                                       ; preds = %block_b595, %block_b574
  %rax.0 = phi i64 [ %tmp55, %block_b595 ], [ %tmp54, %block_b574 ]
  %tmp56 = trunc i64 %rax.0 to i32
  store i32 %tmp56, i32* bitcast (i64* @global_var_21a144 to i32*)
  %tmp57 = icmp eq i32 %tmp56, -1
  br i1 %tmp57, label %block_b5b0, label %block_b5ba

block_b5b0:                                       ; preds = %block_b59f
  store i32 0, i32* bitcast (i64* @global_var_21a144 to i32*)
  br label %block_b5ba

block_b5ba:                                       ; preds = %block_b59f, %block_b5b0
  store i32 8, i32* bitcast (i64* @global_var_21a148 to i32*)
  %tmp58 = icmp sgt i32 %tmp34, 8
  br i1 %tmp58, label %block_b53a, label %block_b5d3

block_b5d3:                                       ; preds = %block_b5ba, %bb27
  %stack_var_-12.0.lcssa = phi i32 [ %arg1, %bb27 ], [ %tmp34, %block_b5ba ]
  %tmp59 = load i32* bitcast (i64* @global_var_21a144 to i32*)
  %tmp60 = zext i32 %tmp59 to i64
  %tmp61 = load i32* bitcast (i64* @global_var_21a148 to i32*)
  %tmp62 = sub i32 %tmp61, %stack_var_-12.0.lcssa
  store i32 %tmp62, i32* bitcast (i64* @global_var_21a148 to i32*)
  %tmp63 = and i32 %tmp62, 31
  %tmp64 = icmp eq i32 %tmp63, 0
  br i1 %tmp64, label %bb68, label %bb65

bb65:                                             ; preds = %block_b5d3
  %tmp66 = lshr i32 %tmp59, %tmp63
  %tmp67 = zext i32 %tmp66 to i64
  br label %bb68

bb68:                                             ; preds = %block_b5d3, %bb65
  %rdx.2 = phi i64 [ %tmp60, %block_b5d3 ], [ %tmp67, %bb65 ]
  %tmp69 = trunc i64 %rdx.2 to i32
  %tmp70 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp71 = zext i16 %tmp70 to i32
  %tmp72 = or i32 %tmp71, %tmp69
  %tmp73 = zext i32 %tmp72 to i64
  %tmp74 = trunc i32 %tmp72 to i16
  store i16 %tmp74, i16* bitcast (i64* @global_var_21a140 to i16*)
  ret i64 %tmp73
}

define i64 @getbits(i32 %arg1) {
block_b609:
  %tmp17 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp18 = zext i16 %tmp17 to i64
  %tmp19 = sub i32 16, %arg1
  %tmp20 = and i32 %tmp19, 31
  %tmp21 = icmp eq i32 %tmp20, 0
  br i1 %tmp21, label %bb25, label %bb

bb:                                               ; preds = %block_b609
  %tmp22 = zext i16 %tmp17 to i32
  %tmp23 = lshr i32 %tmp22, %tmp20
  %tmp24 = zext i32 %tmp23 to i64
  br label %bb25

bb25:                                             ; preds = %block_b609, %bb
  %rdx.0 = phi i64 [ %tmp18, %block_b609 ], [ %tmp24, %bb ]
  %tmp26 = call i64 @fillbuf(i32 %arg1)
  ret i64 %rdx.0
}

define i64 @init_getbits() {
block_b642:
  store i16 0, i16* bitcast (i64* @global_var_21a140 to i16*)
  store i32 0, i32* bitcast (i64* @global_var_21a144 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_21a148 to i32*)
  %tmp6 = call i64 @fillbuf(i32 16)
  ret i64 %tmp6
}

define i64 @make_table(i32 %arg1, i64* %arg2, i64 %arg3, i64* %arg4) {
block_b670:
  %0 = alloca i16
  %1 = load i16* %0
  %stack_var_-8 = alloca i64
  %tmp70 = ptrtoint i64* %stack_var_-8 to i64
  %tmp71 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp72 = add i64 %tmp70, -144
  br label %block_b6b0

block_b6b0:                                       ; preds = %block_b6b0, %block_b670
  %indvars.iv33 = phi i64 [ 1, %block_b670 ], [ %indvars.iv.next34, %block_b6b0 ]
  %tmp73 = shl nuw nsw i64 %indvars.iv33, 1
  %tmp74 = add i64 %tmp73, %tmp72
  %tmp75 = inttoptr i64 %tmp74 to i16*
  store i16 0, i16* %tmp75
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond35 = icmp eq i64 %indvars.iv.next34, 17
  br i1 %exitcond35, label %block_b6d0, label %block_b6b0

block_b6d0:                                       ; preds = %block_b6b0
  %tmp76 = bitcast i64* %arg2 to i8*
  %tmp77 = trunc i64 %arg3 to i32
  %tmp78 = bitcast i64* %arg4 to i16*
  %tmp79 = icmp eq i32 %arg1, 0
  br i1 %tmp79, label %block_b71f, label %block_b6dc.lr.ph

block_b6dc.lr.ph:                                 ; preds = %block_b6d0
  %tmp80 = ptrtoint i8* %tmp76 to i64
  %tmp81 = add i32 %arg1, -1
  br label %block_b6dc

block_b6dc:                                       ; preds = %block_b6dc, %block_b6dc.lr.ph
  %indvars.iv29 = phi i64 [ 0, %block_b6dc.lr.ph ], [ %indvars.iv.next30, %block_b6dc ]
  %tmp82 = add i64 %indvars.iv29, %tmp80
  %tmp83 = inttoptr i64 %tmp82 to i8*
  %tmp84 = load i8* %tmp83
  %tmp85 = zext i8 %tmp84 to i64
  %tmp86 = shl nuw nsw i64 %tmp85, 1
  %tmp87 = add i64 %tmp86, %tmp72
  %tmp88 = inttoptr i64 %tmp87 to i16*
  %tmp89 = load i16* %tmp88
  %tmp90 = zext i16 %tmp89 to i32
  %tmp91 = add nuw nsw i32 %tmp90, 1
  %tmp92 = trunc i32 %tmp91 to i16
  store i16 %tmp92, i16* %tmp88
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %lftr.wideiv278 = trunc i64 %indvars.iv29 to i32
  %exitcond279 = icmp eq i32 %lftr.wideiv278, %tmp81
  br i1 %exitcond279, label %block_b71f, label %block_b6dc

block_b71f:                                       ; preds = %block_b6dc, %block_b6d0
  %tmp93 = add i64 %tmp70, -48
  %tmp111 = add i64 %tmp70, -46
  br label %block_b731

block_b731:                                       ; preds = %block_b77a, %block_b71f
  %indvars.iv26 = phi i64 [ 1, %block_b71f ], [ %indvars.iv.next27, %block_b77a ]
  %tmp94 = shl nuw nsw i64 %indvars.iv26, 1
  %tmp95 = add i64 %tmp94, %tmp93
  %tmp96 = inttoptr i64 %tmp95 to i16*
  %tmp97 = load i16* %tmp96
  %tmp98 = zext i16 %tmp97 to i64
  %tmp99 = add i64 %tmp94, %tmp72
  %tmp100 = inttoptr i64 %tmp99 to i16*
  %tmp101 = load i16* %tmp100
  %tmp102 = zext i16 %tmp101 to i64
  %tmp103 = sub i64 16, %indvars.iv26
  %tmp104 = icmp eq i64 %tmp103, 0
  br i1 %tmp104, label %block_b77a, label %bb

bb:                                               ; preds = %block_b731
  %tmp105 = zext i16 %tmp101 to i32
  %tmp106 = trunc i64 %tmp103 to i32
  %tmp107 = shl i32 %tmp105, %tmp106
  %tmp108 = zext i32 %tmp107 to i64
  br label %block_b77a

block_b77a:                                       ; preds = %block_b731, %bb
  %rsi.0 = phi i64 [ %tmp102, %block_b731 ], [ %tmp108, %bb ]
  %tmp109 = add nuw nsw i64 %rsi.0, %tmp98
  %tmp110 = trunc i64 %tmp109 to i16
  %tmp112 = add i64 %tmp111, %tmp94
  %tmp113 = inttoptr i64 %tmp112 to i16*
  store i16 %tmp110, i16* %tmp113
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond28 = icmp eq i64 %indvars.iv.next27, 17
  br i1 %exitcond28, label %block_b783, label %block_b731

block_b783:                                       ; preds = %block_b77a
  %tmp114 = icmp eq i16 %1, 0
  br i1 %tmp114, label %block_b798, label %block_b78c

block_b78c:                                       ; preds = %block_b783
  %tmp115 = call i64 @gzip_error(i8* getelementptr inbounds ([11 x i8]* @global_var_120bc, i32 0, i32 0))
  unreachable

block_b798:                                       ; preds = %block_b783
  %tmp116 = sub i32 16, %tmp77
  %tmp117 = icmp eq i32 %tmp77, 0
  br i1 %tmp117, label %block_b815.thread, label %block_b7b5.lr.ph

block_b815.thread:                                ; preds = %block_b798
  %tmp145.pre = add i64 %tmp70, -96
  br label %block_b817.lr.ph

block_b7b5.lr.ph:                                 ; preds = %block_b798
  %tmp118 = and i32 %tmp116, 31
  %tmp119 = icmp eq i32 %tmp118, 0
  %tmp120 = add i64 %tmp70, -96
  br label %block_b7b5

block_b7b5:                                       ; preds = %block_b7b5.lr.ph, %block_b807
  %stack_var_-192.316 = phi i32 [ 1, %block_b7b5.lr.ph ], [ %tmp142, %block_b807 ]
  %tmp121 = zext i32 %stack_var_-192.316 to i64
  %tmp122 = shl nuw nsw i64 %tmp121, 1
  %tmp123 = add i64 %tmp122, %tmp93
  %tmp124 = inttoptr i64 %tmp123 to i16*
  %tmp125 = load i16* %tmp124
  %tmp126 = zext i16 %tmp125 to i64
  br i1 %tmp119, label %bb131, label %bb127

bb127:                                            ; preds = %block_b7b5
  %tmp128 = zext i16 %tmp125 to i32
  %tmp129 = lshr i32 %tmp128, %tmp118
  %tmp130 = zext i32 %tmp129 to i64
  br label %bb131

bb131:                                            ; preds = %block_b7b5, %bb127
  %rdx.0 = phi i64 [ %tmp126, %block_b7b5 ], [ %tmp130, %bb127 ]
  %tmp132 = trunc i64 %rdx.0 to i16
  store i16 %tmp132, i16* %tmp124
  %tmp133 = sub i32 %tmp77, %stack_var_-192.316
  %tmp134 = and i32 %tmp133, 31
  %tmp135 = icmp eq i32 %tmp134, 0
  br i1 %tmp135, label %block_b807, label %bb136

bb136:                                            ; preds = %bb131
  %tmp137 = shl i32 1, %tmp134
  %tmp138 = zext i32 %tmp137 to i64
  br label %block_b807

block_b807:                                       ; preds = %bb131, %bb136
  %rdx.1 = phi i64 [ 1, %bb131 ], [ %tmp138, %bb136 ]
  %tmp139 = trunc i64 %rdx.1 to i16
  %tmp140 = add i64 %tmp120, %tmp122
  %tmp141 = inttoptr i64 %tmp140 to i16*
  store i16 %tmp139, i16* %tmp141
  %tmp142 = add i32 %stack_var_-192.316, 1
  %tmp143 = icmp ult i32 %tmp77, %tmp142
  br i1 %tmp143, label %block_b815, label %block_b7b5

block_b815:                                       ; preds = %block_b807
  %tmp144 = icmp ult i32 %tmp142, 17
  br i1 %tmp144, label %block_b817.lr.ph, label %block_b84a

block_b817.lr.ph:                                 ; preds = %block_b815.thread, %block_b815
  %tmp145.pre-phi = phi i64 [ %tmp145.pre, %block_b815.thread ], [ %tmp120, %block_b815 ]
  %stack_var_-192.3.lcssa36 = phi i32 [ 1, %block_b815.thread ], [ %tmp142, %block_b815 ]
  %tmp146 = zext i32 %stack_var_-192.3.lcssa36 to i64
  br label %block_b817

block_b817:                                       ; preds = %block_b841, %block_b817.lr.ph
  %indvars.iv23 = phi i64 [ %tmp146, %block_b817.lr.ph ], [ %indvars.iv.next24, %block_b841 ]
  %tmp147 = trunc i64 %indvars.iv23 to i32
  %tmp148 = sub i32 16, %tmp147
  %tmp149 = and i32 %tmp148, 31
  %tmp150 = icmp eq i32 %tmp149, 0
  br i1 %tmp150, label %block_b841, label %bb151

bb151:                                            ; preds = %block_b817
  %tmp152 = shl i32 1, %tmp149
  %tmp153 = zext i32 %tmp152 to i64
  br label %block_b841

block_b841:                                       ; preds = %block_b817, %bb151
  %rdx.2 = phi i64 [ 1, %block_b817 ], [ %tmp153, %bb151 ]
  %tmp154 = trunc i64 %rdx.2 to i16
  %tmp155 = shl nuw nsw i64 %indvars.iv23, 1
  %tmp156 = add i64 %tmp145.pre-phi, %tmp155
  %tmp157 = inttoptr i64 %tmp156 to i16*
  store i16 %tmp154, i16* %tmp157
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond277 = icmp eq i32 %tmp147, 16
  br i1 %exitcond277, label %block_b84a.loopexit, label %block_b817

block_b84a.loopexit:                              ; preds = %block_b841
  %tmp165.pre = and i32 %tmp116, 31
  br label %block_b84a

block_b84a:                                       ; preds = %block_b84a.loopexit, %block_b815
  %tmp165.pre-phi = phi i32 [ %tmp165.pre, %block_b84a.loopexit ], [ %tmp118, %block_b815 ]
  %tmp158 = add i32 %tmp77, 1
  %tmp159 = sext i32 %tmp158 to i64
  %tmp160 = shl nsw i64 %tmp159, 1
  %tmp161 = add i64 %tmp93, %tmp160
  %tmp162 = inttoptr i64 %tmp161 to i16*
  %tmp163 = load i16* %tmp162
  %tmp164 = zext i16 %tmp163 to i64
  %tmp166 = icmp eq i32 %tmp165.pre-phi, 0
  br i1 %tmp166, label %bb171, label %bb167

bb167:                                            ; preds = %block_b84a
  %tmp168 = zext i16 %tmp163 to i32
  %tmp169 = lshr i32 %tmp168, %tmp165.pre-phi
  %tmp170 = zext i32 %tmp169 to i64
  br label %bb171

bb171:                                            ; preds = %block_b84a, %bb167
  %rdx.3 = phi i64 [ %tmp164, %block_b84a ], [ %tmp170, %bb167 ]
  %tmp172 = trunc i64 %rdx.3 to i32
  %tmp173 = icmp eq i32 %tmp172, 0
  br i1 %tmp173, label %block_b8c3, label %block_b878

block_b878:                                       ; preds = %bb171
  %tmp174 = and i32 %tmp77, 31
  %tmp175 = icmp eq i32 %tmp174, 0
  br i1 %tmp175, label %bb179, label %bb176

bb176:                                            ; preds = %block_b878
  %tmp177 = shl i32 1, %tmp174
  %tmp178 = zext i32 %tmp177 to i64
  br label %bb179

bb179:                                            ; preds = %block_b878, %bb176
  %rdx.4 = phi i64 [ 1, %block_b878 ], [ %tmp178, %bb176 ]
  %tmp180 = trunc i64 %rdx.4 to i32
  %tmp181 = icmp eq i32 %tmp172, %tmp180
  br i1 %tmp181, label %block_b8c3, label %block_b891.lr.ph

block_b891.lr.ph:                                 ; preds = %bb179
  %tmp182 = ptrtoint i16* %tmp78 to i64
  br label %block_b891

block_b891:                                       ; preds = %block_b891.lr.ph, %block_b891
  %stack_var_-192.514 = phi i32 [ %tmp172, %block_b891.lr.ph ], [ %tmp185, %block_b891 ]
  %tmp183 = zext i32 %stack_var_-192.514 to i64
  %tmp184 = add nuw nsw i64 %tmp183, 1
  %tmp185 = trunc i64 %tmp184 to i32
  %tmp186 = shl nuw nsw i64 %tmp183, 1
  %tmp187 = add i64 %tmp186, %tmp182
  %tmp188 = inttoptr i64 %tmp187 to i16*
  store i16 0, i16* %tmp188
  %tmp189 = icmp eq i32 %tmp185, %tmp180
  br i1 %tmp189, label %block_b8c3, label %block_b891

block_b8c3:                                       ; preds = %block_b891, %bb179, %bb171
  %tmp190 = sub i32 15, %tmp77
  %tmp191 = and i32 %tmp190, 31
  %tmp192 = icmp eq i32 %tmp191, 0
  br i1 %tmp192, label %bb196, label %bb193

bb193:                                            ; preds = %block_b8c3
  %tmp194 = shl i32 1, %tmp191
  %tmp195 = zext i32 %tmp194 to i64
  br label %bb196

bb196:                                            ; preds = %block_b8c3, %bb193
  %rdx.5 = phi i64 [ 1, %block_b8c3 ], [ %tmp195, %bb193 ]
  %tmp197 = trunc i64 %rdx.5 to i32
  br i1 %tmp79, label %block_bb4b, label %block_b8fa.lr.ph

block_b8fa.lr.ph:                                 ; preds = %bb196
  %tmp198 = ptrtoint i8* %tmp76 to i64
  %tmp199 = add i64 %tmp70, -96
  %tmp200 = ptrtoint i16* %tmp78 to i64
  %tmp201 = and i32 %tmp77, 31
  %tmp202 = shl i32 1, %tmp201
  %tmp203 = zext i32 %arg1 to i64
  br label %block_b8fa

block_b8fa:                                       ; preds = %block_b8fa.lr.ph, %block_bb32
  %indvars.iv21 = phi i64 [ 0, %block_b8fa.lr.ph ], [ %indvars.iv.next22, %block_bb32 ]
  %stack_var_-180.49 = phi i32 [ %arg1, %block_b8fa.lr.ph ], [ %stack_var_-180.3, %block_bb32 ]
  %tmp204 = add i64 %indvars.iv21, %tmp198
  %tmp205 = inttoptr i64 %tmp204 to i8*
  %tmp206 = load i8* %tmp205
  %tmp207 = zext i8 %tmp206 to i32
  %tmp208 = icmp eq i8 %tmp206, 0
  br i1 %tmp208, label %block_bb31, label %block_b923

block_b923:                                       ; preds = %block_b8fa
  %tmp209 = zext i8 %tmp206 to i64
  %tmp210 = shl nuw nsw i64 %tmp209, 1
  %tmp211 = add i64 %tmp210, %tmp93
  %tmp212 = inttoptr i64 %tmp211 to i16*
  %tmp213 = load i16* %tmp212
  %tmp214 = add i64 %tmp199, %tmp210
  %tmp215 = inttoptr i64 %tmp214 to i16*
  %tmp216 = load i16* %tmp215
  %tmp217 = zext i16 %tmp216 to i32
  %tmp218 = zext i16 %tmp213 to i32
  %tmp219 = add nuw nsw i32 %tmp217, %tmp218
  %tmp220 = icmp ugt i32 %tmp207, %tmp77
  br i1 %tmp220, label %block_b9c7, label %block_b955

block_b955:                                       ; preds = %block_b923
  %tmp221 = icmp ugt i32 %tmp219, %tmp202
  br i1 %tmp221, label %block_b96e, label %block_b97a

block_b96e:                                       ; preds = %block_b955
  %tmp222 = call i64 @gzip_error(i8* getelementptr inbounds ([11 x i8]* @global_var_120bc, i32 0, i32 0))
  unreachable

block_b97a:                                       ; preds = %block_b955
  %tmp223 = load i16* %tmp212
  %tmp224 = zext i16 %tmp223 to i32
  %tmp225 = icmp ult i32 %tmp224, %tmp219
  br i1 %tmp225, label %block_b990.lr.ph, label %block_b9c2

block_b990.lr.ph:                                 ; preds = %block_b97a
  %tmp226 = trunc i64 %indvars.iv21 to i16
  %tmp227 = zext i16 %tmp223 to i64
  %tmp228 = add nsw i32 %tmp218, -1
  %tmp229 = add nsw i32 %tmp228, %tmp217
  br label %block_b990

block_b990:                                       ; preds = %block_b990, %block_b990.lr.ph
  %indvars.iv = phi i64 [ %tmp227, %block_b990.lr.ph ], [ %indvars.iv.next, %block_b990 ]
  %stack_var_-192.63 = phi i32 [ %tmp224, %block_b990.lr.ph ], [ %tmp233, %block_b990 ]
  %tmp230 = shl nuw nsw i64 %indvars.iv, 1
  %tmp231 = add i64 %tmp230, %tmp200
  %tmp232 = inttoptr i64 %tmp231 to i16*
  store i16 %tmp226, i16* %tmp232
  %tmp233 = add nuw nsw i32 %stack_var_-192.63, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %stack_var_-192.63, %tmp229
  br i1 %exitcond, label %block_b9c2, label %block_b990

block_b9c2:                                       ; preds = %block_b990, %block_b97a
  br label %block_bb1c

block_b9c7:                                       ; preds = %block_b923
  %tmp234 = load i16* %tmp212
  %tmp235 = zext i16 %tmp234 to i32
  %tmp236 = zext i16 %tmp234 to i64
  br i1 %tmp166, label %bb240, label %bb237

bb237:                                            ; preds = %block_b9c7
  %tmp238 = lshr i32 %tmp235, %tmp165.pre-phi
  %tmp239 = zext i32 %tmp238 to i64
  br label %bb240

bb240:                                            ; preds = %block_b9c7, %bb237
  %rdx.7 = phi i64 [ %tmp236, %block_b9c7 ], [ %tmp239, %bb237 ]
  %tmp241 = shl nuw nsw i64 %rdx.7, 1
  %tmp242 = add i64 %tmp241, %tmp200
  %tmp243 = icmp eq i32 %tmp207, %tmp77
  br i1 %tmp243, label %block_bb0a, label %block_ba1f.lr.ph

block_ba1f.lr.ph:                                 ; preds = %bb240
  %tmp244 = sub i32 %tmp207, %tmp77
  br label %block_ba1f

block_ba1f:                                       ; preds = %block_ba1f.lr.ph, %block_baf0
  %stack_var_-160.17 = phi i64 [ %tmp242, %block_ba1f.lr.ph ], [ %stack_var_-160.0, %block_baf0 ]
  %stack_var_-180.16 = phi i32 [ %stack_var_-180.49, %block_ba1f.lr.ph ], [ %stack_var_-180.0, %block_baf0 ]
  %stack_var_-188.05 = phi i32 [ %tmp235, %block_ba1f.lr.ph ], [ %tmp268, %block_baf0 ]
  %stack_var_-192.74 = phi i32 [ %tmp244, %block_ba1f.lr.ph ], [ %tmp269, %block_baf0 ]
  %tmp245 = inttoptr i64 %stack_var_-160.17 to i16*
  %tmp246 = load i16* %tmp245
  %tmp247 = icmp eq i16 %tmp246, 0
  br i1 %tmp247, label %block_ba2e, label %block_ba92

block_ba2e:                                       ; preds = %block_ba1f
  %tmp248 = zext i32 %stack_var_-180.16 to i64
  %tmp249 = shl nuw nsw i64 %tmp248, 1
  %tmp250 = add i64 %tmp249, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp251 = inttoptr i64 %tmp250 to i16*
  store i16 0, i16* %tmp251
  %tmp252 = add i64 %tmp249, add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 65536)
  %tmp253 = load i16* %tmp251
  %tmp254 = inttoptr i64 %tmp252 to i16*
  store i16 %tmp253, i16* %tmp254
  %tmp255 = add nuw nsw i64 %tmp248, 1
  %tmp256 = trunc i64 %tmp255 to i32
  %tmp257 = trunc i32 %stack_var_-180.16 to i16
  store i16 %tmp257, i16* %tmp245
  br label %block_ba92

block_ba92:                                       ; preds = %block_ba1f, %block_ba2e
  %stack_var_-180.0 = phi i32 [ %stack_var_-180.16, %block_ba1f ], [ %tmp256, %block_ba2e ]
  %tmp258 = and i32 %stack_var_-188.05, %tmp197
  %tmp259 = icmp eq i32 %tmp258, 0
  br i1 %tmp259, label %block_bacc, label %block_baa2

block_baa2:                                       ; preds = %block_ba92
  %tmp260 = load i16* %tmp245
  %tmp261 = zext i16 %tmp260 to i64
  %tmp262 = shl nuw nsw i64 %tmp261, 1
  %tmp263 = add i64 %tmp262, add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 65536)
  br label %block_baf0

block_bacc:                                       ; preds = %block_ba92
  %tmp264 = load i16* %tmp245
  %tmp265 = zext i16 %tmp264 to i64
  %tmp266 = shl nuw nsw i64 %tmp265, 1
  %tmp267 = add i64 %tmp266, ptrtoint (i64* @global_var_21a880 to i64)
  br label %block_baf0

block_baf0:                                       ; preds = %block_bacc, %block_baa2
  %stack_var_-160.0 = phi i64 [ %tmp267, %block_bacc ], [ %tmp263, %block_baa2 ]
  %tmp268 = shl i32 %stack_var_-188.05, 1
  %tmp269 = add i32 %stack_var_-192.74, -1
  %tmp270 = icmp eq i32 %tmp269, 0
  br i1 %tmp270, label %block_bb0a, label %block_ba1f

block_bb0a:                                       ; preds = %block_baf0, %bb240
  %stack_var_-160.1.lcssa = phi i64 [ %tmp242, %bb240 ], [ %stack_var_-160.0, %block_baf0 ]
  %stack_var_-180.1.lcssa = phi i32 [ %stack_var_-180.49, %bb240 ], [ %stack_var_-180.0, %block_baf0 ]
  %tmp271 = trunc i64 %indvars.iv21 to i16
  %tmp272 = inttoptr i64 %stack_var_-160.1.lcssa to i16*
  store i16 %tmp271, i16* %tmp272
  br label %block_bb1c

block_bb1c:                                       ; preds = %block_bb0a, %block_b9c2
  %stack_var_-180.2 = phi i32 [ %stack_var_-180.1.lcssa, %block_bb0a ], [ %stack_var_-180.49, %block_b9c2 ]
  %tmp273 = trunc i32 %tmp219 to i16
  store i16 %tmp273, i16* %tmp212
  br label %block_bb32

block_bb31:                                       ; preds = %block_b8fa
  br label %block_bb32

block_bb32:                                       ; preds = %block_bb31, %block_bb1c
  %stack_var_-180.3 = phi i32 [ %stack_var_-180.49, %block_bb31 ], [ %stack_var_-180.2, %block_bb1c ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %tmp274 = icmp ult i64 %indvars.iv.next22, %tmp203
  br i1 %tmp274, label %block_b8fa, label %block_bb4b

block_bb4b:                                       ; preds = %block_bb32, %bb196
  %tmp275 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp276 = icmp eq i64 %tmp71, %tmp275
  br i1 %tmp276, label %block_bb60, label %block_bb5b

block_bb5b:                                       ; preds = %block_bb4b
  call void @__stack_chk_fail()
  unreachable

block_bb60:                                       ; preds = %block_bb4b
  ret i64 0
}

define i64 @read_pt_len(i32 %arg1, i64 %arg2, i64 %arg3) {
block_bb62:
  %tmp56 = trunc i64 %arg2 to i32
  %tmp57 = trunc i64 %arg3 to i32
  %tmp58 = call i64 @getbits(i32 %tmp56)
  %tmp59 = trunc i64 %tmp58 to i32
  %tmp60 = icmp eq i32 %tmp59, 0
  br i1 %tmp60, label %block_bb86, label %block_bbed

block_bb86:                                       ; preds = %block_bb62
  %tmp61 = call i64 @getbits(i32 %tmp56)
  %tmp62 = icmp sgt i32 %arg1, 0
  br i1 %tmp62, label %block_bb9c.preheader, label %block_bbb9

block_bb9c.preheader:                             ; preds = %block_bb86
  %tmp63 = add i32 %arg1, -1
  br label %block_bb9c

block_bb9c:                                       ; preds = %block_bb9c, %block_bb9c.preheader
  %indvars.iv14 = phi i64 [ 0, %block_bb9c.preheader ], [ %indvars.iv.next15, %block_bb9c ]
  %tmp64 = add i64 %indvars.iv14, ptrtoint (i64* @global_var_219f00 to i64)
  %tmp65 = inttoptr i64 %tmp64 to i8*
  store i8 0, i8* %tmp65
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %lftr.wideiv129 = trunc i64 %indvars.iv14 to i32
  %exitcond130 = icmp eq i32 %lftr.wideiv129, %tmp63
  br i1 %exitcond130, label %block_bbb9, label %block_bb9c

block_bbb9:                                       ; preds = %block_bb9c, %block_bb86
  %tmp66 = trunc i64 %tmp61 to i16
  br label %block_bbc2

block_bbc2:                                       ; preds = %block_bbc2, %block_bbb9
  %indvars.iv = phi i64 [ 0, %block_bbb9 ], [ %indvars.iv.next, %block_bbc2 ]
  %tmp67 = shl i64 %indvars.iv, 1
  %tmp68 = add i64 %tmp67, ptrtoint (i64* @global_var_219f40 to i64)
  %tmp69 = inttoptr i64 %tmp68 to i16*
  store i16 %tmp66, i16* %tmp69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %block_bbe8, label %block_bbc2

block_bbe8:                                       ; preds = %block_bbc2
  br label %block_bcf7

block_bbed:                                       ; preds = %block_bb62
  %tmp70 = icmp sgt i32 %tmp59, 0
  br i1 %tmp70, label %block_bbf9, label %block_bcb9

block_bbf9:                                       ; preds = %block_bbed, %block_bcad.backedge
  %stack_var_-24.311 = phi i32 [ %stack_var_-24.3.be, %block_bcad.backedge ], [ 0, %block_bbed ]
  %tmp71 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp72 = lshr i16 %tmp71, 13
  %tmp73 = zext i16 %tmp72 to i32
  %tmp74 = icmp eq i16 %tmp72, 7
  br i1 %tmp74, label %block_bc10, label %block_bc43

block_bc10:                                       ; preds = %block_bbf9
  %tmp75 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp76 = zext i16 %tmp75 to i32
  %tmp77 = and i32 %tmp76, ptrtoint ([2 x i8]* @global_var_1000 to i32)
  %tmp78 = icmp eq i32 %tmp77, 0
  br i1 %tmp78, label %block_bc31.thread, label %block_bc19.lr.ph

block_bc31.thread:                                ; preds = %block_bc10
  br label %block_bc43

block_bc19.lr.ph:                                 ; preds = %block_bc10
  %tmp79 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp80 = zext i16 %tmp79 to i32
  br label %block_bc19

block_bc19:                                       ; preds = %block_bc19.lr.ph, %block_bc19
  %tmp81 = phi i32 [ ptrtoint ([2 x i8]* @global_var_1000 to i32), %block_bc19.lr.ph ], [ %tmp85, %block_bc19 ]
  %stack_var_-20.07 = phi i32 [ %tmp73, %block_bc19.lr.ph ], [ %tmp84, %block_bc19 ]
  %tmp82 = lshr i32 %tmp81, 1
  %tmp83 = inttoptr i32 %tmp82 to i8*
  %tmp84 = add i32 %stack_var_-20.07, 1
  %tmp85 = ptrtoint i8* %tmp83 to i32
  %tmp86 = and i32 %tmp85, %tmp80
  %tmp87 = icmp eq i32 %tmp86, 0
  br i1 %tmp87, label %block_bc31, label %block_bc19

block_bc31:                                       ; preds = %block_bc19
  %tmp88 = icmp slt i32 %tmp84, 17
  br i1 %tmp88, label %block_bc43, label %block_bc37

block_bc37:                                       ; preds = %block_bc31
  %tmp89 = call i64 @gzip_error(i8* getelementptr inbounds ([11 x i8]* @global_var_120bc, i32 0, i32 0))
  unreachable

block_bc43:                                       ; preds = %block_bc31.thread, %block_bbf9, %block_bc31
  %stack_var_-20.1 = phi i32 [ %tmp73, %block_bbf9 ], [ %tmp84, %block_bc31 ], [ %tmp73, %block_bc31.thread ]
  %tmp90 = add i32 %stack_var_-20.1, -6
  %tmp91 = sub i32 5, %stack_var_-20.1
  %tmp92 = and i32 %tmp91, %stack_var_-20.1
  %tmp93 = icmp slt i32 %tmp92, 0
  %tmp94 = icmp slt i32 %tmp90, 0
  %tmp = icmp ne i1 %tmp94, %tmp93
  %stack_var_-20.1.op = add i32 %stack_var_-20.1, -3
  %tmp95 = select i1 %tmp, i32 3, i32 %stack_var_-20.1.op
  %tmp96 = call i64 @fillbuf(i32 %tmp95)
  %tmp97 = zext i32 %stack_var_-24.311 to i64
  %tmp98 = add nuw nsw i64 %tmp97, 1
  %tmp99 = trunc i64 %tmp98 to i32
  %tmp100 = sext i32 %stack_var_-24.311 to i64
  %tmp101 = trunc i32 %stack_var_-20.1 to i8
  %tmp102 = add i64 %tmp100, ptrtoint (i64* @global_var_219f00 to i64)
  %tmp103 = inttoptr i64 %tmp102 to i8*
  store i8 %tmp101, i8* %tmp103
  %tmp104 = icmp eq i32 %tmp99, %tmp57
  br i1 %tmp104, label %block_bc7d, label %block_bcad.backedge

block_bcad.backedge.loopexit:                     ; preds = %block_bc8c
  %tmp105 = add i32 %stack_var_-24.311, 1
  %tmp106 = add i32 %tmp105, %tmp109
  br label %block_bcad.backedge

block_bcad.backedge:                              ; preds = %block_bcad.backedge.loopexit, %block_bc7d, %block_bc43
  %stack_var_-24.3.be = phi i32 [ %tmp99, %block_bc43 ], [ %tmp57, %block_bc7d ], [ %tmp106, %block_bcad.backedge.loopexit ]
  %tmp107 = icmp slt i32 %stack_var_-24.3.be, %tmp59
  br i1 %tmp107, label %block_bbf9, label %block_bcb9

block_bc7d:                                       ; preds = %block_bc43
  %tmp108 = call i64 @getbits(i32 2)
  %tmp109 = trunc i64 %tmp108 to i32
  %tmp110 = add i32 %tmp109, -1
  %tmp111 = icmp slt i32 %tmp110, 0
  br i1 %tmp111, label %block_bcad.backedge, label %block_bc8c

block_bc8c:                                       ; preds = %block_bc7d, %block_bc8c
  %tmp112 = phi i32 [ %tmp119, %block_bc8c ], [ %tmp110, %block_bc7d ]
  %stack_var_-24.29 = phi i32 [ %tmp115, %block_bc8c ], [ %tmp57, %block_bc7d ]
  %tmp113 = zext i32 %stack_var_-24.29 to i64
  %tmp114 = add nuw nsw i64 %tmp113, 1
  %tmp115 = trunc i64 %tmp114 to i32
  %tmp116 = sext i32 %stack_var_-24.29 to i64
  %tmp117 = add i64 %tmp116, ptrtoint (i64* @global_var_219f00 to i64)
  %tmp118 = inttoptr i64 %tmp117 to i8*
  store i8 0, i8* %tmp118
  %tmp119 = add nsw i32 %tmp112, -1
  %tmp120 = icmp slt i32 %tmp112, 1
  br i1 %tmp120, label %block_bcad.backedge.loopexit, label %block_bc8c

block_bcb9:                                       ; preds = %block_bcad.backedge, %block_bbed
  %stack_var_-24.3.lcssa = phi i32 [ 0, %block_bbed ], [ %stack_var_-24.3.be, %block_bcad.backedge ]
  %tmp121 = icmp slt i32 %stack_var_-24.3.lcssa, %arg1
  br i1 %tmp121, label %block_bcbb.preheader, label %block_bcda

block_bcbb.preheader:                             ; preds = %block_bcb9
  %tmp122 = sext i32 %stack_var_-24.3.lcssa to i64
  br label %block_bcbb

block_bcbb:                                       ; preds = %block_bcbb.preheader, %block_bcbb
  %indvars.iv17 = phi i64 [ %tmp122, %block_bcbb.preheader ], [ %tmp123, %block_bcbb ]
  %tmp123 = add nsw i64 %indvars.iv17, 1
  %tmp124 = trunc i64 %tmp123 to i32
  %tmp125 = add i64 %indvars.iv17, ptrtoint (i64* @global_var_219f00 to i64)
  %tmp126 = inttoptr i64 %tmp125 to i8*
  store i8 0, i8* %tmp126
  %tmp127 = icmp slt i32 %tmp124, %arg1
  br i1 %tmp127, label %block_bcbb, label %block_bcda

block_bcda:                                       ; preds = %block_bcbb, %block_bcb9
  %tmp128 = call i64 @make_table(i32 %arg1, i64* @global_var_219f00, i64 8, i64* @global_var_219f40)
  br label %block_bcf7

block_bcf7:                                       ; preds = %block_bcda, %block_bbe8
  %rax.1 = phi i64 [ %tmp128, %block_bcda ], [ ptrtoint (i64* @global_var_219f40 to i64), %block_bbe8 ]
  ret i64 %rax.1
}

define i64 @read_c_len() {
block_bcfa:
  %tmp37 = call i64 @getbits(i32 9)
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = icmp eq i32 %tmp38, 0
  br i1 %tmp39, label %block_bd15, label %block_bd7d

block_bd15:                                       ; preds = %block_bcfa
  %tmp40 = call i64 @getbits(i32 9)
  br label %block_bd2b

block_bd2b:                                       ; preds = %block_bd2b, %block_bd15
  %indvars.iv = phi i64 [ 0, %block_bd15 ], [ %indvars.iv.next, %block_bd2b ]
  %tmp43 = add i64 %indvars.iv, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp44 = inttoptr i64 %tmp43 to i8*
  store i8 0, i8* %tmp44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 510
  br i1 %exitcond, label %block_bd49, label %block_bd2b

block_bd49:                                       ; preds = %block_bd2b
  br i1 icmp slt (i32 ptrtoint (i64** @global_var_fff to i32), i32 0), label %block_bd78, label %block_bd52.lr.ph

block_bd52.lr.ph:                                 ; preds = %block_bd49
  %tmp48 = trunc i64 %tmp40 to i16
  br label %block_bd52

block_bd52:                                       ; preds = %block_bd52.lr.ph, %block_bd52
  %stack_var_-24.1 = phi i32 [ 0, %block_bd52.lr.ph ], [ %tmp55, %block_bd52 ]
  %tmp50 = sext i32 %stack_var_-24.1 to i64
  %tmp51 = shl nsw i64 %tmp50, 1
  %tmp52 = add i64 %tmp51, ptrtoint (i64* @global_var_23a880 to i64)
  %tmp53 = inttoptr i64 %tmp52 to i16*
  store i16 %tmp48, i16* %tmp53
  %tmp55 = add i32 %stack_var_-24.1, 1
  %tmp56 = icmp sgt i32 %tmp55, ptrtoint (i64** @global_var_fff to i32)
  br i1 %tmp56, label %block_bd78, label %block_bd52

block_bd78:                                       ; preds = %block_bd52, %block_bd49
  %rax.1.lcssa = phi i64 [ ptrtoint (i64* @global_var_24a8a0 to i64), %block_bd49 ], [ ptrtoint (i64* @global_var_23a880 to i64), %block_bd52 ]
  br label %block_bef9

block_bd7d:                                       ; preds = %block_bcfa
  %tmp57 = icmp sgt i32 %tmp38, 0
  br i1 %tmp57, label %block_bd89, label %block_beba.thread

block_beba.thread:                                ; preds = %block_bd7d
  br label %block_bebc

block_bd89:                                       ; preds = %block_bd7d, %block_beae.backedge
  %stack_var_-24.2 = phi i32 [ %stack_var_-24.5, %block_beae.backedge ], [ 0, %block_bd7d ]
  %tmp58 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp59 = lshr i16 %tmp58, 8
  %tmp60 = zext i16 %tmp59 to i64
  %tmp61 = shl nuw nsw i64 %tmp60, 1
  %tmp62 = add i64 %tmp61, ptrtoint (i64* @global_var_219f40 to i64)
  %tmp63 = inttoptr i64 %tmp62 to i16*
  %tmp64 = load i16* %tmp63
  %tmp65 = zext i16 %tmp64 to i32
  %tmp66 = icmp ult i16 %tmp64, 19
  br i1 %tmp66, label %block_be13, label %block_bdb4

block_bdb4:                                       ; preds = %block_bd89
  br label %block_bdbb

block_bdbb:                                       ; preds = %block_be0a, %block_bdb4
  %stack_var_-20.0 = phi i32 [ %tmp65, %block_bdb4 ], [ %stack_var_-20.1, %block_be0a ]
  %stack_var_-16.0 = phi i32 [ 128, %block_bdb4 ], [ %tmp83, %block_be0a ]
  %tmp67 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp68 = zext i16 %tmp67 to i32
  %tmp69 = and i32 %tmp68, %stack_var_-16.0
  %tmp70 = icmp eq i32 %tmp69, 0
  br i1 %tmp70, label %block_bdf0, label %block_bdcc

block_bdcc:                                       ; preds = %block_bdbb
  %addconv = add nsw i32 %stack_var_-20.0, 32768
  %tmp71 = sext i32 %addconv to i64
  %tmp72 = shl nsw i64 %tmp71, 1
  %tmp73 = add i64 %tmp72, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp74 = inttoptr i64 %tmp73 to i16*
  %tmp75 = load i16* %tmp74
  %tmp76 = zext i16 %tmp75 to i32
  br label %block_be0a

block_bdf0:                                       ; preds = %block_bdbb
  %tmp77 = sext i32 %stack_var_-20.0 to i64
  %tmp78 = shl nsw i64 %tmp77, 1
  %tmp79 = add i64 %tmp78, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp80 = inttoptr i64 %tmp79 to i16*
  %tmp81 = load i16* %tmp80
  %tmp82 = zext i16 %tmp81 to i32
  br label %block_be0a

block_be0a:                                       ; preds = %block_bdf0, %block_bdcc
  %stack_var_-20.1 = phi i32 [ %tmp82, %block_bdf0 ], [ %tmp76, %block_bdcc ]
  %tmp83 = lshr i32 %stack_var_-16.0, 1
  %tmp84 = icmp ugt i32 %stack_var_-20.1, 18
  br i1 %tmp84, label %block_bdbb, label %block_be13

block_be13:                                       ; preds = %block_be0a, %block_bd89
  %stack_var_-20.2 = phi i32 [ %tmp65, %block_bd89 ], [ %stack_var_-20.1, %block_be0a ]
  %tmp85 = sext i32 %stack_var_-20.2 to i64
  %tmp86 = add i64 %tmp85, ptrtoint (i64* @global_var_219f00 to i64)
  %tmp87 = inttoptr i64 %tmp86 to i8*
  %tmp88 = load i8* %tmp87
  %tmp89 = zext i8 %tmp88 to i32
  %tmp90 = call i64 @fillbuf(i32 %tmp89)
  %tmp91 = icmp sgt i32 %stack_var_-20.2, 2
  br i1 %tmp91, label %block_be90, label %block_be34

block_be34:                                       ; preds = %block_be13
  %tmp92 = icmp eq i32 %stack_var_-20.2, 0
  br i1 %tmp92, label %block_be84.preheader.thread, label %block_be43

block_be84.preheader.thread:                      ; preds = %block_be34
  br label %block_be6d.preheader

block_be43:                                       ; preds = %block_be34
  %tmp93 = icmp eq i32 %stack_var_-20.2, 1
  br i1 %tmp93, label %block_be49, label %block_be5b

block_be49:                                       ; preds = %block_be43
  %tmp94 = call i64 @getbits(i32 4)
  %tmp95 = trunc i64 %tmp94 to i32
  %tmp96 = add i32 %tmp95, 3
  br label %block_be84.preheader

block_be5b:                                       ; preds = %block_be43
  %tmp97 = call i64 @getbits(i32 9)
  %tmp98 = trunc i64 %tmp97 to i32
  %tmp99 = add i32 %tmp98, 20
  br label %block_be84.preheader

block_be84.preheader:                             ; preds = %block_be49, %block_be5b
  %stack_var_-20.3.ph = phi i32 [ %tmp96, %block_be49 ], [ %tmp99, %block_be5b ]
  %tmp100 = add i32 %stack_var_-20.3.ph, -1
  %tmp101 = icmp slt i32 %tmp100, 0
  br i1 %tmp101, label %block_be8e, label %block_be6d.preheader

block_be6d.preheader:                             ; preds = %block_be84.preheader.thread, %block_be84.preheader
  %tmp102.ph = phi i32 [ 0, %block_be84.preheader.thread ], [ %tmp100, %block_be84.preheader ]
  %tmp136 = add i32 %tmp102.ph, 2
  %tmp137 = xor i32 %tmp102.ph, -1
  %tmp138 = icmp sgt i32 %tmp137, -1
  %smax = select i1 %tmp138, i32 %tmp137, i32 -1
  br label %block_be6d

block_be6d:                                       ; preds = %block_be6d.preheader, %block_be6d
  %stack_var_-24.3 = phi i32 [ %tmp106, %block_be6d ], [ %stack_var_-24.2, %block_be6d.preheader ]
  %tmp102 = phi i32 [ %tmp110, %block_be6d ], [ %tmp102.ph, %block_be6d.preheader ]
  %tmp104 = zext i32 %stack_var_-24.3 to i64
  %tmp105 = add nuw nsw i64 %tmp104, 1
  %tmp106 = trunc i64 %tmp105 to i32
  %tmp107 = sext i32 %stack_var_-24.3 to i64
  %tmp108 = add i64 %tmp107, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp109 = inttoptr i64 %tmp108 to i8*
  store i8 0, i8* %tmp109
  %tmp110 = add nsw i32 %tmp102, -1
  %tmp111 = icmp slt i32 %tmp102, 1
  br i1 %tmp111, label %block_be8e.loopexit, label %block_be6d

block_be8e.loopexit:                              ; preds = %block_be6d
  %tmp139 = add i32 %tmp136, %stack_var_-24.2
  %tmp140 = add i32 %tmp139, %smax
  br label %block_be8e

block_be8e:                                       ; preds = %block_be8e.loopexit, %block_be84.preheader
  %stack_var_-24.4 = phi i32 [ %stack_var_-24.2, %block_be84.preheader ], [ %tmp140, %block_be8e.loopexit ]
  br label %block_beae.backedge

block_beae.backedge:                              ; preds = %block_be8e, %block_be90
  %stack_var_-24.5 = phi i32 [ %tmp117, %block_be90 ], [ %stack_var_-24.4, %block_be8e ]
  %tmp113 = icmp slt i32 %stack_var_-24.5, %tmp38
  br i1 %tmp113, label %block_bd89, label %block_beba

block_be90:                                       ; preds = %block_be13
  %tmp115 = zext i32 %stack_var_-24.2 to i64
  %tmp116 = add nuw nsw i64 %tmp115, 1
  %tmp117 = trunc i64 %tmp116 to i32
  %tmp118 = add nsw i32 %stack_var_-20.2, 254
  %tmp119 = sext i32 %stack_var_-24.2 to i64
  %tmp120 = trunc i32 %tmp118 to i8
  %tmp121 = add i64 %tmp119, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp122 = inttoptr i64 %tmp121 to i8*
  store i8 %tmp120, i8* %tmp122
  br label %block_beae.backedge

block_beba:                                       ; preds = %block_beae.backedge
  %tmp124 = icmp slt i32 %stack_var_-24.5, 510
  br i1 %tmp124, label %block_bebc, label %block_bedc

block_bebc:                                       ; preds = %block_beba.thread, %block_beba, %block_bebc
  %stack_var_-24.7 = phi i32 [ %tmp128, %block_bebc ], [ %stack_var_-24.5, %block_beba ], [ 0, %block_beba.thread ]
  %tmp126 = zext i32 %stack_var_-24.7 to i64
  %tmp127 = add nuw nsw i64 %tmp126, 1
  %tmp128 = trunc i64 %tmp127 to i32
  %tmp129 = sext i32 %stack_var_-24.7 to i64
  %tmp130 = add i64 %tmp129, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp131 = inttoptr i64 %tmp130 to i8*
  store i8 0, i8* %tmp131
  %tmp133 = icmp slt i32 %tmp128, 510
  br i1 %tmp133, label %block_bebc, label %block_bedc

block_bedc:                                       ; preds = %block_bebc, %block_beba
  %tmp134 = call i64 @make_table(i32 510, i64* @global_var_24a8a0, i64 12, i64* @global_var_23a880)
  br label %block_bef9

block_bef9:                                       ; preds = %block_bedc, %block_bd78
  %rax.2 = phi i64 [ %tmp134, %block_bedc ], [ %rax.1.lcssa, %block_bd78 ]
  ret i64 %rax.2
}

define i64 @decode_c() {
block_befc:
  %tmp17 = load i32* bitcast (i64* @global_var_219f20 to i32*)
  %tmp18 = icmp eq i32 %tmp17, 0
  br i1 %tmp18, label %block_bf0e, label %block_bf5f

block_bf0e:                                       ; preds = %block_befc
  %tmp19 = call i64 @getbits(i32 16)
  %tmp20 = trunc i64 %tmp19 to i32
  store i32 %tmp20, i32* bitcast (i64* @global_var_219f20 to i32*)
  %tmp21 = icmp eq i32 %tmp20, 0
  br i1 %tmp21, label %block_bf28, label %block_bf32

block_bf28:                                       ; preds = %block_bf0e
  br label %block_c015

block_bf32:                                       ; preds = %block_bf0e
  %tmp22 = call i64 @read_pt_len(i32 19, i64 5, i64 3)
  %tmp23 = call i64 @read_c_len()
  %tmp24 = call i64 @read_pt_len(i32 14, i64 4, i64 4294967295)
  br label %block_bf5f

block_bf5f:                                       ; preds = %block_befc, %block_bf32
  %tmp25 = load i32* bitcast (i64* @global_var_219f20 to i32*)
  %tmp26 = add i32 %tmp25, -1
  store i32 %tmp26, i32* bitcast (i64* @global_var_219f20 to i32*)
  %tmp27 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp28 = lshr i16 %tmp27, 4
  %tmp29 = zext i16 %tmp28 to i64
  %tmp30 = shl nuw nsw i64 %tmp29, 1
  %tmp31 = add i64 %tmp30, ptrtoint (i64* @global_var_23a880 to i64)
  %tmp32 = inttoptr i64 %tmp31 to i16*
  %tmp33 = load i16* %tmp32
  %tmp34 = zext i16 %tmp33 to i32
  %tmp35 = icmp ult i16 %tmp33, 510
  br i1 %tmp35, label %block_bffa, label %block_bf9c

block_bf9c:                                       ; preds = %block_bf5f
  br label %block_bfa3

block_bfa3:                                       ; preds = %block_bfee, %block_bf9c
  %stack_var_-16.0 = phi i32 [ %tmp34, %block_bf9c ], [ %stack_var_-16.1, %block_bfee ]
  %stack_var_-12.0 = phi i32 [ 8, %block_bf9c ], [ %tmp52, %block_bfee ]
  %tmp36 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp37 = zext i16 %tmp36 to i32
  %tmp38 = and i32 %tmp37, %stack_var_-12.0
  %tmp39 = icmp eq i32 %tmp38, 0
  br i1 %tmp39, label %block_bfd6, label %block_bfb4

block_bfb4:                                       ; preds = %block_bfa3
  %tmp40 = zext i32 %stack_var_-16.0 to i64
  %tmp41 = shl nuw nsw i64 %tmp40, 1
  %tmp42 = add i64 %tmp41, add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 65536)
  %tmp43 = inttoptr i64 %tmp42 to i16*
  %tmp44 = load i16* %tmp43
  %tmp45 = zext i16 %tmp44 to i32
  br label %block_bfee

block_bfd6:                                       ; preds = %block_bfa3
  %tmp46 = zext i32 %stack_var_-16.0 to i64
  %tmp47 = shl nuw nsw i64 %tmp46, 1
  %tmp48 = add i64 %tmp47, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp49 = inttoptr i64 %tmp48 to i16*
  %tmp50 = load i16* %tmp49
  %tmp51 = zext i16 %tmp50 to i32
  br label %block_bfee

block_bfee:                                       ; preds = %block_bfd6, %block_bfb4
  %stack_var_-16.1 = phi i32 [ %tmp51, %block_bfd6 ], [ %tmp45, %block_bfb4 ]
  %tmp52 = lshr i32 %stack_var_-12.0, 1
  %tmp53 = icmp ugt i32 %stack_var_-16.1, 509
  br i1 %tmp53, label %block_bfa3, label %block_bffa

block_bffa:                                       ; preds = %block_bfee, %block_bf5f
  %stack_var_-16.2 = phi i32 [ %tmp34, %block_bf5f ], [ %stack_var_-16.1, %block_bfee ]
  %tmp54 = zext i32 %stack_var_-16.2 to i64
  %tmp55 = add i64 %tmp54, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp56 = inttoptr i64 %tmp55 to i8*
  %tmp57 = load i8* %tmp56
  %tmp58 = zext i8 %tmp57 to i32
  %tmp59 = call i64 @fillbuf(i32 %tmp58)
  br label %block_c015

block_c015:                                       ; preds = %block_bffa, %block_bf28
  %rax.0 = phi i64 [ %tmp54, %block_bffa ], [ 510, %block_bf28 ]
  ret i64 %rax.0
}

define i64 @decode_p() {
block_c017:
  %tmp19 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp20 = lshr i16 %tmp19, 8
  %tmp21 = zext i16 %tmp20 to i64
  %tmp22 = shl nuw nsw i64 %tmp21, 1
  %tmp23 = add i64 %tmp22, ptrtoint (i64* @global_var_219f40 to i64)
  %tmp24 = inttoptr i64 %tmp23 to i16*
  %tmp25 = load i16* %tmp24
  %tmp26 = zext i16 %tmp25 to i32
  %tmp27 = icmp ult i16 %tmp25, 14
  br i1 %tmp27, label %block_c0a6, label %block_c04b

block_c04b:                                       ; preds = %block_c017
  br label %block_c052

block_c052:                                       ; preds = %block_c09d, %block_c04b
  %stack_var_-32.0 = phi i32 [ %tmp26, %block_c04b ], [ %stack_var_-32.1, %block_c09d ]
  %stack_var_-28.0 = phi i32 [ 128, %block_c04b ], [ %tmp44, %block_c09d ]
  %tmp28 = load i16* bitcast (i64* @global_var_21a140 to i16*)
  %tmp29 = zext i16 %tmp28 to i32
  %tmp30 = and i32 %tmp29, %stack_var_-28.0
  %tmp31 = icmp eq i32 %tmp30, 0
  br i1 %tmp31, label %block_c085, label %block_c063

block_c063:                                       ; preds = %block_c052
  %tmp32 = zext i32 %stack_var_-32.0 to i64
  %tmp33 = shl nuw nsw i64 %tmp32, 1
  %tmp34 = add i64 %tmp33, add (i64 ptrtoint (i64* @global_var_21a880 to i64), i64 65536)
  %tmp35 = inttoptr i64 %tmp34 to i16*
  %tmp36 = load i16* %tmp35
  %tmp37 = zext i16 %tmp36 to i32
  br label %block_c09d

block_c085:                                       ; preds = %block_c052
  %tmp38 = zext i32 %stack_var_-32.0 to i64
  %tmp39 = shl nuw nsw i64 %tmp38, 1
  %tmp40 = add i64 %tmp39, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp41 = inttoptr i64 %tmp40 to i16*
  %tmp42 = load i16* %tmp41
  %tmp43 = zext i16 %tmp42 to i32
  br label %block_c09d

block_c09d:                                       ; preds = %block_c085, %block_c063
  %stack_var_-32.1 = phi i32 [ %tmp43, %block_c085 ], [ %tmp37, %block_c063 ]
  %tmp44 = lshr i32 %stack_var_-28.0, 1
  %tmp45 = icmp ugt i32 %stack_var_-32.1, 13
  br i1 %tmp45, label %block_c052, label %block_c0a6

block_c0a6:                                       ; preds = %block_c09d, %block_c017
  %stack_var_-32.2 = phi i32 [ %tmp26, %block_c017 ], [ %stack_var_-32.1, %block_c09d ]
  %tmp46 = zext i32 %stack_var_-32.2 to i64
  %tmp47 = add i64 %tmp46, ptrtoint (i64* @global_var_219f00 to i64)
  %tmp48 = inttoptr i64 %tmp47 to i8*
  %tmp49 = load i8* %tmp48
  %tmp50 = zext i8 %tmp49 to i32
  %tmp51 = call i64 @fillbuf(i32 %tmp50)
  %tmp52 = icmp eq i32 %stack_var_-32.2, 0
  br i1 %tmp52, label %block_c0e7, label %block_c0c4

block_c0c4:                                       ; preds = %block_c0a6
  %tmp53 = add nsw i32 %stack_var_-32.2, 31
  %tmp54 = and i32 %tmp53, 31
  %tmp55 = icmp eq i32 %tmp54, 0
  br i1 %tmp55, label %bb58, label %bb

bb:                                               ; preds = %block_c0c4
  %tmp56 = shl i32 1, %tmp54
  %tmp57 = zext i32 %tmp56 to i64
  br label %bb58

bb58:                                             ; preds = %block_c0c4, %bb
  %rbx.0 = phi i64 [ 1, %block_c0c4 ], [ %tmp57, %bb ]
  %tmp59 = add nsw i32 %stack_var_-32.2, -1
  %tmp60 = call i64 @getbits(i32 %tmp59)
  %tmp61 = trunc i64 %tmp60 to i32
  %tmp62 = trunc i64 %rbx.0 to i32
  %tmp63 = add i32 %tmp61, %tmp62
  br label %block_c0e7

block_c0e7:                                       ; preds = %bb58, %block_c0a6
  %stack_var_-32.3 = phi i32 [ 0, %block_c0a6 ], [ %tmp63, %bb58 ]
  %tmp64 = zext i32 %stack_var_-32.3 to i64
  ret i64 %tmp64
}

define i64 @huf_decode_start() {
block_c0f1:
  %tmp5 = call i64 @init_getbits()
  store i32 0, i32* bitcast (i64* @global_var_219f20 to i32*)
  ret i64 %tmp5
}

define i64 @decode_start(i64 %arg1, i64 %arg2) {
block_c107:
  %tmp7 = call i64 @huf_decode_start()
  store i32 0, i32* bitcast (i64* @global_var_21a14c to i32*)
  store i32 0, i32* bitcast (i64* @global_var_21a150 to i32*)
  ret i64 %tmp7
}

define i64 @decode(i32 %arg1, i64* %arg2) {
block_c127:
  %stack_var_-40 = alloca i8*
  %tmp32 = bitcast i8** %stack_var_-40 to i64**
  store i64* %arg2, i64** %tmp32
  br label %block_c185

block_c13f:                                       ; preds = %block_c185
  %tmp33 = load i32* bitcast (i64* @global_var_21a154 to i32*)
  %tmp34 = zext i32 %tmp33 to i64
  %tmp35 = load i8** %stack_var_-40
  %tmp36 = ptrtoint i8* %tmp35 to i64
  %tmp37 = add i64 %tmp36, %tmp34
  %tmp39 = add i64 %tmp36, %indvars.iv
  %tmp40 = inttoptr i64 %tmp37 to i8*
  %tmp41 = load i8* %tmp40
  %tmp42 = inttoptr i64 %tmp39 to i8*
  store i8 %tmp41, i8* %tmp42
  store i32 and (i32 ptrtoint (i64* @global_var_21a155 to i32), i32 8191), i32* bitcast (i64* @global_var_21a154 to i32*)
  %tmp43 = trunc i64 %indvars.iv to i32
  %tmp44 = add i32 %tmp43, 1
  %tmp45 = icmp eq i32 %tmp44, %arg1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tmp45, label %block_c17d, label %block_c185

block_c17d:                                       ; preds = %block_c13f
  %tmp46 = zext i32 %arg1 to i64
  br label %block_c278

block_c185:                                       ; preds = %block_c13f, %block_c127
  %indvars.iv = phi i64 [ %indvars.iv.next, %block_c13f ], [ 0, %block_c127 ]
  %tmp47 = load i32* bitcast (i64* @global_var_21a14c to i32*)
  %tmp48 = add i32 %tmp47, -1
  store i32 %tmp48, i32* bitcast (i64* @global_var_21a14c to i32*)
  %tmp49 = icmp slt i32 %tmp48, 0
  br i1 %tmp49, label %block_c19e.preheader, label %block_c13f

block_c19e.preheader:                             ; preds = %block_c185
  %tmp50 = trunc i64 %indvars.iv to i32
  %tmp51 = call i64 @decode_c()
  %tmp52 = trunc i64 %tmp51 to i32
  %tmp53 = icmp eq i32 %tmp52, 510
  br i1 %tmp53, label %block_c1af, label %block_c1c1

block_c1af:                                       ; preds = %block_c19e.backedge, %block_c19e.preheader
  %stack_var_-16.1.lcssa = phi i32 [ %tmp50, %block_c19e.preheader ], [ %stack_var_-16.1.be, %block_c19e.backedge ]
  store i32 1, i32* bitcast (i64* @global_var_21a150 to i32*)
  %tmp54 = zext i32 %stack_var_-16.1.lcssa to i64
  br label %block_c278

block_c1c1:                                       ; preds = %block_c19e.preheader, %block_c19e.backedge
  %tmp55 = phi i32 [ %tmp92, %block_c19e.backedge ], [ %tmp52, %block_c19e.preheader ]
  %tmp56 = phi i64 [ %tmp91, %block_c19e.backedge ], [ %tmp51, %block_c19e.preheader ]
  %stack_var_-16.18 = phi i32 [ %stack_var_-16.1.be, %block_c19e.backedge ], [ %tmp50, %block_c19e.preheader ]
  %tmp57 = icmp ugt i32 %tmp55, 255
  br i1 %tmp57, label %block_c1ed, label %block_c1ca

block_c1ca:                                       ; preds = %block_c1c1
  %tmp58 = zext i32 %stack_var_-16.18 to i64
  %tmp59 = load i8** %stack_var_-40
  %tmp60 = ptrtoint i8* %tmp59 to i64
  %tmp61 = add i64 %tmp60, %tmp58
  %tmp62 = trunc i64 %tmp56 to i8
  %tmp63 = inttoptr i64 %tmp61 to i8*
  store i8 %tmp62, i8* %tmp63
  %tmp64 = add i32 %stack_var_-16.18, 1
  %tmp65 = icmp eq i32 %tmp64, %arg1
  br i1 %tmp65, label %block_c1e5, label %block_c19e.backedge

block_c1e5:                                       ; preds = %block_c1ca
  %tmp66 = zext i32 %arg1 to i64
  br label %block_c278

block_c1ed:                                       ; preds = %block_c1c1
  %tmp67 = add i32 %tmp55, -253
  store i32 %tmp67, i32* bitcast (i64* @global_var_21a14c to i32*)
  %tmp68 = call i64 @decode_p()
  %tmp69 = trunc i64 %tmp68 to i32
  %tmp70 = add i32 %stack_var_-16.18, 8191
  %tmp71 = sub i32 %tmp70, %tmp69
  %tmp72 = and i32 %tmp71, 8191
  store i32 %tmp72, i32* bitcast (i64* @global_var_21a154 to i32*)
  br label %block_c25a

block_c217:                                       ; preds = %block_c25a
  %tmp73 = load i32* bitcast (i64* @global_var_21a154 to i32*)
  %tmp74 = zext i32 %tmp73 to i64
  %tmp75 = load i8** %stack_var_-40
  %tmp76 = ptrtoint i8* %tmp75 to i64
  %tmp77 = add i64 %tmp76, %tmp74
  %tmp78 = zext i32 %stack_var_-16.2 to i64
  %tmp79 = load i8** %stack_var_-40
  %tmp80 = ptrtoint i8* %tmp79 to i64
  %tmp81 = add i64 %tmp80, %tmp78
  %tmp82 = inttoptr i64 %tmp77 to i8*
  %tmp83 = load i8* %tmp82
  %tmp84 = inttoptr i64 %tmp81 to i8*
  store i8 %tmp83, i8* %tmp84
  store i32 and (i32 ptrtoint (i64* @global_var_21a155 to i32), i32 8191), i32* bitcast (i64* @global_var_21a154 to i32*)
  %tmp85 = add i32 %stack_var_-16.2, 1
  %tmp86 = icmp eq i32 %tmp85, %arg1
  br i1 %tmp86, label %block_c255, label %block_c25a

block_c255:                                       ; preds = %block_c217
  %tmp87 = zext i32 %arg1 to i64
  br label %block_c278

block_c25a:                                       ; preds = %block_c217, %block_c1ed
  %stack_var_-16.2 = phi i32 [ %stack_var_-16.18, %block_c1ed ], [ %tmp85, %block_c217 ]
  %tmp88 = load i32* bitcast (i64* @global_var_21a14c to i32*)
  %tmp89 = add i32 %tmp88, -1
  store i32 %tmp89, i32* bitcast (i64* @global_var_21a14c to i32*)
  %tmp90 = icmp slt i32 %tmp89, 0
  br i1 %tmp90, label %block_c273, label %block_c217

block_c273:                                       ; preds = %block_c25a
  br label %block_c19e.backedge

block_c19e.backedge:                              ; preds = %block_c273, %block_c1ca
  %stack_var_-16.1.be = phi i32 [ %stack_var_-16.2, %block_c273 ], [ %tmp64, %block_c1ca ]
  %tmp91 = call i64 @decode_c()
  %tmp92 = trunc i64 %tmp91 to i32
  %tmp93 = icmp eq i32 %tmp92, 510
  br i1 %tmp93, label %block_c1af, label %block_c1c1

block_c278:                                       ; preds = %block_c255, %block_c1e5, %block_c17d, %block_c1af
  %rax.0 = phi i64 [ %tmp46, %block_c17d ], [ %tmp87, %block_c255 ], [ %tmp66, %block_c1e5 ], [ %tmp54, %block_c1af ]
  ret i64 %rax.0
}

define i64 @unlzh(i32 %arg1, i64 %arg2) {
block_c27a:
  %tmp12 = sext i32 %arg1 to i64
  %tmp19 = trunc i64 %arg2 to i32
  store i32 %arg1, i32* bitcast (i64* @global_var_24f0a0 to i32*)
  store i32 %tmp19, i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp20 = call i64 @decode_start(i64 %tmp12, i64 %arg2)
  %tmp21 = load i32* bitcast (i64* @global_var_21a150 to i32*)
  %tmp22 = icmp eq i32 %tmp21, 0
  br i1 %tmp22, label %block_c2a1, label %block_c2e3

block_c2a1:                                       ; preds = %block_c27a, %block_c2d9.backedge
  %tmp23 = call i64 @decode(i32 8192, i64* @global_var_24f4c0)
  %tmp24 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp25 = icmp eq i32 %tmp24, 0
  br i1 %tmp25, label %block_c2bf, label %block_c2d9.backedge

block_c2bf:                                       ; preds = %block_c2a1
  %tmp26 = trunc i64 %tmp23 to i32
  %tmp27 = icmp eq i32 %tmp26, 0
  br i1 %tmp27, label %block_c2d9.backedge, label %block_c2c5

block_c2d9.backedge:                              ; preds = %block_c2bf, %block_c2c5, %block_c2a1
  %tmp28 = load i32* bitcast (i64* @global_var_21a150 to i32*)
  %tmp29 = icmp eq i32 %tmp28, 0
  br i1 %tmp29, label %block_c2a1, label %block_c2e3

block_c2c5:                                       ; preds = %block_c2bf
  %tmp30 = and i64 %tmp23, 4294967295
  %tmp31 = call i64 @write_buf(i32 %tmp19, i8* bitcast (i64* @global_var_24f4c0 to i8*), i64 %tmp30)
  br label %block_c2d9.backedge

block_c2e3:                                       ; preds = %block_c2d9.backedge, %block_c27a
  ret i64 0
}

define i64 @unlzw(i32 %arg1, i64 %arg2) {
block_c2ea:
  %tmp300 = trunc i64 %arg2 to i32
  %tmp301 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp302 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp303 = icmp ult i32 %tmp301, %tmp302
  br i1 %tmp303, label %block_c311, label %block_c332

block_c311:                                       ; preds = %block_c2ea
  %tmp304 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp305 = zext i32 %tmp304 to i64
  %tmp306 = add i64 %tmp305, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp307 = inttoptr i64 %tmp306 to i8*
  %tmp308 = load i8* %tmp307
  %tmp309 = zext i8 %tmp308 to i64
  br label %block_c33c

block_c332:                                       ; preds = %block_c2ea
  %tmp310 = call i64 @fill_inbuf(i32 0)
  br label %block_c33c

block_c33c:                                       ; preds = %block_c332, %block_c311
  %rax.0 = phi i64 [ %tmp310, %block_c332 ], [ %tmp309, %block_c311 ]
  %tmp311 = trunc i64 %rax.0 to i32
  store i32 %tmp311, i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp312 = and i32 %tmp311, 128
  store i32 %tmp312, i32* bitcast (i64* @global_var_216548 to i32*)
  %tmp313 = load i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp314 = and i32 %tmp313, 96
  %tmp315 = icmp eq i32 %tmp314, 0
  br i1 %tmp315, label %block_c3b5, label %block_c360

block_c360:                                       ; preds = %block_c33c
  %tmp316 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp317 = icmp eq i32 %tmp316, 0
  br i1 %tmp317, label %block_c36a, label %block_c3a1

block_c36a:                                       ; preds = %block_c360
  %tmp318 = load i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp319 = and i32 %tmp318, 96
  %tmp320 = load i64* @global_var_25f4c8
  %tmp321 = load i64* @global_var_216580
  %tmp322 = inttoptr i64 %tmp321 to %_IO_FILE*
  %tmp323 = inttoptr i64 %tmp320 to i8*
  %tmp324 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp322, i8* getelementptr inbounds ([38 x i8]* @global_var_120c8, i32 0, i32 0), i8* %tmp323, i8* bitcast (i64* @global_var_21a460 to i8*), i32 %tmp319)
  br label %block_c3a1

block_c3a1:                                       ; preds = %block_c360, %block_c36a
  %tmp325 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp326 = icmp eq i32 %tmp325, 0
  br i1 %tmp326, label %block_c3ab, label %block_c3b5

block_c3ab:                                       ; preds = %block_c3a1
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_c3b5

block_c3b5:                                       ; preds = %block_c3a1, %block_c3ab, %block_c33c
  %tmp327 = load i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp328 = and i32 %tmp327, 31
  store i32 %tmp328, i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp329 = icmp eq i32 %tmp328, 0
  br i1 %tmp329, label %bb332, label %bb

bb:                                               ; preds = %block_c3b5
  %tmp330 = zext i32 %tmp328 to i64
  %tmp331 = shl i64 1, %tmp330
  br label %bb332

bb332:                                            ; preds = %block_c3b5, %bb
  %rdx.0 = phi i64 [ 1, %block_c3b5 ], [ %tmp331, %bb ]
  %tmp333 = load i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp334 = icmp slt i32 %tmp333, 17
  br i1 %tmp334, label %block_c432, label %block_c3e6

block_c3e6:                                       ; preds = %bb332
  %tmp335 = load i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp336 = load i64* @global_var_25f4c8
  %tmp337 = load i64* @global_var_216580
  %tmp338 = zext i32 %tmp335 to i64
  %tmp339 = inttoptr i64 %tmp337 to %_IO_FILE*
  %tmp340 = inttoptr i64 %tmp336 to i8*
  %tmp341 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp339, i8* getelementptr inbounds ([59 x i8]* @global_var_120f0, i32 0, i32 0), i8* %tmp340, i8* bitcast (i64* @global_var_21a460 to i8*), i64 %tmp338, i64 16)
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_caf8

block_c432:                                       ; preds = %bb332
  %tmp342 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp343 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp344 = shl i32 %tmp343, 3
  %tmp345 = load i32* bitcast (i64* @global_var_216548 to i32*)
  %tmp346 = icmp eq i32 %tmp345, 0
  br i1 %tmp346, label %block_c4a4, label %block_c49d

block_c49d:                                       ; preds = %block_c432
  br label %block_c4a9

block_c4a4:                                       ; preds = %block_c432
  br label %block_c4a9

block_c4a9:                                       ; preds = %block_c4a4, %block_c49d
  %rax.1 = phi i64 [ 256, %block_c4a4 ], [ 257, %block_c49d ]
  %tmp347 = call i64* @memset(i64* @global_var_21a880, i32 0, i32 256)
  br label %block_c4cd

block_c4cd:                                       ; preds = %block_c4a9, %block_c4cd
  %stack_var_-80.0111 = phi i32 [ 255, %block_c4a9 ], [ %tmp354, %block_c4cd ]
  %tmp348 = sext i32 %stack_var_-80.0111 to i64
  %tmp349 = add i64 %tmp348, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp350 = trunc i32 %stack_var_-80.0111 to i8
  %tmp351 = inttoptr i64 %tmp349 to i8*
  store i8 %tmp350, i8* %tmp351
  %tmp352 = zext i32 %stack_var_-80.0111 to i64
  %tmp353 = add nuw nsw i64 %tmp352, 4294967295
  %tmp354 = trunc i64 %tmp353 to i32
  %tmp355 = icmp slt i32 %tmp354, 0
  br i1 %tmp355, label %block_c4ef.preheader, label %block_c4cd

block_c4ef.preheader:                             ; preds = %block_c4cd
  %tmp356 = trunc i64 %rax.1 to i32
  %sext7 = shl i64 %rdx.0, 32
  %tmp357 = ashr exact i64 %sext7, 32
  br label %block_c4ef

block_c4ef:                                       ; preds = %block_c4ef.preheader, %block_caab
  %stack_var_-108.0 = phi i32 [ %stack_var_-108.2, %block_caab ], [ %tmp342, %block_c4ef.preheader ]
  %stack_var_-112.0 = phi i32 [ %stack_var_-112.1, %block_caab ], [ 9, %block_c4ef.preheader ]
  %stack_var_-48.0 = phi i64 [ %stack_var_-48.1, %block_caab ], [ 511, %block_c4ef.preheader ]
  %stack_var_-116.0 = phi i32 [ %stack_var_-116.1, %block_caab ], [ 511, %block_c4ef.preheader ]
  %stack_var_-72.0 = phi i32 [ %stack_var_-72.2.lcssa, %block_caab ], [ -1, %block_c4ef.preheader ]
  %stack_var_-124.0 = phi i32 [ %stack_var_-124.2.lcssa, %block_caab ], [ 0, %block_c4ef.preheader ]
  %stack_var_-120.0 = phi i64* [ %stack_var_-120.6.lcssa, %block_caab ], [ null, %block_c4ef.preheader ]
  %stack_var_-64.0 = phi i32 [ %stack_var_-64.2.lcssa, %block_caab ], [ %tmp344, %block_c4ef.preheader ]
  %stack_var_-56.0 = phi i32 [ %stack_var_-56.3.ph.lcssa, %block_caab ], [ %tmp356, %block_c4ef.preheader ]
  br label %block_c4f0

block_c4f0:                                       ; preds = %block_c797, %bb438, %block_c4ef
  %stack_var_-108.1 = phi i32 [ %stack_var_-108.0, %block_c4ef ], [ %stack_var_-108.2, %bb438 ], [ %stack_var_-108.2, %block_c797 ]
  %stack_var_-112.1 = phi i32 [ %stack_var_-112.0, %block_c4ef ], [ %tmp426, %bb438 ], [ 9, %block_c797 ]
  %stack_var_-48.1 = phi i64 [ %stack_var_-48.0, %block_c4ef ], [ %stack_var_-48.2, %bb438 ], [ 511, %block_c797 ]
  %stack_var_-116.1 = phi i32 [ %stack_var_-116.0, %block_c4ef ], [ %tmp440, %bb438 ], [ 511, %block_c797 ]
  %stack_var_-72.1 = phi i32 [ %stack_var_-72.0, %block_c4ef ], [ %stack_var_-72.259, %bb438 ], [ %stack_var_-72.259, %block_c797 ]
  %stack_var_-124.1 = phi i32 [ %stack_var_-124.0, %block_c4ef ], [ %stack_var_-124.260, %bb438 ], [ %stack_var_-124.260, %block_c797 ]
  %stack_var_-120.1 = phi i64* [ %stack_var_-120.0, %block_c4ef ], [ %stack_var_-120.661, %bb438 ], [ %stack_var_-120.661, %block_c797 ]
  %stack_var_-64.1 = phi i32 [ %stack_var_-64.0, %block_c4ef ], [ %tmp425, %bb438 ], [ %tmp500, %block_c797 ]
  %stack_var_-56.1 = phi i32 [ %stack_var_-56.0, %block_c4ef ], [ %stack_var_-56.3.ph90, %bb438 ], [ 256, %block_c797 ]
  %tmp358 = sext i32 %stack_var_-64.1 to i64
  %tmp359 = lshr i64 %tmp358, 3
  %tmp360 = trunc i64 %tmp359 to i32
  %tmp361 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp362 = icmp ugt i32 %tmp360, %tmp361
  br i1 %tmp362, label %block_c517, label %block_c508

block_c508:                                       ; preds = %block_c4f0
  %tmp363 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp364 = sub i32 %tmp363, %tmp360
  %tmp365 = zext i32 %tmp364 to i64
  br label %block_c51c

block_c517:                                       ; preds = %block_c4f0
  br label %block_c51c

block_c51c:                                       ; preds = %block_c517, %block_c508
  %rax.2 = phi i64 [ 0, %block_c517 ], [ %tmp365, %block_c508 ]
  %tmp366 = trunc i64 %rax.2 to i32
  %tmp367 = icmp sgt i32 %tmp366, 0
  br i1 %tmp367, label %block_c528.preheader, label %block_c55a

block_c528.preheader:                             ; preds = %block_c51c
  %tmp790 = add i32 %tmp366, -1
  br label %block_c528

block_c528:                                       ; preds = %block_c528, %block_c528.preheader
  %indvars.iv = phi i64 [ 0, %block_c528.preheader ], [ %indvars.iv.next, %block_c528 ]
  %tmp369 = trunc i64 %indvars.iv to i32
  %tmp370 = add i32 %tmp369, %tmp360
  %tmp371 = sext i32 %tmp370 to i64
  %tmp372 = add i64 %tmp371, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp373 = inttoptr i64 %tmp372 to i8*
  %tmp374 = load i8* %tmp373
  %tmp375 = add i64 %indvars.iv, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp376 = inttoptr i64 %tmp375 to i8*
  store i8 %tmp374, i8* %tmp376
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond789 = icmp eq i32 %tmp369, %tmp790
  br i1 %exitcond789, label %block_c55a, label %block_c528

block_c55a:                                       ; preds = %block_c528, %block_c51c
  store i32 %tmp366, i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp377 = icmp ugt i32 %tmp366, 63
  br i1 %tmp377, label %block_c5d4, label %block_c576

block_c576:                                       ; preds = %block_c55a
  %tmp378 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp379 = zext i32 %tmp378 to i64
  %tmp380 = add i64 %tmp379, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp381 = call i64 @read_buffer(i32 %arg1, i64 %tmp380, i64 32768)
  %tmp382 = trunc i64 %tmp381 to i32
  %tmp383 = icmp eq i32 %tmp382, -1
  br i1 %tmp383, label %block_c5a7, label %block_c5ac

block_c5a7:                                       ; preds = %block_c576
  %tmp384 = call i64 @read_error()
  unreachable

block_c5ac:                                       ; preds = %block_c576
  %tmp385 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp386 = add i32 %tmp385, %tmp382
  store i32 %tmp386, i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp387 = sext i32 %tmp382 to i64
  %tmp388 = load i64* @global_var_21a860
  %tmp389 = add i64 %tmp388, %tmp387
  store i64 %tmp389, i64* @global_var_21a860
  br label %block_c5d4

block_c5d4:                                       ; preds = %block_c5ac, %block_c55a
  %stack_var_-108.2 = phi i32 [ %stack_var_-108.1, %block_c55a ], [ %tmp382, %block_c5ac ]
  %tmp390 = icmp eq i32 %stack_var_-108.2, 0
  br i1 %tmp390, label %block_c602, label %block_c5da

block_c5da:                                       ; preds = %block_c5d4
  %tmp391 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp392 = zext i32 %tmp391 to i64
  %tmp393 = urem i32 %tmp391, %stack_var_-112.1
  %tmp394 = zext i32 %tmp393 to i64
  %tmp395 = sub nsw i64 %tmp392, %tmp394
  %tmp396 = shl nsw i64 %tmp395, 3
  br label %block_c620

block_c602:                                       ; preds = %block_c5d4
  %tmp397 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp398 = zext i32 %tmp397 to i64
  %tmp399 = shl nuw nsw i64 %tmp398, 3
  %tmp400 = add i32 %stack_var_-112.1, -1
  %tmp401 = sext i32 %tmp400 to i64
  %tmp402 = sub nsw i64 %tmp399, %tmp401
  br label %block_c620

block_c620:                                       ; preds = %block_c602, %block_c5da
  %rax.3 = phi i64 [ %tmp402, %block_c602 ], [ %tmp396, %block_c5da ]
  %tmp403 = icmp sgt i64 %rax.3, 0
  br i1 %tmp403, label %block_c629.lr.ph.lr.ph, label %block_caab

block_c629.lr.ph.lr.ph:                           ; preds = %block_c620
  %sext = shl i64 %stack_var_-48.1, 32
  %tmp404 = ashr exact i64 %sext, 32
  %tmp405 = zext i32 %stack_var_-116.1 to i64
  %tmp406 = zext i32 %stack_var_-112.1 to i64
  br label %block_c629.lr.ph

block_c629:                                       ; preds = %block_c629.lr.ph, %block_c74c
  %tmp407 = phi i64 [ %tmp595, %block_c629.lr.ph ], [ %tmp477, %block_c74c ]
  %stack_var_-64.262 = phi i32 [ %stack_var_-64.2.ph89, %block_c629.lr.ph ], [ %tmp464, %block_c74c ]
  %stack_var_-120.661 = phi i64* [ %stack_var_-120.6.ph88, %block_c629.lr.ph ], [ %tmp472, %block_c74c ]
  %stack_var_-124.260 = phi i32 [ %stack_var_-124.2.ph87, %block_c629.lr.ph ], [ %tmp462, %block_c74c ]
  %stack_var_-72.259 = phi i32 [ %stack_var_-72.2.ph86, %block_c629.lr.ph ], [ %tmp462, %block_c74c ]
  br i1 %tmp597, label %block_c637, label %block_c6c3

block_c637:                                       ; preds = %block_c629
  %tmp408 = zext i32 %stack_var_-64.262 to i64
  %tmp409 = shl i32 %stack_var_-112.1, 3
  %tmp410 = zext i32 %tmp409 to i64
  %tmp411 = sext i32 %tmp409 to i64
  %tmp412 = add nsw i64 %tmp411, -1
  %tmp413 = add nsw i64 %tmp412, %tmp407
  %tmp414 = ashr i64 %tmp413, 63
  %tmp415 = zext i64 %tmp413 to i128
  %tmp416 = zext i64 %tmp414 to i128
  %tmp417 = shl nuw i128 %tmp416, 64
  %tmp418 = or i128 %tmp417, %tmp415
  %tmp419 = zext i64 %tmp411 to i128
  %tmp420 = srem i128 %tmp418, %tmp419
  %tmp421 = trunc i128 %tmp420 to i64
  %tmp422 = add nuw nsw i64 %tmp410, 4294967295
  %tmp423 = add nuw nsw i64 %tmp422, %tmp408
  %tmp424 = sub i64 %tmp423, %tmp421
  %tmp425 = trunc i64 %tmp424 to i32
  %tmp426 = add i32 %stack_var_-112.1, 1
  %tmp427 = load i32* bitcast (i64* @global_var_216098 to i32*)
  %tmp428 = icmp eq i32 %tmp426, %tmp427
  br i1 %tmp428, label %block_c688, label %block_c692

block_c688:                                       ; preds = %block_c637
  br label %block_c6aa

block_c692:                                       ; preds = %block_c637
  %tmp429 = zext i32 %tmp426 to i64
  %tmp430 = and i64 %tmp429, 63
  %tmp431 = shl i64 1, %tmp430
  %tmp432 = add i64 %tmp431, -1
  br label %block_c6aa

block_c6aa:                                       ; preds = %block_c692, %block_c688
  %stack_var_-48.2 = phi i64 [ %tmp432, %block_c692 ], [ %rdx.0, %block_c688 ]
  %tmp433 = and i32 %tmp426, 31
  %tmp434 = icmp eq i32 %tmp433, 0
  br i1 %tmp434, label %bb438, label %bb435

bb435:                                            ; preds = %block_c6aa
  %tmp436 = shl i32 1, %tmp433
  %tmp437 = zext i32 %tmp436 to i64
  br label %bb438

bb438:                                            ; preds = %block_c6aa, %bb435
  %rdx.4 = phi i64 [ 1, %block_c6aa ], [ %tmp437, %bb435 ]
  %tmp439 = trunc i64 %rdx.4 to i32
  %tmp440 = add i32 %tmp439, -1
  br label %block_c4f0

block_c6c3:                                       ; preds = %block_c629
  %tmp441 = ashr i64 %tmp407, 3
  %tmp442 = add i64 %tmp441, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp443 = inttoptr i64 %tmp442 to i8*
  %tmp444 = load i8* %tmp443
  %tmp445 = zext i8 %tmp444 to i64
  %tmp446 = add i64 %tmp441, add (i64 ptrtoint (i64* @global_var_25f500 to i64), i64 1)
  %tmp447 = inttoptr i64 %tmp446 to i8*
  %tmp448 = load i8* %tmp447
  %tmp449 = zext i8 %tmp448 to i64
  %tmp450 = shl nuw nsw i64 %tmp449, 8
  %tmp451 = or i64 %tmp450, %tmp445
  %tmp452 = add i64 %tmp441, add (i64 ptrtoint (i64* @global_var_25f500 to i64), i64 2)
  %tmp453 = inttoptr i64 %tmp452 to i8*
  %tmp454 = load i8* %tmp453
  %tmp455 = zext i8 %tmp454 to i64
  %tmp456 = shl nuw nsw i64 %tmp455, 16
  %tmp457 = or i64 %tmp451, %tmp456
  %tmp458 = zext i32 %stack_var_-64.262 to i64
  %tmp459 = and i64 %tmp458, 7
  %tmp460 = lshr i64 %tmp457, %tmp459
  %tmp461 = and i64 %tmp460, %tmp405
  %tmp462 = trunc i64 %tmp461 to i32
  %tmp463 = add nuw nsw i64 %tmp458, %tmp406
  %tmp464 = trunc i64 %tmp463 to i32
  %tmp465 = icmp eq i32 %stack_var_-72.259, -1
  br i1 %tmp465, label %block_c736, label %block_c77b

block_c736:                                       ; preds = %block_c6c3
  %tmp466 = icmp slt i32 %tmp462, 256
  br i1 %tmp466, label %block_c74c, label %block_c740

block_c740:                                       ; preds = %block_c736
  %tmp467 = call i64 @gzip_error(i8* getelementptr inbounds ([15 x i8]* @global_var_1212b, i32 0, i32 0))
  unreachable

block_c74c:                                       ; preds = %block_c736
  %tmp468 = ptrtoint i64* %stack_var_-120.661 to i32
  %tmp469 = zext i32 %tmp468 to i64
  %tmp470 = add nuw nsw i64 %tmp469, 1
  %tmp471 = trunc i64 %tmp470 to i32
  %tmp472 = inttoptr i32 %tmp471 to i64*
  %tmp473 = sext i32 %tmp468 to i64
  %tmp474 = trunc i64 %tmp461 to i8
  %tmp475 = add i64 %tmp473, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp476 = inttoptr i64 %tmp475 to i8*
  store i8 %tmp474, i8* %tmp476
  %tmp477 = sext i32 %tmp464 to i64
  %tmp478 = icmp sgt i64 %rax.3, %tmp477
  br i1 %tmp478, label %block_c629, label %block_caab

block_c77b:                                       ; preds = %block_c6c3
  %tmp479 = icmp eq i32 %tmp462, 256
  br i1 %tmp479, label %block_c789, label %block_c82f

block_c789:                                       ; preds = %block_c77b
  %tmp480 = load i32* bitcast (i64* @global_var_216548 to i32*)
  %tmp481 = icmp eq i32 %tmp480, 0
  br i1 %tmp481, label %block_c82f, label %block_c797

block_c797:                                       ; preds = %block_c789
  %tmp482 = call i64* @memset(i64* @global_var_21a880, i32 0, i32 256)
  %tmp483 = shl i32 %stack_var_-112.1, 3
  %tmp484 = zext i32 %tmp483 to i64
  %tmp485 = sext i32 %tmp464 to i64
  %tmp486 = sext i32 %tmp483 to i64
  %tmp487 = add nsw i64 %tmp486, -1
  %tmp488 = add nsw i64 %tmp487, %tmp485
  %tmp489 = ashr i64 %tmp488, 63
  %tmp490 = zext i64 %tmp488 to i128
  %tmp491 = zext i64 %tmp489 to i128
  %tmp492 = shl nuw i128 %tmp491, 64
  %tmp493 = or i128 %tmp492, %tmp490
  %tmp494 = zext i64 %tmp486 to i128
  %tmp495 = srem i128 %tmp493, %tmp494
  %tmp496 = trunc i128 %tmp495 to i64
  %tmp497 = add nuw nsw i64 %tmp484, 4294967295
  %tmp498 = add nuw nsw i64 %tmp497, %tmp463
  %tmp499 = sub i64 %tmp498, %tmp496
  %tmp500 = trunc i64 %tmp499 to i32
  br label %block_c4f0

block_c82f:                                       ; preds = %block_c77b, %block_c789
  %tmp501 = icmp slt i32 %tmp462, %stack_var_-56.3.ph90
  br i1 %tmp501, label %block_c90a.preheader, label %block_c850

block_c850:                                       ; preds = %block_c82f
  %tmp502 = icmp sgt i32 %tmp462, %stack_var_-56.3.ph90
  br i1 %tmp502, label %block_c85a, label %block_c8ba

block_c85a:                                       ; preds = %block_c850
  %tmp503 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp504 = icmp eq i32 %tmp503, 0
  br i1 %tmp504, label %block_c864, label %block_c898

block_c864:                                       ; preds = %block_c85a
  %tmp505 = ptrtoint i64* %stack_var_-120.661 to i32
  %tmp506 = icmp slt i32 %tmp505, 1
  br i1 %tmp506, label %block_c898, label %block_c86a

block_c86a:                                       ; preds = %block_c864
  %tmp507 = zext i32 %tmp505 to i64
  %tmp508 = call i64 @write_buf(i32 %tmp300, i8* bitcast (i64* @global_var_24a8a0 to i8*), i64 %tmp507)
  %tmp509 = sext i32 %tmp505 to i64
  %tmp510 = load i64* @global_var_25f4c0
  %tmp511 = add i64 %tmp510, %tmp509
  store i64 %tmp511, i64* @global_var_25f4c0
  br label %block_c898

block_c898:                                       ; preds = %block_c85a, %block_c86a, %block_c864
  %tmp512 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp513 = icmp eq i32 %tmp512, 0
  br i1 %tmp513, label %block_c8ab, label %block_c8a2

block_c8a2:                                       ; preds = %block_c898
  br label %block_c8b2

block_c8ab:                                       ; preds = %block_c898
  br label %block_c8b2

block_c8b2:                                       ; preds = %block_c8ab, %block_c8a2
  %rax.4 = phi i64 [ ptrtoint ([46 x i8]* @global_var_12140 to i64), %block_c8ab ], [ ptrtoint ([15 x i8]* @global_var_1212b to i64), %block_c8a2 ]
  %tmp514 = inttoptr i64 %rax.4 to i8*
  %tmp515 = call i64 @gzip_error(i8* %tmp514)
  unreachable

block_c8ba:                                       ; preds = %block_c850
  %tmp516 = trunc i32 %stack_var_-124.260 to i8
  store i8 %tmp516, i8* inttoptr (i64 sub (i64 ptrtoint (i64* @global_var_24a87e to i64), i64 1) to i8*)
  br label %block_c90a.preheader

block_c90a.preheader:                             ; preds = %block_c82f, %block_c8ba
  %stack_var_-80.1.ph = phi i32 [ %stack_var_-72.259, %block_c8ba ], [ %tmp462, %block_c82f ]
  %stack_var_-88.0.ph = phi i64 [ sub (i64 ptrtoint (i64* @global_var_24a87e to i64), i64 1), %block_c8ba ], [ ptrtoint (i64* @global_var_24a87e to i64), %block_c82f ]
  %tmp517 = icmp ugt i32 %stack_var_-80.1.ph, 255
  br i1 %tmp517, label %block_c8d4, label %block_c916

block_c8d4:                                       ; preds = %block_c90a.preheader, %block_c8d4
  %stack_var_-88.083 = phi i64 [ %tmp518, %block_c8d4 ], [ %stack_var_-88.0.ph, %block_c90a.preheader ]
  %stack_var_-80.182 = phi i32 [ %tmp528, %block_c8d4 ], [ %stack_var_-80.1.ph, %block_c90a.preheader ]
  %tmp518 = add i64 %stack_var_-88.083, -1
  %tmp519 = sext i32 %stack_var_-80.182 to i64
  %tmp520 = add i64 %tmp519, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp521 = inttoptr i64 %tmp520 to i8*
  %tmp522 = load i8* %tmp521
  %tmp523 = inttoptr i64 %tmp518 to i8*
  store i8 %tmp522, i8* %tmp523
  %tmp524 = shl nsw i64 %tmp519, 1
  %tmp525 = add i64 %tmp524, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp526 = inttoptr i64 %tmp525 to i16*
  %tmp527 = load i16* %tmp526
  %tmp528 = zext i16 %tmp527 to i32
  %tmp529 = icmp ugt i16 %tmp527, 255
  br i1 %tmp529, label %block_c8d4, label %block_c916

block_c916:                                       ; preds = %block_c8d4, %block_c90a.preheader
  %stack_var_-88.0.lcssa = phi i64 [ %stack_var_-88.0.ph, %block_c90a.preheader ], [ %tmp518, %block_c8d4 ]
  %stack_var_-80.1.lcssa = phi i32 [ %stack_var_-80.1.ph, %block_c90a.preheader ], [ %tmp528, %block_c8d4 ]
  %tmp530 = sext i32 %stack_var_-80.1.lcssa to i64
  %tmp531 = add i64 %tmp530, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp532 = inttoptr i64 %tmp531 to i8*
  %tmp533 = load i8* %tmp532
  %tmp534 = zext i8 %tmp533 to i32
  %tmp535 = add i64 %stack_var_-88.0.lcssa, -1
  %tmp536 = inttoptr i64 %tmp535 to i8*
  store i8 %tmp533, i8* %tmp536
  %tmp537 = sub i64 sub (i64 ptrtoint (i64* @global_var_24a87e to i64), i64 -1), %stack_var_-88.0.lcssa
  %tmp538 = trunc i64 %tmp537 to i32
  %tmp539 = inttoptr i32 %tmp538 to i64*
  %tmp540 = ptrtoint i64* %tmp539 to i32
  %tmp541 = ptrtoint i64* %stack_var_-120.661 to i32
  %tmp542 = add i32 %tmp540, %tmp541
  %tmp543 = icmp slt i32 %tmp542, 16384
  br i1 %tmp543, label %block_ca1e, label %block_c964

block_c964:                                       ; preds = %block_c916, %block_c9f5
  %stack_var_-120.2 = phi i64* [ %stack_var_-120.4, %block_c9f5 ], [ %stack_var_-120.661, %block_c916 ]
  %stack_var_-88.1 = phi i64 [ %tmp570, %block_c9f5 ], [ %tmp535, %block_c916 ]
  %stack_var_-100.0 = phi i64* [ %tmp573, %block_c9f5 ], [ %tmp539, %block_c916 ]
  %tmp544 = ptrtoint i64* %stack_var_-120.2 to i32
  %tmp545 = sub i32 16384, %tmp544
  %tmp546 = zext i32 %tmp545 to i64
  %tmp547 = ptrtoint i64* %stack_var_-100.0 to i32
  %tmp548 = sext i32 %tmp547 to i64
  %tmp549 = icmp sgt i64 %tmp548, %tmp546
  br i1 %tmp549, label %block_c971, label %block_c97c

block_c971:                                       ; preds = %block_c964
  %tmp550 = inttoptr i32 %tmp545 to i64*
  br label %block_c97c

block_c97c:                                       ; preds = %block_c964, %block_c971
  %stack_var_-100.1 = phi i64* [ %stack_var_-100.0, %block_c964 ], [ %tmp550, %block_c971 ]
  %tmp551 = ptrtoint i64* %stack_var_-100.1 to i32
  %tmp552 = icmp slt i32 %tmp551, 1
  br i1 %tmp552, label %block_c9ad, label %block_c982

block_c982:                                       ; preds = %block_c97c
  %tmp553 = sext i32 %tmp544 to i64
  %tmp554 = add i64 %tmp553, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp555 = inttoptr i64 %tmp554 to i64*
  %tmp556 = inttoptr i64 %stack_var_-88.1 to i64*
  %tmp557 = call i64* @memcpy(i64* %tmp555, i64* %tmp556, i32 %tmp551)
  %tmp558 = add i32 %tmp551, %tmp544
  %tmp559 = inttoptr i32 %tmp558 to i64*
  br label %block_c9ad

block_c9ad:                                       ; preds = %block_c982, %block_c97c
  %stack_var_-120.3 = phi i64* [ %stack_var_-120.2, %block_c97c ], [ %tmp559, %block_c982 ]
  %tmp560 = ptrtoint i64* %stack_var_-120.3 to i32
  %tmp561 = icmp slt i32 %tmp560, 16384
  br i1 %tmp561, label %block_c9f5, label %block_c9b6

block_c9b6:                                       ; preds = %block_c9ad
  %tmp562 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp563 = icmp eq i32 %tmp562, 0
  br i1 %tmp563, label %block_c9c0, label %block_c9ee

block_c9c0:                                       ; preds = %block_c9b6
  %tmp564 = zext i32 %tmp560 to i64
  %tmp565 = call i64 @write_buf(i32 %tmp300, i8* bitcast (i64* @global_var_24a8a0 to i8*), i64 %tmp564)
  %tmp566 = sext i32 %tmp560 to i64
  %tmp567 = load i64* @global_var_25f4c0
  %tmp568 = add i64 %tmp567, %tmp566
  store i64 %tmp568, i64* @global_var_25f4c0
  br label %block_c9ee

block_c9ee:                                       ; preds = %block_c9b6, %block_c9c0
  br label %block_c9f5

block_c9f5:                                       ; preds = %block_c9ee, %block_c9ad
  %stack_var_-120.4 = phi i64* [ %stack_var_-120.3, %block_c9ad ], [ null, %block_c9ee ]
  %tmp569 = sext i32 %tmp551 to i64
  %tmp570 = add i64 %tmp569, %stack_var_-88.1
  %tmp571 = sub i64 ptrtoint (i64* @global_var_24a87e to i64), %tmp570
  %tmp572 = trunc i64 %tmp571 to i32
  %tmp573 = inttoptr i32 %tmp572 to i64*
  %tmp574 = ptrtoint i64* %tmp573 to i32
  %tmp575 = icmp sgt i32 %tmp574, -1
  %tmp576 = icmp ne i32 %tmp574, 0
  %tmp = icmp ne i1 %tmp575, %tmp576
  br i1 %tmp, label %block_ca1c, label %block_c964

block_ca1c:                                       ; preds = %block_c9f5
  br label %block_ca49

block_ca1e:                                       ; preds = %block_c916
  %tmp577 = sext i32 %tmp541 to i64
  %tmp578 = add i64 %tmp577, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp579 = inttoptr i64 %tmp578 to i64*
  %tmp580 = inttoptr i64 %tmp535 to i64*
  %tmp581 = call i64* @memcpy(i64* %tmp579, i64* %tmp580, i32 %tmp540)
  %tmp582 = inttoptr i32 %tmp542 to i64*
  br label %block_ca49

block_ca49:                                       ; preds = %block_ca1e, %block_ca1c
  %stack_var_-120.5 = phi i64* [ %tmp582, %block_ca1e ], [ %stack_var_-120.4, %block_ca1c ]
  %tmp583 = icmp slt i64 %tmp596, %tmp357
  br i1 %tmp583, label %block_ca5b, label %block_ca95

block_ca5b:                                       ; preds = %block_ca49
  %tmp584 = shl nsw i64 %tmp596, 1
  %tmp585 = trunc i32 %stack_var_-72.259 to i16
  %tmp586 = add i64 %tmp584, ptrtoint (i64* @global_var_21a880 to i64)
  %tmp587 = inttoptr i64 %tmp586 to i16*
  store i16 %tmp585, i16* %tmp587
  %tmp588 = add i64 %tmp596, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp589 = inttoptr i64 %tmp588 to i8*
  store i8 %tmp533, i8* %tmp589
  %tmp590 = zext i32 %stack_var_-56.3.ph90 to i64
  %tmp591 = add nuw nsw i64 %tmp590, 1
  %tmp592 = trunc i64 %tmp591 to i32
  br label %block_ca95

block_ca95:                                       ; preds = %block_ca49, %block_ca5b
  %stack_var_-56.2 = phi i32 [ %stack_var_-56.3.ph90, %block_ca49 ], [ %tmp592, %block_ca5b ]
  %tmp593 = sext i32 %tmp464 to i64
  %tmp594 = icmp sgt i64 %rax.3, %tmp593
  br i1 %tmp594, label %block_c629.lr.ph, label %block_caab

block_c629.lr.ph:                                 ; preds = %block_c629.lr.ph.lr.ph, %block_ca95
  %tmp595 = phi i64 [ 0, %block_c629.lr.ph.lr.ph ], [ %tmp593, %block_ca95 ]
  %stack_var_-56.3.ph90 = phi i32 [ %stack_var_-56.1, %block_c629.lr.ph.lr.ph ], [ %stack_var_-56.2, %block_ca95 ]
  %stack_var_-64.2.ph89 = phi i32 [ 0, %block_c629.lr.ph.lr.ph ], [ %tmp464, %block_ca95 ]
  %stack_var_-120.6.ph88 = phi i64* [ %stack_var_-120.1, %block_c629.lr.ph.lr.ph ], [ %stack_var_-120.5, %block_ca95 ]
  %stack_var_-124.2.ph87 = phi i32 [ %stack_var_-124.1, %block_c629.lr.ph.lr.ph ], [ %tmp534, %block_ca95 ]
  %stack_var_-72.2.ph86 = phi i32 [ %stack_var_-72.1, %block_c629.lr.ph.lr.ph ], [ %tmp462, %block_ca95 ]
  %tmp596 = sext i32 %stack_var_-56.3.ph90 to i64
  %tmp597 = icmp sgt i64 %tmp596, %tmp404
  br label %block_c629

block_caab:                                       ; preds = %block_c620, %block_ca95, %block_c74c
  %stack_var_-56.3.ph.lcssa = phi i32 [ %stack_var_-56.3.ph90, %block_c74c ], [ %stack_var_-56.2, %block_ca95 ], [ %stack_var_-56.1, %block_c620 ]
  %stack_var_-64.2.lcssa = phi i32 [ %tmp464, %block_c74c ], [ %tmp464, %block_ca95 ], [ 0, %block_c620 ]
  %stack_var_-120.6.lcssa = phi i64* [ %tmp472, %block_c74c ], [ %stack_var_-120.5, %block_ca95 ], [ %stack_var_-120.1, %block_c620 ]
  %stack_var_-124.2.lcssa = phi i32 [ %tmp462, %block_c74c ], [ %tmp534, %block_ca95 ], [ %stack_var_-124.1, %block_c620 ]
  %stack_var_-72.2.lcssa = phi i32 [ %tmp462, %block_c74c ], [ %tmp462, %block_ca95 ], [ %stack_var_-72.1, %block_c620 ]
  br i1 %tmp390, label %block_cab5, label %block_c4ef

block_cab5:                                       ; preds = %block_caab
  %tmp598 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp599 = icmp eq i32 %tmp598, 0
  br i1 %tmp599, label %block_cabf, label %block_caf3

block_cabf:                                       ; preds = %block_cab5
  %tmp600 = ptrtoint i64* %stack_var_-120.6.lcssa to i32
  %tmp601 = icmp slt i32 %tmp600, 1
  br i1 %tmp601, label %block_caf3, label %block_cac5

block_cac5:                                       ; preds = %block_cabf
  %tmp602 = zext i32 %tmp600 to i64
  %tmp603 = call i64 @write_buf(i32 %tmp300, i8* bitcast (i64* @global_var_24a8a0 to i8*), i64 %tmp602)
  %tmp604 = sext i32 %tmp600 to i64
  %tmp605 = load i64* @global_var_25f4c0
  %tmp606 = add i64 %tmp605, %tmp604
  store i64 %tmp606, i64* @global_var_25f4c0
  br label %block_caf3

block_caf3:                                       ; preds = %block_cab5, %block_cac5, %block_cabf
  br label %block_caf8

block_caf8:                                       ; preds = %block_caf3, %block_c3e6
  %rax.5 = phi i64 [ 0, %block_caf3 ], [ 1, %block_c3e6 ]
  ret i64 %rax.5
}

define i64 @read_byte() {
block_cafa:
  %tmp15 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp16 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp17 = icmp ult i32 %tmp15, %tmp16
  br i1 %tmp17, label %block_cb12, label %block_cb33

block_cb12:                                       ; preds = %block_cafa
  %tmp18 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp19 = zext i32 %tmp18 to i64
  %tmp20 = add i64 %tmp19, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp21 = inttoptr i64 %tmp20 to i8*
  %tmp22 = load i8* %tmp21
  %tmp23 = zext i8 %tmp22 to i64
  br label %block_cb3d

block_cb33:                                       ; preds = %block_cafa
  %tmp24 = call i64 @fill_inbuf(i32 0)
  br label %block_cb3d

block_cb3d:                                       ; preds = %block_cb33, %block_cb12
  %rax.0 = phi i64 [ %tmp24, %block_cb33 ], [ %tmp23, %block_cb12 ]
  %tmp25 = trunc i64 %rax.0 to i32
  %tmp26 = icmp slt i32 %tmp25, 0
  br i1 %tmp26, label %block_cb46, label %block_cb52

block_cb46:                                       ; preds = %block_cb3d
  %tmp27 = call i64 @gzip_error(i8* getelementptr inbounds ([50 x i8]* @global_var_12170, i32 0, i32 0))
  unreachable

block_cb52:                                       ; preds = %block_cb3d
  %tmp28 = and i64 %rax.0, 4294967295
  ret i64 %tmp28
}

define i64 @read_tree(i64 %arg1, i64 %arg2) {
block_cb57:
  store i64 0, i64* @global_var_21a160
  br label %block_cb7b

block_cb7b:                                       ; preds = %block_cb7b, %block_cb57
  %stack_var_-32.010 = phi i32 [ 1, %block_cb57 ], [ %tmp55, %block_cb7b ]
  %tmp50 = load i64* @global_var_21a160
  %tmp51 = shl i64 %tmp50, 8
  %tmp52 = call i64 @read_byte()
  %tmp53 = and i64 %tmp52, 255
  %tmp54 = or i64 %tmp53, %tmp51
  store i64 %tmp54, i64* @global_var_21a160
  %tmp55 = add nuw nsw i32 %stack_var_-32.010, 1
  %exitcond = icmp eq i32 %tmp55, 5
  br i1 %exitcond, label %block_cba5, label %block_cb7b

block_cba5:                                       ; preds = %block_cb7b
  %tmp56 = call i64 @read_byte()
  %tmp57 = trunc i64 %tmp56 to i32
  %tmp58 = and i32 %tmp57, 255
  store i32 %tmp58, i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp59 = icmp eq i32 %tmp58, 0
  br i1 %tmp59, label %block_cbc8, label %block_cbbd

block_cbbd:                                       ; preds = %block_cba5
  %tmp60 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp61 = icmp slt i32 %tmp60, 26
  br i1 %tmp61, label %block_cbd4, label %block_cbc8

block_cbc8:                                       ; preds = %block_cbbd, %block_cba5
  %tmp62 = call i64 @gzip_error(i8* getelementptr inbounds ([64 x i8]* @global_var_121a8, i32 0, i32 0))
  unreachable

block_cbd4:                                       ; preds = %block_cbbd
  %tmp63 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp64 = icmp slt i32 %tmp63, 1
  br i1 %tmp64, label %block_ccae.critedge, label %block_cbe7

block_cbe7:                                       ; preds = %block_cbd4, %block_cc43
  %stack_var_-40.0 = phi i32 [ %tmp105, %block_cc43 ], [ 1, %block_cbd4 ]
  %stack_var_-32.18 = phi i32 [ %tmp103, %block_cc43 ], [ 0, %block_cbd4 ]
  %stack_var_-28.07 = phi i32 [ %tmp96, %block_cc43 ], [ 1, %block_cbd4 ]
  %tmp65 = call i64 @read_byte()
  %tmp67 = sext i32 %stack_var_-40.0 to i64
  %tmp68 = shl nsw i64 %tmp67, 2
  %tmp69 = trunc i64 %tmp65 to i32
  %tmp70 = and i32 %tmp69, 255
  %tmp71 = add i64 %tmp68, ptrtoint (i64* @global_var_21a300 to i64)
  %tmp72 = inttoptr i64 %tmp71 to i32*
  store i32 %tmp70, i32* %tmp72
  %tmp73 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp75 = icmp eq i32 %stack_var_-40.0, %tmp73
  %tmp76 = zext i1 %tmp75 to i32
  %tmp77 = sub i32 %stack_var_-28.07, %tmp76
  %tmp83 = load i32* %tmp72
  %tmp84 = zext i32 %tmp83 to i64
  %tmp85 = sext i32 %tmp77 to i64
  %tmp86 = icmp slt i64 %tmp85, %tmp84
  br i1 %tmp86, label %block_cc37, label %block_cc43

block_cc37:                                       ; preds = %block_cbe7
  %tmp87 = call i64 @gzip_error(i8* getelementptr inbounds ([32 x i8]* @global_var_121e8, i32 0, i32 0))
  unreachable

block_cc43:                                       ; preds = %block_cbe7
  %tmp93 = load i32* %tmp72
  %tmp94 = sub i32 %stack_var_-28.07, %tmp93
  %tmp95 = shl i32 %tmp94, 1
  %tmp96 = or i32 %tmp95, 1
  %tmp102 = load i32* %tmp72
  %tmp103 = add i32 %tmp102, %stack_var_-32.18
  %tmp105 = add i32 %stack_var_-40.0, 1
  %tmp106 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp107 = icmp sgt i32 %tmp105, %tmp106
  br i1 %tmp107, label %block_cc8a.block_cc99_crit_edge, label %block_cbe7

block_cc8a.block_cc99_crit_edge:                  ; preds = %block_cc43
  %phitmp = icmp slt i32 %tmp103, 256
  br i1 %phitmp, label %block_ccae, label %block_cca2

block_cca2:                                       ; preds = %block_cc8a.block_cc99_crit_edge
  %tmp108 = call i64 @gzip_error(i8* getelementptr inbounds ([32 x i8]* @global_var_121e8, i32 0, i32 0))
  unreachable

block_ccae.critedge:                              ; preds = %block_cbd4
  br label %block_ccae

block_ccae:                                       ; preds = %block_ccae.critedge, %block_cc8a.block_cc99_crit_edge
  %tmp109 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp110 = sext i32 %tmp109 to i64
  %tmp111 = shl nsw i64 %tmp110, 2
  %tmp112 = add i64 %tmp111, ptrtoint (i64* @global_var_21a300 to i64)
  %tmp113 = inttoptr i64 %tmp112 to i32*
  %tmp114 = load i32* %tmp113
  %tmp115 = zext i32 %tmp114 to i64
  %tmp116 = add nuw nsw i64 %tmp115, 1
  %tmp117 = trunc i64 %tmp116 to i32
  store i32 %tmp117, i32* %tmp113
  %tmp118 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp119 = icmp slt i32 %tmp118, 1
  br i1 %tmp119, label %block_cd5c, label %block_ccf0

block_ccf0:                                       ; preds = %block_ccae, %block_cd4d
  %stack_var_-40.1 = phi i32 [ %tmp145, %block_cd4d ], [ 1, %block_ccae ]
  %stack_var_-36.16 = phi i32 [ %stack_var_-36.0.lcssa, %block_cd4d ], [ 0, %block_ccae ]
  %tmp121 = sext i32 %stack_var_-40.1 to i64
  %tmp122 = shl nsw i64 %tmp121, 2
  %tmp123 = add i64 %tmp122, ptrtoint (i64* @global_var_21a280 to i64)
  %tmp124 = inttoptr i64 %tmp123 to i32*
  store i32 %stack_var_-36.16, i32* %tmp124
  %tmp128 = add i64 %tmp122, ptrtoint (i64* @global_var_21a300 to i64)
  %tmp129 = inttoptr i64 %tmp128 to i32*
  %tmp130 = load i32* %tmp129
  %tmp131 = icmp sgt i32 %tmp130, -1
  %tmp132 = icmp ne i32 %tmp130, 0
  %tmp3 = icmp ne i1 %tmp131, %tmp132
  br i1 %tmp3, label %block_cd4d, label %block_cd26

block_cd26:                                       ; preds = %block_ccf0, %block_cd26
  %stack_var_-36.05 = phi i32 [ %tmp135, %block_cd26 ], [ %stack_var_-36.16, %block_ccf0 ]
  %stack_var_-32.24 = phi i32 [ %tmp141, %block_cd26 ], [ %tmp130, %block_ccf0 ]
  %tmp133 = zext i32 %stack_var_-36.05 to i64
  %tmp134 = add nuw nsw i64 %tmp133, 1
  %tmp135 = trunc i64 %tmp134 to i32
  %tmp136 = call i64 @read_byte()
  %tmp137 = sext i32 %stack_var_-36.05 to i64
  %tmp138 = trunc i64 %tmp136 to i8
  %tmp139 = add i64 %tmp137, ptrtoint (i64* @global_var_21a180 to i64)
  %tmp140 = inttoptr i64 %tmp139 to i8*
  store i8 %tmp138, i8* %tmp140
  %tmp141 = add i32 %stack_var_-32.24, -1
  %tmp142 = icmp sgt i32 %tmp141, -1
  %tmp143 = icmp ne i32 %tmp141, 0
  %tmp = icmp ne i1 %tmp142, %tmp143
  br i1 %tmp, label %block_cd4d, label %block_cd26

block_cd4d:                                       ; preds = %block_cd26, %block_ccf0
  %stack_var_-36.0.lcssa = phi i32 [ %stack_var_-36.16, %block_ccf0 ], [ %tmp135, %block_cd26 ]
  %tmp145 = add i32 %stack_var_-40.1, 1
  %tmp146 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp147 = icmp sgt i32 %tmp145, %tmp146
  br i1 %tmp147, label %block_cd5c, label %block_ccf0

block_cd5c:                                       ; preds = %block_cd4d, %block_ccae
  %tmp148 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp149 = sext i32 %tmp148 to i64
  %tmp150 = shl nsw i64 %tmp149, 2
  %tmp151 = add i64 %tmp150, ptrtoint (i64* @global_var_21a300 to i64)
  %tmp152 = inttoptr i64 %tmp151 to i32*
  %tmp153 = load i32* %tmp152
  %tmp154 = zext i32 %tmp153 to i64
  %tmp155 = add nuw nsw i64 %tmp154, 1
  %tmp156 = trunc i64 %tmp155 to i32
  store i32 %tmp156, i32* %tmp152
  ret i64 ptrtoint (i64* @global_var_21a300 to i64)
}

define i64 @build_tree1() {
block_cd96:
  %tmp41 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp42 = icmp sgt i32 %tmp41, -1
  %tmp43 = icmp ne i32 %tmp41, 0
  %tmp14 = icmp ne i1 %tmp42, %tmp43
  br i1 %tmp14, label %block_ce2e.critedge, label %block_cdb0

block_cdb0:                                       ; preds = %block_cd96, %block_cdb0
  %stack_var_-24.016 = phi i32 [ %tmp56, %block_cdb0 ], [ %tmp41, %block_cd96 ]
  %stack_var_-28.015 = phi i32 [ %phitmp6, %block_cdb0 ], [ 0, %block_cd96 ]
  %tmp44 = sext i32 %stack_var_-24.016 to i64
  %tmp45 = shl nsw i64 %tmp44, 2
  %tmp46 = add i64 %tmp45, ptrtoint (i64* @global_var_21a380 to i64)
  %tmp47 = inttoptr i64 %tmp46 to i32*
  store i32 %stack_var_-28.015, i32* %tmp47
  %tmp48 = add i64 %tmp45, ptrtoint (i64* @global_var_21a280 to i64)
  %tmp49 = inttoptr i64 %tmp48 to i32*
  %tmp50 = load i32* %tmp49
  %tmp51 = sub i32 %tmp50, %stack_var_-28.015
  store i32 %tmp51, i32* %tmp49
  %tmp52 = add i64 %tmp45, ptrtoint (i64* @global_var_21a300 to i64)
  %tmp53 = inttoptr i64 %tmp52 to i32*
  %tmp54 = load i32* %tmp53
  %tmp55 = add i32 %tmp54, %stack_var_-28.015
  %tmp56 = add i32 %stack_var_-24.016, -1
  %phitmp6 = ashr i32 %tmp55, 1
  %tmp57 = icmp sgt i32 %tmp56, -1
  %tmp58 = icmp ne i32 %tmp56, 0
  %tmp = icmp ne i1 %tmp57, %tmp58
  br i1 %tmp, label %block_ce1e.block_ce24_crit_edge, label %block_cdb0

block_ce1e.block_ce24_crit_edge:                  ; preds = %block_cdb0
  %phitmp18 = icmp eq i32 %phitmp6, 1
  br i1 %phitmp18, label %block_ce3a, label %block_ce2e

block_ce2e.critedge:                              ; preds = %block_cd96
  br label %block_ce2e

block_ce2e:                                       ; preds = %block_ce2e.critedge, %block_ce1e.block_ce24_crit_edge
  %tmp59 = call i64 @gzip_error(i8* getelementptr inbounds ([31 x i8]* @global_var_12208, i32 0, i32 0))
  unreachable

block_ce3a:                                       ; preds = %block_ce1e.block_ce24_crit_edge
  %tmp60 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp61 = add i32 %tmp60, -12
  %tmp62 = sub i32 11, %tmp60
  %tmp63 = and i32 %tmp62, %tmp60
  %tmp64 = icmp slt i32 %tmp63, 0
  %tmp65 = icmp slt i32 %tmp61, 0
  %tmp1 = icmp ne i1 %tmp65, %tmp64
  %tmp66 = icmp ne i32 %tmp61, 0
  %tmp67 = icmp ne i1 %tmp66, %tmp1
  %tmp68 = select i1 %tmp67, i32 12, i32 %tmp60
  store i32 %tmp68, i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp69 = and i32 %tmp68, 31
  %tmp70 = icmp eq i32 %tmp69, 0
  br i1 %tmp70, label %bb72, label %bb

bb:                                               ; preds = %block_ce3a
  %tmp71 = shl i32 1, %tmp69
  %phitmp4 = sext i32 %tmp71 to i64
  %phitmp = add i64 %phitmp4, ptrtoint (i64* @global_var_24a8a0 to i64)
  br label %bb72

bb72:                                             ; preds = %block_ce3a, %bb
  %rdx.0 = phi i64 [ add (i64 ptrtoint (i64* @global_var_24a8a0 to i64), i64 1), %block_ce3a ], [ %phitmp, %bb ]
  %tmp73 = load i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp74 = icmp slt i32 %tmp73, 1
  br i1 %tmp74, label %block_ced3, label %block_ce7c

block_ce7c:                                       ; preds = %bb72, %block_cec4
  %stack_var_-16.112 = phi i64 [ %stack_var_-16.0.lcssa, %block_cec4 ], [ %rdx.0, %bb72 ]
  %stack_var_-24.110 = phi i32 [ %tmp102, %block_cec4 ], [ 1, %bb72 ]
  %tmp75 = sext i32 %stack_var_-24.110 to i64
  %tmp76 = shl nsw i64 %tmp75, 2
  %tmp77 = add i64 %tmp76, ptrtoint (i64* @global_var_21a300 to i64)
  %tmp78 = inttoptr i64 %tmp77 to i32*
  %tmp79 = load i32* %tmp78
  %tmp80 = zext i32 %tmp79 to i64
  %tmp81 = load i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp82 = sub i32 %tmp81, %stack_var_-24.110
  %tmp83 = and i32 %tmp82, 31
  %tmp84 = icmp eq i32 %tmp83, 0
  br i1 %tmp84, label %bb88, label %bb85

bb85:                                             ; preds = %block_ce7c
  %tmp86 = shl i32 %tmp79, %tmp83
  %tmp87 = zext i32 %tmp86 to i64
  br label %bb88

bb88:                                             ; preds = %block_ce7c, %bb85
  %rdx.1 = phi i64 [ %tmp80, %block_ce7c ], [ %tmp87, %bb85 ]
  %tmp89 = trunc i64 %rdx.1 to i32
  %tmp90 = icmp eq i32 %tmp89, 0
  br i1 %tmp90, label %block_cec4, label %block_cea7.lr.ph

block_cea7.lr.ph:                                 ; preds = %bb88
  %tmp91 = trunc i32 %stack_var_-24.110 to i8
  %tmp92 = add i32 %tmp89, -1
  br label %block_cea7

block_cea7:                                       ; preds = %block_cea7.lr.ph, %block_cea7
  %stack_var_-20.09 = phi i32 [ %tmp89, %block_cea7.lr.ph ], [ %tmp96, %block_cea7 ]
  %stack_var_-16.08 = phi i64 [ %stack_var_-16.112, %block_cea7.lr.ph ], [ %tmp97, %block_cea7 ]
  %tmp94 = zext i32 %stack_var_-20.09 to i64
  %tmp95 = add nuw nsw i64 %tmp94, 4294967295
  %tmp96 = trunc i64 %tmp95 to i32
  %tmp97 = add i64 %stack_var_-16.08, -1
  %tmp98 = inttoptr i64 %tmp97 to i8*
  store i8 %tmp91, i8* %tmp98
  %tmp99 = icmp eq i32 %tmp96, 0
  br i1 %tmp99, label %block_cec4.loopexit, label %block_cea7

block_cec4.loopexit:                              ; preds = %block_cea7
  %tmp93 = zext i32 %tmp92 to i64
  %tmp100 = add i64 %stack_var_-16.112, -1
  %tmp101 = sub i64 %tmp100, %tmp93
  br label %block_cec4

block_cec4:                                       ; preds = %block_cec4.loopexit, %bb88
  %stack_var_-16.0.lcssa = phi i64 [ %stack_var_-16.112, %bb88 ], [ %tmp101, %block_cec4.loopexit ]
  %tmp102 = add i32 %stack_var_-24.110, 1
  %tmp103 = load i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp104 = icmp sgt i32 %tmp102, %tmp103
  br i1 %tmp104, label %block_ced3, label %block_ce7c

block_ced3:                                       ; preds = %block_cec4, %bb72
  %stack_var_-16.1.lcssa = phi i64 [ %rdx.0, %bb72 ], [ %stack_var_-16.0.lcssa, %block_cec4 ]
  %tmp105 = icmp ugt i64 %stack_var_-16.1.lcssa, ptrtoint (i64* @global_var_24a8a0 to i64)
  br i1 %tmp105, label %block_ced5, label %block_ceee

block_ced5:                                       ; preds = %block_ced3, %block_ced5
  %stack_var_-16.27 = phi i64 [ %tmp106, %block_ced5 ], [ %stack_var_-16.1.lcssa, %block_ced3 ]
  %tmp106 = add i64 %stack_var_-16.27, -1
  %tmp107 = inttoptr i64 %tmp106 to i8*
  store i8 0, i8* %tmp107
  %tmp108 = icmp ugt i64 %tmp106, ptrtoint (i64* @global_var_24a8a0 to i64)
  br i1 %tmp108, label %block_ced5, label %block_ceee

block_ceee:                                       ; preds = %block_ced5, %block_ced3
  ret i64 ptrtoint (i64* @global_var_24a8a0 to i64)
}

define i64 @unpack(i32 %arg1, i64 %arg2) {
block_cef1:
  %tmp20 = sext i32 %arg1 to i64
  %tmp40 = trunc i64 %arg2 to i32
  store i32 %arg1, i32* bitcast (i64* @global_var_24f0a0 to i32*)
  store i32 %tmp40, i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp41 = call i64 @read_tree(i64 %tmp20, i64 %arg2)
  %tmp42 = call i64 @build_tree1()
  store i32 0, i32* bitcast (i64* @global_var_21a3f8 to i32*)
  store i64 0, i64* @global_var_21a3f0
  %tmp43 = load i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp44 = and i32 %tmp43, 31
  %tmp45 = icmp eq i32 %tmp44, 0
  br i1 %tmp45, label %bb48, label %bb

bb:                                               ; preds = %block_cef1
  %tmp46 = shl i32 1, %tmp44
  %tmp47 = zext i32 %tmp46 to i64
  br label %bb48

bb48:                                             ; preds = %block_cef1, %bb
  %rdx.0 = phi i64 [ 1, %block_cef1 ], [ %tmp47, %bb ]
  %tmp49 = trunc i64 %rdx.0 to i32
  %tmp50 = add i32 %tmp49, -1
  %tmp51 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp52 = sext i32 %tmp51 to i64
  %tmp53 = shl nsw i64 %tmp52, 2
  %tmp54 = add i64 %tmp53, ptrtoint (i64* @global_var_21a300 to i64)
  %tmp55 = inttoptr i64 %tmp54 to i32*
  %tmp56 = load i32* %tmp55
  %tmp57 = add i32 %tmp56, -1
  %tmp58 = zext i32 %tmp50 to i64
  br label %block_cf99

block_cf6a:                                       ; preds = %block_cf99
  %tmp59 = load i64* @global_var_21a3f0
  %tmp60 = shl i64 %tmp59, 8
  %tmp61 = call i64 @read_byte()
  %tmp62 = and i64 %tmp61, 255
  %tmp63 = or i64 %tmp62, %tmp60
  store i64 %tmp63, i64* @global_var_21a3f0
  store i32 ptrtoint (i64* @global_var_21a400 to i32), i32* bitcast (i64* @global_var_21a3f8 to i32*)
  br label %block_cf99

block_cf99:                                       ; preds = %block_d0fe, %block_cf6a, %bb48
  %tmp64 = load i32* bitcast (i64* @global_var_21a3f8 to i32*)
  %tmp65 = load i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp66 = icmp slt i32 %tmp64, %tmp65
  br i1 %tmp66, label %block_cf6a, label %block_cfa9

block_cfa9:                                       ; preds = %block_cf99
  %tmp67 = load i64* @global_var_21a3f0
  %tmp68 = load i32* bitcast (i64* @global_var_21a3f8 to i32*)
  %tmp69 = load i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp70 = sub i32 %tmp68, %tmp69
  %tmp71 = zext i32 %tmp70 to i64
  %tmp72 = and i64 %tmp71, 63
  %tmp73 = lshr i64 %tmp67, %tmp72
  %tmp74 = trunc i64 %tmp73 to i32
  %tmp75 = and i32 %tmp74, %tmp50
  %tmp76 = zext i32 %tmp75 to i64
  %tmp77 = add i64 %tmp76, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp78 = inttoptr i64 %tmp77 to i8*
  %tmp79 = load i8* %tmp78
  %tmp80 = zext i8 %tmp79 to i32
  %tmp81 = icmp eq i8 %tmp79, 0
  br i1 %tmp81, label %block_cff8, label %block_cfe6

block_cfe6:                                       ; preds = %block_cfa9
  %tmp82 = load i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp83 = sub i32 %tmp82, %tmp80
  %tmp84 = and i32 %tmp83, 31
  %tmp85 = icmp eq i32 %tmp84, 0
  br i1 %tmp85, label %bb89, label %bb86

bb86:                                             ; preds = %block_cfe6
  %tmp87 = lshr i32 %tmp75, %tmp84
  %tmp88 = zext i32 %tmp87 to i64
  br label %bb89

bb89:                                             ; preds = %block_cfe6, %bb86
  %rbx.0 = phi i64 [ %tmp76, %block_cfe6 ], [ %tmp88, %bb86 ]
  br label %block_d09a

block_cff8:                                       ; preds = %block_cfa9
  %tmp90 = load i32* bitcast (i64* @global_var_21a3e8 to i32*)
  %tmp91 = sext i32 %tmp90 to i64
  %tmp92 = shl nsw i64 %tmp91, 2
  %tmp93 = add i64 %tmp92, ptrtoint (i64* @global_var_21a380 to i64)
  %tmp94 = inttoptr i64 %tmp93 to i32*
  %tmp95 = load i32* %tmp94
  %tmp96 = icmp ult i32 %tmp75, %tmp95
  br i1 %tmp96, label %block_d00a, label %block_d09a

block_d00a:                                       ; preds = %block_cff8, %block_d059
  %stack_var_-32.04 = phi i64 [ %tmp99, %block_d059 ], [ %tmp58, %block_cff8 ]
  %stack_var_-44.03 = phi i32 [ %tmp97, %block_d059 ], [ %tmp90, %block_cff8 ]
  %tmp97 = add i32 %stack_var_-44.03, 1
  %tmp98 = shl i64 %stack_var_-32.04, 1
  %tmp99 = or i64 %tmp98, 1
  %tmp100 = load i32* bitcast (i64* @global_var_21a3f8 to i32*)
  %tmp101 = icmp sgt i32 %tmp97, %tmp100
  br i1 %tmp101, label %block_d01f.preheader, label %block_d059

block_d01f.preheader:                             ; preds = %block_d00a
  %tmp107 = icmp sgt i32 %tmp97, ptrtoint (i64* @global_var_21a400 to i32)
  br label %block_d01f

block_d01f:                                       ; preds = %block_d01f.preheader, %block_d01f
  %tmp102 = load i64* @global_var_21a3f0
  %tmp103 = shl i64 %tmp102, 8
  %tmp104 = call i64 @read_byte()
  %tmp105 = and i64 %tmp104, 255
  %tmp106 = or i64 %tmp105, %tmp103
  store i64 %tmp106, i64* @global_var_21a3f0
  store i32 ptrtoint (i64* @global_var_21a400 to i32), i32* bitcast (i64* @global_var_21a3f8 to i32*)
  br i1 %tmp107, label %block_d01f, label %block_d059

block_d059:                                       ; preds = %block_d01f, %block_d00a
  %tmp108 = load i64* @global_var_21a3f0
  %tmp109 = load i32* bitcast (i64* @global_var_21a3f8 to i32*)
  %tmp110 = sub i32 %tmp109, %tmp97
  %tmp111 = zext i32 %tmp110 to i64
  %tmp112 = and i64 %tmp111, 63
  %tmp113 = lshr i64 %tmp108, %tmp112
  %tmp114 = and i64 %tmp99, 4294967295
  %tmp115 = and i64 %tmp114, %tmp113
  %tmp116 = sext i32 %tmp97 to i64
  %tmp117 = shl nsw i64 %tmp116, 2
  %tmp118 = add i64 %tmp117, ptrtoint (i64* @global_var_21a380 to i64)
  %tmp119 = inttoptr i64 %tmp118 to i32*
  %tmp120 = load i32* %tmp119
  %tmp121 = trunc i64 %tmp115 to i32
  %tmp122 = icmp ult i32 %tmp121, %tmp120
  br i1 %tmp122, label %block_d00a, label %block_d09a

block_d09a:                                       ; preds = %block_d059, %block_cff8, %bb89
  %stack_var_-44.1 = phi i32 [ %tmp80, %bb89 ], [ %tmp90, %block_cff8 ], [ %tmp97, %block_d059 ]
  %rbx.2 = phi i64 [ %rbx.0, %bb89 ], [ %tmp76, %block_cff8 ], [ %tmp115, %block_d059 ]
  %tmp123 = trunc i64 %rbx.2 to i32
  %tmp124 = icmp eq i32 %tmp123, %tmp57
  br i1 %tmp124, label %block_d09f, label %block_d0aa

block_d09f:                                       ; preds = %block_d09a
  %tmp125 = load i32* bitcast (i64* @global_var_21a168 to i32*)
  %tmp126 = icmp eq i32 %stack_var_-44.1, %tmp125
  br i1 %tmp126, label %block_d112, label %block_d0aa

block_d0aa:                                       ; preds = %block_d09a, %block_d09f
  %tmp127 = sext i32 %stack_var_-44.1 to i64
  %tmp128 = shl nsw i64 %tmp127, 2
  %tmp129 = add i64 %tmp128, ptrtoint (i64* @global_var_21a280 to i64)
  %tmp130 = inttoptr i64 %tmp129 to i32*
  %tmp131 = load i32* %tmp130
  %tmp132 = zext i32 %tmp131 to i64
  %tmp133 = add nsw i64 %tmp132, %rbx.2
  %tmp134 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp135 = and i64 %tmp133, 4294967295
  %tmp136 = add i64 %tmp135, ptrtoint (i64* @global_var_21a180 to i64)
  %tmp137 = inttoptr i64 %tmp136 to i8*
  %tmp138 = load i8* %tmp137
  %tmp139 = zext i32 %tmp134 to i64
  %tmp140 = add i64 %tmp139, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp141 = inttoptr i64 %tmp140 to i8*
  store i8 %tmp138, i8* %tmp141
  %tmp142 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp143 = icmp eq i32 %tmp142, 32768
  br i1 %tmp143, label %block_d0f9, label %block_d0fe

block_d0f9:                                       ; preds = %block_d0aa
  %tmp144 = call i64 @flush_window()
  br label %block_d0fe

block_d0fe:                                       ; preds = %block_d0aa, %block_d0f9
  %tmp145 = load i32* bitcast (i64* @global_var_21a3f8 to i32*)
  %tmp146 = sub i32 %tmp145, %stack_var_-44.1
  store i32 %tmp146, i32* bitcast (i64* @global_var_21a3f8 to i32*)
  br label %block_cf99

block_d112:                                       ; preds = %block_d09f
  %tmp147 = call i64 @flush_window()
  %tmp148 = load i64* @global_var_25f4c0
  %tmp149 = and i64 %tmp148, 4294967295
  %tmp150 = load i64* @global_var_21a160
  %tmp151 = icmp eq i64 %tmp149, %tmp150
  br i1 %tmp151, label %block_d139, label %block_d12d

block_d12d:                                       ; preds = %block_d112
  %tmp152 = call i64 @gzip_error(i8* getelementptr inbounds ([38 x i8]* @global_var_12228, i32 0, i32 0))
  unreachable

block_d139:                                       ; preds = %block_d112
  ret i64 0
}

define i64 @check_zipfile(i32 %arg1) {
block_d145:
  %tmp19 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp20 = zext i32 %tmp19 to i64
  %tmp21 = add i64 %tmp20, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp22 = inttoptr i64 %tmp21 to i8*
  store i32 %arg1, i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp23 = ptrtoint i8* %tmp22 to i64
  %tmp24 = add i64 %tmp23, 26
  %tmp25 = inttoptr i64 %tmp24 to i8*
  %tmp26 = load i8* %tmp25
  %tmp27 = add i64 %tmp23, 27
  %tmp28 = inttoptr i64 %tmp27 to i8*
  %tmp29 = load i8* %tmp28
  %tmp30 = zext i8 %tmp29 to i32
  %tmp31 = shl nuw nsw i32 %tmp30, 8
  %tmp32 = zext i8 %tmp26 to i32
  %tmp33 = or i32 %tmp31, %tmp32
  %tmp34 = zext i32 %tmp33 to i64
  %tmp35 = add nuw nsw i64 %tmp34, 30
  %tmp36 = trunc i64 %tmp35 to i32
  %tmp37 = add i64 %tmp23, 28
  %tmp38 = inttoptr i64 %tmp37 to i8*
  %tmp39 = load i8* %tmp38
  %tmp40 = add i64 %tmp23, 29
  %tmp41 = inttoptr i64 %tmp40 to i8*
  %tmp42 = load i8* %tmp41
  %tmp43 = zext i8 %tmp42 to i32
  %tmp44 = shl nuw nsw i32 %tmp43, 8
  %tmp45 = zext i8 %tmp39 to i32
  %tmp46 = or i32 %tmp44, %tmp45
  %tmp47 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp48 = add i32 %tmp46, %tmp47
  %tmp49 = add i32 %tmp48, %tmp36
  store i32 %tmp49, i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp50 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp51 = icmp ugt i32 %tmp49, %tmp50
  br i1 %tmp51, label %block_d228, label %block_d1d6

block_d1d6:                                       ; preds = %block_d145
  %tmp52 = load i8* %tmp22
  %tmp53 = add i64 %tmp23, 1
  %tmp54 = inttoptr i64 %tmp53 to i8*
  %tmp55 = load i8* %tmp54
  %tmp56 = zext i8 %tmp55 to i32
  %tmp57 = shl nuw nsw i32 %tmp56, 8
  %tmp58 = zext i8 %tmp52 to i32
  %tmp59 = or i32 %tmp57, %tmp58
  %tmp60 = zext i32 %tmp59 to i64
  %tmp61 = add i64 %tmp23, 2
  %tmp62 = inttoptr i64 %tmp61 to i8*
  %tmp63 = load i8* %tmp62
  %tmp64 = add i64 %tmp23, 3
  %tmp65 = inttoptr i64 %tmp64 to i8*
  %tmp66 = load i8* %tmp65
  %tmp67 = zext i8 %tmp66 to i32
  %tmp68 = shl nuw nsw i32 %tmp67, 8
  %tmp69 = zext i8 %tmp63 to i32
  %tmp70 = or i32 %tmp68, %tmp69
  %tmp71 = zext i32 %tmp70 to i64
  %tmp72 = shl nuw nsw i64 %tmp71, 16
  %tmp73 = or i64 %tmp72, %tmp60
  %tmp74 = icmp eq i64 %tmp73, 67324752
  br i1 %tmp74, label %block_d265, label %block_d228

block_d228:                                       ; preds = %block_d1d6, %block_d145
  %tmp75 = load i64* @global_var_25f4c8
  %tmp76 = load i64* @global_var_216580
  %tmp77 = inttoptr i64 %tmp76 to %_IO_FILE*
  %tmp78 = inttoptr i64 %tmp75 to i8*
  %tmp79 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp77, i8* getelementptr inbounds ([31 x i8]* @global_var_12250, i32 0, i32 0), i8* %tmp78, i8* bitcast (i64* @global_var_21a460 to i8*))
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_d354

block_d265:                                       ; preds = %block_d1d6
  %tmp80 = add i64 %tmp23, 8
  %tmp81 = inttoptr i64 %tmp80 to i8*
  %tmp82 = load i8* %tmp81
  %tmp83 = zext i8 %tmp82 to i32
  store i32 %tmp83, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp84 = icmp eq i8 %tmp82, 0
  br i1 %tmp84, label %block_d2cb, label %block_d283

block_d283:                                       ; preds = %block_d265
  %tmp85 = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp86 = icmp eq i32 %tmp85, 8
  br i1 %tmp86, label %block_d2cb, label %block_d28e

block_d28e:                                       ; preds = %block_d283
  %tmp87 = load i64* @global_var_25f4c8
  %tmp88 = load i64* @global_var_216580
  %tmp89 = inttoptr i64 %tmp88 to %_IO_FILE*
  %tmp90 = inttoptr i64 %tmp87 to i8*
  %tmp91 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp89, i8* getelementptr inbounds ([58 x i8]* @global_var_12270, i32 0, i32 0), i8* %tmp90, i8* bitcast (i64* @global_var_21a460 to i8*))
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_d354

block_d2cb:                                       ; preds = %block_d283, %block_d265
  %tmp92 = add i64 %tmp23, 6
  %tmp93 = inttoptr i64 %tmp92 to i8*
  %tmp94 = load i8* %tmp93
  %tmp95 = zext i8 %tmp94 to i32
  %tmp96 = and i32 %tmp95, 1
  store i32 %tmp96, i32* bitcast (i64* @global_var_21a3fc to i32*)
  %tmp97 = icmp eq i32 %tmp96, 0
  br i1 %tmp97, label %block_d326, label %block_d2ec

block_d2ec:                                       ; preds = %block_d2cb
  %tmp98 = load i64* @global_var_25f4c8
  %tmp99 = load i64* @global_var_216580
  %tmp100 = inttoptr i64 %tmp99 to %_IO_FILE*
  %tmp101 = inttoptr i64 %tmp98 to i8*
  %tmp102 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp100, i8* getelementptr inbounds ([38 x i8]* @global_var_122b0, i32 0, i32 0), i8* %tmp101, i8* bitcast (i64* @global_var_21a460 to i8*))
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_d354

block_d326:                                       ; preds = %block_d2cb
  %tmp103 = load i8* %tmp93
  %tmp104 = zext i8 %tmp103 to i32
  %tmp105 = lshr i32 %tmp104, 3
  %tmp106 = and i32 %tmp105, 1
  store i32 %tmp106, i32* bitcast (i64* @global_var_21a404 to i32*)
  store i32 1, i32* bitcast (i64* @global_var_21a400 to i32*)
  br label %block_d354

block_d354:                                       ; preds = %block_d326, %block_d2ec, %block_d28e, %block_d228
  %rax.0 = phi i64 [ 1, %block_d228 ], [ 0, %block_d326 ], [ 1, %block_d2ec ], [ 1, %block_d28e ]
  ret i64 %rax.0
}

define i64 @unzip(i32 %arg1, i64 %arg2) {
block_d356:
  %0 = alloca i32
  %1 = load i32* %0
  %2 = load i32* %0
  %3 = load i32* %0
  %4 = load i32* %0
  %5 = load i32* %0
  %6 = load i32* %0
  %7 = load i32* %0
  %8 = load i32* %0
  %9 = load i32* %0
  %10 = load i32* %0
  %11 = load i32* %0
  %12 = load i32* %0
  %stack_var_-8 = alloca i64
  %tmp72 = ptrtoint i64* %stack_var_-8 to i64
  %tmp73 = trunc i64 %arg2 to i32
  %tmp74 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  store i32 %arg1, i32* bitcast (i64* @global_var_24f0a0 to i32*)
  store i32 %tmp73, i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp75 = call i64 @updcrc(i8* null, i32 0)
  %tmp76 = load i32* bitcast (i64* @global_var_21a400 to i32*)
  %tmp77 = icmp eq i32 %tmp76, 0
  br i1 %tmp77, label %block_d44c, label %block_d3ba

block_d3ba:                                       ; preds = %block_d356
  %tmp78 = load i32* bitcast (i64* @global_var_21a404 to i32*)
  %tmp79 = icmp eq i32 %tmp78, 0
  br i1 %tmp79, label %block_d3c8, label %block_d44c

block_d3c8:                                       ; preds = %block_d3ba
  %tmp80 = load i8* bitcast (i64* @global_var_25f50e to i8*)
  %tmp81 = load i8* bitcast (i64* @global_var_25f50f to i8*)
  %tmp82 = zext i8 %tmp81 to i32
  %tmp83 = shl nuw nsw i32 %tmp82, 8
  %tmp84 = zext i8 %tmp80 to i32
  %tmp85 = or i32 %tmp83, %tmp84
  %tmp86 = zext i32 %tmp85 to i64
  %tmp87 = load i8* bitcast (i64* @global_var_25f510 to i8*)
  %tmp88 = load i8* bitcast (i64* @global_var_25f511 to i8*)
  %tmp89 = zext i8 %tmp88 to i32
  %tmp90 = shl nuw nsw i32 %tmp89, 8
  %tmp91 = zext i8 %tmp87 to i32
  %tmp92 = or i32 %tmp90, %tmp91
  %tmp93 = zext i32 %tmp92 to i64
  %tmp94 = shl nuw nsw i64 %tmp93, 16
  %tmp95 = or i64 %tmp94, %tmp86
  %tmp96 = load i8* bitcast (i64* @global_var_25f516 to i8*)
  %tmp97 = load i8* bitcast (i64* @global_var_25f517 to i8*)
  %tmp98 = zext i8 %tmp97 to i32
  %tmp99 = shl nuw nsw i32 %tmp98, 8
  %tmp100 = zext i8 %tmp96 to i32
  %tmp101 = or i32 %tmp99, %tmp100
  %tmp102 = zext i32 %tmp101 to i64
  %tmp103 = load i8* bitcast (i64* @global_var_25f518 to i8*)
  %tmp104 = load i8* bitcast (i64* @global_var_25f519 to i8*)
  %tmp105 = zext i8 %tmp104 to i32
  %tmp106 = shl nuw nsw i32 %tmp105, 8
  %tmp107 = zext i8 %tmp103 to i32
  %tmp108 = or i32 %tmp106, %tmp107
  %tmp109 = zext i32 %tmp108 to i64
  %tmp110 = shl nuw nsw i64 %tmp109, 16
  %tmp111 = or i64 %tmp110, %tmp102
  br label %block_d44c

block_d44c:                                       ; preds = %block_d3ba, %block_d3c8, %block_d356
  %stack_var_-64.0 = phi i64 [ 0, %block_d356 ], [ 0, %block_d3ba ], [ %tmp111, %block_d3c8 ]
  %stack_var_-72.0 = phi i64 [ 0, %block_d356 ], [ 0, %block_d3ba ], [ %tmp95, %block_d3c8 ]
  %tmp112 = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp113 = icmp eq i32 %tmp112, 8
  br i1 %tmp113, label %block_d457, label %block_d480

block_d457:                                       ; preds = %block_d44c
  %tmp114 = call i32 @inflate(%z_stream_s* null, i32 0)
  %tmp115 = icmp eq i32 %tmp114, 3
  br i1 %tmp115, label %block_d465, label %block_d46a

block_d465:                                       ; preds = %block_d457
  %tmp116 = call i64 @xalloc_die()
  unreachable

block_d46a:                                       ; preds = %block_d457
  %tmp117 = icmp eq i32 %tmp114, 0
  br i1 %tmp117, label %block_d636, label %block_d474

block_d474:                                       ; preds = %block_d46a
  %tmp118 = call i64 @gzip_error(i8* getelementptr inbounds ([41 x i8]* @global_var_122d8, i32 0, i32 0))
  unreachable

block_d480:                                       ; preds = %block_d44c
  %tmp119 = load i32* bitcast (i64* @global_var_21a400 to i32*)
  %tmp120 = icmp eq i32 %tmp119, 0
  br i1 %tmp120, label %block_d62a, label %block_d48e

block_d48e:                                       ; preds = %block_d480
  %tmp121 = load i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  %tmp122 = icmp eq i32 %tmp121, 0
  br i1 %tmp122, label %block_d49c, label %block_d62a

block_d49c:                                       ; preds = %block_d48e
  %tmp123 = load i8* bitcast (i64* @global_var_25f516 to i8*)
  %tmp124 = load i8* bitcast (i64* @global_var_25f517 to i8*)
  %tmp125 = zext i8 %tmp124 to i32
  %tmp126 = shl nuw nsw i32 %tmp125, 8
  %tmp127 = zext i8 %tmp123 to i32
  %tmp128 = or i32 %tmp126, %tmp127
  %tmp129 = zext i32 %tmp128 to i64
  %tmp130 = load i8* bitcast (i64* @global_var_25f518 to i8*)
  %tmp131 = load i8* bitcast (i64* @global_var_25f519 to i8*)
  %tmp132 = zext i8 %tmp131 to i32
  %tmp133 = shl nuw nsw i32 %tmp132, 8
  %tmp134 = zext i8 %tmp130 to i32
  %tmp135 = or i32 %tmp133, %tmp134
  %tmp136 = zext i32 %tmp135 to i64
  %tmp137 = shl nuw nsw i64 %tmp136, 16
  %tmp138 = or i64 %tmp137, %tmp129
  %tmp139 = load i8* bitcast (i64* @global_var_25f512 to i8*)
  %tmp140 = load i8* bitcast (i64* @global_var_25f513 to i8*)
  %tmp141 = zext i8 %tmp140 to i32
  %tmp142 = shl nuw nsw i32 %tmp141, 8
  %tmp143 = zext i8 %tmp139 to i32
  %tmp144 = or i32 %tmp142, %tmp143
  %tmp145 = zext i32 %tmp144 to i64
  %tmp146 = load i8* bitcast (i64* @global_var_25f514 to i8*)
  %tmp147 = load i8* bitcast (i64* @global_var_25f515 to i8*)
  %tmp148 = zext i8 %tmp147 to i32
  %tmp149 = shl nuw nsw i32 %tmp148, 8
  %tmp150 = zext i8 %tmp146 to i32
  %tmp151 = or i32 %tmp149, %tmp150
  %tmp152 = zext i32 %tmp151 to i64
  %tmp153 = shl nuw nsw i64 %tmp152, 16
  %tmp154 = or i64 %tmp153, %tmp145
  %tmp155 = load i32* bitcast (i64* @global_var_21a3fc to i32*)
  %tmp156 = icmp eq i32 %tmp155, 0
  br i1 %tmp156, label %block_d52c, label %block_d525

block_d525:                                       ; preds = %block_d49c
  br label %block_d531

block_d52c:                                       ; preds = %block_d49c
  br label %block_d531

block_d531:                                       ; preds = %block_d52c, %block_d525
  %rax.0 = phi i64 [ 0, %block_d52c ], [ 12, %block_d525 ]
  %tmp157 = sub nsw i64 %tmp154, %rax.0
  %tmp158 = icmp eq i64 %tmp138, %tmp157
  br i1 %tmp158, label %block_d617.preheader, label %block_d540

block_d617.preheader:                             ; preds = %block_d531
  %tmp159 = icmp eq i64 %tmp138, 0
  br i1 %tmp159, label %block_d623, label %block_d5ab

block_d540:                                       ; preds = %block_d531
  %tmp160 = load i8* bitcast (i64* @global_var_25f512 to i8*)
  %tmp161 = load i8* bitcast (i64* @global_var_25f513 to i8*)
  %tmp162 = zext i8 %tmp161 to i32
  %tmp163 = shl nuw nsw i32 %tmp162, 8
  %tmp164 = zext i8 %tmp160 to i32
  %tmp165 = or i32 %tmp163, %tmp164
  %tmp166 = zext i32 %tmp165 to i64
  %tmp167 = load i8* bitcast (i64* @global_var_25f514 to i8*)
  %tmp168 = load i8* bitcast (i64* @global_var_25f515 to i8*)
  %tmp169 = zext i8 %tmp168 to i32
  %tmp170 = shl nuw nsw i32 %tmp169, 8
  %tmp171 = zext i8 %tmp167 to i32
  %tmp172 = or i32 %tmp170, %tmp171
  %tmp173 = zext i32 %tmp172 to i64
  %tmp174 = shl nuw nsw i64 %tmp173, 16
  %tmp175 = or i64 %tmp174, %tmp166
  %tmp176 = load i64* @global_var_216580
  %tmp177 = inttoptr i64 %tmp176 to %_IO_FILE*
  %tmp178 = trunc i64 %tmp138 to i32
  %tmp179 = trunc i64 %tmp175 to i32
  %tmp180 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp177, i8* getelementptr inbounds ([18 x i8]* @global_var_12301, i32 0, i32 0), i32 %tmp178, i32 %tmp179)
  %tmp181 = call i64 @gzip_error(i8* getelementptr inbounds ([41 x i8]* @global_var_12318, i32 0, i32 0))
  unreachable

block_d5ab:                                       ; preds = %block_d617.preheader, %block_d617.backedge
  %.in = phi i64 [ %tmp182, %block_d617.backedge ], [ %tmp138, %block_d617.preheader ]
  %tmp182 = add i64 %.in, -1
  %tmp183 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp184 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp185 = icmp ult i32 %tmp183, %tmp184
  br i1 %tmp185, label %block_d5bb, label %block_d5d9

block_d5bb:                                       ; preds = %block_d5ab
  %tmp186 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp187 = zext i32 %tmp186 to i64
  %tmp188 = add i64 %tmp187, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp189 = inttoptr i64 %tmp188 to i8*
  %tmp190 = load i8* %tmp189
  %tmp191 = zext i8 %tmp190 to i64
  br label %block_d5e3

block_d5d9:                                       ; preds = %block_d5ab
  %tmp192 = call i64 @fill_inbuf(i32 0)
  br label %block_d5e3

block_d5e3:                                       ; preds = %block_d5d9, %block_d5bb
  %rax.1 = phi i64 [ %tmp192, %block_d5d9 ], [ %tmp191, %block_d5bb ]
  %tmp193 = trunc i64 %rax.1 to i8
  %tmp194 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp195 = zext i32 %tmp194 to i64
  %tmp196 = add i64 %tmp195, ptrtoint (i64* @global_var_24f4c0 to i64)
  %tmp197 = inttoptr i64 %tmp196 to i8*
  store i8 %tmp193, i8* %tmp197
  %tmp198 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp199 = icmp eq i32 %tmp198, 32768
  br i1 %tmp199, label %block_d612, label %block_d617.backedge

block_d612:                                       ; preds = %block_d5e3
  %tmp200 = call i64 @flush_window()
  br label %block_d617.backedge

block_d617.backedge:                              ; preds = %block_d612, %block_d5e3
  %tmp201 = icmp eq i64 %tmp182, 0
  br i1 %tmp201, label %block_d623, label %block_d5ab

block_d623:                                       ; preds = %block_d617.backedge, %block_d617.preheader
  %tmp202 = call i64 @flush_window()
  br label %block_d636

block_d62a:                                       ; preds = %block_d48e, %block_d480
  %tmp203 = call i64 @gzip_error(i8* getelementptr inbounds ([31 x i8]* @global_var_12348, i32 0, i32 0))
  unreachable

block_d636:                                       ; preds = %block_d623, %block_d46a
  %tmp204 = load i32* bitcast (i64* @global_var_21a400 to i32*)
  %tmp205 = icmp eq i32 %tmp204, 0
  br i1 %tmp205, label %block_d644, label %block_d70a

block_d644:                                       ; preds = %block_d636
  %tmp206 = add i64 %tmp72, -48
  br label %block_d64d

block_d64d:                                       ; preds = %block_d685, %block_d644
  %indvars.iv = phi i64 [ 0, %block_d644 ], [ %indvars.iv.next, %block_d685 ]
  %tmp207 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp208 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp209 = icmp ult i32 %tmp207, %tmp208
  br i1 %tmp209, label %block_d65d, label %block_d67b

block_d65d:                                       ; preds = %block_d64d
  %tmp210 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp211 = zext i32 %tmp210 to i64
  %tmp212 = add i64 %tmp211, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp213 = inttoptr i64 %tmp212 to i8*
  %tmp214 = load i8* %tmp213
  %tmp215 = zext i8 %tmp214 to i64
  br label %block_d685

block_d67b:                                       ; preds = %block_d64d
  %tmp216 = call i64 @fill_inbuf(i32 0)
  br label %block_d685

block_d685:                                       ; preds = %block_d67b, %block_d65d
  %rax.2 = phi i64 [ %tmp216, %block_d67b ], [ %tmp215, %block_d65d ]
  %tmp217 = trunc i64 %rax.2 to i8
  %tmp218 = add i64 %tmp206, %indvars.iv
  %tmp219 = inttoptr i64 %tmp218 to i8*
  store i8 %tmp217, i8* %tmp219
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %block_d699, label %block_d64d

block_d699:                                       ; preds = %block_d685
  %tmp220 = shl i32 %11, 8
  %tmp221 = and i32 %tmp220, 65280
  %tmp222 = and i32 %12, 255
  %tmp223 = or i32 %tmp222, %tmp221
  %tmp224 = zext i32 %tmp223 to i64
  %tmp225 = shl i32 %9, 8
  %tmp226 = and i32 %tmp225, 65280
  %tmp227 = and i32 %10, 255
  %tmp228 = or i32 %tmp227, %tmp226
  %tmp229 = zext i32 %tmp228 to i64
  %tmp230 = shl nuw nsw i64 %tmp229, 16
  %tmp231 = or i64 %tmp224, %tmp230
  %tmp232 = shl i32 %7, 8
  %tmp233 = and i32 %tmp232, 65280
  %tmp234 = and i32 %8, 255
  %tmp235 = or i32 %tmp234, %tmp233
  %tmp236 = zext i32 %tmp235 to i64
  %tmp237 = shl i32 %5, 8
  %tmp238 = and i32 %tmp237, 65280
  %tmp239 = and i32 %6, 255
  %tmp240 = or i32 %tmp239, %tmp238
  %tmp241 = zext i32 %tmp240 to i64
  %tmp242 = shl nuw nsw i64 %tmp241, 16
  %tmp243 = or i64 %tmp236, %tmp242
  br label %block_d7d9

block_d70a:                                       ; preds = %block_d636
  %tmp244 = load i32* bitcast (i64* @global_var_21a404 to i32*)
  %tmp245 = icmp eq i32 %tmp244, 0
  br i1 %tmp245, label %block_d7d9, label %block_d718

block_d718:                                       ; preds = %block_d70a
  %tmp246 = add i64 %tmp72, -48
  br label %block_d721

block_d721:                                       ; preds = %block_d759, %block_d718
  %indvars.iv15 = phi i64 [ 0, %block_d718 ], [ %indvars.iv.next16, %block_d759 ]
  %tmp247 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp248 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp249 = icmp ult i32 %tmp247, %tmp248
  br i1 %tmp249, label %block_d731, label %block_d74f

block_d731:                                       ; preds = %block_d721
  %tmp250 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 ptrtoint (i64* @global_var_24a885 to i32), i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp251 = zext i32 %tmp250 to i64
  %tmp252 = add i64 %tmp251, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp253 = inttoptr i64 %tmp252 to i8*
  %tmp254 = load i8* %tmp253
  %tmp255 = zext i8 %tmp254 to i64
  br label %block_d759

block_d74f:                                       ; preds = %block_d721
  %tmp256 = call i64 @fill_inbuf(i32 0)
  br label %block_d759

block_d759:                                       ; preds = %block_d74f, %block_d731
  %rax.3 = phi i64 [ %tmp256, %block_d74f ], [ %tmp255, %block_d731 ]
  %tmp257 = trunc i64 %rax.3 to i8
  %tmp258 = add i64 %tmp246, %indvars.iv15
  %tmp259 = inttoptr i64 %tmp258 to i8*
  store i8 %tmp257, i8* %tmp259
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 16
  br i1 %exitcond17, label %block_d76d, label %block_d721

block_d76d:                                       ; preds = %block_d759
  %tmp260 = shl i32 %7, 8
  %tmp261 = and i32 %tmp260, 65280
  %tmp262 = and i32 %8, 255
  %tmp263 = or i32 %tmp262, %tmp261
  %tmp264 = zext i32 %tmp263 to i64
  %tmp265 = shl i32 %5, 8
  %tmp266 = and i32 %tmp265, 65280
  %tmp267 = and i32 %6, 255
  %tmp268 = or i32 %tmp267, %tmp266
  %tmp269 = zext i32 %tmp268 to i64
  %tmp270 = shl nuw nsw i64 %tmp269, 16
  %tmp271 = or i64 %tmp264, %tmp270
  %tmp272 = shl i32 %3, 8
  %tmp273 = and i32 %tmp272, 65280
  %tmp274 = and i32 %4, 255
  %tmp275 = or i32 %tmp274, %tmp273
  %tmp276 = zext i32 %tmp275 to i64
  %tmp277 = shl i32 %1, 8
  %tmp278 = and i32 %tmp277, 65280
  %tmp279 = and i32 %2, 255
  %tmp280 = or i32 %tmp279, %tmp278
  %tmp281 = zext i32 %tmp280 to i64
  %tmp282 = shl nuw nsw i64 %tmp281, 16
  %tmp283 = or i64 %tmp276, %tmp282
  br label %block_d7d9

block_d7d9:                                       ; preds = %block_d76d, %block_d70a, %block_d699
  %stack_var_-64.1 = phi i64 [ %stack_var_-64.0, %block_d70a ], [ %tmp283, %block_d76d ], [ %tmp243, %block_d699 ]
  %stack_var_-72.1 = phi i64 [ %stack_var_-72.0, %block_d70a ], [ %tmp271, %block_d76d ], [ %tmp231, %block_d699 ]
  %tmp284 = call i64 @updcrc(i8* bitcast (i64* @global_var_24a8a0 to i8*), i32 0)
  %tmp285 = icmp eq i64 %stack_var_-72.1, %tmp284
  br i1 %tmp285, label %block_d820, label %block_d7f0

block_d7f0:                                       ; preds = %block_d7d9
  %tmp286 = load i64* @global_var_25f4c8
  %tmp287 = load i64* @global_var_216580
  %tmp288 = inttoptr i64 %tmp287 to %_IO_FILE*
  %tmp289 = inttoptr i64 %tmp286 to i8*
  %tmp290 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp288, i8* getelementptr inbounds ([45 x i8]* @global_var_12368, i32 0, i32 0), i8* %tmp289, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_d820

block_d820:                                       ; preds = %block_d7f0, %block_d7d9
  %stack_var_-80.0 = phi i32 [ 0, %block_d7d9 ], [ 1, %block_d7f0 ]
  %tmp291 = load i64* @global_var_25f4c0
  %tmp292 = and i64 %tmp291, 4294967295
  %tmp293 = icmp eq i64 %stack_var_-64.1, %tmp292
  br i1 %tmp293, label %block_d85f, label %block_d82f

block_d82f:                                       ; preds = %block_d820
  %tmp294 = load i64* @global_var_25f4c8
  %tmp295 = load i64* @global_var_216580
  %tmp296 = inttoptr i64 %tmp295 to %_IO_FILE*
  %tmp297 = inttoptr i64 %tmp294 to i8*
  %tmp298 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp296, i8* getelementptr inbounds ([48 x i8]* @global_var_12398, i32 0, i32 0), i8* %tmp297, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_d85f

block_d85f:                                       ; preds = %block_d82f, %block_d820
  %stack_var_-80.1 = phi i32 [ %stack_var_-80.0, %block_d820 ], [ 1, %block_d82f ]
  %tmp299 = load i32* bitcast (i64* @global_var_21a400 to i32*)
  %tmp300 = icmp eq i32 %tmp299, 0
  br i1 %tmp300, label %block_d995, label %block_d86d

block_d86d:                                       ; preds = %block_d85f
  %tmp301 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp302 = icmp ugt i32 %tmp301, ptrtoint (i64* @global_var_24a888 to i32)
  br i1 %tmp302, label %block_d884, label %block_d995

block_d884:                                       ; preds = %block_d86d
  %tmp303 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp304 = zext i32 %tmp303 to i64
  %tmp305 = add i64 %tmp304, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp306 = inttoptr i64 %tmp305 to i8*
  %tmp307 = load i8* %tmp306
  %tmp308 = load i8* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_25f500 to i64), i64 ptrtoint (i64* @global_var_24a885 to i64)) to i8*)
  %tmp309 = zext i8 %tmp308 to i32
  %tmp310 = shl nuw nsw i32 %tmp309, 8
  %tmp311 = zext i8 %tmp307 to i32
  %tmp312 = or i32 %tmp310, %tmp311
  %tmp313 = zext i32 %tmp312 to i64
  %tmp314 = load i8* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_25f500 to i64), i64 ptrtoint (i64* @global_var_24a886 to i64)) to i8*)
  %tmp315 = load i8* inttoptr (i64 add (i64 ptrtoint (i64* @global_var_25f500 to i64), i64 ptrtoint (i64* @global_var_24a887 to i64)) to i8*)
  %tmp316 = zext i8 %tmp315 to i32
  %tmp317 = shl nuw nsw i32 %tmp316, 8
  %tmp318 = zext i8 %tmp314 to i32
  %tmp319 = or i32 %tmp317, %tmp318
  %tmp320 = zext i32 %tmp319 to i64
  %tmp321 = shl nuw nsw i64 %tmp320, 16
  %tmp322 = or i64 %tmp321, %tmp313
  %tmp323 = icmp eq i64 %tmp322, 67324752
  br i1 %tmp323, label %block_d912, label %block_d995

block_d912:                                       ; preds = %block_d884
  %tmp324 = load i32* bitcast (i64* @global_var_2165e0 to i32*)
  %tmp325 = icmp eq i32 %tmp324, 0
  br i1 %tmp325, label %block_d965, label %block_d91c

block_d91c:                                       ; preds = %block_d912
  %tmp326 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp327 = icmp eq i32 %tmp326, 0
  br i1 %tmp327, label %block_d926, label %block_d94f

block_d926:                                       ; preds = %block_d91c
  %tmp328 = load i64* @global_var_25f4c8
  %tmp329 = load i64* @global_var_216580
  %tmp330 = inttoptr i64 %tmp329 to %_IO_FILE*
  %tmp331 = inttoptr i64 %tmp328 to i8*
  %tmp332 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp330, i8* getelementptr inbounds ([46 x i8]* @global_var_123c8, i32 0, i32 0), i8* %tmp331, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_d94f

block_d94f:                                       ; preds = %block_d91c, %block_d926
  %tmp333 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp334 = icmp eq i32 %tmp333, 0
  br i1 %tmp334, label %block_d959, label %block_d995

block_d959:                                       ; preds = %block_d94f
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_d995

block_d965:                                       ; preds = %block_d912
  %tmp335 = load i64* @global_var_25f4c8
  %tmp336 = load i64* @global_var_216580
  %tmp337 = inttoptr i64 %tmp336 to %_IO_FILE*
  %tmp338 = inttoptr i64 %tmp335 to i8*
  %tmp339 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp337, i8* getelementptr inbounds ([45 x i8]* @global_var_123f8, i32 0, i32 0), i8* %tmp338, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_d995

block_d995:                                       ; preds = %block_d94f, %block_d884, %block_d86d, %block_d965, %block_d959, %block_d85f
  %stack_var_-80.2 = phi i32 [ %stack_var_-80.1, %block_d85f ], [ %stack_var_-80.1, %block_d86d ], [ %stack_var_-80.1, %block_d884 ], [ 1, %block_d965 ], [ %stack_var_-80.1, %block_d94f ], [ %stack_var_-80.1, %block_d959 ]
  store i32 0, i32* bitcast (i64* @global_var_21a400 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_21a404 to i32*)
  %tmp340 = icmp eq i32 %stack_var_-80.2, 0
  br i1 %tmp340, label %block_d9b1, label %block_d9b8

block_d9b1:                                       ; preds = %block_d995
  br label %block_d9d4

block_d9b8:                                       ; preds = %block_d995
  store i32 1, i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp341 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp342 = icmp eq i32 %tmp341, 0
  br i1 %tmp342, label %block_d9cc, label %block_d9d1

block_d9cc:                                       ; preds = %block_d9b8
  %tmp343 = call i64 @abort_gzip()
  unreachable

block_d9d1:                                       ; preds = %block_d9b8
  %tmp344 = zext i32 %stack_var_-80.2 to i64
  br label %block_d9d4

block_d9d4:                                       ; preds = %block_d9d1, %block_d9b1
  %rax.4 = phi i64 [ %tmp344, %block_d9d1 ], [ 0, %block_d9b1 ]
  %tmp345 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp346 = icmp eq i64 %tmp74, %tmp345
  br i1 %tmp346, label %block_d9e8, label %block_d9e3

block_d9e3:                                       ; preds = %block_d9d4
  call void @__stack_chk_fail()
  unreachable

block_d9e8:                                       ; preds = %block_d9d4
  ret i64 %rax.4
}

define i64 @copy(i32 %arg1, i64 %arg2) {
block_d9ef:
  %tmp19 = trunc i64 %arg2 to i32
  %tmp20 = call i32* @__errno_location()
  store i32 0, i32* %tmp20
  %tmp21 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp22 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp23 = icmp ugt i32 %tmp21, %tmp22
  br i1 %tmp23, label %block_da0d, label %block_dabf

block_da0d:                                       ; preds = %block_d9ef, %block_da81
  %tmp24 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp25 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp26 = sub i32 %tmp24, %tmp25
  %tmp27 = zext i32 %tmp26 to i64
  %tmp28 = zext i32 %tmp25 to i64
  %tmp29 = add i64 %tmp28, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp30 = inttoptr i64 %tmp29 to i8*
  %tmp31 = call i64 @write_buf(i32 %tmp19, i8* %tmp30, i64 %tmp27)
  %tmp32 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp33 = load i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp34 = sub i32 %tmp32, %tmp33
  %tmp35 = zext i32 %tmp34 to i64
  %tmp36 = load i64* @global_var_25f4c0
  %tmp37 = add i64 %tmp35, %tmp36
  store i64 %tmp37, i64* @global_var_25f4c0
  %tmp38 = call i64 @read_buffer(i32 %arg1, i64 ptrtoint (i64* @global_var_25f500 to i64), i64 32768)
  %tmp39 = trunc i64 %tmp38 to i32
  %tmp40 = icmp eq i32 %tmp39, -1
  br i1 %tmp40, label %block_da7c, label %block_da81

block_da7c:                                       ; preds = %block_da0d
  %tmp41 = call i64 @read_error()
  unreachable

block_da81:                                       ; preds = %block_da0d
  %tmp42 = sext i32 %tmp39 to i64
  %tmp43 = load i64* @global_var_21a860
  %tmp44 = add i64 %tmp43, %tmp42
  store i64 %tmp44, i64* @global_var_21a860
  store i32 %tmp39, i32* bitcast (i64* @global_var_25f4e4 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp45 = icmp eq i32 %tmp39, 0
  br i1 %tmp45, label %block_dabf, label %block_da0d

block_dabf:                                       ; preds = %block_da81, %block_d9ef
  ret i64 0
}

define i64 @updcrc(i8* %arg1, i32 %arg2) {
block_dac6:
  %tmp20 = ptrtoint i8* %arg1 to i64
  %tmp21 = icmp eq i64 %tmp20, 0
  br i1 %tmp21, label %block_dad9, label %block_dae0

block_dad9:                                       ; preds = %block_dac6
  br label %block_db32

block_dae0:                                       ; preds = %block_dac6
  %tmp22 = load i64* @global_var_216550
  %tmp23 = icmp eq i32 %arg2, 0
  br i1 %tmp23, label %block_db32, label %block_daed

block_daed:                                       ; preds = %block_dae0, %block_daed
  %rbx.0 = phi i64 [ %tmp37, %block_daed ], [ %tmp22, %block_dae0 ]
  %stack_var_-28.0 = phi i32 [ %tmp38, %block_daed ], [ %arg2, %block_dae0 ]
  %stack_var_-24.0 = phi i8* [ %tmp27, %block_daed ], [ %arg1, %block_dae0 ]
  %tmp24 = trunc i64 %rbx.0 to i32
  %tmp25 = ptrtoint i8* %stack_var_-24.0 to i64
  %tmp26 = add i64 %tmp25, 1
  %tmp27 = inttoptr i64 %tmp26 to i8*
  %tmp28 = load i8* %stack_var_-24.0
  %tmp29 = zext i8 %tmp28 to i32
  %.masked = and i32 %tmp24, 255
  %tmp30 = xor i32 %tmp29, %.masked
  %tmp31 = zext i32 %tmp30 to i64
  %tmp32 = shl nuw nsw i64 %tmp31, 3
  %tmp33 = add i64 %tmp32, ptrtoint (i64* @global_var_12440 to i64)
  %tmp34 = inttoptr i64 %tmp33 to i64*
  %tmp35 = load i64* %tmp34
  %tmp36 = lshr i64 %rbx.0, 8
  %tmp37 = xor i64 %tmp35, %tmp36
  %tmp38 = add i32 %stack_var_-28.0, -1
  %tmp39 = icmp eq i32 %tmp38, 0
  br i1 %tmp39, label %block_db32, label %block_daed

block_db32:                                       ; preds = %block_daed, %block_dae0, %block_dad9
  %rbx.1 = phi i64 [ %tmp22, %block_dae0 ], [ 4294967295, %block_dad9 ], [ %tmp37, %block_daed ]
  store i64 %rbx.1, i64* @global_var_216550
  %tmp40 = xor i64 %rbx.1, 4294967295
  ret i64 %tmp40
}

define i64 @clear_bufs() {
block_db44:
  store i32 0, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_24a884 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_25f4e4 to i32*)
  store i64 0, i64* @global_var_25f4c0
  store i64 0, i64* @global_var_21a860
  ret i64 0
}

define i64 @fill_inbuf(i32 %arg1) {
block_db84:
  store i32 0, i32* bitcast (i64* @global_var_25f4e4 to i32*)
  br label %block_db99

block_db99:                                       ; preds = %block_dbdc, %block_db84
  %tmp18 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp19 = sub i32 32768, %tmp18
  %tmp20 = zext i32 %tmp19 to i64
  %tmp21 = zext i32 %tmp18 to i64
  %tmp22 = add i64 %tmp21, ptrtoint (i64* @global_var_25f500 to i64)
  %tmp23 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp24 = call i64 @read_buffer(i32 %tmp23, i64 %tmp22, i64 %tmp20)
  %tmp25 = trunc i64 %tmp24 to i32
  %tmp26 = icmp eq i32 %tmp25, 0
  br i1 %tmp26, label %block_dbfc, label %block_dbd1

block_dbd1:                                       ; preds = %block_db99
  %tmp27 = icmp eq i32 %tmp25, -1
  br i1 %tmp27, label %block_dbd7, label %block_dbdc

block_dbd7:                                       ; preds = %block_dbd1
  %tmp28 = call i64 @read_error()
  unreachable

block_dbdc:                                       ; preds = %block_dbd1
  %tmp29 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp30 = add i32 %tmp29, %tmp25
  store i32 %tmp30, i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp31 = icmp ult i32 %tmp30, 32768
  br i1 %tmp31, label %block_db99, label %block_dbfa

block_dbfa:                                       ; preds = %block_dbdc
  br label %block_dbfd

block_dbfc:                                       ; preds = %block_db99
  br label %block_dbfd

block_dbfd:                                       ; preds = %block_dbfc, %block_dbfa
  %tmp32 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp33 = icmp eq i32 %tmp32, 0
  br i1 %tmp33, label %block_dc07, label %block_dc29

block_dc07:                                       ; preds = %block_dbfd
  %tmp34 = icmp eq i32 %arg1, 0
  br i1 %tmp34, label %block_dc14, label %block_dc0d

block_dc0d:                                       ; preds = %block_dc07
  br label %block_dc56

block_dc14:                                       ; preds = %block_dc07
  %tmp35 = call i64 @flush_window()
  %tmp36 = call i32* @__errno_location()
  store i32 0, i32* %tmp36
  %tmp37 = call i64 @read_error()
  unreachable

block_dc29:                                       ; preds = %block_dbfd
  %tmp38 = load i32* bitcast (i64* @global_var_25f4e4 to i32*)
  %tmp39 = zext i32 %tmp38 to i64
  %tmp40 = load i64* @global_var_21a860
  %tmp41 = add i64 %tmp40, %tmp39
  store i64 %tmp41, i64* @global_var_21a860
  store i32 1, i32* bitcast (i64* @global_var_24a884 to i32*)
  %tmp42 = load i8* bitcast (i64* @global_var_25f500 to i8*)
  %tmp43 = zext i8 %tmp42 to i64
  br label %block_dc56

block_dc56:                                       ; preds = %block_dc29, %block_dc0d
  %rax.0 = phi i64 [ %tmp43, %block_dc29 ], [ 4294967295, %block_dc0d ]
  ret i64 %rax.0
}

define i64 @read_buffer(i32 %arg1, i64 %arg2, i64 %arg3) {
block_dc58:
  %0 = alloca i64
  %1 = load i64* %0
  %2 = load i64* %0
  %tmp22 = trunc i64 %arg3 to i32
  %tmp23 = icmp slt i32 %tmp22, 0
  br i1 %tmp23, label %block_dc71, label %block_dc78

block_dc71:                                       ; preds = %block_dc58
  br label %block_dc78

block_dc78:                                       ; preds = %block_dc58, %block_dc71
  %stack_var_-32.0 = phi i32 [ %tmp22, %block_dc58 ], [ 2147483647, %block_dc71 ]
  %tmp24 = zext i32 %stack_var_-32.0 to i64
  %tmp26 = inttoptr i64 %arg2 to i64*
  %tmp27 = call i32 @read(i32 %arg1, i64* %tmp26, i32 %stack_var_-32.0)
  %tmp28 = icmp slt i32 %tmp27, 0
  br i1 %tmp28, label %block_dc95, label %block_dd0f

block_dc95:                                       ; preds = %block_dc78
  %tmp29 = call i32* @__errno_location()
  %tmp30 = load i32* %tmp29
  %tmp31 = icmp eq i32 %tmp30, 11
  br i1 %tmp31, label %block_dca1, label %block_dd0f

block_dca1:                                       ; preds = %block_dc95
  %tmp32 = call i64 @rpl_fcntl(i32 %arg1, i64 3, i64 %tmp24, i64 %arg2, i64 %2, i64 %1)
  %tmp33 = trunc i64 %tmp32 to i32
  %tmp34 = icmp slt i32 %tmp33, 0
  br i1 %tmp34, label %block_dd0f, label %block_dcbe

block_dcbe:                                       ; preds = %block_dca1
  %tmp35 = and i32 %tmp33, ptrtoint (i64* @global_var_800 to i32)
  %tmp36 = icmp eq i32 %tmp35, 0
  br i1 %tmp36, label %block_dcca, label %block_dcd7

block_dcca:                                       ; preds = %block_dcbe
  %tmp37 = call i32* @__errno_location()
  store i32 11, i32* %tmp37
  br label %block_dd0f

block_dcd7:                                       ; preds = %block_dcbe
  %tmp38 = and i64 %tmp32, 4294965247
  %tmp39 = call i64 @rpl_fcntl(i32 %arg1, i64 4, i64 %tmp38, i64 %arg2, i64 %2, i64 %1)
  %tmp40 = trunc i64 %tmp39 to i32
  %tmp41 = icmp eq i32 %tmp40, -1
  br i1 %tmp41, label %block_dd0f, label %block_dcf8

block_dcf8:                                       ; preds = %block_dcd7
  %tmp44 = call i32 @read(i32 %arg1, i64* %tmp26, i32 %stack_var_-32.0)
  br label %block_dd0f

block_dd0f:                                       ; preds = %block_dc95, %block_dc78, %block_dcf8, %block_dcd7, %block_dcca, %block_dca1
  %stack_var_-16.0 = phi i32 [ %tmp27, %block_dc78 ], [ %tmp27, %block_dc95 ], [ %tmp27, %block_dca1 ], [ %tmp27, %block_dcd7 ], [ %tmp44, %block_dcf8 ], [ %tmp27, %block_dcca ]
  %tmp45 = zext i32 %stack_var_-16.0 to i64
  ret i64 %tmp45
}

define i64 @write_buffer(i32 %arg1, i64 %arg2, i32 %arg3) {
block_dd14:
  %tmp18 = icmp slt i32 %arg3, 0
  br i1 %tmp18, label %block_dd2d, label %block_dd34

block_dd2d:                                       ; preds = %block_dd14
  br label %block_dd34

block_dd34:                                       ; preds = %block_dd14, %block_dd2d
  %stack_var_-16.0 = phi i32 [ %arg3, %block_dd14 ], [ 2147483647, %block_dd2d ]
  %tmp20 = inttoptr i64 %arg2 to i64*
  %tmp21 = call i32 @write(i32 %arg1, i64* %tmp20, i32 %stack_var_-16.0)
  %tmp22 = sext i32 %tmp21 to i64
  ret i64 %tmp22
}

define i64 @flush_outbuf(i64 %arg1, i64 %arg2, i64 %arg3, i16 %arg4) {
block_dd4a:
  %tmp15 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp16 = icmp eq i32 %tmp15, 0
  br i1 %tmp16, label %block_dd97, label %block_dd58

block_dd58:                                       ; preds = %block_dd4a
  %tmp17 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp18 = zext i32 %tmp17 to i64
  %tmp19 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp20 = call i64 @write_buf(i32 %tmp19, i8* bitcast (i64* @global_var_24a8a0 to i8*), i64 %tmp18)
  %tmp21 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp22 = zext i32 %tmp21 to i64
  %tmp23 = load i64* @global_var_25f4c0
  %tmp24 = add i64 %tmp23, %tmp22
  store i64 %tmp24, i64* @global_var_25f4c0
  store i32 0, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  br label %block_dd98

block_dd97:                                       ; preds = %block_dd4a
  br label %block_dd98

block_dd98:                                       ; preds = %block_dd97, %block_dd58
  %rax.0 = phi i64 [ 0, %block_dd97 ], [ %tmp24, %block_dd58 ]
  ret i64 %rax.0
}

define i64 @flush_window() {
block_dd9a:
  %tmp14 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp15 = icmp eq i32 %tmp14, 0
  br i1 %tmp15, label %block_de05, label %block_dda8

block_dda8:                                       ; preds = %block_dd9a
  %tmp16 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp17 = call i64 @updcrc(i8* bitcast (i64* @global_var_24f4c0 to i8*), i32 %tmp16)
  %tmp18 = load i32* bitcast (i64* @global_var_2165ec to i32*)
  %tmp19 = icmp eq i32 %tmp18, 0
  br i1 %tmp19, label %block_ddc6, label %block_dde0

block_ddc6:                                       ; preds = %block_dda8
  %tmp20 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp21 = zext i32 %tmp20 to i64
  %tmp22 = load i32* bitcast (i64* @global_var_24a880 to i32*)
  %tmp23 = call i64 @write_buf(i32 %tmp22, i8* bitcast (i64* @global_var_24f4c0 to i8*), i64 %tmp21)
  br label %block_dde0

block_dde0:                                       ; preds = %block_dda8, %block_ddc6
  %tmp24 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp25 = zext i32 %tmp24 to i64
  %tmp26 = load i64* @global_var_25f4c0
  %tmp27 = add i64 %tmp26, %tmp25
  store i64 %tmp27, i64* @global_var_25f4c0
  store i32 0, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  br label %block_de06

block_de05:                                       ; preds = %block_dd9a
  br label %block_de06

block_de06:                                       ; preds = %block_de05, %block_dde0
  %rax.0 = phi i64 [ 0, %block_de05 ], [ %tmp27, %block_dde0 ]
  ret i64 %rax.0
}

define i64 @write_buf(i32 %arg1, i8* %arg2, i64 %arg3) {
block_de08:
  %tmp23 = trunc i64 %arg3 to i32
  br label %block_de34

block_de1c:                                       ; preds = %block_de34
  %tmp24 = icmp eq i32 %tmp35, -1
  br i1 %tmp24, label %block_de22, label %block_de27

block_de22:                                       ; preds = %block_de1c
  %tmp25 = call i64 @write_error()
  unreachable

block_de27:                                       ; preds = %block_de1c
  %tmp26 = sub i32 %stack_var_-32.0, %tmp35
  %tmp27 = and i64 %tmp34, 4294967295
  %tmp30 = add i64 %tmp27, %tmp33
  %tmp31 = inttoptr i64 %tmp30 to i8*
  br label %block_de34

block_de34:                                       ; preds = %block_de27, %block_de08
  %stack_var_-40.0 = phi i8* [ %arg2, %block_de08 ], [ %tmp31, %block_de27 ]
  %stack_var_-32.0 = phi i32 [ %tmp23, %block_de08 ], [ %tmp26, %block_de27 ]
  %tmp33 = ptrtoint i8* %stack_var_-40.0 to i64
  %tmp34 = call i64 @write_buffer(i32 %arg1, i64 %tmp33, i32 %stack_var_-32.0)
  %tmp35 = trunc i64 %tmp34 to i32
  %tmp36 = icmp eq i32 %stack_var_-32.0, %tmp35
  br i1 %tmp36, label %block_de53, label %block_de1c

block_de53:                                       ; preds = %block_de34
  %tmp37 = and i64 %tmp34, 4294967295
  ret i64 %tmp37
}

define i64 @strlwr(i8* %arg1) {
block_de56:
  %tmp20 = load i8* %arg1
  %tmp21 = icmp eq i8 %tmp20, 0
  br i1 %tmp21, label %block_dec3, label %block_de6c

block_de6c:                                       ; preds = %block_de56, %block_dead
  %stack_var_-16.02 = phi i8* [ %tmp42, %block_dead ], [ %arg1, %block_de56 ]
  %tmp22 = call i16** @__ctype_b_loc()
  %0 = load i16** %tmp22
  %1 = ptrtoint i16* %0 to i64
  %tmp25 = load i8* %stack_var_-16.02
  %tmp26 = zext i8 %tmp25 to i64
  %tmp27 = shl nuw nsw i64 %tmp26, 1
  %tmp28 = add i64 %tmp27, %1
  %tmp29 = inttoptr i64 %tmp28 to i16*
  %tmp30 = load i16* %tmp29
  %tmp31 = and i16 %tmp30, 256
  %tmp32 = icmp eq i16 %tmp31, 0
  br i1 %tmp32, label %block_dea6, label %block_de93

block_de93:                                       ; preds = %block_de6c
  %tmp33 = load i8* %stack_var_-16.02
  %tmp34 = zext i8 %tmp33 to i32
  %tmp35 = call i32 @tolower(i32 %tmp34)
  %tmp36 = sext i32 %tmp35 to i64
  br label %block_dead

block_dea6:                                       ; preds = %block_de6c
  %tmp37 = load i8* %stack_var_-16.02
  %tmp38 = zext i8 %tmp37 to i64
  br label %block_dead

block_dead:                                       ; preds = %block_dea6, %block_de93
  %rax.0 = phi i64 [ %tmp38, %block_dea6 ], [ %tmp36, %block_de93 ]
  %tmp39 = trunc i64 %rax.0 to i8
  store i8 %tmp39, i8* %stack_var_-16.02
  %tmp40 = ptrtoint i8* %stack_var_-16.02 to i64
  %tmp41 = add i64 %tmp40, 1
  %tmp42 = inttoptr i64 %tmp41 to i8*
  %tmp43 = load i8* %tmp42
  %tmp44 = icmp eq i8 %tmp43, 0
  br i1 %tmp44, label %block_dec3, label %block_de6c

block_dec3:                                       ; preds = %block_dead, %block_de56
  %tmp45 = ptrtoint i8* %arg1 to i64
  ret i64 %tmp45
}

define i64 @gzip_base_name(i64* %arg1) {
block_dec9:
  %tmp14 = bitcast i64* %arg1 to i8*
  %tmp15 = call i64 @last_component(i8* %tmp14)
  ret i64 %tmp15
}

define i64 @xunlink(i8* %arg1) {
block_deeb:
  %tmp17 = call i32 @unlink(i8* %arg1)
  %tmp18 = zext i32 %tmp17 to i64
  ret i64 %tmp18
}

define i64 @make_simple_name(i8* %arg1) {
block_df0b:
  %tmp20 = call i8* @strrchr(i8* %arg1, i32 46)
  %tmp21 = ptrtoint i8* %tmp20 to i64
  %tmp22 = icmp eq i64 %tmp21, 0
  br i1 %tmp22, label %block_df65, label %block_df33

block_df33:                                       ; preds = %block_df0b
  %tmp23 = ptrtoint i8* %arg1 to i64
  %tmp24 = icmp eq i64 %tmp21, %tmp23
  br i1 %tmp24, label %block_df3d, label %block_df42

block_df3d:                                       ; preds = %block_df33
  %tmp25 = add i64 %tmp21, 1
  %tmp26 = inttoptr i64 %tmp25 to i8*
  br label %block_df42

block_df42:                                       ; preds = %block_df33, %block_df3d, %block_df59
  %stack_var_-16.0 = phi i8* [ %tmp29, %block_df59 ], [ %tmp20, %block_df33 ], [ %tmp26, %block_df3d ]
  %tmp27 = ptrtoint i8* %stack_var_-16.0 to i64
  %tmp28 = add i64 %tmp27, -1
  %tmp29 = inttoptr i64 %tmp28 to i8*
  %tmp30 = load i8* %tmp29
  %tmp31 = icmp eq i8 %tmp30, 46
  br i1 %tmp31, label %block_df52, label %block_df59

block_df52:                                       ; preds = %block_df42
  store i8 95, i8* %tmp29
  br label %block_df59

block_df59:                                       ; preds = %block_df42, %block_df52
  %tmp32 = ptrtoint i8* %tmp29 to i64
  %tmp33 = icmp eq i64 %tmp32, %tmp23
  br i1 %tmp33, label %block_df63, label %block_df42

block_df63:                                       ; preds = %block_df59
  br label %block_df66

block_df65:                                       ; preds = %block_df0b
  br label %block_df66

block_df66:                                       ; preds = %block_df65, %block_df63
  %rax.0 = phi i64 [ 0, %block_df65 ], [ %tmp23, %block_df63 ]
  ret i64 %rax.0
}

define i64 @add_envopt(i32* %arg1, i64* %arg2, i8* %arg3) {
block_df68:
  %tmp43 = call i8* @getenv(i8* %arg3)
  %tmp44 = ptrtoint i8* %tmp43 to i64
  %tmp45 = icmp eq i64 %tmp44, 0
  br i1 %tmp45, label %block_df9a, label %block_dfa4

block_df9a:                                       ; preds = %block_df68
  br label %block_e0f4

block_dfa4:                                       ; preds = %block_df68
  %tmp46 = call i64 @xstrdup(i8* %tmp43)
  %tmp47 = inttoptr i64 %tmp46 to i8*
  %tmp48 = load i8* %tmp47
  %tmp49 = icmp eq i8 %tmp48, 0
  br i1 %tmp49, label %block_e020, label %block_dfbe

block_dfbe:                                       ; preds = %block_dfa4, %block_e011
  %stack_var_-40.112 = phi i8* [ %stack_var_-40.0, %block_e011 ], [ %tmp47, %block_dfa4 ]
  %stack_var_-44.011 = phi i32 [ %tmp67, %block_e011 ], [ 0, %block_dfa4 ]
  %tmp50 = call i32 @strspn(i8* %stack_var_-40.112, i8* getelementptr inbounds ([3 x i8]* @global_var_12c40, i32 0, i32 0))
  %tmp51 = sext i32 %tmp50 to i64
  %tmp52 = ptrtoint i8* %stack_var_-40.112 to i64
  %tmp53 = add i64 %tmp51, %tmp52
  %tmp54 = inttoptr i64 %tmp53 to i8*
  %tmp55 = load i8* %tmp54
  %tmp56 = icmp eq i8 %tmp55, 0
  br i1 %tmp56, label %block_e022, label %block_dfe0

block_dfe0:                                       ; preds = %block_dfbe
  %tmp57 = call i32 @strcspn(i8* %tmp54, i8* getelementptr inbounds ([3 x i8]* @global_var_12c40, i32 0, i32 0))
  %tmp58 = sext i32 %tmp57 to i64
  %tmp59 = ptrtoint i8* %tmp54 to i64
  %tmp60 = add i64 %tmp58, %tmp59
  %tmp61 = inttoptr i64 %tmp60 to i8*
  %tmp62 = load i8* %tmp61
  %tmp63 = icmp eq i8 %tmp62, 0
  br i1 %tmp63, label %block_e011, label %block_e002

block_e002:                                       ; preds = %block_dfe0
  %tmp64 = ptrtoint i8* %tmp61 to i64
  %tmp65 = add i64 %tmp64, 1
  %tmp66 = inttoptr i64 %tmp65 to i8*
  store i8 0, i8* %tmp61
  br label %block_e011

block_e011:                                       ; preds = %block_e002, %block_dfe0
  %stack_var_-40.0 = phi i8* [ %tmp61, %block_dfe0 ], [ %tmp66, %block_e002 ]
  %tmp67 = add i32 %stack_var_-44.011, 1
  %tmp68 = load i8* %stack_var_-40.0
  %tmp69 = icmp eq i8 %tmp68, 0
  br i1 %tmp69, label %block_e020, label %block_dfbe

block_e020:                                       ; preds = %block_e011, %block_dfa4
  %stack_var_-44.0.lcssa = phi i32 [ 0, %block_dfa4 ], [ %tmp67, %block_e011 ]
  br label %block_e023

block_e022:                                       ; preds = %block_dfbe
  br label %block_e023

block_e023:                                       ; preds = %block_e022, %block_e020
  %stack_var_-44.05 = phi i32 [ %stack_var_-44.011, %block_e022 ], [ %stack_var_-44.0.lcssa, %block_e020 ]
  %tmp70 = icmp eq i32 %stack_var_-44.05, 0
  br i1 %tmp70, label %block_e029, label %block_e03f

block_e029:                                       ; preds = %block_e023
  %tmp71 = inttoptr i64 %tmp46 to i64*
  call void @free(i64* %tmp71)
  br label %block_e0f4

block_e03f:                                       ; preds = %block_e023
  %tmp72 = zext i32 %stack_var_-44.05 to i64
  %tmp73 = add nuw nsw i64 %tmp72, 1
  %tmp74 = trunc i64 %tmp73 to i32
  store i32 %tmp74, i32* %arg1
  %tmp75 = load i32* %arg1
  %tmp76 = add i32 %tmp75, 1
  %tmp77 = call i64 @xcalloc(i32 %tmp76, i64 8)
  %tmp78 = load i64* %arg2
  store i64 %tmp77, i64* %arg2
  %tmp79 = inttoptr i64 %tmp78 to i64*
  %tmp80 = load i64* %tmp79
  %tmp81 = inttoptr i64 %tmp77 to i64*
  store i64 %tmp80, i64* %tmp81
  %stack_var_-32.06 = add i64 %tmp77, 8
  %tmp7 = icmp slt i32 %stack_var_-44.05, 0
  br i1 %tmp7, label %block_e0e5, label %block_e09d

block_e09d:                                       ; preds = %block_e03f, %block_e0db
  %stack_var_-32.010 = phi i64 [ %stack_var_-32.0, %block_e0db ], [ %stack_var_-32.06, %block_e03f ]
  %stack_var_-40.39 = phi i8* [ %tmp91, %block_e0db ], [ %tmp47, %block_e03f ]
  %stack_var_-44.18 = phi i32 [ %tmp94, %block_e0db ], [ %stack_var_-44.05, %block_e03f ]
  %tmp82 = call i32 @strspn(i8* %stack_var_-40.39, i8* getelementptr inbounds ([3 x i8]* @global_var_12c40, i32 0, i32 0))
  %tmp83 = sext i32 %tmp82 to i64
  %tmp84 = ptrtoint i8* %stack_var_-40.39 to i64
  %tmp85 = add i64 %tmp83, %tmp84
  %tmp86 = inttoptr i64 %tmp85 to i8*
  %tmp87 = ptrtoint i8* %tmp86 to i64
  %tmp88 = inttoptr i64 %stack_var_-32.010 to i64*
  store i64 %tmp87, i64* %tmp88
  br label %block_e0c8

block_e0c8:                                       ; preds = %block_e0c8, %block_e09d
  %stack_var_-40.2 = phi i8* [ %tmp86, %block_e09d ], [ %tmp91, %block_e0c8 ]
  %tmp89 = ptrtoint i8* %stack_var_-40.2 to i64
  %tmp90 = add i64 %tmp89, 1
  %tmp91 = inttoptr i64 %tmp90 to i8*
  %tmp92 = load i8* %stack_var_-40.2
  %tmp93 = icmp eq i8 %tmp92, 0
  br i1 %tmp93, label %block_e0db, label %block_e0c8

block_e0db:                                       ; preds = %block_e0c8
  %tmp94 = add i32 %stack_var_-44.18, -1
  %stack_var_-32.0 = add i64 %stack_var_-32.010, 8
  %tmp95 = icmp sgt i32 %tmp94, -1
  %tmp96 = icmp ne i32 %tmp94, 0
  %tmp = icmp ne i1 %tmp95, %tmp96
  br i1 %tmp, label %block_e0e5, label %block_e09d

block_e0e5:                                       ; preds = %block_e0db, %block_e03f
  %stack_var_-32.0.lcssa = phi i64 [ %stack_var_-32.06, %block_e03f ], [ %stack_var_-32.0, %block_e0db ]
  %tmp97 = inttoptr i64 %stack_var_-32.0.lcssa to i64*
  store i64 0, i64* %tmp97
  br label %block_e0f4

block_e0f4:                                       ; preds = %block_e0e5, %block_e029, %block_df9a
  %rax.0 = phi i64 [ %tmp46, %block_e0e5 ], [ 0, %block_e029 ], [ 0, %block_df9a ]
  ret i64 %rax.0
}

define i64 @gzip_error(i8* %arg1) {
block_e0f6:
  %tmp19 = load i64* @global_var_25f4c8
  %tmp20 = load i64* @global_var_216580
  %tmp21 = inttoptr i64 %tmp20 to %_IO_FILE*
  %tmp22 = inttoptr i64 %tmp19 to i8*
  %tmp23 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp21, i8* getelementptr inbounds ([13 x i8]* @global_var_12c43, i32 0, i32 0), i8* %tmp22, i8* bitcast (i64* @global_var_21a460 to i8*), i8* %arg1)
  %tmp24 = call i64 @abort_gzip()
  ret i64 %tmp24
}

define i64 @xalloc_die() {
block_e137:
  %tmp7 = load i64* @global_var_25f4c8
  %tmp8 = load i64* @global_var_216580
  %tmp9 = inttoptr i64 %tmp8 to %_IO_FILE*
  %tmp10 = inttoptr i64 %tmp7 to i8*
  %tmp11 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp9, i8* getelementptr inbounds ([23 x i8]* @global_var_12c50, i32 0, i32 0), i8* %tmp10)
  %tmp12 = call i64 @abort_gzip()
  ret i64 %tmp12
}

define i64 @warning(i8* %arg1) {
block_e162:
  %tmp20 = load i32* bitcast (i64* @global_var_2165e8 to i32*)
  %tmp21 = icmp eq i32 %tmp20, 0
  br i1 %tmp21, label %block_e178, label %block_e1a8

block_e178:                                       ; preds = %block_e162
  %tmp22 = load i64* @global_var_25f4c8
  %tmp23 = load i64* @global_var_216580
  %tmp24 = inttoptr i64 %tmp23 to %_IO_FILE*
  %tmp25 = inttoptr i64 %tmp22 to i8*
  %tmp26 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp24, i8* getelementptr inbounds ([21 x i8]* @global_var_12c67, i32 0, i32 0), i8* %tmp25, i8* bitcast (i64* @global_var_21a460 to i8*), i8* %arg1)
  br label %block_e1a8

block_e1a8:                                       ; preds = %block_e162, %block_e178
  %tmp27 = load i32* bitcast (i64* @global_var_2165f0 to i32*)
  %tmp28 = zext i32 %tmp27 to i64
  %tmp29 = icmp eq i32 %tmp27, 0
  br i1 %tmp29, label %block_e1b2, label %block_e1bc

block_e1b2:                                       ; preds = %block_e1a8
  store i32 2, i32* bitcast (i64* @global_var_2165f0 to i32*)
  br label %block_e1bc

block_e1bc:                                       ; preds = %block_e1a8, %block_e1b2
  ret i64 %tmp28
}

define i64 @read_error() {
block_e1bf:
  %tmp15 = call i32* @__errno_location()
  %tmp16 = load i32* %tmp15
  %tmp17 = load i64* @global_var_25f4c8
  %tmp18 = load i64* @global_var_216580
  %tmp19 = inttoptr i64 %tmp18 to %_IO_FILE*
  %tmp20 = inttoptr i64 %tmp17 to i8*
  %tmp21 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp19, i8* getelementptr inbounds ([6 x i8]* @global_var_12c7c, i32 0, i32 0), i8* %tmp20)
  %tmp22 = icmp eq i32 %tmp16, 0
  br i1 %tmp22, label %block_e214, label %block_e1f9

block_e1f9:                                       ; preds = %block_e1bf
  %tmp23 = call i32* @__errno_location()
  store i32 %tmp16, i32* %tmp23
  call void @perror(i8* bitcast (i64* @global_var_21a460 to i8*)) #1
  br label %block_e236

block_e214:                                       ; preds = %block_e1bf
  %tmp24 = load i64* @global_var_216580
  %tmp25 = inttoptr i64 %tmp24 to %_IO_FILE*
  %tmp26 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp25, i8* getelementptr inbounds ([28 x i8]* @global_var_12c82, i32 0, i32 0), i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_e236

block_e236:                                       ; preds = %block_e214, %block_e1f9
  %tmp27 = call i64 @abort_gzip()
  ret i64 %tmp27
}

define i64 @write_error() {
block_e23b:
  %tmp15 = call i32* @__errno_location()
  %tmp16 = load i32* %tmp15
  %tmp17 = load i64* @global_var_25f4c8
  %tmp18 = load i64* @global_var_216580
  %tmp19 = inttoptr i64 %tmp18 to %_IO_FILE*
  %tmp20 = inttoptr i64 %tmp17 to i8*
  %tmp21 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp19, i8* getelementptr inbounds ([6 x i8]* @global_var_12c7c, i32 0, i32 0), i8* %tmp20)
  %tmp22 = call i32* @__errno_location()
  store i32 %tmp16, i32* %tmp22
  call void @perror(i8* bitcast (i64* @global_var_24f0c0 to i8*)) #1
  %tmp23 = call i64 @abort_gzip()
  ret i64 %tmp23
}

define i64 @display_ratio(i64 %arg1, i64 %arg2, %_IO_FILE* %arg3) {
block_e28d:
  %tmp21 = icmp eq i64 %arg2, 0
  br i1 %tmp21, label %block_e2cb, label %block_e2a8

block_e2a8:                                       ; preds = %block_e28d
  %tmp22 = call i128 @__asm_cvtsi2sd(i64 %arg1)
  %tmp23 = call i128 @__asm_movsd(i64 4636737291354636288)
  %tmp24 = call i128 @__asm_mulsd(i128 %tmp22, i128 %tmp23)
  %tmp25 = call i128 @__asm_cvtsi2sd(i64 %arg2)
  %tmp26 = call i128 @__asm_divsd(i128 %tmp24, i128 %tmp25)
  %tmp27 = call i64 @__asm_movq(i128 %tmp26)
  br label %block_e2d2

block_e2cb:                                       ; preds = %block_e28d
  br label %block_e2d2

block_e2d2:                                       ; preds = %block_e2cb, %block_e2a8
  %rax.0 = phi i64 [ 0, %block_e2cb ], [ %tmp27, %block_e2a8 ]
  %tmp28 = call i128 @__asm_movsd(i64 %rax.0)
  %tmp29 = trunc i128 %tmp28 to i64
  %tmp30 = bitcast i64 %tmp29 to double
  %tmp31 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %arg3, i8* getelementptr inbounds ([8 x i8]* @global_var_12c9e, i32 0, i32 0), double %tmp30)
  %tmp32 = sext i32 %tmp31 to i64
  ret i64 %tmp32
}

define i64 @fprint_off(%_IO_FILE* %arg1, i64 %arg2, i32 %arg3) {
block_e2f6:
  %stack_var_-24 = alloca i64
  %tmp35 = sext i64 %arg2 to i128
  %tmp36 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp37 = ptrtoint i64* %stack_var_-24 to i64
  %tmp38 = bitcast i64* %stack_var_-24 to i8*
  %tmp39 = icmp slt i64 %arg2, 0
  br i1 %tmp39, label %block_e32f, label %block_e3ba

block_e32f:                                       ; preds = %block_e2f6, %block_e32f
  %stack_var_-120.0 = phi i128 [ %tmp56, %block_e32f ], [ %tmp35, %block_e2f6 ]
  %stack_var_-96.0 = phi i8* [ %tmp54, %block_e32f ], [ %tmp38, %block_e2f6 ]
  %tmp40 = trunc i128 %stack_var_-120.0 to i64
  %tmp41 = sext i64 %tmp40 to i128
  %tmp42 = mul nsw i128 %tmp41, 7378697629483820647
  %tmp43 = lshr i128 %tmp42, 64
  %tmp44 = trunc i128 %tmp43 to i64
  %tmp45 = ashr i64 %tmp44, 2
  %tmp46 = ashr i64 %tmp40, 63
  %tmp47 = sub nsw i64 %tmp45, %tmp46
  %tmp104 = mul i64 %tmp47, -10
  %tmp49102 = add i64 %tmp40, %tmp104
  %tmp50 = trunc i64 %tmp49102 to i32
  %tmp51 = sub i32 48, %tmp50
  %tmp52 = ptrtoint i8* %stack_var_-96.0 to i64
  %tmp53 = add i64 %tmp52, -1
  %tmp54 = inttoptr i64 %tmp53 to i8*
  %tmp55 = trunc i32 %tmp51 to i8
  store i8 %tmp55, i8* %tmp54
  %tmp56 = sext i64 %tmp47 to i128
  %tmp57 = icmp eq i64 %tmp45, %tmp46
  br i1 %tmp57, label %block_e3ac, label %block_e32f

block_e3ac:                                       ; preds = %block_e32f
  %tmp58 = ptrtoint i8* %tmp54 to i64
  %tmp59 = add i64 %tmp58, -1
  %tmp60 = inttoptr i64 %tmp59 to i8*
  store i8 45, i8* %tmp60
  br label %block_e431

block_e3ba:                                       ; preds = %block_e2f6, %block_e3ba
  %stack_var_-120.1 = phi i128 [ %tmp77, %block_e3ba ], [ %tmp35, %block_e2f6 ]
  %stack_var_-96.1 = phi i8* [ %tmp75, %block_e3ba ], [ %tmp38, %block_e2f6 ]
  %tmp61 = trunc i128 %stack_var_-120.1 to i64
  %tmp62 = sext i64 %tmp61 to i128
  %tmp63 = mul nsw i128 %tmp62, 7378697629483820647
  %tmp64 = lshr i128 %tmp63, 64
  %tmp65 = trunc i128 %tmp64 to i64
  %tmp66 = ashr i64 %tmp65, 2
  %tmp67 = ashr i64 %tmp61, 63
  %tmp68 = sub nsw i64 %tmp66, %tmp67
  %tmp105 = mul i64 %tmp68, -10
  %tmp70103 = add i64 %tmp61, %tmp105
  %tmp71 = trunc i64 %tmp70103 to i32
  %tmp72 = add i32 %tmp71, 48
  %tmp73 = ptrtoint i8* %stack_var_-96.1 to i64
  %tmp74 = add i64 %tmp73, -1
  %tmp75 = inttoptr i64 %tmp74 to i8*
  %tmp76 = trunc i32 %tmp72 to i8
  store i8 %tmp76, i8* %tmp75
  %tmp77 = sext i64 %tmp68 to i128
  %tmp78 = icmp eq i64 %tmp66, %tmp67
  br i1 %tmp78, label %block_e431, label %block_e3ba

block_e431:                                       ; preds = %block_e3ba, %block_e3ac
  %stack_var_-96.2 = phi i8* [ %tmp60, %block_e3ac ], [ %tmp75, %block_e3ba ]
  %tmp79 = ptrtoint i8* %stack_var_-96.2 to i64
  %tmp80 = sub i64 %tmp37, %tmp79
  %tmp81 = trunc i64 %tmp80 to i32
  %tmp82 = sub i32 %arg3, %tmp81
  %tmp83 = icmp sgt i32 %tmp82, -1
  %tmp84 = icmp ne i32 %tmp81, %arg3
  %tmp6 = icmp ne i1 %tmp84, %tmp83
  br i1 %tmp6, label %block_e470, label %block_e452

block_e452:                                       ; preds = %block_e431, %block_e452
  %stack_var_-124.07 = phi i32 [ %tmp87, %block_e452 ], [ %tmp82, %block_e431 ]
  %tmp85 = zext i32 %stack_var_-124.07 to i64
  %tmp86 = add nuw nsw i64 %tmp85, 4294967295
  %tmp87 = trunc i64 %tmp86 to i32
  %tmp88 = call i32 @_IO_putc(i32 32, %_IO_FILE* %arg1)
  %tmp89 = icmp sgt i32 %tmp87, -1
  %tmp90 = icmp ne i32 %tmp87, 0
  %tmp = icmp ne i1 %tmp89, %tmp90
  br i1 %tmp, label %block_e470, label %block_e452

block_e470:                                       ; preds = %block_e452, %block_e431
  %tmp91 = icmp ugt i64 %tmp37, %tmp79
  br i1 %tmp91, label %block_e472, label %block_e49d

block_e472:                                       ; preds = %block_e470, %block_e472
  %tmp92 = phi i64 [ %tmp98, %block_e472 ], [ %tmp79, %block_e470 ]
  %stack_var_-96.35 = phi i8* [ %tmp97, %block_e472 ], [ %stack_var_-96.2, %block_e470 ]
  %tmp93 = load i8* %stack_var_-96.35
  %tmp94 = sext i8 %tmp93 to i32
  %tmp95 = call i32 @_IO_putc(i32 %tmp94, %_IO_FILE* %arg1)
  %tmp96 = add i64 %tmp92, 1
  %tmp97 = inttoptr i64 %tmp96 to i8*
  %tmp98 = ptrtoint i8* %tmp97 to i64
  %tmp99 = icmp ult i64 %tmp98, %tmp37
  br i1 %tmp99, label %block_e472, label %block_e49d

block_e49d:                                       ; preds = %block_e472, %block_e470
  %tmp100 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp101 = icmp eq i64 %tmp36, %tmp100
  br i1 %tmp101, label %block_e4b2, label %block_e4ad

block_e4ad:                                       ; preds = %block_e49d
  call void @__stack_chk_fail()
  unreachable

block_e4b2:                                       ; preds = %block_e49d
  ret i64 0
}

define i64 @zip(i32 %arg1, i64 %arg2) {
block_e4b4:
  %tmp17 = sext i32 %arg1 to i64
  %stack_var_-34 = alloca i16
  %stack_var_-36 = alloca i16
  %tmp35 = trunc i64 %arg2 to i32
  %tmp36 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  store i16 0, i16* %stack_var_-36
  store i16 0, i16* %stack_var_-34
  store i32 %arg1, i32* bitcast (i64* @global_var_24f0a0 to i32*)
  store i32 %tmp35, i32* bitcast (i64* @global_var_24a880 to i32*)
  store i32 0, i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 8, i32* bitcast ([2 x i8]* @global_var_21609c to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i8 31, i8* bitcast (i64* @global_var_24a8a0 to i8*)
  br i1 icmp ne (i32 sub (i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32 16384), i32 0), label %block_e539, label %block_e534

block_e534:                                       ; preds = %block_e4b4
  %tmp37 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 0, i16 31)
  br label %block_e539

block_e539:                                       ; preds = %block_e534, %block_e4b4
  %tmp38 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp39 = zext i32 %tmp38 to i64
  %tmp40 = add i64 %tmp39, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp41 = inttoptr i64 %tmp40 to i8*
  store i8 -117, i8* %tmp41
  %tmp42 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp43 = icmp eq i32 %tmp42, 16384
  br i1 %tmp43, label %block_e566, label %block_e56b

block_e566:                                       ; preds = %block_e539
  %tmp44 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 %tmp39, i16 -117)
  br label %block_e56b

block_e56b:                                       ; preds = %block_e539, %block_e566
  %tmp45 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp46 = zext i32 %tmp45 to i64
  %tmp47 = add i64 %tmp46, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp48 = inttoptr i64 %tmp47 to i8*
  store i8 8, i8* %tmp48
  %tmp49 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp50 = icmp eq i32 %tmp49, 16384
  br i1 %tmp50, label %block_e594, label %block_e599

block_e594:                                       ; preds = %block_e56b
  %tmp51 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 %tmp46, i16 -117)
  br label %block_e599

block_e599:                                       ; preds = %block_e56b, %block_e594
  %tmp52 = load i32* bitcast (i64* @global_var_24a888 to i32*)
  %tmp53 = icmp eq i32 %tmp52, 0
  br i1 %tmp53, label %block_e5a7, label %block_e5a3

block_e5a3:                                       ; preds = %block_e599
  br label %block_e5a7

block_e5a7:                                       ; preds = %block_e5a3, %block_e599
  %stack_var_-37.0 = phi i8 [ 0, %block_e599 ], [ 8, %block_e5a3 ]
  %tmp54 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp55 = zext i32 %tmp54 to i64
  %tmp56 = add i64 %tmp55, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp57 = inttoptr i64 %tmp56 to i8*
  store i8 %stack_var_-37.0, i8* %tmp57
  %tmp58 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp59 = icmp eq i32 %tmp58, 16384
  br i1 %tmp59, label %block_e5d3, label %block_e5d8

block_e5d3:                                       ; preds = %block_e5a7
  %tmp60 = zext i8 %stack_var_-37.0 to i64
  %tmp61 = trunc i32 %tmp54 to i16
  %tmp62 = call i64 @flush_outbuf(i64 %tmp17, i64 %arg2, i64 %tmp60, i16 %tmp61)
  br label %block_e5d8

block_e5d8:                                       ; preds = %block_e5a7, %block_e5d3
  %tmp63 = load i64* @global_var_25f4d8
  %tmp64 = icmp slt i64 %tmp63, 0
  br i1 %tmp64, label %block_e5e4, label %block_e5ee

block_e5e4:                                       ; preds = %block_e5d8
  br label %block_e62c

block_e5ee:                                       ; preds = %block_e5d8
  %tmp65 = load i64* @global_var_25f4d0
  %tmp66 = icmp slt i64 %tmp65, 1
  br i1 %tmp66, label %block_e618, label %block_e5fa

block_e5fa:                                       ; preds = %block_e5ee
  %tmp67 = load i64* @global_var_25f4d0
  %tmp68 = inttoptr i64 %tmp67 to i32*
  %tmp69 = ptrtoint i32* %tmp68 to i64
  %tmp70 = icmp sgt i64 %tmp69, 4294967295
  br i1 %tmp70, label %block_e618, label %block_e60b

block_e60b:                                       ; preds = %block_e5fa
  %tmp71 = load i64* @global_var_25f4d0
  %tmp72 = inttoptr i64 %tmp71 to i32*
  br label %block_e62c

block_e618:                                       ; preds = %block_e5fa, %block_e5ee
  %tmp73 = call i64 @warning(i8* getelementptr inbounds ([44 x i8]* @global_var_12cb8, i32 0, i32 0))
  br label %block_e62c

block_e62c:                                       ; preds = %block_e618, %block_e60b, %block_e5e4
  %stack_var_-32.0 = phi i32* [ null, %block_e618 ], [ %tmp72, %block_e60b ], [ null, %block_e5e4 ]
  %rdi.0 = phi i64 [ ptrtoint ([44 x i8]* @global_var_12cb8 to i64), %block_e618 ], [ %tmp17, %block_e60b ], [ %tmp17, %block_e5e4 ]
  %tmp74 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp75 = icmp ugt i32 %tmp74, 16381
  br i1 %tmp75, label %block_e681, label %block_e639

block_e639:                                       ; preds = %block_e62c
  %tmp76 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp77 = ptrtoint i32* %stack_var_-32.0 to i64
  %tmp78 = zext i32 %tmp76 to i64
  %tmp79 = trunc i64 %tmp77 to i8
  %tmp80 = add i64 %tmp78, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp81 = inttoptr i64 %tmp80 to i8*
  store i8 %tmp79, i8* %tmp81
  %tmp82 = trunc i64 %tmp77 to i16
  %tmp83 = lshr i16 %tmp82, 8
  %tmp84 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp85 = zext i32 %tmp84 to i64
  %tmp86 = trunc i16 %tmp83 to i8
  %tmp87 = add i64 %tmp85, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp88 = inttoptr i64 %tmp87 to i8*
  store i8 %tmp86, i8* %tmp88
  br label %block_e6ebthread-pre-split

block_e681:                                       ; preds = %block_e62c
  %tmp89 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp90 = ptrtoint i32* %stack_var_-32.0 to i64
  %tmp91 = zext i32 %tmp89 to i64
  %tmp92 = trunc i64 %tmp90 to i8
  %tmp93 = add i64 %tmp91, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp94 = inttoptr i64 %tmp93 to i8*
  store i8 %tmp92, i8* %tmp94
  %tmp95 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp96 = icmp eq i32 %tmp95, 16384
  br i1 %tmp96, label %block_e6af, label %block_e681.block_e6b4_crit_edge

block_e681.block_e6b4_crit_edge:                  ; preds = %block_e681
  %.pre = trunc i64 %tmp90 to i16
  br label %block_e6b4

block_e6af:                                       ; preds = %block_e681
  %tmp97 = trunc i64 %tmp90 to i16
  %tmp98 = call i64 @flush_outbuf(i64 %rdi.0, i64 %arg2, i64 %tmp91, i16 %tmp97)
  br label %block_e6b4

block_e6b4:                                       ; preds = %block_e681.block_e6b4_crit_edge, %block_e6af
  %.pre-phi = phi i16 [ %.pre, %block_e681.block_e6b4_crit_edge ], [ %tmp97, %block_e6af ]
  %tmp99 = lshr i16 %.pre-phi, 8
  %tmp100 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp101 = zext i32 %tmp100 to i64
  %tmp102 = trunc i16 %tmp99 to i8
  %tmp103 = add i64 %tmp101, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp104 = inttoptr i64 %tmp103 to i8*
  store i8 %tmp102, i8* %tmp104
  %tmp105 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp106 = icmp eq i32 %tmp105, 16384
  br i1 %tmp106, label %block_e6e6, label %block_e6eb

block_e6e6:                                       ; preds = %block_e6b4
  %tmp107 = call i64 @flush_outbuf(i64 %rdi.0, i64 %arg2, i64 %tmp101, i16 %tmp99)
  br label %block_e6ebthread-pre-split

block_e6ebthread-pre-split:                       ; preds = %block_e639, %block_e6e6
  %.pr = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  br label %block_e6eb

block_e6eb:                                       ; preds = %block_e6ebthread-pre-split, %block_e6b4
  %tmp108 = phi i32 [ %.pr, %block_e6ebthread-pre-split ], [ %tmp105, %block_e6b4 ]
  %tmp109 = icmp ugt i32 %tmp108, 16381
  br i1 %tmp109, label %block_e749, label %block_e6f8

block_e6f8:                                       ; preds = %block_e6eb
  %tmp110 = ptrtoint i32* %stack_var_-32.0 to i64
  %tmp111 = lshr i64 %tmp110, 16
  %tmp112 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp113 = zext i32 %tmp112 to i64
  %tmp114 = trunc i64 %tmp111 to i8
  %tmp115 = add i64 %tmp113, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp116 = inttoptr i64 %tmp115 to i8*
  store i8 %tmp114, i8* %tmp116
  %tmp117 = lshr i64 %tmp110, 24
  %tmp118 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp119 = zext i32 %tmp118 to i64
  %tmp120 = trunc i64 %tmp117 to i8
  %tmp121 = add i64 %tmp119, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp122 = inttoptr i64 %tmp121 to i8*
  store i8 %tmp120, i8* %tmp122
  br label %block_e7bc

block_e749:                                       ; preds = %block_e6eb
  %tmp123 = ptrtoint i32* %stack_var_-32.0 to i64
  %tmp124 = lshr i64 %tmp123, 16
  %tmp125 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp126 = zext i32 %tmp125 to i64
  %tmp127 = trunc i64 %tmp124 to i8
  %tmp128 = add i64 %tmp126, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp129 = inttoptr i64 %tmp128 to i8*
  store i8 %tmp127, i8* %tmp129
  %tmp130 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp131 = icmp eq i32 %tmp130, 16384
  br i1 %tmp131, label %block_e77c, label %block_e781

block_e77c:                                       ; preds = %block_e749
  %tmp132 = trunc i64 %tmp124 to i16
  %tmp133 = call i64 @flush_outbuf(i64 %rdi.0, i64 %arg2, i64 %tmp126, i16 %tmp132)
  br label %block_e781

block_e781:                                       ; preds = %block_e749, %block_e77c
  %tmp134 = lshr i64 %tmp123, 24
  %tmp135 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp136 = zext i32 %tmp135 to i64
  %tmp137 = trunc i64 %tmp134 to i8
  %tmp138 = add i64 %tmp136, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp139 = inttoptr i64 %tmp138 to i8*
  store i8 %tmp137, i8* %tmp139
  %tmp140 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp141 = icmp eq i32 %tmp140, 16384
  br i1 %tmp141, label %block_e7b7, label %block_e7bc

block_e7b7:                                       ; preds = %block_e781
  %tmp142 = and i64 %tmp134, 255
  %tmp143 = trunc i64 %tmp142 to i16
  %tmp144 = call i64 @flush_outbuf(i64 %rdi.0, i64 %arg2, i64 %tmp136, i16 %tmp143)
  br label %block_e7bc

block_e7bc:                                       ; preds = %block_e781, %block_e7b7, %block_e6f8
  %tmp145 = call i64 @updcrc(i8* null, i32 0)
  store i64 %tmp145, i64* @global_var_21a408
  %tmp146 = call i64 @bi_init(i32 %tmp35)
  %tmp147 = call i64 @ct_init(i16* %stack_var_-36, i8* getelementptr inbounds ([2 x i8]* @global_var_21609c, i32 0, i32 0))
  %tmp148 = load i32* bitcast (i64* @global_var_2160a0 to i32*)
  %tmp149 = ptrtoint i16* %stack_var_-34 to i64
  %tmp150 = zext i32 %tmp148 to i64
  %tmp151 = call i64 @lm_init(i32 %tmp148, i16* %stack_var_-34)
  %tmp152 = load i16* %stack_var_-34
  %tmp153 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp154 = zext i32 %tmp153 to i64
  %tmp155 = trunc i16 %tmp152 to i8
  %tmp156 = add i64 %tmp154, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp157 = inttoptr i64 %tmp156 to i8*
  store i8 %tmp155, i8* %tmp157
  %tmp158 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp159 = icmp eq i32 %tmp158, 16384
  br i1 %tmp159, label %block_e82f, label %block_e834

block_e82f:                                       ; preds = %block_e7bc
  %tmp160 = call i64 @flush_outbuf(i64 %tmp150, i64 %tmp149, i64 %tmp154, i16 %tmp152)
  br label %block_e834

block_e834:                                       ; preds = %block_e7bc, %block_e82f
  %tmp161 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp162 = zext i32 %tmp161 to i64
  %tmp163 = add i64 %tmp162, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp164 = inttoptr i64 %tmp163 to i8*
  store i8 3, i8* %tmp164
  %tmp165 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp166 = icmp eq i32 %tmp165, 16384
  br i1 %tmp166, label %block_e85d, label %block_e862

block_e85d:                                       ; preds = %block_e834
  %tmp167 = call i64 @flush_outbuf(i64 %tmp150, i64 %tmp149, i64 %tmp162, i16 %tmp152)
  br label %block_e862

block_e862:                                       ; preds = %block_e834, %block_e85d
  %tmp168 = load i32* bitcast (i64* @global_var_24a888 to i32*)
  %tmp169 = icmp eq i32 %tmp168, 0
  br i1 %tmp169, label %block_e8c3, label %block_e86c

block_e86c:                                       ; preds = %block_e862
  %tmp170 = call i64 @gzip_base_name(i64* @global_var_21a460)
  br label %block_e87c

block_e87c:                                       ; preds = %block_e8b0, %block_e86c
  %stack_var_-24.0.in = phi i64 [ %tmp170, %block_e86c ], [ %tmp181, %block_e8b0 ]
  %stack_var_-24.0 = inttoptr i64 %stack_var_-24.0.in to i8*
  %tmp171 = load i8* %stack_var_-24.0
  %tmp172 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp173 = zext i32 %tmp172 to i64
  %tmp174 = add i64 %tmp173, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp175 = inttoptr i64 %tmp174 to i8*
  store i8 %tmp171, i8* %tmp175
  %tmp176 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp177 = icmp eq i32 %tmp176, 16384
  br i1 %tmp177, label %block_e8ab, label %block_e8b0

block_e8ab:                                       ; preds = %block_e87c
  %tmp178 = zext i8 %tmp171 to i16
  %tmp179 = call i64 @flush_outbuf(i64 ptrtoint (i64* @global_var_21a460 to i64), i64 %tmp149, i64 %tmp173, i16 %tmp178)
  br label %block_e8b0

block_e8b0:                                       ; preds = %block_e87c, %block_e8ab
  %tmp180 = ptrtoint i8* %stack_var_-24.0 to i64
  %tmp181 = add i64 %tmp180, 1
  %tmp182 = load i8* %stack_var_-24.0
  %tmp183 = icmp eq i8 %tmp182, 0
  br i1 %tmp183, label %block_e8c3, label %block_e87c

block_e8c3:                                       ; preds = %block_e8b0, %block_e862
  %rdi.1 = phi i64 [ %tmp150, %block_e862 ], [ ptrtoint (i64* @global_var_21a460 to i64), %block_e8b0 ]
  %tmp184 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp185 = zext i32 %tmp184 to i64
  store i64 %tmp185, i64* @global_var_267540
  %tmp186 = inttoptr i64 %rdi.1 to %z_stream_s*
  %tmp187 = trunc i64 %tmp149 to i32
  %tmp188 = call i32 @deflate(%z_stream_s* %tmp186, i32 %tmp187)
  %tmp189 = load i64* @global_var_24a890
  %tmp190 = icmp eq i64 %tmp189, -1
  br i1 %tmp190, label %block_e920, label %block_e8e4

block_e8e4:                                       ; preds = %block_e8c3
  %tmp191 = load i64* @global_var_21a860
  %tmp192 = load i64* @global_var_24a890
  %tmp193 = icmp eq i64 %tmp191, %tmp192
  br i1 %tmp193, label %block_e920, label %block_e8f7

block_e8f7:                                       ; preds = %block_e8e4
  %tmp194 = load i64* @global_var_25f4c8
  %tmp195 = load i64* @global_var_216580
  %tmp196 = inttoptr i64 %tmp195 to %_IO_FILE*
  %tmp197 = inttoptr i64 %tmp194 to i8*
  %tmp198 = call i32 (%_IO_FILE*, i8*, ...)* @fprintf(%_IO_FILE* %tmp196, i8* getelementptr inbounds ([41 x i8]* @global_var_12ce8, i32 0, i32 0), i8* %tmp197, i8* bitcast (i64* @global_var_21a460 to i8*))
  br label %block_e920

block_e920:                                       ; preds = %block_e8f7, %block_e8e4, %block_e8c3
  %rsi.0 = phi i64 [ %tmp149, %block_e8c3 ], [ %tmp149, %block_e8e4 ], [ ptrtoint ([41 x i8]* @global_var_12ce8 to i64), %block_e8f7 ]
  %rdi.2 = phi i64 [ %rdi.1, %block_e8c3 ], [ %rdi.1, %block_e8e4 ], [ %tmp195, %block_e8f7 ]
  %tmp199 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp200 = icmp ugt i32 %tmp199, 16381
  br i1 %tmp200, label %block_e979, label %block_e92d

block_e92d:                                       ; preds = %block_e920
  %tmp201 = load i64* @global_var_21a408
  %tmp202 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp203 = zext i32 %tmp202 to i64
  %tmp204 = trunc i64 %tmp201 to i8
  %tmp205 = add i64 %tmp203, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp206 = inttoptr i64 %tmp205 to i8*
  store i8 %tmp204, i8* %tmp206
  %tmp207 = load i64* @global_var_21a408
  %tmp208 = trunc i64 %tmp207 to i16
  %tmp209 = lshr i16 %tmp208, 8
  %tmp210 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp211 = zext i32 %tmp210 to i64
  %tmp212 = trunc i16 %tmp209 to i8
  %tmp213 = add i64 %tmp211, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp214 = inttoptr i64 %tmp213 to i8*
  store i8 %tmp212, i8* %tmp214
  br label %block_e9e7thread-pre-split

block_e979:                                       ; preds = %block_e920
  %tmp215 = load i64* @global_var_21a408
  %tmp216 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp217 = zext i32 %tmp216 to i64
  %tmp218 = trunc i64 %tmp215 to i8
  %tmp219 = add i64 %tmp217, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp220 = inttoptr i64 %tmp219 to i8*
  store i8 %tmp218, i8* %tmp220
  %tmp221 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp222 = icmp eq i32 %tmp221, 16384
  br i1 %tmp222, label %block_e9a8, label %block_e9ad

block_e9a8:                                       ; preds = %block_e979
  %tmp223 = trunc i64 %tmp215 to i16
  %tmp224 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %tmp217, i16 %tmp223)
  br label %block_e9ad

block_e9ad:                                       ; preds = %block_e979, %block_e9a8
  %tmp225 = load i64* @global_var_21a408
  %tmp226 = trunc i64 %tmp225 to i16
  %tmp227 = lshr i16 %tmp226, 8
  %tmp228 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp229 = zext i32 %tmp228 to i64
  %tmp230 = trunc i16 %tmp227 to i8
  %tmp231 = add i64 %tmp229, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp232 = inttoptr i64 %tmp231 to i8*
  store i8 %tmp230, i8* %tmp232
  %tmp233 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp234 = icmp eq i32 %tmp233, 16384
  br i1 %tmp234, label %block_e9e2, label %block_e9e7

block_e9e2:                                       ; preds = %block_e9ad
  %tmp235 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %tmp229, i16 %tmp227)
  br label %block_e9e7thread-pre-split

block_e9e7thread-pre-split:                       ; preds = %block_e92d, %block_e9e2
  %.pr2 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  br label %block_e9e7

block_e9e7:                                       ; preds = %block_e9e7thread-pre-split, %block_e9ad
  %tmp236 = phi i32 [ %.pr2, %block_e9e7thread-pre-split ], [ %tmp233, %block_e9ad ]
  %tmp237 = icmp ugt i32 %tmp236, 16381
  br i1 %tmp237, label %block_ea4b, label %block_e9f4

block_e9f4:                                       ; preds = %block_e9e7
  %tmp238 = load i64* @global_var_21a408
  %tmp239 = lshr i64 %tmp238, 16
  %tmp240 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp241 = zext i32 %tmp240 to i64
  %tmp242 = trunc i64 %tmp239 to i8
  %tmp243 = add i64 %tmp241, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp244 = inttoptr i64 %tmp243 to i8*
  store i8 %tmp242, i8* %tmp244
  %tmp245 = load i64* @global_var_21a408
  %tmp246 = lshr i64 %tmp245, 24
  %tmp247 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp248 = zext i32 %tmp247 to i64
  %tmp249 = trunc i64 %tmp246 to i8
  %tmp250 = add i64 %tmp248, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp251 = inttoptr i64 %tmp250 to i8*
  store i8 %tmp249, i8* %tmp251
  br label %block_eac4thread-pre-split

block_ea4b:                                       ; preds = %block_e9e7
  %tmp252 = load i64* @global_var_21a408
  %tmp253 = lshr i64 %tmp252, 16
  %tmp254 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp255 = zext i32 %tmp254 to i64
  %tmp256 = trunc i64 %tmp253 to i8
  %tmp257 = add i64 %tmp255, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp258 = inttoptr i64 %tmp257 to i8*
  store i8 %tmp256, i8* %tmp258
  %tmp259 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp260 = icmp eq i32 %tmp259, 16384
  br i1 %tmp260, label %block_ea81, label %block_ea86

block_ea81:                                       ; preds = %block_ea4b
  %tmp261 = trunc i64 %tmp253 to i16
  %tmp262 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %tmp255, i16 %tmp261)
  br label %block_ea86

block_ea86:                                       ; preds = %block_ea4b, %block_ea81
  %tmp263 = load i64* @global_var_21a408
  %tmp264 = lshr i64 %tmp263, 24
  %tmp265 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp266 = zext i32 %tmp265 to i64
  %tmp267 = trunc i64 %tmp264 to i8
  %tmp268 = add i64 %tmp266, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp269 = inttoptr i64 %tmp268 to i8*
  store i8 %tmp267, i8* %tmp269
  %tmp270 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp271 = icmp eq i32 %tmp270, 16384
  br i1 %tmp271, label %block_eabf, label %block_eac4

block_eabf:                                       ; preds = %block_ea86
  %tmp272 = and i64 %tmp264, 255
  %tmp273 = trunc i64 %tmp272 to i16
  %tmp274 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %tmp266, i16 %tmp273)
  br label %block_eac4thread-pre-split

block_eac4thread-pre-split:                       ; preds = %block_e9f4, %block_eabf
  %.pr3 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  br label %block_eac4

block_eac4:                                       ; preds = %block_eac4thread-pre-split, %block_ea86
  %tmp275 = phi i32 [ %.pr3, %block_eac4thread-pre-split ], [ %tmp270, %block_ea86 ]
  %tmp276 = icmp ugt i32 %tmp275, 16381
  br i1 %tmp276, label %block_eb1d, label %block_ead1

block_ead1:                                       ; preds = %block_eac4
  %tmp277 = load i64* @global_var_21a860
  %tmp278 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp279 = zext i32 %tmp278 to i64
  %tmp280 = trunc i64 %tmp277 to i8
  %tmp281 = add i64 %tmp279, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp282 = inttoptr i64 %tmp281 to i8*
  store i8 %tmp280, i8* %tmp282
  %tmp283 = load i64* @global_var_21a860
  %tmp284 = trunc i64 %tmp283 to i16
  %tmp285 = lshr i16 %tmp284, 8
  %tmp286 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp287 = zext i32 %tmp286 to i64
  %tmp288 = trunc i16 %tmp285 to i8
  %tmp289 = add i64 %tmp287, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp290 = inttoptr i64 %tmp289 to i8*
  store i8 %tmp288, i8* %tmp290
  br label %block_eb8bthread-pre-split

block_eb1d:                                       ; preds = %block_eac4
  %tmp291 = load i64* @global_var_21a860
  %tmp292 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp293 = zext i32 %tmp292 to i64
  %tmp294 = trunc i64 %tmp291 to i8
  %tmp295 = add i64 %tmp293, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp296 = inttoptr i64 %tmp295 to i8*
  store i8 %tmp294, i8* %tmp296
  %tmp297 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp298 = icmp eq i32 %tmp297, 16384
  br i1 %tmp298, label %block_eb4c, label %block_eb51

block_eb4c:                                       ; preds = %block_eb1d
  %tmp299 = trunc i64 %tmp291 to i16
  %tmp300 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %tmp293, i16 %tmp299)
  br label %block_eb51

block_eb51:                                       ; preds = %block_eb1d, %block_eb4c
  %tmp301 = load i64* @global_var_21a860
  %tmp302 = trunc i64 %tmp301 to i16
  %tmp303 = lshr i16 %tmp302, 8
  %tmp304 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp305 = zext i32 %tmp304 to i64
  %tmp306 = trunc i16 %tmp303 to i8
  %tmp307 = add i64 %tmp305, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp308 = inttoptr i64 %tmp307 to i8*
  store i8 %tmp306, i8* %tmp308
  %tmp309 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp310 = icmp eq i32 %tmp309, 16384
  br i1 %tmp310, label %block_eb86, label %block_eb8b

block_eb86:                                       ; preds = %block_eb51
  %tmp311 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %tmp305, i16 %tmp303)
  br label %block_eb8bthread-pre-split

block_eb8bthread-pre-split:                       ; preds = %block_ead1, %block_eb86
  %.pr4 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  br label %block_eb8b

block_eb8b:                                       ; preds = %block_eb8bthread-pre-split, %block_eb51
  %tmp312 = phi i32 [ %.pr4, %block_eb8bthread-pre-split ], [ %tmp309, %block_eb51 ]
  %tmp313 = icmp ugt i32 %tmp312, 16381
  br i1 %tmp313, label %block_ebef, label %block_eb98

block_eb98:                                       ; preds = %block_eb8b
  %tmp314 = load i64* @global_var_21a860
  %tmp315 = lshr i64 %tmp314, 16
  %tmp316 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp317 = zext i32 %tmp316 to i64
  %tmp318 = trunc i64 %tmp315 to i8
  %tmp319 = add i64 %tmp317, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp320 = inttoptr i64 %tmp319 to i8*
  store i8 %tmp318, i8* %tmp320
  %tmp321 = load i64* @global_var_21a860
  %tmp322 = lshr i64 %tmp321, 16
  %tmp323 = lshr i64 %tmp321, 24
  %tmp324 = and i64 %tmp323, 255
  %tmp325 = and i64 %tmp322, 4294901760
  %tmp326 = or i64 %tmp325, %tmp324
  %tmp327 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp328 = zext i32 %tmp327 to i64
  %tmp329 = trunc i64 %tmp323 to i8
  %tmp330 = add i64 %tmp328, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp331 = inttoptr i64 %tmp330 to i8*
  store i8 %tmp329, i8* %tmp331
  br label %block_ec68

block_ebef:                                       ; preds = %block_eb8b
  %tmp332 = load i64* @global_var_21a860
  %tmp333 = lshr i64 %tmp332, 16
  %tmp334 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp335 = zext i32 %tmp334 to i64
  %tmp336 = trunc i64 %tmp333 to i8
  %tmp337 = add i64 %tmp335, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp338 = inttoptr i64 %tmp337 to i8*
  store i8 %tmp336, i8* %tmp338
  %tmp339 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp340 = icmp eq i32 %tmp339, 16384
  br i1 %tmp340, label %block_ec25, label %block_ec2a

block_ec25:                                       ; preds = %block_ebef
  %tmp341 = trunc i64 %tmp333 to i16
  %tmp342 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %tmp335, i16 %tmp341)
  br label %block_ec2a

block_ec2a:                                       ; preds = %block_ebef, %block_ec25
  %tmp343 = load i64* @global_var_21a860
  %tmp344 = lshr i64 %tmp343, 16
  %tmp345 = lshr i64 %tmp343, 24
  %tmp346 = and i64 %tmp345, 255
  %tmp347 = and i64 %tmp344, 4294901760
  %tmp348 = or i64 %tmp347, %tmp346
  %tmp349 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  store i32 ptrtoint (i64* @global_var_25f4e1 to i32), i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp350 = zext i32 %tmp349 to i64
  %tmp351 = trunc i64 %tmp345 to i8
  %tmp352 = add i64 %tmp350, ptrtoint (i64* @global_var_24a8a0 to i64)
  %tmp353 = inttoptr i64 %tmp352 to i8*
  store i8 %tmp351, i8* %tmp353
  %tmp354 = load i32* bitcast (i64* @global_var_25f4e0 to i32*)
  %tmp355 = icmp eq i32 %tmp354, 16384
  br i1 %tmp355, label %block_ec63, label %block_ec68

block_ec63:                                       ; preds = %block_ec2a
  %tmp356 = trunc i64 %tmp346 to i16
  %tmp357 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %tmp350, i16 %tmp356)
  br label %block_ec68

block_ec68:                                       ; preds = %block_ec2a, %block_ec63, %block_eb98
  %rcx.0 = phi i64 [ %tmp348, %block_ec2a ], [ %tmp348, %block_ec63 ], [ %tmp326, %block_eb98 ]
  %rdx.0 = phi i64 [ %tmp350, %block_ec2a ], [ %tmp350, %block_ec63 ], [ %tmp328, %block_eb98 ]
  %tmp358 = load i64* @global_var_267540
  %tmp359 = add i64 %tmp358, 8
  store i64 %tmp359, i64* @global_var_267540
  %tmp360 = trunc i64 %rcx.0 to i16
  %tmp361 = call i64 @flush_outbuf(i64 %rdi.2, i64 %rsi.0, i64 %rdx.0, i16 %tmp360)
  %tmp362 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp363 = icmp eq i64 %tmp36, %tmp362
  br i1 %tmp363, label %block_ec98, label %block_ec93

block_ec93:                                       ; preds = %block_ec68
  call void @__stack_chk_fail()
  unreachable

block_ec98:                                       ; preds = %block_ec68
  ret i64 0
}

define i64 @file_read(i8* %arg1, i64 %arg2) {
block_ec9a:
  %tmp20 = load i32* bitcast (i64* @global_var_24f0a0 to i32*)
  %tmp21 = and i64 %arg2, 4294967295
  %tmp22 = ptrtoint i8* %arg1 to i64
  %tmp23 = call i64 @read_buffer(i32 %tmp20, i64 %tmp22, i64 %tmp21)
  %tmp24 = trunc i64 %tmp23 to i32
  %tmp25 = icmp eq i32 %tmp24, 0
  br i1 %tmp25, label %block_ecc9, label %block_ecce

block_ecc9:                                       ; preds = %block_ec9a
  %rax.0.pre = and i64 %tmp23, 4294967295
  br label %block_ed08

block_ecce:                                       ; preds = %block_ec9a
  %tmp26 = icmp eq i32 %tmp24, -1
  br i1 %tmp26, label %block_ecd4, label %block_ecd9

block_ecd4:                                       ; preds = %block_ecce
  %tmp27 = call i64 @read_error()
  unreachable

block_ecd9:                                       ; preds = %block_ecce
  %tmp28 = call i64 @updcrc(i8* %arg1, i32 %tmp24)
  store i64 %tmp28, i64* @global_var_21a408
  %tmp29 = and i64 %tmp23, 4294967295
  %tmp30 = load i64* @global_var_21a860
  %tmp31 = add i64 %tmp30, %tmp29
  store i64 %tmp31, i64* @global_var_21a860
  br label %block_ed08

block_ed08:                                       ; preds = %block_ecd9, %block_ecc9
  %rax.0.pre-phi = phi i64 [ %tmp29, %block_ecd9 ], [ %rax.0.pre, %block_ecc9 ]
  ret i64 %rax.0.pre-phi
}

define i64 @last_component(i8* %arg1) {
block_ed0a:
  %tmp26 = load i8* %arg1
  %tmp27 = icmp eq i8 %tmp26, 47
  br i1 %tmp27, label %block_ed20, label %block_ed30

block_ed20:                                       ; preds = %block_ed0a, %block_ed20
  %stack_var_-24.06 = phi i8* [ %tmp30, %block_ed20 ], [ %arg1, %block_ed0a ]
  %tmp28 = ptrtoint i8* %stack_var_-24.06 to i64
  %tmp29 = add i64 %tmp28, 1
  %tmp30 = inttoptr i64 %tmp29 to i8*
  %tmp31 = load i8* %tmp30
  %tmp32 = icmp eq i8 %tmp31, 47
  br i1 %tmp32, label %block_ed20, label %block_ed30

block_ed30:                                       ; preds = %block_ed20, %block_ed0a
  %stack_var_-24.0.lcssa = phi i8* [ %arg1, %block_ed0a ], [ %tmp30, %block_ed20 ]
  %tmp33 = load i8* %stack_var_-24.0.lcssa
  %tmp34 = icmp eq i8 %tmp33, 0
  br i1 %tmp34, label %block_ed6d, label %block_ed3a

block_ed3a:                                       ; preds = %block_ed30, %block_ed5d
  %stack_var_-24.25 = phi i8* [ %stack_var_-24.1, %block_ed5d ], [ %stack_var_-24.0.lcssa, %block_ed30 ]
  %stack_var_-16.04 = phi i8* [ %tmp40, %block_ed5d ], [ %stack_var_-24.0.lcssa, %block_ed30 ]
  %stack_var_-25.13 = phi i8 [ %stack_var_-25.0, %block_ed5d ], [ 0, %block_ed30 ]
  %tmp35 = load i8* %stack_var_-16.04
  %tmp36 = icmp eq i8 %tmp35, 47
  br i1 %tmp36, label %block_ed45, label %block_ed4b

block_ed45:                                       ; preds = %block_ed3a
  br label %block_ed5d

block_ed4b:                                       ; preds = %block_ed3a
  %tmp37 = icmp eq i8 %stack_var_-25.13, 0
  br i1 %tmp37, label %block_ed5d, label %block_ed51

block_ed51:                                       ; preds = %block_ed4b
  br label %block_ed5d

block_ed5d:                                       ; preds = %block_ed51, %block_ed4b, %block_ed45
  %stack_var_-25.0 = phi i8 [ 0, %block_ed4b ], [ 0, %block_ed51 ], [ 1, %block_ed45 ]
  %stack_var_-24.1 = phi i8* [ %stack_var_-24.25, %block_ed4b ], [ %stack_var_-16.04, %block_ed51 ], [ %stack_var_-24.25, %block_ed45 ]
  %tmp38 = ptrtoint i8* %stack_var_-16.04 to i64
  %tmp39 = add i64 %tmp38, 1
  %tmp40 = inttoptr i64 %tmp39 to i8*
  %tmp41 = load i8* %tmp40
  %tmp42 = icmp eq i8 %tmp41, 0
  br i1 %tmp42, label %block_ed6d, label %block_ed3a

block_ed6d:                                       ; preds = %block_ed5d, %block_ed30
  %stack_var_-24.2.lcssa = phi i8* [ %stack_var_-24.0.lcssa, %block_ed30 ], [ %stack_var_-24.1, %block_ed5d ]
  %tmp43 = ptrtoint i8* %stack_var_-24.2.lcssa to i64
  ret i64 %tmp43
}

define i64 @base_len(i8* %arg1) {
block_ed73:
  %tmp20 = call i32 @strlen(i8* %arg1)
  %tmp21 = sext i32 %tmp20 to i64
  %tmp22 = icmp ult i32 %tmp20, 2
  br i1 %tmp22, label %block_edbb, label %block_eda5.lr.ph

block_eda5.lr.ph:                                 ; preds = %block_ed73
  %tmp23 = ptrtoint i8* %arg1 to i64
  br label %block_eda5

block_ed99:                                       ; preds = %block_eda5
  %tmp24 = icmp ult i64 %tmp25, 2
  br i1 %tmp24, label %block_edbb, label %block_eda5

block_eda5:                                       ; preds = %block_eda5.lr.ph, %block_ed99
  %stack_var_-24.01 = phi i64 [ %tmp21, %block_eda5.lr.ph ], [ %tmp25, %block_ed99 ]
  %tmp25 = add i64 %stack_var_-24.01, -1
  %tmp26 = add i64 %tmp25, %tmp23
  %tmp27 = inttoptr i64 %tmp26 to i8*
  %tmp28 = load i8* %tmp27
  %tmp29 = icmp eq i8 %tmp28, 47
  br i1 %tmp29, label %block_ed99, label %block_edbb

block_edbb:                                       ; preds = %block_ed99, %block_eda5, %block_ed73
  %stack_var_-24.0.lcssa = phi i64 [ %tmp21, %block_ed73 ], [ %tmp25, %block_ed99 ], [ %stack_var_-24.01, %block_eda5 ]
  ret i64 %stack_var_-24.0.lcssa
}

define i64 @open_safer(i8* %arg1, i64 %arg2, i64* %arg3, i64 %arg4, i64 %arg5, i64 %arg6) {
block_edc1:
  %0 = alloca i128
  %1 = alloca i64
  %2 = load i64* %1
  %3 = load i128* %0
  %4 = load i128* %0
  %5 = load i128* %0
  %6 = load i128* %0
  %7 = load i128* %0
  %8 = load i128* %0
  %9 = load i128* %0
  %10 = load i128* %0
  %tmp51 = trunc i64 %arg2 to i32
  %tmp52 = trunc i64 %2 to i8
  %tmp53 = icmp eq i8 %tmp52, 0
  br i1 %tmp53, label %block_ee19, label %block_edf9

block_edf9:                                       ; preds = %block_edc1
  %tmp54 = call i64 @__asm_movaps(i128 %10)
  %tmp55 = call i64 @__asm_movaps(i128 %9)
  %tmp56 = call i64 @__asm_movaps(i128 %8)
  %tmp57 = call i64 @__asm_movaps(i128 %7)
  %tmp58 = call i64 @__asm_movaps(i128 %6)
  %tmp59 = call i64 @__asm_movaps(i128 %5)
  %tmp60 = call i64 @__asm_movaps(i128 %4)
  %tmp61 = call i64 @__asm_movaps(i128 %3)
  br label %block_ee19

block_ee19:                                       ; preds = %block_edf9, %block_edc1
  %tmp62 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp63 = and i32 %tmp51, 64
  %tmp64 = icmp eq i32 %tmp63, 0
  br i1 %tmp64, label %block_eeb7, label %block_ee42

block_ee42:                                       ; preds = %block_ee19
  br label %block_eeb7

block_eeb7:                                       ; preds = %block_ee42, %block_ee19
  %tmp65 = call i32 (i8*, i32, ...)* @open(i8* %arg1, i32 %tmp51)
  %tmp66 = call i64 @fd_safer(i32 %tmp65)
  %tmp67 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp68 = icmp eq i64 %tmp62, %tmp67
  br i1 %tmp68, label %block_eef7, label %block_eef2

block_eef2:                                       ; preds = %block_eeb7
  call void @__stack_chk_fail()
  unreachable

block_eef7:                                       ; preds = %block_eeb7
  ret i64 %tmp66
}

define i64 @openat_safer(i32 %arg1, i64 %arg2, i32 %arg3, i64 %arg4, i64 %arg5, i64 %arg6) {
block_eef9:
  %0 = alloca i128
  %1 = alloca i64
  %2 = load i64* %1
  %3 = load i128* %0
  %4 = load i128* %0
  %5 = load i128* %0
  %6 = load i128* %0
  %7 = load i128* %0
  %8 = load i128* %0
  %9 = load i128* %0
  %10 = load i128* %0
  %tmp51 = inttoptr i64 %arg2 to i8*
  %tmp52 = trunc i64 %2 to i8
  %tmp53 = icmp eq i8 %tmp52, 0
  br i1 %tmp53, label %block_ef50, label %block_ef30

block_ef30:                                       ; preds = %block_eef9
  %tmp54 = call i64 @__asm_movaps(i128 %10)
  %tmp55 = call i64 @__asm_movaps(i128 %9)
  %tmp56 = call i64 @__asm_movaps(i128 %8)
  %tmp57 = call i64 @__asm_movaps(i128 %7)
  %tmp58 = call i64 @__asm_movaps(i128 %6)
  %tmp59 = call i64 @__asm_movaps(i128 %5)
  %tmp60 = call i64 @__asm_movaps(i128 %4)
  %tmp61 = call i64 @__asm_movaps(i128 %3)
  br label %block_ef50

block_ef50:                                       ; preds = %block_ef30, %block_eef9
  %tmp62 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp63 = and i32 %arg3, 64
  %tmp64 = icmp eq i32 %tmp63, 0
  br i1 %tmp64, label %block_efee, label %block_ef79

block_ef79:                                       ; preds = %block_ef50
  br label %block_efee

block_efee:                                       ; preds = %block_ef79, %block_ef50
  %tmp66 = call i32 (i32, i8*, i32, ...)* @openat(i32 %arg1, i8* %tmp51, i32 %arg3)
  %tmp67 = call i64 @fd_safer(i32 %tmp66)
  %tmp68 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp69 = icmp eq i64 %tmp62, %tmp68
  br i1 %tmp69, label %block_f031, label %block_f02c

block_f02c:                                       ; preds = %block_efee
  call void @__stack_chk_fail()
  unreachable

block_f031:                                       ; preds = %block_efee
  ret i64 %tmp67
}

define i64 @direntry_cmp_name(i64* %arg1, i64 %arg2) {
block_f033:
  %tmp18 = inttoptr i64 %arg2 to i64*
  %tmp19 = load i64* %tmp18
  %tmp20 = load i64* %arg1
  %tmp21 = inttoptr i64 %tmp20 to i8*
  %tmp22 = inttoptr i64 %tmp19 to i8*
  %tmp23 = call i32 @strcmp(i8* %tmp21, i8* %tmp22)
  %tmp24 = sext i32 %tmp23 to i64
  ret i64 %tmp24
}

define i64 @streamsavedir(%__dirstream* %arg1, i64 %arg2) {
block_f06e:
  %stack_var_-136 = alloca i8*
  %tmp71 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp72 = shl i64 %arg2, 3
  %tmp73 = and i64 %tmp72, 34359738360
  %tmp74 = add i64 %tmp73, ptrtoint (i64* @global_var_215b50 to i64)
  %tmp75 = inttoptr i64 %tmp74 to i64*
  %tmp76 = load i64* %tmp75
  %tmp77 = inttoptr i64 %tmp76 to i32 (i64*, i64*)*
  %tmp78 = ptrtoint %__dirstream* %arg1 to i64
  %tmp79 = icmp eq i64 %tmp78, 0
  br i1 %tmp79, label %block_f0ed, label %block_f0f7.preheader

block_f0f7.preheader:                             ; preds = %block_f06e
  %tmp80 = ptrtoint i32 (i64*, i64*)* %tmp77 to i64
  %tmp81 = icmp eq i64 %tmp80, 0
  %tmp82 = bitcast i8** %stack_var_-136 to i64*
  br label %block_f0f7.outer

block_f0ed:                                       ; preds = %block_f06e
  br label %block_f3ba

block_f0f7:                                       ; preds = %block_f0f7.outer, %block_f159
  %tmp83 = call i32* @__errno_location()
  store i32 0, i32* %tmp83
  %tmp84 = call %dirent* @readdir(%__dirstream* %arg1)
  %tmp85 = bitcast %dirent* %tmp84 to i8*
  %tmp86 = ptrtoint i8* %tmp85 to i64
  %tmp87 = icmp eq i64 %tmp86, 0
  br i1 %tmp87, label %block_f262, label %block_f120

block_f120:                                       ; preds = %block_f0f7
  %tmp88 = add i64 %tmp86, 19
  %tmp89 = inttoptr i64 %tmp88 to i8*
  %tmp90 = load i8* %tmp89
  %tmp91 = icmp eq i8 %tmp90, 46
  br i1 %tmp91, label %block_f137, label %block_f154

block_f137:                                       ; preds = %block_f120
  %tmp92 = add i64 %tmp86, 20
  %tmp93 = inttoptr i64 %tmp92 to i8*
  %tmp94 = load i8* %tmp93
  %tmp95 = icmp eq i8 %tmp94, 46
  br i1 %tmp95, label %block_f14d, label %block_f146

block_f146:                                       ; preds = %block_f137
  br label %block_f159

block_f14d:                                       ; preds = %block_f137
  br label %block_f159

block_f154:                                       ; preds = %block_f120
  br label %block_f159

block_f159:                                       ; preds = %block_f154, %block_f14d, %block_f146
  %rax.0 = phi i64 [ 0, %block_f154 ], [ 2, %block_f14d ], [ 1, %block_f146 ]
  %tmp96 = add i64 %rax.0, %tmp88
  %tmp97 = inttoptr i64 %tmp96 to i8*
  %tmp98 = load i8* %tmp97
  %tmp99 = icmp eq i8 %tmp98, 0
  br i1 %tmp99, label %block_f0f7, label %block_f167

block_f167:                                       ; preds = %block_f159
  %tmp100 = call i32 @strlen(i8* %tmp89)
  %tmp101 = zext i32 %tmp100 to i64
  %tmp102 = add nuw nsw i64 %tmp101, 1
  %tmp103 = trunc i64 %tmp102 to i32
  br i1 %tmp81, label %block_f1e6, label %block_f186

block_f186:                                       ; preds = %block_f167
  %tmp104 = ptrtoint i8* %stack_var_-104.0.ph to i64
  %tmp105 = sext i32 %stack_var_-96.0.ph to i64
  %tmp106 = icmp eq i64 %tmp104, %tmp105
  br i1 %tmp106, label %block_f190, label %block_f1bc

block_f190:                                       ; preds = %block_f186
  store i8* %stack_var_-104.0.ph, i8** %stack_var_-136
  %tmp107 = call i64 @x2nrealloc(i64 %stack_var_-112.0.ph, i64* %tmp82, i128 8)
  %tmp108 = load i8** %stack_var_-136
  br label %block_f1bc

block_f1bc:                                       ; preds = %block_f186, %block_f190
  %stack_var_-104.1 = phi i8* [ %stack_var_-104.0.ph, %block_f186 ], [ %tmp108, %block_f190 ]
  %stack_var_-112.1 = phi i64 [ %stack_var_-112.0.ph, %block_f186 ], [ %tmp107, %block_f190 ]
  %tmp109 = shl nsw i64 %tmp105, 3
  %tmp110 = add i64 %stack_var_-112.1, %tmp109
  %tmp111 = call i64 @xstrdup(i8* %tmp89)
  %tmp112 = inttoptr i64 %tmp110 to i64*
  store i64 %tmp111, i64* %tmp112
  %tmp113 = zext i32 %stack_var_-96.0.ph to i64
  %tmp114 = add nuw nsw i64 %tmp113, 1
  %tmp115 = trunc i64 %tmp114 to i32
  %.pre = sext i32 %tmp103 to i64
  %.pre25 = ptrtoint i8* %stack_var_-88.0.ph to i64
  br label %block_f255

block_f1e6:                                       ; preds = %block_f167
  %tmp116 = ptrtoint i8* %stack_var_-120.0.ph to i64
  %tmp117 = ptrtoint i8* %stack_var_-88.0.ph to i64
  %tmp118 = sub i64 %tmp116, %tmp117
  %tmp119 = sext i32 %tmp103 to i64
  %tmp120 = icmp ult i64 %tmp119, %tmp118
  br i1 %tmp120, label %block_f236, label %block_f1f4

block_f1f4:                                       ; preds = %block_f1e6
  %tmp121 = add i64 %tmp119, %tmp117
  %tmp122 = inttoptr i64 %tmp121 to i8*
  store i8* %tmp122, i8** %stack_var_-136
  %tmp123 = ptrtoint i8* %tmp122 to i64
  %tmp124 = icmp ugt i64 %tmp117, %tmp123
  br i1 %tmp124, label %block_f20d, label %block_f212

block_f20d:                                       ; preds = %block_f1f4
  %tmp125 = call i64 @xalloc_die()
  unreachable

block_f212:                                       ; preds = %block_f1f4
  %tmp126 = call i64 @x2nrealloc(i64 %stack_var_-128.0.ph, i64* %tmp82, i128 1)
  %tmp127 = load i8** %stack_var_-136
  br label %block_f236

block_f236:                                       ; preds = %block_f212, %block_f1e6
  %stack_var_-120.1 = phi i8* [ %stack_var_-120.0.ph, %block_f1e6 ], [ %tmp127, %block_f212 ]
  %stack_var_-128.1 = phi i64 [ %stack_var_-128.0.ph, %block_f1e6 ], [ %tmp126, %block_f212 ]
  %tmp128 = add i64 %stack_var_-128.1, %tmp117
  %tmp129 = inttoptr i64 %tmp128 to i64*
  %tmp130 = inttoptr i64 %tmp88 to i64*
  %tmp131 = call i64* @memcpy(i64* %tmp129, i64* %tmp130, i32 %tmp103)
  br label %block_f255

block_f255:                                       ; preds = %block_f236, %block_f1bc
  %.pre-phi26 = phi i64 [ %tmp117, %block_f236 ], [ %.pre25, %block_f1bc ]
  %.pre-phi = phi i64 [ %tmp119, %block_f236 ], [ %.pre, %block_f1bc ]
  %stack_var_-96.1 = phi i32 [ %stack_var_-96.0.ph, %block_f236 ], [ %tmp115, %block_f1bc ]
  %stack_var_-104.2 = phi i8* [ %stack_var_-104.0.ph, %block_f236 ], [ %stack_var_-104.1, %block_f1bc ]
  %stack_var_-112.2 = phi i64 [ %stack_var_-112.0.ph, %block_f236 ], [ %stack_var_-112.1, %block_f1bc ]
  %stack_var_-120.2 = phi i8* [ %stack_var_-120.1, %block_f236 ], [ %stack_var_-120.0.ph, %block_f1bc ]
  %stack_var_-128.2 = phi i64 [ %stack_var_-128.1, %block_f236 ], [ %stack_var_-128.0.ph, %block_f1bc ]
  %tmp132 = add i64 %.pre-phi, %.pre-phi26
  %tmp133 = inttoptr i64 %tmp132 to i8*
  br label %block_f0f7.outer

block_f0f7.outer:                                 ; preds = %block_f0f7.preheader, %block_f255
  %stack_var_-96.0.ph = phi i32 [ 0, %block_f0f7.preheader ], [ %stack_var_-96.1, %block_f255 ]
  %stack_var_-104.0.ph = phi i8* [ null, %block_f0f7.preheader ], [ %stack_var_-104.2, %block_f255 ]
  %stack_var_-88.0.ph = phi i8* [ null, %block_f0f7.preheader ], [ %tmp133, %block_f255 ]
  %stack_var_-112.0.ph = phi i64 [ 0, %block_f0f7.preheader ], [ %stack_var_-112.2, %block_f255 ]
  %stack_var_-120.0.ph = phi i8* [ null, %block_f0f7.preheader ], [ %stack_var_-120.2, %block_f255 ]
  %stack_var_-128.0.ph = phi i64 [ 0, %block_f0f7.preheader ], [ %stack_var_-128.2, %block_f255 ]
  br label %block_f0f7

block_f262:                                       ; preds = %block_f0f7
  %tmp134 = call i32* @__errno_location()
  %tmp135 = load i32* %tmp134
  %tmp136 = icmp eq i32 %tmp135, 0
  br i1 %tmp136, label %block_f2ab, label %block_f279

block_f279:                                       ; preds = %block_f262
  %tmp137 = inttoptr i64 %stack_var_-112.0.ph to i64*
  call void @free(i64* %tmp137)
  %tmp138 = inttoptr i64 %stack_var_-128.0.ph to i64*
  call void @free(i64* %tmp138)
  %tmp139 = call i32* @__errno_location()
  store i32 %tmp135, i32* %tmp139
  br label %block_f3ba

block_f2ab:                                       ; preds = %block_f262
  br i1 %tmp81, label %block_f383, label %block_f2b6

block_f2b6:                                       ; preds = %block_f2ab
  %tmp140 = icmp eq i32 %stack_var_-96.0.ph, 0
  br i1 %tmp140, label %block_f2d9, label %block_f2bd

block_f2bd:                                       ; preds = %block_f2b6
  %tmp141 = inttoptr i64 %stack_var_-112.0.ph to i64*
  call void @qsort(i64* %tmp141, i32 %stack_var_-96.0.ph, i32 8, i32 (i64*, i64*)* %tmp77)
  br label %block_f2d9

block_f2d9:                                       ; preds = %block_f2bd, %block_f2b6
  %tmp142 = ptrtoint i8* %stack_var_-88.0.ph to i64
  %tmp143 = add i64 %tmp142, 1
  %tmp144 = trunc i64 %tmp143 to i32
  %tmp145 = call i64 @xmalloc(i32 %tmp144)
  %tmp146 = sext i32 %stack_var_-96.0.ph to i64
  br i1 %tmp140, label %block_f375, label %block_f2ff

block_f2ff:                                       ; preds = %block_f2d9, %block_f2ff
  %stack_var_-80.017 = phi i64 [ %tmp164, %block_f2ff ], [ 0, %block_f2d9 ]
  %stack_var_-88.116 = phi i8* [ %tmp161, %block_f2ff ], [ null, %block_f2d9 ]
  %tmp147 = ptrtoint i8* %stack_var_-88.116 to i64
  %tmp148 = add i64 %tmp147, %tmp145
  %tmp149 = inttoptr i64 %tmp148 to i8*
  %tmp150 = shl i64 %stack_var_-80.017, 3
  %tmp151 = add i64 %tmp150, %stack_var_-112.0.ph
  %tmp152 = inttoptr i64 %tmp151 to i64*
  %tmp153 = load i64* %tmp152
  %tmp154 = inttoptr i64 %tmp153 to i8*
  %tmp155 = call i8* @stpcpy(i8* %tmp149, i8* %tmp154)
  %tmp156 = ptrtoint i8* %tmp155 to i64
  %tmp157 = ptrtoint i8* %tmp149 to i64
  %tmp158 = add i64 %tmp147, 1
  %tmp159 = add i64 %tmp158, %tmp156
  %tmp160 = sub i64 %tmp159, %tmp157
  %tmp161 = inttoptr i64 %tmp160 to i8*
  %tmp162 = load i64* %tmp152
  %tmp163 = inttoptr i64 %tmp162 to i64*
  call void @free(i64* %tmp163)
  %tmp164 = add nuw i64 %stack_var_-80.017, 1
  %tmp165 = icmp ult i64 %tmp164, %tmp146
  br i1 %tmp165, label %block_f2ff, label %block_f375

block_f375:                                       ; preds = %block_f2ff, %block_f2d9
  %stack_var_-88.1.lcssa = phi i8* [ null, %block_f2d9 ], [ %tmp161, %block_f2ff ]
  %tmp166 = inttoptr i64 %stack_var_-112.0.ph to i64*
  call void @free(i64* %tmp166)
  br label %block_f3a8

block_f383:                                       ; preds = %block_f2ab
  %tmp167 = ptrtoint i8* %stack_var_-88.0.ph to i64
  %tmp168 = ptrtoint i8* %stack_var_-120.0.ph to i64
  %tmp169 = icmp eq i64 %tmp167, %tmp168
  br i1 %tmp169, label %block_f38d, label %block_f3a8

block_f38d:                                       ; preds = %block_f383
  %tmp170 = add i64 %tmp167, 1
  %tmp171 = inttoptr i64 %stack_var_-128.0.ph to i64*
  %tmp172 = call i64 @xrealloc(i64* %tmp171, i64 %tmp170)
  br label %block_f3a8

block_f3a8:                                       ; preds = %block_f383, %block_f38d, %block_f375
  %stack_var_-88.2 = phi i8* [ %stack_var_-88.0.ph, %block_f383 ], [ %stack_var_-88.0.ph, %block_f38d ], [ %stack_var_-88.1.lcssa, %block_f375 ]
  %stack_var_-128.3 = phi i64 [ %stack_var_-128.0.ph, %block_f383 ], [ %tmp172, %block_f38d ], [ %tmp145, %block_f375 ]
  %tmp173 = ptrtoint i8* %stack_var_-88.2 to i64
  %tmp174 = add i64 %tmp173, %stack_var_-128.3
  %tmp175 = inttoptr i64 %tmp174 to i8*
  store i8 0, i8* %tmp175
  br label %block_f3ba

block_f3ba:                                       ; preds = %block_f3a8, %block_f279, %block_f0ed
  %rax.1 = phi i64 [ %stack_var_-128.3, %block_f3a8 ], [ 0, %block_f279 ], [ 0, %block_f0ed ]
  %tmp176 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp177 = icmp eq i64 %tmp71, %tmp176
  br i1 %tmp177, label %block_f3ce, label %block_f3c9

block_f3c9:                                       ; preds = %block_f3ba
  call void @__stack_chk_fail()
  unreachable

block_f3ce:                                       ; preds = %block_f3ba
  ret i64 %rax.1
}

define i64 @savedir(i64 %arg1, i32 %arg2) {
block_f3d8:
  %tmp22 = inttoptr i64 %arg1 to i8*
  %tmp23 = call i64 @opendir_safer(i8* %tmp22)
  %tmp24 = inttoptr i64 %tmp23 to %__dirstream*
  %tmp25 = ptrtoint %__dirstream* %tmp24 to i64
  %tmp26 = icmp eq i64 %tmp25, 0
  br i1 %tmp26, label %block_f3fe, label %block_f405

block_f3fe:                                       ; preds = %block_f3d8
  br label %block_f458

block_f405:                                       ; preds = %block_f3d8
  %tmp27 = zext i32 %arg2 to i64
  %tmp28 = call i64 @streamsavedir(%__dirstream* %tmp24, i64 %tmp27)
  %tmp29 = call i32 @closedir(%__dirstream* %tmp24)
  %tmp30 = icmp eq i32 %tmp29, 0
  br i1 %tmp30, label %block_f454, label %block_f42a

block_f42a:                                       ; preds = %block_f405
  %tmp31 = call i32* @__errno_location()
  %tmp32 = load i32* %tmp31
  %tmp33 = inttoptr i64 %tmp28 to i64*
  call void @free(i64* %tmp33)
  %tmp34 = call i32* @__errno_location()
  store i32 %tmp32, i32* %tmp34
  br label %block_f458

block_f454:                                       ; preds = %block_f405
  br label %block_f458

block_f458:                                       ; preds = %block_f454, %block_f42a, %block_f3fe
  %rax.0 = phi i64 [ %tmp28, %block_f454 ], [ 0, %block_f42a ], [ 0, %block_f3fe ]
  ret i64 %rax.0
}

define i64 @get_stat_atime_ns(i64* %arg1) {
block_f45a:
  %tmp4 = ptrtoint i64* %arg1 to i64
  %tmp8 = add i64 %tmp4, 80
  %tmp9 = inttoptr i64 %tmp8 to i64*
  %tmp10 = load i64* %tmp9
  ret i64 %tmp10
}

define i64 @get_stat_ctime_ns(i64 %arg1) {
block_f46c:
  %tmp7 = add i64 %arg1, 112
  %tmp8 = inttoptr i64 %tmp7 to i64*
  %tmp9 = load i64* %tmp8
  ret i64 %tmp9
}

define i64 @get_stat_mtime_ns(i64* %arg1) {
block_f47e:
  %tmp4 = ptrtoint i64* %arg1 to i64
  %tmp8 = add i64 %tmp4, 96
  %tmp9 = inttoptr i64 %tmp8 to i64*
  %tmp10 = load i64* %tmp9
  ret i64 %tmp10
}

define i64 @get_stat_birthtime_ns(i64 %arg1) {
block_f490:
  ret i64 0
}

define i64 @get_stat_atime(i64 %arg1) {
block_f49f:
  %tmp8 = add i64 %arg1, 72
  %tmp9 = inttoptr i64 %tmp8 to i64*
  %tmp10 = load i64* %tmp9
  ret i64 %tmp10
}

define i64 @get_stat_ctime(i64 %arg1) {
block_f4b5:
  %tmp8 = add i64 %arg1, 104
  %tmp9 = inttoptr i64 %tmp8 to i64*
  %tmp10 = load i64* %tmp9
  ret i64 %tmp10
}

define i64 @get_stat_mtime(i64* %arg1) {
block_f4cb:
  %tmp5 = ptrtoint i64* %arg1 to i64
  %tmp9 = add i64 %tmp5, 88
  %tmp10 = inttoptr i64 %tmp9 to i64*
  %tmp11 = load i64* %tmp10
  ret i64 %tmp11
}

define i64 @get_stat_birthtime(i64 %arg1) {
block_f4e1:
  ret i64 -1
}

define i64 @stat_time_normalize(i32 %arg1, i64 %arg2) {
block_f503:
  %tmp9 = zext i32 %arg1 to i64
  ret i64 %tmp9
}

define i64 @fd_safer(i32 %arg1) {
block_f513:
  %tmp19 = icmp slt i32 %arg1, 0
  br i1 %tmp19, label %block_f55e, label %block_f524

block_f524:                                       ; preds = %block_f513
  %tmp20 = icmp sgt i32 %arg1, 2
  br i1 %tmp20, label %block_f55e, label %block_f52a

block_f52a:                                       ; preds = %block_f524
  %tmp21 = call i64 @dup_safer(i32 %arg1)
  %tmp22 = trunc i64 %tmp21 to i32
  %tmp23 = call i32* @__errno_location()
  %tmp24 = load i32* %tmp23
  %tmp25 = call i32 @close(i32 %arg1)
  %tmp26 = call i32* @__errno_location()
  store i32 %tmp24, i32* %tmp26
  br label %block_f55e

block_f55e:                                       ; preds = %block_f52a, %block_f524, %block_f513
  %stack_var_-28.0 = phi i32 [ %arg1, %block_f513 ], [ %arg1, %block_f524 ], [ %tmp22, %block_f52a ]
  %tmp27 = zext i32 %stack_var_-28.0 to i64
  ret i64 %tmp27
}

define i64 @validate_timespec(i64* %arg1) {
block_f563:
  %tmp11 = ptrtoint i64* %arg1 to i64
  %tmp22 = add i64 %tmp11, 8
  %tmp23 = inttoptr i64 %tmp22 to i64*
  %tmp24 = load i64* %tmp23
  %tmp25 = icmp eq i64 %tmp24, 1073741823
  br i1 %tmp25, label %block_f5ba, label %block_f58d

block_f58d:                                       ; preds = %block_f563
  %tmp26 = load i64* %tmp23
  %tmp27 = icmp eq i64 %tmp26, 1073741822
  br i1 %tmp27, label %block_f5ba, label %block_f59d

block_f59d:                                       ; preds = %block_f58d
  %tmp28 = load i64* %tmp23
  %tmp29 = icmp slt i64 %tmp28, 0
  br i1 %tmp29, label %block_f607, label %block_f5aa

block_f5aa:                                       ; preds = %block_f59d
  %tmp30 = load i64* %tmp23
  %tmp31 = icmp sgt i64 %tmp30, 999999999
  br i1 %tmp31, label %block_f607, label %block_f5ba

block_f5ba:                                       ; preds = %block_f5aa, %block_f58d, %block_f563
  %tmp32 = add i64 %tmp11, 24
  %tmp33 = inttoptr i64 %tmp32 to i64*
  %tmp34 = load i64* %tmp33
  %tmp35 = icmp eq i64 %tmp34, 1073741823
  br i1 %tmp35, label %block_f61c, label %block_f5ce

block_f5ce:                                       ; preds = %block_f5ba
  %tmp36 = load i64* %tmp33
  %tmp37 = icmp eq i64 %tmp36, 1073741822
  br i1 %tmp37, label %block_f61c, label %block_f5e2

block_f5e2:                                       ; preds = %block_f5ce
  %tmp38 = load i64* %tmp33
  %tmp39 = icmp slt i64 %tmp38, 0
  br i1 %tmp39, label %block_f607, label %block_f5f3

block_f5f3:                                       ; preds = %block_f5e2
  %tmp40 = load i64* %tmp33
  %tmp41 = icmp slt i64 %tmp40, 1000000000
  br i1 %tmp41, label %block_f61c, label %block_f607

block_f607:                                       ; preds = %block_f5f3, %block_f5e2, %block_f5aa, %block_f59d
  %tmp42 = call i32* @__errno_location()
  store i32 22, i32* %tmp42
  br label %block_f6c7

block_f61c:                                       ; preds = %block_f5f3, %block_f5ce, %block_f5ba
  %tmp43 = load i64* %tmp23
  %tmp44 = icmp eq i64 %tmp43, 1073741823
  br i1 %tmp44, label %block_f63c, label %block_f62c

block_f62c:                                       ; preds = %block_f61c
  %tmp45 = load i64* %tmp23
  %tmp46 = icmp eq i64 %tmp45, 1073741822
  br i1 %tmp46, label %block_f63c, label %block_f662

block_f63c:                                       ; preds = %block_f62c, %block_f61c
  store i64 0, i64* %arg1
  %tmp47 = load i64* %tmp23
  %tmp48 = icmp eq i64 %tmp47, 1073741822
  br i1 %tmp48, label %block_f65e, label %block_f662

block_f65e:                                       ; preds = %block_f63c
  br label %block_f662

block_f662:                                       ; preds = %block_f63c, %block_f62c, %block_f65e
  %stack_var_-16.0 = phi i32 [ 1, %block_f63c ], [ 1, %block_f65e ], [ 0, %block_f62c ]
  %stack_var_-12.0 = phi i32 [ 0, %block_f63c ], [ 1, %block_f65e ], [ 0, %block_f62c ]
  %tmp49 = load i64* %tmp33
  %tmp50 = icmp eq i64 %tmp49, 1073741823
  br i1 %tmp50, label %block_f68a, label %block_f676

block_f676:                                       ; preds = %block_f662
  %tmp51 = load i64* %tmp33
  %tmp52 = icmp eq i64 %tmp51, 1073741822
  br i1 %tmp52, label %block_f68a, label %block_f6b8

block_f68a:                                       ; preds = %block_f676, %block_f662
  %tmp53 = add i64 %tmp11, 16
  %tmp54 = inttoptr i64 %tmp53 to i64*
  store i64 0, i64* %tmp54
  %tmp55 = load i64* %tmp33
  %tmp56 = icmp eq i64 %tmp55, 1073741822
  br i1 %tmp56, label %block_f6b4, label %block_f6b8

block_f6b4:                                       ; preds = %block_f68a
  %tmp57 = add nuw nsw i32 %stack_var_-12.0, 1
  br label %block_f6b8

block_f6b8:                                       ; preds = %block_f68a, %block_f676, %block_f6b4
  %stack_var_-16.1 = phi i32 [ 1, %block_f68a ], [ 1, %block_f6b4 ], [ %stack_var_-16.0, %block_f676 ]
  %stack_var_-12.1 = phi i32 [ %stack_var_-12.0, %block_f68a ], [ %tmp57, %block_f6b4 ], [ %stack_var_-12.0, %block_f676 ]
  %tmp58 = icmp eq i32 %stack_var_-12.1, 1
  %tmp59 = zext i1 %tmp58 to i32
  %tmp60 = add nsw i32 %tmp59, %stack_var_-16.1
  %tmp61 = zext i32 %tmp60 to i64
  br label %block_f6c7

block_f6c7:                                       ; preds = %block_f6b8, %block_f607
  %rax.1 = phi i64 [ %tmp61, %block_f6b8 ], [ 4294967295, %block_f607 ]
  ret i64 %rax.1
}

define i64 @update_timespec(i64* %arg1, i64* %arg2, i64* %arg3) {
block_f6c9:
  %tmp14 = ptrtoint i64* %arg3 to i64
  %tmp16 = ptrtoint i64* %arg1 to i64
  %tmp23 = load i64* %arg2
  %tmp24 = add i64 %tmp23, 8
  %tmp25 = inttoptr i64 %tmp24 to i64*
  %tmp26 = load i64* %tmp25
  %tmp27 = icmp eq i64 %tmp26, 1073741822
  br i1 %tmp27, label %block_f6f5, label %block_f713

block_f6f5:                                       ; preds = %block_f6c9
  %tmp28 = add i64 %tmp23, 24
  %tmp29 = inttoptr i64 %tmp28 to i64*
  %tmp30 = load i64* %tmp29
  %tmp31 = icmp eq i64 %tmp30, 1073741822
  br i1 %tmp31, label %block_f709, label %block_f713

block_f709:                                       ; preds = %block_f6f5
  br label %block_f7eb

block_f713:                                       ; preds = %block_f6f5, %block_f6c9
  %tmp32 = load i64* %tmp25
  %tmp33 = icmp eq i64 %tmp32, 1073741823
  br i1 %tmp33, label %block_f723, label %block_f74c

block_f723:                                       ; preds = %block_f713
  %tmp34 = add i64 %tmp23, 24
  %tmp35 = inttoptr i64 %tmp34 to i64*
  %tmp36 = load i64* %tmp35
  %tmp37 = icmp eq i64 %tmp36, 1073741823
  br i1 %tmp37, label %block_f737, label %block_f74c

block_f737:                                       ; preds = %block_f723
  store i64 0, i64* %arg2
  br label %block_f7eb

block_f74c:                                       ; preds = %block_f723, %block_f713
  %tmp40 = load i64* %tmp25
  %tmp41 = icmp eq i64 %tmp40, 1073741822
  br i1 %tmp41, label %block_f75c, label %block_f775

block_f75c:                                       ; preds = %block_f74c
  %tmp42 = call i64 @get_stat_atime(i64 %tmp16)
  %tmp43 = inttoptr i64 %tmp23 to i64*
  store i64 %tmp42, i64* %tmp43
  store i64 %tmp14, i64* %tmp25
  br label %block_f791

block_f775:                                       ; preds = %block_f74c
  %tmp44 = load i64* %tmp25
  %tmp45 = icmp eq i64 %tmp44, 1073741823
  br i1 %tmp45, label %block_f785, label %block_f791

block_f785:                                       ; preds = %block_f775
  %tmp46 = inttoptr i64 %tmp23 to %timespec*
  %tmp47 = call i64 @gettime(%timespec* %tmp46)
  br label %block_f791

block_f791:                                       ; preds = %block_f775, %block_f785, %block_f75c
  %tmp48 = add i64 %tmp23, 24
  %tmp49 = inttoptr i64 %tmp48 to i64*
  %tmp50 = load i64* %tmp49
  %tmp51 = icmp eq i64 %tmp50, 1073741822
  br i1 %tmp51, label %block_f7a5, label %block_f7c2

block_f7a5:                                       ; preds = %block_f791
  %tmp52 = add i64 %tmp23, 16
  %tmp53 = call i64 @get_stat_mtime(i64* %arg1)
  %tmp54 = inttoptr i64 %tmp52 to i64*
  store i64 %tmp53, i64* %tmp54
  store i64 %tmp14, i64* %tmp49
  br label %block_f7e6

block_f7c2:                                       ; preds = %block_f791
  %tmp55 = load i64* %tmp49
  %tmp56 = icmp eq i64 %tmp55, 1073741823
  br i1 %tmp56, label %block_f7d6, label %block_f7e6

block_f7d6:                                       ; preds = %block_f7c2
  %tmp57 = add i64 %tmp23, 16
  %tmp58 = inttoptr i64 %tmp57 to %timespec*
  %tmp59 = call i64 @gettime(%timespec* %tmp58)
  br label %block_f7e6

block_f7e6:                                       ; preds = %block_f7c2, %block_f7d6, %block_f7a5
  br label %block_f7eb

block_f7eb:                                       ; preds = %block_f7e6, %block_f737, %block_f709
  %rax.0 = phi i64 [ 0, %block_f7e6 ], [ 0, %block_f737 ], [ 1, %block_f709 ]
  ret i64 %rax.0
}

define i64 @fdutimens(i32 %arg1, i64* %arg2, i64* %arg3) {
block_f7f2:
  %0 = alloca i64
  %tmp34 = ptrtoint i64* %arg3 to i64
  %stack_var_-216 = alloca i64
  %1 = load i64* %0
  %2 = load i64* %0
  %stack_var_-248 = alloca i64
  %stack_var_-184 = alloca i64
  %stack_var_-320 = alloca i64
  %stack_var_-280 = alloca i64
  %tmp72 = bitcast i64* %arg2 to i8*
  %tmp73 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp74 = icmp eq i64 %tmp34, 0
  br i1 %tmp74, label %block_f834, label %block_f82b

block_f82b:                                       ; preds = %block_f7f2
  %tmp75 = ptrtoint i64* %stack_var_-280 to i64
  br label %block_f839

block_f834:                                       ; preds = %block_f7f2
  br label %block_f839

block_f839:                                       ; preds = %block_f834, %block_f82b
  %rax.0 = phi i64 [ 0, %block_f834 ], [ %tmp75, %block_f82b ]
  store i64 %rax.0, i64* %stack_var_-320
  %tmp76 = icmp eq i64 %rax.0, 0
  br i1 %tmp76, label %block_f8a4.thread, label %block_f8a4

block_f8a4.thread:                                ; preds = %block_f839
  br label %block_f8b7

block_f8a4:                                       ; preds = %block_f839
  %tmp77 = load i64* %arg3
  store i64 %tmp77, i64* %stack_var_-280
  %tmp78 = load i64* %stack_var_-320
  %tmp79 = inttoptr i64 %tmp78 to i64*
  %tmp80 = call i64 @validate_timespec(i64* %tmp79)
  %tmp81 = trunc i64 %tmp80 to i32
  %tmp82 = icmp slt i32 %tmp81, 0
  br i1 %tmp82, label %block_f8ad, label %block_f8b7

block_f8ad:                                       ; preds = %block_f8a4
  br label %block_fe1c

block_f8b7:                                       ; preds = %block_f8a4.thread, %block_f8a4
  %stack_var_-328.019 = phi i32 [ 0, %block_f8a4.thread ], [ %tmp81, %block_f8a4 ]
  %tmp83 = icmp slt i32 %arg1, 0
  br i1 %tmp83, label %block_f8c0, label %block_f8df

block_f8c0:                                       ; preds = %block_f8b7
  %tmp84 = ptrtoint i8* %tmp72 to i64
  %tmp85 = icmp eq i64 %tmp84, 0
  br i1 %tmp85, label %block_f8ca, label %block_f8df

block_f8ca:                                       ; preds = %block_f8c0
  %tmp86 = call i32* @__errno_location()
  store i32 9, i32* %tmp86
  br label %block_fe1c

block_f8df:                                       ; preds = %block_f8c0, %block_f8b7
  %tmp87 = load i32* bitcast (i64* @global_var_21a410 to i32*)
  %tmp88 = icmp slt i32 %tmp87, 0
  br i1 %tmp88, label %block_fa8f, label %block_f8ed

block_f8ed:                                       ; preds = %block_f8df
  %tmp89 = icmp eq i32 %stack_var_-328.019, 2
  br i1 %tmp89, label %block_f8fa, label %block_f9be

block_f8fa:                                       ; preds = %block_f8ed
  br i1 %tmp83, label %block_f903, label %block_f923

block_f903:                                       ; preds = %block_f8fa
  %tmp90 = bitcast i64* %stack_var_-184 to %stat*
  %tmp91 = call i32 @stat(i8* %tmp72, %stat* %tmp90)
  %tmp92 = sext i32 %tmp91 to i64
  %tmp93 = icmp ne i32 %tmp91, 0
  %tmp94 = zext i1 %tmp93 to i64
  %tmp95 = and i64 %tmp92, -256
  %tmp96 = or i64 %tmp95, %tmp94
  br label %block_f93f

block_f923:                                       ; preds = %block_f8fa
  %tmp97 = bitcast i64* %stack_var_-184 to %stat*
  %tmp98 = call i32 @fstat(i32 %arg1, %stat* %tmp97)
  %tmp99 = sext i32 %tmp98 to i64
  %tmp100 = icmp ne i32 %tmp98, 0
  %tmp101 = zext i1 %tmp100 to i64
  %tmp102 = and i64 %tmp99, -256
  %tmp103 = or i64 %tmp102, %tmp101
  br label %block_f93f

block_f93f:                                       ; preds = %block_f923, %block_f903
  %rax.1 = phi i64 [ %tmp103, %block_f923 ], [ %tmp96, %block_f903 ]
  %tmp104 = trunc i64 %rax.1 to i8
  %tmp105 = icmp eq i8 %tmp104, 0
  br i1 %tmp105, label %block_f94d, label %block_f943

block_f943:                                       ; preds = %block_f93f
  br label %block_fe1c

block_f94d:                                       ; preds = %block_f93f
  %tmp106 = load i64* %stack_var_-320
  %tmp107 = add i64 %tmp106, 8
  %tmp108 = inttoptr i64 %tmp107 to i64*
  %tmp109 = load i64* %tmp108
  %tmp110 = icmp eq i64 %tmp109, 1073741822
  br i1 %tmp110, label %block_f960, label %block_f97f

block_f960:                                       ; preds = %block_f94d
  %tmp111 = load i64* %stack_var_-320
  %tmp112 = ptrtoint i64* %stack_var_-184 to i64
  %tmp113 = call i64 @get_stat_atime(i64 %tmp112)
  %tmp114 = inttoptr i64 %tmp111 to i64*
  store i64 %tmp113, i64* %tmp114
  %tmp115 = add i64 %tmp111, 8
  %tmp116 = inttoptr i64 %tmp115 to i64*
  store i64 %tmp112, i64* %tmp116
  br label %block_f9b7

block_f97f:                                       ; preds = %block_f94d
  %tmp117 = load i64* %stack_var_-320
  %tmp118 = add i64 %tmp117, 24
  %tmp119 = inttoptr i64 %tmp118 to i64*
  %tmp120 = load i64* %tmp119
  %tmp121 = icmp eq i64 %tmp120, 1073741822
  br i1 %tmp121, label %block_f996, label %block_f9b7

block_f996:                                       ; preds = %block_f97f
  %tmp122 = load i64* %stack_var_-320
  %tmp123 = add i64 %tmp122, 16
  %tmp124 = ptrtoint i64* %stack_var_-184 to i64
  %tmp125 = call i64 @get_stat_mtime(i64* %stack_var_-184)
  %tmp126 = inttoptr i64 %tmp123 to i64*
  store i64 %tmp125, i64* %tmp126
  %tmp127 = add i64 %tmp122, 24
  %tmp128 = inttoptr i64 %tmp127 to i64*
  store i64 %tmp124, i64* %tmp128
  br label %block_f9b7

block_f9b7:                                       ; preds = %block_f97f, %block_f996, %block_f960
  br label %block_f9be

block_f9be:                                       ; preds = %block_f8ed, %block_f9b7
  %stack_var_-328.1 = phi i32 [ %stack_var_-328.019, %block_f8ed ], [ 3, %block_f9b7 ]
  br i1 %tmp83, label %block_f9c7, label %block_fa34

block_f9c7:                                       ; preds = %block_f9be
  %tmp129 = load i64* %stack_var_-320
  %tmp130 = insertvalue %timespec undef, i64 %tmp129, 0
  %tmp131 = insertvalue [2 x %timespec] undef, %timespec %tmp130, 0
  %tmp132 = call i32 @utimensat(i32 -100, i8* %tmp72, [2 x %timespec] %tmp131, i32 0)
  %tmp133 = icmp slt i32 %tmp132, 1
  br i1 %tmp133, label %block_fa01, label %block_fa01.thread

block_fa01.thread:                                ; preds = %block_f9c7
  %tmp134 = call i32* @__errno_location()
  store i32 38, i32* %tmp134
  br label %block_fa0a

block_fa01:                                       ; preds = %block_f9c7
  %tmp135 = icmp eq i32 %tmp132, 0
  br i1 %tmp135, label %block_fa16, label %block_fa0a

block_fa0a:                                       ; preds = %block_fa01.thread, %block_fa01
  %tmp136 = call i32* @__errno_location()
  %tmp137 = load i32* %tmp136
  %tmp138 = icmp eq i32 %tmp137, 38
  br i1 %tmp138, label %block_fa2b.thread, label %block_fa16

block_fa2b.thread:                                ; preds = %block_fa0a
  br label %block_fa8f

block_fa16:                                       ; preds = %block_fa0a, %block_fa01
  store i32 1, i32* bitcast (i64* @global_var_21a410 to i32*)
  %tmp139 = zext i32 %tmp132 to i64
  br label %block_fe1c

block_fa34:                                       ; preds = %block_f9be
  %tmp140 = load i64* %stack_var_-320
  %tmp141 = insertvalue %timespec undef, i64 %tmp140, 0
  %tmp142 = insertvalue [2 x %timespec] undef, %timespec %tmp141, 0
  %tmp143 = call i32 @futimens(i32 %arg1, [2 x %timespec] %tmp142)
  %tmp144 = icmp slt i32 %tmp143, 1
  br i1 %tmp144, label %block_fa65, label %block_fa65.thread

block_fa65.thread:                                ; preds = %block_fa34
  %tmp145 = call i32* @__errno_location()
  store i32 38, i32* %tmp145
  br label %block_fa6e

block_fa65:                                       ; preds = %block_fa34
  %tmp146 = icmp eq i32 %tmp143, 0
  br i1 %tmp146, label %block_fa7a, label %block_fa6e

block_fa6e:                                       ; preds = %block_fa65.thread, %block_fa65
  %tmp147 = call i32* @__errno_location()
  %tmp148 = load i32* %tmp147
  %tmp149 = icmp eq i32 %tmp148, 38
  br i1 %tmp149, label %block_fa8f, label %block_fa7a

block_fa7a:                                       ; preds = %block_fa6e, %block_fa65
  store i32 1, i32* bitcast (i64* @global_var_21a410 to i32*)
  %tmp150 = zext i32 %tmp143 to i64
  br label %block_fe1c

block_fa8f:                                       ; preds = %block_fa2b.thread, %block_fa6e, %block_f8df
  %stack_var_-328.2 = phi i32 [ %stack_var_-328.019, %block_f8df ], [ %stack_var_-328.1, %block_fa6e ], [ %stack_var_-328.1, %block_fa2b.thread ]
  store i32 -1, i32* bitcast (i64* @global_var_21a410 to i32*)
  store i32 -1, i32* bitcast (i64* @global_var_21a414 to i32*)
  %tmp151 = icmp eq i32 %stack_var_-328.2, 0
  br i1 %tmp151, label %block_fb3f, label %block_fab0

block_fab0:                                       ; preds = %block_fa8f
  %tmp152 = icmp eq i32 %stack_var_-328.2, 3
  br i1 %tmp152, label %block_fb0c, label %block_fab9

block_fab9:                                       ; preds = %block_fab0
  br i1 %tmp83, label %block_fac2, label %block_fae2

block_fac2:                                       ; preds = %block_fab9
  %tmp153 = bitcast i64* %stack_var_-184 to %stat*
  %tmp154 = call i32 @stat(i8* %tmp72, %stat* %tmp153)
  %tmp155 = sext i32 %tmp154 to i64
  %tmp156 = icmp ne i32 %tmp154, 0
  %tmp157 = zext i1 %tmp156 to i64
  %tmp158 = and i64 %tmp155, -256
  %tmp159 = or i64 %tmp158, %tmp157
  br label %block_fafe

block_fae2:                                       ; preds = %block_fab9
  %tmp160 = bitcast i64* %stack_var_-184 to %stat*
  %tmp161 = call i32 @fstat(i32 %arg1, %stat* %tmp160)
  %tmp162 = sext i32 %tmp161 to i64
  %tmp163 = icmp ne i32 %tmp161, 0
  %tmp164 = zext i1 %tmp163 to i64
  %tmp165 = and i64 %tmp162, -256
  %tmp166 = or i64 %tmp165, %tmp164
  br label %block_fafe

block_fafe:                                       ; preds = %block_fae2, %block_fac2
  %rax.2 = phi i64 [ %tmp166, %block_fae2 ], [ %tmp159, %block_fac2 ]
  %tmp167 = trunc i64 %rax.2 to i8
  %tmp168 = icmp eq i8 %tmp167, 0
  br i1 %tmp168, label %block_fb0c, label %block_fb02

block_fb02:                                       ; preds = %block_fafe
  br label %block_fe1c

block_fb0c:                                       ; preds = %block_fafe, %block_fab0
  %tmp169 = load i64* %stack_var_-320
  %tmp170 = icmp eq i64 %tmp169, 0
  br i1 %tmp170, label %block_fb3f.thread, label %block_fb18

block_fb3f.thread:                                ; preds = %block_fb0c
  br label %block_fbef

block_fb18:                                       ; preds = %block_fb0c
  %tmp171 = call i64 @update_timespec(i64* %stack_var_-184, i64* %stack_var_-320, i64* %stack_var_-320)
  %tmp172 = trunc i64 %tmp171 to i8
  %tmp173 = icmp eq i8 %tmp172, 0
  br i1 %tmp173, label %block_fb3f, label %block_fb35

block_fb35:                                       ; preds = %block_fb18
  br label %block_fe1c

block_fb3f:                                       ; preds = %block_fb18, %block_fa8f
  %.pr = load i64* %stack_var_-320
  %tmp174 = icmp eq i64 %.pr, 0
  br i1 %tmp174, label %block_fbef, label %block_fb4f

block_fb4f:                                       ; preds = %block_fb3f
  %tmp175 = load i64* %stack_var_-320
  %tmp176 = inttoptr i64 %tmp175 to i64*
  %tmp177 = load i64* %tmp176
  store i64 %tmp177, i64* %stack_var_-248
  %tmp178 = ptrtoint i64* %stack_var_-248 to i64
  br label %block_fbfa

block_fbef:                                       ; preds = %block_fb3f.thread, %block_fb3f
  br label %block_fbfa

block_fbfa:                                       ; preds = %block_fbef, %block_fb4f
  %stack_var_-312.0 = phi i64 [ 0, %block_fbef ], [ %tmp178, %block_fb4f ]
  br i1 %tmp83, label %block_fc03, label %block_fc23

block_fc03:                                       ; preds = %block_fbfa
  %tmp179 = insertvalue %timeval undef, i64 %stack_var_-312.0, 0
  %tmp180 = insertvalue [2 x %timeval] undef, %timeval %tmp179, 0
  %tmp181 = call i32 @futimesat(i32 -100, i8* %tmp72, [2 x %timeval] %tmp180)
  %tmp182 = sext i32 %tmp181 to i64
  br label %block_fe1c

block_fc23:                                       ; preds = %block_fbfa
  %tmp183 = insertvalue %timeval undef, i64 %stack_var_-312.0, 0
  %tmp184 = insertvalue [2 x %timeval] undef, %timeval %tmp183, 0
  %tmp185 = call i32 @futimesat(i32 %arg1, i8* null, [2 x %timeval] %tmp184)
  %tmp186 = icmp eq i32 %tmp185, 0
  br i1 %tmp186, label %block_fc44, label %block_fdf2

block_fc44:                                       ; preds = %block_fc23
  %tmp187 = icmp eq i64 %stack_var_-312.0, 0
  br i1 %tmp187, label %block_fdeb, label %block_fc52

block_fc52:                                       ; preds = %block_fc44
  %tmp188 = add i64 %stack_var_-312.0, 8
  %tmp189 = inttoptr i64 %tmp188 to i64*
  %tmp190 = load i64* %tmp189
  %tmp191 = add i64 %tmp190, -499999
  %tmp192 = sub i64 499998, %tmp190
  %tmp193 = and i64 %tmp192, %tmp190
  %tmp194 = icmp slt i64 %tmp193, 0
  %tmp195 = icmp slt i64 %tmp191, 0
  %tmp = icmp ne i1 %tmp195, %tmp194
  %tmp196 = icmp ne i64 %tmp191, 0
  %tmp197 = icmp ne i1 %tmp196, %tmp
  %tmp198 = add i64 %stack_var_-312.0, 24
  %tmp199 = inttoptr i64 %tmp198 to i64*
  %tmp200 = load i64* %tmp199
  %tmp201 = add i64 %tmp200, -499999
  %tmp202 = sub i64 499998, %tmp200
  %tmp203 = and i64 %tmp202, %tmp200
  %tmp204 = icmp slt i64 %tmp203, 0
  %tmp205 = icmp slt i64 %tmp201, 0
  %tmp4 = icmp ne i1 %tmp205, %tmp204
  %tmp206 = icmp ne i64 %tmp201, 0
  %tmp207 = icmp ne i1 %tmp206, %tmp4
  %tmp208 = or i1 %tmp197, %tmp207
  br i1 %tmp208, label %block_fc9f, label %block_fdeb

block_fc9f:                                       ; preds = %block_fc52
  %tmp209 = bitcast i64* %stack_var_-184 to %stat*
  %tmp210 = call i32 @fstat(i32 %arg1, %stat* %tmp209)
  %tmp211 = icmp eq i32 %tmp210, 0
  br i1 %tmp211, label %block_fcbe, label %block_fdeb

block_fcbe:                                       ; preds = %block_fc9f
  %tmp212 = inttoptr i64 %stack_var_-312.0 to i64*
  %tmp213 = load i64* %tmp212
  %tmp214 = add i64 %stack_var_-312.0, 16
  %tmp215 = inttoptr i64 %tmp214 to i64*
  %tmp216 = load i64* %tmp215
  %tmp217 = sub i64 %1, %tmp216
  %tmp218 = load i64* %tmp212
  store i64 %tmp218, i64* %stack_var_-216
  br i1 %tmp197, label %block_fd45, label %block_fd80

block_fd45:                                       ; preds = %block_fcbe
  %tmp219 = sub i64 %2, %tmp213
  %tmp220 = icmp eq i64 %tmp219, 1
  br i1 %tmp220, label %block_fd4f, label %block_fd80

block_fd4f:                                       ; preds = %block_fd45
  %tmp221 = call i64 @get_stat_atime_ns(i64* %stack_var_-184)
  %tmp222 = icmp eq i64 %tmp221, 0
  br i1 %tmp222, label %block_fd63, label %block_fd80

block_fd63:                                       ; preds = %block_fd4f
  %tmp223 = ptrtoint i64* %stack_var_-216 to i64
  %tmp224 = add i64 %tmp223, 8
  %tmp225 = inttoptr i64 %tmp224 to i64*
  store i64 0, i64* %tmp225
  br label %block_fd80

block_fd80:                                       ; preds = %block_fd4f, %block_fd45, %block_fcbe, %block_fd63
  %stack_var_-304.0 = phi i64 [ 0, %block_fcbe ], [ 0, %block_fd45 ], [ 0, %block_fd4f ], [ %tmp223, %block_fd63 ]
  br i1 %tmp207, label %block_fd89, label %block_fdc8

block_fd89:                                       ; preds = %block_fd80
  %tmp226 = icmp eq i64 %tmp217, 1
  br i1 %tmp226, label %block_fd93, label %block_fdc8

block_fd93:                                       ; preds = %block_fd89
  %tmp227 = call i64 @get_stat_mtime_ns(i64* %stack_var_-184)
  %tmp228 = icmp eq i64 %tmp227, 0
  br i1 %tmp228, label %block_fda7, label %block_fdc8

block_fda7:                                       ; preds = %block_fd93
  %tmp229 = ptrtoint i64* %stack_var_-216 to i64
  %tmp230 = add i64 %tmp229, 24
  %tmp231 = inttoptr i64 %tmp230 to i64*
  store i64 0, i64* %tmp231
  br label %block_fdc8

block_fdc8:                                       ; preds = %block_fd93, %block_fd89, %block_fd80, %block_fda7
  %stack_var_-304.1 = phi i64 [ %stack_var_-304.0, %block_fd80 ], [ %stack_var_-304.0, %block_fd89 ], [ %stack_var_-304.0, %block_fd93 ], [ %tmp229, %block_fda7 ]
  %tmp232 = icmp eq i64 %stack_var_-304.1, 0
  br i1 %tmp232, label %block_fdeb, label %block_fdd2

block_fdd2:                                       ; preds = %block_fdc8
  %tmp233 = insertvalue %timeval undef, i64 %stack_var_-304.1, 0
  %tmp234 = insertvalue [2 x %timeval] undef, %timeval %tmp233, 0
  %tmp235 = call i32 @futimesat(i32 %arg1, i8* null, [2 x %timeval] %tmp234)
  br label %block_fdeb

block_fdeb:                                       ; preds = %block_fc9f, %block_fc52, %block_fdd2, %block_fdc8, %block_fc44
  br label %block_fe1c

block_fdf2:                                       ; preds = %block_fc23
  %tmp236 = ptrtoint i8* %tmp72 to i64
  %tmp237 = icmp eq i64 %tmp236, 0
  br i1 %tmp237, label %block_fdfc, label %block_fe03

block_fdfc:                                       ; preds = %block_fdf2
  br label %block_fe1c

block_fe03:                                       ; preds = %block_fdf2
  %tmp238 = call i32 @utimes(i8* %tmp72, [2 x %timeval] %tmp184)
  %tmp239 = sext i32 %tmp238 to i64
  br label %block_fe1c

block_fe1c:                                       ; preds = %block_fe03, %block_fdfc, %block_fdeb, %block_fc03, %block_fb35, %block_fb02, %block_fa7a, %block_fa16, %block_f943, %block_f8ca, %block_f8ad
  %rax.3 = phi i64 [ %tmp239, %block_fe03 ], [ 4294967295, %block_fdfc ], [ 0, %block_fdeb ], [ %tmp182, %block_fc03 ], [ 0, %block_fb35 ], [ 4294967295, %block_fb02 ], [ %tmp150, %block_fa7a ], [ %tmp139, %block_fa16 ], [ 4294967295, %block_f943 ], [ 4294967295, %block_f8ca ], [ 4294967295, %block_f8ad ]
  %tmp240 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp241 = icmp eq i64 %tmp73, %tmp240
  br i1 %tmp241, label %block_fe30, label %block_fe2b

block_fe2b:                                       ; preds = %block_fe1c
  call void @__stack_chk_fail()
  unreachable

block_fe30:                                       ; preds = %block_fe1c
  ret i64 %rax.3
}

define i64 @utimens(i64* %arg1, i64 %arg2) {
block_fe3a:
  %tmp16 = inttoptr i64 %arg2 to i64*
  %tmp17 = call i64 @fdutimens(i32 -1, i64* %arg1, i64* %tmp16)
  ret i64 %tmp17
}

define i64 @lutimens(i8* %arg1, i64 %arg2) {
block_fe61:
  %0 = alloca i32
  %1 = load i32* %0
  %stack_var_-184 = alloca i64
  %stack_var_-224 = alloca i64
  %stack_var_-216 = alloca i64
  %tmp34 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp35 = icmp eq i64 %arg2, 0
  br i1 %tmp35, label %block_fe9d, label %block_fe94

block_fe94:                                       ; preds = %block_fe61
  %tmp36 = ptrtoint i64* %stack_var_-216 to i64
  br label %block_fea2

block_fe9d:                                       ; preds = %block_fe61
  br label %block_fea2

block_fea2:                                       ; preds = %block_fe9d, %block_fe94
  %rax.0 = phi i64 [ 0, %block_fe9d ], [ %tmp36, %block_fe94 ]
  store i64 %rax.0, i64* %stack_var_-224
  %tmp37 = icmp eq i64 %rax.0, 0
  br i1 %tmp37, label %block_ff0d.thread, label %block_ff0d

block_ff0d.thread:                                ; preds = %block_fea2
  br label %block_ff20

block_ff0d:                                       ; preds = %block_fea2
  %tmp39 = inttoptr i64 %arg2 to i64*
  %tmp40 = load i64* %tmp39
  store i64 %tmp40, i64* %stack_var_-216
  %tmp41 = load i64* %stack_var_-224
  %tmp42 = inttoptr i64 %tmp41 to i64*
  %tmp43 = call i64 @validate_timespec(i64* %tmp42)
  %tmp44 = trunc i64 %tmp43 to i32
  %tmp45 = icmp slt i32 %tmp44, 0
  br i1 %tmp45, label %block_ff16, label %block_ff20

block_ff16:                                       ; preds = %block_ff0d
  br label %block_10120

block_ff20:                                       ; preds = %block_ff0d.thread, %block_ff0d
  %stack_var_-232.02 = phi i32 [ 0, %block_ff0d.thread ], [ %tmp44, %block_ff0d ]
  %tmp46 = load i32* bitcast (i64* @global_var_21a414 to i32*)
  %tmp47 = icmp slt i32 %tmp46, 0
  br i1 %tmp47, label %block_10041, label %block_ff2e

block_ff2e:                                       ; preds = %block_ff20
  %tmp48 = icmp eq i32 %stack_var_-232.02, 2
  br i1 %tmp48, label %block_ff3b, label %block_ffd3

block_ff3b:                                       ; preds = %block_ff2e
  %tmp49 = ptrtoint i64* %stack_var_-184 to i64
  %tmp50 = bitcast i64* %stack_var_-184 to %stat*
  %tmp51 = call i32 @lstat(i8* %arg1, %stat* %tmp50)
  %tmp52 = icmp eq i32 %tmp51, 0
  br i1 %tmp52, label %block_ff62, label %block_ff58

block_ff58:                                       ; preds = %block_ff3b
  br label %block_10120

block_ff62:                                       ; preds = %block_ff3b
  %tmp53 = load i64* %stack_var_-224
  %tmp54 = add i64 %tmp53, 8
  %tmp55 = inttoptr i64 %tmp54 to i64*
  %tmp56 = load i64* %tmp55
  %tmp57 = icmp eq i64 %tmp56, 1073741822
  br i1 %tmp57, label %block_ff75, label %block_ff94

block_ff75:                                       ; preds = %block_ff62
  %tmp58 = load i64* %stack_var_-224
  %tmp59 = call i64 @get_stat_atime(i64 %tmp49)
  %tmp60 = inttoptr i64 %tmp58 to i64*
  store i64 %tmp59, i64* %tmp60
  %tmp61 = add i64 %tmp58, 8
  %tmp62 = inttoptr i64 %tmp61 to i64*
  store i64 %tmp49, i64* %tmp62
  br label %block_ffcc

block_ff94:                                       ; preds = %block_ff62
  %tmp63 = load i64* %stack_var_-224
  %tmp64 = add i64 %tmp63, 24
  %tmp65 = inttoptr i64 %tmp64 to i64*
  %tmp66 = load i64* %tmp65
  %tmp67 = icmp eq i64 %tmp66, 1073741822
  br i1 %tmp67, label %block_ffab, label %block_ffcc

block_ffab:                                       ; preds = %block_ff94
  %tmp68 = load i64* %stack_var_-224
  %tmp69 = add i64 %tmp68, 16
  %tmp70 = call i64 @get_stat_mtime(i64* %stack_var_-184)
  %tmp71 = inttoptr i64 %tmp69 to i64*
  store i64 %tmp70, i64* %tmp71
  %tmp72 = add i64 %tmp68, 24
  %tmp73 = inttoptr i64 %tmp72 to i64*
  store i64 %tmp49, i64* %tmp73
  br label %block_ffcc

block_ffcc:                                       ; preds = %block_ff94, %block_ffab, %block_ff75
  br label %block_ffd3

block_ffd3:                                       ; preds = %block_ff2e, %block_ffcc
  %stack_var_-232.1 = phi i32 [ %stack_var_-232.02, %block_ff2e ], [ 3, %block_ffcc ]
  %tmp74 = load i64* %stack_var_-224
  %tmp75 = insertvalue %timespec undef, i64 %tmp74, 0
  %tmp76 = insertvalue [2 x %timespec] undef, %timespec %tmp75, 0
  %tmp77 = call i32 @utimensat(i32 -100, i8* %arg1, [2 x %timespec] %tmp76, i32 256)
  %tmp78 = icmp slt i32 %tmp77, 1
  br i1 %tmp78, label %block_1000d, label %block_1000d.thread

block_1000d.thread:                               ; preds = %block_ffd3
  %tmp79 = call i32* @__errno_location()
  store i32 38, i32* %tmp79
  br label %block_10016

block_1000d:                                      ; preds = %block_ffd3
  %tmp80 = icmp eq i32 %tmp77, 0
  br i1 %tmp80, label %block_10022, label %block_10016

block_10016:                                      ; preds = %block_1000d.thread, %block_1000d
  %tmp81 = call i32* @__errno_location()
  %tmp82 = load i32* %tmp81
  %tmp83 = icmp eq i32 %tmp82, 38
  br i1 %tmp83, label %block_10041, label %block_10022

block_10022:                                      ; preds = %block_10016, %block_1000d
  store i32 1, i32* bitcast (i64* @global_var_21a410 to i32*)
  store i32 1, i32* bitcast (i64* @global_var_21a414 to i32*)
  %tmp84 = zext i32 %tmp77 to i64
  br label %block_10120

block_10041:                                      ; preds = %block_10016, %block_ff20
  %stack_var_-232.2 = phi i32 [ %stack_var_-232.02, %block_ff20 ], [ %stack_var_-232.1, %block_10016 ]
  store i32 -1, i32* bitcast (i64* @global_var_21a414 to i32*)
  %tmp85 = icmp eq i32 %stack_var_-232.2, 0
  br i1 %tmp85, label %block_100bd, label %block_10054

block_10054:                                      ; preds = %block_10041
  %tmp86 = icmp eq i32 %stack_var_-232.2, 3
  br i1 %tmp86, label %block_10084, label %block_1005d

block_1005d:                                      ; preds = %block_10054
  %tmp87 = bitcast i64* %stack_var_-184 to %stat*
  %tmp88 = call i32 @lstat(i8* %arg1, %stat* %tmp87)
  %tmp89 = icmp eq i32 %tmp88, 0
  br i1 %tmp89, label %block_10084, label %block_1007a

block_1007a:                                      ; preds = %block_1005d
  br label %block_10120

block_10084:                                      ; preds = %block_1005d, %block_10054
  %tmp90 = load i64* %stack_var_-224
  %tmp91 = icmp eq i64 %tmp90, 0
  br i1 %tmp91, label %block_100b4.thread, label %block_10090

block_10090:                                      ; preds = %block_10084
  %tmp92 = call i64 @update_timespec(i64* %stack_var_-184, i64* %stack_var_-224, i64* %stack_var_-224)
  %tmp93 = trunc i64 %tmp92 to i8
  %tmp94 = icmp eq i8 %tmp93, 0
  br i1 %tmp94, label %block_100b4.thread, label %block_100ad

block_100ad:                                      ; preds = %block_10090
  br label %block_10120

block_100b4.thread:                               ; preds = %block_10090, %block_10084
  br label %block_100e1

block_100bd:                                      ; preds = %block_10041
  %tmp95 = bitcast i64* %stack_var_-184 to %stat*
  %tmp96 = call i32 @lstat(i8* %arg1, %stat* %tmp95)
  %tmp97 = icmp eq i32 %tmp96, 0
  br i1 %tmp97, label %block_100e1, label %block_100da

block_100da:                                      ; preds = %block_100bd
  br label %block_10120

block_100e1:                                      ; preds = %block_100b4.thread, %block_100bd
  %tmp98 = and i32 %1, 61440
  %tmp99 = icmp eq i32 %tmp98, 40960
  br i1 %tmp99, label %block_10110, label %block_100f3

block_100f3:                                      ; preds = %block_100e1
  %tmp100 = load i64* %stack_var_-224
  %tmp101 = bitcast i8* %arg1 to i64*
  %tmp102 = inttoptr i64 %tmp100 to i64*
  %tmp103 = call i64 @fdutimens(i32 -1, i64* %tmp101, i64* %tmp102)
  br label %block_10120

block_10110:                                      ; preds = %block_100e1
  %tmp104 = call i32* @__errno_location()
  store i32 38, i32* %tmp104
  br label %block_10120

block_10120:                                      ; preds = %block_10110, %block_100f3, %block_100da, %block_100ad, %block_1007a, %block_10022, %block_ff58, %block_ff16
  %rax.1 = phi i64 [ 4294967295, %block_10110 ], [ %tmp103, %block_100f3 ], [ 4294967295, %block_100da ], [ 0, %block_100ad ], [ 4294967295, %block_1007a ], [ %tmp84, %block_10022 ], [ 4294967295, %block_ff58 ], [ 4294967295, %block_ff16 ]
  %tmp105 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp106 = icmp eq i64 %tmp34, %tmp105
  br i1 %tmp106, label %block_10134, label %block_1012f

block_1012f:                                      ; preds = %block_10120
  call void @__stack_chk_fail()
  unreachable

block_10134:                                      ; preds = %block_10120
  ret i64 %rax.1
}

define i64 @xnmalloc(i128 %arg1, i64 %arg2) {
block_1013e:
  %sext = shl i128 %arg1, 64
  %tmp19 = and i128 %arg1, 18446744073709551615
  %tmp20 = zext i64 %arg2 to i128
  %tmp21 = mul nuw i128 %tmp20, %tmp19
  %tmp22 = trunc i128 %tmp21 to i64
  %tmp23 = icmp ugt i128 %tmp21, 18446744073709551615
  br i1 %tmp23, label %block_1015d, label %block_10162

block_1015d:                                      ; preds = %block_1013e
  br label %block_10162

block_10162:                                      ; preds = %block_1013e, %block_1015d
  %rcx.0 = phi i64 [ 0, %block_1013e ], [ 1, %block_1015d ]
  %tmp24 = icmp slt i64 %tmp22, 0
  br i1 %tmp24, label %block_1016c.thread, label %block_1016c

block_1016c.thread:                               ; preds = %block_10162
  br label %block_10176

block_1016c:                                      ; preds = %block_10162
  %tmp25 = icmp eq i64 %rcx.0, 0
  br i1 %tmp25, label %block_1017b, label %block_10176

block_10176:                                      ; preds = %block_1016c.thread, %block_1016c
  %tmp26 = call i64 @xalloc_die()
  unreachable

block_1017b:                                      ; preds = %block_1016c
  %tmp28 = ashr exact i128 %sext, 64
  %tmp29 = sext i64 %arg2 to i128
  %tmp30 = mul nsw i128 %tmp29, %tmp28
  %tmp31 = trunc i128 %tmp30 to i32
  %tmp32 = call i64 @xmalloc(i32 %tmp31)
  ret i64 %tmp32
}

define i64 @xnrealloc(i64 %arg1, i128 %arg2, i64 %arg3) {
block_1018e:
  %sext = shl i128 %arg2, 64
  %tmp21 = and i128 %arg2, 18446744073709551615
  %tmp22 = zext i64 %arg3 to i128
  %tmp23 = mul nuw i128 %tmp22, %tmp21
  %tmp24 = trunc i128 %tmp23 to i64
  %tmp25 = icmp ugt i128 %tmp23, 18446744073709551615
  br i1 %tmp25, label %block_101b1, label %block_101b6

block_101b1:                                      ; preds = %block_1018e
  br label %block_101b6

block_101b6:                                      ; preds = %block_1018e, %block_101b1
  %rcx.0 = phi i64 [ 0, %block_1018e ], [ 1, %block_101b1 ]
  %tmp26 = icmp slt i64 %tmp24, 0
  br i1 %tmp26, label %block_101c0.thread, label %block_101c0

block_101c0.thread:                               ; preds = %block_101b6
  br label %block_101ca

block_101c0:                                      ; preds = %block_101b6
  %tmp27 = icmp eq i64 %rcx.0, 0
  br i1 %tmp27, label %block_101cf, label %block_101ca

block_101ca:                                      ; preds = %block_101c0.thread, %block_101c0
  %tmp28 = call i64 @xalloc_die()
  unreachable

block_101cf:                                      ; preds = %block_101c0
  %tmp29 = ashr exact i128 %sext, 64
  %tmp30 = sext i64 %arg3 to i128
  %tmp31 = mul nsw i128 %tmp29, %tmp30
  %tmp32 = trunc i128 %tmp31 to i64
  %tmp33 = inttoptr i64 %arg1 to i64*
  %tmp34 = call i64 @xrealloc(i64* %tmp33, i64 %tmp32)
  ret i64 %tmp34
}

define i64 @x2nrealloc(i64 %arg1, i64* %arg2, i128 %arg3) {
block_101ec:
  %sext = shl i128 %arg3, 64
  %tmp22 = ashr exact i128 %sext, 64
  %tmp23 = load i64* %arg2
  %tmp24 = icmp eq i64 %arg1, 0
  br i1 %tmp24, label %block_10212, label %block_10267

block_10212:                                      ; preds = %block_101ec
  %tmp25 = icmp eq i64 %tmp23, 0
  br i1 %tmp25, label %block_10219, label %block_10212.block_1023a_crit_edge

block_10212.block_1023a_crit_edge:                ; preds = %block_10212
  %.pre = and i128 %tmp22, 18446744073709551615
  br label %block_1023a

block_10219:                                      ; preds = %block_10212
  %tmp26 = and i128 %tmp22, 18446744073709551615
  %tmp27 = udiv i128 128, %tmp26
  %tmp28 = trunc i128 %tmp27 to i64
  %tmp29 = icmp eq i64 %tmp28, 0
  %tmp30 = zext i1 %tmp29 to i64
  %tmp31 = add nuw nsw i64 %tmp30, %tmp28
  br label %block_1023a

block_1023a:                                      ; preds = %block_10212.block_1023a_crit_edge, %block_10219
  %.pre-phi = phi i128 [ %.pre, %block_10212.block_1023a_crit_edge ], [ %tmp26, %block_10219 ]
  %stack_var_-16.0 = phi i64 [ %tmp23, %block_10212.block_1023a_crit_edge ], [ %tmp31, %block_10219 ]
  %tmp32 = zext i64 %stack_var_-16.0 to i128
  %tmp33 = mul nuw i128 %tmp32, %.pre-phi
  %tmp34 = trunc i128 %tmp33 to i64
  %tmp35 = icmp ugt i128 %tmp33, 18446744073709551615
  br i1 %tmp35, label %block_10249, label %block_1024e

block_10249:                                      ; preds = %block_1023a
  br label %block_1024e

block_1024e:                                      ; preds = %block_1023a, %block_10249
  %rcx.0 = phi i64 [ 0, %block_1023a ], [ 1, %block_10249 ]
  %tmp36 = icmp slt i64 %tmp34, 0
  br i1 %tmp36, label %block_10258.thread, label %block_10258

block_10258.thread:                               ; preds = %block_1024e
  br label %block_10262

block_10258:                                      ; preds = %block_1024e
  %tmp37 = icmp eq i64 %rcx.0, 0
  br i1 %tmp37, label %block_1029e, label %block_10262

block_10262:                                      ; preds = %block_10258.thread, %block_10258
  %tmp38 = call i64 @xalloc_die()
  unreachable

block_10267:                                      ; preds = %block_101ec
  %tmp39 = and i128 %tmp22, 18446744073709551615
  %tmp40 = udiv i128 6148914691236517204, %tmp39
  %tmp41 = trunc i128 %tmp40 to i64
  %tmp42 = icmp ult i64 %tmp23, %tmp41
  br i1 %tmp42, label %block_10285, label %block_10280

block_10280:                                      ; preds = %block_10267
  %tmp43 = call i64 @xalloc_die()
  unreachable

block_10285:                                      ; preds = %block_10267
  %tmp44 = lshr i64 %tmp23, 1
  %tmp45 = add i64 %tmp23, 1
  %tmp46 = add i64 %tmp45, %tmp44
  br label %block_1029e

block_1029e:                                      ; preds = %block_10285, %block_10258
  %stack_var_-16.1 = phi i64 [ %tmp46, %block_10285 ], [ %stack_var_-16.0, %block_10258 ]
  store i64 %stack_var_-16.1, i64* %arg2
  %tmp47 = sext i64 %stack_var_-16.1 to i128
  %tmp48 = mul nsw i128 %tmp47, %tmp22
  %tmp49 = trunc i128 %tmp48 to i64
  %tmp50 = inttoptr i64 %arg1 to i64*
  %tmp51 = call i64 @xrealloc(i64* %tmp50, i64 %tmp49)
  ret i64 %tmp51
}

define i64 @xcharalloc(i64 %arg1) {
block_102c6:
  %tmp14 = trunc i64 %arg1 to i32
  %tmp15 = call i64 @xmalloc(i32 %tmp14)
  ret i64 %tmp15
}

define i64 @xmalloc(i32 %arg1) {
block_102e0:
  %tmp16 = call i64* @malloc(i32 %arg1)
  %tmp17 = ptrtoint i64* %tmp16 to i64
  %tmp18 = icmp eq i64 %tmp17, 0
  br i1 %tmp18, label %block_10303, label %block_1030f

block_10303:                                      ; preds = %block_102e0
  %tmp19 = icmp eq i32 %arg1, 0
  br i1 %tmp19, label %block_1030f, label %block_1030a

block_1030a:                                      ; preds = %block_10303
  %tmp20 = call i64 @xalloc_die()
  unreachable

block_1030f:                                      ; preds = %block_102e0, %block_10303
  ret i64 %tmp17
}

define i64 @xrealloc(i64* %arg1, i64 %arg2) {
block_10315:
  %tmp18 = trunc i64 %arg2 to i32
  %tmp19 = icmp eq i32 %tmp18, 0
  br i1 %tmp19, label %block_1032c, label %block_10346

block_1032c:                                      ; preds = %block_10315
  %tmp20 = ptrtoint i64* %arg1 to i64
  %tmp21 = icmp eq i64 %tmp20, 0
  br i1 %tmp21, label %block_10346, label %block_10333

block_10333:                                      ; preds = %block_1032c
  call void @free(i64* %arg1)
  br label %block_10374

block_10346:                                      ; preds = %block_10315, %block_1032c
  %tmp23 = call i64* @realloc(i64* %arg1, i32 %tmp18)
  %tmp24 = ptrtoint i64* %tmp23 to i64
  %tmp25 = icmp eq i64 %tmp24, 0
  br i1 %tmp25, label %block_10364, label %block_10370

block_10364:                                      ; preds = %block_10346
  br i1 %tmp19, label %block_10370, label %block_1036b

block_1036b:                                      ; preds = %block_10364
  %tmp28 = call i64 @xalloc_die()
  unreachable

block_10370:                                      ; preds = %block_10346, %block_10364
  br label %block_10374

block_10374:                                      ; preds = %block_10370, %block_10333
  %rax.0 = phi i64 [ %tmp24, %block_10370 ], [ 0, %block_10333 ]
  ret i64 %rax.0
}

define i64 @x2realloc(i64 %arg1, i64* %arg2) {
block_10376:
  %tmp17 = call i64 @x2nrealloc(i64 %arg1, i64* %arg2, i128 1)
  ret i64 %tmp17
}

define i64 @xzalloc(i32 %arg1) {
block_103a0:
  %tmp18 = call i64 @xmalloc(i32 %arg1)
  %tmp19 = inttoptr i64 %tmp18 to i64*
  %tmp20 = call i64* @memset(i64* %tmp19, i32 0, i32 %arg1)
  %tmp21 = ptrtoint i64* %tmp20 to i64
  ret i64 %tmp21
}

define i64 @xcalloc(i32 %arg1, i64 %arg2) {
block_103d1:
  %tmp21 = trunc i64 %arg2 to i32
  %tmp22 = sext i32 %arg1 to i64
  %tmp23 = sext i32 %tmp21 to i64
  %umul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %tmp23, i64 %tmp22)
  %umul.value = extractvalue { i64, i1 } %umul, 0
  %tmp24 = extractvalue { i64, i1 } %umul, 1
  br i1 %tmp24, label %block_103f0, label %block_103f5

block_103f0:                                      ; preds = %block_103d1
  br label %block_103f5

block_103f5:                                      ; preds = %block_103d1, %block_103f0
  %rcx.0 = phi i64 [ 0, %block_103d1 ], [ 1, %block_103f0 ]
  %tmp25 = icmp slt i64 %umul.value, 0
  br i1 %tmp25, label %block_103ff.thread, label %block_103ff

block_103ff.thread:                               ; preds = %block_103f5
  br label %block_10427

block_103ff:                                      ; preds = %block_103f5
  %tmp26 = icmp eq i64 %rcx.0, 0
  br i1 %tmp26, label %block_10409, label %block_10427

block_10409:                                      ; preds = %block_103ff
  %tmp28 = call i64* @calloc(i32 %arg1, i32 %tmp21)
  %tmp29 = ptrtoint i64* %tmp28 to i64
  %tmp30 = icmp eq i64 %tmp29, 0
  br i1 %tmp30, label %block_10427, label %block_1042c

block_10427:                                      ; preds = %block_103ff.thread, %block_10409, %block_103ff
  %tmp31 = call i64 @xalloc_die()
  unreachable

block_1042c:                                      ; preds = %block_10409
  ret i64 %tmp29
}

define i64 @xmemdup(i64* %arg1, i64 %arg2) {
block_10432:
  %tmp19 = trunc i64 %arg2 to i32
  %tmp20 = call i64 @xmalloc(i32 %tmp19)
  %tmp22 = inttoptr i64 %tmp20 to i64*
  %tmp23 = call i64* @memcpy(i64* %tmp22, i64* %arg1, i32 %tmp19)
  %tmp24 = ptrtoint i64* %tmp23 to i64
  ret i64 %tmp24
}

define i64 @xstrdup(i8* %arg1) {
block_10466:
  %tmp17 = call i32 @strlen(i8* %arg1)
  %tmp18 = sext i32 %tmp17 to i64
  %tmp19 = add nsw i64 %tmp18, 1
  %tmp20 = bitcast i8* %arg1 to i64*
  %tmp21 = call i64 @xmemdup(i64* %tmp20, i64 %tmp19)
  ret i64 %tmp21
}

define i64 @yesno() {
block_10493:
  %tmp17 = call i32 @getchar()
  %tmp18 = icmp eq i32 %tmp17, 121
  br i1 %tmp18, label %block_104bb.thread, label %block_104a9

block_104a9:                                      ; preds = %block_10493
  %tmp19 = icmp eq i32 %tmp17, 89
  br i1 %tmp19, label %block_104bb.thread, label %block_104bb

block_104bb.thread:                               ; preds = %block_10493, %block_104a9
  br label %block_104d2.preheader

block_104bb:                                      ; preds = %block_104a9
  %tmp20 = icmp eq i32 %tmp17, 10
  br i1 %tmp20, label %block_104d8, label %block_104d2.preheader

block_104d2.preheader:                            ; preds = %block_104bb.thread, %block_104bb
  %rax.02 = phi i64 [ 1, %block_104bb.thread ], [ 0, %block_104bb ]
  br label %block_104d2

block_104c4:                                      ; preds = %block_104d2
  %tmp21 = call i32 @getchar()
  %tmp22 = icmp eq i32 %tmp21, 10
  br i1 %tmp22, label %block_104d8, label %block_104d2

block_104d2:                                      ; preds = %block_104d2.preheader, %block_104c4
  %stack_var_-12.01 = phi i32 [ %tmp21, %block_104c4 ], [ %tmp17, %block_104d2.preheader ]
  %tmp23 = icmp eq i32 %stack_var_-12.01, -1
  br i1 %tmp23, label %block_104d8, label %block_104c4

block_104d8:                                      ; preds = %block_104c4, %block_104d2, %block_104bb
  %rax.03 = phi i64 [ 0, %block_104bb ], [ %rax.02, %block_104d2 ], [ %rax.02, %block_104c4 ]
  ret i64 %rax.03
}

define i64 @rpl_fclose(%_IO_FILE* %arg1) {
block_104de:
  %tmp21 = call i32 @fileno(%_IO_FILE* %arg1)
  %tmp22 = icmp slt i32 %tmp21, 0
  br i1 %tmp22, label %block_1050d, label %block_1051b

block_1050d:                                      ; preds = %block_104de
  %tmp23 = call i32 @fclose(%_IO_FILE* %arg1)
  %tmp24 = sext i32 %tmp23 to i64
  br label %block_10594

block_1051b:                                      ; preds = %block_104de
  %tmp25 = call i32 @__freading(%_IO_FILE* %arg1)
  %tmp26 = icmp eq i32 %tmp25, 0
  br i1 %tmp26, label %block_1054e, label %block_1052b

block_1052b:                                      ; preds = %block_1051b
  %tmp27 = call i32 @fileno(%_IO_FILE* %arg1)
  %tmp28 = call i32 @lseek(i32 %tmp27, i32 0, i32 1)
  %tmp29 = icmp eq i32 %tmp28, -1
  br i1 %tmp29, label %block_10568, label %block_1054e

block_1054e:                                      ; preds = %block_1052b, %block_1051b
  %tmp30 = call i64 @rpl_fflush(%_IO_FILE* %arg1)
  %tmp31 = trunc i64 %tmp30 to i32
  %tmp32 = icmp eq i32 %tmp31, 0
  br i1 %tmp32, label %block_10568, label %block_1055e

block_1055e:                                      ; preds = %block_1054e
  %tmp33 = call i32* @__errno_location()
  %tmp34 = load i32* %tmp33
  br label %block_10568

block_10568:                                      ; preds = %block_1055e, %block_1054e, %block_1052b
  %stack_var_-20.0 = phi i32 [ 0, %block_1054e ], [ %tmp34, %block_1055e ], [ 0, %block_1052b ]
  %tmp35 = call i32 @fclose(%_IO_FILE* %arg1)
  %tmp36 = icmp eq i32 %stack_var_-20.0, 0
  br i1 %tmp36, label %block_10591, label %block_1057d

block_1057d:                                      ; preds = %block_10568
  %tmp37 = call i32* @__errno_location()
  store i32 %stack_var_-20.0, i32* %tmp37
  br label %block_10591

block_10591:                                      ; preds = %block_1057d, %block_10568
  %stack_var_-16.0 = phi i32 [ %tmp35, %block_10568 ], [ -1, %block_1057d ]
  %tmp38 = zext i32 %stack_var_-16.0 to i64
  br label %block_10594

block_10594:                                      ; preds = %block_10591, %block_1050d
  %rax.0 = phi i64 [ %tmp38, %block_10591 ], [ %tmp24, %block_1050d ]
  ret i64 %rax.0
}

define i64 @rpl_fcntl(i32 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6) {
block_10596:
  %0 = alloca i128
  %1 = alloca i64
  %2 = load i64* %1
  %3 = load i128* %0
  %4 = load i128* %0
  %5 = load i128* %0
  %6 = load i128* %0
  %7 = load i128* %0
  %8 = load i128* %0
  %9 = load i128* %0
  %10 = load i128* %0
  %stack_var_-184 = alloca i64
  %tmp75 = trunc i64 %arg2 to i32
  %tmp76 = trunc i64 %2 to i8
  %tmp77 = icmp eq i8 %tmp76, 0
  br i1 %tmp77, label %block_105ed, label %block_105cd

block_105cd:                                      ; preds = %block_10596
  %tmp78 = call i64 @__asm_movaps(i128 %10)
  %tmp79 = call i64 @__asm_movaps(i128 %9)
  %tmp80 = call i64 @__asm_movaps(i128 %8)
  %tmp81 = call i64 @__asm_movaps(i128 %7)
  %tmp82 = call i64 @__asm_movaps(i128 %6)
  %tmp83 = call i64 @__asm_movaps(i128 %5)
  %tmp84 = call i64 @__asm_movaps(i128 %4)
  %tmp85 = call i64 @__asm_movaps(i128 %3)
  br label %block_105ed

block_105ed:                                      ; preds = %block_105cd, %block_10596
  %tmp86 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp87 = bitcast i64* %stack_var_-184 to i32*
  %tmp88 = icmp eq i32 %tmp75, 0
  br i1 %tmp88, label %block_1064c, label %block_10640

block_10640:                                      ; preds = %block_105ed
  %tmp89 = icmp eq i32 %tmp75, 1030
  br i1 %tmp89, label %block_106b4, label %block_10647

block_10647:                                      ; preds = %block_10640
  %tmp90 = icmp eq i32 %tmp75, 11
  br i1 %tmp90, label %block_107c1, label %block_1072b

block_1064c:                                      ; preds = %block_105ed
  %tmp91 = ptrtoint i32* %tmp87 to i64
  %tmp92 = add i64 %tmp91, 16
  %tmp93 = inttoptr i64 %tmp92 to i32*
  %tmp94 = load i32* %tmp93
  %tmp95 = zext i32 %tmp94 to i64
  %tmp96 = call i64 @rpl_fcntl_DUPFD(i32 %arg1, i64 %tmp95)
  %tmp97 = trunc i64 %tmp96 to i32
  br label %block_108c9

block_106b4:                                      ; preds = %block_10640
  %tmp98 = ptrtoint i32* %tmp87 to i64
  %tmp99 = add i64 %tmp98, 16
  %tmp100 = inttoptr i64 %tmp99 to i32*
  %tmp101 = load i32* %tmp100
  %tmp102 = zext i32 %tmp101 to i64
  %tmp103 = call i64 @rpl_fcntl_DUPFD_CLOEXEC(i32 %arg1, i64 %tmp102)
  %tmp104 = trunc i64 %tmp103 to i32
  br label %block_108c9

block_1072b:                                      ; preds = %block_10647
  %tmp105 = icmp sgt i32 %tmp75, 11
  br i1 %tmp105, label %block_10780, label %block_10730

block_10730:                                      ; preds = %block_1072b
  %tmp106 = icmp eq i32 %tmp75, 3
  br i1 %tmp106, label %block_107c1, label %block_10739

block_10739:                                      ; preds = %block_10730
  %tmp107 = icmp sgt i32 %tmp75, 3
  br i1 %tmp107, label %block_10759, label %block_1073e

block_1073e:                                      ; preds = %block_10739
  %tmp108 = icmp eq i32 %tmp75, 1
  br i1 %tmp108, label %block_107c1, label %block_10743

block_10743:                                      ; preds = %block_1073e
  %tmp109 = icmp sgt i32 %tmp75, 1
  br i1 %tmp109, label %block_107e6, label %block_10754

block_10754:                                      ; preds = %block_10743
  br label %block_10856

block_10759:                                      ; preds = %block_10739
  %tmp110 = icmp eq i32 %tmp75, 8
  br i1 %tmp110, label %block_107e6, label %block_10762

block_10762:                                      ; preds = %block_10759
  %tmp111 = icmp sgt i32 %tmp75, 8
  br i1 %tmp111, label %block_10771, label %block_10767

block_10767:                                      ; preds = %block_10762
  %tmp112 = icmp eq i32 %tmp75, 4
  br i1 %tmp112, label %block_107e6, label %block_1076c

block_1076c:                                      ; preds = %block_10767
  br label %block_10856

block_10771:                                      ; preds = %block_10762
  %tmp113 = icmp eq i32 %tmp75, 9
  br i1 %tmp113, label %block_107c1, label %block_10776

block_10776:                                      ; preds = %block_10771
  %tmp114 = icmp eq i32 %tmp75, 10
  br i1 %tmp114, label %block_107e6, label %block_1077b

block_1077b:                                      ; preds = %block_10776
  br label %block_10856

block_10780:                                      ; preds = %block_1072b
  %tmp115 = icmp sgt i32 %tmp75, ptrtoint (i64* @global_var_407 to i32)
  br i1 %tmp115, label %block_107a8, label %block_10787

block_10787:                                      ; preds = %block_10780
  %tmp116 = icmp slt i32 %tmp75, ptrtoint (i64* @global_var_406 to i32)
  br i1 %tmp116, label %block_1078e, label %block_107e6

block_1078e:                                      ; preds = %block_10787
  %tmp117 = icmp eq i32 %tmp75, 1025
  br i1 %tmp117, label %block_107c1, label %block_10795

block_10795:                                      ; preds = %block_1078e
  %tmp118 = icmp eq i32 %tmp75, 1026
  br i1 %tmp118, label %block_107e6, label %block_1079c

block_1079c:                                      ; preds = %block_10795
  %tmp119 = icmp eq i32 %tmp75, 1024
  br i1 %tmp119, label %block_107e6, label %block_107a3

block_107a3:                                      ; preds = %block_1079c
  br label %block_10856

block_107a8:                                      ; preds = %block_10780
  %tmp120 = icmp eq i32 %tmp75, 1033
  br i1 %tmp120, label %block_107e6, label %block_107af

block_107af:                                      ; preds = %block_107a8
  %tmp121 = icmp slt i32 %tmp75, ptrtoint (i64* @global_var_409 to i32)
  br i1 %tmp121, label %block_107c1, label %block_107b6

block_107b6:                                      ; preds = %block_107af
  %tmp122 = icmp eq i32 %tmp75, 1034
  br i1 %tmp122, label %block_107c1, label %block_10856

block_107c1:                                      ; preds = %block_107b6, %block_107af, %block_1078e, %block_10771, %block_1073e, %block_10730, %block_10647
  %tmp123 = call i32 (i32, i32, ...)* @fcntl(i32 %arg1, i32 %tmp75)
  br label %block_108c8

block_107e6:                                      ; preds = %block_10787, %block_107a8, %block_1079c, %block_10795, %block_10776, %block_10767, %block_10759, %block_10743
  %tmp124 = call i32 (i32, i32, ...)* @fcntl(i32 %arg1, i32 %tmp75)
  br label %block_108c8

block_10856:                                      ; preds = %block_107b6, %block_107a3, %block_1077b, %block_1076c, %block_10754
  %tmp125 = call i32 (i32, i32, ...)* @fcntl(i32 %arg1, i32 %tmp75)
  br label %block_108c8

block_108c8:                                      ; preds = %block_10856, %block_107e6, %block_107c1
  %stack_var_-240.0 = phi i32 [ %tmp123, %block_107c1 ], [ %tmp124, %block_107e6 ], [ %tmp125, %block_10856 ]
  br label %block_108c9

block_108c9:                                      ; preds = %block_108c8, %block_106b4, %block_1064c
  %stack_var_-240.1 = phi i32 [ %tmp97, %block_1064c ], [ %tmp104, %block_106b4 ], [ %stack_var_-240.0, %block_108c8 ]
  %tmp126 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp127 = icmp eq i64 %tmp86, %tmp126
  br i1 %tmp127, label %block_108e6, label %block_108e1

block_108e1:                                      ; preds = %block_108c9
  call void @__stack_chk_fail()
  unreachable

block_108e6:                                      ; preds = %block_108c9
  %tmp128 = zext i32 %stack_var_-240.1 to i64
  ret i64 %tmp128
}

define i64 @rpl_fcntl_DUPFD(i32 %arg1, i64 %arg2) {
block_108e8:
  %tmp18 = call i32 (i32, i32, ...)* @fcntl(i32 %arg1, i32 0)
  %tmp19 = zext i32 %tmp18 to i64
  ret i64 %tmp19
}

define i64 @rpl_fcntl_DUPFD_CLOEXEC(i32 %arg1, i64 %arg2) {
block_10915:
  %tmp23 = load i32* bitcast (i64* @global_var_21a418 to i32*)
  %tmp24 = icmp slt i32 %tmp23, 0
  br i1 %tmp24, label %block_10989, label %block_1092d

block_1092d:                                      ; preds = %block_10915
  %tmp25 = call i32 (i32, i32, ...)* @fcntl(i32 %arg1, i32 ptrtoint (i64* @global_var_406 to i32))
  %tmp26 = icmp slt i32 %tmp25, 0
  br i1 %tmp26, label %block_1094d, label %block_10959

block_1094d:                                      ; preds = %block_1092d
  %tmp27 = call i32* @__errno_location()
  %tmp28 = load i32* %tmp27
  %tmp29 = icmp eq i32 %tmp28, 22
  br i1 %tmp29, label %block_10965, label %block_10959

block_10959:                                      ; preds = %block_1092d, %block_1094d
  store i32 1, i32* bitcast (i64* @global_var_21a418 to i32*)
  br label %block_1099b

block_10965:                                      ; preds = %block_1094d
  %tmp30 = and i64 %arg2, 4294967295
  %tmp31 = call i64 @rpl_fcntl_DUPFD(i32 %arg1, i64 %tmp30)
  %tmp32 = trunc i64 %tmp31 to i32
  %tmp33 = icmp slt i32 %tmp32, 0
  br i1 %tmp33, label %block_1099b.thread, label %block_109a1.thread

block_1099b.thread:                               ; preds = %block_10965
  br label %block_10a12

block_109a1.thread:                               ; preds = %block_10965
  store i32 -1, i32* bitcast (i64* @global_var_21a418 to i32*)
  br label %block_109ac

block_10989:                                      ; preds = %block_10915
  %tmp34 = and i64 %arg2, 4294967295
  %tmp35 = call i64 @rpl_fcntl_DUPFD(i32 %arg1, i64 %tmp34)
  %tmp36 = trunc i64 %tmp35 to i32
  br label %block_1099b

block_1099b:                                      ; preds = %block_10989, %block_10959
  %stack_var_-20.0 = phi i32 [ %tmp36, %block_10989 ], [ %tmp25, %block_10959 ]
  %tmp37 = icmp slt i32 %stack_var_-20.0, 0
  br i1 %tmp37, label %block_10a12, label %block_109a1

block_109a1:                                      ; preds = %block_1099b
  %.pr = load i32* bitcast (i64* @global_var_21a418 to i32*)
  %tmp38 = icmp eq i32 %.pr, -1
  br i1 %tmp38, label %block_109ac, label %block_10a12

block_109ac:                                      ; preds = %block_109a1.thread, %block_109a1
  %stack_var_-20.023 = phi i32 [ %tmp32, %block_109a1.thread ], [ %stack_var_-20.0, %block_109a1 ]
  %tmp39 = call i32 (i32, i32, ...)* @fcntl(i32 %stack_var_-20.023, i32 1)
  %tmp40 = icmp slt i32 %tmp39, 0
  br i1 %tmp40, label %block_109ea, label %block_109c9

block_109c9:                                      ; preds = %block_109ac
  %tmp41 = call i32 (i32, i32, ...)* @fcntl(i32 %stack_var_-20.023, i32 2)
  %tmp42 = icmp eq i32 %tmp41, -1
  br i1 %tmp42, label %block_109ea, label %block_10a12

block_109ea:                                      ; preds = %block_109c9, %block_109ac
  %tmp43 = call i32* @__errno_location()
  %tmp44 = load i32* %tmp43
  %tmp45 = call i32 @close(i32 %stack_var_-20.023)
  %tmp46 = call i32* @__errno_location()
  store i32 %tmp44, i32* %tmp46
  br label %block_10a12

block_10a12:                                      ; preds = %block_1099b.thread, %block_109c9, %block_109a1, %block_109ea, %block_1099b
  %stack_var_-20.1 = phi i32 [ %stack_var_-20.0, %block_1099b ], [ %stack_var_-20.0, %block_109a1 ], [ -1, %block_109ea ], [ %stack_var_-20.023, %block_109c9 ], [ %tmp32, %block_1099b.thread ]
  %tmp47 = zext i32 %stack_var_-20.1 to i64
  ret i64 %tmp47
}

define i64 @clear_ungetc_buffer_preserving_position(i32* %arg1) {
block_10a17:
  %tmp18 = load i32* %arg1
  %tmp19 = and i32 %tmp18, 256
  %tmp20 = zext i32 %tmp19 to i64
  %tmp21 = icmp eq i32 %tmp19, 0
  br i1 %tmp21, label %block_10a48, label %block_10a32

block_10a32:                                      ; preds = %block_10a17
  %tmp22 = bitcast i32* %arg1 to %_IO_FILE*
  %tmp23 = call i64 @rpl_fseeko(%_IO_FILE* %tmp22, i64 0, i64 1)
  br label %block_10a48

block_10a48:                                      ; preds = %block_10a32, %block_10a17
  %rax.0 = phi i64 [ %tmp20, %block_10a17 ], [ %tmp23, %block_10a32 ]
  ret i64 %rax.0
}

define i64 @rpl_fflush(%_IO_FILE* %arg1) {
block_10a4b:
  %tmp16 = ptrtoint %_IO_FILE* %arg1 to i64
  %tmp17 = icmp eq i64 %tmp16, 0
  br i1 %tmp17, label %block_10a6e, label %block_10a5e

block_10a5e:                                      ; preds = %block_10a4b
  %tmp18 = call i32 @__freading(%_IO_FILE* %arg1)
  %tmp19 = icmp eq i32 %tmp18, 0
  br i1 %tmp19, label %block_10a6e, label %block_10a7c

block_10a6e:                                      ; preds = %block_10a5e, %block_10a4b
  %tmp20 = call i32 @fflush(%_IO_FILE* %arg1)
  %tmp21 = sext i32 %tmp20 to i64
  br label %block_10a94

block_10a7c:                                      ; preds = %block_10a5e
  %tmp22 = getelementptr inbounds %_IO_FILE* %arg1, i32 0, i32 0
  %tmp23 = call i64 @clear_ungetc_buffer_preserving_position(i32* %tmp22)
  %tmp24 = call i32 @fflush(%_IO_FILE* %arg1)
  %tmp25 = sext i32 %tmp24 to i64
  br label %block_10a94

block_10a94:                                      ; preds = %block_10a7c, %block_10a6e
  %rax.0 = phi i64 [ %tmp21, %block_10a6e ], [ %tmp25, %block_10a7c ]
  ret i64 %rax.0
}

define i64 @rpl_fseeko(%_IO_FILE* %arg1, i64 %arg2, i64 %arg3) {
block_10a96:
  %tmp23 = trunc i64 %arg2 to i32
  %tmp24 = trunc i64 %arg3 to i32
  %tmp25 = ptrtoint %_IO_FILE* %arg1 to i64
  %tmp26 = add i64 %tmp25, 16
  %tmp27 = inttoptr i64 %tmp26 to i64*
  %tmp28 = load i64* %tmp27
  %tmp29 = add i64 %tmp25, 8
  %tmp30 = inttoptr i64 %tmp29 to i64*
  %tmp31 = load i64* %tmp30
  %tmp32 = icmp eq i64 %tmp28, %tmp31
  br i1 %tmp32, label %block_10abe, label %block_10b38

block_10abe:                                      ; preds = %block_10a96
  %tmp33 = add i64 %tmp25, 40
  %tmp34 = inttoptr i64 %tmp33 to i64*
  %tmp35 = load i64* %tmp34
  %tmp36 = add i64 %tmp25, 32
  %tmp37 = inttoptr i64 %tmp36 to i64*
  %tmp38 = load i64* %tmp37
  %tmp39 = icmp eq i64 %tmp35, %tmp38
  br i1 %tmp39, label %block_10ad3, label %block_10b38

block_10ad3:                                      ; preds = %block_10abe
  %tmp40 = add i64 %tmp25, 72
  %tmp41 = inttoptr i64 %tmp40 to i64*
  %tmp42 = load i64* %tmp41
  %tmp43 = icmp eq i64 %tmp42, 0
  br i1 %tmp43, label %block_10ae0, label %block_10b38

block_10ae0:                                      ; preds = %block_10ad3
  %tmp44 = call i32 @fileno(%_IO_FILE* %arg1)
  %tmp45 = call i32 @lseek(i32 %tmp44, i32 %tmp23, i32 %tmp24)
  %tmp46 = icmp eq i32 %tmp45, -1
  br i1 %tmp46, label %block_10b0a, label %block_10b11

block_10b0a:                                      ; preds = %block_10ae0
  br label %block_10b4e

block_10b11:                                      ; preds = %block_10ae0
  %tmp47 = sext i32 %tmp45 to i64
  %tmp48 = getelementptr inbounds %_IO_FILE* %arg1, i32 0, i32 0
  %tmp49 = load i32* %tmp48
  %tmp50 = and i32 %tmp49, -17
  store i32 %tmp50, i32* %tmp48
  %tmp51 = add i64 %tmp25, 144
  %tmp52 = inttoptr i64 %tmp51 to i64*
  store i64 %tmp47, i64* %tmp52
  br label %block_10b4e

block_10b38:                                      ; preds = %block_10ad3, %block_10abe, %block_10a96
  %tmp53 = call i32 @fseeko(%_IO_FILE* %arg1, i32 %tmp23, i32 %tmp24)
  %tmp54 = sext i32 %tmp53 to i64
  br label %block_10b4e

block_10b4e:                                      ; preds = %block_10b38, %block_10b11, %block_10b0a
  %rax.0 = phi i64 [ %tmp54, %block_10b38 ], [ 0, %block_10b11 ], [ 4294967295, %block_10b0a ]
  ret i64 %rax.0
}

define i64 @opendir_safer(i8* %arg1) {
block_10b50:
  %0 = alloca i64
  %1 = load i64* %0
  %2 = load i64* %0
  %3 = load i64* %0
  %tmp31 = call %__dirstream* @opendir(i8* %arg1)
  %tmp32 = ptrtoint %__dirstream* %tmp31 to i64
  %tmp33 = icmp eq i64 %tmp32, 0
  br i1 %tmp33, label %block_10c1a, label %block_10b77

block_10b77:                                      ; preds = %block_10b50
  %tmp34 = call i32 @dirfd(%__dirstream* %tmp31)
  %tmp35 = icmp slt i32 %tmp34, 0
  br i1 %tmp35, label %block_10c1a, label %block_10b90

block_10b90:                                      ; preds = %block_10b77
  %tmp36 = icmp sgt i32 %tmp34, 2
  br i1 %tmp36, label %block_10c1a, label %block_10b9a

block_10b9a:                                      ; preds = %block_10b90
  %tmp37 = call i64 @rpl_fcntl(i32 %tmp34, i64 ptrtoint (i64* @global_var_406 to i64), i64 3, i64 %3, i64 %2, i64 %1)
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = icmp slt i32 %tmp38, 0
  br i1 %tmp39, label %block_10bbc, label %block_10bd0

block_10bbc:                                      ; preds = %block_10b9a
  %tmp40 = call i32* @__errno_location()
  %tmp41 = load i32* %tmp40
  br label %block_10bf9

block_10bd0:                                      ; preds = %block_10b9a
  %tmp42 = call %__dirstream* @fdopendir(i32 %tmp38)
  %tmp43 = call i32* @__errno_location()
  %tmp44 = load i32* %tmp43
  %tmp45 = ptrtoint %__dirstream* %tmp42 to i64
  %tmp46 = icmp eq i64 %tmp45, 0
  br i1 %tmp46, label %block_10bef, label %block_10bf9

block_10bef:                                      ; preds = %block_10bd0
  %tmp47 = call i32 @close(i32 %tmp38)
  br label %block_10bf9

block_10bf9:                                      ; preds = %block_10bd0, %block_10bef, %block_10bbc
  %stack_var_-36.0 = phi i32 [ %tmp44, %block_10bd0 ], [ %tmp44, %block_10bef ], [ %tmp41, %block_10bbc ]
  %stack_var_-16.0 = phi %__dirstream* [ %tmp42, %block_10bd0 ], [ %tmp42, %block_10bef ], [ null, %block_10bbc ]
  %tmp48 = call i32 @closedir(%__dirstream* %tmp31)
  %tmp49 = call i32* @__errno_location()
  store i32 %stack_var_-36.0, i32* %tmp49
  br label %block_10c1a

block_10c1a:                                      ; preds = %block_10bf9, %block_10b90, %block_10b77, %block_10b50
  %stack_var_-24.0 = phi %__dirstream* [ %tmp31, %block_10b50 ], [ %tmp31, %block_10b77 ], [ %tmp31, %block_10b90 ], [ %stack_var_-16.0, %block_10bf9 ]
  %tmp50 = ptrtoint %__dirstream* %stack_var_-24.0 to i64
  ret i64 %tmp50
}

define i64 @gettime(%timespec* %arg1) {
block_10c20:
  %tmp16 = call i32 @clock_gettime(i32 0, %timespec* %arg1)
  %tmp17 = sext i32 %tmp16 to i64
  ret i64 %tmp17
}

define i64 @current_timespec() {
block_10c40:
  %stack_var_-40 = alloca i64
  %tmp17 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp18 = bitcast i64* %stack_var_-40 to %timespec*
  %tmp19 = call i64 @gettime(%timespec* %tmp18)
  %tmp20 = load i64* %stack_var_-40
  %tmp21 = load i64 addrspace(257)* inttoptr (i64 40 to i64 addrspace(257)*)
  %tmp22 = icmp eq i64 %tmp17, %tmp21
  br i1 %tmp22, label %block_10c7f, label %block_10c7a

block_10c7a:                                      ; preds = %block_10c40
  call void @__stack_chk_fail()
  unreachable

block_10c7f:                                      ; preds = %block_10c40
  ret i64 %tmp20
}

define i64 @dup_safer(i32 %arg1) {
block_10c81:
  %0 = alloca i64
  %1 = load i64* %0
  %2 = load i64* %0
  %3 = load i64* %0
  %tmp19 = call i64 @rpl_fcntl(i32 %arg1, i64 0, i64 3, i64 %3, i64 %2, i64 %1)
  ret i64 %tmp19
}

define i64 @__libc_csu_init(i32 %arg1, i64 %arg2, i64 %arg3) {
block_10cb0:
  %tmp17 = sext i32 %arg1 to i64
  %tmp26 = call i64 @_init(i64 %tmp17)
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_215678 to i64), i64 ptrtoint (i64* @global_var_215670 to i64)), i64 3), i64 0), label %block_10d06, label %block_10ce6

block_10ce6:                                      ; preds = %block_10cb0
  br label %block_10cf0

block_10cf0:                                      ; preds = %block_10cf0, %block_10ce6
  %rbx.0 = phi i64 [ 0, %block_10ce6 ], [ %tmp32, %block_10cf0 ]
  %tmp27 = shl i64 %rbx.0, 3
  %tmp28 = add i64 %tmp27, ptrtoint (i64* @global_var_215670 to i64)
  %tmp29 = inttoptr i64 %tmp28 to i64*
  %tmp30 = load i64* %tmp29
  %tmp31 = call i64 @__pseudo_call(i64 %tmp30)
  %tmp32 = add i64 %rbx.0, 1
  %tmp33 = icmp eq i64 %rbx.0, sub (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_215678 to i64), i64 ptrtoint (i64* @global_var_215670 to i64)), i64 3), i64 1)
  br i1 %tmp33, label %block_10d06, label %block_10cf0

block_10d06:                                      ; preds = %block_10cf0, %block_10cb0
  %rax.0 = phi i64 [ %tmp26, %block_10cb0 ], [ %tmp31, %block_10cf0 ]
  ret i64 %rax.0
}

define i64 @__libc_csu_fini() {
block_10d20:
  %0 = alloca i64
  %1 = load i64* %0
  ret i64 %1
}

define i32 @stat(i8* %file, %stat* %buf) {
block_10d30:
  %tmp4 = call i32 @__xstat(i32 1, i8* %file, %stat* %buf)
  ret i32 %tmp4
}

define i32 @fstat(i32 %fd, %stat* %buf) {
block_10d40:
  %tmp4 = call i32 @__fxstat(i32 1, i32 %fd, %stat* %buf)
  ret i32 %tmp4
}

define i32 @lstat(i8* %file, %stat* %buf) {
block_10d50:
  %tmp4 = call i32 @__lxstat(i32 1, i8* %file, %stat* %buf)
  ret i32 %tmp4
}

define i64 @_fini() {
block_10d60:
  %0 = alloca i64
  %1 = load i64* %0
  ret i64 %1
}

declare i8* @getenv(i8*)

declare i32 @sigprocmask(i32, %_TYPEDEF_sigset_t*, %_TYPEDEF_sigset_t*)

declare i32 @raise(i32)

declare void @free(i64*)

declare i32 @utimensat(i32, i8*, [2 x %timespec], i32)

declare i32 @putchar(i32)

declare %tm* @localtime(i32*)

declare i32* @__errno_location()

declare i32 @fdatasync(i32)

declare i32 @unlink(i8*)

declare void @_exit(i32)

declare i8* @strcpy(i8*, i8*)

declare i32 @unlinkat(i32, i8*, i32)

declare i32 @puts(i8*)

declare void @qsort(i64*, i32, i32, i32 (i64*, i64*)*)

declare i32 @isatty(i32)

declare i32 @sigaction(i32, %sigaction*, %sigaction*)

declare i32 @fcntl(i32, i32, ...)

declare i32 @clock_gettime(i32, %timespec*)

declare i32 @write(i32, i64*, i32)

declare i32 @fclose(%_IO_FILE*)

declare %__dirstream* @opendir(i8*)

declare i8* @stpcpy(i8*, i8*)

declare i32 @strlen(i8*)

declare i32 @__lxstat(i32, i8*, %stat*)

declare i32 @openat(i32, i8*, i32, ...)

declare void @__stack_chk_fail()

declare i32 @getopt_long(i32, i8**, i8*, %option*, i32*)

declare i32 @printf(i8*, ...)

declare i32 @_IO_putc(i32, %_IO_FILE*)

declare i8* @strrchr(i8*, i32)

declare i32 @lseek(i32, i32, i32)

declare i64* @memset(i64*, i32, i32)

declare i32 @close(i32)

declare i32 @strspn(i8*, i8*)

declare i32 @closedir(%__dirstream*)

declare i32 @fputc(i32, %_IO_FILE*)

declare i32 @strcspn(i8*, i8*)

declare i32 @read(i32, i64*, i32)

declare i32 @memcmp(i64*, i64*, i32)

declare i32 @utimes(i8*, [2 x %timeval])

declare i64* @calloc(i32, i32)

declare i32 @strcmp(i8*, i8*)

declare i32 @getchar()

declare void (i32)* @signal(i32, void (i32)*)

declare i32 @dirfd(%__dirstream*)

declare i32 @fprintf(%_IO_FILE*, i8*, ...)

declare i32 @sigemptyset(%_TYPEDEF_sigset_t*)

declare i64* @memcpy(i64*, i64*, i32)

declare i32 @fileno(%_IO_FILE*)

declare i32 @__xstat(i32, i8*, %stat*)

declare %dirent* @readdir(%__dirstream*)

declare i32 @tolower(i32)

declare i64* @malloc(i32)

declare i32 @fflush(%_IO_FILE*)

declare i32 @__fxstat(i32, i32, %stat*)

declare i32 @__freading(%_IO_FILE*)

declare i64* @realloc(i64*, i32)

declare i32 @fchmod(i32, i32)

declare i64* @memmove(i64*, i64*, i32)

declare i32 @fsync(i32)

declare i32 @open(i8*, i32, ...)

declare i32 @fseeko(%_IO_FILE*, i32, i32)

declare i32 @fchown(i32, i32, i32)

declare void @perror(i8*)

declare %__dirstream* @fdopendir(i32)

declare i32 @futimens(i32, [2 x %timespec])

declare i32 @atoi(i8*)

declare i8* @strcat(i8*, i8*)

declare i32 @sigismember(%_TYPEDEF_sigset_t*, i32)

declare void @exit(i32)

declare i32 @fwrite(i64*, i32, i32, %_IO_FILE*)

declare i32 @sigaddset(%_TYPEDEF_sigset_t*, i32)

declare i32 @futimesat(i32, i8*, [2 x %timeval])

declare i16** @__ctype_b_loc()

declare i64 @_ITM_deregisterTMCloneTable(i64*)

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*)

declare void @__gmon_start__()

declare i64 @_ITM_registerTMCloneTable(i64*, i64)

declare void @__cxa_finalize(i64*)

declare i64 @__pseudo_call(i64)

declare i64 @__asm_hlt()

declare i128 @__asm_cvtsi2sd(i64)

declare i128 @__asm_movsd(i64)

declare i128 @__asm_mulsd(i128, i128)

declare i128 @__asm_divsd(i128, i128)

declare i64 @__asm_movq(i128)

declare i64 @__asm_movaps(i128)

declare void @__ppdasm_undefined_function__store_0(i64)

declare void @__ppdasm_undefined_function__store_1(i32)

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

attributes #0 = { nounwind readnone }
attributes #1 = { cold }
