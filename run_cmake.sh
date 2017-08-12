TOP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Modifiable parameters ****************************************************** #
BUILD_DIR=${TOP_DIR}/build

CMAKE_BUILD_TYPE=Debug
TOOLCHAIN_FILE=default_gnu.cmake

# End Modifiable parameters ************************************************** #



mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR}
cmake -D CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} \
      -D CMAKE_TOOLCHAIN_FILE=${TOP_DIR}/cmake/toolchains/${TOOLCHAIN_FILE} \
      ${TOP_DIR}
