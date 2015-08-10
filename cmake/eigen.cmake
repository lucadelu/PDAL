#
# Eigen support (required)
#
find_package(EIGEN QUIET 3.0.5)
set_package_properties(EIGEN PROPERTIES TYPE REQUIRED
    PURPOSE "Provides linear algebra support")
if (EIGEN_FOUND)
    include_directories("${EIGEN_INCLUDE_DIR}")
    mark_as_advanced(CLEAR EIGEN_INCLUDE_DIR)
else()
    message(FATAL_ERROR "EIGEN support is required")
endif()
