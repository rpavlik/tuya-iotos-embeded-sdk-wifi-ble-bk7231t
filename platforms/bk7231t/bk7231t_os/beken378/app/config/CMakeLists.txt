# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_app_config STATIC
    param_config.h
    sys_config.h
    sys_version.h
    param_config.c)

target_compile_options(beken378_app_config PRIVATE -mthumb)

target_link_libraries(beken378_app_config PUBLIC beken378_common)

set_target_properties(beken378_app_config PROPERTIES C_STANDARD 99)

target_include_directories(beken378_app_config PUBLIC SYSTEM .)
