# gq alias script

if [[: $(git status) -eq 0 ]]
then
	echo "\n$RED Cannot use git here !!!$DEFCOL \n"
elif [[ $(git status | grep -c "main") -gt 0 ]]
then
	echo "\n$RED Cannot use gitquick on branch main !!!$DEFCOL \n"
elif [[ $(git status | grep -c "MAIN") -gt 0 ]]
then
	echo "\n$RED Cannot use gitquick on branch MAIN !!!$DEFCOL \n"
elif [[ $(git status | grep -c "master") -gt 0 ]]
then
	echo "\n$RED Cannot use gitquick on branch master !!!$DEFCOL \n"
elif [[ $(git status | grep -c "MASTER") -gt 0 ]]
then
	echo "\n$RED Cannot use gitquick on branch MASTER !!!$DEFCOL \n"
elif [[ $(git status | grep -c "STABLE") -gt 0 ]]
then
	echo "\n$RED Cannot use gitquick on branch STABLE !!!$DEFCOL \n"
else
		git remote update || true
		git pull || true
		git status || true
		git add * || true
		git add -u || true
		git status || true
		git commit -m 'minor (gitquick)' || true
		git push || true
		echo "$GREEN ========> ! Done ! <========$DEFCOL \n"
fi

