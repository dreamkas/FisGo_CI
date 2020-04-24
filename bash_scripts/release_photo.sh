#!/bin/bash

args=("$@")
RELAY_SERVER=${args[0]}
CHAT=${args[1]}
PHOTO=${args[2]}
PRODUCT_TYPE=${args[3]}
VERSION=${args[4]}
DOWNLOAD_LINK=${args[5]}
RELEASE_NOTES=${args[6]}

curl -s -X POST "${RELAY_SERVER}" -F chat_id="${CHAT}" -F photo=@"${PHOTO}" -F caption=Для *${PRODUCT_TYPE}* выпущена новая версия - *${VERSION}* "${RELEASE_NOTES}" [DirPatch](${DOWNLOAD_LINK}) -F parse_mode=markdown

#curl -s -X POST "${RELAY_SERVER}?chat_id=${CHAT}&photo=@${PHOTO}&parse_mode=markdown&caption=${RELEASE_NOTES}"
