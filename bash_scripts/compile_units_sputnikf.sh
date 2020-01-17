#!/bin/bash

mkdir build
cd ./build/
cmake -DBUILD_SPUTNIK_F=ON -DBUILD_UNITS=ON -DBUILD_DREAMKAS_RF=OFF ..
make -j4
exit $?