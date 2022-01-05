# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_common
    INTERFACE
    doubly_list.h
    fifo.h
    generic.h
    include.h
    typedef.h)

target_link_libraries(beken378_common INTERFACE beken378_app_config)

target_include_directories(
    beken378_common
    INTERFACE
        SYSTEM
        .
        ../driver/common
        ../driver/entry
        ../ip/common
        ../os/FreeRTOSv9.0.0/FreeRTOS/Source/portable/Keil/ARM968es)
