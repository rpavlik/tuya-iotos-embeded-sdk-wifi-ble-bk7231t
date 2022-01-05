# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_os.cmake,
### then re-run ./make-cmake.py




add_subdirectory(FreeRTOSv9.0.0)




add_library(beken378_os STATIC


    mem_arch.c
    str_arch.c

)




target_compile_options(beken378_os PRIVATE -marm)




target_link_libraries(beken378_os
    PUBLIC
    beken378_common)


# target_compile_features(beken378_os PUBLIC c_std_99)
set_target_properties(beken378_os PROPERTIES C_STANDARD 99)




target_include_directories(beken378_os


    PUBLIC SYSTEM
    include





)





