# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_app_standalone-ap STATIC sa_ap.h sa_ap.c)

target_compile_options(beken378_app_standalone-ap PRIVATE -mthumb)

target_link_libraries(beken378_app_standalone-ap PUBLIC beken378_common)

set_target_properties(beken378_app_standalone-ap PROPERTIES C_STANDARD 99)
