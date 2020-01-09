#!/bin/sh
set -eu

if [[ -z "$SLACK_BOT_TOKEN" ]]; then
  echo "Set the SLACK_BOT_TOKEN secret."
  exit 1
fi

RESPONSE="$(curl -X POST \
     -H "Content-type: application/json; charset=utf8" \
     -H "Authorization: Bearer $SLACK_BOT_TOKEN" \
     -d "$1" \
     https://slack.com/api/chat.postMessage)"

echo ::set-output name=response::$RESPONSE
