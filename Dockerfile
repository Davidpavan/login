FROM    golang:1.14.3-alpine
RUN     mkdir /app
COPY    . /app
WORKDIR /app
RUN     go mod download
RUN     go get
RUN     go build
CMD     ["./login"]