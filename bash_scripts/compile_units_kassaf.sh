#!/bin/bash

mkdir build
cd ./build
cmake -DBUILD_UNITS=ON ..
make -j4
exit $?