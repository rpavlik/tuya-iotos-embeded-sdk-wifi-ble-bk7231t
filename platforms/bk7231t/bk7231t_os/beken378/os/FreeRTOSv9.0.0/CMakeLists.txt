# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_os_FreeRTOSv9.0.0.cmake,
### then re-run ./make-cmake.py







add_library(beken378_os_FreeRTOSv9.0.0 STATIC


    FreeRTOS/Source/include/FreeRTOS.h
    FreeRTOS/Source/include/StackMacros.h
    FreeRTOS/Source/include/croutine.h
    FreeRTOS/Source/include/deprecated_definitions.h
    FreeRTOS/Source/include/event_groups.h
    FreeRTOS/Source/include/freertos_list.h
    FreeRTOS/Source/include/mpu_prototypes.h
    FreeRTOS/Source/include/mpu_wrappers.h
    FreeRTOS/Source/include/portable.h
    FreeRTOS/Source/include/projdefs.h
    FreeRTOS/Source/include/queue.h
    FreeRTOS/Source/include/semphr.h
    FreeRTOS/Source/include/task.h
    FreeRTOS/Source/include/timers.h
    FreeRTOS/Source/portable/Keil/ARM968es/portmacro.h
    common.h
    rtos.h
    rtos_error.h



    FreeRTOS/Source/croutine.c
    FreeRTOS/Source/event_groups.c
    FreeRTOS/Source/list.c
    FreeRTOS/Source/portable/Keil/ARM968es/port.c
    FreeRTOS/Source/portable/MemMang/heap_4.c
    FreeRTOS/Source/queue.c
    FreeRTOS/Source/tasks.c
    FreeRTOS/Source/timers.c
    rtos_pub.c

)




target_compile_options(beken378_os_FreeRTOSv9.0.0 PRIVATE -marm)




target_link_libraries(beken378_os_FreeRTOSv9.0.0
    PUBLIC
    beken378_common
    beken378_os_include
)


# target_compile_features(beken378_os_FreeRTOSv9.0.0 PUBLIC c_std_99)
set_target_properties(beken378_os_FreeRTOSv9.0.0 PROPERTIES C_STANDARD 99)




target_include_directories(beken378_os_FreeRTOSv9.0.0


    PUBLIC SYSTEM
    FreeRTOS/Source/Include





)





