#!/bin/bash

prefix=/tmp/hindsight/luasandbox

if [ -d release ]; then
    rm -rf release
fi

mkdir release
pushd release

cmake -DCMAKE_BUILD_TYPE=release -DCMAKE_INSTALL_PREFIX=$prefix ..
make install
