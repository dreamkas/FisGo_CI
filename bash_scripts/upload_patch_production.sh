#!/bin/bash

args=("$@")
TOKEN=${args[0]}
VERSION=${args[1]}
FILE=${args[2]}
MD5=${args[3]}

curl --request POST \
	--url "https://update.dreamkas.ru/v2/projects/fisgo/products/dreamkasFRedirect/patches/${VERSION}?md5=${MD5}&barrier=false&enabled=false" \
	--header "BACKEND-TOKEN: ${TOKEN}" \
  	--header "content-type: multipart/form-data;" \
 	--form "file=@${FILE}"