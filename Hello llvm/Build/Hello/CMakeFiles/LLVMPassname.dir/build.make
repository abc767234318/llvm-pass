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
CMAKE_SOURCE_DIR = "/home/ping/桌面/github-project/llvm-pass/Hello llvm"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build"

# Include any dependencies generated for this target.
include Hello/CMakeFiles/LLVMPassname.dir/depend.make

# Include the progress variables for this target.
include Hello/CMakeFiles/LLVMPassname.dir/progress.make

# Include the compile flags for this target's objects.
include Hello/CMakeFiles/LLVMPassname.dir/flags.make

Hello/CMakeFiles/LLVMPassname.dir/Hello.cpp.o: Hello/CMakeFiles/LLVMPassname.dir/flags.make
Hello/CMakeFiles/LLVMPassname.dir/Hello.cpp.o: ../Hello/Hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Hello/CMakeFiles/LLVMPassname.dir/Hello.cpp.o"
	cd "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/Hello" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMPassname.dir/Hello.cpp.o -c "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Hello/Hello.cpp"

Hello/CMakeFiles/LLVMPassname.dir/Hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMPassname.dir/Hello.cpp.i"
	cd "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/Hello" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Hello/Hello.cpp" > CMakeFiles/LLVMPassname.dir/Hello.cpp.i

Hello/CMakeFiles/LLVMPassname.dir/Hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMPassname.dir/Hello.cpp.s"
	cd "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/Hello" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Hello/Hello.cpp" -o CMakeFiles/LLVMPassname.dir/Hello.cpp.s

# Object files for target LLVMPassname
LLVMPassname_OBJECTS = \
"CMakeFiles/LLVMPassname.dir/Hello.cpp.o"

# External object files for target LLVMPassname
LLVMPassname_EXTERNAL_OBJECTS =

Hello/libLLVMPassname.so.15git: Hello/CMakeFiles/LLVMPassname.dir/Hello.cpp.o
Hello/libLLVMPassname.so.15git: Hello/CMakeFiles/LLVMPassname.dir/build.make
Hello/libLLVMPassname.so.15git: Hello/CMakeFiles/LLVMPassname.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libLLVMPassname.so"
	cd "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/Hello" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMPassname.dir/link.txt --verbose=$(VERBOSE)
	cd "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/Hello" && $(CMAKE_COMMAND) -E cmake_symlink_library libLLVMPassname.so.15git libLLVMPassname.so.15git libLLVMPassname.so

Hello/libLLVMPassname.so: Hello/libLLVMPassname.so.15git
	@$(CMAKE_COMMAND) -E touch_nocreate Hello/libLLVMPassname.so

# Rule to build all files generated by this target.
Hello/CMakeFiles/LLVMPassname.dir/build: Hello/libLLVMPassname.so

.PHONY : Hello/CMakeFiles/LLVMPassname.dir/build

Hello/CMakeFiles/LLVMPassname.dir/clean:
	cd "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/Hello" && $(CMAKE_COMMAND) -P CMakeFiles/LLVMPassname.dir/cmake_clean.cmake
.PHONY : Hello/CMakeFiles/LLVMPassname.dir/clean

Hello/CMakeFiles/LLVMPassname.dir/depend:
	cd "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/ping/桌面/github-project/llvm-pass/Hello llvm" "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Hello" "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build" "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/Hello" "/home/ping/桌面/github-project/llvm-pass/Hello llvm/Build/Hello/CMakeFiles/LLVMPassname.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : Hello/CMakeFiles/LLVMPassname.dir/depend

