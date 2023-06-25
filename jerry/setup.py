from setuptools import setup, Extension

setup(
    name='jerry',
    version='1.0',
    ext_modules=[Extension('jerry', ['src/kruskal.cpp'])],
)
