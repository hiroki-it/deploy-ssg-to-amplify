#!/bin/bash

set -xeuo pipefail
set -u

echo "APP_STG_ENV=$APP_STG_ENV" > .env
cat .env
npm install
