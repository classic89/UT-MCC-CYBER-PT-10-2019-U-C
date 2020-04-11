#!/bin/bash
# Author: Megan Lynn Wilson
# Homework 2.03

set -o errexit # stop execution on error

PREFIX=$1
echo 'Scanning  $PREFIX.0/24 ... '
for ip in $(seq -f "$PREFIX.%01g" 5)
do
     echo "$i : "
     TARGET=$i
     ping -c 1 $TARGET
done
cat nonexistent_file 
	echo "File exists!" || echo "File does not exist :("



