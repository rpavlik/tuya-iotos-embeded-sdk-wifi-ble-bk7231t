# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_user_driver STATIC
    BkDriverAdc.h
    BkDriverFlash.h
    BkDriverGpio.h
    BkDriverI2c.h
    BkDriverMFiAuth.h
    BkDriverPwm.h
    BkDriverRng.h
    BkDriverRtc.h
    BkDriverSpi.h
    BkDriverTimer.h
    BkDriverUart.h
    BkDriverWdg.h
    BkDriverFlash.c
    BkDriverGpio.c
    BkDriverPwm.c
    BkDriverRng.c
    BkDriverTimer.c
    BkDriverUart.c
    BkDriverWdg.c)

target_compile_options(beken378_func_user_driver PRIVATE -mthumb)

target_link_libraries(beken378_func_user_driver PUBLIC beken378_common
                                                       beken378_func_include)

set_target_properties(beken378_func_user_driver PROPERTIES C_STANDARD 99)
