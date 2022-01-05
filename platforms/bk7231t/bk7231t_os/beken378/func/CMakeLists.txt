# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_subdirectory(audio)

add_subdirectory(bk7011_cal)

add_subdirectory(camera_intf)

add_subdirectory(ethernet_intf)

add_subdirectory(fatfs)

add_subdirectory(hostapd-2.5)

add_subdirectory(hostapd_intf)

add_subdirectory(joint_up)

add_subdirectory(key)

add_subdirectory(key_handle)

add_subdirectory(lwip_intf)

add_subdirectory(misc)

add_subdirectory(music_player)

add_subdirectory(net_param_intf)

add_subdirectory(power_save)

add_subdirectory(rf_test)

add_subdirectory(rwnx_intf)

add_subdirectory(sdio_intf)

add_subdirectory(sdio_trans)

add_subdirectory(sd_music)

add_subdirectory(sim_uart)

add_subdirectory(spidma_intf)

add_subdirectory(temp_detect)

add_subdirectory(tuya_pwm)

add_subdirectory(uart_debug)

add_subdirectory(udisk_mp3)

add_subdirectory(usb)

add_subdirectory(user_driver)

add_subdirectory(video_transfer)

add_subdirectory(wlan_ui)

add_library(beken378_func STATIC func.c)

target_compile_options(beken378_func PRIVATE -mthumb)

target_link_libraries(beken378_func PUBLIC beken378_common)

set_target_properties(beken378_func PROPERTIES C_STANDARD 99)

target_include_directories(beken378_func PUBLIC SYSTEM include)
