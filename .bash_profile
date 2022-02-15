echo "Sourcing ~/.bash_profile"

#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

# Source ~/.bashrc if exists
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Source bash_completion if exists
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


### git ###

# Source git-completion.bash if exists
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi
### End: git ###


### ALIAS ###

# ls (but everything)
alias la='ls -la'

# Fetch and pull master from any branch
# alias pm='. ~/.bash_scripts/pm.sh'
### End: ALIAS ###


### pipenv ###
export PIPENV_VENV_IN_PROJECT=1
export LANG="en_US.UTF-8"
# resolves bug with psycopg2
export LDFLAGS="-L/usr/local/opt/openssl/lib" 
export CPPFLAGS="-I/usr/local/opt/openssl/include"
### End: pipenv ###


### pyenv ###
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
### End: pyenv ###

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
# [ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####


