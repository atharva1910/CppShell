# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/qwn/Documents/shell

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qwn/Documents/shell/bin

# Include any dependencies generated for this target.
include CMakeFiles/shell.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shell.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shell.dir/flags.make

CMakeFiles/shell.dir/src/main.cc.o: CMakeFiles/shell.dir/flags.make
CMakeFiles/shell.dir/src/main.cc.o: ../src/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwn/Documents/shell/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shell.dir/src/main.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shell.dir/src/main.cc.o -c /home/qwn/Documents/shell/src/main.cc

CMakeFiles/shell.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shell.dir/src/main.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwn/Documents/shell/src/main.cc > CMakeFiles/shell.dir/src/main.cc.i

CMakeFiles/shell.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shell.dir/src/main.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwn/Documents/shell/src/main.cc -o CMakeFiles/shell.dir/src/main.cc.s

CMakeFiles/shell.dir/src/main.cc.o.requires:

.PHONY : CMakeFiles/shell.dir/src/main.cc.o.requires

CMakeFiles/shell.dir/src/main.cc.o.provides: CMakeFiles/shell.dir/src/main.cc.o.requires
	$(MAKE) -f CMakeFiles/shell.dir/build.make CMakeFiles/shell.dir/src/main.cc.o.provides.build
.PHONY : CMakeFiles/shell.dir/src/main.cc.o.provides

CMakeFiles/shell.dir/src/main.cc.o.provides.build: CMakeFiles/shell.dir/src/main.cc.o


CMakeFiles/shell.dir/src/classes.cc.o: CMakeFiles/shell.dir/flags.make
CMakeFiles/shell.dir/src/classes.cc.o: ../src/classes.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwn/Documents/shell/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/shell.dir/src/classes.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shell.dir/src/classes.cc.o -c /home/qwn/Documents/shell/src/classes.cc

CMakeFiles/shell.dir/src/classes.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shell.dir/src/classes.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwn/Documents/shell/src/classes.cc > CMakeFiles/shell.dir/src/classes.cc.i

CMakeFiles/shell.dir/src/classes.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shell.dir/src/classes.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwn/Documents/shell/src/classes.cc -o CMakeFiles/shell.dir/src/classes.cc.s

CMakeFiles/shell.dir/src/classes.cc.o.requires:

.PHONY : CMakeFiles/shell.dir/src/classes.cc.o.requires

CMakeFiles/shell.dir/src/classes.cc.o.provides: CMakeFiles/shell.dir/src/classes.cc.o.requires
	$(MAKE) -f CMakeFiles/shell.dir/build.make CMakeFiles/shell.dir/src/classes.cc.o.provides.build
.PHONY : CMakeFiles/shell.dir/src/classes.cc.o.provides

CMakeFiles/shell.dir/src/classes.cc.o.provides.build: CMakeFiles/shell.dir/src/classes.cc.o


CMakeFiles/shell.dir/src/mainFunctions.cc.o: CMakeFiles/shell.dir/flags.make
CMakeFiles/shell.dir/src/mainFunctions.cc.o: ../src/mainFunctions.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwn/Documents/shell/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/shell.dir/src/mainFunctions.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shell.dir/src/mainFunctions.cc.o -c /home/qwn/Documents/shell/src/mainFunctions.cc

CMakeFiles/shell.dir/src/mainFunctions.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shell.dir/src/mainFunctions.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwn/Documents/shell/src/mainFunctions.cc > CMakeFiles/shell.dir/src/mainFunctions.cc.i

CMakeFiles/shell.dir/src/mainFunctions.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shell.dir/src/mainFunctions.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwn/Documents/shell/src/mainFunctions.cc -o CMakeFiles/shell.dir/src/mainFunctions.cc.s

CMakeFiles/shell.dir/src/mainFunctions.cc.o.requires:

.PHONY : CMakeFiles/shell.dir/src/mainFunctions.cc.o.requires

CMakeFiles/shell.dir/src/mainFunctions.cc.o.provides: CMakeFiles/shell.dir/src/mainFunctions.cc.o.requires
	$(MAKE) -f CMakeFiles/shell.dir/build.make CMakeFiles/shell.dir/src/mainFunctions.cc.o.provides.build
.PHONY : CMakeFiles/shell.dir/src/mainFunctions.cc.o.provides

CMakeFiles/shell.dir/src/mainFunctions.cc.o.provides.build: CMakeFiles/shell.dir/src/mainFunctions.cc.o


# Object files for target shell
shell_OBJECTS = \
"CMakeFiles/shell.dir/src/main.cc.o" \
"CMakeFiles/shell.dir/src/classes.cc.o" \
"CMakeFiles/shell.dir/src/mainFunctions.cc.o"

# External object files for target shell
shell_EXTERNAL_OBJECTS =

shell: CMakeFiles/shell.dir/src/main.cc.o
shell: CMakeFiles/shell.dir/src/classes.cc.o
shell: CMakeFiles/shell.dir/src/mainFunctions.cc.o
shell: CMakeFiles/shell.dir/build.make
shell: CMakeFiles/shell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qwn/Documents/shell/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable shell"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shell.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shell.dir/build: shell

.PHONY : CMakeFiles/shell.dir/build

CMakeFiles/shell.dir/requires: CMakeFiles/shell.dir/src/main.cc.o.requires
CMakeFiles/shell.dir/requires: CMakeFiles/shell.dir/src/classes.cc.o.requires
CMakeFiles/shell.dir/requires: CMakeFiles/shell.dir/src/mainFunctions.cc.o.requires

.PHONY : CMakeFiles/shell.dir/requires

CMakeFiles/shell.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shell.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shell.dir/clean

CMakeFiles/shell.dir/depend:
	cd /home/qwn/Documents/shell/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qwn/Documents/shell /home/qwn/Documents/shell /home/qwn/Documents/shell/bin /home/qwn/Documents/shell/bin /home/qwn/Documents/shell/bin/CMakeFiles/shell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shell.dir/depend

