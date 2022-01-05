# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_fatfs STATIC
    app_fs.h
    cc936.h
    ccsbcs.h
    diskio.h
    driver_udisk.h
    ff.h
    ffconf.h
    integer.h
    test_fatfs.h
    cc936.c
    ccsbcs.c
    disk_io.c
    driver_udisk.c
    ff.c
    playmode.c
    test_fatfs.c)

target_compile_options(beken378_func_fatfs PRIVATE -mthumb)

target_link_libraries(beken378_func_fatfs PUBLIC beken378_common
                                                 beken378_func_include)

set_target_properties(beken378_func_fatfs PROPERTIES C_STANDARD 99)
