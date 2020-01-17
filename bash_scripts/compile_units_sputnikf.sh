#!/bin/bash

mkdir build
cd ./build/
cmake -DBUILD_DREAMKAS_RF=OFF -DBUILD_SPUTNIK_F=ON -DBUILD_UNITS=ON ..
make -j4
exit $?