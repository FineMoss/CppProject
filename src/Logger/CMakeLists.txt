add_library(Logger STATIC Logger.cpp)

# Specify include directories for the library
target_include_directories(Logger PUBLIC ${PROJECT_SOURCE_DIR}/Logger)
