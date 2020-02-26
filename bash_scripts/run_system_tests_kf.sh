#!/bin/bash

cd tmp/FisGoTests/
git pull
mvn clean test -Dsurefire.suiteXmlFiles=src/test/resources/kf_test.xml -DdeviceType=KASSA_F -DdeviceIP=192.168.243.124 -DhubIP=192.168.242.43 -DhubPort=8284