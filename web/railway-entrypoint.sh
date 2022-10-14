#!/bin/sh
set -euo pipefail

export SHLINK_SERVER_URL=${API_URL}
export SHLINK_SERVER_API_KEY=${ADMIN_API_KEY}

exec ./docker-entrypoint.sh "$@"
