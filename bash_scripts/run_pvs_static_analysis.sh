#!/bin/bash

cd ./build/
mkdir pvs_report
pvs-studio-analyzer analyze -j4 --disableLicenseExpirationCheck
plog-converter -a GA:1,2 -t xml -o ./pvs_report/report.xml ./PVS-Studio.log