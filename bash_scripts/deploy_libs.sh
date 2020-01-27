#!/bin/bash

ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
echo "Done 1"
sshpass -p root ssh-copy-id -o StrictHostKeyChecking=no root@192.168.243.6
echo "Done 2"
cd Libraries/
echo "Done 3"
chmod +x ./deployLibs.bash
echo "Done 4"
./deployLibs.bash 1 y 192.168.243.6
echo "Done 5"
