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

int main(int argc,char *argv[])
{
  int connect_fd;
  struct in_addr inad;
  struct hostent *he;


  if ((he=gethostbyname(argv[1])) == NULL)
  {
    printf("%s: unknown host '%s'\n", argv[0], argv[1]);
    return(1);
  }
  memcpy(&inad, he->h_addr, sizeof(struct in_addr));

  printf("%s: Testing '%s %d'\n", argv[0], inet_ntoa(inad), atoi(argv[2]));

  if ((connect_fd=NetConnectTo(argv[1], atoi(argv[2])))>=0)
  {
    printf("%s: Connected to %s %d\n", argv[0], argv[1], atoi(argv[2]));
    close(connect_fd);
    return (0);
  }
  printf("%s: No connection ( error: %d )\n", argv[0], connect_fd);
  perror(argv[0]);
  return (1);
}

