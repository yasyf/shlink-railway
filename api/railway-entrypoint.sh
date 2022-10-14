#!/bin/sh
set -euo pipefail

export DB_NAME=${MYSQLDATABASE}
export DB_USER=${MYSQLUSER}
export DB_PASSWORD=${MYSQLPASSWORD}
export DB_HOST=${MYSQLHOST}
export DB_PORT=${MYSQLPORT}

export REDIS_SERVERS=${REDIS_URL}

mysql \
  --plugin-dir=/usr/lib/mariadb/plugin \
  -h ${DB_HOST} \
  -u ${DB_USER} \
  --password=${DB_PASSWORD} \
  --port=${DB_PORT} \
  --protocol=TCP \
  ${DB_NAME} \
  -e "INSERT INTO api_keys (\`key\`, \`enabled\`) VALUES ('$ADMIN_API_KEY', 1);" ||
  true

chmod +x ./docker-entrypoint.sh
exec ./docker-entrypoint.sh "$@"
