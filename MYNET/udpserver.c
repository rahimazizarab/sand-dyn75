#include "def"
main()
{
   int   sd;
   struct   sockaddr_in server;
   char buf[512];
   int rc;

   server.sin_family = AF_INET;
   server.sin_addr.s_addr = htonl(INADDR_ANY);
   server.sin_port = htons(12345);

   sd = socket (AF_INET,SOCK_DGRAM,0);

   bind ( sd, (SA *) &server, sizeof(server));
   
   for(;;){
      rc = recv (sd, buf, sizeof(buf), 0);
      buf[rc]= (char) NULL;
      printf("Received: %s\n", buf);
   }
}
