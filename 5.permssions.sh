#!/bin/bash

#since users 7,8,9 are students , similar permissions to both admins and moderators,together in a group called AdmPluMod
for i in {7..9};do
cd /home/user$i
sudo chgrp -R AdmPlusMod delta;
done
#now AdmPlusMod is the associated group so no student can access other student's files
for i in {7..9};do
cd /home/user$i
sudo chmod -R 770 delta;
done

#############
#For giving admins permission to access and modify moderator' folders
for i in {4..6};do
cd /home/user$i
sudo chgrp -R admins delta;
done
#now admins is the associated group so no moderator can access other moderator's files
for i in {4..6};do
cd /home/user$i
sudo chmod -R 770 delta;
done
 
#############
#For denying inter-group access of admins
for i in {1..3}
cd /home/user$i
sudo chmod -R 700 delta;
done

#############
#to make user0 as root user
sudo usermod -a -G sudo user0



