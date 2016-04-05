/*----------------------------------------------------------
| File      : netlib.h
| Author    : Simon Amor
| EMail     : simon@foobar.net
| WWW       : http://www.foobar.net/~simon/
| Version   : 0.5
|
| Description
| ~~~~~~~~~~~
| A library which allows users to write network applications
| without too much effort. Suggestions for new functions are
| always welcome.
|
*-----------------------------------------------------------*/

#ifndef NETLIB_H
#define NETLIB_H

/*------------------- NOTES --------------------------------
| You will need to include some or all of the following
| files in your source.
|  #include <sys/types.h>
|  #include <sys/socket.h>
|  #include <errno.h>
|  #include <fcntl.h>
|  #include <netdb.h>
|  #include <unistd.h>
|  #include <sys/file.h>
|  #include <arpa/inet.h>
|  #include <netinet/in.h>
*-----------------------------------------------------------*/

/*****************************************************************************
 * Returns an address for output - tries to convert to name if possible.
 ***/
extern char *NetAddrOut(struct in_addr);

/*****************************************************************************
 * Accept a new connection from the master socket
 * returns info about connection in addr & int is
 * the fd of the new connection
 ***/
extern int NetOpenConnection(int, struct sockaddr_in *);

/*****************************************************************************
 * Set up blocking master socket 
 * Returns negative number if error, else fd
 * The port must be >1024 (and usually =<9999)
 * -1 = socket creation failure
 * -2 = reuseable sockets failed
 * -3 = bind to port failed
 * -4 = unable to set connection queue to 5
 ***/
extern int NetCreateMasterSocket(int);

/*****************************************************************************
 * Set a socket non-blocking
 * returns -1 on failure, 0 on success
 ***/
int NetNonBlocking(int);

/*****************************************************************************
 * Send a string to a socket
 * if failed, returns -1 else returns the number of bytes sent
 ***/
extern int NetPutString(int, char *, ...);
/* extern int NetPutString(int, char *); */

/*****************************************************************************
 * Receive stuff from the socket
 * if failed, returns -1, else returns bytes received
 ***/
extern int NetGetString(int, char *, int);

/*****************************************************************************
 * Receive a single line of data from the socket
 * if failed, returns -1, else returns bytes received
 ***/
int NetGetLine(int, char *, int);

/*****************************************************************************
 * Closes a socket - alias for 'close(fd)'
 * Returns -1 if error or 0 if successful
 ***/
#define NetClose(x)   close(x)

/*****************************************************************************
 * a pointer to a static version id
 ***/
extern char *NetVersion;

/*****************************************************************************
 * Connects to <host> on port <port>
 * returns file descriptor attached to the specified port
 * -1 = no socket, -2 = no host, -3 = no connect
 ***/
extern int NetConnectTo(char *,int);

/*****************************************************************************
 * Waits for a connection on port and then execs prog_filename with 
 * stdin/out/err redirected to the new socket 
 * returns value from exec()
 ***/

/* INCOMPLETE */
extern int NetSockServeProgram(char *, int, char **);

/*****************************************************************************
 * Returns the maximum connections allowed by the hardware
 ***/
extern int NetMaxConnections(void);

/*****************************************************************************
 * Returns UID pointer to static buffer
 ***/
extern int NetGetLogin(char *, int, int, char **);

#endif

