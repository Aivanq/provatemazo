#!/bin/sh 
#https://www.youtube.com/results?search_query=thunderstruck+seagulls
MUSICDIR=/music
quebusco=$(echo $*  | tr " " "+" )
urlachupar=$(curl -s "https://www.youtube.com/results?search_query=$quebusco"| grep -m1 "/watch" | sed "sx.*href=\"/watchxhttps://www.youtube.com/watchx" | cut -d \" -f1)
r

FILENAME="$(youtube-dl -x --audio-format mp3 --audio-quality 0 "$urlachupar"  | fgrep '[ffmpeg] Destination: ' | sed "s/^\[ffmpeg\] Destination: //" )"

NEWFILENAME="$( echo $FILENAME | sed "s/-[^-]\+\.mp3/.mp3/" )"
mv "$FILENAME" "$MUSICDIR/$NEWFILENAME"

mplayer "$MUSICDIR/$NEWFILENAME"
