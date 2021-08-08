FROM    golang:1.11.13-alpine3.9
RUN     mkdir /app
COPY    . /app/
WORKDIR /app
RUN     go mod download
RUN     go get
RUN     go build -o /login
CMD     ["./login"]
