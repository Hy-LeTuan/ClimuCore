# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hyle/Documents/code/ClimuCore

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hyle/Documents/code/ClimuCore/build

# Include any dependencies generated for this target.
include CMakeFiles/ClimuCore.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ClimuCore.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ClimuCore.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ClimuCore.dir/flags.make

CMakeFiles/ClimuCore.dir/src/glad.c.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/src/glad.c.o: /home/hyle/Documents/code/ClimuCore/src/glad.c
CMakeFiles/ClimuCore.dir/src/glad.c.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ClimuCore.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/src/glad.c.o -MF CMakeFiles/ClimuCore.dir/src/glad.c.o.d -o CMakeFiles/ClimuCore.dir/src/glad.c.o -c /home/hyle/Documents/code/ClimuCore/src/glad.c

CMakeFiles/ClimuCore.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/ClimuCore.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hyle/Documents/code/ClimuCore/src/glad.c > CMakeFiles/ClimuCore.dir/src/glad.c.i

CMakeFiles/ClimuCore.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/ClimuCore.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hyle/Documents/code/ClimuCore/src/glad.c -o CMakeFiles/ClimuCore.dir/src/glad.c.s

CMakeFiles/ClimuCore.dir/src/main.cpp.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/src/main.cpp.o: /home/hyle/Documents/code/ClimuCore/src/main.cpp
CMakeFiles/ClimuCore.dir/src/main.cpp.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ClimuCore.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/src/main.cpp.o -MF CMakeFiles/ClimuCore.dir/src/main.cpp.o.d -o CMakeFiles/ClimuCore.dir/src/main.cpp.o -c /home/hyle/Documents/code/ClimuCore/src/main.cpp

CMakeFiles/ClimuCore.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ClimuCore.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hyle/Documents/code/ClimuCore/src/main.cpp > CMakeFiles/ClimuCore.dir/src/main.cpp.i

CMakeFiles/ClimuCore.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ClimuCore.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hyle/Documents/code/ClimuCore/src/main.cpp -o CMakeFiles/ClimuCore.dir/src/main.cpp.s

CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o: /home/hyle/Documents/code/ClimuCore/imgui/imgui.cpp
CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o -MF CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o.d -o CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o -c /home/hyle/Documents/code/ClimuCore/imgui/imgui.cpp

CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hyle/Documents/code/ClimuCore/imgui/imgui.cpp > CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.i

CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hyle/Documents/code/ClimuCore/imgui/imgui.cpp -o CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.s

CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o: /home/hyle/Documents/code/ClimuCore/imgui/imgui_demo.cpp
CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o -MF CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o.d -o CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o -c /home/hyle/Documents/code/ClimuCore/imgui/imgui_demo.cpp

CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hyle/Documents/code/ClimuCore/imgui/imgui_demo.cpp > CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.i

CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hyle/Documents/code/ClimuCore/imgui/imgui_demo.cpp -o CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.s

CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o: /home/hyle/Documents/code/ClimuCore/imgui/imgui_draw.cpp
CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o -MF CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o.d -o CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o -c /home/hyle/Documents/code/ClimuCore/imgui/imgui_draw.cpp

CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hyle/Documents/code/ClimuCore/imgui/imgui_draw.cpp > CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.i

CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hyle/Documents/code/ClimuCore/imgui/imgui_draw.cpp -o CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.s

CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o: /home/hyle/Documents/code/ClimuCore/imgui/imgui_tables.cpp
CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o -MF CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o.d -o CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o -c /home/hyle/Documents/code/ClimuCore/imgui/imgui_tables.cpp

CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hyle/Documents/code/ClimuCore/imgui/imgui_tables.cpp > CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.i

CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hyle/Documents/code/ClimuCore/imgui/imgui_tables.cpp -o CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.s

CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o: /home/hyle/Documents/code/ClimuCore/imgui/imgui_widgets.cpp
CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o -MF CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o -c /home/hyle/Documents/code/ClimuCore/imgui/imgui_widgets.cpp

CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hyle/Documents/code/ClimuCore/imgui/imgui_widgets.cpp > CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.i

CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hyle/Documents/code/ClimuCore/imgui/imgui_widgets.cpp -o CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.s

CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o: /home/hyle/Documents/code/ClimuCore/imgui/imgui_impl_glfw.cpp
CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o -MF CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o.d -o CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o -c /home/hyle/Documents/code/ClimuCore/imgui/imgui_impl_glfw.cpp

CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hyle/Documents/code/ClimuCore/imgui/imgui_impl_glfw.cpp > CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.i

CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hyle/Documents/code/ClimuCore/imgui/imgui_impl_glfw.cpp -o CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.s

CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/ClimuCore.dir/flags.make
CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o: /home/hyle/Documents/code/ClimuCore/imgui/imgui_impl_opengl3.cpp
CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/ClimuCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o -c /home/hyle/Documents/code/ClimuCore/imgui/imgui_impl_opengl3.cpp

CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hyle/Documents/code/ClimuCore/imgui/imgui_impl_opengl3.cpp > CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hyle/Documents/code/ClimuCore/imgui/imgui_impl_opengl3.cpp -o CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.s

# Object files for target ClimuCore
ClimuCore_OBJECTS = \
"CMakeFiles/ClimuCore.dir/src/glad.c.o" \
"CMakeFiles/ClimuCore.dir/src/main.cpp.o" \
"CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o" \
"CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o" \
"CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o" \
"CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o" \
"CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o" \
"CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o"

# External object files for target ClimuCore
ClimuCore_EXTERNAL_OBJECTS =

ClimuCore: CMakeFiles/ClimuCore.dir/src/glad.c.o
ClimuCore: CMakeFiles/ClimuCore.dir/src/main.cpp.o
ClimuCore: CMakeFiles/ClimuCore.dir/imgui/imgui.cpp.o
ClimuCore: CMakeFiles/ClimuCore.dir/imgui/imgui_demo.cpp.o
ClimuCore: CMakeFiles/ClimuCore.dir/imgui/imgui_draw.cpp.o
ClimuCore: CMakeFiles/ClimuCore.dir/imgui/imgui_tables.cpp.o
ClimuCore: CMakeFiles/ClimuCore.dir/imgui/imgui_widgets.cpp.o
ClimuCore: CMakeFiles/ClimuCore.dir/imgui/imgui_impl_glfw.cpp.o
ClimuCore: CMakeFiles/ClimuCore.dir/imgui/imgui_impl_opengl3.cpp.o
ClimuCore: CMakeFiles/ClimuCore.dir/build.make
ClimuCore: /usr/lib/x86_64-linux-gnu/libGLX.so
ClimuCore: /usr/lib/x86_64-linux-gnu/libOpenGL.so
ClimuCore: CMakeFiles/ClimuCore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hyle/Documents/code/ClimuCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable ClimuCore"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ClimuCore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ClimuCore.dir/build: ClimuCore
.PHONY : CMakeFiles/ClimuCore.dir/build

CMakeFiles/ClimuCore.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ClimuCore.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ClimuCore.dir/clean

CMakeFiles/ClimuCore.dir/depend:
	cd /home/hyle/Documents/code/ClimuCore/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hyle/Documents/code/ClimuCore /home/hyle/Documents/code/ClimuCore /home/hyle/Documents/code/ClimuCore/build /home/hyle/Documents/code/ClimuCore/build /home/hyle/Documents/code/ClimuCore/build/CMakeFiles/ClimuCore.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ClimuCore.dir/depend

