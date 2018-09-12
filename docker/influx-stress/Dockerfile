FROM golang as builder

LABEL maintainer="williamsofmao@gmail.com"

RUN go get -v github.com/influxdata/influx-stress/cmd/...


FROM alpine

LABEL maintainer="williamsofmao@gmail.com"

COPY --from=builder /go/bin/influx-stress /usr/local/bin/influx-stress