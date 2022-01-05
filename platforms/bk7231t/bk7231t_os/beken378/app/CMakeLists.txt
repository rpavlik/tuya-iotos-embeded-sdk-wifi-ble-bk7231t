# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_subdirectory(airkiss)

add_subdirectory(config)

add_subdirectory(ftp)

add_subdirectory(http)

add_subdirectory(led)

add_subdirectory(net_work)

add_subdirectory(standalone-ap)

add_subdirectory(standalone-station)

add_subdirectory(tftp)

add_library(
    beken378_app STATIC
    app.h
    ate_app.h
    app_bk.c
    ate_app.c)

target_compile_options(beken378_app PRIVATE -mthumb)

target_link_libraries(beken378_app PUBLIC beken378_common)

set_target_properties(beken378_app PROPERTIES C_STANDARD 99)
