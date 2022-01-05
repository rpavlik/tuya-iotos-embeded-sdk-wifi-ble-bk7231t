# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_wlan_ui STATIC
    extral_cli.c
    lsig_monitor.c
    wlan_cli.c
    wlan_ui.c)

target_compile_options(beken378_func_wlan_ui PRIVATE -mthumb)

target_link_libraries(beken378_func_wlan_ui PUBLIC beken378_common
                                                   beken378_func_include)

set_target_properties(beken378_func_wlan_ui PROPERTIES C_STANDARD 99)
