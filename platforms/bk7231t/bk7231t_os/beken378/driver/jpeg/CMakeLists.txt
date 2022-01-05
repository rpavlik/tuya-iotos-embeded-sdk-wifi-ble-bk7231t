# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_driver_jpeg STATIC jpeg_encoder.h jpeg_encoder_pub.h
                                        jpeg_encoder.c)

target_compile_options(beken378_driver_jpeg PRIVATE -mthumb)

target_link_libraries(beken378_driver_jpeg PUBLIC beken378_common
                                                  beken378_driver_include)

set_target_properties(beken378_driver_jpeg PROPERTIES C_STANDARD 99)

target_include_directories(beken378_driver_jpeg PUBLIC SYSTEM .)
