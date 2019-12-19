#!/bin/bash

args=("$@")
TOKEN=${args[0]}
VERSION=${args[1]}
FILE=${args[2]}

curl --request POST \
	--url "https://update-beta.dreamkas.ru/v2/projects/fisgo/products/dreamkasf/patches/${VERSION}?barrier=false&enabled=false" \
	--header "BACKEND-TOKEN: ${TOKEN}" \
  	--header "content-type: multipart/form-data;" \
 	--form "file=@${FILE}"