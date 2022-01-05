# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_driver_sdcard.cmake,
### then re-run ./make-cmake.py







add_library(beken378_driver_sdcard STATIC


    sdcard.h
    sdcard_pub.h
    sdio_driver.h



    sdcard.c
    sdio_driver.c

)




target_compile_options(beken378_driver_sdcard PRIVATE -mthumb)




target_link_libraries(beken378_driver_sdcard
    PUBLIC
    beken378_common
    beken378_driver_include
)


# target_compile_features(beken378_driver_sdcard PUBLIC c_std_99)
set_target_properties(beken378_driver_sdcard PROPERTIES C_STANDARD 99)




target_include_directories(beken378_driver_sdcard


    PUBLIC SYSTEM
    .





)





