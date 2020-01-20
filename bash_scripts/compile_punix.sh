#!/bin/bash
ls -la
pwd
mkdir build
cd ./build/
pwd
ls -la ..
cmake ..
make -j4
exit $?

