FROM    dreamkas-compiler

ENV     PATH=/usr/local/arm_linux_4.8/bin:${PATH}
ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/

WORKDIR /tmp/
