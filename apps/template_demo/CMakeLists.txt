# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_executable(${APP_BIN_NAME}
    src/tuya_device.c)
target_include_directories(${APP_BIN_NAME} PRIVATE include)

target_link_libraries(${APP_BIN_NAME} PRIVATE tuya_common)
target_link_options(${APP_BIN_NAME} PRIVATE -T ${BK7231_OTA_LINKER_SCRIPT} -Xlinker -Map=tuya.map)

set(APP_VERSION ${USER_SW_VER})

add_custom_command(TARGET ${APP_BIN_NAME} POST_BUILD
    COMMAND
    "${CMAKE_OBJDUMP}" -d "$<TARGET_FILE:${APP_BIN_NAME}>" > "${APP_BIN_NAME}_${APP_VERSION}.asm"
    VERBATIM)

set(binfile "${CMAKE_CURRENT_BINARY_DIR}/${APP_BIN_NAME}_${APP_VERSION}.bin")

set(firmware_fn ${APP_BIN_NAME}_${APP_VERSION}_enc.bin)
set(encbin "${CMAKE_CURRENT_BINARY_DIR}/${firmware_fn}")

add_custom_command(OUTPUT ${binfile}
    COMMAND ${CMAKE_OBJCOPY} -O binary $<TARGET_FILE:${APP_BIN_NAME}> ${binfile}
    COMMAND ${BEKEN_OTAFIX} ${binfile}
    MAIN_DEPENDENCY ${APP_BIN_NAME}
    VERBATIM)

add_custom_command(OUTPUT ${encbin}
    COMMAND ${BEKEN_ENCRYPT} ${binfile} 510fb093 a3cbeadc 5993a17e c7adeb03 10000
    MAIN_DEPENDENCY ${binfile}
    VERBATIM)

set(bootloader ${CMAKE_CURRENT_BINARY_DIR}/bootloader_enc.bin)
add_custom_command(OUTPUT "${bootloader}"
    COMMAND "${CMAKE_COMMAND}" -E copy "${BK7231_ENC_BOOTLOADER}" "${bootloader}"
    MAIN_DEPENDENCY "${BK7231_ENC_BOOTLOADER}"
    VERBATIM)

configure_file(${BK7231_CONFIG_JSON_IN} ${CMAKE_CURRENT_BINARY_DIR}/config.json @ONLY)

add_custom_command(OUTPUT
    "${CMAKE_CURRENT_BINARY_DIR}/all_1.00.bin"
    "${CMAKE_CURRENT_BINARY_DIR}/${firmware_fn}_uart_1.00.bin"
    COMMAND "${BEKEN_PACKAGER}" config.json
    MAIN_DEPENDENCY "${encbin}"
    DEPENDS "${bootloader}" "${CMAKE_CURRENT_BINARY_DIR}/config.json"
    VERBATIM)

add_custom_command(OUTPUT
    "${CMAKE_CURRENT_BINARY_DIR}/${APP_BIN_NAME}_UA_${APP_VERSION}.bin"
    COMMAND "${CMAKE_COMMAND}" -E copy "${CMAKE_CURRENT_BINARY_DIR}/${firmware_fn}_uart_1.00.bin"
    "${CMAKE_CURRENT_BINARY_DIR}/${APP_BIN_NAME}_UA_${APP_VERSION}.bin"
    MAIN_DEPENDENCY "${CMAKE_CURRENT_BINARY_DIR}/${firmware_fn}_uart_1.00.bin"
    VERBATIM)
add_custom_target(app ALL DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/${APP_BIN_NAME}_UA_${APP_VERSION}.bin")
