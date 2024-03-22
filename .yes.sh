source $SCRIPTS/.colours.sh

# asks the user if they want to continue with the script

echo "\n$YELLOW Are you sure you want to continue ?$DEFCOL \n"
read answer

case $answer in
  [yY]|[yY][eE][sS])
    echo "\n$GREEN Continuing ...$DEFCOL \n"
	exit 0 ;;
  *)
    echo "\n$RED Exiting !$DEFCOL \n"
	exit 1 ;;
esac