FROM    golang:1
RUN     mkdir /app
COPY    . /app
WORKDIR /app
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils 2>&1
RUN     go get
RUN     go build
CMD     ["./login"]