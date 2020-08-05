# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2020, Redrock Biometrics
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    realsense2
    VERSION
    2.36.0
    URL
    "https://github.com/IntelRealSense/librealsense/archive/v2.36.0.zip"
    SHA1
	D6BDC46E88C857963296A1704DD3B1F28C99CC08
)

hunter_cmake_args(
    realsense2
    CMAKE_ARGS
        BUILD_EASYLOGGINGPP=NO
        BUILD_EXAMPLES=NO
        BUILD_GLSL_EXTENSIONS=NO
        BUILD_GRAPHICAL_EXAMPLES=NO
        BUILD_SHARED_LIBS=NO
        BUILD_WITH_TM2=NO
		IMPORT_DEPTH_CAM_FW=NO
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(realsense2)
hunter_download(PACKAGE_NAME realsense2)
