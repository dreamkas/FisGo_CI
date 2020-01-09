FROM    dreamkas-sf-library

WORKDIR /tmp/FisGo
RUN     sed 's/#add_definitions(-DG_UNIT)/add_definitions(-DG_UNIT)/g' -i CMakeLists.txt
WORKDIR /tmp/FisGo/build
RUN     cmake ..
RUN     make -j4