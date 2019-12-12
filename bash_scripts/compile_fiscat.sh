#!/bin/bash

CONTAINER=$1

docker run --name $CONTAINER dreamkas-sf-library /bin/bash
mkdir build
cd /build/
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On ..
make -j4
exit