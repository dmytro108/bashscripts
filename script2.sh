#!/bin/bash


echo ============= Counts files and directories in the give path ==========
# Check the path in params
if [ -e "$1" ]; then
    echo Directory  $1 contains
    # count lines started with 'd' - directory in the ls command output
    dires=$(ls -Al $1 | grep ^d | wc -l)
    # count lines started with '-' - files or 'l' - symlinks in the ls command output
    files=$(ls -Al $1 | grep ^\[-\|l\] | wc -l)
    echo Dirictories: $dires Files: $files
else
    echo No valid path was provided!
fi
