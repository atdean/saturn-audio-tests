#!/usr/bin/env bash

# TODO :: Add checking/display error if mednafen isn't installed
MEDNAFEN_PATH=$(which mednafen)

# TODO :: Check that game has been built - if not, build project before launching
$MEDNAFEN_PATH ./bin/game.cue