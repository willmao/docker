#!/bin/bash

set -e

echo $METRICS_ROOT
cd /root/scripts
./file.sh | sponge $METRICS_ROOT/file.prom