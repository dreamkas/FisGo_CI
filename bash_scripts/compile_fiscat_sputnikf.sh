#!/bin/bash

mkdir build
cd ./build
cmake -BUILD_DREAMKAS_RF=OFF -BUILD_SPUTNIK_F=ON -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
make -j4
exit $?