FROM ubuntu:16.04

LABEL MAINTAINER="williamsofmao@gmail.com"

COPY .bashrc /root/

RUN apt-get update && \
    apt-get install -y curl netcat iperf dnsutils traceroute iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* && \
    apt-get autoremove -y

CMD [ "/bin/bash" ]