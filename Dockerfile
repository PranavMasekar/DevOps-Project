# Stage 1: Build the Go binary
FROM golang:1.16-alpine AS builder

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN go mod download
RUN go build -o go-restaurant .

# Stage 2: Create the final image
FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /app/go-restaurant .

EXPOSE 8000
CMD ["./go-restaurant"]
