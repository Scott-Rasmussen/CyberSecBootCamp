
## Script to find dealers and the games there are working at a specific time.

#! /bin/bash/



cat $1 | awk -F" " '{print ($1, $2, $3, $4, $5, $6, $7, $8)}' | grep -E "Hour|*$2.*$3"

##where $1 is the schedule.txt of a specfic date eg. xxxx_Dealer_schedule.txt
##$2 is the specific numerical time xx <time>
##$3 is AM or PM xx<AM/PM>

##output is printed in terminal and not to file



