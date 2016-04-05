#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

#define PORT    5000
#define LOCALHOST   "localhost"
#define UTILITY_NAME    "sub"

void error(const char *msg)
{
    perror(msg);
    exit(0);
}

int main(int argc, char **argv)
{
//EXPORT int socketpair( int domain, int type, int protocol, int socket_vector[2] )
    // PROGRAMMING NOTE: we do NOT support type AF_UNIX socketpairs on Win32.
    //                   we *ONLY* support AF_INET, IPPROTO_IP, SOCK_STREAM.

    SOCKET temp_listen_socket;
    struct sockaddr_in  localhost_addr;
    int    len = sizeof(localhost_addr);

    /* FIXME ISW ? In some situations, it seems the sockaddr_in structure */
    /*         returned by getsockname() isn't appropriate for use        */
    /*         by connect(). We therefore use another sockaddr_in for the */
    /*         sole purpose of fetching the automatic port number issued  */
    /*         during the bind() operation.                               */
    /* NOTE : This is a workaround. The actual root cause for this        */
    /*        problem is presently unknown because it is hard to reproduce*/

    struct sockaddr_in tempaddr;
    int talen = sizeof(tempaddr);

    // Technique: create a pair of sockets bound to each other by first creating a
    // temporary listening socket bound to the localhost loopback address (127.0.0.1)
    // and then having the other socket connect to it...

    //  "Upon successful completion, 0 shall be returned; otherwise,
    //   -1 shall be returned and errno set to indicate the error."

    if ( AF_INET     != domain   ) { errno = WSAEAFNOSUPPORT;    return -1; }
    if ( SOCK_STREAM != type     ) { errno = WSAEPROTONOSUPPORT; return -1; }
    if ( IPPROTO_IP  != protocol ) { errno = WSAEPROTOTYPE;      return -1; }

    socket_vector[0] = socket_vector[1] = INVALID_SOCKET;

    if ( INVALID_SOCKET == (temp_listen_socket = socket( AF_INET, SOCK_STREAM, 0 )) )
    {
        errno = (int)WSAGetLastError();
        return -1;
    }

    memset( &localhost_addr, 0, len   );
    memset( &tempaddr,       0, talen );

    localhost_addr.sin_family       = AF_INET;
    localhost_addr.sin_port         = htons( 0 );
    localhost_addr.sin_addr.s_addr  = htonl( INADDR_LOOPBACK );

    if (0
        || SOCKET_ERROR   == bind( temp_listen_socket, (SOCKADDR*) &localhost_addr, len )
        || SOCKET_ERROR   == listen( temp_listen_socket, 1 )
        || SOCKET_ERROR   == getsockname( temp_listen_socket, (SOCKADDR*) &tempaddr, &talen )
        || INVALID_SOCKET == (SOCKET)( socket_vector[1] = socket( AF_INET, SOCK_STREAM, 0 ) )
    )
    {
        int nLastError = (int)WSAGetLastError();
        closesocket( temp_listen_socket );
        errno = nLastError;
        return -1;
    }

    /* Get the temporary port number assigned automatically */
    /* by bind(127.0.0.1/0)                                 */

    localhost_addr.sin_port = tempaddr.sin_port;

//    if (0
//        || SOCKET_ERROR   == connect( socket_vector[1], (SOCKADDR*) &localhost_addr, len )
//        || INVALID_SOCKET == (SOCKET)( socket_vector[0] = accept( temp_listen_socket, (SOCKADDR*) &localhost_addr, &len ) )
  //  )
    {
        int nLastError = (int)WSAGetLastError();
        closesocket( socket_vector[1] );
                     socket_vector[1] = INVALID_SOCKET;
        closesocket( temp_listen_socket );
        errno = nLastError;
        return -1;
    }

    closesocket( temp_listen_socket );
    return 0;

}
