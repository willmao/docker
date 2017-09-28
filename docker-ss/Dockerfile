FROM ubuntu:17.04

RUN apt update && apt install -y shadowsocks-libev

# open tcp fast open

RUN echo 'net.ipv4.tcp_fastopen = 3' >> /etc/sysctl.conf