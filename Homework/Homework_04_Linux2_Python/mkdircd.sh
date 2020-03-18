#!/bin/bash
# Author: Megan Lynn Wilson
# Homework 2.01
set -o errexit # stop execution on error

newdir=$1
newfile=$2

curr_dir=$(echo $PWD)'/'
absolute_path=$(dirname $(dirname $curr_dir))
echo 'You are at:     '$curr_dir

mkdir $newdir
# chmod 755 $newdir
cd $newdir
echo 'You are at:    '$PWD

extension='.txt'
# if grep -v "$extension" <<< "$newfile"; then
# newfile=$newfile$extension
# fi

touch $newfile
chmod 755 $newfile
echo 'You are in Nano (Ctrl-X to quit): '
echo $(nano $newfile)


