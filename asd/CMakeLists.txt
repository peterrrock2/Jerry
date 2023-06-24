cmake_minimum_required(VERSION 3.10)
project(jerry)

set(CMAKE_CXX_STANDARD 11)

# Find Python package and get the include directory
find_package(Python3 COMPONENTS Development)
include_directories(${Python3_INCLUDE_DIRS})

add_library(jerry SHARED src/kruskal.cpp)
target_include_directories(jerry PUBLIC include)
target_link_libraries(jerry ${Python3_LIBRARIES})
