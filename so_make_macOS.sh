#!/bin/bash

c++ -O3 -Wall -shared -std=c++11 -undefined dynamic_lookup $(python3 -m pybind11 --includes) jerry/src/kruskal.cpp -o jerry$(python3-config --extension-suffix)   