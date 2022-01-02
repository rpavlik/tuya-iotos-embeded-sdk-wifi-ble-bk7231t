# Copyright 2021, Ryan Pavlik
# Copyright 2020, Raspberry Pi (Trading) Ltd.
#
# SPDX-License-Identifier: BSD-3-Clause

# Based in part on the PICO SDK CMake scripts
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm968)

set(CMAKE_SYSROOT /home/devel/rasp-pi-rootfs)
set(CMAKE_STAGING_PREFIX /home/devel/stage)

if(WIN32)
    set(toolchain_bin ${CMAKE_CURRENT_LIST_DIR}/../toolchain/windows/gcc-arm-none-eabi-4_9-2015q1/bin)
    set(toolchain_suffix .exe)
else()
    set(toolchain_bin ${CMAKE_CURRENT_LIST_DIR}/../toolchain/gcc-arm-none-eabi-4_9-2015q1/bin)
    set(toolchain_suffix)
endif()

set(triple arm-none-eabi)
set(CMAKE_C_COMPILER ${toolchain_bin}/${triple}-gcc${toolchain_suffix})
set(CMAKE_CXX_COMPILER ${toolchain_bin}/${triple}-g++${toolchain_suffix})
set(CMAKE_ASM_COMPILER ${toolchain_bin}/${triple}-as${toolchain_suffix})
set(CMAKE_ASM_COMPILE_OBJECT "<CMAKE_ASM_COMPILER> <DEFINES> <INCLUDES> <FLAGS> -o <OBJECT>   -c <SOURCE>")
set(CMAKE_INCLUDE_FLAG_ASM "-I")

set(CMAKE_OBJCOPY ${toolchain_bin}/${triple}-objcopy${toolchain_suffix})
set(CMAKE_OBJDUMP ${toolchain_bin}/${triple}-objdump${toolchain_suffix})

# Disable compiler checks.
set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(CMAKE_C_FLAGS_INIT   " -mcpu=arm968e-s -march=armv5te -mthumb-interwork -mlittle-endian -ffunction-sections -fsigned-char -fdata-sections -std=c99")
set(CMAKE_CXX_FLAGS_INIT " -mcpu=arm968e-s -march=armv5te -mthumb-interwork -mlittle-endian -ffunction-sections -fsigned-char -fdata-sections")
set(CMAKE_ASM_FLAGS_INIT "  -marm -mcpu=arm968e-s -march=armv5te -mthumb-interwork -x assembler-with-cpp")
set(CMAKE_C_LINK_FLAGS   "-Wl,--gc-sections -marm -mcpu=arm968e-s -mthumb-interwork -nostdlib -Wl,-wrap,malloc -Wl,-wrap,free -Wl,-wrap,zalloc")
set(CMAKE_CXX_LINK_FLAGS "${CMAKE_C_LINK_FLAGS}")
set(CMAKE_ASM_LINK_FLAGS "${CMAKE_C_LINK_FLAGS}")

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "RelWithDebInfo")
endif()
set(CMAKE_C_FLAGS_RELWITHDEBINFO_INIT "-Og")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT "${CMAKE_C_FLAGS_RELWITHDEBINFO_INIT}")
set(CMAKE_C_FLAGS_RELEASE_INIT "-Os")
set(CMAKE_CXX_FLAGS_RELEASE_INIT "${CMAKE_C_FLAGS_RELEASE_INIT}")
