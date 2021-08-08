FROM    golang:1.16-alpine
RUN     mkdir /app
COPY    *.go /app/
WORKDIR /app
RUN     go mod download
RUN     go build -o /login
CMD     ["./login"]