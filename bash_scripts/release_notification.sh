#!/bin/bash

args=("$@")
RELAY_SERVER=${args[0]}
CHAT=${args[1]}
PRODUCT_TYPE=${args[2]}
VERSION=${args[3]}
DOWNLOAD_LINK=${args[4]}
RELEASE_NOTES=${args[5]}

#curl --request POST \
#"${RELAY_SERVER}?chat_id=${CHAT}&parse_mode=markdown&text=Для *${PRODUCT_TYPE}* выпущена новая версия - *${VERSION}*.%0AАрхив DirPatch доступен по ссылке:%0A${DOWNLOAD_LINK}"

curl --request POST \
'${RELAY_SERVER}?chat_id=${CHAT}&parse_mode=markdown&text=${RELEASE_NOTES}"'
