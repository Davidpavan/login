FROM    golang:1.11.13-alpine
RUN     mkdir /app
COPY    . /app/
WORKDIR /app
RUN     ["/bin/bash", "-c", "apt install dep-ensure"]
RUN     go get
RUN     go build -o /login
CMD     ["./login"]
