#!/bin/bash

mkdir build
cd ./build/
cmake -DBUILD_DREAMKAS_RF=OFF -DBUILD_DREAMKAS_RB=ON -BUILD_UNITS=ON ..
make -j4
exit $?