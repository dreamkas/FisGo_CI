FROM    dreamkas-rf-compiler:latest

RUN     apt-get install -y sudo
COPY     /FisGo tmp/FisGo
WORKDIR /tmp/FisGo
RUN     ./Libraries/deployLibs.bash 1 n
RUN     find . -type f -name '*.so' -exec cp '{}' /tmp/FisGo/PATCH/lib/ ';'