cmake_minimum_required(VERSION 3.28)
project(ClimuCore)

# export compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# add executables
add_executable(ClimuCore ./src/main.cpp)

# add include directories
target_include_directories(ClimuCore PUBLIC ./imgui)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

