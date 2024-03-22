# GQCKP alias script

if git rev-parse --is-inside-work-tree > /dev/null 2>&1
then
	c_branch=$(git branch | grep \* | cut -d ' ' -f2)
	echo "$MAGENTA You are about to autopush to the current branch ( $c_branch )$DEFCOL \n"
else
	echo "\n$RED Cannot use git here !!!$DEFCOL \n"
	exit 1
fi

$SCRIPTS/.yes.sh

if [ $? -eq 1 ]
then
	echo "\n$RED Exiting the script !$DEFCOL \n"
	exit 1
else
		git remote update || true
		git pull || true
		git status || true
		git add * || true
		git add -u || true
		git status || true
		git commit -m 'minor (gitquick)' || true
		git push || true
		echo "\n$BLUE ========> ! Done ! <========$DEFCOL \n"
fi

