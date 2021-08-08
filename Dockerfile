FROM    golang:1.13.15 as BUILD
RUN     mkdir -p /go/src/login
COPY    . /go/src/login
WORKDIR /go/src/login
ENV     GO111MODULE=auto
RUN     GOPATH=~/go
RUN     go get
#RUN     ["/bin/bash", "-c", "go get"]
RUN     go build -o /login

FROM    scratch
COPY --from=BUILD /go/src/login /go/src/login
CMD     ["./login"]

#docker pull    #golang:1.13.15