# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_app_http STATIC
    http_flash.h
    iot_export_errno.h
    lite-log.h
    lite-log_internal.h
    utils_httpc.h
    utils_net.h
    utils_timer.h
    lite-log.c
    utils_httpc.c
    utils_net.c
    utils_timer.c)

target_compile_options(beken378_app_http PRIVATE -mthumb)

target_link_libraries(beken378_app_http PUBLIC beken378_common)

set_target_properties(beken378_app_http PROPERTIES C_STANDARD 99)
