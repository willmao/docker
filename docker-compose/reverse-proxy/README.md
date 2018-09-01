# Reverse Http Proxy Based On Nginx

In order to proxy multiple softwares run on different ports with a single Aliyun SLB, we need provide a single entry port(80 preferred) for SLB.

## Usage

Add nginx http server config file in config folder, start docker container with docker-compose

> All config files in config folder will be loaded, so the reverse proxy supports proxying for multiple domains :)

## Supported Softwares

- Jenkins master runs on port 8080

  Proxy for Jenkins which listens port is 8080, force https redirect