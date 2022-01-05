# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_driver_sdio STATIC
    sdio.h
    sdma.h
    sdma_pub.h
    sutil.h
    sdio.c
    sdma.c
    sutil.c)

target_compile_options(beken378_driver_sdio PRIVATE -mthumb)

target_link_libraries(beken378_driver_sdio PUBLIC beken378_common
                                                  beken378_driver_include)

set_target_properties(beken378_driver_sdio PROPERTIES C_STANDARD 99)

target_include_directories(beken378_driver_sdio PUBLIC SYSTEM .)
