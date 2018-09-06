#!/bin/bash
# This script will repeatedly call ls to give automatically updated directory contents
#set -euo pipefail
# ^ bash strict mode

# TODO :
# still blinking when refreshing
# resource : https://unix.stackexchange.com/questions/81167/prevent-text-screen-blinking-when-doing-clear
#
# cannot change text color
# resource1 : https://askubuntu.com/questions/958435/changing-text-color-in-line
# resource2 : https://en.wikipedia.org/wiki/ANSI_escape_code
#
# Possible new line to color dirs
# LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
# old ls command
# ls -lF --color=always --show-control-chars --group-directories-first;


# pinkText var is supposed to be an ANSI escape code for setting pink text
# not currently working, however...
# USAGE : `echo -e $pinkText THIS SHOULD BE PINK TEXT $resetText`
# ( -e option enables interpolation of following backslash escapes )


# create buffer
oldStatus="$(git status)"

onscreen="$(
	echo;
	echo ----------------------------------------;
	echo -e ' \t ' G I T - S T A T U S 	;
	echo ----------------------------------------;
	echo;
	)"

clear;
echo "$onscreen";
#running the command outside of echo gives color coding feedback
git status;

while true
do
	# create second buffer
	newStatus="$(git status)"
	newscreen="$(
		echo;
		echo ----------------------------------------;
		echo -e ' \t ' G I T - S T A T U S 	;
		echo ----------------------------------------;
		echo;
		)"
	# if they arent the same, display the new
	if [[ "$oldStatus" != "$newStatus" ]]; then
		clear;
		echo "$newscreen";
		git status;
		oldStatus="$(git status)"
	fi
	#fixes refresh issues with C9 being slow
	sleep 1
done

