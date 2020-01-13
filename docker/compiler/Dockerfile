FROM ubuntu:18.04

RUN apt-get update && \ 
    apt-get install -y \
    sudo \
    wget \
    gnupg2 \
    git \
    p7zip-full \
    cmake \ 
    lib32gcc-7-dev
RUN cd /tmp && \
    git clone --branch=master https://github.com/dreamkas/DreamkasRfCompiler.git && \
    7z x /tmp/DreamkasRfCompiler/arm-linux-compiler.7z.001 -o/usr/local && \
    7z x /tmp/DreamkasRfCompiler/arm_linux_4.8.7z -o/usr/local
RUN sudo su - && \
    wget -q -O - https://files.viva64.com/etc/pubkey.txt | apt-key add - && \
    wget -O /etc/apt/sources.list.d/viva64.list https://files.viva64.com/etc/viva64.list && \
    apt-get update && \ 
    apt install -y \
    pvs-studio && \
    pvs-studio-analyzer credentials e.aleksandrov@dreamkas.ru RDA0-5S20-1NCG-TR8E