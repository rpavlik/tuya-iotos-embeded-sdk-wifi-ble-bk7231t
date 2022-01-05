# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_func_audio.cmake,
### then re-run ./make-cmake.py







add_library(beken378_func_audio STATIC


    audio_intf.c

)




target_compile_options(beken378_func_audio PRIVATE -mthumb)




target_link_libraries(beken378_func_audio
    PUBLIC
    beken378_common
    beken378_func_include
)


# target_compile_features(beken378_func_audio PUBLIC c_std_99)
set_target_properties(beken378_func_audio PROPERTIES C_STANDARD 99)








