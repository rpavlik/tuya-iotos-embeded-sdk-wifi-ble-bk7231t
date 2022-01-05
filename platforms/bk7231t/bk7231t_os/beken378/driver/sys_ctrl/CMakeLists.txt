# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_driver_sys_ctrl STATIC sys_ctrl.h sys_ctrl.c)

target_compile_options(beken378_driver_sys_ctrl PRIVATE -mthumb)

target_link_libraries(beken378_driver_sys_ctrl PUBLIC beken378_common
                                                      beken378_driver_include)

set_target_properties(beken378_driver_sys_ctrl PROPERTIES C_STANDARD 99)
