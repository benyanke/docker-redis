#!/bin/bash
set -e

REDIS_PASSWORD=${REDIS_PASSWORD:-}
REDIS_PORT=${REDIS_PORT:-6379}
REDIS_HOST=${REDIS_HOST:-}

EXTRA_ARGS=" --port $REDIS_PORT --tcp-backlog 128"
if [ "$REDIS_HOST" != "" ]; then
    EXTRA_ARGS="$EXTRA_ARGS bind $REDIS_HOST "
fi
if [ "$REDIS_PASSWORD" != "" ]; then
    EXTRA_ARGS="$EXTRA_ARGS --requirepass $REDIS_PASSWORD "
fi

# allow the container to be started with `--user`
if [ "$1" = 'redis-server' -a "$(id -u)" = '0' ]; then
    chown -R redis .
    shift 1
    exec gosu redis redis-server $@ $EXTRA_ARGS
fi

if [ "$1" = 'redis-server' ]; then
    shift 1
    exec redis-server $@ $EXTRA_ARGS
fi

exec "$@"
