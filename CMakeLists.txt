cmake_minimum_required(VERSION 3.16)

project(CMakeDemo LANGUAGES C)

# Adresar pro staticke knihovny (*.a)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY
    "${CMAKE_CURRENT_SOURCE_DIR}/lib"
)

# Staticka knihovna
add_library(calculator STATIC
    lib-src/calculator.c
)

# Adresar s hlavickovymi soubory
target_include_directories(calculator PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/inc"
)

# Hlavni program
add_executable(cmake-demo
    src/main.c
)

# Propojeni programu s knihovnou
target_link_libraries(cmake-demo PRIVATE calculator)
