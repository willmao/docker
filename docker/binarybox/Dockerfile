FROM alpine

ARG KUBECTL_VERSION=1.12.3
ARG JENKINS_VERSION=2.138.4
ARG RKE_VERSION=0.1.15
ARG HELM_VERSION=2.11.0

WORKDIR /root

RUN wget "https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    wget -O jenkins.war "http://mirrors.jenkins.io/war-stable/${JENKINS_VERSION}/jenkins.war" && \
    wget -O rke "https://github.com/rancher/rke/releases/download/v${RKE_VERSION}/rke_linux-amd64" && \
    chmod +x rke && \
    wget "https://storage.googleapis.com/kubernetes-helm/helm-v${HELM_VERSION}-linux-amd64.tar.gz" && \
    mkdir -p /tmp/helm && \
    tar -xzvf "helm-v${HELM_VERSION}-linux-amd64.tar.gz" -C /tmp/helm && \
    cp /tmp/helm/linux-amd64/helm ./ && \
    rm -rf "helm-v${HELM_VERSION}-linux-amd64.tar.gz" && \
    rm -rf /tmp/*
