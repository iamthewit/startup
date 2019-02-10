#! /bin/sh

# TODO: only execute these commands if it's a weekday and the time is before 6pm

if [ $(date +%u) -lt 6 ] ; then
    workday=$(cat workday.cfg)
    for line in $workday ;
    do
        nohup $line &
    done
else
    weekend=$(cat weekend.cfg)
    for line in $weekend ;
    do
        nohup $line &
    done
fi
