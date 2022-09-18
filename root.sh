#!/bin/bash

sed -i "/PasswordAuthentication no/d" /etc/ssh/sshd_config
echo "" | sudo tee -a /etc/ssh/sshd_config
echo "" | sudo tee -a /etc/ssh/sshd_config
echo "PermitRootLogin yes" | sudo tee -a /etc/ssh/sshd_config
echo "PasswordAuthentication yes" | sudo tee -a /etc/ssh/sshd_config
systemctl restart sshd
ip=$(curl icanhazip.com/ip)
clear
sleep 1
printf "
____   ____.__                 __                .__                   
\   \ /   /|__| ____   _______/  |_  ____   ____ |  |__   _____ ___.__.
 \   Y   / |  |/    \ /  ___/\   __\/ __ \_/ ___\|  |  \ /     <   |  |
  \     /  |  |   |  \\___ \  |  | \  ___/\  \___|   Y  \  Y Y  \___  |
   \___/   |__|___|  /____  > |__|  \___  >\___  >___|  /__|_|  / ____|
                   \/     \/            \/     \/     \/      \/\/     
"                                
echo
echo "Simple Method To Change Root Password"
echo "======================================"
user=root
read -p "Please Insert Your Password : " pw
#read -e pw
pwe=$(mkpasswd $pw)

clear
usermod --password $pwe $user
clear

echo ""
printf "Please Save This VPS Account Information
=================================================
IP Address = $ip
Username   = $user
Password   = $pw
================================================="
sleep 1
echo ""
exit
