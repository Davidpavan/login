FROM    golang:latest
RUN     mkdir /app
COPY    . /app
WORKDIR /app
RUN     go mod init
RUN     go build
CMD     ["./login"]