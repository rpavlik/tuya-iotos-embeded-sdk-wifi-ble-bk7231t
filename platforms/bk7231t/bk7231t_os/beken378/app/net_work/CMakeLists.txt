# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_app_net_work STATIC
    app_drone.h
    app_lwip_tcp.h
    app_lwip_udp.h
    app_drone.c
    app_lwip_tcp.c
    app_lwip_udp.c)

target_compile_options(beken378_app_net_work PRIVATE -mthumb)

target_link_libraries(beken378_app_net_work PUBLIC beken378_common)

set_target_properties(beken378_app_net_work PROPERTIES C_STANDARD 99)
