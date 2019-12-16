#!/bin/bash

args=("$@")
TOKEN=${args[0]}
VERSION=${args[1]}
FROM=${args[2]}
FILE=${args[3]}

curl --request POST \
	--url "https://update-beta.dreamkas.ru/v2/projects/fisgo/products/ea_test_product/patches/${VERSION}?version_from=${FROM}&barrier=true&enabled=false" \
	--header "BACKEND-TOKEN: ${TOKEN}" \
  	--header "content-type: multipart/form-data;" \
 	--form "file=@${FILE}"