#! /bin/bash

check=0
while true
do
	if [[ ( $(lsof /dev/video0) ) && ( $check == 0 )  ]] 
	then
		echo $(lsof /dev/video0)
		echo "if"
		notify-send "Webcam On" "$(lsof /dev/video0)"
		check=1
	elif [[ ( $(lsof /dev/video0) ) && ( $check == 1 ) ]]
	then 
		echo "else if"
		check=1
	else
		echo $(lsof /dev/video0)
		echo "else"
		check=0
	fi
	sleep 3
done