# Find BLAS and LAPACK

if (ENABLE_MKL)
	find_package(MKL)

	if (MKL_FOUND)
		set(HAVE_INTEL_MKL 1)
		set(LAPACK_FOUND TRUE)
		set(LAPACK_LIBRARIES ${MKL_LIBRARIES})
	endif ()
endif ()


cmake_push_check_state()
set(CMAKE_REQUIRED_LIBRARIES ${LAPACK_LIBRARIES} ${CMAKE_REQUIRED_LIBRARIES} )


# Verify that we can link against BLAS
check_c_fortran_function_exists(sgemm BLAS_WORKS)

if (BLAS_WORKS)
	message(STATUS "A library with BLAS API found.")
else()
	message(FATAL_ERROR "Unable to link against BLAS function. Specify the BLAS library in LAPACK_LIBRARIES.")
endif()

# Verify that we can link against LAPACK
check_c_fortran_function_exists(cheev LAPACK_WORKS)

if(LAPACK_WORKS)
	message(STATUS "A library with LAPACK API found.")
else()
	message(FATAL_ERROR "Unable to link against LAPACK function. Specify the LAPACK library in LAPACK_LIBRARIES.")
endif()

set(LAPACK_FOUND TRUE)
message(STATUS "Found LAPACK: ${LAPACK_LIBRARIES}")

cmake_pop_check_state()
