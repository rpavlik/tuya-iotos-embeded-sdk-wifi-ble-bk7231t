# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_app_ftp STATIC
    ftpd.h
    vfs.h
    ftpd.c
    vfs.c)

target_compile_options(beken378_app_ftp PRIVATE -mthumb)

target_link_libraries(beken378_app_ftp PUBLIC beken378_common)

set_target_properties(beken378_app_ftp PROPERTIES C_STANDARD 99)
