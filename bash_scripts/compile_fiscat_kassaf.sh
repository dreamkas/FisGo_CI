#!/bin/bash

mkdir build
cd ./build
cmake -rpath -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
make -j4
exit $?
