#!/bin/bash
# Author: Megan Lynn Wilson
# Date: 10/2019
# Homework 2.01

set -o errexit # stop execution on error

images_folder=$1
out_folder=$(echo $PWD)'/'
absoulte_path=$(dirname $(dirname $out_folder))

echo 'You are at:    '$out_folder
# Create a new file called **PictureCounts.md**.
touch PictureCounts.md

if [ -z "$1" ]; then
  # Fast mode for Megan's speed
  # echo "no folder parameter"
  images_folder="$absoulte_path/resources/Chal-1_Images/Pictures/"
fi

echo 'Your input is: '$images_folder

for dir in 'JPG' 'PNG' 'TIFF'
do
	cd $out_folder
	# Create three folders called: **JPG**, **PNG**, **TIFF**.
	mkdir $dir
	cd $images_folder
        # Locate all **.jpg**, **.png**,**.tiff** files inside the folder 
	# and copy each into their respective folder.
	echo 'Pictures saved to: '$out_folder$dir
	find . -iname '*.'$dir  -exec cp {} $out_folder$dir'/' \;
	cd $out_folder$dir
	# Count how many times each file type occurs 
	# and log the results to the **PictureCounts.md** file. 
	echo $dir': '$(ls -1 | wc -l)
	echo $dir': '$(ls -1 | wc -l) >> ../PictureCounts.md
	cd $images_folder
done
# screenshots of each of the commands being run in the command line and the results shown in the file explorer when relevant.
