FROM ubuntu:16.04

LABEL maintainer="williamsofmao@gmail.com"

COPY sources.list /etc/apt/sources.list

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y --no-install-recommends rsyslog cron moreutils vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

WORKDIR /root/

COPY start.sh ./

CMD [ "/root/start.sh" ]