#!/bin/bash

VERSION=${args[0]}
FROM=${args[1]}
FILE=${args[2]}

curl --request POST \
	--url "https://update-beta.dreamkas.ru/v2/projects/fisgo/products/ea_test_product/patches/${VERSION}?version_from=${FROM}&barrier=true&enabled=false" \
	--header "BACKEND-TOKEN: 6ebbbff4-6017-4f47-b41c-daf2aee0c06d" \
  	--header "content-type: multipart/form-data;" \
 	--form "file=@${FILE}"