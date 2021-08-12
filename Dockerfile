FROM    golang:1.13.15
RUN     mkdir -p /go/src/app
COPY    . /go/src/app
ENV     AUTH_API_PORT 8080
WORKDIR /go/src/app
ENV     GO111MODULE=auto
RUN     GOPATH=~/go
RUN     go get
RUN     go build
CMD     ["./app"]

#docker pull
#golang:1.13.15
