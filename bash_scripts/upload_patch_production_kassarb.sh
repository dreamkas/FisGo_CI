#!/bin/bash

args=("$@")
TOKEN=${args[0]}
VERSION=${args[1]}
FILE=${args[2]}
MD5=${args[3]}

curl -F "file=@${FILE}" \
-H "BACKEND-TOKEN: ${TOKEN}" \
-url "https://update.dreamkas.ru/v2/projects/fisgo/products/dreamkasRB/patches/${VERSION}?md5=${MD5}&barrier=false&enabled=false"