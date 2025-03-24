cmake_minimum_required(VERSION 3.10)

# Set the project name and version
project(MyProject VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add libraries
add_subdirectory(Logger)

# Add an executable
add_executable(MyProject main.cpp)

# Link required libs
target_link_libraries(MyProject PRIVATE Logger)
