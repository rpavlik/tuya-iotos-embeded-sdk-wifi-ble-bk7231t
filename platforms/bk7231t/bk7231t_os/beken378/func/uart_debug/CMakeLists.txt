# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_func_uart_debug.cmake,
### then re-run ./make-cmake.py







add_library(beken378_func_uart_debug STATIC


    cmd_evm.h
    cmd_help.h
    cmd_reg.h
    cmd_rx_sensitivity.h
    command_line.h
    command_table.h
    entry_declare.h
    udebug.h



    cmd_evm.c
    cmd_help.c
    cmd_reg.c
    cmd_rx_sensitivity.c
    command_line.c
    command_table.c
    udebug.c

)




target_compile_options(beken378_func_uart_debug PRIVATE -mthumb)




target_link_libraries(beken378_func_uart_debug
    PUBLIC
    beken378_common
    beken378_func_include
)


# target_compile_features(beken378_func_uart_debug PUBLIC c_std_99)
set_target_properties(beken378_func_uart_debug PROPERTIES C_STANDARD 99)








