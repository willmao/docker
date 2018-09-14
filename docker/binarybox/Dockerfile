FROM alpine

ARG KUBECTL_VERSION=1.11.2
ARG JENKINS_VERSION=2.138.1
ARG RKE_VERSION=0.1.9

WORKDIR /root

RUN wget "https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    wget -O jenkins.war "http://mirrors.jenkins.io/war-stable/${JENKINS_VERSION}/jenkins.war" && \
    wget -O rke "https://github.com/rancher/rke/releases/download/v${RKE_VERSION}/rke_linux-amd64" && \
    chmod +x rke
