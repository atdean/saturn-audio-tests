# Modified on 8/13/21 by Amber Dean to account for changed folder structure
# This should reside in the base project directory, one level above src/

# TODO :: Add var with absolute path to the project repo base directory
export SRC_DIR = ./src
export BUILD_DIR = ./build
export BIN_DIR = ./bin

export GAME_TITLE = "My Saturn Game"
export GAME_DISCIMG_NAME = "MySaturnGame"

# Optional modules - set to 1 to include, 0 to disable
JO_COMPILE_WITH_VIDEO_MODULE = 0
JO_COMPILE_WITH_BACKUP_MODULE = 0
JO_COMPILE_WITH_TGA_MODULE = 1
JO_COMPILE_WITH_AUDIO_MODULE = 1
JO_COMPILE_WITH_3D_MODULE = 0
JO_COMPILE_WITH_PSEUDO_MODE7_MODULE = 0
JO_COMPILE_WITH_EFFECTS_MODULE = 0
JO_COMPILE_WITH_DUAL_CPU_MODULE = 0

# Enable support for Pseudo Saturn Kai cartridges
JO_PSEUDO_SATURN_KAI_SUPPORT = 1

JO_DEBUG = 1 	# Compile as a debug binary if set to 1
JO_NTSC = 1		# Set to 0 to compile for PAL video output, or 1 for NTSC output

# Compile engine to utilize the official SEGA SGL library
# This also enables you to directly call SGL functions in your project
# TODO :: Remove/comment out? SGL-free builds are not yet fully implemented by JoEngine
JO_COMPILE_USING_SGL = 1

# Include the full list of your project's source code files to compile here
# TODO :: Decide on a cleaner way to include large amount of source files
SRCS = $(SRC_DIR)/main.c

JO_ENGINE_SRC_DIR = $(BUILD_DIR)/jo_engine
COMPILER_DIR = $(BUILD_DIR)/Compiler

# Includes and executes the full non-project-specific build script
include $(COMPILER_DIR)/COMMON/jo_engine_makefile
