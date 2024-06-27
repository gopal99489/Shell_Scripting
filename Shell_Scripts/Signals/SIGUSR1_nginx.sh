#!/bin/bash

SERVICE_NAME="nginx"

check_service(){

if systemctl is-active --quiet $SERVICE_NAME; then
echo "$SERVICE_NAME is running."
return 0

else
echo "$SERVICE_NAME is not running."
return 1
fi
}

restart_service(){
systemctl restart $SERVICE_NAME
echo "Restarting $SERVICE_NAME .."
}

handle_sigusr1(){
echo "Received SIGUSR1 signal. Checking and restarting $SERVICE_NAME .."
if check_service;then
restart_service
else
echo "Service $SERVICE_NAME is not running. No action taken .."
fi
}

trap 'handle_sigusr1' SIGUSR1
echo "Service monitor script is running. Monitoring $SERVICE_NAME ."

while true; do
check_service

sleep 30

done
