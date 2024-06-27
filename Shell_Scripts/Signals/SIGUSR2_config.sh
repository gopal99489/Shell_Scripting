#!/bin/bash

#This task demonstrates how SIGUSR2 can be used to dynamically reload configuration settings for a running script or application, ensuring that changes to configuration files can be applied without stopping and restarting the process.

CONFIG_FILE="config.txt"
CONFIG_SETTINGS=""

load_config(){
if [ -f "$CONFIG_FILE" ]; then
CONFIG_SETTINGS=$(cat "$CONFIG_FILE")
echo "Configuration reloaded ."
echo "$CONFIG_SETTINGS"

else
echo "Configuration file not found : $CONFIG_FILE"
fi
}

handle_sigusr2(){
echo "Received SIGUSR2 Signal. Reloading configuration ."
load_config
}

trap 'handle_sigusr02' SIGUSR2
load_config

echo "Configuration reloader script is running. PID : $$"

while true;do
sleep 30
done 
