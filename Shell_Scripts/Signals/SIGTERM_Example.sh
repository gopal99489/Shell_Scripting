#!/bin/bash

cleanup(){
echo "Caught SIGTERM Signal. Cleaning up and exiting.."
rm -f /tmp/tempfile
exit 1
}

trap cleanup SIGTERM

touch /tmp/tempfile
echo "Temparory file created at /tmp/tempfile"

echo "Runinng. PID: $$"
echo "Press Control+C to send SIGTERM"

while true;do
sleep 1
done

