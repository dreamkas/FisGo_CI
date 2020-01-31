#!/bin/bash

ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
sshpass -p root ssh-copy-id -o StrictHostKeyChecking=no root@192.168.250.129
cd Libraries/
./deployLibs.bash 2 y 192.168.250.129
