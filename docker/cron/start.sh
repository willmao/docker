#!/bin/bash

set -e

shutdown() {
  service cron stop
  service rsyslog stop

  kill ${pid}
  exit $?
}


service rsyslog start
service cron start

trap shutdown SIGTERM
trap shutdown SIGINT

tail -f /var/log/syslog &

pid=$!

wait $pid