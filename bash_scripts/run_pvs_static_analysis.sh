#!/bin/bash

cd ./build/
pvs-studio-analyzer analyze -j4 --disableLicenseExpirationCheck
plog-converter -a GA:1,2 -t tasklist -o report.tasks ./PVS-Studio.log