# Toolchain file for the gnu compiler collection
#
# Set `CMAKE_TOOLCHAIN_FILE` while running `cmake` to use this file.


# Compilers
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
# set(MPI_CXX_COMPILER "/path/to/mpi/mpicxx")

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED on)


# Compile flags
set(CMAKE_CXX_FLAGS_DEBUG          "-g -Wall -Wextra -Werror"     CACHE STRING "Debug flags")
set(CMAKE_CXX_FLAGS_RELEASE        "-O3 -DNDEBUG"                 CACHE STRING "Release flags")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g -Wall -Wextra -Werror" CACHE STRING "Release with debug info flags")

# Comments: NDEBUG disables `assert` from `assert.h`. Revisit this inclusion depending on whether `assert` is used or
# not.

# Libraries
# set(BLAS_LIBRARIES /path/to/required/mkl/static_or_dynamic/libs)
