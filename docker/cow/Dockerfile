FROM daocloud.io/ubuntu:16.04

ADD bin/cow /usr/bin/cow

RUN chmod +x /usr/bin/cow

HEALTHCHECK --timeout=3s \
    CMD num=$(ps aux | grep -v grep | grep cow | wc -l) > 0]] && [[ "$num" > 0 ]];exit 0 || exit 1

WORKDIR /root

ENTRYPOINT /usr/bin/cow
