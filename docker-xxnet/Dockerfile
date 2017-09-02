FROM python:3.5

RUN useradd -m -U xxnet && \
    pip install pyOpenSSL && \
    apt-get update && \
    apt-get install -y unzip

ADD resources/XX-Net-3.3.1.zip /home/xxnet/

RUN cd /home/xxnet && \
    unzip XX-Net-3.3.1.zip && \
    rm XX-Net-3.3.1.zip && \
    chown -R xxnet:xxnet /home/xxnet/XX-Net-3.3.1

WORKDIR /home/xxnet/XX-Net-3.3.1/

USER xxnet

ENTRYPOINT ./start