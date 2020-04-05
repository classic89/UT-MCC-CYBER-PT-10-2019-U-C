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
cd $newdir
echo 'You are at:    '$PWD

extension='.txt'
# if grep -v "$extension" <<< "$newfile"; then
# newfile=$newfile$extension
# fi

touch $newfile
echo 'Start writing: '
$(nano $absolute_path'/'$newfile)
