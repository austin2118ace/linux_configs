#!/bin/bash

server_IP=//128.186.180.118/r2d2
mount_dir=/mnt/r2d2
cred_file=/home/austin/creds/.r2d2_creds

sudo mount -t cifs -o credentials=$cred_file,uid=1000,gid=1000 $server_IP $mount_dir