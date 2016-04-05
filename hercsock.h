#ifndef inc_hercsock
#define inc_hercsock

#include <netdb.h>
#include <sys/types.h>
#include <sys/cdefs.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

extern long errcd;                 /* last socket error */
extern long closesocket (long ss); /* best we can do */
extern long ascii2ebcdic (char * in, long len);
extern long ebcdic2ascii (char * in, long len);
extern long WSAGetLastError ();
#define HercGetLastError WSAGetLastError
extern long select (long, void *, void *, void *, void *);
extern long ioctlsocket (long, long, long *);
#define fcntl ioctlsocket
long hgetsockname (long, struct sockaddr *, int *);
#define getsockname hgetsockname

#define SOCKADDR_IN struct sockaddr_in
#define LPSOCKADDR struct sockaddr *
#define SOCKET int

#define INVALID_SOCKET -1
#define SOCKET_ERROR -1

#define FIONBIO  1 /* set/clear non-blocking i/o */
#define FIONREAD 2 /* get # bytes to read */

/* Would like some windows programs working in MVS38j? */
#define WSAEINVAL          EINVAL
#define WSAEWOULDBLOCK     EWOULDBLOCK
#define WSAEINPROGRESS     EINPROGRESS
#define WSAEALREADY        EALREADY
#define WSAENOTSOCK        ENOTSOCK
#define WSAEDESTADDRREQ    EDESTADDRREQ
#define WSAEMSGSIZE        EMSGSIZE
#define WSAEPROTOTYPE      EPROTOTYPE
#define WSAENOPROTOOPT     ENOPROTOOPT
#define WSAEPROTONOSUPPORT EPROTONOSUPPORT
#define WSAESOCKTNOSUPPORT ESOCKTNOSUPPORT
#define WSAEOPNOTSUPP      EOPNOTSUPP
#define WSAEPFNOSUPPORT    EPFNOSUPPORT
#define WSAEAFNOSUPPORT    EAFNOSUPPORT
#define WSAEADDRINUSE      EADDRINUSE
#define WSAEADDRNOTAVAIL   EADDRNOTAVAIL
#define WSAENETDOWN        ENETDOWN
#define WSAENETUNREACH     ENETUNREACH
#define WSAENETRESET       ENETRESET
#define WSAECONNABORTED    ECONNABORTED
#define WSAECONNRESET      ECONNRESET
#define WSAENOBUFS         ENOBUFS
#define WSAEISCONN         EISCONN
#define WSAENOTCONN        ENOTCONN
#define WSAESHUTDOWN       ESHUTDOWN
#define WSAETOOMANYREFS    ETOOMANYREFS
#define WSAETIMEDOUT       ETIMEDOUT
#define WSAECONNREFUSED    ECONNREFUSED
#define WSAELOOP           ELOOP
#define WSAENAMETOOLONG    ENAMETOOLONG
#define WSAEHOSTDOWN       EHOSTDOWN
#define WSAEHOSTUNREACH    EHOSTUNREACH
#define WSAENOTEMPTY       ENOTEMPTY
#define WSAEPROCLIM        EPROCLIM
#define WSAEUSERS          EUSERS
#define WSAEDQUOT          EDQUOT
#define WSAESTALE          ESTALE
#define WSAEREMOTE         EREMOTE

struct herc_in_addr {
    union {
        struct { u_char s_b1,s_b2,s_b3,s_b4; } S_un_b;
        u_long S_addr;
    } S_un;
};

#endif
