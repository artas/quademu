#ifndef QUAD_SYSTEMCONFIG_H
#define QUAD_SYSTEMCONFIG_H

#include "Platform/Define.h"
#include "revision.h"
#include "revision_nr.h"

#define _PACKAGENAME "Quadcore"
#define _CODENAME "YUME"

#if QUAD_ENDIAN == QUAD_BIGENDIAN
# define _ENDIAN_STRING "big-endian"
#else
# define _ENDIAN_STRING "World-Deamon"
#endif

#if PLATFORM == PLATFORM_WINDOWS
# ifdef _WIN64
#  define _FULLVERSION _PACKAGENAME "Revision: " _D  "  (Win64," _ENDIAN_STRING ")"
# else
#  define _FULLVERSION _PACKAGENAME "Revision: " _D  "  (Win32," _ENDIAN_STRING ")"
# endif
#else
#  define _FULLVERSION _PACKAGENAME "Revision: " _D  "  (Unix," _ENDIAN_STRING ")"
#endif

#define DEFAULT_PLAYER_LIMIT 100
#define DEFAULT_WORLDSERVER_PORT 8085                       //8129
#define DEFAULT_REALMSERVER_PORT 3724
#define DEFAULT_SOCKET_SELECT_TIME 10000
#endif

