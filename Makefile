
all: hello
	cp /bin/sh .
	podman build -t sombriks/smallest-container-hello-world .
	podman create --name hello sombriks/smallest-container-hello-world

hello: hello.c
	gcc -Wall -o hello hello.c

clean:
	rm -rf hello
	rm -rf hello.o
	rm -rf sh
	podman rm hello
	podman rmi sombriks/smallest-container-hello-world

