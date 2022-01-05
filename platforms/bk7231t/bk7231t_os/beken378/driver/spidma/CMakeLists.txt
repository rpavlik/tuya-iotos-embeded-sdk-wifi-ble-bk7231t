# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_driver_spidma STATIC spidma.h spidma_pub.h spidma.c)

target_compile_options(beken378_driver_spidma PRIVATE -mthumb)

target_link_libraries(beken378_driver_spidma PUBLIC beken378_common
                                                    beken378_driver_include)

set_target_properties(beken378_driver_spidma PROPERTIES C_STANDARD 99)

target_include_directories(beken378_driver_spidma PUBLIC SYSTEM .)
