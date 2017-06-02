#!/bin/bash
#all 10 usernames stored in userlist.txt
for i in `more userlist.txt `
do
echo $i 
sudo adduser $i
done

#for passwd
for i in `more userlist.txt `
do
echo $i | passwd --stdin "$i"
echo; echo "User $username’s password changed!"
done

