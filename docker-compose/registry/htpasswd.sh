#!/bin/bash

USERNAME=${1:-admin}
PASSWORD=${2:-admin123}
HTPASSWD_PATH=auth/htpasswd

cat << EOF
GENERATE HTPASSWD FILE
USERNAME:   ${USERNAME}
PASSWORD:   ${PASSWORD}
FILE PATH:  $HTPASSWD_PATH
EOF

docker run --entrypoint htpasswd registry:2 -Bbn "$USERNAME" "$PASSWORD" > $HTPASSWD_PATH