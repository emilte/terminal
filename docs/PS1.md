# PS1 generators:

> Customize terminal prompt for Unix systems

1. https://scriptim.github.io/bash-prompt-generator/ (my favourite)
2. http://bashrcgenerator.com/
3. https://ezprompt.net/
4. https://omar.io/ps1gen/


## My PS1:

```bash
# old/default
PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$'
```


```bash
# [hh:mm:ss] username:pwd git-branch $
PS1='\[\e[0m\][\[\e[0m\]\t\[\e[0m\]] \[\e[0;92m\]\u\[\e[0m\]:\[\e[0;94m\]\w \[\e[0;96m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0m\]$ \[\e[0m\]'
```
