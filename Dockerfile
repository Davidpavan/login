FROM    golang:1.11.13-alpine3.9
RUN     mkdir /app
COPY    . /app
WORKDIR /app
RUN     GOPATH=~/app
RUN     apt install go-dep
RUN     go get
RUN     go build
CMD     ["./login"]