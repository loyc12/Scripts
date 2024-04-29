# GQCKP alias script

if git rev-parse --is-inside-work-tree > /dev/null 2>&1
then
	c_branch=$(git branch | grep \* | cut -d ' ' -f2)
	printf "$MAGENTA You are about to autopush these files to the current branch ( $c_branch ) :$DEFCOL \n\n"
	git status -s ; printf "\n"
else
	printf "\n$RED Cannot use git here !!!$DEFCOL \n\n"
	exit 1
fi

$SCRIPTS/.yes.sh

if [ $? -eq 1 ]
then
	printf "\n$RED Exiting the script !$DEFCOL \n\n"
	exit 1
else
		git remote update || true
		git pull || true
		git add * || true
		git add -u || true
		git status -s || true
		git commit -m 'minor (gitquick)' || true
		git push || true
		printf "\n$BLUE > ! Done ! <$DEFCOL \n\n"
fi

