#!/bin/bash
# Author: Megan Lynn Wilson
# Date: 10/2019
# Homework 2.02
set -o errexit # stop execution on error

# Create a folder called **AllRecords**. 
curr_dir=$(echo $PWD)'/'
absolute_path=$(dirname $(dirname $curr_dir))
order_records=$1
mkdir AllRecords
all_records_dir=$curr_dir'AllRecords/'

echo 'You are at:     '$curr_dir
if [ -z "$1" ]; then
     # Fast mode for Megan's speed
     # echo "no folder parameter"
     order_records=$absolute_path'/resources/Chal-2_VIP/OrderRecords/'
fi
echo 'Your input is:  '$order_records
# Copy all of the order records from 2012–2017 into the **AllRecords** folder. 
cd $order_records
find . -iname 'order*' -exec cp {} $all_records_dir \;


# Inside of the **AllRecords** folder, create a folder called **VIPCustomerOrders**.
cd $all_records_dir
mkdir VIPCustomerOrders
vip_dir=$all_records_dir'VIPCustomerOrders/'   

# Find all orders from the VIP Customers Michael Davis or Michael Campbell. Include line and file names in the output.
grep -n "Michael,Davis*" ./*'.csv'* >> ./VIPCustomerOrders/output.txt
grep -n "Michael,Campbell*" ./*'.csv'* >> ./VIPCustomerOrders/output.txt
echo $(cat ./VIPCustomerOrders/output.txt)

# Move these specific files into the **VIPCustomerOrders** folder in the form of two files: **michael_campbell_orders.output** and **michael_davis_orders.output**.
grep -l "Michael,Davis*" ./*'.csv'* | xargs -I{} cp -n {} ./VIPCustomerOrders/
grep -l "Michael,Campbell*" ./*'.csv'* | xargs -I{} cp -n {} ./VIPCustomerOrders/

# Create a file called **VIPCustomerDetails.md** that details how many orders each of the two users made. 
cd $vip_dir
touch VIPCustomerDetails.md
echo 'Number of files: '$(find . -type f -name 'order*' -exec echo . \; | wc -l)
echo 'Number of files: '$(find . -type f -name 'order*' -exec echo . \; | wc -l) >> ./VIPCustomerDetails.md
echo 'Number of Orders: '$(wc -l < $vip_dir'output.txt')
echo 'Number of Orders: '$(wc -l < $vip_dir'output.txt')>> ./VIPCustomerDetails.md
