# GIT COMMANDS

alias GO='printf "\n$GREEN > cloning repo from given address$DEFCOL \n\n" ; git clone' #						git optain (clone < repo-url >)
alias GS='printf "\n$GREEN > checking branch status$DEFCOL \n\n" ; git status -s ; printf "\n"' #							git status
alias GP='printf "\n$GREEN > pulling branch updates$DEFCOL \n\n" ; git pull ; printf "\n"' #								git pull
alias GU='printf "\n$GREEN > updating remote repos $DEFCOL \n\n" ; git remote update ; printf "\n"' #						git (remote) update
alias GA='printf "\n$GREEN > adding all changes to commit queue$MAGENTA !!!$DEFCOL \n\n" ; git add -A ; git add -u' #	git add -A & -u
alias GC='printf "\n$GREEN > commiting change queue with given message$DEFCOL \n\n" ; git commit -m' #					git commit < message >
alias GL='printf "\n$GREEN > listing all branches$DEFCOL \n\n" ; git branch -a ; printf "\n"' #								git list (branch -a)
alias GD='printf "\n$GREEN > comparing given branches$DEFCOL \n\n" ; git diff' #										git diff < branch_1..branch_1 >
alias GG='printf "\n$GREEN > switching to given branch$DEFCOL \n\n" ; git switch' #										git go (switch)

alias GNB='printf "\n$YELLOW > ! pushing to new branch !$DEFCOL \n\n" ; git push origin' #								git new_branch (push origin < src_branch:new_branch >)
alias GDB='printf "\n$YELLOW > ! unfollowing given branch$DEFCOL \n\n" ; git branch -d' #								git delete_branch (branch -d)
alias GFT='printf "\n$YELLOW > ! fetching from given branch !$DEFCOL \n\n" ; git fetch origin' #						git fetch origin/< branch >
alias GMRG='printf "\n$MAGENTA > !! merging from given branch !!$DEFCOL \n\n" ; git merge' #							git merge < src_branch >
alias GPSH='printf "\n$MAGENTA > !! pushing commited changes to branch !!$DEFCOL \n\n" ; git push ; printf "\n"' #			git push
alias GQCKP='printf "\n$RED > !!! making quick commit !!!$DEFCOL \n\n" ; $SCRIPTS/.gitquick.sh' #						git quickpush
alias GRSET='printf "\n$RED > !!! resetting branch to origin !!!$DEFCOL \n\n" ; git reset --hard' #						git reset --hard origin/< branch >

alias GRLD='printf "\n$GREEN > ! reloading all scripts !$DEFCOL \n\n" ; source $SCRIPTS/.gitcmds.sh'

alias TEST='printf "\n$RED T$MAGENTA E$YELLOW S$GREEN T$BLUE E$CYAN D$DEFCOL \n\n"'

# TODO : add a warning to GRSET (yes/no ?)