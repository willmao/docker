FROM daocloud.io/ubuntu:16.04

ADD bin/frps /usr/bin/frps

RUN chmod +x /usr/bin/frps && \
    useradd -m -U frp

ADD config/frps.ini /home/frp/frps.ini

WORKDIR /home/frp

USER frp

ENTRYPOINT /usr/bin/frps -c ./frps.ini

HEALTHCHECK --timeout=3s \
    CMD num=$(ps aux | grep -v grep | grep frps | wc -l) > 0]] && [[ "$num" > 0 ]];exit 0 || exit 1
