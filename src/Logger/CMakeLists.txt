cmake_minimum_required(VERSION 3.10)

add_library(Logger STATIC Logger.cpp)

# Specify include directories for the library
target_include_directories(Logger PUBLIC .)
