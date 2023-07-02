#!/bin/bash

mkdir build
cd build
cmake ..
make
cd ..
echo "cmake build finished successfully."
# python setup.py sdist bdist_wheel --universal
# echo "Wheel file created successfully."

# pip install dist/jerry-1.0-cp311-cp311-linux_x86_64.whl --force-reinstall
# echo "jerry installed by pip"