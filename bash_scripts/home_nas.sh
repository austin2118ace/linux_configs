#!/bin/bash

server_IP=//192.168.10.12/storage
mount_dir=/mnt/storage
cred_file=/home/austin2118ace/creds/.storage_creds

sudo mount -t cifs -o credentials=$cred_file,uid=1000,gid=1000 $server_IP $mount_dir
