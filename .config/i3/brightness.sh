#!/bin/bash

BRIGHT=`brightnessctl g`

if [ "$1" = '+' ]; then
	NEWBRIGHT=$(echo "$BRIGHT + 10" | bc)
    	if [ `echo $NEWBRIGHT` < 937 ]; then
		sudo brightnessctl s $NEWBRIGHT
	fi
elif [ "$1" = '-' ]; then
    	NEWBRIGHT=$(echo "$BRIGHT - 10" | bc)
   	if [ `echo $NEWBRIGHT` > 937 ]; then
        	sudo brightnessctl s $NEWBRIGHT
   	fi
fi
