# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_sim_uart STATIC
    gpio_uart.h
    pwm_uart.h
    gpio_uart.c
    pwm_uart.c)

target_compile_options(beken378_func_sim_uart PRIVATE -mthumb)

target_link_libraries(beken378_func_sim_uart PUBLIC beken378_common
                                                    beken378_func_include)

set_target_properties(beken378_func_sim_uart PROPERTIES C_STANDARD 99)
