# source $SCRIPTS/.colours.sh

alias HELP="$SCRIPTS/.help.sh"

echo ""
echo " ================================> HELP MENU <================================ "
echo ""
echo "  GIT SHORTCUTS :"
echo ""
echo "    GO   : git optain < repo-url >  : git clone < repo-url >"
echo "    GS   : git status               : git status"
echo "    GP   : git pull                 : git pull"
echo "    GU   : git update               : git remote update"
echo "    GA   : git add                  : git add -A & -u"
echo "    GC   : git commit < message >   : git commit < message >"
echo "    GL   : git list                 : git list"
echo "    GG   : git go < dst_branch >    : git switch dst_branch"
echo "    GD   : git diff < branches >    : git diff < branch_1..branch_2 >"
echo ""
echo "    GNB  : git new < branches >     : git push origin < src_branch:new_branch >"
echo "    GDB  : git delete < branch >    : git branch -d <branch>"
echo "    GFT  : git fetch < branch >     : git fetch origin/< branch >"
echo "    GMRG : git merge < src_branch > : git merge < src_branch >"
echo "    GPSH : git push                 : git push"
echo "    GCQP : git quickpush            : git commit -m 'minor' & git push"
echo "    GRSET: git reset < branch >     : git reset --hard origin/< branch >"
echo ""
echo "    GRLD : reloads the scripts by reruning 'source $SCRIPTS/.load.sh'"
echo "    HELP : displays this menu by reruning '$SCRIPTS/.help.sh'"
echo ""
