# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_app_airkiss.cmake,
### then re-run ./make-cmake.py







add_library(beken378_app_airkiss STATIC


    airkiss.h



    airkiss.c
    airkiss_main.c

)




target_compile_options(beken378_app_airkiss PRIVATE -mthumb)




target_link_libraries(beken378_app_airkiss
    PUBLIC
    beken378_common)


# target_compile_features(beken378_app_airkiss PUBLIC c_std_99)
set_target_properties(beken378_app_airkiss PROPERTIES C_STANDARD 99)








