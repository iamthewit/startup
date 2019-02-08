#! /bin/sh

# TODO: only execute these commands if it's a weekday and the time is before 6pm
# else execute some other commands (opera)

if [ $(date +%u) -lt 6 ] ; then

	nohup gnome-terminal &
	nohup phpstorm &
	nohup google-chrome &
	nohup slack &
	nohup spotify &
	nohup pats-boostnote &
else
	echo "Yay! It's the weekend"
fi
