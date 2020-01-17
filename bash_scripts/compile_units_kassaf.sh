#!/bin/bash

mkdir build
cd ./build
cmake -BUILD_UNITS=On ..
make -j4
exit $?