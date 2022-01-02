# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(tuya::tuya_iot_includes INTERFACE IMPORTED GLOBAL)
target_include_directories(tuya::tuya_iot_includes SYSTEM INTERFACE include)

add_library(tuya::tuya_iot STATIC IMPORTED GLOBAL)
set_target_properties(tuya::tuya_iot PROPERTIES
    IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/lib/libtuya_iot.a
    INTERFACE_LINK_LIBRARIES tuya::tuya_iot_includes)
target_include_directories(tuya::tuya_iot SYSTEM INTERFACE include)
# target_link_libraries(tuya_iot INTERFACE tuya_iot_includes)
