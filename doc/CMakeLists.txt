find_package(Doxygen REQUIRED dot)
print_found(doxygen DOXYGEN_FOUND)
print_found(dot DOXYGEN_DOT_FOUND)

if(DOXYGEN_FOUND)
	add_custom_target(doc COMMAND ${DOXYGEN_EXECUTABLE} doxygen.cfg)

	configure_file(${PROJECT_SOURCE_DIR}/cmake/doxygen.cfg.in
	               ${PROJECT_BINARY_DIR}/doc/doxygen.cfg @ONLY)
endif()
