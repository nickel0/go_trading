FROM golang:latest

WORKDIR /go/src/gotrading

COPY . .

RUN go get github.com/gorilla/websocket
RUN go get github.com/mattn/go-sqlite3
RUN go get gopkg.in/ini.v1

RUN go build

EXPOSE 8080

CMD ["./gotrading"]