FROM    golang:latest
RUN     mkdir /app
COPY    . /app
WORKDIR /app
RUN     apt install go-dep
RUN     go get
RUN     go build
CMD     ["./login"]