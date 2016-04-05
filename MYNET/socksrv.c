/*****************************************************************************
 * Program: Simple socket server to test NetSockServeProgram
 * Author:  Simon Amor <simon@foobar.net>
 *
 * Copyright: 1994 - Simon Amor
 ***/

#include <stdio.h>
#include <stdlib.h>
/* #includes Netlib requires */ 
#include <sys/types.h>
#include <sys/socket.h>
#include <errno.h>
#include <fcntl.h>
#include <netdb.h>
#include <unistd.h>
#include <sys/file.h>
#include <arpa/inet.h>
#include <netinet/in.h>
/* Netlib include */
#include <netlib.h>

#define BUFLEN   1024
#define CONNS      10
#define PORT     7776

/* Define a simple macro for socket checking */
#define CheckActive(x,f)   FD_ISSET(x,f)

/* flag for whether the server is shutting down or not, YES=1 */
int server_down;

/*****************************************************************************
 * Main loop
 ***/
int main()
{
  struct sockaddr_in server;
  fd_set readfds;
  char *buffer=malloc(BUFLEN);
  char *send_buffer=malloc(BUFLEN+10);
  int mastersocket;
  int newsocket;
  int new_conns;
  int addrlen=sizeof(struct sockaddr);
  int max_conns=NetMaxConnections();
  int counter;
  int clientfd=0;

  char *arglist[256];

/* check buffers were allocated ok */
  if ((buffer==NULL) || (send_buffer==NULL))
  {
    perror("Buffer allocation error");
    exit(EXIT_FAILURE);
  }

  server_down=0;

/* setup master socket */
  if ((mastersocket=NetCreateMasterSocket(PORT))<0)
  {
    perror("Master socket creation error");
    exit(1);
  }

/* display info */
  printf("This program uses\n%s\n",NetVersion);
  printf("Master socket is file descriptor %d\n",mastersocket);
  printf("Maximum simultaneous connections allowed (by hardware) is %d\n",
          max_conns);

/* Continuous loop - runs until CTRL-C'd */
  while (!server_down)
  {
/* create a list of sockets to check for activity */
    FD_ZERO(&readfds);
    FD_SET(mastersocket,&readfds);

   if (clientfd!=0)
      FD_SET(clientfd,&readfds);

/* wait for connection, forever if have to */
    new_conns=select(max_conns,readfds,NULL,NULL,NULL);

    if ((new_conns<0) && (errno!=EINTR))
    {
      perror("Error with select");
      exit(EXIT_FAILURE);
    }

/* check for activity on master socket */
    if (CheckActive(mastersocket,&readfds))
    {
      if ((newsocket=NetOpenConnection(mastersocket,&server))>0)
      {
        printf("Connection: sfd=%d  host=%s\n",newsocket,
               NetAddrOut(server.sin_addr));
/* no more connections can be accepted so close newest */
        clientfd=newsocket;

        arglist[0]=malloc(30);
        arglist[1]=malloc(30);
        arglist[2]=malloc(30);
        arglist[3]=NULL;

        strcpy(arglist[0],"telnet");
        strcpy(arglist[1],"tlaloc");
        strcpy(arglist[2],"6250");  

        printf("exit status: %d\n",
               NetSockServeProgram("/usr/bin/telnet", clientfd, (char **)&arglist));

        NetClose(clientfd);
        printf("Connection closed to sfd %d\n",clientfd);
        clientfd=0;

        free(arglist[0]);
        free(arglist[1]);
        free(arglist[2]);
        free(arglist[3]);
      }
    }
  }         /* while loop */
}

