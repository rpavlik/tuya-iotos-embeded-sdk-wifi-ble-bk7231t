# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

project(bk7231t-tuya)
cmake_minimum_required(VERSION 3.22)

set(APP_BIN_NAME template)
set(USER_SW_VER 1.0.0)

add_subdirectory(sdk)
add_subdirectory(platforms/bk7231t)
add_subdirectory(apps)
