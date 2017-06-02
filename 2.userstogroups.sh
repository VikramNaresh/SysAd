#!/bin/bash

#creating groups
sudo groupadd admins
sudo groupadd moderators
sudo groupadd students
sudo groupadd AdmPlusMod
#the 4th group is to give permission for admins and moderators to access student folders.

#adding the specified users to their respective groups
sudo usermod -a -G admins user1
sudo usermod -a -G admins user2
sudo usermod -a -G admins user3
sudo usermod -a -G moderators user4
sudo usermod -a -G moderators user5
sudo usermod -a -G moderators user6
sudo usermod -a -G students user7
sudo usermod -a -G students user8
sudo usermod -a -G students user9

#adding admins and moderators to a special group
sudo usermod -a -G AdmPlusMod user1
sudo usermod -a -G AdmPlusMod user2
sudo usermod -a -G AdmPlusMod user3
sudo usermod -a -G AdmPlusMod user4
sudo usermod -a -G AdmPlusMod user5
sudo usermod -a -G AdmPlusMod user6










