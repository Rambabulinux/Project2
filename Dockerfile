FROM gcc as BUILD
WORKDIR /app
COPY hello.c .
RUN gcc -o demo hello.c

FROM ubuntu
WORKDIR /app
COPY --from=BUILD /app/demo .
CMD ["./demo"]
