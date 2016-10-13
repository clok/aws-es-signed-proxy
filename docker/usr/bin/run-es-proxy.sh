#!/bin/bash
set -e
cd /usr/src/es-proxy && node proxy.js $AWS_ES_ENDPOINT
