#!/usr/bin/python3
# Author: Megan Lynn Wilson
# Pingsweep

import sys, os
from datetime import datetime

args = str(sys.argv[1])
address = args.split('.')
dot = '.'
PREFIX = address[0]+dot+address[1]+dot+address[2]+dot
print("Scanning "+PREFIX+".0/24 ...")
ping_command = "ping -c 1 " #Assuming Linux
start_time = datetime.now()
for IP in range(1, 6):
    TARGET = PREFIX+str(IP)
    print("TARGET : "+TARGET+": ")
    shell=ping_command+TARGET
    response = os.popen(shell)
    for line in response.readlines():
        if(line.count("TTL")):
            break
        if(line.count("TTL")):
            print(TARGET+" --> is Live")
total_time = datetime.now() - start_time
print("Scanning Completed", end =" ")
print("In: "+str(total_time)+" seconds")
