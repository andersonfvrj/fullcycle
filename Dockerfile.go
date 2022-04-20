FROM golang:1.18.1-alpine3.15

WORKDIR /app

COPY main.go ./

RUN go build main.go

CMD ["./main"]