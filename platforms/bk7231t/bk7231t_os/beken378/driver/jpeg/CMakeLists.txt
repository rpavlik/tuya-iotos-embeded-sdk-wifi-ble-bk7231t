# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_driver_jpeg.cmake,
### then re-run ./make-cmake.py







add_library(beken378_driver_jpeg STATIC


    jpeg_encoder.h
    jpeg_encoder_pub.h



    jpeg_encoder.c

)




target_compile_options(beken378_driver_jpeg PRIVATE -mthumb)




target_link_libraries(beken378_driver_jpeg
    PUBLIC
    beken378_common
    beken378_driver_include
)


# target_compile_features(beken378_driver_jpeg PUBLIC c_std_99)
set_target_properties(beken378_driver_jpeg PROPERTIES C_STANDARD 99)




target_include_directories(beken378_driver_jpeg


    PUBLIC SYSTEM
    .





)





