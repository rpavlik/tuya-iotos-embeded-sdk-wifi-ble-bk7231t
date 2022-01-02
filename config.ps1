# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

cmake -G Ninja --toolchain platforms/bk7231t/cmake/toolchain.cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
