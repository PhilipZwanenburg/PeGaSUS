find_package(Doxygen OPTIONAL_COMPONENTS dot)

if(DOXYGEN_FOUND)
	find_package(LATEX REQUIRED BIBTEX)
	add_custom_target(doc COMMAND ${DOXYGEN_EXECUTABLE} doxygen.cfg)

	# There was a problem with DOXYGEN_DOT_FOUND not being set even when dot was found. Try removing this after
	# updating CMake version. This addition was not tested on a machine where dot was not present.
	if (TARGET Doxygen::dot)
		set(DOXYGEN_DOT_FOUND YES)
	endif()

	configure_file(${PROJECT_SOURCE_DIR}/cmake/doxygen.cfg.in
	               ${PROJECT_BINARY_DIR}/doc/doxygen.cfg @ONLY)
endif()
