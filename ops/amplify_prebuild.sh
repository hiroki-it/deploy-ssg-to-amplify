#!/bin/bash

set -xeuo pipefail
set -u

echo "DEVICE_TYPE=$DEVICE_TYPE" > .env
cat .env
npm install
