FROM    golang:1.11.13-alpine3.9
RUN     mkdir -p /go/src/login
COPY    . /go/src/login
WORKDIR /root/go/src/login
RUN     GOPATH=~/go
#RUN     apt install go-dep
RUN     go get
RUN     go build
CMD     ["./login"]