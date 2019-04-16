set(LibUV_SEARCH_PATHS
	~/Library/Frameworks
	/Library/Frameworks
	/usr/local
	/usr
	/sw # Fink
	/opt/local # DarwinPorts
	/opt/csw # Blastwave
	/opt
)

find_path(LibUV_INCLUDE_DIRS
    NAMES uv.h
    PATHS ${LibUV_SEARCH_PATHS}
    PATH_SUFFIXES include
    HINTS ${LibUV_ROOT_DIR}
    DOC "The LibUV include directory"
)

find_library(LibUV_LIBRARIES
    NAMES libuv.a libuv_a.a
    PATH_SUFFIXES lib
    PATHS ${LibUV_SEARCH_PATHS}
    HINTS ${LibUV_ROOT_DIR}
    DOC "The LibUV library"
)


include(${CMAKE_ROOT}/Modules/FindPackageHandleStandardArgs.cmake)
    find_package_handle_standard_args(LibUV
    REQUIRED_VARS LibUV_INCLUDE_DIRS LibUV_LIBRARIES
    FAIL_MESSAGE "Could not find LibUV library"
)

mark_as_advanced(LibUV_FOUND LibUV_INCLUDE_DIRS)
