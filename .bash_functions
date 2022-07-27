#!/bin/bash

# unpack script for "all" packed files

function unpack () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)	tar xvjf $1	;;
      *.tar.gz)		tar xvzf $1	;;
      *.bz2)		bunzip2 $1	;;
      *.rar)		rar x $1	;;
      *.gz)		gunzip $1	;;
      *.tar)		tar xvf $1	;;
      *.tbz2)		tar xvjf $1	;;
      *.tgz)		tar xvzf $1	;;
      *.zip)		unzip $1	;;
      *.Z)		uncompress $1	;;
      *.7z)		7z x $1		;;
      *)		echo "Don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}


# make directory, then move into it
function mcd () {
    if [ $1 ] ; then
        mkdir $1;
        cd $1;
    else
        echo "Usage: mcd <directory-name>"
    fi
}

# go to folder matching single last character

function cl () {
    
    cd *"$1"

}


# function for fast copying from onyx to directory

function onyxcp () {
    if [ $1 ] && [ $2 ] ; then
        scp akeys@onyx.boisestate.edu:$1 $2
    else
        echo "Usage: onyxcp <onyx file> <target dir>"
    fi
}

#copies $1 to $2 on onyx

function cponyx () {
    if [ $1 ] && [ $2 ] ; then
        scp $1 akeys@onyx.boisestate.edu:$2
    else
        echo "Usage: cponyx <target file> <onyx dir>"
    fi
}



#trs provides offline language specific translation

function trs () {

    if (( $# < 2 )) ; then
        echo "Usage: trs <target lang> <word> "
        echo "<target lang> = cz, du, fr, gr, ic, it, ru, sp"
    elif [ -f $COLLEGE_DIR/translate/dicts/merged/"$1"_ed ] ; then
        for i in ${@:2} ; do
            echo "$i" >> $COLLEGE_DIR/translate/.tempfile
        done
        
        egrep -iwf $COLLEGE_DIR/translate/.tempfile $COLLEGE_DIR/translate/dicts/merged/"$1"_ed
        rm -f $COLLEGE_DIR/translate/.tempfile

    else
        echo "Usage: trs <target lang> <word> "
        echo "<target lang> = cz, du, fr, gr, ic, it, ru, sp"
   fi
}


