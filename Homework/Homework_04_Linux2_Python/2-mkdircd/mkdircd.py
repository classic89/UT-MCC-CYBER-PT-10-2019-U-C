#!/usr/bin/python3
import sys, os

newdir=sys.argv[1]
newfile=sys.argv[2]

curr_dir=os.getcwd()
print("You are at: "+curr_dir+"\n")
path=curr_dir+"/"+newdir
os.mkdir(path);

extension=".txt"
if extension not in newfile:
    newfile=newfile+extension
    print("you forgot the extension, no worries\n")
print("Path: /"+newdir)
print("Filename: "+newfile )    
my_file = open(path+"/"+newfile,"w+")
my_file.write("Hello Sexy")
my_file.close()
