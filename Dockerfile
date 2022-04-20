FROM golang:1.18.1-alpine3.15 AS builder
WORKDIR /app
COPY main.go ./
RUN go build main.go
CMD ["./main"]

FROM scratch
WORKDIR /app
COPY --from=builder /app/main /
CMD ["/main"]