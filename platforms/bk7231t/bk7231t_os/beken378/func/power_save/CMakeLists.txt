# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_power_save STATIC
    manual_ps.h
    mcu_ps.h
    power_save.h
    manual_ps.c
    mcu_ps.c
    power_save.c)

target_compile_options(beken378_func_power_save PRIVATE -mthumb)

target_link_libraries(beken378_func_power_save PUBLIC beken378_common
                                                      beken378_func_include)

set_target_properties(beken378_func_power_save PROPERTIES C_STANDARD 99)
