/*****************************************************************************
 * Program: Web Crawler
 * Author:  Simon Amor <simon@foobar.net>
 *
 * Copyright: 1995 - Simon Amor
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
#define PORT       80

#define DEBUG   printf("%s : %d\n", __FILE__, __LINE__);

/* Define a simple macro for socket checking */
#define CheckActive(x,f)   FD_ISSET(x,f)

struct url_struct
{
  char  method[10];
  char *host;
  char *directory;
  int   port;
};

typedef struct url_struct Turl; 

/* Split host/port/file from URL */
Turl *splitUrl(char *url)
{
  Turl *newUrl=malloc(sizeof(Turl));
  int   pos;
  
  strncpy(newUrl->method, url, ((int )index(url,':')-(int )url));

  newUrl->host=NULL;
  newUrl->directory=NULL;
  
  newUrl->port=80;
  if (!strcasecmp(newUrl->method, "ftp"))
    newUrl->port=21;
  if (!strcasecmp(newUrl->method, "gopher"))
    newUrl->port=70;
  if (!strcasecmp(newUrl->method, "telnet"))
    newUrl->port=23;
  
  return (newUrl);
}

/*****************************************************************************
 * Main loop
 ***/
int main()
{
  Turl *newUrl;
  
  newUrl=splitUrl("gopher://localhost/");
  
  printf("method: %s\n", newUrl->method);
  printf("host  : %s\n", newUrl->host);
  printf("direct: %s\n", newUrl->directory);
  printf("port  : %d\n", newUrl->port);
}

