FROM    dreamkas-compiler
ADD     /Kassa_F tmp/FisGo
ADD     /pirit2f_ppp tmp/pirit2f_ppp
WORKDIR /tmp/FisGo/Libraries
RUN     ./deployLibs.bash 2 n
ENV     PATH=/usr/local/arm_linux_4.8/bin:${PATH}
ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/

WORKDIR /tmp/
