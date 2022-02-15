echo "Sourcing ~/.bashrc"

#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

# [hh:mm:ss] username:pwd git-branch $
PS1='\[\e[0m\][\[\e[0m\]\t\[\e[0m\]] \[\e[0;92m\]\u\[\e[0m\]:\[\e[0;94m\]\w \[\e[0;96m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0m\]$ \[\e[0m\]'
export PS1

# Ignore duplicates in bash history.
export HISTCONTROL=ignoredups

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
