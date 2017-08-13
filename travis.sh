#!/bin/bash
set -eux

TOP_DIR=${PWD}
CMAKE_RUN=${TOP_DIR}/cmake/run/

# Run `cmake`
cd $CMAKE_RUN
./$PEGASUS_CMAKE_RUN.sh
#cmake -Dpegasus_build_tests=ON \

# Run `make` and `make test`
cd ${TOP_DIR}/build
make
CTEST_OUTPUT_ON_FAILURE=1 make test
make PeGaSUS_coverage
