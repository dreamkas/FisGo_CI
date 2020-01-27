FROM    dreamkas-compiler

ADD     /FisGo tmp/FisGo
WORKDIR /tmp/FisGo/Libraries	
RUN	    ./deployLibs.bash 1 n
WORKDIR /tmp/FisGo

ENV     PATH=/usr/local/arm_linux_4.8/bin:${PATH}
ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/
