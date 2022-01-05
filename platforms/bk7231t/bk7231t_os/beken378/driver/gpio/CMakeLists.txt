# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_driver_gpio STATIC gpio.h gpio.c)

target_compile_options(beken378_driver_gpio PRIVATE -mthumb)

target_link_libraries(beken378_driver_gpio PUBLIC beken378_common
                                                  beken378_driver_include)

set_target_properties(beken378_driver_gpio PROPERTIES C_STANDARD 99)
