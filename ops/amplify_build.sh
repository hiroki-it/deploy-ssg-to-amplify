#!/bin/bash

set -xeuo pipefail
set -u

case $DEVICE_TYPE in
    "pc")
        npm run generate-pc
    ;;
    "sp")
        npm run generate-sp
    ;;
    *)
        echo "The parameter ${DEVICE_TYPE} is invalid."
        exit 1
    ;;
esac
