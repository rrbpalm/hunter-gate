# Copyright (c) 2016-2017, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    SFML
    VERSION
    2.5.1
    URL
    "https://github.com/SFML/SFML/archive/2.5.1.zip"
    SHA1
	C71A3A4F4850C88D82A3E2FF82765C8285856226
)

hunter_cmake_args(
    SFML
    CMAKE_ARGS
        SFML_BUILD_AUDIO=NO
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(SFML)
hunter_download(PACKAGE_NAME SFML)
