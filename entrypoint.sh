#!/bin/sh
set -eu

RESPONSE="$(curl -X POST \
     -H "Content-type: application/json; charset=utf8" \
     -H "Authorization: Bearer $SLACK_BOT_TOKEN" \
     -d "$1" \
     https://slack.com/api/chat.postMessage)"

echo ::set-output name=response::$RESPONSE

echo $RESPONSE
