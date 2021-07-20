# PS1 generators:
customize terminal prompt for Unix systems
- http://bashrcgenerator.com/
- https://ezprompt.net/
- https://scriptim.github.io/bash-prompt-generator/
- https://omar.io/ps1gen/


# My PS1:
old/default prompt: 


# Useful directories:
https://www.stefaanlippens.net/bashrc_and_others/
https://www.howtogeek.com/362409/what-is-zsh-and-why-should-you-use-it-instead-of-bash/
https://medium.com/@kingnand.90/what-is-the-difference-between-bash-profile-and-bashrc-d4c902ac7308

| path | info |
|---|---|
| ~/.bashrc | .bashrc is executed for interactive non-login shells. But, if you’ve already logged into your machine and open a new terminal window (xterm) then .bashrc is executed before the window command prompt. .bashrc is also run when you start a new bash instance by typing /bin/bash in a terminal. <br> .bashrc is for the configuring the interactive Bash usage, like Bash aliases, setting your favorite editor, setting the Bash prompt, etc. |
| ~/.bash_profile | .bash_profile is for making sure that both the things in .profile and .bashrc are loaded for login shells. |
| ~/.profile | .profile is for things that are not specifically related to Bash, like environment variables PATH and friends, and should be available anytime. For example, .profile should also be loaded when starting a graphical desktop session. |
| ~/.bash_logout | Executed commands when logging out of terminal |
| ~/.zshrc | ´rc´ for Z Shell. |
| ~/.mkshrc | 'rc' `rc` for MirBSD Korn Shell |
| ~/.ssh | Location of public key encryption key-pairs and config. |

