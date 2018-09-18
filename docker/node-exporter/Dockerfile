FROM registry.cn-hangzhou.aliyuncs.com/yitdevops/cron

LABEL maintainer="williamsofmao@gmail.com"

WORKDIR /root

COPY crontab /var/spool/cron/crontabs/root
COPY scripts scripts

RUN chmod 600 /var/spool/cron/crontabs/root