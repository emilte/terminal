# PS1 generators:

> Customize terminal prompt for Unix systems

- http://bashrcgenerator.com/
- https://ezprompt.net/
- https://scriptim.github.io/bash-prompt-generator/
- https://omar.io/ps1gen/

---

# My PS1:

| name/info | PS1 |
| --- | --- |  
| old/default | \\[\e]0;\u@\h: \w\a\\]${debian_chroot:+($debian_chroot)}\\[\033[01;32m\\]\u@\h\\[\033[00m\\]:\\[\033[01;34m\\]\w\\[\033[00m\\]\\$ |
| --- | --- |

> Every backslash \\ must be escaped manually in pasted PS1 when the backslash attempts to escape a special character.


---

# Useful directories:

- https://www.stefaanlippens.net/bashrc_and_others/
- https://www.howtogeek.com/362409/what-is-zsh-and-why-should-you-use-it-instead-of-bash/
- https://medium.com/@kingnand.90/what-is-the-difference-between-bash-profile-and-bashrc-d4c902ac7308

| path | info |
| --- | --- |
| ~/.bashrc | `rc` for Bash. .bashrc is executed for interactive non-login shells. But, if you’ve already logged into your machine and open a new terminal window (xterm) then .bashrc is executed before the window command prompt. .bashrc is also run when you start a new bash instance by typing /bin/bash in a terminal. <br> .bashrc is for the configuring the interactive Bash usage, like Bash aliases, setting your favorite editor, setting the Bash prompt, etc. |
| ~/.bash_profile | .bash_profile is for making sure that both the things in .profile and .bashrc are loaded for login shells. |
| ~/.profile | .profile is for things that are not specifically related to Bash, like environment variables PATH and friends, and should be available anytime. For example, .profile should also be loaded when starting a graphical desktop session. |
| ~/.bash_logout | Executed commands when logging out of terminal. |
| ~/.zshrc | `rc` for Z Shell. |
| ~/.mkshrc | `rc` for MirBSD Korn Shell. |
| ~/.ssh | Location of public key encryption key-pairs and config. |
| --- | --- |

---

# Markdown syntax

- https://www.markdownguide.org/basic-syntax/
- https://www.markdownguide.org/cheat-sheet/

| element | syntax | example | info |
| --- | --- | --- | --- |
| code | \`code\` | `code` | |
| h1 | # heading 1 | | |
| h2 | ## heading 2 | | |
| h3 | ### heading 3 | | |
| h4 | #### heading 4 | | |
| h5 | ##### heading 5 | | |
| h6 | ###### heading 6 | | |
| italic | \*italic\* | *italic* | |
| bold | \*\*bold\*\* | **bold** | |
| blockquote | \> blockquote | | Can be nested. <br> Use \> on empty line to create paragraphs |
| ordered list | n. First item <br> n. Second item <br> n. Third item | 1. First item <br> 2. Second item <br> 3. Third item | n is an arbitrary <br> number, the rendered <br> output will be <br> sorted either way. <br> Can be nested with <br> indent (four spaces or tab). |
| unordered list | - First item <br> - Second item <br> - Third item | | Can be nested with indent (four spaces or tab). |
| images | \!\[Name of image\]\(/path/to/image.png\) | ![Name of image](https://d33wubrfki0l68.cloudfront.net/e7ed9fe4bafe46e275c807d63591f85f9ab246ba/e2d28/assets/images/tux.png) | |
| hr | \-\-\- | | |
| links | \[Name of link\]\(url\ \"Tooltip on hover\") | [Jump to #My PS1](#my-ps1 "Tooltip for My PS1 header") | |
| email or link | \<url\> <br> \<email\> | <jon.doe@gmail.com> | |
| newline | \<br\> | Hello <br> World | |
| --- | --- | --- | --- |
