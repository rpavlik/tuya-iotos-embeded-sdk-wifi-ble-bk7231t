# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(beken378_driver_rc_beken INTERFACE rc_beken.h)

target_include_directories(beken378_driver_rc_beken INTERFACE SYSTEM .)
