#!/bin/bash

mkdir build
cd ./build/
cmake -BUILD_DREAMKAS_RB=On -BUILD_UNITS=On -BUILD_DREAMKAS_RF=Off ..
make -j4
exit $?