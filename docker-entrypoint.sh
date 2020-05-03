#! /bin/bash
#

logFile="${1:-'/tmp/log.log'}"

function end() {
	echo "end at: $(date)" >> "$logFile"
}

trap "end" EXIT

while true; do 
	echo "now is: $(date)" >> "$logFile"
done

