cmake_minimum_required (VERSION 3.5.1 FATAL_ERROR)


set(CMAKE_CXX_STANDARD 14)


# Project Info *****************************************************************
project(PEGASUS)
set(PEGASUS_VERSION_MAJOR 0)
set(PEGASUS_VERSION_MINOR 0)
set(PEGASUS_VERSION "${PEGASUS_VERSION_MAJOR}.${PEGASUS_VERSION_MINOR}")


# Add Modules ******************************************************************
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/modules/")


# Set Paths ********************************************************************
set(PEGASUS_EXEC_DIR    "bin"     CACHE PATH "executable directory")
set(PEGASUS_INCLUDE_DIR "include" CACHE PATH "include directory")


if(CMAKE_CXX_COMPILER_ID MATCHES GNU)
	# Enable extra warnings and convert warnings to errors
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror")

	# Generate additional information for gcov (code coverage)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fprofile-arcs -ftest-coverage")


	# Enable optimization
	set(CMAKE_CXX_FLAGS_RELEASE "-O3")

	# Enable debugging information. -g3 gives extra information as compared to -g (-g2).
	set(CMAKE_CXX_FLAGS_DEBUG   "-O3 -g3")
endif()


# Set Unit Testing Related Parameters ******************************************
if(CMAKE_BUILD_TYPE STREQUAL "Release")
	set(DEFAULT_ASSERTION_TYPE "disable")
	set(PEGASUS_ASSERTIONS_DISABLE 1)
elseif(CMAKE_BUILD_TYPE STREQUAL "Debug")
	set(DEFAULT_ASSERTION_TYPE "throw")
	set(PEGASUS_ASSERTIONS_THROW 1)
endif()
set(ASSERTION_TYPE ${DEFAULT_ASSERTION_TYPE} CACHE STRING "Define PEGASUS assertion behavior (abort|assert|throw|disable)")
message(STATUS "Assertion type: ${ASSERTION_TYPE}")


# Enable Support for Shared Libraries ******************************************
#ToBeModified

# Check for Applications *******************************************************
find_package(Doxygen)
find_package(LATEX)

# Check for External Dependencies **********************************************
include(external/blas_lapack.cmake)


# Add Project Subdirectories ***************************************************
include_directories(${CMAKE_SOURCE_DIR}/src)

if (ENABLE_UNITTESTS)
	include(CTest)
	enable_testing()
	set(PEGASUS_HAS_GOOGLE_TEST 1)
endif ()
add_subdirectory(src)
add_subdirectory(doc)


# Generate configure files *****************************************************
#configure_file(
#	${PROJECT_SOURCE_DIR}/configure/compiler.cfg.in
#	${PROJECT_SOURCE_DIR}/configure/compiler.cfg
#)

configure_file(
	${PROJECT_SOURCE_DIR}/configure/config.h.in
	${PROJECT_SOURCE_DIR}/configure/config.h
)

configure_file(
	${PROJECT_SOURCE_DIR}/configure/doxygen.cfg.in
	${PROJECT_SOURCE_DIR}/doc/doxygen.cfg
)

