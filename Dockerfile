FROM    golang:latest
RUN     mkdir /app
COPY    . /app
WORKDIR /app
RUN     dep ensure -v
RUN     go-dep
RUN     go get
RUN     go build
CMD     ["./login"]