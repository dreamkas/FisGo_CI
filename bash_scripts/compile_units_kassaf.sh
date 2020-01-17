#!/bin/bash

mkdir build
cd ./build
cmake -DBUILD_UNITS=On ..
make -j4
exit $?