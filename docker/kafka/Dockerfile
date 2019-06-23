FROM openjdk:8

RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.2.0/kafka_2.12-2.2.0.tgz && \
    tar -xzf kafka_2.12-2.2.0.tgz && \
    mv kafka_2.12-2.2.0 kafka && \
    rm kafka_2.12-2.2.0.tgz

WORKDIR /kafka

CMD ["bin/kafka-server-start.sh", "config/server.properties"]