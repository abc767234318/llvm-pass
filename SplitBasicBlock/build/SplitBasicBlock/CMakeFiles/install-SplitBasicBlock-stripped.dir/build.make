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
CMAKE_SOURCE_DIR = /home/ubuntu/github-project/llvm-pass/SplitBasicBlock

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/build

# Utility rule file for install-SplitBasicBlock-stripped.

# Include the progress variables for this target.
include SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/progress.make

SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped:
	cd /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/build/SplitBasicBlock && /usr/bin/cmake -DCMAKE_INSTALL_COMPONENT="SplitBasicBlock" -DCMAKE_INSTALL_DO_STRIP=1 -P /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/build/cmake_install.cmake

install-SplitBasicBlock-stripped: SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped
install-SplitBasicBlock-stripped: SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/build.make

.PHONY : install-SplitBasicBlock-stripped

# Rule to build all files generated by this target.
SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/build: install-SplitBasicBlock-stripped

.PHONY : SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/build

SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/clean:
	cd /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/build/SplitBasicBlock && $(CMAKE_COMMAND) -P CMakeFiles/install-SplitBasicBlock-stripped.dir/cmake_clean.cmake
.PHONY : SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/clean

SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/depend:
	cd /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/github-project/llvm-pass/SplitBasicBlock /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/SplitBasicBlock /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/build /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/build/SplitBasicBlock /home/ubuntu/github-project/llvm-pass/SplitBasicBlock/build/SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : SplitBasicBlock/CMakeFiles/install-SplitBasicBlock-stripped.dir/depend

