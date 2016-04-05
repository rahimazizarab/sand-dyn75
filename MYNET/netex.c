#include <stdio.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/socket.h>
#include <errno.h>
#include <fcntl.h>
#include <netdb.h>
#include <unistd.h>
#include <sys/file.h>
#include <arpa/inet.h>
#include <netinet/in.h>

#include <netlib.h>

/* Define simple macros for socket checking */
#define CheckActive(x,f)   FD_ISSET(x,f)

int main(int argc,char *argv[])
{
  struct sockaddr_in server;

  fd_set readfds;

  int mastersocket;
  int newsocket;
  int new_conns;

  int port=7777;
  int addrlen=sizeof(struct sockaddr);
  int max_conns=NetMaxConnections();

  if ((mastersocket=NetCreateMasterSocket(port))<0)
  {
    perror("Master socket creation error");
    exit(1);
  }

  printf("master socket is file descriptor %d\n",mastersocket);
  printf("Maximum connections allowed is %d\n",max_conns);

/* Continuous loop - runs until CTRL-C'd */
  while (1)
  {
/* create a list of sockets to check for activity */
    FD_ZERO(&readfds);
/* specify mastersocket - ie listen for new connections */
    FD_SET(mastersocket,&readfds);

/* wait for connection, forever if have to */
    new_conns=select(max_conns,readfds,NULL,NULL,NULL);

    if ((new_conns<0) && (errno!=EINTR))
    {
      perror("Error with select");
      exit(EXIT_FAILURE);
    }
    if (CheckActive(mastersocket,&readfds))
    {
      newsocket=NetOpenConnection(mastersocket,&server);
      printf("New socket open as %d\n",newsocket);
      printf("Connection from %s\n",NetAddrOut(server.sin_addr));
      NetPutString(newsocket,"HELLO\n");
      sleep(5);
      NetPutString(newsocket,"GOODBYE\n");
      NetClose(newsocket);
      puts("Connection closed");
    }
  }
}

