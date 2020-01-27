FROM    dreamkas-compiler

ARG	    device_ip
ARG     device_root_pass

RUN     ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
RUN     sshpass -p ${device_root_pass} ssh-copy-id -o StrictHostKeyChecking=no root@${device_ip}

ADD     /FisGo tmp/FisGo
WORKDIR /tmp/FisGo/Libraries
RUN	    ./deployLibs.bash 1 y ${device_ip}
WORKDIR /tmp/FisGo

ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/