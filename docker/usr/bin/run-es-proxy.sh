#!/bin/bash
set -e
cd /usr/src/es-proxy && node es-proxy.js $AWS_ES_ENDPOINT
