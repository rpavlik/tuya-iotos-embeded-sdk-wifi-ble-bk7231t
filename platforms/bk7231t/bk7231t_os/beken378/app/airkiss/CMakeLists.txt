# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_app_airkiss STATIC airkiss.h airkiss.c airkiss_main.c)

target_compile_options(beken378_app_airkiss PRIVATE -mthumb)

target_link_libraries(beken378_app_airkiss PUBLIC beken378_common)

set_target_properties(beken378_app_airkiss PROPERTIES C_STANDARD 99)
