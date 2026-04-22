#!/bin/bash

# Asks the user if they want to continue with the currently runing script

printf "$YELLOW Are you sure you want to continue ? ( Y/n )$DEFCOL \n\n"
read answer

case $answer in
  [yY]|[yY][eE][sS])
    printf "\n$BLUE Continuing ...$DEFCOL \n\n"
	exit 0 ;;
  *)
    printf "\n$RED Exiting !$DEFCOL \n\n"
	exit 1 ;;
esac