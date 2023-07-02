cmake_minimum_required(VERSION 3.12)
project(jerrymander)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

find_package(pybind11 REQUIRED)

pybind11_add_module(jerry src/kruskal.cpp)

