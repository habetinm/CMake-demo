cmake_minimum_required(VERSION 3.16)

project(CMakeDemo LANGUAGES C)

# Adresar pro staticke knihovny (*.a)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY
    "${CMAKE_CURRENT_SOURCE_DIR}/lib"
)

add_library(calculator STATIC
    src/calculator.c
)

target_include_directories(calculator PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/inc"
)

add_executable(cmake-demo
    src/main.c
)

target_link_libraries(cmake-demo PRIVATE calculator)
