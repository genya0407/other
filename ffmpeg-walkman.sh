#!/bin/bash
for i in "$@";do
	ffmpeg -y -i "${i}" -threads 4 \
	-vcodec libx264 -b:v 384k -s 480x270 -profile:v baseline \
	-acodec libfaac -b:a 96k -ar 41000 \
	"_`basename "${i}" .mp4`.mp4"
done
