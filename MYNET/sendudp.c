#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <netdb.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/uio.h>
const char* hostname=0; /* localhost */
const char* portname="daytime";
struct addrinfo hints;
memset(&hints,0,sizeof(hints));
hints.ai_family=AF_UNSPEC;
hints.ai_socktype=SOCK_DGRAM;
hints.ai_protocol=0;
hints.ai_flags=AI_ADDRCONFIG;
struct addrinfo* res=0;
int err=getaddrinfo(hostname,portname,&hints,&res);
if (err!=0) {
    die("failed to resolve remote socket address (err=%d)",err);
}
int fd=socket(res->ai_family,res->ai_socktype,res->ai_protocol);
if (fd==-1) {
    die("%s",strerror(errno));
}
if (sendto(fd,content,sizeof(content),0,
    res->ai_addr,res->ai_addrlen)==-1) {
    die("%s",strerror(errno));
}
truct iovec iov[1];
iov[0].iov_base=content;
iov[0].iov_len=sizeof(content);

struct msghdr message;
message.msg_name=res->ai_addr;
message.msg_namelen=res->ai_addrlen;
message.msg_iov=iov;
message.msg_iovlen=1;
message.msg_control=0;
message.msg_controllen=0;

if (sendmsg(fd,&message,0)==-1) {
    die("%s",strerror(errno));
}


