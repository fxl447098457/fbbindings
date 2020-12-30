'' FreeBASIC binding for SDL_gfx-2.0.26
''
'' based on the C header files:
''   Copyright (C) 2001-2013  Andreas Schiffler
''
'' translated to FreeBASIC by:
''   Copyright © 2020 FreeBASIC development team

#pragma once

#inclib "SDL_gfx"

#include once "SDL.bi"

extern "C"

#define _SDL_framerate_h
const FPS_UPPER_LIMIT = 200
const FPS_LOWER_LIMIT = 1
const FPS_DEFAULT = 30

type FPSmanager
	framecount as Uint32
	rateticks as single
	baseticks as Uint32
	lastticks as Uint32
	rate as Uint32
end type

declare sub SDL_initFramerate(byval manager as FPSmanager ptr)
declare function SDL_setFramerate(byval manager as FPSmanager ptr, byval rate as Uint32) as long
declare function SDL_getFramerate(byval manager as FPSmanager ptr) as long
declare function SDL_getFramecount(byval manager as FPSmanager ptr) as long
declare function SDL_framerateDelay(byval manager as FPSmanager ptr) as Uint32

end extern
