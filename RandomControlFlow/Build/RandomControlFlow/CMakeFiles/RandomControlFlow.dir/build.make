# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/github-project/llvm-pass/RandomControlFlow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build

# Include any dependencies generated for this target.
include RandomControlFlow/CMakeFiles/RandomControlFlow.dir/depend.make

# Include the progress variables for this target.
include RandomControlFlow/CMakeFiles/RandomControlFlow.dir/progress.make

# Include the compile flags for this target's objects.
include RandomControlFlow/CMakeFiles/RandomControlFlow.dir/flags.make

RandomControlFlow/CMakeFiles/RandomControlFlow.dir/RandomControlFlow.o: RandomControlFlow/CMakeFiles/RandomControlFlow.dir/flags.make
RandomControlFlow/CMakeFiles/RandomControlFlow.dir/RandomControlFlow.o: ../RandomControlFlow/RandomControlFlow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object RandomControlFlow/CMakeFiles/RandomControlFlow.dir/RandomControlFlow.o"
	cd /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/RandomControlFlow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RandomControlFlow.dir/RandomControlFlow.o -c /home/ubuntu/github-project/llvm-pass/RandomControlFlow/RandomControlFlow/RandomControlFlow.cpp

RandomControlFlow/CMakeFiles/RandomControlFlow.dir/RandomControlFlow.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RandomControlFlow.dir/RandomControlFlow.i"
	cd /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/RandomControlFlow && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/github-project/llvm-pass/RandomControlFlow/RandomControlFlow/RandomControlFlow.cpp > CMakeFiles/RandomControlFlow.dir/RandomControlFlow.i

RandomControlFlow/CMakeFiles/RandomControlFlow.dir/RandomControlFlow.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RandomControlFlow.dir/RandomControlFlow.s"
	cd /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/RandomControlFlow && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/github-project/llvm-pass/RandomControlFlow/RandomControlFlow/RandomControlFlow.cpp -o CMakeFiles/RandomControlFlow.dir/RandomControlFlow.s

# Object files for target RandomControlFlow
RandomControlFlow_OBJECTS = \
"CMakeFiles/RandomControlFlow.dir/RandomControlFlow.o"

# External object files for target RandomControlFlow
RandomControlFlow_EXTERNAL_OBJECTS =

RandomControlFlow/RandomControlFlow.so: RandomControlFlow/CMakeFiles/RandomControlFlow.dir/RandomControlFlow.o
RandomControlFlow/RandomControlFlow.so: RandomControlFlow/CMakeFiles/RandomControlFlow.dir/build.make
RandomControlFlow/RandomControlFlow.so: RandomControlFlow/CMakeFiles/RandomControlFlow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module RandomControlFlow.so"
	cd /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/RandomControlFlow && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RandomControlFlow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
RandomControlFlow/CMakeFiles/RandomControlFlow.dir/build: RandomControlFlow/RandomControlFlow.so

.PHONY : RandomControlFlow/CMakeFiles/RandomControlFlow.dir/build

RandomControlFlow/CMakeFiles/RandomControlFlow.dir/clean:
	cd /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/RandomControlFlow && $(CMAKE_COMMAND) -P CMakeFiles/RandomControlFlow.dir/cmake_clean.cmake
.PHONY : RandomControlFlow/CMakeFiles/RandomControlFlow.dir/clean

RandomControlFlow/CMakeFiles/RandomControlFlow.dir/depend:
	cd /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/github-project/llvm-pass/RandomControlFlow /home/ubuntu/github-project/llvm-pass/RandomControlFlow/RandomControlFlow /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/RandomControlFlow /home/ubuntu/github-project/llvm-pass/RandomControlFlow/Build/RandomControlFlow/CMakeFiles/RandomControlFlow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : RandomControlFlow/CMakeFiles/RandomControlFlow.dir/depend

