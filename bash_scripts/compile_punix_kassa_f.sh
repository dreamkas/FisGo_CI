#!/bin/bash
cd ./Kassa_F/Libraries
./deployLibs.bash 2 n
cd ..
cd ..
cd ./pirit2f_ppp
mkdir build
cd ./build/
cmake ..
make -j4
exit $?

