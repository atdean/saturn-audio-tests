#!/usr/bin/env bash

# Modified on 8/13/21 by Amber Dean to account for changed folder structure
# This should reside in the base project directory, one level above src/
# TODO :: For safety, ensure this script's cwd is the project root directory

# SRC_DIR=./src
# BUILD_DIR=./build
# BIN_DIR=./bin

export NCPU=`nproc`

make clean && make -j${NCPU} all

exit 0

