# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_func_key_handle STATIC key_handle.h key_handle.c)

target_compile_options(beken378_func_key_handle PRIVATE -mthumb)

target_link_libraries(beken378_func_key_handle PUBLIC beken378_common
                                                      beken378_func_include)

set_target_properties(beken378_func_key_handle PROPERTIES C_STANDARD 99)
