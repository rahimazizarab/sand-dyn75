//create   socket
#include <sys/types.h>
#include <sys/socket.h> 
int socket_desc;

  socket_desc=socket(AF_INET,SOCK_STREAM,0);
  if (socket_desc==-1)
    perror("Create socket");
//  BIND SOCKET
#include <sys/socket.h>
#include <netinet/in.h>
struct sockaddr_in address;

/* type of socket created in socket() */
  address.sin_family = AF_INET;
  address.sin_addr.s_addr = INADDR_ANY;
/* 7000 is the port to use for connections */
  address.sin_port = htons(7000);
/* bind the socket to the port specified above */
  bind(socket_desc,(struct sockaddr *)&address,sizeof(address));
// LISTEN FOR CONNECTION
#include <sys/socket.h>
listen(socket_desc,3);
// Accept connection
#include <sys/socket.h>
int addrlen;
struct sockaddr_in address;

  addrlen = sizeof(struct sockaddr_in);
  new_socket = accept(socket_desc, (struct sockaddr *)&address, &addrlen);
  if (new_socket<0)
    perror("Accept connection");
// CLOSE CONNECTION
#include <unistd.h>
close(new_socket);
//  SEND DATA TO A CONNECTION
#include <sys/socket.h>
#include <string.h>

char *message="This is a message to send\n\r";

  send(new_socket,message,strlen(message),0);
// RECEIVE DATA FROM CONNECTION
#include <sys/socket.h>
int bufsize=1024;        /* a 1K buffer */
char *buffer=malloc(bufsize);

  recv(new_socket,buffer,bufsize,0);
//  SET SOCKET OPTIONS
nclude <sys/socket.h>
#define TRUE   1
#define FALSE  0

int socket_desc;     /* master socket returned by socket() */
int opt=TRUE;        /* option is to be on/TRUE or off/FALSE */

  setsockopt(socket_desc,SOL_SOCKET,SO_REUSEADDR,
              (char *)&opt,sizeof(opt));
//  Handling more than one connection  NONblocking
fcntl(mastersocket, F_SETFL, O_NONBLOCK);
fd_set readfds;

/* create a list of sockets to check for activity */
FD_ZERO(&readfds);

/* specify mastersocket - ie listen for new connections */
FD_SET(mastersocket, &readfds);

/* wait for connection, forever if have to */
new_conns=select(max_conns, readfds, NULL, NULL, NULL);

if ((new_conns<0) && (errno!=EINTR)) {
  /* there was an error with select() */
}
if (FD_ISSET(mastersocket,&readfds)) {
  /* Open the new socket */
}
//  Outgoing Connection
#include <sys/types.h>
#include <sys/socket.h>
 struct hostent     *he;
  struct sockaddr_in  server;
  int                 sockfd;

/* resolve localhost to an IP (should be 127.0.0.1) */
  if ((he = gethostbyname("localhost")) == NULL) {
    puts("error resolving hostname..");
    exit(1);
  }

/*
 * copy the network address part of the structure to the 
 * sockaddr_in structure which is passed to connect() 
 */
  memcpy(&server.sin_addr, he->h_addr_list[0], he->h_length);
  server.sin_family = AF_INET;
  server.sin_port = htons(7000);

/* connect */
  if (connect(sockfd, (struct sockaddr *)&server, sizeof(server))) {
    puts("error connecting..");
    exit(1);
  }
