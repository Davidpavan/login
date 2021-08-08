FROM    golang:1.13-rc-alpine
RUN     mkdir /app
COPY    . /app
WORKDIR /app
RUN     GOPATH=~/app
RUN     go get
RUN     go build
CMD     ["./login"]