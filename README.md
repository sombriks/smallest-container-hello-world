# Smallest container hello world

Simple playground to figure out how small can be an image

## Usage

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

## How small is it

```bash
$ podman images 
REPOSITORY                                         TAG            IMAGE ID      CREATED        SIZE
localhost/sombriks/smallest-container-hello-world  latest         5684c4ebeaac  5 minutes ago  1.42 MB # this small
docker.io/sombriks/simple-java-dev-image           latest         53ef1b0716a8  2 days ago     550 MB
docker.io/adoptopenjdk/openjdk11                   alpine         316fab77cda1  2 weeks ago    343 MB
docker.io/library/node                             14             7d03025aad90  4 weeks ago    975 MB
docker.io/library/postgres                         latest         1ee973e26c65  5 weeks ago    384 MB
docker.io/library/mariadb                          latest         e2278f24ac88  5 months ago   416 MB
docker.io/library/adoptopenjdk                     11-jdk-openj9  e7c3b9dd47ac  7 months ago   477 MB
```
