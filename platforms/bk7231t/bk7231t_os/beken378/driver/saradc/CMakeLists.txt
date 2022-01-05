# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_driver_saradc STATIC saradc.h saradc.c)

target_compile_options(beken378_driver_saradc PRIVATE -mthumb)

target_link_libraries(beken378_driver_saradc PUBLIC beken378_common
                                                    beken378_driver_include)

set_target_properties(beken378_driver_saradc PROPERTIES C_STANDARD 99)
