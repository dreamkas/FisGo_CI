FROM    dreamkas-rf-compiler

ADD     /FisGo tmp/FisGo
WORKDIR /tmp/FisGo/Libraries
RUN     ./deployLibs.bash 1 n
WORKDIR /tmp/FisGo
RUN     tar -cvf libs.tar /tmp/FisGo/*.so
RUN     ls -la
RUN     find . -type f -name '*.so' -exec cp '{}' /tmp/FisGo/PATCH/lib/ ';'

ENV     PATH=/usr/local/arm_linux_4.8/bin:${PATH}
ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/