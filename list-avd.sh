#!/bin/sh
#set -x

# List AVDs available.

# set SEARCH_PATH to $1 if $1 is set and not null, otherwise use default value.
# lookup POSIX: Parameter Expansion.
SEARCH_PATH=${1:-"$HOME/.android/avd"}

find $SEARCH_PATH -name "*.avd" | awk '{gsub(/.*[/]|[.]{1}[^.]+$/, "", $0)} 1'
# See http://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
# for awk examples.
