#!/bin/bash
# Author: Megan Lynn Wilson
# Date: 10/2019
# Homework 2.03
set -o errexit # stop execution on error

curr_dir=$(echo $PWD)'/'
absolute_path=$(dirname $(dirname $curr_dir))
todos_dir=$1
echo 'You are at:     '$curr_dir
if [ -z "$1" ]; then
     # Fast mode for Megan's speed
     # echo "no folder parameter"
     todos_dir=$absolute_path'/resources/Chal-3_Todos/Todos'
fi
echo 'Your input is:  '$todos_dir

cd $todos_dir

for dir in */; 
do
    echo "$dir"
    cd $dir
    touch all.txt done.txt unfinished.txt
    # Within each of the folders, create an **all.txt** file that combines the to dos included in the individual's to-do lists.
    find . -type f ! -name "*.txt" -exec cat >> 'all.txt' {} \;    # Within each of the folders, create a file called **done.txt** that includes only to dos marked as done.
    grep -wi 'DONE' 'all.txt'  >> 'done.txt'
    # Within each of the folders, create a file called **unfinished.txt** that includes only to dos not marked as done.
    grep -wiv 'DONE' 'all.txt'  >> 'unfinished.txt'
    # Create a file called **ProductivityReport.md** at the base of the **Todos** folder that specifies the number of to dos each person completed and the number they have left. 
    echo $dir': '$(wc -l < unfinished.txt)'/'$(wc -l < all.txt) >> $todos_dir/ProductivityReport.md
    cd ..
done



# Create a file called **ProductivityReport.md** at the base of the **Todos** folder that specifies the number of to dos each person completed and the number they have left. 



# **Note:** Because of the complexity of this activity, you do not need to use the script to print your results to the ProductivityReport, but you must use a script to do the counting.

