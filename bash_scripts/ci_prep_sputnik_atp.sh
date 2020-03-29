#!/bin/bash

sleep 5
killall wpa_supplicant || true
killall fiscat || true
killall punix || true
sleep 5
/usr/sbin/wpa_supplicant -Dnl80211 -iwlan0 -c/FisGo/wpa_supplicant.conf &
sleep 10
/sbin/udhcpc -i wlan0
sleep 5
/bin/sync
/bin/sync
/FisGo/punix >> /FisGo/outp &
/FisGo/fiscat -t >> /FisGo/outf &
