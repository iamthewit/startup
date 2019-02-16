#! /bin/sh

cd "$(dirname "$0")"

H=$(date "+%k")

# if it's a weekday
if [ $(date +%u) -lt 6 ] ; then
    # if hour is between 6am and 6pm
    if [ $H -lt 6 ] && [ $H -gt 18 ] ; then
        workday=$(cat workday.cfg)
        for line in $workday ;
        do
            nohup $line &
        done
    fi
else
    echo "Yay! It's the weekend!"
    weekend=$(cat weekend.cfg)
    for line in $weekend ;
    do
        nohup $line &
    done
fi
