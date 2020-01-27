#!/bin/bash

ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
sshpass -p root ssh-copy-id -o StrictHostKeyChecking=no root@192.168.242.196
cd Libraries/
./deployLibs.bash 1 y 192.168.242.196
