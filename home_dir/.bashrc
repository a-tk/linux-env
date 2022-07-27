export COLLEGE_DIR=""
export COLLEGE_BIN=""

if [ -f $COLLEGE_DIR/environment/.bashrc ]; then
        . $COLLEGE_DIR/environment/.bashrc
fi

if [ -f due ] ; then 
    due check
fi
