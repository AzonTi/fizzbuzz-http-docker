FROM golang:alpine AS builder
WORKDIR /go/src/app
COPY fizzbuzz-http .
RUN GOOS=linux CGO_ENABLED=0 go build

FROM scratch
COPY --from=builder /go/src/app/app /
CMD ["/app"]
