source $SCRIPTS/.colours.sh

# asks the user if they want to continue with the script

echo "$YELLOW Are you sure you want to continue ? ( y/yes )$DEFCOL \n"
read answer

case $answer in
  [yY]|[yY][eE][sS])
    echo "\n$BLUE Continuing ...$DEFCOL \n"
	exit 0 ;;
  *)
    echo "\n$RED Exiting !$DEFCOL \n"
	exit 1 ;;
esac