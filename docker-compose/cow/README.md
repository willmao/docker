# docker-cow

> You need to get a proxy server to forward your local http request for you

## Requirements

Two host are needed to make this work

- remote proxy server

  Forward your local http request to the destination and get the response back to your local client

- local host machine

  Forward your request from local browser/client to the proxy server

> Both docker and docker-compose are needed on both remote proxy server and local machine

## Get Started

1.  start the server
  
    docker-compose up -d cow-server
   
2.  start the client

    docker-compose up -d cow-client
   
3.  config the broswer proxy config

    pac proxy is: http://{your_client_ip}:7777/pac
