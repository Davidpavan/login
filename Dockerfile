FROM    ubuntu
RUN     apt update -y
RUN     apt install golang-go -y
RUN     mkdir -p /go/src/login
COPY    . /go/src/login
WORKDIR /go/src/login
RUN     apt install go-dep
RUN     go get
RUN     go build -o /login
CMD     ["./login"]
