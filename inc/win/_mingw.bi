'' FreeBASIC binding for mingw-w64-v4.0.1
''
'' based on the C header files:
''   DISCLAIMER
''   This file has no copyright assigned and is placed in the Public Domain.
''   This file is part of the mingw-w64 runtime package.
''
''   The mingw-w64 runtime package and its code is distributed in the hope that it 
''   will be useful but WITHOUT ANY WARRANTY.  ALL WARRANTIES, EXPRESSED OR 
''   IMPLIED ARE HEREBY DISCLAIMED.  This includes but is not limited to 
''   warranties of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
''
'' translated to FreeBASIC by:
''   Copyright © 2015 FreeBASIC development team

#pragma once

#include once "crt/long.bi"
#include once "_mingw_secapi.bi"
#include once "vadefs.bi"

extern "C"

#define _INC__MINGW_H
const MINGW_HAS_SECURE_API = 1
#define _INC_CRTDEFS_MACRO
#define __STRINGIFY(x) #x
#define __MINGW64_STRINGIFY(x) __STRINGIFY(x)
const __MINGW64_VERSION_MAJOR = 4
const __MINGW64_VERSION_MINOR = 0
const __MINGW64_VERSION_RC = 0
#define __MINGW64_VERSION_STR __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) "." __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR)
#define __MINGW64_VERSION_STATE "stable"
const __MINGW32_MAJOR_VERSION = 3
const __MINGW32_MINOR_VERSION = 11

#ifndef __FB_64BIT__
	#undef __MINGW_USE_UNDERSCORE_PREFIX
#endif

const __MINGW_USE_UNDERSCORE_PREFIX = 1
#define __MINGW_IMP_SYMBOL(sym) _imp__##sym
#define __MINGW_IMP_LSYMBOL(sym) __imp__##sym
#define __MINGW_USYMBOL(sym) _##sym
#define __MINGW_LSYMBOL(sym) sym
const __MINGW_HAVE_ANSI_C99_PRINTF = 1
const __MINGW_HAVE_WIDE_C99_PRINTF = 1
const __MINGW_HAVE_ANSI_C99_SCANF = 1
const __MINGW_HAVE_WIDE_C99_SCANF = 1
#define __MSABI_LONG(x) x##l
#define __LONG32 long
#undef __USE_CRTIMP
const __USE_CRTIMP = 1
const USE___UUIDOF = 0
const __MSVCRT_VERSION__ = &h0700
#define _INT128_DEFINED
#define __int8 byte
#define __int16 short
#define __int32 long
#define __int64 longint
#define MINGW_SDK_INIT
const __STDC_SECURE_LIB__ = cast(clong, 200411)
#define __GOT_SECURE_LIB__ __STDC_SECURE_LIB__
const __MINGW_HAS_DXSDK = 1
const MINGW_HAS_DDRAW_H = 1
const MINGW_DDRAW_VERSION = 7
#define MINGW_DDK_H
const MINGW_HAS_DDK_H = 1
#define _DLL
#define _MT
#define _PGLOBAL
#define _AGLOBAL
const _SECURECRT_FILL_BUFFER_PATTERN = &hFD
#define _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement)
#define _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement)
#define _CRT_MANAGED_HEAP_DEPRECATE
#define _CRT_OBSOLETE(_NewItem)

#ifndef __FB_64BIT__
	#define _USE_32BIT_TIME_T
#endif

const _ARGMAX = 100
const _TRUNCATE = cuint(-1)
#undef _CRT_glob
#define _CRT_glob _dowildcard
#define __ANONYMOUS_DEFINED
declare function __mingw_get_crt_info() as const zstring ptr

end extern
