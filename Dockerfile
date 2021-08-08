FROM    golang:1.16-alpine
RUN     mkdir /app
COPY    *.go /app/
WORKDIR /app
RUN     go get
RUN     go build -o /login
CMD     ["./login"]