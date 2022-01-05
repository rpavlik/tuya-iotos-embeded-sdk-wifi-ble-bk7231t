# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_misc STATIC
    fake_clock.c
    pseudo_random.c
    start_type.c
    target_util.c)

target_compile_options(beken378_func_misc PRIVATE -mthumb)

target_link_libraries(beken378_func_misc PUBLIC beken378_common
                                                beken378_func_include)

set_target_properties(beken378_func_misc PROPERTIES C_STANDARD 99)
