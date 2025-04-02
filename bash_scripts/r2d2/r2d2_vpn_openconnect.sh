#!/bin/bash
#https://github.com/Bidski/openconnect-sso
_server_IP=128.186.180.118
server_IP=//128.186.180.118/r2d2
mount_dir=/mnt/r2d2
cred_file=/home/austin/creds/.r2d2_creds

# if [[ ! -d "$mount_dir" ]]; then
# 	echo "Mount directory does not exist! Creating directory..."
# 	sudo mkdir $mount_dir
# fi

# if ping -c 1 "$_server_IP" &> /dev/null
# then
# 	echo "Already connected to the VPN!"
# else

echo "Connecting to vpn.fsu.edu!"
echo "Press any key once connected to vpn..."

#eval "$(conda shell.bash hook)"
#conda activate openconnect
source "/opt/dev/repo/apps/openconnect-sso/vpn/bin/activate"
openconnect-sso &

read -s -n 1
# fi

sudo mount -t cifs -o credentials=$cred_file,uid=1000,gid=1000 $server_IP $mount_dir
cd /mnt/r2d2
