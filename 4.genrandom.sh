#!/bin/bash
for i in {0..9};do
for j in {1..10};do
STRING=$(sudo cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
cd /home/user$i/delta/folder$j
sudo echo $STRING > randomstr.txt
done;
done
