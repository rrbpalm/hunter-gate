# Copyright (c) 2019, Redrock Biometrics
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_package)
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    LeapSerial
    VERSION
    "0.5.2"
    URL
    "https://github.com/leapmotion/leapserial/archive/v0.5.2.tar.gz"
    SHA1
    afbe5038b59db8f0c54712d734ed0088232cfdee
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(LeapSerial)
hunter_download(PACKAGE_NAME LeapSerial)
