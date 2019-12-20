FROM    dreamkas-rf-compiler

ADD     /FisGo tmp/FisGo
WORKDIR /tmp/FisGo/Libraries
RUN     ./deployLibs.bash 1 n
WORKDIR /tmp/FisGo
RUN     find . -type f \( -iname '*.so' -o -iname '*.so.*' \) -exec cp '{}' /tmp/FisGo/PATCH/lib/ ';'

ENV     PATH=/usr/local/arm_linux_4.8/bin:${PATH}
ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/