# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_driver.cmake,
### then re-run ./make-cmake.py




add_subdirectory(audio)

add_subdirectory(ble)

add_subdirectory(codec)

add_subdirectory(common)

add_subdirectory(dma)

add_subdirectory(entry)

add_subdirectory(fft)

add_subdirectory(flash)

add_subdirectory(general_dma)

add_subdirectory(gpio)

add_subdirectory(i2c)

add_subdirectory(i2s)

add_subdirectory(icu)

add_subdirectory(intc)

add_subdirectory(irda)

add_subdirectory(jpeg)

add_subdirectory(macphy_bypass)

add_subdirectory(phy)

add_subdirectory(pwm)

add_subdirectory(rc_beken)

add_subdirectory(rw_pub)

add_subdirectory(saradc)

add_subdirectory(sdcard)

add_subdirectory(sdio)

add_subdirectory(spi)

add_subdirectory(spidma)

add_subdirectory(sys_ctrl)

add_subdirectory(uart)

add_subdirectory(usb)

add_subdirectory(wdt)




add_library(beken378_driver STATIC


    driver.c

)




target_compile_options(beken378_driver PRIVATE -mthumb)




target_link_libraries(beken378_driver
    PUBLIC
    beken378_common)


# target_compile_features(beken378_driver PUBLIC c_std_99)
set_target_properties(beken378_driver PROPERTIES C_STANDARD 99)




target_include_directories(beken378_driver


    PUBLIC SYSTEM
    include





)





