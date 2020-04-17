#!/bin/bash

args=("$@")
RELAY_SERVER=${args[0]}
CHAT=${args[1]}
RELEASE_NOTES=${args[2]}

curl --request POST "${RELAY_SERVER}?chat_id=${CHAT}&parse_mode=markdown&text=${RELEASE_NOTES}"
