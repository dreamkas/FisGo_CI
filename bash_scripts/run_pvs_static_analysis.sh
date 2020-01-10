#!/bin/bash

cd ./build/
mkdir report
pvs-studio-analyzer analyze -j4 --disableLicenseExpirationCheck
plog-converter -a GA:1,2 -t fullhtml -o ./report ./PVS-Studio.log