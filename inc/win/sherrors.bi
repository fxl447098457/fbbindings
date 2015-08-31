'' FreeBASIC binding for mingw-w64-v4.0.4
''
'' based on the C header files:
''   This Software is provided under the Zope Public License (ZPL) Version 2.1.
''
''   Copyright (c) 2009, 2010 by the mingw-w64 project
''
''   See the AUTHORS file for the list of contributors to the mingw-w64 project.
''
''   This license has been certified as open source. It has also been designated
''   as GPL compatible by the Free Software Foundation (FSF).
''
''   Redistribution and use in source and binary forms, with or without
''   modification, are permitted provided that the following conditions are met:
''
''     1. Redistributions in source code must retain the accompanying copyright
''        notice, this list of conditions, and the following disclaimer.
''     2. Redistributions in binary form must reproduce the accompanying
''        copyright notice, this list of conditions, and the following disclaimer
''        in the documentation and/or other materials provided with the
''        distribution.
''     3. Names of the copyright holders must not be used to endorse or promote
''        products derived from this software without prior written permission
''        from the copyright holders.
''     4. The right to distribute this software or to use it for any purpose does
''        not give you the right to use Servicemarks (sm) or Trademarks (tm) of
''        the copyright holders.  Use of them is covered by separate agreement
''        with the copyright holders.
''     5. If any files are modified, you must cause the modified files to carry
''        prominent notices stating that you changed the files and the date of
''        any change.
''
''   Disclaimer
''
''   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY EXPRESSED
''   OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
''   OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
''   EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY DIRECT, INDIRECT,
''   INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
''   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
''   OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
''   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
''   NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
''   EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
''
'' translated to FreeBASIC by:
''   Copyright © 2015 FreeBASIC development team

#pragma once

#include once "crt/long.bi"
#include once "winapifamily.bi"
#include once "winerror.bi"

