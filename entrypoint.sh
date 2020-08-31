#!/bin/bash

set -e

if [ -d /mnt/proc ]; then
  umount /proc
  mount -o bind /mnt/proc /proc
fi

if [ -z "$@" ]; then
  exec collectd -f
else
  exec $@
fi
