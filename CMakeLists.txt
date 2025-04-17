cmake_minimum_required(VERSION 3.28)
project(ClimuCore)

# Export compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Set cmake standards
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the ImGui source files
set(IMGUI_SOURCES
    ./imgui/imgui.cpp
    ./imgui/imgui_demo.cpp
    ./imgui/imgui_draw.cpp
    ./imgui/imgui_tables.cpp
    ./imgui/imgui_widgets.cpp
    ./imgui/imgui_impl_glfw.cpp
    ./imgui/imgui_impl_opengl3.cpp
)

set(SHADER_SOURCES ./src/shaders/shaders.cpp)
set(TEXTURE_SOURCES ./src/texture/stb_image.cpp)

set(UTIL_SOURCES ./src/utils/log_utils.cpp)

# Add executables
add_executable(ClimuCore ./src/glad.c ./src/main.cpp ${IMGUI_SOURCES} ${SHADER_SOURCES} ${TEXTURE_SOURCES} ${UTIL_SOURCES})

# Find OpenGL
find_package(OpenGL REQUIRED)

# Add include directories
target_include_directories(ClimuCore PUBLIC imgui)
target_include_directories(ClimuCore PUBLIC includes/)
target_include_directories(ClimuCore PRIVATE /usr/include/GLFW/)

# Link libraries
# target_link_libraries(ClimuCore PRIVATE glfw)
target_link_libraries(ClimuCore PRIVATE glfw OpenGL::GL)
