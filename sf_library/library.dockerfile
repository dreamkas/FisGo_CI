FROM ubuntu:18.04 as dreamkas-compiler

RUN apt-get update && \ 
    apt-get install -y \
    git \
    p7zip-full \
    cmake \ 
    lib32gcc-7-dev
RUN cd /tmp && \
    git clone --branch=master https://github.com/dreamkas/DreamkasRfCompiler.git && \
    7z x /tmp/DreamkasRfCompiler/arm-linux-compiler.7z.001 -o/usr/local && \
    7z x /tmp/DreamkasRfCompiler/arm_linux_4.8.7z -o/usr/local

FROM    dreamkas-compiler

RUN     apt-get install -y sudo
ADD     /FisGo tmp/FisGo
WORKDIR /tmp/FisGo/Libraries
RUN     ./deployLibs.bash 1 n
WORKDIR /tmp/FisGo
RUN     find . -type f -name '*.so' -exec cp '{}' /tmp/FisGo/PATCH/lib/ ';'

ENV     PATH=/usr/local/arm_linux_4.8/bin:${PATH}
ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/