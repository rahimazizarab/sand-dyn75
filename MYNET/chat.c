/*****************************************************************************
 * Example: Chat server using NetLib
 * Author:  Simon Amor <simon@foobar.net>
 * Sets up a VERY simple chat server on your machine
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
#include <sys/time.h>
/* Netlib include */
#include <netlib.h>

#define BUFLEN   1024
#define CONNS      10
#define PORT     7777

/* Define a simple macro for socket checking */
#define CheckActive(x,f)   FD_ISSET(x,f)

/* array of file descriptors - 0=not used */
int fd_array[CONNS];
/* flag for whether the server is shutting down or not, YES=1 */
int server_down;

/*****************************************************************************
 * Transmit a string to a list of connections
 ***/
int broadcast(int max_connects,int *fd_list,char *send_buffer)
{
  int broadloop;

/* Print send buffer to stdout & flush (for redirecting to a file) */
  printf("%s",send_buffer);
  fflush(stdout);

  for (broadloop=0;broadloop<max_connects;broadloop++)
  {
    if (fd_list[broadloop]>0)
      NetPutString(fd_list[broadloop],send_buffer);
  }
  return 0;
}

/*****************************************************************************
 * Handle SIGINT & SIGTERM
 ***/
void signal_handler()
{
  broadcast(CONNS,(int *)&fd_array,">>> Shutting down <<<\n");
  server_down=1;
}

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
  int max_conns=NetMaxConnections();
  int counter;

/* check buffers were allocated ok */
  if ((buffer==NULL) || (send_buffer==NULL))
  {
    perror("Buffer allocation error");
    exit(EXIT_FAILURE);
  }

  server_down=0;

  printf("To stop this server, type CTRL-C\n");

/* initialise the fd_array to zeros */
  for (counter=0;counter<CONNS;counter++)
    fd_array[counter]=0;

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
/* specify mastersocket - ie listen for new connections */
    FD_SET(mastersocket,&readfds);
/* if fd>0 then add it to the list to be checked */
    for (counter=0;counter<CONNS;counter++)
    {
      if (fd_array[counter]!=0)
        FD_SET(fd_array[counter],&readfds);
    }

/* wait for connection, forever if have to */
    new_conns=select(max_conns,&readfds,NULL,NULL,NULL);

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
        printf("New socket open as file descriptor %d\n",newsocket);
        NetPutString(newsocket,"Welcome to the NetLib example server\n");
/* check if server reached maximum connections */
        counter=0;
        while ((counter<CONNS) && (fd_array[counter]!=0))
        {
          counter++;
        }
/* yep, no more connections can be accepted so close newest */
        if (counter==CONNS)
        {
          NetPutString(newsocket,"Sorry, maximum connections reached\n");
          NetClose(newsocket);
        }
        else
/* nope, not full yet so place the new fd in the array */
        {
          fd_array[counter]=newsocket;
          sprintf(send_buffer,"Connection to line %d from %s\n",
                  counter+1,NetAddrOut(server.sin_addr));
          broadcast(CONNS,(int *)&fd_array,send_buffer);
        }
      }
    }
    else
/* activity must be on user connection */
    {
/* check for any input from each user connection */
      for (counter=0;counter<CONNS;counter++)
      {
        if (CheckActive(fd_array[counter],&readfds))
        {
          if (NetGetString(fd_array[counter],buffer,BUFLEN)<1)
/* error with NetGetString, probably someone disconnected */
          {
            NetClose(fd_array[counter]);
            sprintf(send_buffer,"Connection closed to line %d\n",counter+1);
            fd_array[counter]=0;
            broadcast(CONNS,(int *)&fd_array,send_buffer);
          }
          else
/* NetGetString was ok, so buffer contains input - send to all connections */
          {
            sprintf(send_buffer,"[%d] %s",counter+1,buffer);
            broadcast(CONNS,(int *)&fd_array,send_buffer);
          } /* NetGetString ok */
        }   /* CheckActive */
      }     /* counter */
    }       /* connection activity */
  }         /* while loop */
  return (0);
}         /* main */

