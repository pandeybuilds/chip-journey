# This file tells CLion (through CMake) how to build the programs in this folder.
# cmake_minimum_required sets the lowest CMake version that will work.
cmake_minimum_required(VERSION 3.20)

# The project name and the language it is written in.
project(week01_number_systems C)

# Use a modern, stable version of the C language.
set(CMAKE_C_STANDARD 11)

# Build a runnable program named "base_convert" from the source file base_convert.c.
# When we add the second artifact later, we add another line just like this for it.
add_executable(base_convert base_convert.c)
