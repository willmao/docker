FROM daocloud.io/ubuntu:16.04

ADD bin/frpc /usr/bin/frpc

RUN chmod +x /usr/bin/frpc && \
    useradd -m -U frp

ADD config/frpc.ini /home/frp/frpc.ini

WORKDIR /home/frp

USER frp

ENTRYPOINT /usr/bin/frpc -c ./frpc.ini

HEALTHCHECK --timeout=3s \
    CMD num=$(ps aux | grep -v grep | grep frpc | wc -l) > 0]] && [[ "$num" > 0 ]];exit 0 || exit 1