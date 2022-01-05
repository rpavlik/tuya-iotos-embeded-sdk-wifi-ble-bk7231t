# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_func_fatfs.cmake,
### then re-run ./make-cmake.py







add_library(beken378_func_fatfs STATIC


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
    test_fatfs.c

)




target_compile_options(beken378_func_fatfs PRIVATE -mthumb)




target_link_libraries(beken378_func_fatfs
    PUBLIC
    beken378_common
    beken378_func_include
)


# target_compile_features(beken378_func_fatfs PUBLIC c_std_99)
set_target_properties(beken378_func_fatfs PROPERTIES C_STANDARD 99)