#define _SHERROR_
#define COPYENGINE_S_YES _HRESULT_TYPEDEF_(cast(clong, &h00270001))
#define COPYENGINE_S_NOT_HANDLED _HRESULT_TYPEDEF_(cast(clong, &h00270003))
#define COPYENGINE_S_USER_RETRY _HRESULT_TYPEDEF_(cast(clong, &h00270004))
#define COPYENGINE_S_USER_IGNORED _HRESULT_TYPEDEF_(cast(clong, &h00270005))
#define COPYENGINE_S_MERGE _HRESULT_TYPEDEF_(cast(clong, &h00270006))
#define COPYENGINE_S_DONT_PROCESS_CHILDREN _HRESULT_TYPEDEF_(cast(clong, &h00270008))
#define COPYENGINE_S_ALREADY_DONE _HRESULT_TYPEDEF_(cast(clong, &h0027000a))
#define COPYENGINE_S_PENDING _HRESULT_TYPEDEF_(cast(clong, &h0027000b))
#define COPYENGINE_S_KEEP_BOTH _HRESULT_TYPEDEF_(cast(clong, &h0027000c))
#define COPYENGINE_S_CLOSE_PROGRAM _HRESULT_TYPEDEF_(cast(clong, &h0027000d))
#define COPYENGINE_S_COLLISIONRESOLVED _HRESULT_TYPEDEF_(cast(clong, &h0027000e))
#define COPYENGINE_S_PROGRESS_PAUSE _HRESULT_TYPEDEF_(cast(clong, &h0027000f))
#define COPYENGINE_E_USER_CANCELLED _HRESULT_TYPEDEF_(cast(clong, &h80270000))
#define COPYENGINE_E_CANCELLED _HRESULT_TYPEDEF_(cast(clong, &h80270001))
#define COPYENGINE_E_REQUIRES_ELEVATION _HRESULT_TYPEDEF_(cast(clong, &h80270002))
#define COPYENGINE_E_SAME_FILE _HRESULT_TYPEDEF_(cast(clong, &h80270003))
#define COPYENGINE_E_DIFF_DIR _HRESULT_TYPEDEF_(cast(clong, &h80270004))
#define COPYENGINE_E_MANY_SRC_1_DEST _HRESULT_TYPEDEF_(cast(clong, &h80270005))
#define COPYENGINE_E_DEST_SUBTREE _HRESULT_TYPEDEF_(cast(clong, &h80270009))
#define COPYENGINE_E_DEST_SAME_TREE _HRESULT_TYPEDEF_(cast(clong, &h8027000a))
#define COPYENGINE_E_FLD_IS_FILE_DEST _HRESULT_TYPEDEF_(cast(clong, &h8027000b))
#define COPYENGINE_E_FILE_IS_FLD_DEST _HRESULT_TYPEDEF_(cast(clong, &h8027000c))
#define COPYENGINE_E_FILE_TOO_LARGE _HRESULT_TYPEDEF_(cast(clong, &h8027000d))
#define COPYENGINE_E_REMOVABLE_FULL _HRESULT_TYPEDEF_(cast(clong, &h8027000e))
#define COPYENGINE_E_DEST_IS_RO_CD _HRESULT_TYPEDEF_(cast(clong, &h8027000f))
#define COPYENGINE_E_DEST_IS_RW_CD _HRESULT_TYPEDEF_(cast(clong, &h80270010))
#define COPYENGINE_E_DEST_IS_R_CD _HRESULT_TYPEDEF_(cast(clong, &h80270011))
#define COPYENGINE_E_DEST_IS_RO_DVD _HRESULT_TYPEDEF_(cast(clong, &h80270012))
#define COPYENGINE_E_DEST_IS_RW_DVD _HRESULT_TYPEDEF_(cast(clong, &h80270013))
#define COPYENGINE_E_DEST_IS_R_DVD _HRESULT_TYPEDEF_(cast(clong, &h80270014))
#define COPYENGINE_E_SRC_IS_RO_CD _HRESULT_TYPEDEF_(cast(clong, &h80270015))
#define COPYENGINE_E_SRC_IS_RW_CD _HRESULT_TYPEDEF_(cast(clong, &h80270016))
#define COPYENGINE_E_SRC_IS_R_CD _HRESULT_TYPEDEF_(cast(clong, &h80270017))
#define COPYENGINE_E_SRC_IS_RO_DVD _HRESULT_TYPEDEF_(cast(clong, &h80270018))
#define COPYENGINE_E_SRC_IS_RW_DVD _HRESULT_TYPEDEF_(cast(clong, &h80270019))
#define COPYENGINE_E_SRC_IS_R_DVD _HRESULT_TYPEDEF_(cast(clong, &h8027001a))
#define COPYENGINE_E_INVALID_FILES_SRC _HRESULT_TYPEDEF_(cast(clong, &h8027001b))
#define COPYENGINE_E_INVALID_FILES_DEST _HRESULT_TYPEDEF_(cast(clong, &h8027001c))
#define COPYENGINE_E_PATH_TOO_DEEP_SRC _HRESULT_TYPEDEF_(cast(clong, &h8027001d))
#define COPYENGINE_E_PATH_TOO_DEEP_DEST _HRESULT_TYPEDEF_(cast(clong, &h8027001e))
#define COPYENGINE_E_ROOT_DIR_SRC _HRESULT_TYPEDEF_(cast(clong, &h8027001f))
#define COPYENGINE_E_ROOT_DIR_DEST _HRESULT_TYPEDEF_(cast(clong, &h80270020))
#define COPYENGINE_E_ACCESS_DENIED_SRC _HRESULT_TYPEDEF_(cast(clong, &h80270021))
#define COPYENGINE_E_ACCESS_DENIED_DEST _HRESULT_TYPEDEF_(cast(clong, &h80270022))
#define COPYENGINE_E_PATH_NOT_FOUND_SRC _HRESULT_TYPEDEF_(cast(clong, &h80270023))
#define COPYENGINE_E_PATH_NOT_FOUND_DEST _HRESULT_TYPEDEF_(cast(clong, &h80270024))
#define COPYENGINE_E_NET_DISCONNECT_SRC _HRESULT_TYPEDEF_(cast(clong, &h80270025))
#define COPYENGINE_E_NET_DISCONNECT_DEST _HRESULT_TYPEDEF_(cast(clong, &h80270026))
#define COPYENGINE_E_SHARING_VIOLATION_SRC _HRESULT_TYPEDEF_(cast(clong, &h80270027))
#define COPYENGINE_E_SHARING_VIOLATION_DEST _HRESULT_TYPEDEF_(cast(clong, &h80270028))
#define COPYENGINE_E_ALREADY_EXISTS_NORMAL _HRESULT_TYPEDEF_(cast(clong, &h80270029))
#define COPYENGINE_E_ALREADY_EXISTS_READONLY _HRESULT_TYPEDEF_(cast(clong, &h8027002a))
#define COPYENGINE_E_ALREADY_EXISTS_SYSTEM _HRESULT_TYPEDEF_(cast(clong, &h8027002b))
#define COPYENGINE_E_ALREADY_EXISTS_FOLDER _HRESULT_TYPEDEF_(cast(clong, &h8027002c))
#define COPYENGINE_E_STREAM_LOSS _HRESULT_TYPEDEF_(cast(clong, &h8027002d))
#define COPYENGINE_E_EA_LOSS _HRESULT_TYPEDEF_(cast(clong, &h8027002e))
#define COPYENGINE_E_PROPERTY_LOSS _HRESULT_TYPEDEF_(cast(clong, &h8027002f))
#define COPYENGINE_E_PROPERTIES_LOSS _HRESULT_TYPEDEF_(cast(clong, &h80270030))
#define COPYENGINE_E_ENCRYPTION_LOSS _HRESULT_TYPEDEF_(cast(clong, &h80270031))
#define COPYENGINE_E_DISK_FULL _HRESULT_TYPEDEF_(cast(clong, &h80270032))
#define COPYENGINE_E_DISK_FULL_CLEAN _HRESULT_TYPEDEF_(cast(clong, &h80270033))
#define COPYENGINE_E_EA_NOT_SUPPORTED _HRESULT_TYPEDEF_(cast(clong, &h80270034))
#define COPYENGINE_E_CANT_REACH_SOURCE _HRESULT_TYPEDEF_(cast(clong, &h80270035))
#define COPYENGINE_E_RECYCLE_UNKNOWN_ERROR _HRESULT_TYPEDEF_(cast(clong, &h80270035))
#define COPYENGINE_E_RECYCLE_FORCE_NUKE _HRESULT_TYPEDEF_(cast(clong, &h80270036))
#define COPYENGINE_E_RECYCLE_SIZE_TOO_BIG _HRESULT_TYPEDEF_(cast(clong, &h80270037))
#define COPYENGINE_E_RECYCLE_PATH_TOO_LONG _HRESULT_TYPEDEF_(cast(clong, &h80270038))
#define COPYENGINE_E_RECYCLE_BIN_NOT_FOUND _HRESULT_TYPEDEF_(cast(clong, &h8027003a))
#define COPYENGINE_E_NEWFILE_NAME_TOO_LONG _HRESULT_TYPEDEF_(cast(clong, &h8027003b))
#define COPYENGINE_E_NEWFOLDER_NAME_TOO_LONG _HRESULT_TYPEDEF_(cast(clong, &h8027003c))
#define COPYENGINE_E_DIR_NOT_EMPTY _HRESULT_TYPEDEF_(cast(clong, &h8027003d))
#define COPYENGINE_E_FAT_MAX_IN_ROOT _HRESULT_TYPEDEF_(cast(clong, &h8027003e))
#define COPYENGINE_E_ACCESSDENIED_READONLY _HRESULT_TYPEDEF_(cast(clong, &h8027003f))
#define COPYENGINE_E_REDIRECTED_TO_WEBPAGE _HRESULT_TYPEDEF_(cast(clong, &h80270040))
#define COPYENGINE_E_SERVER_BAD_FILE_TYPE _HRESULT_TYPEDEF_(cast(clong, &h80270041))
#define NETCACHE_E_NEGATIVE_CACHE _HRESULT_TYPEDEF_(cast(clong, &h80270100))
#define EXECUTE_E_LAUNCH_APPLICATION _HRESULT_TYPEDEF_(cast(clong, &h80270101))
#define SHELL_E_WRONG_BITDEPTH _HRESULT_TYPEDEF_(cast(clong, &h80270102))
#define LINK_E_DELETE _HRESULT_TYPEDEF_(cast(clong, &h80270103))
#define STORE_E_NEWER_VERSION_AVAILABLE _HRESULT_TYPEDEF_(cast(clong, &h80270104))
#define LIBRARY_E_NO_SAVE_LOCATION _HRESULT_TYPEDEF_(cast(clong, &h80270200))
#define LIBRARY_E_NO_ACCESSIBLE_LOCATION _HRESULT_TYPEDEF_(cast(clong, &h80270201))
#define E_USERTILE_UNSUPPORTEDFILETYPE _HRESULT_TYPEDEF_(cast(clong, &h80270210))
#define E_USERTILE_CHANGEDISABLED _HRESULT_TYPEDEF_(cast(clong, &h80270211))
#define E_USERTILE_LARGEORDYNAMIC _HRESULT_TYPEDEF_(cast(clong, &h80270212))
#define E_USERTILE_VIDEOFRAMESIZE _HRESULT_TYPEDEF_(cast(clong, &h80270213))
#define E_USERTILE_FILESIZE _HRESULT_TYPEDEF_(cast(clong, &h80270214))
#define IMM_ACC_DOCKING_E_INSUFFICIENTHEIGHT _HRESULT_TYPEDEF_(cast(clong, &h80270230))
#define IMM_ACC_DOCKING_E_DOCKOCCUPIED _HRESULT_TYPEDEF_(cast(clong, &h80270231))
#define IMSC_E_SHELL_COMPONENT_STARTUP_FAILURE _HRESULT_TYPEDEF_(cast(clong, &h80270233))
#define E_TILE_NOTIFICATIONS_PLATFORM_FAILURE _HRESULT_TYPEDEF_(cast(clong, &h80270249))
#define E_SHELL_EXTENSION_BLOCKED _HRESULT_TYPEDEF_(cast(clong, &h80270301))
