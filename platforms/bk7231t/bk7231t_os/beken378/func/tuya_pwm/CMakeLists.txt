# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_func_tuya_pwm STATIC tuya_pwm.h tuya_pwm.c)

target_compile_options(beken378_func_tuya_pwm PRIVATE -mthumb)

target_link_libraries(beken378_func_tuya_pwm PUBLIC beken378_common
                                                    beken378_func_include)

set_target_properties(beken378_func_tuya_pwm PROPERTIES C_STANDARD 99)
