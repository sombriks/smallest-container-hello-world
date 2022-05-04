# out of thin air
FROM scratch
ADD ./sh /bin/sh
ADD ./hello /hello
ENTRYPOINT /hello
# maybe it can be smaller: https://docs.docker.com/engine/reference/builder/#shell
