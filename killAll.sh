#!/bin/bash
#Kill all the running process.
#2014.10.06. Version 1.0
#Nemo Chen


prcessName[0]="BRTWatchDog"
prcessName[1]="BRT_MMI"
prcessName[2]="runBRT"


declare killResult=0

for i in ${!prcessName[*]}; do
	pid=`pidof ${prcessName[i]}`
	if [[ "$pid" != "" ]]; then
		kill $pid
		let killResult=killResult+1
	fi
done

if [[ "$killResult" -gt 0 ]]; then
	echo "All process killed."
else
	echo "No process running."
fi
