#!/bin/bash

echo Hello World!
date > /tmp/first_bash_output
pwd >> /tmp/first_bash_output
cat /tmp/first_bash_output


echo "Directory  $1 contains"
files = eval "ls -Al $1 | grep ^d | wc -l"
dires = eval "ls -Al $1 | grep ^\[-\|l\] | wc -l"
echo Dirictories: $dires Files: $files

