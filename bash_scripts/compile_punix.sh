#!/bin/bash
ls -la
pwd
cd pirit2f_ppp
mkdir build
cd ./build/
pwd
ls -la ..
cmake ..
make -j4
exit $?

