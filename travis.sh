#!/usr/bin/env sh
set -evx
env | sort

bash cmake/run/$PEGASUS_CMAKE_RUN.sh
#cmake -Dpegasus_build_tests=ON \
cd build
make
CTEST_OUTPUT_ON_FAILURE=1 make test
