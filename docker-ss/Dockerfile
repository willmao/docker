FROM ubuntu:latest

RUN apt-get update && apt-get install -y shadowsocks

ADD config/config.json /root/config.json

WORKDIR /root

ENTRYPOINT ssserver -c config.json

HEALTHCHECK --timeout=3s \
    CMD num=$(ps aux | grep -v grep | grep -E ss(server|local) | wc -l) > 0]] && [[ "$num" > 0 ]];exit 0 || exit 1
