#!/bin/bash
set -e

VALUE="$1"

echo "Using input value: $VALUE"

case $VALUE in
es-proxy)
  echo "Starting ES Proxy..."
  /usr/bin/es-proxy.sh
  ;;
*)
  echo "Executing: $@"
  exec "$@"
  ;;
esac

echo "Goodbye!"
