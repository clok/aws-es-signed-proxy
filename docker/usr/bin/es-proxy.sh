#!/bin/bash

REQUIRED=(
  AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY_ID
  AWS_ES_ENDPOINT
)
for unique in "${REQUIRED[@]}"; do
  eval unique_value=\$$unique
  if [ "$unique_value" ]; then
    echo "Required Value Set: $unique"
  else
    echo >&2 "Required Value '$unique' must be set"
    echo >&2 "Goodbye!"
    exit 1
  fi
done

cat > /root/.aws/credentials <<EOL
[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY_ID}
EOL

/usr/bin/supervisord -c /etc/supervisor/conf.d/es-proxy.conf
