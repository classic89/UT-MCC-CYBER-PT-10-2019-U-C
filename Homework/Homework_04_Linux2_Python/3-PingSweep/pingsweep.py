#!/usr/bin/python3
# Author: Megan Lynn Wilson
# Pingsweep

import sys, os, subprocess
from datetime import datetime

args = str(sys.argv[1])
address = args.split('.')
dot = '.'
PREFIX = address[0]+dot+address[1]+dot+address[2]+dot
print("Scanning "+PREFIX+".0/24 ...")
start_time = datetime.now()
for IP in range(125, 130):
    TARGET = PREFIX+str(IP)
    print(TARGET, end =" ")
    try:
        subprocess.check_output(["ping", "-c", "1", TARGET])
        response = True
    except subprocess.CalledProcessError:
        response = False
    if(response == True):
        print(" --> is Live")
    else:
        print()
total_time = datetime.now() - start_time
print("Scanning Completed", end =" ")
print("In: "+str(total_time)+" seconds")
