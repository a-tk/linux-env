#!/bin/bash
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'\

#fast backtracking directories
alias ..='cd ../..'
alias ...='cd ../../..'
alias .4='cd ../../../..'

#fast access to school directories
alias 253='cd $COLLEGE_DIR/cs253/'
alias 230='cd $COLLEGE_DIR/cs230/'
alias 321='cd $COLLEGE_DIR/cs321/'
alias 330='cd $COLLEGE_DIR/ece330'
alias 354='cd $COLLEGE_DIR/cs354'
alias 361='cd $COLLEGE_DIR/cs361'
alias 421='cd $COLLEGE_DIR/cs421'
alias 441='cd $COLLEGE_DIR/cs441'
alias 450='cd $COLLEGE_DIR/cs450'
alias 471='cd $COLLEGE_DIR/cs471'
alias 481='cd $COLLEGE_DIR/cs481'
alias 497='cd $COLLEGE_DIR/cs497'

#MBA aliases
alias mba='cd $COLLEGE_DIR/mba'
alias 500='cd $COLLEGE_DIR/mba/500'

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
