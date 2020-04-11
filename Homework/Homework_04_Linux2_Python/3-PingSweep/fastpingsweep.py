#!/usr/bin/python3
# Author: Megan Lynn Wilson
# Faster Ping Sweep

import multiprocessing
import subprocess
import os, sys
from datetime import datetime

def ping(IP):
    #Thread worker function
    ping_command = "ping -c 1 " #Assuming Linux
    shell=ping_command+IP
    try:
        subprocess.check_call(
 



if __name__ == '__main__':
    jobs = []
    results = multiprocessing.Queue()

    args = str(sys.argv[1])
    address = args.split('.')
    dot = '.'
    PREFIX = address[0]+dot+address[1]+dot+address[2]+dot
    print("Scanning "+PREFIX+".0/24 ...")
    # start_time = datetime.now()


    pool = [ multiprocessing.Process(target=ping, 
                                    args(jobs, results)),
                                    for i in range(pool_size)
            ]
    for IP in range(1,pool_size+1)
        TARGET = 'PREFIX.{0}'.format(IP)
        pool = multiprocessing.Process(target=ping, args(IP,))
        jobs.append(pool)
        pool.start()


total_time = datetime.now() - start_time
print("Scanning Completed", end =" ")
print("In: "+str(total_time)+" seconds")
