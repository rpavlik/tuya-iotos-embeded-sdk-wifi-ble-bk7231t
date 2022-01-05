# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_driver_audio.cmake,
### then re-run ./make-cmake.py







add_library(beken378_driver_audio STATIC


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
    ring_buffer_dma_write.c

)




target_compile_options(beken378_driver_audio PRIVATE -mthumb)




target_link_libraries(beken378_driver_audio
    PUBLIC
    beken378_common
    beken378_driver_include
)


# target_compile_features(beken378_driver_audio PUBLIC c_std_99)
set_target_properties(beken378_driver_audio PROPERTIES C_STANDARD 99)




target_include_directories(beken378_driver_audio


    PUBLIC SYSTEM
    .





)





