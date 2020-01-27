#!/bin/bash

ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
sshpass -p 324012 ssh-copy-id -o StrictHostKeyChecking=no root@192.168.242.191
cd Libraries/
./deployLibs.bash 2 y 192.168.242.191
