#!/bin/bash

###########################################################
# Amplifyのアプリに応じて，ビルドし分けます．
###########################################################
case $AMPLIFY_APP_DEVICE_TYPE in
    "pc")
        npm run generate-pc
    ;;
    "sp")
        npm run generate-sp
    ;;
    *)
        echo "The parameter ${AMPLIFY_APP_DEVICE_TYPE} is invalid."
        exit 1
    ;;
esac
