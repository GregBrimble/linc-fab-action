#!/bin/sh

export LINC_API_KEY="$INPUT_API_KEY"
export LINC_SITE_NAME="$INPUT_SITE_NAME"

cd $INPUT_WORKING_DIRECTORY
npm ci
npm install --no-save typescript # https://github.com/rollup/plugins/tree/master/packages/typescript
npx @bitgenics/fab-upload-cli