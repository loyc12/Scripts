# source $SCRIPTS/.colours.sh

# asks the user if they want to continue with the script

printf "$YELLOW Are you sure you want to continue ? ( y | yes )$DEFCOL \n\n"
read -p  "$YELLOW Are you sure you want to continue ? ( Y/n )$DEFCOL \n\n" answer

case $answer in
  [yY]|[yY][eE][sS])
    printf "\n$BLUE Continuing ...$DEFCOL \n\n"
	exit 0 ;;
  *)
    printf "\n$RED Exiting !$DEFCOL \n\n"
	exit 1 ;;
esac