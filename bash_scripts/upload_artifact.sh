#!/bin/bash

args=("$@")
SERVER=${args[0]}
API_TOKEN=${args[1]}
DIRECTORY=${args[2]}
FILE_PATH=${args[3]}
FILE=${args[4]}
MD5=${args[5]}

curl -sSf \
       -H "X-JFrog-Art-Api:${API_TOKEN}" \
       -X PUT \
       -T ${FILE_PATH} \
       --header "X-Checksum-MD5:${MD5}" \
       "${SERVER}/${DIRECTORY}/${FILE}"
