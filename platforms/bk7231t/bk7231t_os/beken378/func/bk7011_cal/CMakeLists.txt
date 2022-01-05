# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_func_bk7011_cal.cmake,
### then re-run ./make-cmake.py







add_library(beken378_func_bk7011_cal STATIC


    bk7011_cal.h
    bk7221U_cal.h
    bk7231U_cal.h
    bk7231_cal.h



    bk7011_cal.c
    bk7221U_cal.c
    bk7231U_cal.c
    bk7231_cal.c
    manual_cal_bk7231.c
    manual_cal_bk7231U.c

)




target_compile_options(beken378_func_bk7011_cal PRIVATE -mthumb)




target_link_libraries(beken378_func_bk7011_cal
    PUBLIC
    beken378_common
    beken378_func_include
)


# target_compile_features(beken378_func_bk7011_cal PUBLIC c_std_99)
set_target_properties(beken378_func_bk7011_cal PROPERTIES C_STANDARD 99)








