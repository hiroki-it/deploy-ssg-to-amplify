#!/bin/bash

set -xeuo pipefail
set -u

case $BUILD_DEVICE_TYPE in
    "pc")
        npm run generate-pc
    ;;
    "sp")
        npm run generate-sp
    ;;
    *)
        echo "The parameter ${BUILD_DEVICE_TYPE} is invalid."
        exit 1
    ;;
esac

ls -la
mv ./dist/$BUILD_DEVICE_TYPE ./dist/artifacts
