##Script to find roulette dealer schedule by date and tine using dealer schedules.

#! /bin/bash

##depending on the file used the script will still print out desired output
##if using Dealer_Schedule_Combined.txt:
##$1 = Dealer_Schedule_Combined.txt
##$2 = xxxx <date>
##$3 = xx <time>
##$4 = XX <Am/PM>

##if using file name xxxx_Dealer_schedule.txt:
##$1 = xxxx_Dealer_schedule.txt
##$2 = xx <time>
##$3 = xx <AM/PM>


cat $1 | awk -F" " '{print ($1, $2, $5, $6)}' | grep  $2.*$3.*$4

##output is printed in terminal and not to file

