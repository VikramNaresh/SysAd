#!/bin/bash
#Creating delta folder consisting of 10 files in each user
for i in {0..9};do
sudo mkdir /home/user$i/delta;
done

for i in {0..9};do
for j in {1..10};do
sudo mkdir /home/user$i/delta/folder$j;
done;
done

#for creating txt files
for i in {0..9};do
for j in {1..10};do
cd /home/user$i/delta/folder$j
sudo touch randomstr.txt
done;
done
