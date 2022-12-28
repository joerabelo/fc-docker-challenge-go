FROM golang:alpine AS builder
WORKDIR /src
COPY . .
RUN go build -v -ldflags '-s -w' main.go

FROM scratch
COPY --from=builder /src /
CMD ["/main"]