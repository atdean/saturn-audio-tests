#!/usr/bin/env bash

# Modified on 8/13/21 by Amber Dean to account for changed folder structure
# This should reside in the base project directory, one level above src/
# TODO :: For safety, ensure this script's cwd is the project root directory

SRC_DIR=./src
BUILD_DIR=./build
BIN_DIR=./bin

rm -f "$SRC_DIR"/cd/0.bin
rm -f "$SRC_DIR"/*.o # This was originally just *.o, scoped to $SRC_DIR dir
rm -f "$BUILD_DIR"/jo_engine/*.o
rm -f "$BIN_DIR"/*.bin
rm -f "$BIN_DIR"/*.coff
rm -f "$BIN_DIR"/*.elf
rm -f "$BIN_DIR"/*.map
rm -f "$BIN_DIR"/*.iso
rm -f "$BIN_DIR"/*.cue

echo "Done."
exit 0
