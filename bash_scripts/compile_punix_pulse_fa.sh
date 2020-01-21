#!/bin/bash
cd ./Pulse_FA/Libraries
./deployLibs.bash 1 n
cd ..
cd ..
cd ./pirit2f_ppp
mkdir build
cd ./build/
cmake ..
make -j4
exit $?

