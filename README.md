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

## Import file if exists:
```bash
if [ -f $HOME/.some_file ]; then
    . $HOME/.some_file
fi
```


# LS_COLORS:

- https://geoff.greer.fm/lscolors/
- http://www.bigsoft.co.uk/blog/2008/04/11/configuring-ls_colors

| Code | Meaning |
| --- | --- |
| Styles | |
| 0 | default colour |
| 1 | bold |
| 4 | underlined |
| 5 | flashing text (disabled on some terminals) |
| 7 | reverse field (exchange foreground and background color) |
| 8 | concealed (invisible) |
| Foreground | |
| 30 | black |
| 31 | red |
| 32 | green |
| 33 | orange |
| 34 | blue |
| 35 | purple |
| 36 | cyan |
| 37 | grey |
| 90 | dark grey |
| 91 | light red |
| 92 | light green |
| 93 | yellow |
| 94 | light blue |
| 95 | light purple |
| 96 | turquoise |
| 97 | white |
| Background | |
| 40  | black background |
| 41  | red background |
| 42  | green background |
| 43  | orange background |
| 44  | blue background |
| 45  | purple background |
| 46  | cyan background |
| 47  | grey background |
| 100 | dark grey background |
| 101 | light red background |
| 102 | light green background |
| 103 | yellow background |
| 104 | light blue background |
| 105 | light purple background |
| 106 | turquoise background |
| 107 | white background |
| Keywords | |
| bd | (BLOCK, BLK)   Block device (buffered) special file |
| cd | (CHAR, CHR)    Character device (unbuffered) special file |
| di | (DIR)  Directory |
| do | (DOOR) [Door][1] |
| ex | (EXEC) Executable file (ie. has 'x' set in permissions) |
| fi | (FILE) Normal file |
| ln | (SYMLINK, LINK, LNK)   Symbolic link. If you set this to ‘target’ instead of a | numerical value, the color is as for the file pointed to.
| mi | (MISSING)  Non-existent file pointed to by a symbolic link (visible when you type | ls -l)
| no | (NORMAL, NORM) Normal (non-filename) text. Global default, although everything should be something |
| or | (ORPHAN)   Symbolic link pointing to an orphaned non-existent file |
| ow | (OTHER_WRITABLE)   Directory that is other-writable (o+w) and not sticky |
| pi | (FIFO, PIPE)   Named pipe (fifo file) |
| sg | (SETGID)   File that is setgid (g+s) |
| so | (SOCK) Socket file |
| st | (STICKY)   Directory with the sticky bit set (+t) and not other-writable |
| su | (SETUID)   File that is setuid (u+s) |
| tw | (STICKY_OTHER_WRITABLE)    Directory that is sticky and other-writable (+t,o+w) |
| *.extension | Every file using this extension e.g. *.rpm = files with the ending .rpm |





## Usage:
Format is `keyword=style;fg;bg` separated by colon `:`.  

### Emils favorite:
```bash
EMIL_LS_COLORS=":di=94:"
```

### Allow for dynamic change of colors:
```bash
CURRENT_LS_COLORS=... # e.g. EMIL_LS_COLORS
```

### Extend current LS_COLORS:
```bash
LS_COLORS="${LS_COLORS}:${CURRENT_LS_COLORS}:" ; export LS_COLORS
```

### Set new LS_COLORS:
```bash
LS_COLORS="${CURRENT_LS_COLORS}:" ; export LS_COLORS
```

### Complete example:
```bash
# LS_COLORS:
EMIL_LS_COLORS=":di=94:"
CURRENT_LS_COLORS=$EMIL_LS_COLORS
LS_COLORS="${CURRENT_LS_COLORS}:" ; export LS_COLORS
```
> copy/paste into ~/.bashrc

# Useful files:

- https://www.stefaanlippens.net/bashrc_and_others/
- https://www.howtogeek.com/362409/what-is-zsh-and-why-should-you-use-it-instead-of-bash/
- https://medium.com/@kingnand.90/what-is-the-difference-between-bash-profile-and-bashrc-d4c902ac7308

| path | info |
| --- | --- |
| ~/.bashrc | `rc` for Bash. .bashrc is executed for interactive non-login shells. But, if you’ve already logged into your machine and open a new terminal window (xterm) then .bashrc is executed before the window command prompt. .bashrc is also run when you start a new bash instance by typing /bin/bash in a terminal. <br> .bashrc is for the configuring the interactive Bash usage, like Bash aliases, setting your favorite editor, setting the Bash prompt, etc. |
| ~/.profile | .profile is for things that are not specifically related to Bash, like environment variables PATH and friends, and should be available anytime. For example, .profile should also be loaded when starting a graphical desktop session. |
| ~/.bash_profile | .bash_profile is for making sure that both the things in .profile and .bashrc are loaded for login shells. |
| ~/.bash_logout | Executed commands when logging out of terminal. |
| ~/.zshrc | `rc` for Z Shell. |
| ~/.mkshrc | `rc` for MirBSD Korn Shell. |
| ~/.ssh | Location of public key encryption key-pairs and config. |
| --- | --- |


