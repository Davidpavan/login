FROM    golang:1.13.15
RUN     mkdir -p /go/src/login
COPY    . /go/src/login
WORKDIR /go/src/login
ENV     GO111MODULE=auto
RUN     GOPATH=~/go
RUN     go get
RUN     go build
