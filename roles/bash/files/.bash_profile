#!/bin/bash

# history configuraton
HISTCONTROL=ignoredups # do not store dupplicate commands in history
HISTSIZE=1000 # increase history size

# aliases
alias histogrep='history | grep'
alias reloud='relou'
alias fu='fuck'

eval "$(thefuck --alias)"

# ~/bin contains this repository custom scripts to the path
PATH=$PATH:~/bin:/snap/bin

# useful for accessing any project directory from anywhere using cd
WORKSPACE_DIRECTORY="~/Workspace"
CDPATH=$CDPATH:$WORKSPACE_DIRECTORY:~

# prompt
source refresh_prompt
