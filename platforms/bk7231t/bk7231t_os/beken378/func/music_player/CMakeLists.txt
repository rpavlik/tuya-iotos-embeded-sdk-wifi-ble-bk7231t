# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

add_library(
    beken378_func_music_player STATIC
    Mp3Lib/assembly.h
    Mp3Lib/coder.h
    Mp3Lib/layer21.h
    Mp3Lib/mp3common.h
    Mp3Lib/mp3dec.h
    Mp3Lib/mpadecobjfixpt.h
    Mp3Lib/statname.h
    app_music.h
    driver_audio_if.h
    fs_fat/diskio.h
    fs_fat/ff.h
    fs_fat/ffconf.h
    fs_fat/integer.h
    fs_fat/playmode_pub.h
    Mp3Lib/asmmisc.S
    Mp3Lib/asmmisc.S
    Mp3Lib/asmpoly_thumb2.S
    Mp3Lib/asmpoly_thumb2.S
    Mp3Lib/bitstream.c
    Mp3Lib/buffers.c
    Mp3Lib/dct32.c
    Mp3Lib/dequant.c
    Mp3Lib/dqchan.c
    Mp3Lib/huffman.c
    Mp3Lib/hufftabs.c
    Mp3Lib/imdct.c
    Mp3Lib/layer21.c
    Mp3Lib/mp3_play.c
    Mp3Lib/mp3dec.c
    Mp3Lib/mp3tabs.c
    Mp3Lib/scalfact.c
    Mp3Lib/stproc.c
    Mp3Lib/subband.c
    Mp3Lib/trigtabs.c
    app_music.c
    driver_audio_if.c
    fs_fat/disk_io.c
    fs_fat/ff.c
    fs_fat/ffsystem.c
    fs_fat/ffunicode.c
    fs_fat/playmode.c)

target_compile_options(beken378_func_music_player PRIVATE -mthumb)

target_link_libraries(beken378_func_music_player PUBLIC beken378_common
                                                        beken378_func_include)

set_target_properties(beken378_func_music_player PROPERTIES C_STANDARD 99)

target_include_directories(beken378_func_music_player PUBLIC SYSTEM .)
