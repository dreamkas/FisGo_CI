#!/bin/bash
ls -la
echo "Branch: $GIT_BRANCH"
git clone --branch=FIS-2706 https://github.com/dreamkas/pirit2f_ppp.git
cd ./pirit2f_ppp
mkdir build
cd ./build/
pwd
ls -la ..
cmake ..
make -j4
exit $?

