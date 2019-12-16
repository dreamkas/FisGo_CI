#!/bin/bash

sed 's/#add_definitions(-DG_UNIT)/add_definitions(-DG_UNIT)/g' -i CMakeLists.txt
mkdir build
cd ./build/
cmake ..
make -j4
exit 