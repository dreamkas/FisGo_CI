#!/bin/bash

args=("$@")
DEVICE_IP=${args[0]}

echo "${DEVICE_IP}"
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
echo "Done 1"
sshpass -p root ssh-copy-id -o StrictHostKeyChecking=no root@${DEVICE_IP}
echo "Done 2"
cd Libraries/
echo "Done 3"
chmod + x ./deployLibs.bash
echo "Done 4"
./deployLibs.bash 1 y ${DEVICE_IP}
echo "Done 5"
