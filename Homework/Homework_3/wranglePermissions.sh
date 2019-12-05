#!/bin/env bash
# Date: 11/2019
# Author: Megan Wilson
# Homework 3: Wrangling Permissions
set -o errexit # Stop execution on error
echo 'You are: '$(whoami)
echo '\n Your group is: '$(groups $(whoami))

# Part 1
# - Create users
echo 'How many users?'
read numberofusers
echo 'Total Users: '$numberofusers
# for i in {0..$numberofusers}
# for ((i=0; $i<$numberofusers; $i++))
# do
	#echo 'User#:'$1
	echo 'input name: '
	read username
	echo $username
	echo 'input password: '
	read password
	echo $password
#	sudo useradd -m $username -p $password
# done

echo 'How many groups?'
read numberofgroups
#for((i=0; i<=$numberofgroups; i++))
#do
        echo 'Group#: $i \n input group name: '
	read groupname
	echo $groupname
	echo 'which user? input name: '
	read name
	echo $name
	# Add check if name exists
#       sudo groupadd 
	# usermod -a -G $groupname -p $name
# done

# - Create Groups

# - Set file permissions

# - Manage `sudo` rights

# Part 2
# Restricting Sudo Access
#- Use `visudo` to update `/etc/sudoers` such that `Teddy` and `Louise` can _only_ run `apt` with `sudo`.

#Part 3
# Logging Sudo Access Attempts
# - Check if `rsyslog` is installed. If not, install it.

# - Start `rsyslog`.

# - **Note**: Use the `service` command.

# - Switch users to `Louise`, and do the following:

#  - Use `sudo` to run `apt update`, but enter the wrong password.

#  - Use `sudo` to run `apt update`.

#  - Use `sudo` to run `cat /etc/passwd`.

# - Repeat the above as `Teddy`.

# - Now, switch to the `root` user. Inspect `/var/log/auth.log`. Look for messages about `sudo`. Which of the commands you ran as `Teddy` and `Louise` do you see in the logs?

# Part 4
# Still logged in as `root`:
# Inside each user's `/home` directory, create the following folders:
#  -Documents -Downloads -Pictures -Videos

# Set permissions for each user's directory to have full permissions for the associated user, read permissions for their group, and no permissions for the world.

# - For example, files in Teddy's directory should have permissions like: `rwxr-----`. 

# Test your permissions by switching to one of the users, and attempting to read the other users' files. You should get `Permission denied` errors.

# Research `/etc/skel` to figure out how to avoid manually creating `Documents`, etc., directories for every user: <http://www.linfo.org/etc_skel.html>

# Update your `/etc/skel` with `Documents`, etc., directories. Then, create a new user with your name. Inspect the contents of your new user's `/home` directory to verify that your `/etc/skel` update works as expected.
#

