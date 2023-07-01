from setuptools import setup, Extension, find_packages
import pybind11

setup(
    ext_modules=[
        Extension(
            'jerry',
            ['src/kruskal.cpp'],
            include_dirs=[pybind11.get_include()],
            language='c++'
        ),
    ],
    packages=find_packages(where="src"),
)
