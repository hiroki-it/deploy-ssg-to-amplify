#!/bin/bash

set -xeuo pipeline
set -u

echo "DEVICE_TYPE=$DEVICE_TYPE" > .env
cat .env
npm install
