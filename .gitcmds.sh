# GIT COMMANDS
alias GO='echo "\n$GREEN > cloning repo from given address <$DEFCOL \n" &! git clone' #									git optain (clone < repo-url >)
alias GS='echo "\n$GREEN > checking branch status <$DEFCOL \n" &! git status' #											git status
alias GP='echo "\n$GREEN > pulling branch updates <$DEFCOL \n" &! git pull --rebase' #									git pull
alias GU='echo "\n$GREEN > updating remote repos  <$DEFCOL \n" &! git remote update' #									git (remote) update
alias GA='echo "\n$GREEN > adding all changes to commit queue \033[1;91m!!! <$DEFCOL \n" &! git add -A && git add -u' #	git add -A & -u
alias GC='echo "\n$GREEN > commiting change queue with given message <$DEFCOL \n" &! git commit -m' #					git commit < message >
alias GL='echo "\n$GREEN > listing all branches <$DEFCOL \n" &! git branch -a' #										git list (branch -a)
alias GD='echo "\n$GREEN > comparing given branches <$DEFCOL \n" &! git diff' #											git diff < branch_1..branch_1 >
alias GG='echo "\n$GREEN > switching to given branch <$DEFCOL \n" &! git switch' #										git go (switch)

alias GPB='echo "\n$YELLOW > ! pulling from given branch ! <$DEFCOL \n" &! git pull origin' #							git pull_branch   ( pull origin < src_branch > )
alias GNB='echo "\n$YELLOW > ! pushing to new branch ! <$DEFCOL \n" &! git push origin' #								git new_branch    ( push origin < src_branch:new_branch > )
alias GDB='echo "\n$YELLOW > ! unfollowing given branch <$DEFCOL \n" &! git branch -d' #								git delete_branch ( branch -d )
alias GFB='echo "\n$YELLOW > ! fetching from given branch ! <$DEFCOL \n" &! git fetch origin' #							git fetch origin/< branch >
alias GRA='echo "\n$YELLOW > ! aborting current rebase ! <$DEFCOL \n" &! git rebase --abort' #							git rebase --abort
alias GMRG='echo "\n$MAGENTA > !! merging from given branch !! <$DEFCOL \n" &! git merge' #								git merge < src_branch >
alias GPSH='echo "\n$MAGENTA > !! pushing commited changes to branch !! <$DEFCOL \n" &! git push' #						git push
alias GQCKP='echo "\n$RED > !!! making quick commit !!! <$DEFCOL \n" &! $SCRIPTS/.gitquick.sh' #						git quickpush
alias GRSET='echo "\n$RED > !!! resetting branch to origin !!! <$DEFCOL \n" &! git reset --hard' #						git reset --hard origin/< branch >

alias GRLD='echo "\n$GREEN > ! reloading all scripts ! <$DEFCOL \n" &! source $SCRIPTS/.gitcmds.sh'

# implement colours codes (for zsh terminals)
# use script to fix order issues (use gq script as example)
# implement a Y/n for dangerous commands

alias TEST='echo "$GREEN test$DEFCOL \n"'
