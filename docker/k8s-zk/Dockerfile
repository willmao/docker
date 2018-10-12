FROM zookeeper:3.4.13

LABEL Maintainer="williamsofmao@gmail.com"

ENV ZK_VERSION=3.4.13

COPY zkOk.sh zkMetrics.sh /zookeeper-${ZK_VERSION}/bin/
COPY docker-entrypoint.sh /docker-entrypoint.sh