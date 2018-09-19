#!/bin/bash

set -e

HOST_DIR_MOUNT_ROOT=/host

FILE_LIST=(
  /etc/passwd
  /etc/hostname
)

echo "# HELP node_file_modify_time_seconds Time of last data modification, seconds since Epoch"
echo "# TYPE node_file_modify_time_seconds counter"
for file in "${FILE_LIST[@]}"; do
  filePath=${HOST_DIR_MOUNT_ROOT}${file}
  if [ -f "$filePath" ];then
    lastModifyTime=$(stat -c %Y "$filePath")
    echo "node_file_modify_time_seconds{file=\"$file\"} $lastModifyTime"
  fi
done