# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_app_http.cmake,
### then re-run ./make-cmake.py







add_library(beken378_app_http STATIC


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
    utils_timer.c

)




target_compile_options(beken378_app_http PRIVATE -mthumb)




target_link_libraries(beken378_app_http
    PUBLIC
    beken378_common)


# target_compile_features(beken378_app_http PUBLIC c_std_99)
set_target_properties(beken378_app_http PROPERTIES C_STANDARD 99)








