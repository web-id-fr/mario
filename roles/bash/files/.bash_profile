#!/bin/bash

# history configuraton
HISTCONTROL=ignoredups # do not store dupplicate commands in history
HISTSIZE=1000 # increase history size

# aliases
alias histogrep='history | grep'
alias reloud='relou'

# adding /usr/local/sbin to PATH (for homebrew)
PATH=/usr/local/sbin:$PATH

# adding this repository /bin files (that are symlinked in ~/.bash_bin) to the path
PATH=$PATH:~/.bash_bin

# useful for accessing any project directory from anywhere using cd
WORKSPACE_DIRECTORY="~/Workspace"
CDPATH=$CDPATH:$WORKSPACE_DIRECTORY

# prompt
source refresh_prompt