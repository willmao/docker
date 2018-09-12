FROM golang:alpine as builder

RUN apk add --no-cache git \
    && go get -v github.com/influxdata/influx-stress/cmd/... \
    && apk del git

FROM alpine

LABEL maintainer="williamsofmao@gmail.com"

COPY --from=builder /go/bin/influx-stress /usr/local/bin/influx-stress