# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_func_ethernet_intf INTERFACE ethernet_intf.h)

target_include_directories(beken378_func_ethernet_intf INTERFACE SYSTEM .)
