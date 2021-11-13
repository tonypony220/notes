#include <sys/socket.h>
#include <netinet/in.h>
sockfd = int socket(int family, 	 int type, 			int protocol);
/* 			   AF_INET   SOCK_STREAM    	    0  :: famyly and type difine this univocal	*/ 
/* 			   AF_UNIX   SOCK_DGRAM 		    IPPROTO_TCP 				*/
/* 			                        		    IPPROTO_UDP 				*/

int bind(int sockfd, struct sockaddr *addr, int addrlen);

int main() {
	struct sockaddr_in addr;
	addr.sa_family = AF_INET;
	addr.sa
	
}
