//   The following is tcpip section.
#include <stdio.h>
#include <errno.h>
#include <netdb.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

static char * gethost(char * keywd)
{
    struct hostent *he;
    struct in_addr **addr_list;

    he = gethostbyname(keywd);
    // print information about this host:
    printf("Official name is: %s\n", he->h_name);
     strncpy(keywd, he->h_name, sizeof keywd);
    printf("    IP addresses: ");
    addr_list = (struct in_addr **)he->h_addr_list;
   //  We reuse the same string buffer to pass data back.
    for(i = 0; addr_list[i] != NULL; i++) {
        printf("%s ", inet_ntoa(*addr_list[i]));
        if (i==0)
        strncpy(keywd, inet_ntoa(*addr_list[i]),sizeof keywd);
        else
        {
        strcat(keywd, " , ");
        strncat(keywd, inet_ntoa(*addr_list[i]),sizeof keywd);
        }
    }
    printf("\n");
  return ipaddr;   
}
