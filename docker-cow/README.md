# docker-cow
proxy program cow integrated with docker-compose

First you need to install docker & docker-compose on both your VPS server and local machine.

Steps to use the program:

- start the server via
  
   docker-compose up -d cow-server
   
- start the client via

   docker-compose up -d cow-client
   
- config the broswer proxy config

  pac proxy is: http://{your_client_ip}:7777/pac
