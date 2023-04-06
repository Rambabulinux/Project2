FROM gcc
MAINTAINER "rambabu"
WORKDIR /app
COPY hello.c .
RUN gcc -o demo hello.c
CMD ["./demo"]
