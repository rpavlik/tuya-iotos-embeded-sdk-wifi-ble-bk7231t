# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

file(GLOB_RECURSE tuya_common_sources LIST_DIRECTORIES false CONFIGURE_DEPENDS src/*.c)
add_library(tuya_common STATIC ${tuya_common_sources})
target_include_directories(tuya_common PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(tuya_common PUBLIC tuya_user_sw tuya_iot)
