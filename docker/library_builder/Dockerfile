FROM    dreamkas-compiler

<<<<<<< Updated upstream
ARG	    kassaf_ip
ARG     kassaf_root_pass
ARG	    kassarb_ip
ARG     kassarb_root_pass
ARG	    sputnikf_ip
ARG     sputnikf_root_pass

RUN     ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
RUN     sshpass -p ${kassaf_root_pass} ssh-copy-id -o StrictHostKeyChecking=no root@${kassaf_ip}
RUN     sshpass -p ${kassarb_root_pass} ssh-copy-id -o StrictHostKeyChecking=no root@${kassarb_ip}
RUN     sshpass -p ${sputnikf_root_pass} ssh-copy-id -o StrictHostKeyChecking=no root@${sputnikf_ip}

ADD     /FisGo tmp/FisGo
WORKDIR /tmp/FisGo/Libraries
RUN     ./deployLibs.bash 2 y ${kassaf_ip}
RUN     ./deployLibs.bash 2 y ${kassarb_ip}
RUN     ./deployLibs.bash 2 y ${sputnikf_ip}
=======
ADD     /FisGo tmp/FisGo
WORKDIR /tmp/FisGo/Libraries
RUN     ./deployLibs.bash 1 n
>>>>>>> Stashed changes
WORKDIR /tmp/FisGo

ENV     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/usr/lib/