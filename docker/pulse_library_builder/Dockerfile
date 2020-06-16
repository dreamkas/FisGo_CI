FROM    dreamkas-compiler
ADD     /Pulse_FA tmp/Pulse_FA
ADD     /pirit2f_ppp tmp/pirit2f_ppp
WORKDIR /tmp/Pulse_FA/Libraries/
RUN     ./deployLibs.bash 1 n
WORKDIR /tmp/

ENV     PATH=/usr/local/arm_linux_4.8/bin:${PATH}
ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/
