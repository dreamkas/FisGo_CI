FROM    dreamkas-sf-library

WORKDIR /tmp/FisGo/build
RUN     cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On ..
RUN     make -j4