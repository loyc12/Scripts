#!/bin/bash

# Defines basic colours for terminal output

# Light colours
export LMAGENTA="\033[0;95m"
export LRED="\033[0;91m"
export LYELLOW="\033[0;93m"
export LGREEN="\033[0;92m"
export LCYAN="\033[0;96m"
export LBLUE="\033[0;94m"

# Light and bold colours
export MAGENTA="\033[1;95m"
export RED="\033[1;91m"
export YELLOW="\033[1;93m"
export GREEN="\033[1;92m"
export CYAN="\033[1;96m"
export BLUE="\033[1;94m"

# Dark colours ( Becomes light if bold )
export DMAGENTA="\033[0;35m"
export DRED="\033[0;31m"
export DYELLOW="\033[0;33m"
export DGREEN="\033[0;32m"
export DCYAN="\033[0;36m"
export DBLUE="\033[0;34m"

# Grayscale colours
export BLACK="\033[1;30m"
export GRAY="\033[1;90m"
export LGRAY="\033[1;37m"
export WHITE="\033[1;97m"

# Modifiers ( do not all work atm)
export DEFCOL="\033[0m"
export BOLD="\033[1m"
export DIM="\033[2m"
export ITAL="\033[3m"
export UDLN="\033[4m"
export BLNK="\033[5m"
export INV="\033[7m"
export HID="\033[8m"
export STRK="\033[9m"