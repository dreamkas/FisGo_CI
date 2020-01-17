#!/bin/bash

mkdir build
cd ./build/
cmake -BUILD_SPUTNIK_F=On -BUILD_UNITS=On -BUILD_DREAMKAS_RF=Off ..
make -j4
exit $?