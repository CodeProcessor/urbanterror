#!/bin/bash
DATA=/home/urt/data
Q3_DIR=/home/urt/urbanterror43/q3ut4
for FILE in server.cfg mapcycle.txt
do
	echo "Checking files "$FILE
	if [ -f $DATA/$FILE ]
	then
		cp $DATA/$FILE $Q3_DIR/$FILE
		echo "Loading user server.cfg"
	else
		cp $Q3_DIR/$FILE $DATA/$FILE
	fi
done

while true
do
	/home/urt/urbanterror43/Quake3-UrT-Ded.x86_64 +set fs_game q3ut4 +set fs_basepath /home/urt/urbanterror43/ +set fs_homepath /home/urt/urbanterror43/ +set dedicated 2 +set net_port 27960 +set com_hunkmegs 128 +exec server.cfg
	echo "server crashed on `date`" > last_crash.txt
done
