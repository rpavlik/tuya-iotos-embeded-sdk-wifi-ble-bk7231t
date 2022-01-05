# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_func_key_handle.cmake,
### then re-run ./make-cmake.py







add_library(beken378_func_key_handle STATIC


    key_handle.h



    key_handle.c

)




target_compile_options(beken378_func_key_handle PRIVATE -mthumb)




target_link_libraries(beken378_func_key_handle
    PUBLIC
    beken378_common
    beken378_func_include
)


# target_compile_features(beken378_func_key_handle PUBLIC c_std_99)
set_target_properties(beken378_func_key_handle PROPERTIES C_STANDARD 99)








