# asks the user if they want to continue with the script

echo "Do you want to continue? (y/yes)"
read answer

case $answer in
  [yY]|[yY][eE][sS])
    echo "Continuing the script..." ; exit 0 ;;
  *)
    echo "Exiting the script." ; exit 1 ;;
esac