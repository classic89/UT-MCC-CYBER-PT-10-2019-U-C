#!/usr/bin/python3
# Auther: Megan Lynn Wilson
# Administrator accounts list
import sys, os, subprocess
from datetime import datetime

adminList = [
    {
        "username": "DaBigBoss",
        "password": "DaBest"
    },
    {
        "username": "root",
        "password": "toor"
    }
]
def getCred():
    userInfo = {
            "username":"unknown",
            "password":"unknown"
        }
    userInfo["username"] = str(input("Username? "))
    userInfo["password"] = str(input("Password? "))
    return userInfo
def checkLogin(userInfo, adminList):
    if (userInfo in adminList):
        return True
    else:
        return False
user = getCred()
loggedIn = checkLogin(user, adminList)
print("User = "+str(user))
print("LoggedIn ="+str(loggedIn))
root = {"username":"root","password":"toor"}
print("User = "+str(root["username"]))
rootloggedIn = checkLogin(root, adminList)
print("LoggedIn ="+str(rootloggedIn))
