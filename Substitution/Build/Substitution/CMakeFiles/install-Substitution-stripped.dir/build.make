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
CMAKE_SOURCE_DIR = /home/ubuntu/github-project/llvm-pass/Substitution

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/github-project/llvm-pass/Substitution/Build

# Utility rule file for install-Substitution-stripped.

# Include the progress variables for this target.
include Substitution/CMakeFiles/install-Substitution-stripped.dir/progress.make

Substitution/CMakeFiles/install-Substitution-stripped:
	cd /home/ubuntu/github-project/llvm-pass/Substitution/Build/Substitution && /usr/bin/cmake -DCMAKE_INSTALL_COMPONENT="Substitution" -DCMAKE_INSTALL_DO_STRIP=1 -P /home/ubuntu/github-project/llvm-pass/Substitution/Build/cmake_install.cmake

install-Substitution-stripped: Substitution/CMakeFiles/install-Substitution-stripped
install-Substitution-stripped: Substitution/CMakeFiles/install-Substitution-stripped.dir/build.make

.PHONY : install-Substitution-stripped

# Rule to build all files generated by this target.
Substitution/CMakeFiles/install-Substitution-stripped.dir/build: install-Substitution-stripped

.PHONY : Substitution/CMakeFiles/install-Substitution-stripped.dir/build

Substitution/CMakeFiles/install-Substitution-stripped.dir/clean:
	cd /home/ubuntu/github-project/llvm-pass/Substitution/Build/Substitution && $(CMAKE_COMMAND) -P CMakeFiles/install-Substitution-stripped.dir/cmake_clean.cmake
.PHONY : Substitution/CMakeFiles/install-Substitution-stripped.dir/clean

Substitution/CMakeFiles/install-Substitution-stripped.dir/depend:
	cd /home/ubuntu/github-project/llvm-pass/Substitution/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/github-project/llvm-pass/Substitution /home/ubuntu/github-project/llvm-pass/Substitution/Substitution /home/ubuntu/github-project/llvm-pass/Substitution/Build /home/ubuntu/github-project/llvm-pass/Substitution/Build/Substitution /home/ubuntu/github-project/llvm-pass/Substitution/Build/Substitution/CMakeFiles/install-Substitution-stripped.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Substitution/CMakeFiles/install-Substitution-stripped.dir/depend

