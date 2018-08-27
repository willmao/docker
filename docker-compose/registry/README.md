# Docker Registry V2

Docker registry v2 for storing and distributing Docker images

## Tls Requirements

Tls files are needed for deploying a secure registry

- certs/domain.key

  x509 private key file

- certs/domain.crt

  x509 certificate file

## Deploy Steps

1. generate user & passwd

    ```
    ./htpasswd.sh [username] [passwd]
    ```

    > If unset, the default username is `admin` and the default passwd is `admin123`

2. update config

    Update configs located in `docker-compose.yml` and `config.yml` which have been marked with comments

3. deploy with docker-compose

    ```
    docker-compose up -d
    ```

## Verify

1. login to your private registry with the username and password you set

2. tag a local image to the private registry

3. push image to your private registry

4. delete the local image your just pushed

5. pull from your private registry