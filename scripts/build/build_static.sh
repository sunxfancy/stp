#!/bin/bash
set -e
set -x

rm -rf stp* tests tools lib bindings include
rm -rf cmake* CM* Makefile ./*.cmake
cmake -DBUILD_SHARED_LIBS=OFF -DFORCE_CMS=ON -DONLY_SIMPLE=ON  ..
make -j4
