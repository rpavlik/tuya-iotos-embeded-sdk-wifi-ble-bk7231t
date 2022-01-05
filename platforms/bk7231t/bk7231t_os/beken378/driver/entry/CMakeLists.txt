# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_driver_entry STATIC
    arch.h
    boot.h
    arch_main.c
    boot_handlers.S
    boot_handlers.S
    boot_vectors.S
    boot_vectors.S
    ll.S
    ll.S)

target_compile_options(beken378_driver_entry PRIVATE -mthumb)

target_link_libraries(beken378_driver_entry PUBLIC beken378_common
                                                   beken378_driver_include)

set_target_properties(beken378_driver_entry PROPERTIES C_STANDARD 99)
