#!/bin/bash

set -e

echo $METRICS_ROOT
./file.sh | sponge $METRICS_ROOT/file.prom