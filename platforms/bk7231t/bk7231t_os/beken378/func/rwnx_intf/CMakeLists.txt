# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_rwnx_intf STATIC
    rw_ieee80211.h
    rw_msdu.h
    rw_msg_rx.h
    rw_msg_tx.h
    rw_ieee80211.c
    rw_msdu.c
    rw_msg_rx.c
    rw_msg_tx.c)

target_compile_options(beken378_func_rwnx_intf PRIVATE -mthumb)

target_link_libraries(beken378_func_rwnx_intf PUBLIC beken378_common
                                                     beken378_func_include)

set_target_properties(beken378_func_rwnx_intf PROPERTIES C_STANDARD 99)
