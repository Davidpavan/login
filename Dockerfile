FROM    golang:1.13.15
RUN     mkdir /app
COPY    . /app
WORKDIR /app
ENV     GO111MODULE=auto
RUN     GOPATH=~/app
RUN     go get
RUN     go build

#docker pull
#golang:1.13.15