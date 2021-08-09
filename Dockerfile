FROM    golang:1.13.15
RUN     mkdir -p /go/src/app
COPY    . /go/src/app
WORKDIR /go/src/app
ENV     GO111MODULE=auto
RUN     GOPATH=~/go
RUN     go get
RUN     go build
EXPOSE  8080
CMD     ["./app"]

#docker pull
#golang:1.13.15
