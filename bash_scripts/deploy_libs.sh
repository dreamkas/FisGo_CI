#!/bin/bash

args=("$@")
DEVICE_IP=${args[0]}

sshpass -p root ssh-copy-id -o StrictHostKeyChecking=no root@$DEVICE_IP
cd Libraries/
chmod + x ./deployLibs.bash
./deployLibs.bash 1 y $DEVICE_IP
