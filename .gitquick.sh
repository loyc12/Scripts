#!/bin/bash

if not git rev-parse --is-inside-work-tree > /dev/null 2>&1
then
	printf "\n$RED Cannot use git here !!!$DEFCOL \n\n"
	exit 1
fi

c_branch=$(git branch | grep \* | cut -d ' ' -f2)
printf "$MAGENTA You are about to autopush these files to the current branch ( $c_branch ) :$DEFCOL \n\n"
git status -s ; printf "\n"

$SCRIPTS/.yes.sh

if [ $? -ne 0 ]
then
	printf "\n$RED Cancelling the quickpush !$DEFCOL \n\n"
	exit 1
fi

git remote update || true
git pull || true
git add * || true
git add -u || true
git status -s || true
git commit -m 'minor (gitquick)' || true
git push || true

if [ $? -ne 0 ]
then
	printf "\n$RED > ! Something went wrong ! <$DEFCOL \n\n"
	exit 1
fi

printf "\n$GREEN > ! Quickpush done ! <$DEFCOL \n\n"
exit 0