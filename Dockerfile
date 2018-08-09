FROM golang

WORKDIR /go/src/app
COPY fizzbuzz-http .

CMD ["/usr/local/go/bin/go", "run", "main.go"]
