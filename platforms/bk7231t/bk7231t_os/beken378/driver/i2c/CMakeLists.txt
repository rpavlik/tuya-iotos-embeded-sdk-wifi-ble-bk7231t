# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_driver_i2c STATIC
    i2c1.h
    i2c2.h
    i2c_pub.h
    i2c1.c
    i2c2.c)

target_compile_options(beken378_driver_i2c PRIVATE -mthumb)

target_link_libraries(beken378_driver_i2c PUBLIC beken378_common
                                                 beken378_driver_include)

set_target_properties(beken378_driver_i2c PROPERTIES C_STANDARD 99)

target_include_directories(beken378_driver_i2c PUBLIC SYSTEM .)
