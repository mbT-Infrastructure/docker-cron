#!/usr/bin/env bash
set -e -o pipefail

[[ -s "/var/run/crond.pid" ]] \
    && kill -0 "$(cat /var/run/crond.pid)" \
    || exit 1
