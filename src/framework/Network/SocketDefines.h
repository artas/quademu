

#ifndef QUAD_SOCKETDEFINES_H
#define QUAD_SOCKETDEFINES_H

#ifdef WIN32

/* Windows socket definitions
 */
#define FD_SETSIZE 1024
#include <winsock2.h>
#include <Ws2tcpip.h>

typedef SOCKET SocketHandle;
typedef fd_set SelectSet;

#else

/* The unix socket definitions
 */
#include <sys/socket.h>
#include <netinet/in.h>
#ifdef __APPLE_CC__
#include <sys/select.h>
#endif

typedef int SocketHandle;
typedef fd_set SelectSet;
#endif
#endif

