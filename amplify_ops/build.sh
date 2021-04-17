#!/bin/bash

###########################################################
# Amplifyのアプリに応じて，ビルドし分けます．
###########################################################
case $AMPLIFY_APP_DEVICE_TYPE in
    "pc")
        yarn generate-pc --fail-on-error
    ;;
    "sp")
        yarn generate-sp --fail-on-error
    ;;
    *)
        echo "The parameter ${AMPLIFY_APP_DEVICE_TYPE} is invalid."
        exit 1
    ;;
esac
