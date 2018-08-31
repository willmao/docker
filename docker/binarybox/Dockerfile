FROM alpine

ARG KUBECTL_VERSION=1.11.2
ARG JENKINS_VERSION=2.121.3
ARG RKE_VERSION=0.1.9

WORKDIR /root

RUN apk add --no-cache curl && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    curl -LO http://mirrors.jenkins.io/war-stable/${JENKINS_VERSION}/jenkins.war && \
    curl -o rke -L0 https://github.com/rancher/rke/releases/download/v${RKE_VERSION}/rke_linux-amd64 && \
    chmod +x rke
