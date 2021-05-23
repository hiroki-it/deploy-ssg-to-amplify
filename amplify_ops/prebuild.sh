#!/bin/bash

yarn install

###########################################################
# envファイルを作成します．
###########################################################
echo "API_BASE_URL=$API_BASE_URL" > .env
echo "API_BROWSER_BASE_URL=$API_BROWSER_BASE_URL" >> .env
echo "CLIENT_SECRET=$CLIENT_SECRET" >> .env
echo "GOOGLE_MAPS_API_KEY=$GOOGLE_MAPS_API_KEY" >> .env
echo "GOOGLE_ANALYTICS_ID=$GOOGLE_ANALYTICS_ID" >> .env
echo "HTTPS_PORTAL_DOMAIN=$HTTPS_PORTAL_DOMAIN" >> .env
cat .env
