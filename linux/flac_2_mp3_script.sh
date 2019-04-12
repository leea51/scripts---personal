#!/bin/bash

#convert FLAC to mp3

# place in folder of files to convert

FILES="*.flac"

for F in $FILES

do
newname=`basename "$F" .flac`
echo $newname
ffmpeg -i "$F" -acodec libmp3lame -ac 2 -qscale:a 0 -ar 44100 "$newname.mp3"

done
