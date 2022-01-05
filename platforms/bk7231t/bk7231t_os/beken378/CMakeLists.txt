# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

# if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/lib/libble.a)
#     add_library(ble IMPORTED STATIC)
#     set_target_properties(ble PROPERTIES
#         IMPORTED_LOCATION lib/libble.a)
# endif()
# if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/lib/librwnx.a)
#     add_library(rwnx IMPORTED STATIC)
#     set_target_properties(ble PROPERTIES
#         IMPORTED_LOCATION lib/librwnx.a)
# endif()

add_subdirectory(app)
add_subdirectory(common)
# add_subdirectory(demo)
add_subdirectory(driver)
add_subdirectory(func)
# add_subdirectory(ip)
add_subdirectory(os)
