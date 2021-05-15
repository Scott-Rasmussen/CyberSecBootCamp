#! /bin/bash

##script to compile dealers over multiple days

## grep -FH " " 0310_Dealer_schedule.txt

##cp $1 Dealer_Schedule_Combined.txt
##cp $2 Dealer_Schedule2.txt | cat Dealer_Schedule2.txt >> Dealer_Schedule_Combined.txt
##cp $3 Dealer_Schedule3.txt | cat Dealer_Schedule3.txt >> Dealer_Schedule_Combined.txt

grep -FH " " $1 > Dealer_Schedule_Combined.txt
grep -FH " " $2 >> Dealer_Schedule_Combined.txt
grep -FH " " $3 >> Dealer_Schedule_Combined.txt
