#!/bin/bash

pname=$1

if [[ -z "$pname" ]]; then
	echo "Specify process name as argument."
	exit 1
fi

# grep is a combo of ps and grep that searches for a process based on its name and returns its PID if it exists
if pgrep "$pname" > /dev/null; then # > /dev/null discards output, leaving us with status code. The statement is evaluated to True if the status code is 0.
	echo "The process $pname is running."
else
	echo "The process $pname is not running."
fi
