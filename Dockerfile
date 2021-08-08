FROM    golang:1.11.13-alpine3.9
RUN     mkdir /app
COPY    . /app/
WORKDIR /app
RUN     go mod init
RUN     go get -d -v
RUN     go build -o /login
CMD     ["./login"]
