# Toolchain file for the clang compiler (version 4.0)
#
# Set `CMAKE_TOOLCHAIN_FILE` while running `cmake` to use this file.


# Compilers
set(CMAKE_CXX_COMPILER "/usr/bin/clang++-5.0")

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED on)


# Compile flags
set(CMAKE_CXX_FLAGS_DEBUG          "-g -Wall -Wextra -Werror"     CACHE STRING "Debug flags")
set(CMAKE_CXX_FLAGS_RELEASE        "-O3 -DNDEBUG"                 CACHE STRING "Release flags")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g -Wall -Wextra -Werror" CACHE STRING "Release with debug info flags")
