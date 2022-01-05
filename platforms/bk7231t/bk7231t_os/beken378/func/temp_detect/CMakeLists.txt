# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_func_temp_detect STATIC temp_detect.h temp_detect_pub.h
                                             temp_detect.c)

target_compile_options(beken378_func_temp_detect PRIVATE -mthumb)

target_link_libraries(beken378_func_temp_detect PUBLIC beken378_common
                                                       beken378_func_include)

set_target_properties(beken378_func_temp_detect PROPERTIES C_STANDARD 99)

target_include_directories(beken378_func_temp_detect PUBLIC SYSTEM .)
