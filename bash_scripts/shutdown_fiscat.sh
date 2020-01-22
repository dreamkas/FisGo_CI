#!/bin/bash

cd /
cd FisGo/
rm outf || true
killall fiscat || true
killall wpa_supplicant || true
rmmod 8188eu || true