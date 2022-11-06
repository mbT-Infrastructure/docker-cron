#!/usr/bin/env bash
set -e

ln --symbolic --force --no-target-directory /media/cron/ /etc/cron.d

echo "starting cron"
cron

exec "$@"