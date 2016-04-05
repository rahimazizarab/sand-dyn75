#include "def"
main(..)
{

        int	sd;
	struct	sockaddr_in server;
	struct  hostent *hp, *gethostbyname();

	sd = socket (AF_INET,SOCK_DGRAM,0);

	server.sin_family = AF_INET;
	hp = gethostbyname(argv[1]);
	bcopy ( hp->h_addr, &(server.sin_addr.s_addr), hp->h_length);
	server.sin_port = htons(12345);

        for (;;) {
	   sendto(sd, "HI",2, 0, (SA *) &server, sizeof(server));
           sleep(2);
        }

}

