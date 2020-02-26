#!/bin/bash

cd tmp/FisGoTests/
git pull
mvn clean test -Dsurefire.suiteXmlFiles=src/test/resources/dkf_test.xml -DdeviceType=DREAMKAS_F -DdeviceIP=192.168.243.217 -DhubIP=192.168.242.43 -DhubPort=8283