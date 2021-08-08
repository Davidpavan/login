FROM    golang:latest
RUN     mkdir /app
COPY    . /app
WORKDIR /app
RUN     dep init
RUN     go get
RUN     go build
CMD     ["./login"]