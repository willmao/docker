# docker-images

My docker images repo with docker-compose files to setup common softwares!

Project structure:

- /docker

  Contains Dockerfile to build docker images

- /docker-compose

  Contains docker compose and config files to setup softwares 

# Docker Image Manifest:

- cow

  Simple but powerful http proxy server written by Go

- ctop

  Top-like interface for container metrics, mirror from quay

- toolbox

  Toolbox build for devops to debug and test linux hosts with a handful of tools like iperf & netcat

# Docker-compose Manifest

- ipsec

  Files to setup ipsec vpn base on [hwdsl2/ipsec-vpn-server](https://github.com/hwdsl2/docker-ipsec-vpn-server)