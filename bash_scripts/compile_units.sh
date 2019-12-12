#!/bin/bash

CONTAINER=$1

docker run --name $CONTAINER -it dreamkas-sf-library
sed 's/#add_definitions(-DG_UNIT)/add_definitions(-DG_UNIT)/g' -i CMakeLists.txt
mkdir build
cd /build/
cmake ..
make -j4
exit