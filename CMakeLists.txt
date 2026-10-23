cmake_minimum_required(VERSION 3.16)

project(CMakeDemo LANGUAGES C)

# Adresar pro staticke knihovny (*.a)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY
    "${CMAKE_CURRENT_SOURCE_DIR}/lib"
)

file(GLOB LIB_SOURCES
    "${CMAKE_CURRENT_SOURCE_DIR}/lib-src/*.c")

# Staticka knihovna
add_library(calculator STATIC ${LIB_SOURCES})

# Adresar s hlavickovymi soubory
target_include_directories(calculator PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/inc"
)

file(GLOB C_SOURCES
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c"
)

# Hlavni program
add_executable(cmake-demo ${C_SOURCES})

# Propojeni programu s knihovnou
target_link_libraries(cmake-demo PRIVATE calculator)
