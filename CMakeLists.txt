# Configure project name
set(PROJECT_NAME PicoLibraries)
# Configure Pico Flash Size in mb
set(FLASH_SIZE 4)

cmake_minimum_required(VERSION 3.12)

include(pico_sdk_import.cmake)
include($ENV{PICO_SDK_PATH}/tools/CMakeLists.txt)

project(PROJECT_NAME)

pico_sdk_init()

# Adding libraries
# add_subdirectory(744051)
# add_subdirectory(shift_register)
# add_subdirectory(AHT21)
# add_subdirectory(flash_lib)

add_executable(PROJECT_NAME
        main.c
)

target_link_libraries(PROJECT_NAME
        pico_stdlib
        # 744051
        # shift_register
        # AHT21
        # flash_lib
)

add_compile_definitions(PICO_FLASH_SIZE_BYTES=FLASH_SIZE*1024*1024)

pico_enable_stdio_usb(PROJECT_NAME 1)
pico_enable_stdio_uart(PROJECT_NAME 0)

pico_add_extra_outputs(PROJECT_NAME)
