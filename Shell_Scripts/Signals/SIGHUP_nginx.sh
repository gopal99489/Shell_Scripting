#!/bin/bash

#This script demonstrates how to use the SIGHUP signal to reload the NGINX configuration automatically.

reload_nginx(){
echo "Reloading Nginx Configuration"

Nginx_PID=$(cat /var/run/nginx.pid)
kill -HUP "$Nginx_PID"

if [$? -eq 0]; then
echo "Nginx Configuration reloaded Succesfully"
else
echo "Failed to reload Nginx Configuration"
fi
}

handle_up(){
echo "Received SIGHUP Signal"
reload_nginx
}

trap 'handle_up' SIGHUP

while true; do

echo "Script is running..send SIGHUP to PID $$ to reload Nginx Configuration" 

sleep 60

done 
