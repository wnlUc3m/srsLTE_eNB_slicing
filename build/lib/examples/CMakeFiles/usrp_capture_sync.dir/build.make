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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cdonato/srsLTE_oaiCore

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cdonato/srsLTE_oaiCore/build

# Include any dependencies generated for this target.
include lib/examples/CMakeFiles/usrp_capture_sync.dir/depend.make

# Include the progress variables for this target.
include lib/examples/CMakeFiles/usrp_capture_sync.dir/progress.make

# Include the compile flags for this target's objects.
include lib/examples/CMakeFiles/usrp_capture_sync.dir/flags.make

lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o: lib/examples/CMakeFiles/usrp_capture_sync.dir/flags.make
lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o: ../lib/examples/usrp_capture_sync.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cdonato/srsLTE_oaiCore/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o"
	cd /home/cdonato/srsLTE_oaiCore/build/lib/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o   -c /home/cdonato/srsLTE_oaiCore/lib/examples/usrp_capture_sync.c

lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.i"
	cd /home/cdonato/srsLTE_oaiCore/build/lib/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/cdonato/srsLTE_oaiCore/lib/examples/usrp_capture_sync.c > CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.i

lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.s"
	cd /home/cdonato/srsLTE_oaiCore/build/lib/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/cdonato/srsLTE_oaiCore/lib/examples/usrp_capture_sync.c -o CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.s

lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o.requires:
.PHONY : lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o.requires

lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o.provides: lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o.requires
	$(MAKE) -f lib/examples/CMakeFiles/usrp_capture_sync.dir/build.make lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o.provides.build
.PHONY : lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o.provides

lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o.provides.build: lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o

# Object files for target usrp_capture_sync
usrp_capture_sync_OBJECTS = \
"CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o"

# External object files for target usrp_capture_sync
usrp_capture_sync_EXTERNAL_OBJECTS =

lib/examples/usrp_capture_sync: lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o
lib/examples/usrp_capture_sync: lib/examples/CMakeFiles/usrp_capture_sync.dir/build.make
lib/examples/usrp_capture_sync: lib/src/phy/libsrslte_phy.a
lib/examples/usrp_capture_sync: lib/src/phy/rf/libsrslte_rf.so
lib/examples/usrp_capture_sync: lib/src/phy/rf/libsrslte_rf_utils.a
lib/examples/usrp_capture_sync: lib/src/phy/libsrslte_phy.a
lib/examples/usrp_capture_sync: /usr/lib/x86_64-linux-gnu/libfftw3f.so
lib/examples/usrp_capture_sync: /usr/lib/x86_64-linux-gnu/libuhd.so
lib/examples/usrp_capture_sync: lib/examples/CMakeFiles/usrp_capture_sync.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable usrp_capture_sync"
	cd /home/cdonato/srsLTE_oaiCore/build/lib/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/usrp_capture_sync.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/examples/CMakeFiles/usrp_capture_sync.dir/build: lib/examples/usrp_capture_sync
.PHONY : lib/examples/CMakeFiles/usrp_capture_sync.dir/build

lib/examples/CMakeFiles/usrp_capture_sync.dir/requires: lib/examples/CMakeFiles/usrp_capture_sync.dir/usrp_capture_sync.c.o.requires
.PHONY : lib/examples/CMakeFiles/usrp_capture_sync.dir/requires

lib/examples/CMakeFiles/usrp_capture_sync.dir/clean:
	cd /home/cdonato/srsLTE_oaiCore/build/lib/examples && $(CMAKE_COMMAND) -P CMakeFiles/usrp_capture_sync.dir/cmake_clean.cmake
.PHONY : lib/examples/CMakeFiles/usrp_capture_sync.dir/clean

lib/examples/CMakeFiles/usrp_capture_sync.dir/depend:
	cd /home/cdonato/srsLTE_oaiCore/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cdonato/srsLTE_oaiCore /home/cdonato/srsLTE_oaiCore/lib/examples /home/cdonato/srsLTE_oaiCore/build /home/cdonato/srsLTE_oaiCore/build/lib/examples /home/cdonato/srsLTE_oaiCore/build/lib/examples/CMakeFiles/usrp_capture_sync.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/examples/CMakeFiles/usrp_capture_sync.dir/depend

