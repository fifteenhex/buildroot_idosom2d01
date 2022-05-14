#!/bin/sh

set -u
set -e

echo "tty1::respawn:/sbin/getty 0 tty1" >> ${TARGET_DIR}/etc/inittab
