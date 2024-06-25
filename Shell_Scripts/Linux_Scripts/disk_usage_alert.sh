#!/bin/bash

# Set the threshold percentage for disk usage
threshold=20

# Set the recipient email address
recipient="gopal99489@gmail.com"

# Set the subject and message body for the email
subject="Disk Usage Alert"
body="Warning: Disk usage has exceeded the threshold of $threshold%."

# Function to check disk usage and send an email if the threshold is exceeded
check_disk_usage() {
  # Get the disk usage percentage of the root partition
  usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//g')

  # Compare the usage with the threshold
  if [ "$usage" -gt "$threshold" ]; then
    # Send an email alert
    echo "$body" | mail -s "$subject" "$recipient"
    
    # Check if the mail command succeeded
    if [ $? -eq 0 ]; then
      echo "Email alert sent successfully."
    else
      echo "Failed to send email alert."
    fi
  else
    echo "Disk usage is below threshold: $usage%"
  fi
}

# Run the disk usage check function
check_disk_usage
