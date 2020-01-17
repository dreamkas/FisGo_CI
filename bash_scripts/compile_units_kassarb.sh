#!/bin/bash

mkdir build
cd ./build/
cmake -DBUILD_DREAMKAS_RB=ON -BUILD_UNITS=ON -DBUILD_DREAMKAS_RF=OFF ..
make -j4
exit $?