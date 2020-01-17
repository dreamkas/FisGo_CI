#!/bin/bash

mkdir build
cd ./build
cmake -BUILD_DREAMKAS_RF=OFF -BUILD_DREAMKAS_RB=ON -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
make -j4
exit $?