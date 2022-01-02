# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

file(GLOB_RECURSE tuya_common_sources LIST_DIRECTORIES false CONFIGURE_DEPENDS src/*.c)
add_library(tuya_common STATIC ${tuya_common_sources})
target_include_directories(tuya_common PUBLIC include include/driver)
target_link_libraries(tuya_common PUBLIC tuya_user_sw tuya::tuya_iot tuya_os_adapter)
target_compile_options(tuya_common PRIVATE -mthumb)
