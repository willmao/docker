FROM ubuntu:16.04

LABEL MAINTAINER="williamsofmao@gmail.com"

COPY .bashrc /root/

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y --no-install-recommends curl netcat iperf dnsutils traceroute iputils-ping apache2-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* && \
    apt-get autoremove -y

CMD [ "/bin/bash" ]