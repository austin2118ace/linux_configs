#!/bin/bash

# This script will copy the 999-wifi-up-down.sh script to the NetworkManager dispatcher.d directory
# This script is triggered any time there is a network change; if an active ethernet connection is found
# The Wireless radio is disabled
# Specifically useful for me at FSU where some resources are not available over WiFi and are blocked

sudo cp ./999-wifi-up-down.sh /etc/NetworkManager/dispatcher.d/
sudo chown root:root /etc/NetworkManager/dispatcher.d/999-wifi-up-down.sh
sudo chmod 744 /etc/NetworkManager/dispatcher.d/999-wifi-up-down.sh
sudo systemctl restart NetworkManager
