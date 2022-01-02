# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

file(GLOB_RECURSE tuya_os_adapter_sources LIST_DIRECTORIES false CONFIGURE_DEPENDS src/*.c)
add_library(tuya_os_adapter STATIC ${tuya_os_adapter_sources})
target_include_directories(tuya_os_adapter PUBLIC
    include
    include/driver
    include/system)
target_link_libraries(tuya_os_adapter PUBLIC tuya_user_sw tuya::tuya_iot tuya::tuya_iot_includes beken378_freertos)
target_compile_options(tuya_os_adapter PRIVATE -mthumb)
