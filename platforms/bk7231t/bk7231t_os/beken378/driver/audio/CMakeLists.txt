# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_driver_audio STATIC
    audio.h
    audio_pub.h
    ring_buffer.h
    ring_buffer_dma_read.h
    ring_buffer_dma_write.h
    audio.c
    audio_adc.c
    audio_dac.c
    ring_buffer.c
    ring_buffer_dma_read.c
    ring_buffer_dma_write.c)

target_compile_options(beken378_driver_audio PRIVATE -mthumb)

target_link_libraries(beken378_driver_audio PUBLIC beken378_common
                                                   beken378_driver_include)

set_target_properties(beken378_driver_audio PROPERTIES C_STANDARD 99)

target_include_directories(beken378_driver_audio PUBLIC SYSTEM .)
