# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_subdirectory(bk7231t_os)

if(USER_SW_VER AND APP_BIN_NAME)
    add_library(tuya_user_sw INTERFACE)
    target_compile_definitions(tuya_user_sw INTERFACE "USER_SW_VER=\"${USER_SW_VER}\"" "APP_BIN_NAME=\"${APP_BIN_NAME}\"")

    add_subdirectory(tuya_os_adapter)
    add_subdirectory(tuya_common)
else()
    message(STATUS "Skipping Tuya - set USER_SW_VER and APP_BIN_NAME at the root to enable")
endif()
