#!/usr/bin/env bash
set -e -o pipefail

echo "Starting cron." >&2

exec cron -f
