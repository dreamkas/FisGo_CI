#!/bin/bash

cd ./pirit2f_ppp
mkdir build
cd ./build/
cmake ..
make -j4
exit $?