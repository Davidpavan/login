FROM    instrumentisto/dep
RUN     mkdir /app
COPY    . /app/
WORKDIR /app
RUN     go get
RUN     go build -o /login
CMD     ["./login"]
