#!/usr/bin/env bash
set -e
LIB="walled-jasper.a"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/dellaqmiray/droppedcoffinlab/releases/download/hidden-garden-gentle-cedar/walled-jasper.a" -o "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
