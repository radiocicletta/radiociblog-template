#!/bin/bash

##
# Read configuration
##
. conf.sh


##
# Kill everything when you type ctrl c
# and remove queue temp file
##
function kill_all() {
    rm -rf $LOGFILE
    [ "$(jobs -p)" = "" ] && return
    kill $(jobs -p)
}
trap 'kill_all' EXIT


##
# Task for building styles
##
function build_styles() {
    $CMD_STYLECOMPILE
    $CMD_STYLELINT
}


##
# The queue file
##
LOGFILE=$(mktemp)

##
# Cleanup and build
##
build_styles

[ "$1" = "build" ] && exit 0

echo "[BUILD DONE: start watching... ]"

##
# Run the development server
##
python -m SimpleHTTPServer &

##
# Log events to a file
##
inotifywait -qmr -e modify -o $LOGFILE \
    --format "%w%f" \
    --exclude "(.*.swp|${EXCLUDE})" \
    . &

##
# Look for event queue and react
##
while inotifywait -qq -e modify ${LOGFILE}
do
    MODFILE=$(tail -n 1 ${LOGFILE})
    EXT=${MODFILE##*\.}

    case $EXT in
        scss)
            build_styles
        ;;
        *)
            echo ignoring $MODFILE
        ;;
    esac
done

