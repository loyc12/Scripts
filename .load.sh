#!/bin/bash

# Loads all the aliases from .gitcmds.sh ( should be sourced at the end of your .zshrc, .bashrc, or any equivalent )
# ex: source $HOME/Scripts/.load.sh

export SCRIPTS=$HOME/Scripts

source $SCRIPTS/.colours.sh
source $SCRIPTS/.gitcmds.sh

alias HELP="$SCRIPTS/.help.sh"

# comment this outif you don't want the help menu to display in every new terminal opened
source $SCRIPTS/.help.sh
