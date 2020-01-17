#!/bin/bash

mkdir build
cd ./build/
cmake -BUILD_SPUTNIK_F=On -BUILD_DREAMKAS_RF=Off -DCMAKE_EXPORT_COMPILE_COMMANDS=On ..
make -j4
exit $?