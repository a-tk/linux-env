#!/bin/bash
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'\

#fast backtracking directories
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'

#be safe
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#misc program
alias gcc='gcc -Wall'       #always compile with warnings
alias c='clear'             #clear is commonly used, make it shorter
alias ssh='ssh -Y'          #always allow X.org forwarding
alias findd='find * -type d'  #list all directories

#shortcut to onyx ssh
alias onyx='ssh -Y akeys@onyx.boisestate.edu'

#git
alias git-contrib='git log --format="%aN" | sort -n | uniq -c'
