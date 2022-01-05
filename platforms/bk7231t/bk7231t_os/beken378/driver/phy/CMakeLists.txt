# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_driver_phy.cmake,
### then re-run ./make-cmake.py







add_library(beken378_driver_phy STATIC


    phy.h
    phy_trident.h



    phy_trident.c

)




target_compile_options(beken378_driver_phy PRIVATE -mthumb)




target_link_libraries(beken378_driver_phy
    PUBLIC
    beken378_common
    beken378_driver_include
)


# target_compile_features(beken378_driver_phy PUBLIC c_std_99)
set_target_properties(beken378_driver_phy PROPERTIES C_STANDARD 99)








