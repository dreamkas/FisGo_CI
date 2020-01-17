#!/bin/bash

mkdir build
cd ./build
cmake -D DBUILD_DREAMKAS_RB=ON DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
make -j4
exit $?