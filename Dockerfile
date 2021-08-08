FROM    instrumentisto/dep
RUN     mkdir -p /go/src/login
COPY    . /go/src/login
WORKDIR /go/src/login
RUN     GOPATH=~/go
RUN     go get
RUN     go build -o /login
CMD     ["./login"]
