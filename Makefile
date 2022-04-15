

all: client server
	
client: client.o
	gcc -o client client.o

server: server_multiThread.o
	gcc -pthread -o  server server_multiThread.o 

client.o: client.c
	gcc -c client.c

server_multiThread.o: server_multiThread.c
	gcc -pthread -c server_multiThread.c 	

.PHONY: clean all

clean:
	rm -f *.o server client
