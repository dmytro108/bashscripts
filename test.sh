#!/bin/bash

echo Hello World!
date > /tmp/first_bash_output
pwd >> /tmp/first_bash_output
cat /tmp/first_bash_output

echo Dirictories:
ls -Al /var | grep ^d | wc -l

echo Files:
ls -Al /var | grep ^\[-\|l\] | wc -l
