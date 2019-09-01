#!/bin/bash
FILENAME=UrbanTerror434_full.zip
if [ -d UrbanTerror434_full ]
then
	echo "Game already downloaded and extracted"
elif [ -f $FILENAME ]
then
	echo "Game already downloaded"
	echo "Extracting..."
	unzip $FILENAME
	rm $FILENAME
else
	echo "Downloading and extracting game"
	wget http://cdn.urbanterror.info/urt/43/releases/zips/$FILENAME
	unzip $FILENAME
	rm $FILENAME
fi