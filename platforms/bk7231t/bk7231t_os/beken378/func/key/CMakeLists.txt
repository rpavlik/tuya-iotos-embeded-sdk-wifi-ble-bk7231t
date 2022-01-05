# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_key STATIC
    key_main.h
    multi_button.h
    key_main.c
    multi_button.c)

target_compile_options(beken378_func_key PRIVATE -mthumb)

target_link_libraries(beken378_func_key PUBLIC beken378_common
                                               beken378_func_include)

set_target_properties(beken378_func_key PROPERTIES C_STANDARD 99)
