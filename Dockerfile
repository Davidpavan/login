FROM    golang:1.16-alpine
RUN     mkdir /app
COPY    . /app/
WORKDIR /app
ENV     GO111MODULE=on
RUN     go get ./..
RUN     go build -o /login
CMD     ["./login"]