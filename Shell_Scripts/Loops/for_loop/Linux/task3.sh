#!/bin/bash


#Task 3: Monitor Disk Usage and Send Alerts

directories=("/home" "/var" "/tmp")
threshold=25  # Set threshold percentage for disk usage
recipient="gopal99489@.com"  # Replace with recipient's email address
subject="Disk Usage Alert"

for dir in "${directories[@]}"
do
    usage=$(df -h "$dir" | awk 'NR==2 {print $5}' | sed 's/%//')  # Get disk usage percentage
    if [ "$usage" -gt "$threshold" ]; then
        echo "Alert: Disk usage for $dir is at $usage%"
        
        # Send email alert
        message="Disk usage for $dir is at $usage%. Please check and take necessary actions."
        echo "$message" | mail -s "$subject" "$recipient"
        
        # Optionally, log to a file
0        echo "$(date): $message" >> /var/log/cloud-init-output.log
    fi
done
