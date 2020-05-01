FROM golang:1.14.2-stretch AS builder

WORKDIR /app
COPY hw.go .
ARG CGO_ENABLED=0
RUN go build -o server .


FROM scratch

WORKDIR /app
COPY --from=builder /app .


ENTRYPOINT ["./server"]