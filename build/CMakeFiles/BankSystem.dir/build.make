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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vhdev/Arkch/Banks-Architect

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vhdev/Arkch/Banks-Architect/build

# Include any dependencies generated for this target.
include CMakeFiles/BankSystem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BankSystem.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BankSystem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BankSystem.dir/flags.make

CMakeFiles/BankSystem.dir/main.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/main.cpp.o: ../main.cpp
CMakeFiles/BankSystem.dir/main.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BankSystem.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/main.cpp.o -MF CMakeFiles/BankSystem.dir/main.cpp.o.d -o CMakeFiles/BankSystem.dir/main.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/main.cpp

CMakeFiles/BankSystem.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/main.cpp > CMakeFiles/BankSystem.dir/main.cpp.i

CMakeFiles/BankSystem.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/main.cpp -o CMakeFiles/BankSystem.dir/main.cpp.s

CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o: ../PaymentSystemFacade.cpp
CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o -MF CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o.d -o CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/PaymentSystemFacade.cpp

CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/PaymentSystemFacade.cpp > CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.i

CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/PaymentSystemFacade.cpp -o CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.s

CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o: ../TransmissionManager.cpp
CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o -MF CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o.d -o CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/TransmissionManager.cpp

CMakeFiles/BankSystem.dir/TransmissionManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/TransmissionManager.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/TransmissionManager.cpp > CMakeFiles/BankSystem.dir/TransmissionManager.cpp.i

CMakeFiles/BankSystem.dir/TransmissionManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/TransmissionManager.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/TransmissionManager.cpp -o CMakeFiles/BankSystem.dir/TransmissionManager.cpp.s

CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o: ../TransactionHistory.cpp
CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o -MF CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o.d -o CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/TransactionHistory.cpp

CMakeFiles/BankSystem.dir/TransactionHistory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/TransactionHistory.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/TransactionHistory.cpp > CMakeFiles/BankSystem.dir/TransactionHistory.cpp.i

CMakeFiles/BankSystem.dir/TransactionHistory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/TransactionHistory.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/TransactionHistory.cpp -o CMakeFiles/BankSystem.dir/TransactionHistory.cpp.s

CMakeFiles/BankSystem.dir/PercentManager.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/PercentManager.cpp.o: ../PercentManager.cpp
CMakeFiles/BankSystem.dir/PercentManager.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/BankSystem.dir/PercentManager.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/PercentManager.cpp.o -MF CMakeFiles/BankSystem.dir/PercentManager.cpp.o.d -o CMakeFiles/BankSystem.dir/PercentManager.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/PercentManager.cpp

CMakeFiles/BankSystem.dir/PercentManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/PercentManager.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/PercentManager.cpp > CMakeFiles/BankSystem.dir/PercentManager.cpp.i

CMakeFiles/BankSystem.dir/PercentManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/PercentManager.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/PercentManager.cpp -o CMakeFiles/BankSystem.dir/PercentManager.cpp.s

CMakeFiles/BankSystem.dir/ClientStorage.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/ClientStorage.cpp.o: ../ClientStorage.cpp
CMakeFiles/BankSystem.dir/ClientStorage.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/BankSystem.dir/ClientStorage.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/ClientStorage.cpp.o -MF CMakeFiles/BankSystem.dir/ClientStorage.cpp.o.d -o CMakeFiles/BankSystem.dir/ClientStorage.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/ClientStorage.cpp

CMakeFiles/BankSystem.dir/ClientStorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/ClientStorage.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/ClientStorage.cpp > CMakeFiles/BankSystem.dir/ClientStorage.cpp.i

CMakeFiles/BankSystem.dir/ClientStorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/ClientStorage.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/ClientStorage.cpp -o CMakeFiles/BankSystem.dir/ClientStorage.cpp.s

CMakeFiles/BankSystem.dir/BanksStorage.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/BanksStorage.cpp.o: ../BanksStorage.cpp
CMakeFiles/BankSystem.dir/BanksStorage.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/BankSystem.dir/BanksStorage.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/BanksStorage.cpp.o -MF CMakeFiles/BankSystem.dir/BanksStorage.cpp.o.d -o CMakeFiles/BankSystem.dir/BanksStorage.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/BanksStorage.cpp

CMakeFiles/BankSystem.dir/BanksStorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/BanksStorage.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/BanksStorage.cpp > CMakeFiles/BankSystem.dir/BanksStorage.cpp.i

