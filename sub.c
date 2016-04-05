#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h> 

#define PORT    5000
#define LOCALHOST   "localhost"
#define UTILITY_NAME    "sub"

void error(const char *msg)
{
    perror(msg);
    exit(0);
}

int main(int argc, char **argv)
{
    char           *pgmname;             /* prog name in host format  */
    pgmname = strdup( UTILITY_NAME );
    char          *defaulthost;
    defaulthost = strdup(LOCALHOST);
    int sockfd, portno, n;
    struct sockaddr_in serv_addr;
    struct hostent *server;

    if (argc < 3) {
       fprintf(stderr,"usage %s filename hostname port\n", argv[0]);
    }
       char *buffer;
       unsigned long fileLen;
       FILE *p;
       if((p=fopen(argv[1],"r"))==NULL){
          printf("\nUnable t open file string.txt");
          exit(1);
         }

//Get file length
        fseek(p, 0, SEEK_END);
        fileLen=ftell(p);
        fseek(p, 0, SEEK_SET);

//Allocate memory
        buffer=(char *)malloc(fileLen+1);
        if (!buffer)
        {
                fprintf(stderr, "Memory error!");
                                fclose(p);
                return;
        }

//Read file contents into buffer
        fread(buffer, fileLen, 1, p);
        fclose(p);
//


    if (argv[3] == NULL){ 
        fprintf(stderr,"port %d assumed, ==>  no  port is specified. \n", PORT);
        portno = PORT;
        }
    else
         portno = atoi(argv[3]);
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) 
        error("ERROR opening socket");

    if (argv[2] == NULL){ 
        fprintf(stderr," %s assumed, ==>  no  host is specified. \n", defaulthost);
     server = gethostbyname(defaulthost);
        }
     else
     server = gethostbyname(argv[2]);
    if (server == NULL) {
        fprintf(stderr,"ERROR, no such %s host\n", argv[2]);
        exit(0);
    }
    bzero((char *) &serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr, 
         (char *)&serv_addr.sin_addr.s_addr,
         server->h_length);
    serv_addr.sin_port = htons(portno);
    if (connect(sockfd,(struct sockaddr *) &serv_addr,sizeof(serv_addr)) < 0) 
        error("ERROR connecting");
    n = write(sockfd,buffer,strlen(buffer));
    if (n < 0) 
         error("ERROR writing to socket");
    
    printf("%s\n",buffer);
    close(sockfd);
    return 0;
}
