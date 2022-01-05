# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_func_spidma_intf STATIC spidma_intf.h spidma_intf_pub.h
                                             spidma_intf.c)

target_compile_options(beken378_func_spidma_intf PRIVATE -mthumb)

target_link_libraries(beken378_func_spidma_intf PUBLIC beken378_common
                                                       beken378_func_include)

set_target_properties(beken378_func_spidma_intf PROPERTIES C_STANDARD 99)

target_include_directories(beken378_func_spidma_intf PUBLIC SYSTEM .)
