#!/usr/bin/env bash
set -e
LIB="papaya-mark.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/cheeryfernwjlj/narrowflow/releases/download/bright-harbor-cosmic-harbor/papaya-mark.a"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
