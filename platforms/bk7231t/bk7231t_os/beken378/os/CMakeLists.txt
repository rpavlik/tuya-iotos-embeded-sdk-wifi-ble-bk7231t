# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_subdirectory(FreeRTOSv9.0.0)

add_library(beken378_os STATIC mem_arch.c str_arch.c)

target_compile_options(beken378_os PRIVATE -marm)

target_link_libraries(beken378_os PUBLIC beken378_common)

set_target_properties(beken378_os PROPERTIES C_STANDARD 99)

target_include_directories(beken378_os PUBLIC SYSTEM include)
