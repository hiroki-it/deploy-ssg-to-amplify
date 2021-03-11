#!/bin/bash

set -xeuo pipefail

echo "APP_STG_ENV=$APP_STG_ENV" > .env
cat .env
npm install
