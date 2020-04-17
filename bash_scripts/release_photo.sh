#!/bin/bash

args=("$@")
RELAY_SERVER=${args[0]}
CHAT=${args[1]}
PHOTO=${args[2]}
RELEASE_NOTES=${args[3]}

#curl -s -X POST "${RELAY_SERVER}" -F chat_id="${CHAT}" -F photo=@"${PHOTO}"

curl -s -X POST "${RELAY_SERVER}?chat_id=${CHAT}&photo=@${PHOTO}&parse_mode=markdown&caption=${RELEASE_NOTES}"
