 #!/bin/bash

#Small bash script to use google tts
#Hakan - 26 Jan 2015

file="/tmp/goldendic_google_tts/$1.mpga"

if [ -e "$file" ]
then
	#echo File exists.
	:
else

wget \
-U 'Mozilla/5.0 (X11; Linux x86_64; rv:30.0) Gecko/20100101 Firefox/30.0' \
-O "$file" \
"https://translate.google.com/translate_tts?ie=UTF-8&q=$1&tl=en"

fi

vlc -I dummy "$file" vlc://quit
