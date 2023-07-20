#!/usr/bin/env bash

set -ex

git clone git@github.com:Blosc/c-blosc.git
cd c-blosc
git checkout -b temp-branch $BLOSC_TAG
mkdir build
cd build
cmake ..
cmake --build . --config Release
cd ../..
mkdir -p src/main/resources/linux-x86-64
ls c-blosc/build/blosc
cp c-blosc/build/blosc/libblosc.dylib src/main/resources/linux-x86-64
rm -rf c-blosc