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
CMAKE_SOURCE_DIR = /media/psf/Home/Documents/coe4dk4_lab_4_2022

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/psf/Home/Documents/coe4dk4_lab_4_2022/build

# Include any dependencies generated for this target.
include CMakeFiles/run.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/run.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/run.dir/flags.make

CMakeFiles/run.dir/channel.c.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/channel.c.o: ../channel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/run.dir/channel.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run.dir/channel.c.o   -c /media/psf/Home/Documents/coe4dk4_lab_4_2022/channel.c

CMakeFiles/run.dir/channel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run.dir/channel.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/psf/Home/Documents/coe4dk4_lab_4_2022/channel.c > CMakeFiles/run.dir/channel.c.i

CMakeFiles/run.dir/channel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run.dir/channel.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/psf/Home/Documents/coe4dk4_lab_4_2022/channel.c -o CMakeFiles/run.dir/channel.c.s

CMakeFiles/run.dir/cleanup.c.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/cleanup.c.o: ../cleanup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/run.dir/cleanup.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run.dir/cleanup.c.o   -c /media/psf/Home/Documents/coe4dk4_lab_4_2022/cleanup.c

CMakeFiles/run.dir/cleanup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run.dir/cleanup.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/psf/Home/Documents/coe4dk4_lab_4_2022/cleanup.c > CMakeFiles/run.dir/cleanup.c.i

CMakeFiles/run.dir/cleanup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run.dir/cleanup.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/psf/Home/Documents/coe4dk4_lab_4_2022/cleanup.c -o CMakeFiles/run.dir/cleanup.c.s

CMakeFiles/run.dir/main.c.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/run.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run.dir/main.c.o   -c /media/psf/Home/Documents/coe4dk4_lab_4_2022/main.c

CMakeFiles/run.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/psf/Home/Documents/coe4dk4_lab_4_2022/main.c > CMakeFiles/run.dir/main.c.i

CMakeFiles/run.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/psf/Home/Documents/coe4dk4_lab_4_2022/main.c -o CMakeFiles/run.dir/main.c.s

CMakeFiles/run.dir/output.c.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/output.c.o: ../output.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/run.dir/output.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run.dir/output.c.o   -c /media/psf/Home/Documents/coe4dk4_lab_4_2022/output.c

CMakeFiles/run.dir/output.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run.dir/output.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/psf/Home/Documents/coe4dk4_lab_4_2022/output.c > CMakeFiles/run.dir/output.c.i

CMakeFiles/run.dir/output.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run.dir/output.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/psf/Home/Documents/coe4dk4_lab_4_2022/output.c -o CMakeFiles/run.dir/output.c.s

CMakeFiles/run.dir/packet_arrival.c.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/packet_arrival.c.o: ../packet_arrival.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/run.dir/packet_arrival.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run.dir/packet_arrival.c.o   -c /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_arrival.c

CMakeFiles/run.dir/packet_arrival.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run.dir/packet_arrival.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_arrival.c > CMakeFiles/run.dir/packet_arrival.c.i

CMakeFiles/run.dir/packet_arrival.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run.dir/packet_arrival.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_arrival.c -o CMakeFiles/run.dir/packet_arrival.c.s

CMakeFiles/run.dir/packet_duration.c.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/packet_duration.c.o: ../packet_duration.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/run.dir/packet_duration.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run.dir/packet_duration.c.o   -c /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_duration.c

CMakeFiles/run.dir/packet_duration.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run.dir/packet_duration.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_duration.c > CMakeFiles/run.dir/packet_duration.c.i

CMakeFiles/run.dir/packet_duration.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run.dir/packet_duration.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_duration.c -o CMakeFiles/run.dir/packet_duration.c.s

CMakeFiles/run.dir/packet_transmission.c.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/packet_transmission.c.o: ../packet_transmission.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/run.dir/packet_transmission.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run.dir/packet_transmission.c.o   -c /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_transmission.c

CMakeFiles/run.dir/packet_transmission.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run.dir/packet_transmission.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_transmission.c > CMakeFiles/run.dir/packet_transmission.c.i

CMakeFiles/run.dir/packet_transmission.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run.dir/packet_transmission.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/psf/Home/Documents/coe4dk4_lab_4_2022/packet_transmission.c -o CMakeFiles/run.dir/packet_transmission.c.s

CMakeFiles/run.dir/simlib.c.o: CMakeFiles/run.dir/flags.make
CMakeFiles/run.dir/simlib.c.o: ../simlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/run.dir/simlib.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run.dir/simlib.c.o   -c /media/psf/Home/Documents/coe4dk4_lab_4_2022/simlib.c

CMakeFiles/run.dir/simlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run.dir/simlib.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/psf/Home/Documents/coe4dk4_lab_4_2022/simlib.c > CMakeFiles/run.dir/simlib.c.i

CMakeFiles/run.dir/simlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run.dir/simlib.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/psf/Home/Documents/coe4dk4_lab_4_2022/simlib.c -o CMakeFiles/run.dir/simlib.c.s

# Object files for target run
run_OBJECTS = \
"CMakeFiles/run.dir/channel.c.o" \
"CMakeFiles/run.dir/cleanup.c.o" \
"CMakeFiles/run.dir/main.c.o" \
"CMakeFiles/run.dir/output.c.o" \
"CMakeFiles/run.dir/packet_arrival.c.o" \
"CMakeFiles/run.dir/packet_duration.c.o" \
"CMakeFiles/run.dir/packet_transmission.c.o" \
"CMakeFiles/run.dir/simlib.c.o"

# External object files for target run
run_EXTERNAL_OBJECTS =

run: CMakeFiles/run.dir/channel.c.o
run: CMakeFiles/run.dir/cleanup.c.o
run: CMakeFiles/run.dir/main.c.o
run: CMakeFiles/run.dir/output.c.o
run: CMakeFiles/run.dir/packet_arrival.c.o
run: CMakeFiles/run.dir/packet_duration.c.o
run: CMakeFiles/run.dir/packet_transmission.c.o
run: CMakeFiles/run.dir/simlib.c.o
run: CMakeFiles/run.dir/build.make
run: CMakeFiles/run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C executable run"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/run.dir/build: run

.PHONY : CMakeFiles/run.dir/build

CMakeFiles/run.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/run.dir/cmake_clean.cmake
.PHONY : CMakeFiles/run.dir/clean

CMakeFiles/run.dir/depend:
	cd /media/psf/Home/Documents/coe4dk4_lab_4_2022/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/psf/Home/Documents/coe4dk4_lab_4_2022 /media/psf/Home/Documents/coe4dk4_lab_4_2022 /media/psf/Home/Documents/coe4dk4_lab_4_2022/build /media/psf/Home/Documents/coe4dk4_lab_4_2022/build /media/psf/Home/Documents/coe4dk4_lab_4_2022/build/CMakeFiles/run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/run.dir/depend