CMakeFiles/BankSystem.dir/BanksStorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/BanksStorage.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/BanksStorage.cpp -o CMakeFiles/BankSystem.dir/BanksStorage.cpp.s

CMakeFiles/BankSystem.dir/Bank.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/Bank.cpp.o: ../Bank.cpp
CMakeFiles/BankSystem.dir/Bank.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/BankSystem.dir/Bank.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/Bank.cpp.o -MF CMakeFiles/BankSystem.dir/Bank.cpp.o.d -o CMakeFiles/BankSystem.dir/Bank.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/Bank.cpp

CMakeFiles/BankSystem.dir/Bank.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/Bank.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/Bank.cpp > CMakeFiles/BankSystem.dir/Bank.cpp.i

CMakeFiles/BankSystem.dir/Bank.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/Bank.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/Bank.cpp -o CMakeFiles/BankSystem.dir/Bank.cpp.s

CMakeFiles/BankSystem.dir/Client.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/Client.cpp.o: ../Client.cpp
CMakeFiles/BankSystem.dir/Client.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/BankSystem.dir/Client.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/Client.cpp.o -MF CMakeFiles/BankSystem.dir/Client.cpp.o.d -o CMakeFiles/BankSystem.dir/Client.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/Client.cpp

CMakeFiles/BankSystem.dir/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/Client.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/Client.cpp > CMakeFiles/BankSystem.dir/Client.cpp.i

CMakeFiles/BankSystem.dir/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/Client.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/Client.cpp -o CMakeFiles/BankSystem.dir/Client.cpp.s

CMakeFiles/BankSystem.dir/helpers.cpp.o: CMakeFiles/BankSystem.dir/flags.make
CMakeFiles/BankSystem.dir/helpers.cpp.o: ../helpers.cpp
CMakeFiles/BankSystem.dir/helpers.cpp.o: CMakeFiles/BankSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/BankSystem.dir/helpers.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BankSystem.dir/helpers.cpp.o -MF CMakeFiles/BankSystem.dir/helpers.cpp.o.d -o CMakeFiles/BankSystem.dir/helpers.cpp.o -c /Users/vhdev/Arkch/Banks-Architect/helpers.cpp

CMakeFiles/BankSystem.dir/helpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankSystem.dir/helpers.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vhdev/Arkch/Banks-Architect/helpers.cpp > CMakeFiles/BankSystem.dir/helpers.cpp.i

CMakeFiles/BankSystem.dir/helpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankSystem.dir/helpers.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vhdev/Arkch/Banks-Architect/helpers.cpp -o CMakeFiles/BankSystem.dir/helpers.cpp.s

# Object files for target BankSystem
BankSystem_OBJECTS = \
"CMakeFiles/BankSystem.dir/main.cpp.o" \
"CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o" \
"CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o" \
"CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o" \
"CMakeFiles/BankSystem.dir/PercentManager.cpp.o" \
"CMakeFiles/BankSystem.dir/ClientStorage.cpp.o" \
"CMakeFiles/BankSystem.dir/BanksStorage.cpp.o" \
"CMakeFiles/BankSystem.dir/Bank.cpp.o" \
"CMakeFiles/BankSystem.dir/Client.cpp.o" \
"CMakeFiles/BankSystem.dir/helpers.cpp.o"

# External object files for target BankSystem
BankSystem_EXTERNAL_OBJECTS =

BankSystem: CMakeFiles/BankSystem.dir/main.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/PaymentSystemFacade.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/TransmissionManager.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/TransactionHistory.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/PercentManager.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/ClientStorage.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/BanksStorage.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/Bank.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/Client.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/helpers.cpp.o
BankSystem: CMakeFiles/BankSystem.dir/build.make
BankSystem: CMakeFiles/BankSystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable BankSystem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BankSystem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BankSystem.dir/build: BankSystem
.PHONY : CMakeFiles/BankSystem.dir/build

CMakeFiles/BankSystem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BankSystem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BankSystem.dir/clean

CMakeFiles/BankSystem.dir/depend:
	cd /Users/vhdev/Arkch/Banks-Architect/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vhdev/Arkch/Banks-Architect /Users/vhdev/Arkch/Banks-Architect /Users/vhdev/Arkch/Banks-Architect/build /Users/vhdev/Arkch/Banks-Architect/build /Users/vhdev/Arkch/Banks-Architect/build/CMakeFiles/BankSystem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BankSystem.dir/depend
