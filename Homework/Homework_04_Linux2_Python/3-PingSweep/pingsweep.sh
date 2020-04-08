#!/bin/bash
# Author: Megan Lynn Wilson
# Homework 2.03

set -o errexit # stop execution on error

PREFIX=$1
echo 'Scanning  $PREFIX.0/24 ... '
for i in $(seq -f "$PREFIX.%02g" 5)
do
     echo "$i : "
     TARGET=$i

done



