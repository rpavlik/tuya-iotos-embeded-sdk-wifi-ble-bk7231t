# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(tuya_iot_includes INTERFACE)
target_include_directories(tuya_iot_includes INTERFACE SYSTEM include)

add_library(tuya_iot IMPORTED STATIC)
set_target_properties(tuya_iot PROPERTIES
    IMPORTED_LOCATION ${CMAKE_CURRENT_LIST_DIR}/lib/libtuya_iot.a)
# target_include_directories(tuya_iot INTERFACE SYSTEM include)
target_link_libraries(tuya_iot INTERFACE tuya_iot_includes)
