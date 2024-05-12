# source $SCRIPTS/.colours.sh

alias HELP="$SCRIPTS/.help.sh"

printf "\n"
printf "$GREEN ================================> HELP MENU <================================$DEFCOL"
printf "\n"
printf "\n $CYAN GIT SHORTCUTS :$DEFCOL"
printf "\n"
printf "\n   GO   : git optain < repo-url >  : git clone < repo-url >"
printf "\n   GS   : git status               : git status"
printf "\n   GP   : git pull                 : git pull"
printf "\n   GU   : git update               : git remote update"
printf "\n   GA   : git add                  : git add -A & git add -u"
printf "\n   GC   : git commit < message >   : git commit -m < message >"
printf "\n   GL   : git list                 : git list"
printf "\n   GG   : git go < branch >        : git switch < branch >"
printf "\n   GD   : git diff < branches >    : git diff < branch_1..branch_2 >"
printf "\n"
printf "\n   GFB  : git fetch < branch >     : git fetch origin/< branch >"
printf "\n   GNB  : git new < branches >     : git push origin < src_branch:new_branch >"
printf "\n   GDB  : git delete < branch >    : git branch -d <branch>"
printf "\n   GRA  : git rebase --abort       : git rebase --abort"
printf "\n   GMRG : git merge < src_branch > : git merge < src_branch >"
printf "\n   GPSH : git push                 : git push"
printf "\n   GQCKP: git quickpush            : git add -A & commit -m 'minor' & push"
printf "\n   GRSET: git reset                : git reset --hard origin"
printf "\n"
printf "\n   GRLD : reloads the scripts [ $SCRIPTS/.load.sh ]"
printf "\n   HELP : displays this menu  [ $SCRIPTS/.help.sh ]"
printf "\n\n"