# Useful directories, Unix filesystem:

- https://www.geeksforgeeks.org/unix-file-system/

![Unix filesystem](https://nepalisupport.files.wordpress.com/2016/06/linux-filesystem.png)

| path | info |
| --- | --- |
| /bin | Stands for “binaries” and contains certain fundamental utilities, such as ls or cp, which are generally needed by all users. |
| /boot | Contains all the files that are required for successful booting process. |
| /dev | Stands for “devices”. Contains file representations of peripheral devices and pseudo-devices. |
| /etc | Contains system-wide configuration files and system databases. Originally also contained “dangerous maintenance utilities” such as init,but these have typically been moved to /sbin or elsewhere. |
| /home | Contains the home directories for the users. |
| /lib | Contains system libraries, and some critical files such as kernel modules or device drivers. |
| /media | Default mount point for removable devices, such as USB sticks, media players, etc. |
| /mnt | Stands for “mount”. Contains filesystem mount points. These are used, for example, if the system uses multiple hard disks or hard disk partitions. It is also often used for remote (network) filesystems, CD-ROM/DVD drives, and so on. |
<!-- | /proc | procfs virtual filesystem showing information about processes as files. | -->
| /root | The home directory for the superuser “root” – that is, the system administrator. This account’s home directory is usually on the initial filesystem, and hence not in /home (which may be a mount point for another filesystem) in case specific maintenance needs to be performed, during which other filesystems are not available. Such a case could occur, for example, if a hard disk drive suffers physical failures and cannot be properly mounted. |
| /tmp | A place for temporary files. Many systems clear this directory upon startup; it might have tmpfs mounted atop it, in which case its contents do not survive a reboot, or it might be explicitly cleared by a startup script at boot time. |
| /usr | Originally the directory holding user home directories,its use has changed. It now holds executables, libraries, and shared resources that are not system critical, like the X Window System, KDE, Perl, etc. However, on some Unix systems, some user accounts may still have a home directory that is a direct subdirectory of /usr, such as the default as in Minix. (on modern systems, these user accounts are often related to server or system use, and not directly used by a person). |
| /usr/bin | This directory stores all binary programs distributed with the operating system not residing in /bin, /sbin or (rarely) /etc. |
| /usr/include | Stores the development headers used throughout the system. Header files are mostly used by the #include directive in C/C++ programming language. |
| /usr/lib | Stores the required libraries and data files for programs stored within /usr or elsewhere. |
| /var | A short for “variable.” A place for files that may change often – especially in size, for example e-mail sent to users on the system, or process-ID lock files. |
| /var/log | Contains system log files. |
| /var/mail | The place where all the incoming mails are stored. Users (other than root) can access their own mail only. Often, this directory is a symbolic link to /var/spool/mail. |
| /var/spool | Spool directory. Contains print jobs, mail spools and other queued tasks. |
| /var/tmp | A place for temporary files which should be preserved between system reboots. |
| --- | --- |
| --- | --- |
| --- | --- |
| --- | --- |
| --- | --- |
| --- | --- |



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
| blockquote | \> blockquote | | Can be nested. <br> Use \> on empty line <br> to create paragraphs |
| ordered list | n. First item <br> n. Second item <br> n. Third item | 1. First item <br> 2. Second item <br> 3. Third item | n is an arbitrary <br> number, the rendered <br> output will be <br> sorted either way. <br> Can be nested with <br> indent (four spaces or tab). |
| unordered list | - First item <br> - Second item <br> - Third item | | Can be nested <br> with indent (four spaces or tab). |
| images | \!\[Name of image\]\(/path/to/image.png\) | ![Name of image](https://d33wubrfki0l68.cloudfront.net/e7ed9fe4bafe46e275c807d63591f85f9ab246ba/e2d28/assets/images/tux.png) | |
| hr | \-\-\- | | |
| links | \[Name of link\]\(url\ \"Tooltip on hover\") | [Jump to #My PS1](#my-ps1 "Tooltip for My PS1 header") | |
| email or link | \<url\> <br> \<email\> | <jon.doe@gmail.com> | |
| newline | \<br\> | Hello <br> World | |
| --- | --- | --- | --- |
