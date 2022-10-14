#!/bin/sh

export DB_NAME=${MYSQLDATABASE}
export DB_USER=${MYSQLUSER}
export DB_PASSWORD=${MYSQLPASSWORD}
export DB_HOST=${MYSQLHOST}
export DB_PORT=${MYSQLPORT}

export REDIS_SERVERS=${REDIS_URL}

/bin/sh ./docker-entrypoint.sh
