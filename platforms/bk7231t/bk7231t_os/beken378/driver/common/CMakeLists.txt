# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_driver_common.cmake,
### then re-run ./make-cmake.py







add_library(beken378_driver_common STATIC


    compiler.h
    dd_pub.h
    drv_model.h
    reg/_reg_agc.h
    reg/_reg_dma.h
    reg/_reg_intc.h
    reg/_reg_la.h
    reg/_reg_mac_core.h
    reg/_reg_mac_pl.h
    reg/_reg_mdm_cfg.h
    reg/_reg_mdm_stat.h
    reg/_reg_rc.h
    reg/reg_access.h
    reg/reg_agc.h
    reg/reg_dma.h
    reg/reg_intc.h
    reg/reg_la.h
    reg/reg_mac_core.h
    reg/reg_mac_pl.h
    reg/reg_mdm_cfg.h
    reg/reg_mdm_stat.h
    reg/reg_rc.h



    dd.c
    drv_model.c

)




target_compile_options(beken378_driver_common PRIVATE -mthumb)




target_link_libraries(beken378_driver_common
    PUBLIC
    beken378_common
    beken378_driver_include
)


# target_compile_features(beken378_driver_common PUBLIC c_std_99)
set_target_properties(beken378_driver_common PROPERTIES C_STANDARD 99)




target_include_directories(beken378_driver_common


    PUBLIC SYSTEM
    .





)





