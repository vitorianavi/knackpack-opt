# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# Include any dependencies generated for this target.
include CMakeFiles/bc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bc.dir/flags.make

CMakeFiles/bc.dir/branch_cut.cc.o: CMakeFiles/bc.dir/flags.make
CMakeFiles/bc.dir/branch_cut.cc.o: ../branch_cut.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/bc.dir/branch_cut.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bc.dir/branch_cut.cc.o -c /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/branch_cut.cc

CMakeFiles/bc.dir/branch_cut.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bc.dir/branch_cut.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/branch_cut.cc > CMakeFiles/bc.dir/branch_cut.cc.i

CMakeFiles/bc.dir/branch_cut.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bc.dir/branch_cut.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/branch_cut.cc -o CMakeFiles/bc.dir/branch_cut.cc.s

CMakeFiles/bc.dir/branch_cut.cc.o.requires:
.PHONY : CMakeFiles/bc.dir/branch_cut.cc.o.requires

CMakeFiles/bc.dir/branch_cut.cc.o.provides: CMakeFiles/bc.dir/branch_cut.cc.o.requires
	$(MAKE) -f CMakeFiles/bc.dir/build.make CMakeFiles/bc.dir/branch_cut.cc.o.provides.build
.PHONY : CMakeFiles/bc.dir/branch_cut.cc.o.provides

CMakeFiles/bc.dir/branch_cut.cc.o.provides.build: CMakeFiles/bc.dir/branch_cut.cc.o

# Object files for target bc
bc_OBJECTS = \
"CMakeFiles/bc.dir/branch_cut.cc.o"

# External object files for target bc
bc_EXTERNAL_OBJECTS =

bc: CMakeFiles/bc.dir/branch_cut.cc.o
bc: CMakeFiles/bc.dir/build.make
bc: CMakeFiles/bc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bc.dir/build: bc
.PHONY : CMakeFiles/bc.dir/build

CMakeFiles/bc.dir/requires: CMakeFiles/bc.dir/branch_cut.cc.o.requires
.PHONY : CMakeFiles/bc.dir/requires

CMakeFiles/bc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bc.dir/clean

CMakeFiles/bc.dir/depend:
	cd /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build /home/anavi/Dropbox/UFAM/Graduação/IOC/knapotatosack/build/CMakeFiles/bc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bc.dir/depend

