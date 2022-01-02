# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

file(GLOB_RECURSE tuya_os_adapter_sources LIST_DIRECTORIES false CONFIGURE_DEPENDS src/*.c)
add_library(tuya_os_adapter STATIC ${tuya_os_adapter_sources})
target_include_directories(tuya_os_adapter PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include ${CMAKE_CURRENT_SOURCE_DIR}/include/driver ${CMAKE_CURRENT_SOURCE_DIR}/include/system)
target_link_libraries(tuya_os_adapter PUBLIC tuya_user_sw)
