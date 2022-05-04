# Smallest container hello world

Simple playground to figure out how small can be an image

## usage

```bash
gcc -c hello.c -o hello.o
gcc hello.o -o hello
podman build -t sombriks/smallest-container-hello-world .
podman run -it --name hello sombriks/smallest-container-hello-world
```

Now you have a really small image, congratulations. To run it:

```bash
podman podman start hello
```
