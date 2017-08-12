cmake_minimum_required(VERSION 3.5.1)

message("Running cmake with build type: ${CMAKE_BUILD_TYPE}.\n")

project(PeGaSUS)


set(PeGaSUS_VERSION_MAJOR 1)
set(PeGaSUS_VERSION_MINOR 0)
set(PeGaSUS_VERSION "${PeGaSUS_VERSION_MAJOR}.${PeGaSUS_VERSION_MINOR}")


# Global includes
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
include(functions)


# Download and unpack external projects
add_external_project(googletest)


# Include subdirectory CMakeLists.txt files
add_subdirectory(src)
add_subdirectory(doc)


# Include directories for cmake generated files
set_include_directories()


# Executable generation
add_executable(pegasus src/main.cpp)
target_link_libraries(pegasus PRIVATE $ENV{EXTRA_LIBS})


# add tests
option(pegasus_build_tests "Build all of pagasus' own tests." ON)
if(pegasus_build_tests)
	include(CTest)
	add_test(PegasusRuns pegasus)
endif()
