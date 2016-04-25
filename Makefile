# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_SOURCE_DIR = /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build/CMakeFiles /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named bb

# Build rule for target.
bb: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 bb
.PHONY : bb

# fast build rule for target.
bb/fast:
	$(MAKE) -f CMakeFiles/bb.dir/build.make CMakeFiles/bb.dir/build
.PHONY : bb/fast

#=============================================================================
# Target rules for targets named bc

# Build rule for target.
bc: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 bc
.PHONY : bc

# fast build rule for target.
bc/fast:
	$(MAKE) -f CMakeFiles/bc.dir/build.make CMakeFiles/bc.dir/build
.PHONY : bc/fast

branch_bound.o: branch_bound.cc.o
.PHONY : branch_bound.o

# target to build an object file
branch_bound.cc.o:
	$(MAKE) -f CMakeFiles/bb.dir/build.make CMakeFiles/bb.dir/branch_bound.cc.o
.PHONY : branch_bound.cc.o

branch_bound.i: branch_bound.cc.i
.PHONY : branch_bound.i

# target to preprocess a source file
branch_bound.cc.i:
	$(MAKE) -f CMakeFiles/bb.dir/build.make CMakeFiles/bb.dir/branch_bound.cc.i
.PHONY : branch_bound.cc.i

branch_bound.s: branch_bound.cc.s
.PHONY : branch_bound.s

# target to generate assembly for a file
branch_bound.cc.s:
	$(MAKE) -f CMakeFiles/bb.dir/build.make CMakeFiles/bb.dir/branch_bound.cc.s
.PHONY : branch_bound.cc.s

branch_cut.o: branch_cut.cc.o
.PHONY : branch_cut.o

# target to build an object file
branch_cut.cc.o:
	$(MAKE) -f CMakeFiles/bc.dir/build.make CMakeFiles/bc.dir/branch_cut.cc.o
.PHONY : branch_cut.cc.o

branch_cut.i: branch_cut.cc.i
.PHONY : branch_cut.i

# target to preprocess a source file
branch_cut.cc.i:
	$(MAKE) -f CMakeFiles/bc.dir/build.make CMakeFiles/bc.dir/branch_cut.cc.i
.PHONY : branch_cut.cc.i

branch_cut.s: branch_cut.cc.s
.PHONY : branch_cut.s

# target to generate assembly for a file
branch_cut.cc.s:
	$(MAKE) -f CMakeFiles/bc.dir/build.make CMakeFiles/bc.dir/branch_cut.cc.s
.PHONY : branch_cut.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... bb"
	@echo "... bc"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... branch_bound.o"
	@echo "... branch_bound.i"
	@echo "... branch_bound.s"
	@echo "... branch_cut.o"
	@echo "... branch_cut.i"
	@echo "... branch_cut.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
