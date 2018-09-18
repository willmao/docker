#!/bin/bash

set -e

FILE_LIST=(
  /etc/passwd
  /etc/hostname
)

echo "# HELP node_file_modify_time_seconds Time of last data modification, seconds since Epoch"
echo "# TYPE node_file_modify_time_seconds counter"
for file in "${FILE_LIST[@]}"; do
  lastModifyTime=$(stat -c %Y $file)
  echo "node_file_modify_time_seconds{file=\"$file\"} $lastModifyTime"
done