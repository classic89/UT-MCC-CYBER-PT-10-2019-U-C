#!/bin/bash
# Author: Megan Lynn Wilson
# Date: 10/2019
# Homework 2.03
set -o errexit # stop execution on error

curr_dir=$(echo $PWD)'/'
Todos_dir=$1

# Within each of the folders, create an **all.txt** file that combines the to dos included in the individual's to-do lists.
touch all.txt

# Within each of the folders, create a file called **done.txt** that includes only to dos marked as done.
touch done.txt

# Within each of the folders, create a file called **unfinished.txt** that includes only to dos not marked as done.
touch unfinished.txt


# Create a file called **ProductivityReport.md** at the base of the **Todos** folder that specifies the number of to dos each person completed and the number they have left. 
touch ProductivityReport.md


# **Note:** Because of the complexity of this activity, you do not need to use the script to print your results to the ProductivityReport, but you must use a script to do the counting.

