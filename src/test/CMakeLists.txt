cmake_minimum_required(VERSION 3.10)
project(MyProject)

set(CMAKE_CXX_STANDARD 17)

find_package(GTest REQUIRED)

enable_testing()

add_executable(SimpleTest SimpleTest.cpp)
target_link_libraries(
    SimpleTest
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(SimpleTest)