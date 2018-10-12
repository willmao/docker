#!/bin/bash

# set -e

ZK_CLIENT_PORT=${ZK_CLIENT_PORT:-2181}
ZK_SERVER_PORT=${ZK_SERVER_PORT:-2888}
ZK_ELECTION_PORT=${ZK_ELECTION_PORT:-3888}

HOST=`hostname -s`
DOMAIN=`hostname -d`

function print_servers() {
    for (( i=1; i<=$ZK_REPLICAS; i++ ))
    do
        echo "server.$i=$NAME-$((i-1)).$DOMAIN:$ZK_SERVER_PORT:$ZK_ELECTION_PORT"
    done
}

echo "Validating environment"

if [ -z $ZK_REPLICAS ]; then
    echo "ZK_REPLICAS is a mandatory environment variable"
    exit 1
fi

if [[ $HOST =~ (.*)-([0-9]+)$ ]]; then
    NAME=${BASH_REMATCH[1]}
    ORD=${BASH_REMATCH[2]}
else
    echo "Failed to extract ordinal from hostname $HOST"
    exit 1
fi

MY_ID=$((ORD+1))

# Allow the container to be started with `--user`
if [[ "$1" = 'zkServer.sh' && "$(id -u)" = '0' ]]; then
    chown -R "$ZOO_USER" "$ZOO_DATA_DIR" "$ZOO_DATA_LOG_DIR" "$ZOO_LOG_DIR" "$ZOO_CONF_DIR"
    exec su-exec "$ZOO_USER" "$0" "$@"
fi

# Generate the config only if it doesn't exist
if [[ ! -f "$ZOO_CONF_DIR/zoo.cfg" ]]; then
    CONFIG="$ZOO_CONF_DIR/zoo.cfg"

    echo "clientPort=$ZOO_PORT" >> "$CONFIG"
    echo "dataDir=$ZOO_DATA_DIR" >> "$CONFIG"
    echo "dataLogDir=$ZOO_DATA_LOG_DIR" >> "$CONFIG"

    echo "tickTime=$ZOO_TICK_TIME" >> "$CONFIG"
    echo "initLimit=$ZOO_INIT_LIMIT" >> "$CONFIG"
    echo "syncLimit=$ZOO_SYNC_LIMIT" >> "$CONFIG"

    echo "autopurge.snapRetainCount=$ZOO_AUTOPURGE_SNAPRETAINCOUNT" >> "$CONFIG"
    echo "autopurge.purgeInterval=$ZOO_AUTOPURGE_PURGEINTERVAL" >> "$CONFIG"
    echo "maxClientCnxns=$ZOO_MAX_CLIENT_CNXNS" >> "$CONFIG"

    if [ $ZK_REPLICAS -gt 1 ]; then
        print_servers >> "$CONFIG"
    fi
fi

# Write myid only if it doesn't exist
if [[ ! -f "$ZOO_DATA_DIR/myid" ]]; then
    echo "${MY_ID:1}" > "$ZOO_DATA_DIR/myid"
fi

# change own hostname to 0.0.0.0
# otherwise, the own hostname will resolve to 127.0.0.1
# https://stackoverflow.com/a/40750900/5764665
# fullHostname="${HOST}.${DOMAIN}"
# sed -i -e "s/${fullHostname}/0.0.0.0/g" "$CONFIG"

# exec "$@"