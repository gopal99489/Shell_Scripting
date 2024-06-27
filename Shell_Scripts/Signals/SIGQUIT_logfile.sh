#!/bin/bash

LOG_FILE="./gopal/script.log"

cleanup(){

echo "Caught SIGQUIT signal. Cleaning up and exiting.."

tar -czf "./gopal/script_log_$(date +%Y%m%d%H%M%S).tar.gz" "$LOG_FILE"
rm -f "$LOG_FILE"
exit 1
}

trap cleanup SIGQUIT

echo "Monitoring log file: $LOG_FILE"
echo "Press Control+\ (Control+Backslash) to send SIGQUIT"

while true;do
tail -f "$LOG_FILE"
done
