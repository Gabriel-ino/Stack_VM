# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /snap/cmake/1132/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1132/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gabriel-c/VM_STACK/sasm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gabriel-c/VM_STACK/sasm

# Include any dependencies generated for this target.
include CMakeFiles/sasm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sasm.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sasm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sasm.dir/flags.make

CMakeFiles/sasm.dir/sasm.cpp.o: CMakeFiles/sasm.dir/flags.make
CMakeFiles/sasm.dir/sasm.cpp.o: sasm.cpp
CMakeFiles/sasm.dir/sasm.cpp.o: CMakeFiles/sasm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabriel-c/VM_STACK/sasm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sasm.dir/sasm.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sasm.dir/sasm.cpp.o -MF CMakeFiles/sasm.dir/sasm.cpp.o.d -o CMakeFiles/sasm.dir/sasm.cpp.o -c /home/gabriel-c/VM_STACK/sasm/sasm.cpp

CMakeFiles/sasm.dir/sasm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sasm.dir/sasm.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel-c/VM_STACK/sasm/sasm.cpp > CMakeFiles/sasm.dir/sasm.cpp.i

CMakeFiles/sasm.dir/sasm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sasm.dir/sasm.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel-c/VM_STACK/sasm/sasm.cpp -o CMakeFiles/sasm.dir/sasm.cpp.s

CMakeFiles/sasm.dir/lexer.cpp.o: CMakeFiles/sasm.dir/flags.make
CMakeFiles/sasm.dir/lexer.cpp.o: lexer.cpp
CMakeFiles/sasm.dir/lexer.cpp.o: CMakeFiles/sasm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabriel-c/VM_STACK/sasm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sasm.dir/lexer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sasm.dir/lexer.cpp.o -MF CMakeFiles/sasm.dir/lexer.cpp.o.d -o CMakeFiles/sasm.dir/lexer.cpp.o -c /home/gabriel-c/VM_STACK/sasm/lexer.cpp

CMakeFiles/sasm.dir/lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sasm.dir/lexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel-c/VM_STACK/sasm/lexer.cpp > CMakeFiles/sasm.dir/lexer.cpp.i

CMakeFiles/sasm.dir/lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sasm.dir/lexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel-c/VM_STACK/sasm/lexer.cpp -o CMakeFiles/sasm.dir/lexer.cpp.s

# Object files for target sasm
sasm_OBJECTS = \
"CMakeFiles/sasm.dir/sasm.cpp.o" \
"CMakeFiles/sasm.dir/lexer.cpp.o"

# External object files for target sasm
sasm_EXTERNAL_OBJECTS =

sasm: CMakeFiles/sasm.dir/sasm.cpp.o
sasm: CMakeFiles/sasm.dir/lexer.cpp.o
sasm: CMakeFiles/sasm.dir/build.make
sasm: CMakeFiles/sasm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gabriel-c/VM_STACK/sasm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sasm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sasm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sasm.dir/build: sasm
.PHONY : CMakeFiles/sasm.dir/build

CMakeFiles/sasm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sasm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sasm.dir/clean

CMakeFiles/sasm.dir/depend:
	cd /home/gabriel-c/VM_STACK/sasm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gabriel-c/VM_STACK/sasm /home/gabriel-c/VM_STACK/sasm /home/gabriel-c/VM_STACK/sasm /home/gabriel-c/VM_STACK/sasm /home/gabriel-c/VM_STACK/sasm/CMakeFiles/sasm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sasm.dir/depend

