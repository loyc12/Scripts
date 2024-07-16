#!/bin/bash

# Update and upgrade all packages via the package handlers available on your system

PKG_HNDLR_LIST="apt-get apt dnf yum brew apk" # only implemented those with update, upgrade and autoremove commands
HAS_PKG_HNDLRS=""
PKG_HNDLR_COUNT=0

for HNDLR in $PKG_HNDLR_LIST
do
	$HNDLR --version > /dev/null 2>&1
	if [ $? -eq 0 ]
	then
		((PKG_HNDLR_COUNT++))
		HAS_PKG_HNDLRS=${HAS_PKG_HNDLRS}" $HNDLR"
		printf "$GREEN > ! Found $HNDLR ! <$DEFCOL \n"
	fi
done

if [ $PKG_HNDLR_COUNT -eq 0 ]
then
	printf "\n$RED Cannot find your package handler(s) ! $DEFCOL \n\n"
	exit 1
fi

printf "$MAGENTA \nYou are about to update ( and upgrade ) ALL packages in these &PKG_HNDLER_COUNT package handlers : $PKG_HNDLR $DEFCOL \n\n"

$SCRIPTS/.yes.sh

if [ $? -ne 0 ]
then
	printf "\n$RED Canceling the update opperation !$DEFCOL \n\n"
	exit 1
fi

printf "\n$YELLOW If required, input your sudo password : $DEFCOL \n"
sudo -v
printf "\n"

if [ $? -ne 0 ]
then
	printf "\n$RED > ! Wrong password : aborting update ! <$DEFCOL \n\n"
	exit 1
fi

for HNDLR in $HAS_PKG_HNDLRS
do
	printf "\n$GREEN > ! Updating packages via $HNDLR ! <$DEFCOL \n\n"
	sudo $HNDLR update -y
	sudo $HNDLR upgrade -y
	sudo $HNDLR autoremove -y

	if [ $? -ne 0 ]
	then
		printf "\n$RED > ! Something went wrong with $HNDLR ! <$DEFCOL \n\n"
	fi
done

printf "\n$GREEN > ! Package update done ! <$DEFCOL \n\n"
exit 0