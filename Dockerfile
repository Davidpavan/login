FROM    golang:1.13.15-alpine3.11
RUN     mkdir -p /go/src/login
COPY    . /go/src/login
WORKDIR /go/src/login
ENV     GO111MODULE=auto
RUN     GOPATH=~/go
RUN     ["/bin/bash", "-c", "go get"]
RUN     go build -o /login
CMD     ["./login"]