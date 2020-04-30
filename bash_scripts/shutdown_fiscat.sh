#!/bin/bash

cd /
cd FisGo/
rm outf || true
rm outp || true
killall crond || true
killall fiscat || true
killall punix || true
